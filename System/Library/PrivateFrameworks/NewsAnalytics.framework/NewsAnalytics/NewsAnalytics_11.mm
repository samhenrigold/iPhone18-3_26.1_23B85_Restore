unint64_t sub_217B83014()
{
  result = qword_27CBA09B0;
  if (!qword_27CBA09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09B0);
  }

  return result;
}

uint64_t EORFeedViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217D889CC();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B839A8(0, &qword_27CBA09B8, MEMORY[0x277D844C8]);
  v54 = v8;
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for EORFeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217B83014();
  v53 = v10;
  v15 = v56;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v16 = v5;
  v17 = v51;
  v46 = v11;
  v47 = v3;
  v56 = v13;
  v57[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v18 = v52;
  sub_217D89BCC();
  v19 = *(v50 + 32);
  v20 = v56;
  v52 = v6;
  v19(v56, v18, v6);
  v57[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v16;
  v22 = v47;
  sub_217D89BCC();
  v45 = 0;
  v23 = v46;
  (*(v49 + 32))(&v20[v46[5]], v21, v22);
  v62 = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v24 = *&v57[8];
  v25 = *&v57[16];
  v26 = &v20[v23[6]];
  *v26 = *v57;
  *(v26 + 1) = v24;
  *(v26 + 8) = v25;
  v62 = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v27 = &v20[v23[7]];
  *v27 = v57[0];
  *(v27 + 8) = *&v57[8];
  v62 = 4;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v20[v23[8]] = *v57;
  v62 = 5;
  sub_217B7DEC4();
  sub_217D89BCC();
  v28 = *&v57[8];
  v29 = &v20[v23[9]];
  *v29 = *v57;
  *(v29 + 1) = v28;
  v62 = 6;
  sub_217B1F038();
  sub_217D89BCC();
  v30 = *&v57[8];
  v31 = v57[16];
  v32 = *&v57[24];
  v33 = v58;
  v34 = &v20[v23[10]];
  *v34 = *v57;
  *(v34 + 1) = v30;
  v34[16] = v31;
  *(v34 + 3) = v32;
  *(v34 + 4) = v33;
  v62 = 7;
  sub_217AD07F8();
  sub_217D89BCC();
  v35 = *&v57[8];
  v36 = v57[16];
  v37 = v57[17];
  v38 = *&v57[24];
  v39 = v58;
  v40 = &v56[v23[11]];
  *v40 = *v57;
  *(v40 + 1) = v35;
  v40[16] = v36;
  v40[17] = v37;
  *(v40 + 3) = v38;
  *(v40 + 4) = v39;
  v62 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v41 = &v56[v23[12]];
  v42 = *&v57[16];
  *v41 = *v57;
  *(v41 + 1) = v42;
  *(v41 + 2) = v58;
  v41[48] = v59;
  v60 = 9;
  sub_217B57068();
  sub_217D89BCC();
  (*(v17 + 8))(v53, v54);
  v43 = v56;
  v56[v46[13]] = v61;
  sub_217B83A0C(v43, v48);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_217B83A70(v43);
}

void sub_217B839A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B83014();
    v7 = a3(a1, &type metadata for EORFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B83A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EORFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B83A70(uint64_t a1)
{
  v2 = type metadata accessor for EORFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B83BA4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B81CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B81CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B81CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217B81CA8(0, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217B81CA8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217B81CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v19 - 8) + 104))(a2 + v18, v4, v19);
  v20 = a1[12];
  sub_217B81CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a2 + v20, v4, v21);
  v22 = a1[13];
  sub_217B81CA8(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a2 + v22, v4, v23);
}

void sub_217B8404C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B81CA8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217B81CA8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217B81CA8(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_217B81CA8(319, &qword_27CBA08F8, sub_217B7DEC4, sub_217B7DF18, &type metadata for RecipeViewData);
            if (v6 <= 0x3F)
            {
              sub_217B81CA8(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
              if (v7 <= 0x3F)
              {
                sub_217B81CA8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                if (v8 <= 0x3F)
                {
                  sub_217B81CA8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B81CA8(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
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

uint64_t sub_217B84378(uint64_t a1)
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

unint64_t sub_217B84468()
{
  result = qword_27CBA09E0;
  if (!qword_27CBA09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09E0);
  }

  return result;
}

unint64_t sub_217B844C0()
{
  result = qword_27CBA09E8;
  if (!qword_27CBA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09E8);
  }

  return result;
}

unint64_t sub_217B84518()
{
  result = qword_27CBA09F0;
  if (!qword_27CBA09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09F0);
  }

  return result;
}

uint64_t sub_217B8456C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000217DCE880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6963655274736F68 && a2 == 0xEE00617461446570 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE8A0 == a2 || (sub_217D89D4C() & 1) != 0)
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

NewsAnalytics::FeedGroupLayoutPath_optional __swiftcall FeedGroupLayoutPath.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedGroupLayoutPath.rawValue.getter()
{
  v1 = 1953718630;
  if (*v0 != 1)
  {
    v1 = 0x6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003790963;
  }
}

uint64_t sub_217B84960(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953718630;
  if (v2 != 1)
  {
    v5 = 0x6568636163;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2003790963;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1953718630;
  if (*a2 != 1)
  {
    v8 = 0x6568636163;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2003790963;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
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

unint64_t sub_217B84A44()
{
  result = qword_27CBA09F8;
  if (!qword_27CBA09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA09F8);
  }

  return result;
}

uint64_t sub_217B84A98()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B84B28(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B84BA4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B84C3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953718630;
  if (v2 != 1)
  {
    v5 = 0x6568636163;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2003790963;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B84D48()
{
  result = qword_2811C2A30;
  if (!qword_2811C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A30);
  }

  return result;
}

NewsAnalytics::EmailShareUserActionType_optional __swiftcall EmailShareUserActionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t EmailShareUserActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6E6564646968;
  }

  if (*v0)
  {
    v1 = 0x6572616873;
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

unint64_t sub_217B84E78()
{
  result = qword_27CBA0A00;
  if (!qword_27CBA0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A00);
  }

  return result;
}

uint64_t sub_217B84ECC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B84F84(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B85028(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B850E8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v4 = 0x6E6564646968;
  }

  if (*v1)
  {
    v3 = 0x6572616873;
    v2 = 0xE500000000000000;
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
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_217B8521C()
{
  result = qword_27CBA0A08;
  if (!qword_27CBA0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A08);
  }

  return result;
}

uint64_t SectionData.sectionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SectionData.sectionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SectionData.sectionItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SectionData.init(sectionID:sectionItemCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t sub_217B85350()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x496E6F6974636573;
  }
}

uint64_t sub_217B85394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCE8C0 == a2)
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

uint64_t sub_217B85480(uint64_t a1)
{
  v2 = sub_217B85684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B854BC(uint64_t a1)
{
  v2 = sub_217B85684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionData.encode(to:)(void *a1)
{
  sub_217B858D8(0, &qword_2811BC838, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B85684();
  sub_217D89E7C();
  v13 = 0;
  v8 = v10[1];
  sub_217D89C6C();
  if (!v8)
  {
    v12 = 1;
    sub_217D89C5C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B85684()
{
  result = qword_2811C7CA8;
  if (!qword_2811C7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CA8);
  }

  return result;
}

uint64_t SectionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B858D8(0, &qword_2811BCB30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B85684();
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
  v13 = sub_217D89B7C();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B858D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B85684();
    v7 = a3(a1, &type metadata for SectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B85988()
{
  result = qword_27CBA0A10;
  if (!qword_27CBA0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A10);
  }

  return result;
}

unint64_t sub_217B859E0()
{
  result = qword_2811C7C98;
  if (!qword_2811C7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C98);
  }

  return result;
}

unint64_t sub_217B85A38()
{
  result = qword_2811C7CA0;
  if (!qword_2811C7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CA0);
  }

  return result;
}

uint64_t RecipeEventUserInfo.eventAggregationPersonalizationData.getter()
{
  v1 = *v0;
  sub_217B85AC0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_217B85AC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217B0A564(result, a2);
  }

  return result;
}

uint64_t RecipeEventUserInfo.init(eventAggregationPersonalizationData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ProcessEvent.recipeUserInfo.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_217D8819C();
  if (!v3[3])
  {
    sub_217A576FC(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a1 = xmmword_217D9D920;
  }

  return result;
}

uint64_t ProcessEvent.eventAggregationPersonalizationData.getter()
{
  ProcessEvent.recipeUserInfo.getter(&v1);
  if ((*(&v1 + 1) & 0xF000000000000000) == 0xB000000000000000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B85BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_217B85C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t ScoringValueDistribution.min.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.max.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.mean.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.median.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ScoringValueDistribution.variance.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void __swiftcall ScoringValueDistribution.init(min:max:mean:median:variance:)(NewsAnalytics::ScoringValueDistribution *__return_ptr retstr, Swift::Double_optional min, Swift::Double_optional max, Swift::Double_optional mean, Swift::Double_optional median, Swift::Double_optional variance)
{
  retstr->min.value = *&min.is_nil;
  retstr->min.is_nil = max.is_nil;
  *(&retstr->max.value + 7) = *&mean.is_nil;
  BYTE6(retstr->mean.value) = median.is_nil;
  *(&retstr->median.value + 5) = *&variance.is_nil;
  BYTE4(retstr->variance.value) = v6 & 1;
  *(&retstr[1].min.value + 3) = v7;
  BYTE2(retstr[1].max.value) = v8 & 1;
  *(&retstr[1].mean.value + 1) = v9;
  LOBYTE(retstr[1].median.value) = v10 & 1;
}

uint64_t sub_217B85E0C()
{
  v1 = *v0;
  v2 = 7235949;
  v3 = 1851876717;
  v4 = 0x6E616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x65636E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7889261;
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

uint64_t sub_217B85E8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B86744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B85EB4(uint64_t a1)
{
  v2 = sub_217B8616C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B85EF0(uint64_t a1)
{
  v2 = sub_217B8616C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoringValueDistribution.encode(to:)(void *a1)
{
  sub_217B86454(0, &qword_2811BC5C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10[3] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8616C();
  sub_217D89E7C();
  v23 = 0;
  v8 = v18;
  sub_217D89C2C();
  if (!v8)
  {
    v22 = 1;
    sub_217D89C2C();
    v21 = 2;
    sub_217D89C2C();
    v20 = 3;
    sub_217D89C2C();
    v19 = 4;
    sub_217D89C2C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B8616C()
{
  result = qword_2811BF778;
  if (!qword_2811BF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF778);
  }

  return result;
}

uint64_t ScoringValueDistribution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B86454(0, &qword_27CBA0A18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8616C();
  sub_217D89E5C();
  if (!v2)
  {
    v39 = 0;
    v10 = sub_217D89B4C();
    v34 = v11 & 1;
    v38 = 1;
    v12 = sub_217D89B4C();
    v33 = v13 & 1;
    v37 = 2;
    v29 = sub_217D89B4C();
    v32 = v14 & 1;
    v36 = 3;
    v28 = sub_217D89B4C();
    v31 = v15 & 1;
    v35 = 4;
    v16 = sub_217D89B4C();
    v19 = v18;
    v20 = *(v7 + 8);
    v27 = v16;
    v20(v9, v6);
    v30 = v19 & 1;
    v21 = v34;
    v22 = v33;
    v23 = v32;
    v24 = v31;
    *a2 = v10;
    *(a2 + 8) = v21;
    *(a2 + 16) = v12;
    *(a2 + 24) = v22;
    v25 = v28;
    *(a2 + 32) = v29;
    *(a2 + 40) = v23;
    *(a2 + 48) = v25;
    *(a2 + 56) = v24;
    *(a2 + 64) = v27;
    *(a2 + 72) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B86454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8616C();
    v7 = a3(a1, &type metadata for ScoringValueDistribution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B864BC()
{
  result = qword_27CBA0A20;
  if (!qword_27CBA0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A20);
  }

  return result;
}

unint64_t sub_217B86514()
{
  result = qword_2811BF760;
  if (!qword_2811BF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF760);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217B865BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B865DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

unint64_t sub_217B86640()
{
  result = qword_27CBA0A28;
  if (!qword_27CBA0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A28);
  }

  return result;
}

unint64_t sub_217B86698()
{
  result = qword_2811BF768;
  if (!qword_2811BF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF768);
  }

  return result;
}

unint64_t sub_217B866F0()
{
  result = qword_2811BF770;
  if (!qword_2811BF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF770);
  }

  return result;
}

uint64_t sub_217B86744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E616964656DLL && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
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

NewsAnalytics::ScoreData __swiftcall ScoreData.init(personalizationScore:postPolicyPersonalizationScore:)(Swift::Float personalizationScore, Swift::Float postPolicyPersonalizationScore)
{
  *v2 = personalizationScore;
  v2[1] = postPolicyPersonalizationScore;
  result.postPolicyPersonalizationScore = postPolicyPersonalizationScore;
  result.personalizationScore = personalizationScore;
  return result;
}

unint64_t sub_217B86960()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217B869A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DCE900 == a2)
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

uint64_t sub_217B86A84(uint64_t a1)
{
  v2 = sub_217B86C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B86AC0(uint64_t a1)
{
  v2 = sub_217B86C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoreData.encode(to:)(void *a1)
{
  sub_217B86E7C(0, &qword_2811BC4C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B86C70();
  sub_217D89E7C();
  v9[15] = 0;
  sub_217D89C9C();
  if (!v1)
  {
    v9[14] = 1;
    sub_217D89C9C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B86C70()
{
  result = qword_2811BD0B8;
  if (!qword_2811BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0B8);
  }

  return result;
}

uint64_t ScoreData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B86E7C(0, &qword_2811BC8C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B86C70();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    sub_217D89BBC();
    v11 = v10;
    v16 = 1;
    sub_217D89BBC();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B86E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B86C70();
    v7 = a3(a1, &type metadata for ScoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B86EE4()
{
  result = qword_2811BD098;
  if (!qword_2811BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD098);
  }

  return result;
}

unint64_t sub_217B86F3C()
{
  result = qword_2811BD0A0;
  if (!qword_2811BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScoreData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_217B87038()
{
  result = qword_27CBA0A30;
  if (!qword_27CBA0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A30);
  }

  return result;
}

unint64_t sub_217B87090()
{
  result = qword_2811BD0A8;
  if (!qword_2811BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0A8);
  }

  return result;
}

unint64_t sub_217B870E8()
{
  result = qword_2811BD0B0;
  if (!qword_2811BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0B0);
  }

  return result;
}

NewsAnalytics::FollowingType_optional __swiftcall FollowingType.init(rawValue:)(Swift::String rawValue)
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

unint64_t FollowingType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6E69776F6C6C6F66;
  if (v1 != 4)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0x6E69776F6C6C6F66;
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

unint64_t sub_217B87278()
{
  result = qword_27CBA0A38;
  if (!qword_27CBA0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A38);
  }

  return result;
}

uint64_t sub_217B872D4(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217B873EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCAFE0;
  v6 = 0xEF6573776F724267;
  v7 = 0x6E69776F6C6C6F66;
  if (v2 != 4)
  {
    v7 = 0xD000000000000017;
    v6 = 0x8000000217DCB010;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xE900000000000067;
  v9 = 0xD000000000000016;
  if (v2 == 1)
  {
    v9 = 0x6E69776F6C6C6F66;
  }

  else
  {
    v8 = 0x8000000217DCAFC0;
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
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217B87580()
{
  result = qword_2811C72B8;
  if (!qword_2811C72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72B8);
  }

  return result;
}

NewsAnalytics::UserType_optional __swiftcall UserType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_217B87688(_BYTE *a1, _BYTE *a2)
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B87788()
{
  result = qword_27CBA0A40;
  if (!qword_27CBA0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A40);
  }

  return result;
}

uint64_t sub_217B877DC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B8787C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B87908(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B87A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xEC00000065707954)
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

uint64_t sub_217B87B18(uint64_t a1)
{
  v2 = sub_217B87CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B87B54(uint64_t a1)
{
  v2 = sub_217B87CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleFeedbackData.encode(to:)(void *a1)
{
  sub_217B87F2C(0, &qword_27CBA0A48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B87CEC();
  sub_217D89E7C();
  v11 = v8;
  sub_217B87D40();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217B87CEC()
{
  result = qword_27CBA0A50;
  if (!qword_27CBA0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A50);
  }

  return result;
}

unint64_t sub_217B87D40()
{
  result = qword_27CBA0A58;
  if (!qword_27CBA0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A58);
  }

  return result;
}

uint64_t ArticleFeedbackData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B87F2C(0, &qword_27CBA0A60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B87CEC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B87F90();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B87F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B87CEC();
    v7 = a3(a1, &type metadata for ArticleFeedbackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B87F90()
{
  result = qword_27CBA0A68;
  if (!qword_27CBA0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A68);
  }

  return result;
}

unint64_t sub_217B87FE8()
{
  result = qword_27CBA0A70;
  if (!qword_27CBA0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A70);
  }

  return result;
}

unint64_t sub_217B88040()
{
  result = qword_27CBA0A78;
  if (!qword_27CBA0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A78);
  }

  return result;
}

unint64_t sub_217B880E8()
{
  result = qword_27CBA0A80;
  if (!qword_27CBA0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A80);
  }

  return result;
}

unint64_t sub_217B88140()
{
  result = qword_27CBA0A88;
  if (!qword_27CBA0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A88);
  }

  return result;
}

unint64_t sub_217B88198()
{
  result = qword_27CBA0A90;
  if (!qword_27CBA0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0A90);
  }

  return result;
}

__n128 HeadlineScoringData.sortingScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 57);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.sortingScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.agedPersonalizationScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 137);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.agedPersonalizationScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 137) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

__n128 HeadlineScoringData.tabiScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 32) = *(v1 + 192);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 217);
  result = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = result;
  return result;
}

__n128 HeadlineScoringData.tabiScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v2;
  *(v1 + 217) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = result;
  return result;
}

__n128 HeadlineScoringData.embeddingScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *(a1 + 32) = *(v1 + 272);
  *(a1 + 48) = v2;
  v3 = *(v1 + 256);
  *a1 = *(v1 + 240);
  *(a1 + 16) = v3;
  result = *(v1 + 297);
  *(a1 + 57) = result;
  return result;
}

__n128 HeadlineScoringData.embeddingScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 272) = *(a1 + 32);
  *(v1 + 288) = v2;
  *(v1 + 297) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 240) = *a1;
  *(v1 + 256) = result;
  return result;
}

__n128 HeadlineScoringData.clientScoreDistribution.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 368);
  *(a1 + 32) = *(v1 + 352);
  *(a1 + 48) = v2;
  v3 = *(v1 + 336);
  *a1 = *(v1 + 320);
  *(a1 + 16) = v3;
  result = *(v1 + 377);
  *(a1 + 57) = result;
  return result;
}

__n128 HeadlineScoringData.clientScoreDistribution.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 352) = *(a1 + 32);
  *(v1 + 368) = v2;
  *(v1 + 377) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 320) = *a1;
  *(v1 + 336) = result;
  return result;
}

void *HeadlineScoringData.init(sortingScoreDistribution:agedPersonalizationScoreDistribution:tabiScoreDistribution:embeddingScoreDistribution:clientScoreDistribution:context:headlineCount:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v10 = a1[3];
  v22[2] = a1[2];
  v22[3] = v10;
  *(&v22[3] + 9) = *(a1 + 57);
  v11 = a1[1];
  v22[0] = *a1;
  v22[1] = v11;
  v12 = a2[3];
  v22[7] = a2[2];
  v22[8] = v12;
  *(&v22[8] + 9) = *(a2 + 57);
  v13 = a2[1];
  v22[5] = *a2;
  v22[6] = v13;
  v14 = a3[3];
  v22[12] = a3[2];
  v22[13] = v14;
  *(&v22[13] + 9) = *(a3 + 57);
  v15 = a3[1];
  v22[10] = *a3;
  v22[11] = v15;
  *(&v22[18] + 9) = *(a4 + 57);
  v16 = a4[3];
  v22[17] = a4[2];
  v22[18] = v16;
  v17 = a4[1];
  v22[15] = *a4;
  v22[16] = v17;
  *(&v22[23] + 9) = *(a5 + 57);
  v18 = a5[3];
  v22[22] = a5[2];
  v22[23] = v18;
  v19 = a5[1];
  v22[20] = *a5;
  v22[21] = v19;
  v20 = *a6;
  result = memcpy(a8, v22, 0x189uLL);
  *(a8 + 393) = v20;
  *(a8 + 396) = a7;
  return result;
}

unint64_t sub_217B884F8()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  if (v1 != 5)
  {
    v2 = 0x656E696C64616568;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000024;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217B885EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B89184(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B88614(uint64_t a1)
{
  v2 = sub_217B88A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B88650(uint64_t a1)
{
  v2 = sub_217B88A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineScoringData.encode(to:)(void *a1)
{
  v2 = v1;
  sub_217B88E74(0, &qword_2811BC680, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = v2[7];
  v35[0] = v2[8];
  *(v35 + 9) = *(v2 + 137);
  v10 = v2[5];
  v33 = v2[6];
  v34 = v9;
  v32 = v10;
  v11 = v2[13];
  v38 = v2[12];
  v39[0] = v11;
  *(v39 + 9) = *(v2 + 217);
  v12 = v2[11];
  v36 = v2[10];
  v37 = v12;
  v13 = v2[18];
  v42 = v2[17];
  v43[0] = v13;
  *(v43 + 9) = *(v2 + 297);
  v14 = v2[16];
  v40 = v2[15];
  v41 = v14;
  v15 = v2[22];
  v16 = v2[23];
  v17 = v2[20];
  v45 = v2[21];
  v46 = v15;
  v47[0] = v16;
  *(v47 + 9) = *(v2 + 377);
  v44 = v17;
  v18 = *(v2 + 393);
  v25[1] = *(v2 + 99);
  v26 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B88A14();
  sub_217D89E7C();
  v19 = v2[3];
  v30 = v2[2];
  v31[0] = v19;
  *(v31 + 9) = *(v2 + 57);
  v20 = v2[1];
  v28 = *v2;
  v29 = v20;
  v27 = 0;
  sub_217B86514();
  v21 = v8;
  v22 = v48;
  sub_217D89CAC();
  if (v22)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v24 = v26;
  v30 = v34;
  v31[0] = v35[0];
  *(v31 + 9) = *(v35 + 9);
  v28 = v32;
  v29 = v33;
  v27 = 1;
  sub_217D89CAC();
  v30 = v38;
  v31[0] = v39[0];
  *(v31 + 9) = *(v39 + 9);
  v28 = v36;
  v29 = v37;
  v27 = 2;
  sub_217D89CAC();
  v30 = v42;
  v31[0] = v43[0];
  *(v31 + 9) = *(v43 + 9);
  v28 = v40;
  v29 = v41;
  v27 = 3;
  sub_217D89CAC();
  v30 = v46;
  v31[0] = v47[0];
  *(v31 + 9) = *(v47 + 9);
  v28 = v44;
  v29 = v45;
  v27 = 4;
  sub_217D89CAC();
  LOBYTE(v28) = v24;
  v27 = 5;
  sub_217B88A68();
  sub_217D89CAC();
  LOBYTE(v28) = 6;
  sub_217D89CBC();
  return (*(v6 + 8))(v21, 0);
}

unint64_t sub_217B88A14()
{
  result = qword_2811C2A28;
  if (!qword_2811C2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A28);
  }

  return result;
}

unint64_t sub_217B88A68()
{
  result = qword_2811C0498;
  if (!qword_2811C0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0498);
  }

  return result;
}

uint64_t HeadlineScoringData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B88E74(0, &qword_27CBA0A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_217B88A14();
  sub_217D89E5C();
  if (!v2)
  {
    v14 = v7;
    v37 = 0;
    sub_217B864BC();
    sub_217D89BCC();
    v42[2] = v40;
    v42[3] = v41[0];
    *(&v42[3] + 9) = *(v41 + 9);
    v42[0] = v38;
    v42[1] = v39;
    v32 = 1;
    sub_217D89BCC();
    v42[7] = v35;
    v42[8] = *v36;
    *(&v42[8] + 9) = *&v36[9];
    v42[5] = v33;
    v42[6] = v34;
    v27 = 2;
    sub_217D89BCC();
    v42[11] = v29;
    v42[12] = v30;
    v42[13] = *v31;
    *(&v42[13] + 9) = *&v31[9];
    v42[10] = v28;
    v22 = 3;
    sub_217D89BCC();
    *(&v42[18] + 9) = *&v26[9];
    v42[17] = v25;
    v42[18] = *v26;
    v42[15] = v23;
    v42[16] = v24;
    v17 = 4;
    sub_217D89BCC();
    *(&v42[23] + 9) = *&v21[9];
    v42[22] = v20;
    v42[23] = *v21;
    v42[20] = v18;
    v42[21] = v19;
    v15 = 5;
    sub_217B88ED8();
    sub_217D89BCC();
    v12 = v16;
    v16 = 6;
    v13 = sub_217D89BDC();
    (*(v14 + 8))(v9, v6);
    memcpy(a2, v42, 0x189uLL);
    *(a2 + 393) = v12;
    *(a2 + 396) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void sub_217B88E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B88A14();
    v7 = a3(a1, &type metadata for HeadlineScoringData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B88ED8()
{
  result = qword_27CBA0AA0;
  if (!qword_27CBA0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AA0);
  }

  return result;
}

uint64_t sub_217B88F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 400))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 393);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217B88FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 393) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_217B89080()
{
  result = qword_27CBA0AA8;
  if (!qword_27CBA0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AA8);
  }

  return result;
}

unint64_t sub_217B890D8()
{
  result = qword_2811C2A18;
  if (!qword_2811C2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A18);
  }

  return result;
}

unint64_t sub_217B89130()
{
  result = qword_2811C2A20;
  if (!qword_2811C2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A20);
  }

  return result;
}

uint64_t sub_217B89184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DCE920 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217DCE940 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCE970 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCE990 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCE9B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xED0000746E756F43)
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

NewsAnalytics::SessionStartSource_optional __swiftcall SessionStartSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t SessionStartSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616E7265747865;
  if (*v0 != 2)
  {
    v2 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6469577961646F74;
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

unint64_t sub_217B894D4()
{
  result = qword_27CBA0AB0;
  if (!qword_27CBA0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AB0);
  }

  return result;
}

uint64_t sub_217B89528()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B89604(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B896CC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B897B0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC0000006B6E694CLL;
  v5 = 0x6C616E7265747865;
  if (*v1 != 2)
  {
    v5 = 0x6163696669746F6ELL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 0x6469577961646F74;
    v2 = 0xEB00000000746567;
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

uint64_t IssueViewData.issueViewingSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueViewData.issueViewingSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B8990C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCE9D0 == a2)
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

uint64_t sub_217B899A0(uint64_t a1)
{
  v2 = sub_217B89B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B899DC(uint64_t a1)
{
  v2 = sub_217B89B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueViewData.encode(to:)(void *a1)
{
  sub_217B89D3C(0, &qword_2811BC7C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B89B64()
{
  result = qword_2811C71D0[0];
  if (!qword_2811C71D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C71D0);
  }

  return result;
}

uint64_t IssueViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B89D3C(0, &qword_2811BCAD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
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

void sub_217B89D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B89B64();
    v7 = a3(a1, &type metadata for IssueViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B89DC0(void *a1)
{
  sub_217B89D3C(0, &qword_2811BC7C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B89B64();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B89F30()
{
  result = qword_27CBA0AB8;
  if (!qword_27CBA0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0AB8);
  }

  return result;
}

unint64_t sub_217B89F88()
{
  result = qword_2811C71C0;
  if (!qword_2811C71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71C0);
  }

  return result;
}

unint64_t sub_217B89FE0()
{
  result = qword_2811C71C8;
  if (!qword_2811C71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71C8);
  }

  return result;
}

uint64_t sub_217B8A0FC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0AF0);
  __swift_project_value_buffer(v0, qword_27CBA0AF0);
  return sub_217D8866C();
}

uint64_t GameCenterExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GameCenterExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B8A2C8(uint64_t a1)
{
  if (!qword_2811C8510)
  {
    sub_217A54D08();
    sub_217A55B98();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8510);
    }
  }
}

uint64_t GameCenterExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GameCenterExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GameCenterExposureEvent(0) + 20);
  sub_217B8A2C8(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GameCenterExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20));
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

__n128 GameCenterExposureEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_217B8A5EC()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217B8A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t sub_217B8A71C(uint64_t a1)
{
  v2 = sub_217B8A9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8A758(uint64_t a1)
{
  v2 = sub_217B8A9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameCenterExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B8AD84(0, &qword_27CBA0B08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8A9C4();
  sub_217D89E7C();
  v26 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for GameCenterExposureEvent.Model(0) + 20));
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

unint64_t sub_217B8A9C4()
{
  result = qword_27CBA0B10;
  if (!qword_27CBA0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B10);
  }

  return result;
}

uint64_t GameCenterExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_217D8899C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B8AD84(0, &qword_27CBA0B18, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GameCenterExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8A9C4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
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
  sub_217B8ADE8(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B8AE4C(v13);
}

void sub_217B8AD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8A9C4();
    v7 = a3(a1, &type metadata for GameCenterExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8ADE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8AE4C(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217B8A2C8(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_217B8B068(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B8A2C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217B8B114(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B8B19C()
{
  result = qword_27CBA0B40;
  if (!qword_27CBA0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B40);
  }

  return result;
}

unint64_t sub_217B8B1F4()
{
  result = qword_27CBA0B48;
  if (!qword_27CBA0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B48);
  }

  return result;
}

unint64_t sub_217B8B24C()
{
  result = qword_27CBA0B50;
  if (!qword_27CBA0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0B50);
  }

  return result;
}

uint64_t sub_217B8B368()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0B88);
  __swift_project_value_buffer(v0, qword_27CBA0B88);
  return sub_217D8866C();
}

uint64_t HeartbeatEvent.heartbeatData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217B8B460(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217B8B460(uint64_t a1)
{
  if (!qword_27CBA0BA0)
  {
    type metadata accessor for HeartbeatData(255);
    sub_217A5AE10(&qword_27CBA0BA8, &protocol conformance descriptor for HeartbeatData);
    sub_217A5AE10(&qword_2811C7278, &protocol conformance descriptor for HeartbeatData);
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA0BA0);
    }
  }
}

uint64_t HeartbeatEvent.heartbeatData.setter(uint64_t a1)
{
  sub_217B8B460(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartbeatEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B8B460(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_217B8B618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165627472616568 && a2 == 0xED00006174614474)
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

uint64_t sub_217B8B73C(uint64_t a1)
{
  v2 = sub_217A5AD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8B778(uint64_t a1)
{
  v2 = sub_217A5AD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatEvent.Model.encode(to:)(void *a1)
{
  sub_217A5AB34(0, &qword_2811BC790, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5AD0C();
  sub_217D89E7C();
  type metadata accessor for HeartbeatData(0);
  sub_217A5AE10(&qword_2811C7278, &protocol conformance descriptor for HeartbeatData);
  sub_217D89CAC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t HeartbeatEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for HeartbeatData(0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5AB34(0, &qword_27CBA0BB0, MEMORY[0x277D844C8]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HeartbeatEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5AD0C();
  sub_217D89E5C();
  if (!v2)
  {
    v13 = v17;
    sub_217A5AE10(&qword_27CBA0BA8, &protocol conformance descriptor for HeartbeatData);
    v14 = v18;
    sub_217D89BCC();
    (*(v13 + 8))(v9, v7);
    sub_217B8BBB0(v14, v12, type metadata accessor for HeartbeatData);
    sub_217B8BBB0(v12, v16, type metadata accessor for HeartbeatEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217B8BBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217B8BCD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B8B460(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

unint64_t sub_217B8BECC()
{
  result = qword_27CBA0BC8;
  if (!qword_27CBA0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BC8);
  }

  return result;
}

uint64_t FeedJournalEntryData.init(groupResults:duration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FeedJournalEntryData.groupResults.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B8BFB4()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x73655270756F7267;
  }
}

uint64_t sub_217B8BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73655270756F7267 && a2 == 0xEC00000073746C75;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_217B8C0D8(uint64_t a1)
{
  v2 = sub_217B8C338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8C114(uint64_t a1)
{
  v2 = sub_217B8C338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedJournalEntryData.encode(to:)(void *a1)
{
  sub_217B8C668(0, &qword_2811BC658, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8C338();

  sub_217D89E7C();
  v14 = v9;
  v13 = 0;
  sub_217B8C38C();
  sub_217B8C6CC(&qword_2811BCDA8, sub_217B8C3DC, MEMORY[0x277D83948]);
  sub_217D89CAC();

  if (!v2)
  {
    v12 = 1;
    sub_217D89CCC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217B8C338()
{
  result = qword_2811C2110[0];
  if (!qword_2811C2110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2110);
  }

  return result;
}

void sub_217B8C38C()
{
  if (!qword_2811BCDB0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDB0);
    }
  }
}

unint64_t sub_217B8C3DC()
{
  result = qword_2811BF100;
  if (!qword_2811BF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF100);
  }

  return result;
}

uint64_t FeedJournalEntryData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217B8C668(0, &qword_27CBA0BD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8C338();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217B8C38C();
  v13[15] = 0;
  sub_217B8C6CC(&qword_27CBA0BD8, sub_217B8C738, MEMORY[0x277D83978]);
  sub_217D89BCC();
  v10 = v14;
  v13[14] = 1;
  v11 = sub_217D89BEC();
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B8C668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8C338();
    v7 = a3(a1, &type metadata for FeedJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8C6CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217B8C38C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217B8C738()
{
  result = qword_27CBA0BE0;
  if (!qword_27CBA0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BE0);
  }

  return result;
}

unint64_t sub_217B8C790()
{
  result = qword_2811C20F0;
  if (!qword_2811C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C20F0);
  }

  return result;
}

unint64_t sub_217B8C7E8()
{
  result = qword_2811C20F8;
  if (!qword_2811C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C20F8);
  }

  return result;
}

uint64_t sub_217B8C86C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_217B8C8B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_217B8C914()
{
  result = qword_27CBA0BE8;
  if (!qword_27CBA0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BE8);
  }

  return result;
}

unint64_t sub_217B8C96C()
{
  result = qword_2811C2100;
  if (!qword_2811C2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2100);
  }

  return result;
}

unint64_t sub_217B8C9C4()
{
  result = qword_2811C2108;
  if (!qword_2811C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2108);
  }

  return result;
}

uint64_t sub_217B8CA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_217B8CAF0(uint64_t a1)
{
  v2 = sub_217B8CCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8CB2C(uint64_t a1)
{
  v2 = sub_217B8CCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AMSErrorData.encode(to:)(void *a1)
{
  sub_217B8CE84(0, &qword_27CBA0BF0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B8CCB0()
{
  result = qword_27CBA0BF8;
  if (!qword_27CBA0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0BF8);
  }

  return result;
}

uint64_t AMSErrorData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217B8CE84(0, &qword_27CBA0C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B8CE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8CCB0();
    v7 = a3(a1, &type metadata for AMSErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B8CEEC()
{
  result = qword_2811C7B28;
  if (!qword_2811C7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B28);
  }

  return result;
}

unint64_t sub_217B8CF44()
{
  result = qword_2811C7B30;
  if (!qword_2811C7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B30);
  }

  return result;
}

uint64_t sub_217B8CFB0(void *a1)
{
  sub_217B8CE84(0, &qword_27CBA0BF0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8CCB0();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B8D11C()
{
  result = qword_27CBA0C08;
  if (!qword_27CBA0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C08);
  }

  return result;
}

unint64_t sub_217B8D174()
{
  result = qword_27CBA0C10;
  if (!qword_27CBA0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C10);
  }

  return result;
}

unint64_t sub_217B8D1CC()
{
  result = qword_27CBA0C18;
  if (!qword_27CBA0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C18);
  }

  return result;
}

uint64_t sub_217B8D2E8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0C50);
  __swift_project_value_buffer(v0, qword_27CBA0C50);
  return sub_217D8866C();
}

uint64_t FeedEmptyEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedEmptyEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 20);
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 24);
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 28);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedEmptyEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedEmptyEvent(0) + 28);
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedEmptyEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedEmptyEvent(0);
  v5 = v4[5];
  sub_217A604D4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A604D4(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t FeedEmptyEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedEmptyEvent.Model.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t FeedEmptyEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedEmptyEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 FeedEmptyEvent.Model.init(eventData:feedData:feedConfigData:viewData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  v21 = *(a3 + 3);
  v13 = a3[5];
  v14 = *a4;
  v23 = a4[1];
  v22 = *(a4 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  v16 = type metadata accessor for FeedEmptyEvent.Model(0);
  v17 = a5 + v16[5];
  *v17 = v7;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  v18 = a5 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  result = v21;
  *(v18 + 24) = v21;
  *(v18 + 40) = v13;
  v20 = a5 + v16[7];
  *v20 = v14;
  *(v20 + 8) = v23;
  *(v20 + 16) = v22;
  return result;
}

uint64_t sub_217B8DD70()
{
  v1 = 0x746144746E657665;
  v2 = 0x666E6F4364656566;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0x6174614464656566;
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

uint64_t sub_217B8DDF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B8ED78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B8DE20(uint64_t a1)
{
  v2 = sub_217B8E168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B8DE5C(uint64_t a1)
{
  v2 = sub_217B8E168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedEmptyEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B8E648(0, &qword_27CBA0C68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8E168();
  sub_217D89E7C();
  LOBYTE(v23) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedEmptyEvent.Model(0);
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

    v18 = (v3 + v10[7]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v23 = v19;
    v24 = v20;
    LOWORD(v25) = v18;
    v28 = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B8E168()
{
  result = qword_27CBA0C70;
  if (!qword_27CBA0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0C70);
  }

  return result;
}

uint64_t FeedEmptyEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_217D8899C();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B8E648(0, &qword_27CBA0C78, MEMORY[0x277D844C8]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for FeedEmptyEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B8E168();
  v27 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v23;
  v28[0] = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v24;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v31 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v14 = &v11[v9[5]];
  *v14 = v28[0];
  *(v14 + 8) = *&v28[8];
  v31 = 2;
  sub_217A60838();
  sub_217D89BCC();
  v15 = v28[16];
  v16 = v30;
  v17 = &v11[v9[6]];
  *v17 = *v28;
  v17[16] = v15;
  *(v17 + 24) = v29;
  *(v17 + 5) = v16;
  v31 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v25 + 8))(v27, v26);
  v18 = *&v28[8];
  v19 = *&v28[16];
  v20 = &v11[v9[7]];
  *v20 = *v28;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  sub_217B8E6AC(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B8E710(v11);
}

void sub_217B8E648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B8E168();
    v7 = a3(a1, &type metadata for FeedEmptyEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B8E6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEmptyEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B8E710(uint64_t a1)
{
  v2 = type metadata accessor for FeedEmptyEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B8E844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  sub_217A604D4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B8EA54(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A604D4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A604D4(319, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
      if (v3 <= 0x3F)
      {
        sub_217A604D4(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B8EBD8(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B8EC74()
{
  result = qword_27CBA0CA0;
  if (!qword_27CBA0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CA0);
  }

  return result;
}

unint64_t sub_217B8ECCC()
{
  result = qword_27CBA0CA8;
  if (!qword_27CBA0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CA8);
  }

  return result;
}

unint64_t sub_217B8ED24()
{
  result = qword_27CBA0CB0;
  if (!qword_27CBA0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CB0);
  }

  return result;
}

uint64_t sub_217B8ED78(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

double FCFeedPersonalizedItemScoreProfile.scienceData.getter@<D0>(uint64_t a1@<X8>)
{
  [v1 agedPersonalizationScore];
  v50 = v3;
  [v1 autoSubscribeCtr];
  v49 = v4;
  [v1 computedGlobalScoreCoefficient];
  v48 = v5;
  [v1 conversionMultiplier];
  v47 = v6;
  [v1 dampenedStaticMultiplier];
  v46 = v7;
  [v1 paidNonpaidSubscriptionCtr];
  v45 = v8;
  [v1 personalizationScore];
  v44 = v9;
  [v1 qualitativeMultiplier];
  v43 = v10;
  [v1 rawPersonalizationScore];
  v42 = v11;
  [v1 staticMultiplier];
  v41 = v12;
  [v1 subscribedChannelCtr];
  v40 = v13;
  [v1 userFeedbackScore];
  v39 = v14;
  [v1 rawUserFeedbackScore];
  v38 = v15;
  v16 = sub_217B8F26C(v1);
  [v1 tabiScore];
  v18 = round(v17 * 10000.0) / 10000.0;
  v19 = [v1 coefficients];
  [v19 conversionCoefficient];
  v21 = v20;

  v22 = round(v21 * 100.0) / 100.0;
  [v1 multiplier];
  v24 = round(v23 * 1000.0) / 1000.0;
  v25 = [v1 coefficients];
  [v25 halfLifeCoefficient];
  v27 = v26;

  v28 = round(v27 * 100.0) / 100.0;
  [v1 serverScoreDemocratizationFactor];
  v30 = round(v29 * 100.0) / 100.0;
  v31 = [v1 coefficients];
  [v31 autofavoritedScoreCoefficient];
  v33 = v32;

  [v1 nicheContentMultiplier];
  v35 = round(v34 * 1000.0) / 1000.0;
  [v1 contentTriggerDampener];
  *a1 = v50;
  *(a1 + 8) = v49;
  *(a1 + 16) = v48;
  *(a1 + 24) = v47;
  *(a1 + 32) = v46;
  *(a1 + 40) = 0;
  *(a1 + 48) = v45;
  *(a1 + 56) = v44;
  *(a1 + 64) = v43;
  *(a1 + 72) = v42;
  *(a1 + 80) = v41;
  *(a1 + 88) = v40;
  *(a1 + 96) = v39;
  *(a1 + 104) = v38;
  *(a1 + 112) = v16;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  result = round(v36 * 100.0) / 100.0;
  *(a1 + 136) = v18;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = v22;
  *(a1 + 176) = 0;
  *(a1 + 184) = v24;
  *(a1 + 192) = 0;
  *(a1 + 200) = v28;
  *(a1 + 208) = 0;
  *(a1 + 216) = v30;
  *(a1 + 224) = 0;
  *(a1 + 232) = round(v33 * 100.0) / 100.0;
  *(a1 + 240) = 0;
  *(a1 + 248) = v35;
  *(a1 + 256) = 0;
  *(a1 + 264) = result;
  *(a1 + 272) = 0;
  return result;
}

char *sub_217B8F26C(void *a1)
{
  v2 = [a1 cohortMemberships];
  sub_217B8F4A8();
  v3 = sub_217D896EC();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      result = sub_217B2C784(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v21;
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CEAD080](v6, v3);
        }

        else
        {
          if (v6 >= *(v20 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        result = [v9 tagID];
        if (!result)
        {
          goto LABEL_21;
        }

        v11 = result;
        v12 = sub_217D8954C();
        v14 = v13;

        [v10 score];
        v16 = v15;

        v18 = *(v21 + 16);
        v17 = *(v21 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_217B2C784((v17 > 1), v18 + 1, 1);
        }

        *(v21 + 16) = v18 + 1;
        v19 = (v21 + 24 * v18);
        v19[4] = v12;
        v19[5] = v14;
        v19[6] = v16;
        ++v6;
        if (v8 == v4)
        {

          return v7;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v4 = sub_217D89AAC();
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  return result;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return round(v3 * v2) / v3;
}

unint64_t sub_217B8F4A8()
{
  result = qword_2811BCC18;
  if (!qword_2811BCC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCC18);
  }

  return result;
}

uint64_t sub_217B8F5BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0CB8);
  __swift_project_value_buffer(v0, qword_27CBA0CB8);
  return sub_217D8866C();
}

uint64_t JourneyMessageDismissalEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageDismissalEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 20);
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 20);
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 24);
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 24);
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 28);
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 28);
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 32);
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 32);
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 36);
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageDismissalEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageDismissalEvent(0) + 36);
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageDismissalEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageDismissalEvent(0);
  v5 = v4[5];
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v12, v15);
}

uint64_t JourneyMessageDismissalEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 20));
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

uint64_t JourneyMessageDismissalEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageDismissalEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageDismissalEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageDismissalEvent.Model.init(eventData:userBundleSubscriptionContextData:dialogStyleData:placementData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *a5;
  v15 = *a6;
  v16 = a6[1];
  v26 = *(a6 + 16);
  v17 = sub_217D8899C();
  v24 = *(a4 + 2);
  v25 = *(a4 + 1);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
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
  result = v25;
  *(v21 + 16) = v25;
  *(v21 + 32) = v24;
  *(a7 + v18[8]) = v14;
  v23 = a7 + v18[9];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v26;
  return result;
}

uint64_t sub_217B90544()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6E656D6563616C70;
  if (v1 == 4)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0x6573616863727570;
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

uint64_t sub_217B9062C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B91A18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B90654(uint64_t a1)
{
  v2 = sub_217B90B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B90690(uint64_t a1)
{
  v2 = sub_217B90B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageDismissalEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B910FC(0, &qword_27CBA0CD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B90B44();
  sub_217D89E7C();
  v42[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v39 = v11[1];
    v40 = v12;
    v38 = v13;
    v41 = *(v11 + 48);
    v34 = v14;
    v15 = v11[2];
    v35 = v39;
    v36 = v15;
    v37 = *(v11 + 48);
    v33 = 1;
    sub_217ACC004(&v38, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_217ACC69C(v31);
    LOBYTE(v25) = *(v3 + v10[6]);
    v30 = 2;
    sub_217AFEA44();
    sub_217D89CAC();
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[5];
    v25 = *v16;
    v26 = v17;
    v27 = v18;
    v28 = *(v16 + 3);
    v29 = v19;
    v30 = 3;
    sub_217AFEC9C();

    sub_217D89CAC();

    LOBYTE(v25) = *(v3 + v10[8]);
    v30 = 4;
    sub_217AFF0A4();
    sub_217D89C3C();
    v21 = (v3 + v10[9]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v21) = *(v21 + 16);
    v25 = v22;
    v26 = v23;
    LOBYTE(v27) = v21;
    v30 = 5;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B90B44()
{
  result = qword_27CBA0CD8;
  if (!qword_27CBA0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CD8);
  }

  return result;
}

uint64_t JourneyMessageDismissalEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_217D8899C();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B910FC(0, &qword_27CBA0CE0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B90B44();
  v34 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v13 = v12;
  v14 = v30;
  LOBYTE(v38) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v31;
  v16 = v32;
  sub_217D89BCC();
  (*(v14 + 32))(v13, v15, v4);
  v43 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v17 = v13 + v10[5];
  v18 = v39;
  *v17 = v38;
  *(v17 + 16) = v18;
  *(v17 + 32) = v40;
  *(v17 + 48) = v41;
  v42 = 2;
  sub_217AFE9F0();
  v31 = 0;
  sub_217D89BCC();
  v19 = v28;
  v20 = v33;
  *(v13 + v10[6]) = v35;
  v42 = 3;
  sub_217AFEC48();
  sub_217D89BCC();
  v21 = *(&v35 + 1);
  v22 = v13 + v10[7];
  *v22 = v35;
  *(v22 + 8) = v21;
  v23 = v37;
  *(v22 + 16) = v36;
  *(v22 + 32) = v23;
  v42 = 4;
  sub_217AFF050();
  sub_217D89B5C();
  *(v13 + v10[8]) = v35;
  v42 = 5;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v20 + 8))(v34, v16);
  v24 = v36;
  v25 = v13 + v10[9];
  *v25 = v35;
  *(v25 + 16) = v24;
  sub_217B91160(v13, v29);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_217B911C4(v13);
}

void sub_217B910FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B90B44();
    v7 = a3(a1, &type metadata for JourneyMessageDismissalEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B91160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B911C4(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageDismissalEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B912F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62AF4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62AF4(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62AF4(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A62AF4(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A62AF4(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v13, v16);
}

void sub_217B91604(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62AF4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62AF4(319, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44, &type metadata for DialogStyleData);
      if (v3 <= 0x3F)
      {
        sub_217A62AF4(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C, &type metadata for JourneyPlacementData);
        if (v4 <= 0x3F)
        {
          sub_217A62AF4(319, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4, &type metadata for EngagementPlacementOriginationData);
          if (v5 <= 0x3F)
          {
            sub_217A62AF4(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
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

void sub_217B91828(uint64_t a1)
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

unint64_t sub_217B91914()
{
  result = qword_27CBA0CF8;
  if (!qword_27CBA0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0CF8);
  }

  return result;
}

unint64_t sub_217B9196C()
{
  result = qword_27CBA0D00;
  if (!qword_27CBA0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D00);
  }

  return result;
}

unint64_t sub_217B919C4()
{
  result = qword_27CBA0D08;
  if (!qword_27CBA0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D08);
  }

  return result;
}

uint64_t sub_217B91A18(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DCD720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144)
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

uint64_t AdPlacementData.placementID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdPlacementData.placementID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B91CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEB00000000444974)
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

uint64_t sub_217B91D80(uint64_t a1)
{
  v2 = sub_217B91F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B91DBC(uint64_t a1)
{
  v2 = sub_217B91F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdPlacementData.encode(to:)(void *a1)
{
  sub_217B9211C(0, &qword_2811BC778, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B91F44()
{
  result = qword_2811C6988;
  if (!qword_2811C6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6988);
  }

  return result;
}

uint64_t AdPlacementData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B9211C(0, &qword_27CBA0D10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
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

void sub_217B9211C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B91F44();
    v7 = a3(a1, &type metadata for AdPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B921A0(void *a1)
{
  sub_217B9211C(0, &qword_2811BC778, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B91F44();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217B92310()
{
  result = qword_27CBA0D18;
  if (!qword_27CBA0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D18);
  }

  return result;
}

unint64_t sub_217B92368()
{
  result = qword_2811C6978;
  if (!qword_2811C6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6978);
  }

  return result;
}

unint64_t sub_217B923C0()
{
  result = qword_2811C6980;
  if (!qword_2811C6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6980);
  }

  return result;
}

uint64_t FeedLayoutTracker.__allocating_init(tracker:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedLayoutTracker.trackFeedDidFailSubgroupLayout(subgroup:failure:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_217D8908C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_217A4998C(a1, v11);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_217A517E4(v11, v8 + 16);
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_217D8894C();
}

char *sub_217B925B0(uint64_t a1, void *a2, uint64_t a3)
{
  v154 = a3;
  v164 = a1;
  v4 = sub_217D87C9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v161 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_217D8920C();
  v165 = *(v162 - 8);
  v7 = MEMORY[0x28223BE20](v162);
  v159 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v158 = &v148 - v9;
  v10 = sub_217D88E0C();
  v156 = *(v10 - 8);
  v157 = v10;
  MEMORY[0x28223BE20](v10);
  v155 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B93C9C(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v183 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v184 = &v148 - v15;
  v186 = sub_217D87BAC();
  v178 = *(v186 - 1);
  v16 = MEMORY[0x28223BE20](v186);
  v182 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v181 = &v148 - v18;
  sub_217B93B34(0);
  v175 = v19;
  v166 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v185 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v148 - v22;
  v24 = sub_217D8930C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v167 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  *&v190 = &v148 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v148 - v30;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217D8911C();
  if (!v199.errorCode._object)
  {
    return sub_217B93C2C(&v199, &qword_2811BCEE0, sub_217B93BC8);
  }

  sub_217A517E4(&v199.errorDomain.value._countAndFlagsBits, v204);
  __swift_project_boxed_opaque_existential_1(v204, v205);
  v32 = sub_217D890BC();
  if (!v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v204);
  }

  v160 = v5;
  v153 = v4;
  v33 = v32;
  sub_217D890FC();
  sub_217D892FC();
  v34 = *(v25 + 8);
  v34(v31, v24);
  v35 = sub_217D8933C();
  v149 = v36;
  v150 = v35;

  v37 = v190;
  v163 = v33;
  sub_217D890FC();
  sub_217D892FC();
  v151 = v34;
  v34(v37, v24);
  v38 = sub_217D8934C();

  v39 = *(v38 + 16);
  v172 = v24;
  v173 = v25 + 8;
  if (v39)
  {
    v40 = *(v166 + 16);
    v41 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v177 = v38;
    v42 = v38 + v41;
    v188 = *(v166 + 72);
    v189 = v40;
    v43 = (v178 + 48);
    v179 = (v178 + 8);
    v180 = (v178 + 32);
    *&v190 = v166 + 16;
    v44 = (v166 + 8);
    v176 = MEMORY[0x277D84F90];
    v45 = v186;
    v46 = v175;
    v47 = v184;
    v40(v23, v42, v175);
    while (1)
    {
      sub_217D8929C();
      if ((*v43)(v47, 1, v45) == 1)
      {
        (*v44)(v23, v46);
        sub_217B93C2C(v47, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      }

      else
      {
        v48 = v181;
        (*v180)(v181, v47, v45);
        v187 = sub_217D87B5C();
        v50 = v49;
        (*v179)(v48, v45);
        (*v44)(v23, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_217B5B0E0(0, *(v176 + 2) + 1, 1, v176);
        }

        v52 = *(v176 + 2);
        v51 = *(v176 + 3);
        if (v52 >= v51 >> 1)
        {
          v176 = sub_217B5B0E0((v51 > 1), v52 + 1, 1, v176);
        }

        v53 = v176;
        *(v176 + 2) = v52 + 1;
        v54 = &v53[16 * v52];
        v45 = v186;
        *(v54 + 4) = v187;
        *(v54 + 5) = v50;
        v46 = v175;
        v47 = v184;
      }

      v42 += v188;
      if (!--v39)
      {
        break;
      }

      v189(v23, v42, v46);
    }

    v24 = v172;
  }

  else
  {

    v176 = MEMORY[0x277D84F90];
    v45 = v186;
  }

  v56 = sub_217D890DC();
  v57 = v167;
  v58 = v183;
  v59 = v185;
  if (!(v56 >> 62))
  {
    v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_19;
    }

LABEL_29:

    v148 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v73 = v56;
  v60 = sub_217D89AAC();
  v56 = v73;
  if (!v60)
  {
    goto LABEL_29;
  }

LABEL_19:
  v61 = v56;
  v199.errorDomain.value._countAndFlagsBits = MEMORY[0x277D84F90];
  result = sub_217B2C7A4(0, v60 & ~(v60 >> 63), 0);
  if ((v60 & 0x8000000000000000) == 0)
  {
    v62 = 0;
    countAndFlagsBits = v199.errorDomain.value._countAndFlagsBits;
    v64 = v61;
    *&v190 = v61 & 0xC000000000000001;
    v65 = v61;
    do
    {
      v66 = countAndFlagsBits;
      if (v190)
      {
        MEMORY[0x21CEAD080](v62, v64);
      }

      else
      {
      }

      v67 = sub_217D8933C();
      v69 = v68;

      countAndFlagsBits = v66;
      v199.errorDomain.value._countAndFlagsBits = v66;
      v70 = *(v66 + 16);
      v71 = *(countAndFlagsBits + 24);
      if (v70 >= v71 >> 1)
      {
        sub_217B2C7A4((v71 > 1), v70 + 1, 1);
        countAndFlagsBits = v199.errorDomain.value._countAndFlagsBits;
      }

      ++v62;
      *(countAndFlagsBits + 16) = v70 + 1;
      v72 = countAndFlagsBits + 16 * v70;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      v45 = v186;
      v64 = v65;
    }

    while (v60 != v62);
    v148 = countAndFlagsBits;

    v24 = v172;
    v57 = v167;
    v59 = v185;
LABEL_30:
    isUniquelyReferenced_nonNull_native = sub_217D890DC();
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_71;
    }

    v75 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    v152 = isUniquelyReferenced_nonNull_native;
    if (v75)
    {
      do
      {
        v76 = 0;
        v170 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v171 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v169 = isUniquelyReferenced_nonNull_native + 32;
        v188 = v178 + 48;
        v189 = (v166 + 16);
        v180 = (v178 + 8);
        v181 = (v178 + 32);
        v77 = MEMORY[0x277D84F90];
        v187 = (v166 + 8);
        v168 = v75;
        while (1)
        {
          v179 = v77;
          if (!v171)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = MEMORY[0x21CEAD080](v76, v152);
          v79 = __OFADD__(v76, 1);
          v80 = v76 + 1;
          if (v79)
          {
            goto LABEL_65;
          }

LABEL_38:
          v177 = v80;
          v178 = isUniquelyReferenced_nonNull_native;
          v81 = sub_217D8934C();
          v82 = *(v81 + 16);
          if (v82)
          {
            v83 = *(v166 + 80);
            v174 = v81;
            v84 = v81 + ((v83 + 32) & ~v83);
            v85 = *(v166 + 72);
            *&v190 = *(v166 + 16);
            v86 = MEMORY[0x277D84F90];
            v87 = v175;
            v184 = v85;
            (v190)(v59, v84, v175);
            while (1)
            {
              sub_217D8929C();
              if ((*v188)(v58, 1, v45) == 1)
              {
                (*v187)(v59, v87);
                sub_217B93C2C(v58, &qword_2811C8CA0, MEMORY[0x277CC9260]);
              }

              else
              {
                v88 = v182;
                (*v181)(v182, v58, v45);
                v89 = v59;
                v90 = sub_217D87B5C();
                v92 = v91;
                (*v180)(v88, v45);
                (*v187)(v89, v87);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v86 = sub_217B5B0E0(0, *(v86 + 2) + 1, 1, v86);
                }

                v94 = *(v86 + 2);
                v93 = *(v86 + 3);
                if (v94 >= v93 >> 1)
                {
                  v86 = sub_217B5B0E0((v93 > 1), v94 + 1, 1, v86);
                }

                *(v86 + 2) = v94 + 1;
                v95 = &v86[16 * v94];
                *(v95 + 4) = v90;
                *(v95 + 5) = v92;
                v58 = v183;
                v85 = v184;
                v59 = v185;
                v45 = v186;
              }

              v84 += v85;
              if (!--v82)
              {
                break;
              }

              (v190)(v59, v84, v87);
            }

            v57 = v167;
          }

          else
          {

            v86 = MEMORY[0x277D84F90];
          }

          v96 = *(v86 + 2);
          isUniquelyReferenced_nonNull_native = v179;
          v59 = *(v179 + 2);
          v97 = &v59[v96];
          v24 = v172;
          if (__OFADD__(v59, v96))
          {
            goto LABEL_67;
          }

          v98 = v179;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v98;
          if (!isUniquelyReferenced_nonNull_native || v97 > *(v98 + 3) >> 1)
          {
            if (v59 <= v97)
            {
              v100 = &v59[v96];
            }

            else
            {
              v100 = v59;
            }

            isUniquelyReferenced_nonNull_native = sub_217B5B0E0(isUniquelyReferenced_nonNull_native, v100, 1, v98);
            v99 = isUniquelyReferenced_nonNull_native;
          }

          v59 = v185;
          if (*(v86 + 2))
          {
            if ((*(v99 + 24) >> 1) - *(v99 + 16) < v96)
            {
              goto LABEL_69;
            }

            v101 = v99;
            swift_arrayInitWithCopy();

            v77 = v101;
            v76 = v177;
            if (v96)
            {
              v102 = *(v77 + 2);
              v79 = __OFADD__(v102, v96);
              v103 = v102 + v96;
              if (v79)
              {
                goto LABEL_70;
              }

              *(v77 + 2) = v103;
            }
          }

          else
          {
            v78 = v99;

            v77 = v78;
            v76 = v177;
            if (v96)
            {
              goto LABEL_68;
            }
          }

          if (v76 == v168)
          {
            goto LABEL_73;
          }
        }

        if (v76 >= *(v170 + 16))
        {
          goto LABEL_66;
        }

        v79 = __OFADD__(v76, 1);
        v80 = v76 + 1;
        if (!v79)
        {
          goto LABEL_38;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v104 = isUniquelyReferenced_nonNull_native;
        v105 = sub_217D89AAC();
        isUniquelyReferenced_nonNull_native = v104;
        v75 = v105;
        v152 = isUniquelyReferenced_nonNull_native;
      }

      while (v105);
    }

    v77 = MEMORY[0x277D84F90];
LABEL_73:
    v179 = v77;

    v106 = v155;
    sub_217D8941C();
    v107 = sub_217D88DFC();
    v189 = v108;
    *&v190 = v107;
    (*(v156 + 8))(v106, v157);
    __swift_project_boxed_opaque_existential_1(v204, v205);
    v109 = sub_217D890CC();
    v187 = v110;
    v188 = v109;
    v111 = v158;
    sub_217D890EC();
    v112 = sub_217D891DC();
    v113 = v24;
    v185 = v114;
    v186 = v112;
    v115 = *(v165 + 8);
    v165 += 8;
    v115(v111, v162);
    sub_217D890FC();
    v116 = sub_217D892EC();
    v117 = v57;
    v119 = v118;
    v120 = v151;
    v151(v117, v113);
    v199.errorDomain.value._countAndFlagsBits = v116;
    v199.errorDomain.value._object = v119;
    v194.errorDomain.value._countAndFlagsBits = 14906;
    v194.errorDomain.value._object = 0xE200000000000000;
    sub_217A4EBC4();
    v121 = sub_217D8991C();

    v122 = *(v121 + 16);
    if (v122)
    {
      v123 = (v121 + 16 + 16 * v122);
      v124 = *v123;
      v125 = v123[1];
    }

    else
    {

      sub_217D890FC();
      v124 = sub_217D892EC();
      v126 = v120;
      v125 = v127;
      v126(v117, v113);
    }

    v128 = v159;
    sub_217D890EC();
    v129 = v161;
    sub_217D891EC();
    v115(v128, v162);
    sub_217D87C6C();
    v131 = v130;
    v132 = *(v160 + 8);
    v160 += 8;
    result = v132(v129, v153);
    v133 = v131 * 1000.0;
    if (COERCE__INT64(fabs(v131 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v133 > -9.22337204e18)
    {
      if (v133 < 9.22337204e18)
      {
        v194.errorDomain.value._countAndFlagsBits = v150;
        v194.errorDomain.value._object = v149;
        v194.errorCode._countAndFlagsBits = v176;
        v194.errorCode._object = v148;
        v194.errorDetails.value._rawValue = v179;
        *&v194.errorDetails.is_nil = v190;
        *&v195 = v189;
        *(&v195 + 1) = v188;
        *&v196 = v187;
        *(&v196 + 1) = v186;
        *&v197 = v185;
        *(&v197 + 1) = v124;
        *&v198 = v125;
        *(&v198 + 1) = v133;
        sub_217B93C9C(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v188 = v134;
        v135 = sub_217D882DC();
        v136 = *(*(v135 - 8) + 80);
        v137 = *(v135 - 8);
        v138 = (v136 + 32) & ~v136;
        v183 = *(v137 + 72);
        v184 = v136;
        v139 = swift_allocObject();
        v190 = xmmword_217D8D8F0;
        *(v139 + 16) = xmmword_217D8D8F0;
        LODWORD(v187) = *MEMORY[0x277CEAD18];
        v186 = *(v137 + 104);
        v186(v139 + v138);
        v182 = (v137 + 104);
        v185 = "ics17FeedLayoutTracker";
        sub_217B93D00();
        v189 = v132;
        sub_217D8820C();

        v201 = v196;
        v202 = v197;
        v203 = v198;
        v199 = v194;
        v200 = v195;
        sub_217B93D54(&v199);
        v140 = sub_217D8907C();
        swift_getErrorValue();
        Error.errorData()(&v194);

        errorDomain = v194.errorDomain;
        errorCode = v194.errorCode;
        rawValue = v194.errorDetails.value._rawValue;
        v141 = swift_allocObject();
        *(v141 + 16) = v190;
        v142 = v187;
        v143 = v186;
        (v186)(v141 + v138, v187, v135);
        sub_217B93DA8();
        sub_217D8820C();

        v194.errorDomain.value._countAndFlagsBits = sub_217D8906C();
        v194.errorDomain.value._object = v144;
        v145 = swift_allocObject();
        *(v145 + 16) = v190;
        v143(v145 + v138, v142, v135);
        sub_217B93DFC();
        sub_217D8820C();

        v146 = v161;
        sub_217D87C8C();
        type metadata accessor for FeedGroupLayoutFailureEvent(0);
        strcpy(&v194, "realtime-");
        WORD1(v194.errorDomain.value._object) = 0;
        HIDWORD(v194.errorDomain.value._object) = -385875968;
        v147 = sub_217D8809C();
        MEMORY[0x21CEACC70](v147);

        sub_217D881CC();
        sub_217B93E50(&qword_27CBA0D40, type metadata accessor for FeedGroupLayoutFailureEvent, &protocol conformance descriptor for FeedGroupLayoutFailureEvent);
        sub_217D881EC();
        sub_217D881DC();

        (v189)(v146, v153);
        return __swift_destroy_boxed_opaque_existential_1(v204);
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FeedLayoutTracker.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_217B93934(uint64_t a1, uint64_t a2)
{
  v4 = sub_217D8908C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_217A4998C(a1, v11);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_217A517E4(v11, v8 + 16);
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_217D8894C();
}

char *sub_217B93AC0(uint64_t a1)
{
  v3 = *(sub_217D8908C() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_217B925B0(a1, (v1 + 16), v4);
}

void sub_217B93B34(uint64_t a1)
{
  if (!qword_27CBA0D20)
  {
    sub_217D8921C();
    sub_217B93E50(&qword_27CBA0D28, MEMORY[0x277D33498], MEMORY[0x277D33490]);
    v1 = sub_217D892AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA0D20);
    }
  }
}

unint64_t sub_217B93BC8()
{
  result = qword_2811BCEE8;
  if (!qword_2811BCEE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCEE8);
  }

  return result;
}

uint64_t sub_217B93C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217B93C9C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_217B93C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_217B93D00()
{
  result = qword_2811C3528[0];
  if (!qword_2811C3528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C3528);
  }

  return result;
}

unint64_t sub_217B93DA8()
{
  result = qword_27CBA0D30;
  if (!qword_27CBA0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D30);
  }

  return result;
}

unint64_t sub_217B93DFC()
{
  result = qword_27CBA0D38;
  if (!qword_27CBA0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D38);
  }

  return result;
}

uint64_t sub_217B93E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SportsTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217B93F00(uint64_t a1)
{
  v2 = sub_217A66378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B93F3C(uint64_t a1)
{
  v2 = sub_217A66378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A662FC(0, &qword_27CBA0D48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A66378();
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

unint64_t sub_217B94180()
{
  result = qword_27CBA0D50;
  if (!qword_27CBA0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D50);
  }

  return result;
}

void __swiftcall UserBundleSubscriptionContextData.init(bundleSubscriptionStatus:bundleSubscriptionPurchaseID:isBundleSubscriptionPurchaser:isAmplifyUser:sBundlePurchaseID:isPaidBundleViaOfferTrialist:)(NewsAnalytics::UserBundleSubscriptionContextData *__return_ptr retstr, NewsAnalytics::BundleSubscriptionStatus bundleSubscriptionStatus, Swift::String_optional bundleSubscriptionPurchaseID, Swift::Bool isBundleSubscriptionPurchaser, Swift::Bool isAmplifyUser, Swift::String_optional sBundlePurchaseID, Swift::Bool_optional isPaidBundleViaOfferTrialist)
{
  retstr->bundleSubscriptionStatus = *bundleSubscriptionStatus;
  retstr->bundleSubscriptionPurchaseID = bundleSubscriptionPurchaseID;
  retstr->isBundleSubscriptionPurchaser = isBundleSubscriptionPurchaser;
  retstr->isAmplifyUser = isAmplifyUser;
  retstr->sBundlePurchaseID = sBundlePurchaseID;
  retstr->isPaidBundleViaOfferTrialist = isPaidBundleViaOfferTrialist;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_217B943D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B94998(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B943FC(uint64_t a1)
{
  v2 = sub_217A652E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B94438(uint64_t a1)
{
  v2 = sub_217A652E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserBundleSubscriptionContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A65030(0, &qword_2811BC930, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A652E4();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_217B94804();
    sub_217D89BCC();
    v10 = v40;
    v40 = 1;
    v11 = sub_217D89B2C();
    v13 = v12;
    v35 = v11;
    v40 = 2;
    v34 = sub_217D89B9C();
    v40 = 3;
    v14 = sub_217D89B9C();
    v32 = v10;
    v33 = v14;
    v40 = 4;
    v15 = sub_217D89B2C();
    v17 = v16;
    v31 = v15;
    v53 = 5;
    v18 = sub_217D89B3C();
    v33 &= 1u;
    v34 &= 1u;
    v19 = v34;
    v20 = *(v7 + 8);
    v30 = v18;
    v20(v9, v6);
    v21 = v32;
    LOBYTE(v36) = v32;
    *(&v36 + 1) = *v54;
    DWORD1(v36) = *&v54[3];
    v22 = v35;
    *(&v36 + 1) = v35;
    *&v37 = v13;
    BYTE8(v37) = v19;
    v23 = v33;
    BYTE9(v37) = v33;
    *(&v37 + 10) = v51;
    HIWORD(v37) = v52;
    v24 = v31;
    *&v38 = v31;
    *(&v38 + 1) = v17;
    v39 = v30;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    *(a2 + 48) = v30;
    *(a2 + 16) = v26;
    *(a2 + 32) = v27;
    *a2 = v25;
    sub_217ACC004(&v36, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v21;
    *v41 = *v54;
    *&v41[3] = *&v54[3];
    v42 = v22;
    v43 = v13;
    v44 = v34;
    v45 = v23;
    v46 = v51;
    v47 = v52;
    v48 = v24;
    v49 = v17;
    v50 = v30;
    return sub_217ACC69C(&v40);
  }
}

unint64_t sub_217B94804()
{
  result = qword_2811BF978;
  if (!qword_2811BF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF978);
  }

  return result;
}

uint64_t sub_217B94870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_217B948CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_217B94944()
{
  result = qword_27CBA0D58;
  if (!qword_27CBA0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D58);
  }

  return result;
}

uint64_t sub_217B94998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DCEAF0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCEB10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DCEB30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66696C706D417369 && a2 == 0xED00007265735579 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCEB50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCEB70 == a2)
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

uint64_t sub_217B94BA0()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C2D70);
  v1 = __swift_project_value_buffer(v0, qword_2811C2D70);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217B94C8C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C2D48);
  v1 = __swift_project_value_buffer(v0, qword_2811C2D48);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B94D4C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2D20);
  __swift_project_value_buffer(v0, qword_2811C2D20);
  return sub_217D8866C();
}

uint64_t AdJournalEntryEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdJournalEntryEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 20);
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 24);
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 28);
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adCreativeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4, &type metadata for AdCreativeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95460()
{
  result = qword_2811C7148;
  if (!qword_2811C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7148);
  }

  return result;
}

unint64_t sub_217B954B4()
{
  result = qword_2811C7150;
  if (!qword_2811C7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7150);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adCreativeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 32);
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4, &type metadata for AdCreativeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 36);
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adJournalEntryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC, &type metadata for AdJournalEntryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95868()
{
  result = qword_2811C4050;
  if (!qword_2811C4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4050);
  }

  return result;
}

unint64_t sub_217B958BC()
{
  result = qword_2811C4058;
  if (!qword_2811C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4058);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adJournalEntryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 40);
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC, &type metadata for AdJournalEntryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B95AC0()
{
  result = qword_2811C7FF8;
  if (!qword_2811C7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FF8);
  }

  return result;
}

unint64_t sub_217B95B14()
{
  result = qword_2811C8000;
  if (!qword_2811C8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8000);
  }

  return result;
}

uint64_t AdJournalEntryEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 44);
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 48);
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdJournalEntryEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 52);
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 56);
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B96078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AdJournalEntryEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdJournalEntryEvent(0) + 56);
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdJournalEntryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdJournalEntryEvent(0);
  v5 = v4[5];
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4, &type metadata for AdCreativeData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC, &type metadata for AdJournalEntryData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t AdJournalEntryEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 24));
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

void AdJournalEntryEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 28));
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

uint64_t AdJournalEntryEvent.Model.adCreativeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AdJournalEntryEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AdJournalEntryEvent.Model.adJournalEntryData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AdJournalEntryEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t AdJournalEntryEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AdJournalEntryEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 AdJournalEntryEvent.Model.init(eventData:adUserData:userBundleSubscriptionContextData:channelData:adCreativeData:adPlacementData:adJournalEntryData:adSizeData:adPositionData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a4 + 32);
  v19 = *a5;
  v20 = *a6;
  v21 = a6[1];
  v34 = *a7;
  v36 = *a8;
  v35 = *(a8 + 8);
  v37 = *(a10 + 4);
  v38 = *a10;
  v39 = *a11;
  v40 = *a12;
  v22 = sub_217D8899C();
  v32 = *(a4 + 16);
  v33 = *a4;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for AdJournalEntryEvent.Model(0);
  v24 = (a9 + v23[5]);
  *v24 = v16;
  v24[1] = v17;
  v25 = a9 + v23[6];
  v26 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = *(a3 + 48);
  v27 = a9 + v23[7];
  result = v33;
  *v27 = v33;
  *(v27 + 16) = v32;
  *(v27 + 32) = v18;
  *(a9 + v23[8]) = v19;
  v29 = (a9 + v23[9]);
  *v29 = v20;
  v29[1] = v21;
  *(a9 + v23[10]) = v34;
  v30 = a9 + v23[11];
  *v30 = v36;
  *(v30 + 8) = v35;
  v31 = a9 + v23[12];
  *v31 = v38;
  *(v31 + 4) = v37;
  *(a9 + v23[13]) = v39;
  *(a9 + v23[14]) = v40;
  return result;
}

unint64_t sub_217B96B9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0xD000000000000021;
    v8 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v8 = 0x6974616572436461;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6144726573556461;
    }

    if (a1 <= 1u)
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
    v1 = 0x697469736F506461;
    v2 = 0x6144646565466461;
    if (a1 != 9)
    {
      v2 = 0x4470756F72476461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6563616C506461;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0x6144657A69536461;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217B96D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B989A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B96D7C(uint64_t a1)
{
  v2 = sub_217B97404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B96DB8(uint64_t a1)
{
  v2 = sub_217B97404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B97C0C(0, &qword_27CBA0D60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B97404();
  sub_217D89E7C();
  LOBYTE(v42[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AdJournalEntryEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v45 = *v11;
    v46 = v12;
    v44 = 1;
    sub_217A586D4();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v42[0] = *v13;
    v42[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v42[2] = v13[2];
    v43 = *(v13 + 48);
    v38 = v16;
    v39 = v15;
    v40 = v13[2];
    v41 = *(v13 + 48);
    v37 = 2;
    sub_217ACC004(v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    v17 = (v3 + v10[7]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v30 = *v17;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v34 = v21;
    HIBYTE(v29) = 3;
    sub_217AD86BC(v30, v18, v19, v20, v21);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v30, v31, v32, v33, v34);
    LOBYTE(v30) = *(v3 + v10[8]);
    HIBYTE(v29) = 4;
    sub_217B954B4();
    sub_217D89CAC();
    v22 = (v3 + v10[9]);
    v23 = v22[1];
    v30 = *v22;
    v31 = v23;
    HIBYTE(v29) = 5;
    sub_217B3CE84();

    sub_217D89CAC();

    LOWORD(v30) = *(v3 + v10[10]);
    HIBYTE(v29) = 6;
    sub_217B958BC();
    sub_217D89CAC();
    v24 = v3 + v10[11];
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 8);
    v30 = v25;
    LOBYTE(v31) = v24;
    HIBYTE(v29) = 7;
    sub_217B95B14();
    sub_217D89C3C();
    v26 = (v3 + v10[12]);
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 4);
    LODWORD(v30) = v27;
    BYTE4(v30) = v26;
    HIBYTE(v29) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v30) = *(v3 + v10[13]);
    HIBYTE(v29) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v30) = *(v3 + v10[14]);
    HIBYTE(v29) = 10;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B97404()
{
  result = qword_27CBA0D68;
  if (!qword_27CBA0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D68);
  }

  return result;
}

void AdJournalEntryEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B97C0C(0, &qword_27CBA0D70, MEMORY[0x277D844C8]);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for AdJournalEntryEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B97404();
  v36 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = v11;
    v30 = a1;
    LOBYTE(v40) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v12 = v33;
    sub_217D89BCC();
    v13 = v29;
    (*(v32 + 32))(v29, v12, v4);
    LOBYTE(v37) = 1;
    sub_217A5867C();
    sub_217D89BCC();
    v28[1] = v4;
    v33 = 0;
    v14 = *(&v40 + 1);
    v15 = &v13[v9[5]];
    *v15 = v40;
    *(v15 + 1) = v14;
    v45 = 2;
    sub_217A54D08();
    sub_217D89BCC();
    v16 = &v13[v9[6]];
    v17 = v41;
    *v16 = v40;
    *(v16 + 1) = v17;
    *(v16 + 2) = v42;
    v16[48] = v43;
    v44 = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v18 = v39;
    v19 = &v13[v9[7]];
    v20 = v38;
    *v19 = v37;
    *(v19 + 1) = v20;
    *(v19 + 4) = v18;
    v44 = 4;
    sub_217B95460();
    sub_217D89BCC();
    v13[v9[8]] = v37;
    v44 = 5;
    sub_217B3CE30();
    sub_217D89BCC();
    v21 = *(&v37 + 1);
    v22 = &v13[v9[9]];
    *v22 = v37;
    *(v22 + 1) = v21;
    v44 = 6;
    sub_217B95868();
    sub_217D89BCC();
    *&v13[v9[10]] = v37;
    v44 = 7;
    sub_217B95AC0();
    sub_217D89B5C();
    v23 = BYTE8(v37);
    v24 = &v13[v9[11]];
    *v24 = v37;
    v24[8] = v23;
    v44 = 8;
    sub_217B3D088();
    sub_217D89B5C();
    v25 = BYTE4(v37);
    v26 = &v13[v9[12]];
    *v26 = v37;
    v26[4] = v25;
    v44 = 9;
    sub_217A5BD70();
    sub_217D89B5C();
    v29[v9[13]] = v37;
    v44 = 10;
    sub_217B3D50C();
    sub_217D89B5C();
    (*(v34 + 8))(v36, v35);
    v27 = v29;
    v29[v9[14]] = v37;
    sub_217B97C70(v27, v31);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_217B97CD4(v27);
  }
}

void sub_217B97C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B97404();
    v7 = a3(a1, &type metadata for AdJournalEntryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B97C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B97CD4(uint64_t a1)
{
  v2 = type metadata accessor for AdJournalEntryEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B97E08@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B96078(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B96078(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B96078(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B96078(0, &qword_2811C8750, sub_217B95460, sub_217B954B4, &type metadata for AdCreativeData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B96078(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B96078(0, &qword_2811C8650, sub_217B95868, sub_217B958BC, &type metadata for AdJournalEntryData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B96078(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217B96078(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217B96078(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217B96078(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217B98374(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B96078(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
    if (v2 <= 0x3F)
    {
      sub_217B96078(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217B96078(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217B96078(319, &qword_2811C8750, sub_217B95460, sub_217B954B4, &type metadata for AdCreativeData);
          if (v5 <= 0x3F)
          {
            sub_217B96078(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
            if (v6 <= 0x3F)
            {
              sub_217B96078(319, &qword_2811C8650, sub_217B95868, sub_217B958BC, &type metadata for AdJournalEntryData);
              if (v7 <= 0x3F)
              {
                sub_217B96078(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
                if (v8 <= 0x3F)
                {
                  sub_217B96078(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217B96078(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
                    if (v10 <= 0x3F)
                    {
                      sub_217B96078(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
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

void sub_217B98728(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA0D88, &type metadata for AdSizeData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60, &type metadata for AdPositionData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
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

unint64_t sub_217B988A4()
{
  result = qword_27CBA0D90;
  if (!qword_27CBA0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D90);
  }

  return result;
}

unint64_t sub_217B988FC()
{
  result = qword_27CBA0D98;
  if (!qword_27CBA0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0D98);
  }

  return result;
}

unint64_t sub_217B98954()
{
  result = qword_27CBA0DA0;
  if (!qword_27CBA0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DA0);
  }

  return result;
}

uint64_t sub_217B989A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6974616572436461 && a2 == 0xEE00617461446576 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t sub_217B98D58(uint64_t a1)
{
  v2 = v1;
  v36 = sub_217D8847C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_217B995B8(0);
  result = sub_217D899DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_217A4AC00(&qword_2811C8470, MEMORY[0x277CEAD88]);
      result = sub_217D894BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void *sub_217B99094()
{
  v1 = v0;
  v2 = sub_217D8847C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B995B8(0);
  v6 = *v0;
  v7 = sub_217D899CC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_217B992BC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_217D8847C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_217B995B8(0);
  v7 = sub_217D899DC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_217A4AC00(&qword_2811C8470, MEMORY[0x277CEAD88]);
      result = sub_217D894BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void sub_217B995B8(uint64_t a1)
{
  if (!qword_27CBA0DA8)
  {
    sub_217D8847C();
    sub_217A4AC00(&qword_2811C8470, MEMORY[0x277CEAD88]);
    v1 = sub_217D899EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA0DA8);
    }
  }
}

uint64_t sub_217B99700()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA0DB0);
  __swift_project_value_buffer(v0, qword_27CBA0DB0);
  return sub_217D8866C();
}

uint64_t EmailSignupEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EmailSignupEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 24);
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B999F4()
{
  result = qword_2811BF298;
  if (!qword_2811BF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF298);
  }

  return result;
}

unint64_t sub_217B99A48()
{
  result = qword_2811BF2A0;
  if (!qword_2811BF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2A0);
  }

  return result;
}

uint64_t EmailSignupEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 24);
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.newsletterSubscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 28);
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394, &type metadata for NewsletterSubscriptionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EmailSignupEvent.newsletterSubscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 28);
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394, &type metadata for NewsletterSubscriptionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 32);
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B99DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t EmailSignupEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EmailSignupEvent(0) + 32);
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EmailSignupEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EmailSignupEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394, &type metadata for NewsletterSubscriptionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_217B9A1E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EmailSignupEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EmailSignupEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t EmailSignupEvent.Model.newsletterSubscriptionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EmailSignupEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t EmailSignupEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EmailSignupEvent.Model(0) + 32));
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

__n128 EmailSignupEvent.Model.init(eventData:timedData:userActionData:newsletterSubscriptionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *a4;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for EmailSignupEvent.Model(0);
  v14 = v13[5];
  v15 = sub_217D889CC();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  *(a6 + v13[6]) = v10;
  *(a6 + v13[7]) = v11;
  v16 = a6 + v13[8];
  v17 = *(a5 + 16);
  *v16 = *a5;
  *(v16 + 16) = v17;
  result = *(a5 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a5 + 48);
  return result;
}

uint64_t sub_217B9A448()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6974634172657375;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000021;
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

uint64_t sub_217B9A4F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217B9B598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B9A51C(uint64_t a1)
{
  v2 = sub_217B9A8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B9A558(uint64_t a1)
{
  v2 = sub_217B9A8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailSignupEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B9AE98(0, &qword_27CBA0DC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9A8D8();
  sub_217D89E7C();
  LOBYTE(v22[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for EmailSignupEvent.Model(0);
    LOBYTE(v22[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    LOBYTE(v22[0]) = *(v3 + v10[6]);
    LOBYTE(v18) = 2;
    sub_217B99A48();
    sub_217D89CAC();
    v26 = *(v3 + v10[7]);
    v25 = 3;
    sub_217B2B394();
    sub_217D89CAC();
    v11 = (v3 + v10[8]);
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
    v24 = 4;
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

unint64_t sub_217B9A8D8()
{
  result = qword_2811C53C8;
  if (!qword_2811C53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53C8);
  }

  return result;
}

uint64_t EmailSignupEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_217D889CC();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B9AE98(0, &qword_2811BCA80, MEMORY[0x277D844C8]);
  v32 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for EmailSignupEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9A8D8();
  v31 = v10;
  v14 = v33;
  sub_217D89E5C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v33 = a1;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  LOBYTE(v34) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v19 = *(v16 + 32);
  v20 = v30;
  v30 = v6;
  v19(v13, v20);
  LOBYTE(v34) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v17 + 32))(&v13[v11[5]], v15, v18);
  v38 = 2;
  sub_217B999F4();
  sub_217D89BCC();
  v21 = v29;
  v13[v11[6]] = v34;
  v38 = 3;
  sub_217B2B33C();
  sub_217D89BCC();
  v13[v11[7]] = v34;
  v38 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v21 + 8))(v31, v32);
  v22 = &v13[v11[8]];
  v23 = v35;
  *v22 = v34;
  *(v22 + 1) = v23;
  *(v22 + 2) = v36;
  v22[48] = v37;
  sub_217B9AEFC(v13, v25);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_217B9AF60(v13);
}

void sub_217B9AE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B9A8D8();
    v7 = a3(a1, &type metadata for EmailSignupEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B9AEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailSignupEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B9AF60(uint64_t a1)
{
  v2 = type metadata accessor for EmailSignupEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B9B094@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B99DFC(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B99DFC(0, &qword_2811C8568, sub_217B2B33C, sub_217B2B394, &type metadata for NewsletterSubscriptionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B99DFC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217B9B2E4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217B99DFC(319, &qword_2811C8580, sub_217B999F4, sub_217B99A48, &type metadata for EmailSignupUserActionData);
      if (v3 <= 0x3F)
      {
        sub_217B99DFC(319, &qword_2811C8568, sub_217B2B33C, sub_217B2B394, &type metadata for NewsletterSubscriptionData);
        if (v4 <= 0x3F)
        {
          sub_217B99DFC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B9B494()
{
  result = qword_27CBA0DD0;
  if (!qword_27CBA0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DD0);
  }

  return result;
}

unint64_t sub_217B9B4EC()
{
  result = qword_2811C53B8;
  if (!qword_2811C53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53B8);
  }

  return result;
}

unint64_t sub_217B9B544()
{
  result = qword_2811C53C0;
  if (!qword_2811C53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C53C0);
  }

  return result;
}

uint64_t sub_217B9B598(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCEBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

NewsAnalytics::DevicePlatform_optional __swiftcall DevicePlatform.init(rawValue:)(Swift::String rawValue)
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

uint64_t DevicePlatform.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x534F64615069;
  if (*v0 != 2)
  {
    v2 = 0x534F63616DLL;
  }

  if (*v0)
  {
    v1 = 5459817;
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

unint64_t sub_217B9B83C()
{
  result = qword_27CBA0DD8;
  if (!qword_27CBA0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DD8);
  }

  return result;
}

uint64_t sub_217B9B890()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B9B944(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217B9B9E4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B9BBD8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C3FD0);
  __swift_project_value_buffer(v0, qword_2811C3FD0);
  return sub_217D8866C();
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.subscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9C22C()
{
  result = qword_2811C4F38;
  if (!qword_2811C4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F38);
  }

  return result;
}

unint64_t sub_217B9C280()
{
  result = qword_2811C4F40;
  if (!qword_2811C4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F40);
  }

  return result;
}

uint64_t AppSessionEndEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.notificationSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.notificationSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.autoSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.autoSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8, &type metadata for UserEventStorageData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9C994()
{
  result = qword_2811C1B60;
  if (!qword_2811C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B60);
  }

  return result;
}

unint64_t sub_217B9C9E8()
{
  result = qword_2811C1B68;
  if (!qword_2811C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B68);
  }

  return result;
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8, &type metadata for UserEventStorageData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.subscribedSportsListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 52);
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.subscribedSportsListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 52);
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.tabiData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 56);
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0, &type metadata for TabiData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9CD9C()
{
  result = qword_2811BD290;
  if (!qword_2811BD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD290);
  }

  return result;
}

unint64_t sub_217B9CDF0()
{
  result = qword_2811BD298;
  if (!qword_2811BD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD298);
  }

  return result;
}

uint64_t AppSessionEndEvent.tabiData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 56);
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0, &type metadata for TabiData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 60);
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048, &type metadata for UserEmbeddingData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9CFF4()
{
  result = qword_2811C42B0;
  if (!qword_2811C42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42B0);
  }

  return result;
}

unint64_t sub_217B9D048()
{
  result = qword_2811C42B8;
  if (!qword_2811C42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42B8);
  }

  return result;
}

uint64_t AppSessionEndEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 60);
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048, &type metadata for UserEmbeddingData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.liveActivityCountData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 64);
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994, &type metadata for LiveActivityCountData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.liveActivityCountData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 64);
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994, &type metadata for LiveActivityCountData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.applicationStateHistoryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 68);
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450, &type metadata for ApplicationStateHistoryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9D3FC()
{
  result = qword_2811BEDF8;
  if (!qword_2811BEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDF8);
  }

  return result;
}

unint64_t sub_217B9D450()
{
  result = qword_2811BEE00;
  if (!qword_2811BEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE00);
  }

  return result;
}

uint64_t AppSessionEndEvent.applicationStateHistoryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 68);
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450, &type metadata for ApplicationStateHistoryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.crashData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 72);
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8, &type metadata for CrashData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B9D654()
{
  result = qword_27CBA0DE8;
  if (!qword_27CBA0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DE8);
  }

  return result;
}

unint64_t sub_217B9D6A8()
{
  result = qword_27CBA0DF0;
  if (!qword_27CBA0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA0DF0);
  }

  return result;
}

uint64_t AppSessionEndEvent.crashData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 72);
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8, &type metadata for CrashData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8, &type metadata for UserEventStorageData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0, &type metadata for TabiData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048, &type metadata for UserEmbeddingData);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994, &type metadata for LiveActivityCountData);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450, &type metadata for ApplicationStateHistoryData);
  (*(*(v31 - 8) + 104))(a1 + v30, v12, v31);
  v32 = v4[18];
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8, &type metadata for CrashData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v12, v33);
}

uint64_t sub_217B9DF30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AppSessionEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 24));
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

uint64_t AppSessionEndEvent.Model.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 6);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217B9E08C(&v9, v8);
}

uint64_t AppSessionEndEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 32));
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
  return sub_217B9E150(v11, &v10);
}

uint64_t sub_217B9E150(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811C4F30, &type metadata for NotificationData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSessionEndEvent.Model.notificationSettingsData.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 36));
  *a1 = v5;
  return sub_217A55A60(&v5, &v4);
}

uint64_t AppSessionEndEvent.Model.autoSubscribedData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AppSessionEndEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

void *AppSessionEndEvent.Model.userEventStorageData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 48));

  return memcpy(a1, v3, 0x144uLL);
}

uint64_t AppSessionEndEvent.Model.subscribedSportsListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 52));
}

uint64_t AppSessionEndEvent.Model.tabiData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 56));
  v4 = v3[6];
  v5 = v3[4];
  v18 = v3[5];
  v19 = v4;
  v6 = v3[4];
  v8 = v3[2];
  v16 = v3[3];
  v7 = v16;
  v17 = v6;
  v9 = v3[1];
  v15[0] = *v3;
  v10 = v3[2];
  v11 = *v3;
  v15[1] = v3[1];
  v15[2] = v10;
  v12 = v3[6];
  *(a1 + 80) = v18;
  *(a1 + 96) = v12;
  *(a1 + 48) = v7;
  *(a1 + 64) = v5;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  v20 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *a1 = v11;
  return sub_217B9E3A4(v15, v14);
}

uint64_t AppSessionEndEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 60));
}

uint64_t AppSessionEndEvent.Model.liveActivityCountData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AppSessionEndEvent.Model.applicationStateHistoryData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t AppSessionEndEvent.Model.crashData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  *(a1 + 2) = *(v4 + 2);
  *a1 = v5;
  return result;
}

__n128 AppSessionEndEvent.Model.init(eventData:timedData:userBundleSubscriptionContextData:subscriptionData:notificationData:notificationSettingsData:autoSubscribedData:viewEndData:userEventStorageData:subscribedSportsListData:tabiData:userEmbeddingData:liveActivityCountData:applicationStateHistoryData:crashData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, int *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, const void *a10, uint64_t *a11, uint64_t a12, uint64_t *a13, int *a14, __int16 *a15, __int16 *a16)
{
  v22 = *a7;
  v23 = *a8;
  v43 = *a11;
  v45 = *a13;
  v46 = *(a14 + 4);
  v47 = *a14;
  v50 = *a16;
  v48 = *a15;
  v49 = *(a16 + 2);
  v24 = sub_217D8899C();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for AppSessionEndEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = *(a3 + 48);
  v30 = a9 + v25[7];
  v31 = *(a4 + 16);
  *v30 = *a4;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a4 + 32);
  *(v30 + 48) = *(a4 + 48);
  v32 = (a9 + v25[8]);
  v33 = a5[1];
  *v32 = *a5;
  v32[1] = v33;
  v34 = a5[5];
  v32[4] = a5[4];
  v32[5] = v34;
  v35 = a5[3];
  v32[2] = a5[2];
  v32[3] = v35;
  *(a9 + v25[9]) = *a6;
  *(a9 + v25[10]) = v22;
  *(a9 + v25[11]) = v23;
  memcpy((a9 + v25[12]), a10, 0x144uLL);
  *(a9 + v25[13]) = v43;
  v36 = a9 + v25[14];
  v37 = *(a12 + 80);
  *(v36 + 64) = *(a12 + 64);
  *(v36 + 80) = v37;
  *(v36 + 96) = *(a12 + 96);
  *(v36 + 112) = *(a12 + 112);
  v38 = *(a12 + 16);
  *v36 = *a12;
  *(v36 + 16) = v38;
  result = *(a12 + 32);
  v40 = *(a12 + 48);
  *(v36 + 32) = result;
  *(v36 + 48) = v40;
  *(a9 + v25[15]) = v45;
  v41 = a9 + v25[16];
  *v41 = v47;
  *(v41 + 4) = v46;
  *(a9 + v25[17]) = v48;
  v42 = a9 + v25[18];
  *(v42 + 2) = v49;
  *v42 = v50;
  return result;
}

unint64_t sub_217B9E740(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x44646E4577656976;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6174614469626174;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      v3 = 5;
      goto LABEL_13;
    case 13:
      v3 = 11;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 14:
      result = 0x7461446873617263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217B9E900@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217BA0E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217B9E928(uint64_t a1)
{
  v2 = sub_217B9F218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B9E964(uint64_t a1)
{
  v2 = sub_217B9F218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B9FF9C(0, &qword_2811BC6C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9F218();
  sub_217D89E7C();
  v54[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppSessionEndEvent.Model(0);
    v92[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v90[0] = *v11;
    v13 = *v11;
    v14 = v11[1];
    v90[1] = v12;
    v90[2] = v11[2];
    v86 = v13;
    v91 = *(v11 + 48);
    v87 = v14;
    v88 = v11[2];
    v89 = *(v11 + 48);
    v85 = 2;
    sub_217ACC004(v90, v54);
    sub_217A55B98();
    sub_217D89CAC();
    v81[0] = v86;
    v81[1] = v87;
    v81[2] = v88;
    v82 = v89;
    sub_217ACC69C(v81);
    v15 = (v3 + v10[7]);
    v16 = *v15;
    v83[1] = v15[1];
    v17 = v15[1];
    v83[2] = v15[2];
    v83[0] = *v15;
    v84 = *(v15 + 6);
    v77 = v16;
    v78 = v17;
    v79 = v15[2];
    v80 = *(v15 + 6);
    v76 = 3;
    sub_217B9E08C(v83, v54);
    sub_217A55E38();
    sub_217D89CAC();
    v69[0] = v77;
    v69[1] = v78;
    v69[2] = v79;
    v70 = v80;
    sub_217B9F26C(v69);
    v18 = (v3 + v10[8]);
    v19 = v18[3];
    v20 = v18[1];
    v72 = v18[2];
    v73 = v19;
    v21 = v18[3];
    v22 = v18[5];
    v74 = v18[4];
    v75 = v22;
    v23 = v18[1];
    v71[0] = *v18;
    v71[1] = v23;
    v65 = v72;
    v66 = v21;
    v24 = v18[5];
    v67 = v74;
    v68 = v24;
    v63 = v71[0];
    v64 = v20;
    v62 = 4;
    sub_217B9E150(v71, v54);
    sub_217B9C280();
    sub_217D89C3C();
    v60[2] = v65;
    v60[3] = v66;
    v60[4] = v67;
    v60[5] = v68;
    v60[0] = v63;
    v60[1] = v64;
    sub_217B9F2C0(v60);
    v25 = v10[9];
    v61 = *(v3 + v25);
    v59 = *(v3 + v25);
    v58 = 5;
    sub_217A55A60(&v61, v54);
    sub_217A5062C();
    sub_217D89CAC();
    v57 = v59;
    sub_217B9F32C(&v57);
    *v54 = *(v3 + v10[10]);
    LOBYTE(v44) = 6;
    sub_217A4F574();
    sub_217D89CAC();
    v56 = *(v3 + v10[11]);
    v55 = 7;
    sub_217B570C0();
    sub_217D89CAC();
    memcpy(v54, (v3 + v10[12]), sizeof(v54));
    LOBYTE(v44) = 8;
    sub_217B9C9E8();
    sub_217D89C3C();
    v53 = *(v3 + v10[13]);
    v52 = 9;
    sub_217A4FCA8();

    sub_217D89C3C();

    v26 = (v3 + v10[14]);
    v27 = v26[5];
    v28 = v26[3];
    *&v54[64] = v26[4];
    *&v54[80] = v27;
    v29 = v26[5];
    *&v54[96] = v26[6];
    v30 = v26[1];
    *v54 = *v26;
    *&v54[16] = v30;
    v31 = v26[3];
    v33 = *v26;
    v32 = v26[1];
    *&v54[32] = v26[2];
    *&v54[48] = v31;
    v48 = *&v54[64];
    v49 = v29;
    v50 = v26[6];
    v44 = v33;
    v45 = v32;
    *&v54[112] = *(v26 + 14);
    v51 = *(v26 + 14);
    v46 = *&v54[32];
    v47 = v28;
    v43 = 10;
    sub_217B9E3A4(v54, v41);
    sub_217B9CDF0();
    sub_217D89CAC();
    v41[4] = v48;
    v41[5] = v49;
    v41[6] = v50;
    v42 = v51;
    v41[0] = v44;
    v41[1] = v45;
    v41[2] = v46;
    v41[3] = v47;
    sub_217B9F380(v41);
    v40 = *(v3 + v10[15]);
    HIBYTE(v39) = 11;
    sub_217B9D048();

    sub_217D89C3C();

    v34 = (v3 + v10[16]);
    v35 = *v34;
    LOBYTE(v34) = *(v34 + 4);
    LODWORD(v40) = v35;
    BYTE4(v40) = v34;
    HIBYTE(v39) = 12;
    sub_217B1C994();
    sub_217D89C3C();
    LOWORD(v40) = *(v3 + v10[17]);
    HIBYTE(v39) = 13;
    sub_217B9D450();
    sub_217D89C3C();
    v36 = (v3 + v10[18]);
    v37 = *v36;
    BYTE2(v40) = *(v36 + 2);
    LOWORD(v40) = v37;
    HIBYTE(v39) = 14;
    sub_217B9D6A8();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217B9F218()
{
  result = qword_2811C3FC0;
  if (!qword_2811C3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3FC0);
  }

  return result;
}

uint64_t sub_217B9F2C0(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811C4F30, &type metadata for NotificationData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_217D889CC();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B9FF9C(0, &qword_2811BCA50, MEMORY[0x277D844C8]);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for AppSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B9F218();
  v48 = v9;
  v13 = v81;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v44;
  v38 = v10;
  v39 = a1;
  v81 = v12;
  LOBYTE(v61[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v15 = v45;
  sub_217D89BCC();
  (*(v43 + 32))(v81, v15, v5);
  LOBYTE(v61[0]) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v16 = v42;
  sub_217D89BCC();
  v37[1] = v5;
  v45 = 0;
  v17 = v38;
  v18 = v81;
  (*(v41 + 32))(&v81[v38[5]], v14, v16);
  v76 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v19 = &v18[v17[6]];
  v20 = v78;
  *v19 = v77;
  *(v19 + 1) = v20;
  *(v19 + 2) = v79;
  v19[48] = v80;
  v71 = 3;
  sub_217A4F460();
  sub_217D89BCC();
  v21 = &v18[v17[7]];
  v22 = v73;
  *v21 = v72;
  *(v21 + 1) = v22;
  *(v21 + 2) = v74;
  *(v21 + 6) = v75;
  v64 = 4;
  sub_217B9C22C();
  sub_217D89B5C();
  v23 = &v18[v17[8]];
  v24 = v68;
  *(v23 + 2) = v67;
  *(v23 + 3) = v24;
  v25 = v70;
  *(v23 + 4) = v69;
  *(v23 + 5) = v25;
  v26 = v66;
  *v23 = v65;
  *(v23 + 1) = v26;
  v62 = 5;
  sub_217A505D4();
  sub_217D89BCC();
  *&v18[v17[9]] = v63;
  LOBYTE(v52) = 6;
  sub_217A4F51C();
  sub_217D89BCC();
  *&v18[v17[10]] = v61[0];
  LOBYTE(v52) = 7;
  sub_217B57068();
  sub_217D89BCC();
  v18[v17[11]] = v61[0];
  v60 = 8;
  sub_217B9C994();
  sub_217D89B5C();
  memcpy(&v81[v38[12]], v61, 0x144uLL);
  LOBYTE(v50) = 9;
  sub_217A4FC50();
  sub_217D89B5C();
  *&v81[v38[13]] = v52;
  v51 = 10;
  sub_217B9CD9C();
  sub_217D89BCC();
  v27 = &v81[v38[14]];
  v28 = v57;
  *(v27 + 4) = v56;
  *(v27 + 5) = v28;
  *(v27 + 6) = v58;
  *(v27 + 14) = v59;
  v29 = v53;
  *v27 = v52;
  *(v27 + 1) = v29;
  v30 = v55;
  *(v27 + 2) = v54;
  *(v27 + 3) = v30;
  v49 = 11;
  sub_217B9CFF4();
  sub_217D89B5C();
  *&v81[v38[15]] = v50;
  v49 = 12;
  sub_217B1C93C();
  sub_217D89B5C();
  v31 = BYTE4(v50);
  v32 = &v81[v38[16]];
  *v32 = v50;
  v32[4] = v31;
  v49 = 13;
  sub_217B9D3FC();
  sub_217D89B5C();
  *&v81[v38[17]] = v50;
  v49 = 14;
  sub_217B9D654();
  sub_217D89B5C();
  (*(v46 + 8))(v48, v47);
  v33 = v50;
  v34 = v81;
  v35 = &v81[v38[18]];
  v35[2] = BYTE2(v50);
  *v35 = v33;
  sub_217BA0000(v34, v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_217BA0064(v34);
}

void sub_217B9FF9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B9F218();
    v7 = a3(a1, &type metadata for AppSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BA0000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BA0064(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BA0198@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62B70(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62B70(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A62B70(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217A62B70(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217A62B70(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217A62B70(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217A62B70(0, &qword_2811C8868, sub_217B9C994, sub_217B9C9E8, &type metadata for UserEventStorageData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217A62B70(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217A62B70(0, &qword_2811C84E0, sub_217B9CD9C, sub_217B9CDF0, &type metadata for TabiData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217A62B70(0, &qword_2811C8658, sub_217B9CFF4, sub_217B9D048, &type metadata for UserEmbeddingData);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217A62B70(0, &qword_2811C85B0, sub_217B1C93C, sub_217B1C994, &type metadata for LiveActivityCountData);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217A62B70(0, &qword_2811C8548, sub_217B9D3FC, sub_217B9D450, &type metadata for ApplicationStateHistoryData);
  (*(*(v32 - 8) + 104))(a2 + v31, v13, v32);
  v33 = a1[18];
  sub_217A62B70(0, &qword_27CBA0DE0, sub_217B9D654, sub_217B9D6A8, &type metadata for CrashData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v13, v34);
}