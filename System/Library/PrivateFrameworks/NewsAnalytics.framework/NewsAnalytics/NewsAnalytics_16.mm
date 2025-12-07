void sub_217C1BF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1B7A0();
    v7 = a3(a1, &type metadata for ArticleEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C1BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C1C034(uint64_t a1)
{
  v2 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C1C168@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C1A624(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C1A624(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C1A624(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C1A624(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217C1A624(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217C1A624(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217C1A624(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v15, v20);
}

void sub_217C1C564(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C1A624(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217C1A624(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217C1A624(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217C1A624(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217C1A624(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_217C1A624(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
              if (v7 <= 0x3F)
              {
                sub_217C1A624(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
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

void sub_217C1C828(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217C1C94C()
{
  result = qword_27CBA2280;
  if (!qword_27CBA2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2280);
  }

  return result;
}

unint64_t sub_217C1C9A4()
{
  result = qword_2811C0970;
  if (!qword_2811C0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0970);
  }

  return result;
}

unint64_t sub_217C1C9FC()
{
  result = qword_2811C0978;
  if (!qword_2811C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0978);
  }

  return result;
}

uint64_t sub_217C1CA50(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t TrackData.init(trackDuration:trackVariant:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_217C1CD88()
{
  if (*v0)
  {
    return 0x7261566B63617274;
  }

  else
  {
    return 0x7275446B63617274;
  }
}

uint64_t sub_217C1CDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275446B63617274 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261566B63617274 && a2 == 0xEC000000746E6169)
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

uint64_t sub_217C1CEC0(uint64_t a1)
{
  v2 = sub_217C1D0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C1CEFC(uint64_t a1)
{
  v2 = sub_217C1D0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackData.encode(to:)(void *a1)
{
  sub_217C1D344(0, &qword_27CBA2288, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1D0D0();
  sub_217D89E7C();
  v14 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_217C1D124();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C1D0D0()
{
  result = qword_27CBA2290;
  if (!qword_27CBA2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2290);
  }

  return result;
}

unint64_t sub_217C1D124()
{
  result = qword_27CBA2298;
  if (!qword_27CBA2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2298);
  }

  return result;
}

uint64_t TrackData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C1D344(0, &qword_27CBA22A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C1D0D0();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_217D89BDC();
    v14 = 1;
    sub_217C1D3A8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C1D344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C1D0D0();
    v7 = a3(a1, &type metadata for TrackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C1D3A8()
{
  result = qword_27CBA22A8;
  if (!qword_27CBA22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22A8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_217C1D4F4()
{
  result = qword_27CBA22B0;
  if (!qword_27CBA22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22B0);
  }

  return result;
}

unint64_t sub_217C1D54C()
{
  result = qword_27CBA22B8;
  if (!qword_27CBA22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22B8);
  }

  return result;
}

unint64_t sub_217C1D5A4()
{
  result = qword_27CBA22C0;
  if (!qword_27CBA22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA22C0);
  }

  return result;
}

unint64_t sub_217C1D5F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
LABEL_8:
      sub_217D899FC();

      v3 = 0xD000000000000020;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a2 == 2)
  {
LABEL_6:
    sub_217D899FC();

    v3 = 0xD000000000000021;
    goto LABEL_9;
  }

  if (a2 == 3)
  {
    goto LABEL_8;
  }

  sub_217D899FC();

  v3 = 0xD000000000000015;
LABEL_9:
  v6 = v3;
  v4 = MEMORY[0x21CEACD70](a1, MEMORY[0x277D837D0]);
  MEMORY[0x21CEACC70](v4);

  return v6;
}

void *sub_217C1D768()
{
  v1 = v0;
  v2 = sub_217D889FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v0[3] = [objc_opt_self() defaultStore];
  v0[4] = 1937204590;
  v0[5] = 0xE400000000000000;
  v0[6] = 0x706F742D7377656ELL;
  v0[7] = 0xEB00000000736369;
  sub_217D88A3C();
  swift_allocObject();
  v0[2] = sub_217D88A2C();
  *v5 = sub_217BC5340;
  v5[1] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D6C9B0], v2);
  sub_217D88A0C();
  v6 = v0[3];
  if (v6)
  {
    v7 = v6;

    v8 = sub_217D8951C();

    [v7 setClientIdentifier_];
  }

  return v1;
}

void PortraitEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v218 = type metadata accessor for ArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v218);
  v217 = &v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640(0);
  v224 = v5;
  v219 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v223 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for HeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v221);
  v220 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BBF45C(0);
  v229 = v8;
  v222 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v228 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for UnfollowTagEvent.Model(0);
  MEMORY[0x28223BE20](v226);
  v225 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FB0C(0);
  v234 = v11;
  v227 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v233 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for FollowTagEvent.Model(0);
  MEMORY[0x28223BE20](v231);
  v230 = &v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FBA0(0);
  v239 = v14;
  v232 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v238 = &v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for UnblockTagEvent.Model(0);
  MEMORY[0x28223BE20](v236);
  v235 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FC34(0);
  v244 = v17;
  v237 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v243 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for BlockTagEvent.Model(0);
  MEMORY[0x28223BE20](v241);
  v240 = &v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FCC8(0);
  v249 = v20;
  v242 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v248 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for ArticleSaveEvent.Model(0);
  MEMORY[0x28223BE20](v246);
  v245 = &v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FD5C(0);
  v254 = v23;
  v247 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v253 = &v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ArticleShareEvent.Model(0);
  MEMORY[0x28223BE20](v251);
  v250 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FDF0(0);
  v259 = v26;
  v252 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v258 = &v212 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for ArticleDislikeEvent.Model(0);
  MEMORY[0x28223BE20](v255);
  v256 = &v212 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FE84(0);
  *&v262 = v29;
  v257 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v261 = &v212 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ArticleLikeEvent.Model(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v212 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C1FF18(0);
  v35 = v34;
  v260 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v212 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_217D881AC();
  v263 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v212 - v39;
  v41 = a1;
  v42 = sub_217D8816C();
  v43 = sub_217D887BC();
  v264 = 0;
  v53 = v33;
  v214 = v43;
  v215 = v54;

  v55 = v263;
  v56 = *(v263 + 16);
  v216 = v41;
  v56(v40, v41, v38);
  v212 = v37;
  v57 = swift_dynamicCast();
  v58 = v38;
  v213 = v40;
  if (!v57)
  {
    if (swift_dynamicCast())
    {
      v75 = v38;
      v76 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v77 = qword_2811C7B48;
      sub_217A67100(0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_217D8D8F0;
      v79 = sub_217D8818C();
      v81 = v80;
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_217A62448();
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      sub_217D88E6C(v76, &dword_217A45000, v77, "Processing %{public}@ for feedback submission", 45, 2, v78);

      sub_217C2021C(&qword_27CBA22F8, type metadata accessor for ArticleDislikeEvent.Model, &protocol conformance descriptor for ArticleDislikeEvent.Model);
      v82 = v255;
      v83 = v256;
      v84 = v214;
      v85 = v215;
      v86 = v264;
      sub_217D88A1C();
      v87 = v257;
      if (!v86)
      {
        v115 = *(v83 + *(v82 + 20) + 120);
        v116 = v213;
        if (*(v115 + 16))
        {
          sub_217C1FFAC(v115, 1);
        }

        sub_217AE010C(v214, v215);
        sub_217C20264(v83, type metadata accessor for ArticleDislikeEvent.Model);
        (*(v87 + 8))(v261, v262);
        (*(v55 + 8))(v116, v75);
        return;
      }

      v88 = v86;
      sub_217AE010C(v84, v85);
      (*(v87 + 8))(v261, v262);
      (*(v55 + 8))(v213, v75);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      v89 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v90 = qword_2811C7B48;
      sub_217A67100(0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_217D8D8F0;
      *&v262 = v38;
      v92 = sub_217D8818C();
      v94 = v93;
      *(v91 + 56) = MEMORY[0x277D837D0];
      *(v91 + 64) = sub_217A62448();
      *(v91 + 32) = v92;
      *(v91 + 40) = v94;
      sub_217D88E6C(v89, &dword_217A45000, v90, "Processing %{public}@ for feedback submission", 45, 2, v91);

      sub_217C2021C(&qword_27CBA22F0, type metadata accessor for ArticleShareEvent.Model, &protocol conformance descriptor for ArticleShareEvent.Model);
      v95 = v250;
      v96 = v251;
      v97 = v214;
      v98 = v215;
      v99 = v264;
      sub_217D88A1C();
      v100 = v252;
      if (!v99)
      {
        v129 = v262;
        v130 = *(v95 + *(v96 + 20) + 120);
        v131 = v213;
        if (*(v130 + 16))
        {
          sub_217C1FFAC(v130, 0);
        }

        sub_217AE010C(v214, v215);
        sub_217C20264(v95, type metadata accessor for ArticleShareEvent.Model);
        (*(v100 + 8))(v258, v259);
        (*(v55 + 8))(v131, v129);
        return;
      }

      v88 = v99;
      sub_217AE010C(v97, v98);
      (*(v100 + 8))(v258, v259);
      (*(v55 + 8))(v213, v262);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      v103 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v104 = qword_2811C7B48;
      sub_217A67100(0);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_217D8D8F0;
      v106 = v38;
      v107 = sub_217D8818C();
      v109 = v108;
      *(v105 + 56) = MEMORY[0x277D837D0];
      *(v105 + 64) = sub_217A62448();
      *(v105 + 32) = v107;
      *(v105 + 40) = v109;
      sub_217D88E6C(v103, &dword_217A45000, v104, "Processing %{public}@ for feedback submission", 45, 2, v105);

      sub_217C2021C(&qword_27CBA22E8, type metadata accessor for ArticleSaveEvent.Model, &protocol conformance descriptor for ArticleSaveEvent.Model);
      v110 = v245;
      v111 = v246;
      v112 = v214;
      v113 = v215;
      v114 = v264;
      sub_217D88A1C();
      if (!v114)
      {
        v143 = *(v110 + *(v111 + 20) + 120);
        v144 = v213;
        if (*(v143 + 16))
        {
          sub_217C1FFAC(v143, 0);
        }

        sub_217AE010C(v214, v215);
        sub_217C20264(v110, type metadata accessor for ArticleSaveEvent.Model);
        (*(v247 + 8))(v253, v254);
        (*(v55 + 8))(v144, v106);
        return;
      }

      v88 = v114;
      sub_217AE010C(v112, v113);
      (*(v247 + 8))(v253, v254);
      (*(v55 + 8))(v213, v106);
      goto LABEL_29;
    }

    if (swift_dynamicCast())
    {
      v117 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v118 = qword_2811C7B48;
      sub_217A67100(0);
      v119 = swift_allocObject();
      v262 = xmmword_217D8D8F0;
      *(v119 + 16) = xmmword_217D8D8F0;
      v120 = v38;
      v121 = sub_217D8818C();
      v123 = v122;
      *(v119 + 56) = MEMORY[0x277D837D0];
      *(v119 + 64) = sub_217A62448();
      *(v119 + 32) = v121;
      *(v119 + 40) = v123;
      sub_217D88E6C(v117, &dword_217A45000, v118, "Processing %{public}@ for feedback submission", 45, 2, v119);

      sub_217C2021C(&qword_27CBA22E0, type metadata accessor for BlockTagEvent.Model, &protocol conformance descriptor for BlockTagEvent.Model);
      v124 = v240;
      v125 = v241;
      v126 = v214;
      v127 = v215;
      v128 = v264;
      sub_217D88A1C();
      if (v128)
      {
        v71 = v128;
        sub_217AE010C(v126, v127);
        (*(v242 + 8))(v248, v249);
LABEL_54:
        (*(v263 + 8))(v213, v120);
        goto LABEL_10;
      }

      sub_217C201CC();
      v156 = v124;
      v157 = swift_allocObject();
      *(v157 + 16) = v262;
      v158 = (v156 + *(v125 + 24));
      v159 = v158[1];
      *(v157 + 32) = *v158;
      *(v157 + 40) = v159;

      sub_217C1FFAC(v157, 1);
      sub_217AE010C(v126, v127);

      sub_217C20264(v156, type metadata accessor for BlockTagEvent.Model);
      (*(v242 + 8))(v248, v249);
    }

    else if (swift_dynamicCast())
    {
      v132 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v133 = qword_2811C7B48;
      sub_217A67100(0);
      v134 = swift_allocObject();
      v262 = xmmword_217D8D8F0;
      *(v134 + 16) = xmmword_217D8D8F0;
      v120 = v38;
      v135 = sub_217D8818C();
      v137 = v136;
      *(v134 + 56) = MEMORY[0x277D837D0];
      *(v134 + 64) = sub_217A62448();
      *(v134 + 32) = v135;
      *(v134 + 40) = v137;
      sub_217D88E6C(v132, &dword_217A45000, v133, "Processing %{public}@ for feedback submission", 45, 2, v134);

      sub_217C2021C(&qword_27CBA22D8, type metadata accessor for UnblockTagEvent.Model, &protocol conformance descriptor for UnblockTagEvent.Model);
      v138 = v235;
      v139 = v236;
      v140 = v214;
      v141 = v215;
      v142 = v264;
      sub_217D88A1C();
      if (v142)
      {
        v71 = v142;
        sub_217AE010C(v140, v141);
        (*(v237 + 8))(v243, v244);
        goto LABEL_54;
      }

      sub_217C201CC();
      v173 = v138;
      v174 = swift_allocObject();
      *(v174 + 16) = v262;
      v175 = (v173 + *(v139 + 24));
      v176 = v175[1];
      *(v174 + 32) = *v175;
      *(v174 + 40) = v176;

      sub_217C1FFAC(v174, 0);
      sub_217AE010C(v140, v141);

      sub_217C20264(v173, type metadata accessor for UnblockTagEvent.Model);
      (*(v237 + 8))(v243, v244);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v160 = v55;
          v161 = sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          v162 = qword_2811C7B48;
          sub_217A67100(0);
          v163 = swift_allocObject();
          v262 = xmmword_217D8D8F0;
          *(v163 + 16) = xmmword_217D8D8F0;
          v164 = v38;
          v165 = sub_217D8818C();
          v167 = v166;
          *(v163 + 56) = MEMORY[0x277D837D0];
          *(v163 + 64) = sub_217A62448();
          *(v163 + 32) = v165;
          *(v163 + 40) = v167;
          sub_217D88E6C(v161, &dword_217A45000, v162, "Processing %{public}@ for feedback submission", 45, 2, v163);

          sub_217C2021C(&qword_27CBA22C8, type metadata accessor for UnfollowTagEvent.Model, &protocol conformance descriptor for UnfollowTagEvent.Model);
          v168 = v225;
          v169 = v226;
          v170 = v214;
          v171 = v215;
          v172 = v264;
          sub_217D88A1C();
          if (!v172)
          {
            sub_217C201CC();
            v204 = v168;
            v205 = swift_allocObject();
            *(v205 + 16) = v262;
            v206 = (v204 + *(v169 + 20));
            v207 = v206[1];
            *(v205 + 32) = *v206;
            *(v205 + 40) = v207;

            sub_217C1FFAC(v205, 1);
            sub_217AE010C(v170, v171);

            sub_217C20264(v204, type metadata accessor for UnfollowTagEvent.Model);
            (*(v227 + 8))(v233, v234);
            (*(v55 + 8))(v213, v164);
            return;
          }

          v71 = v172;
          sub_217AE010C(v170, v171);
          (*(v227 + 8))(v233, v234);
          (*(v160 + 8))(v213, v164);
          goto LABEL_10;
        }

        if (swift_dynamicCast())
        {
          v177 = sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          v178 = qword_2811C7B48;
          sub_217A67100(0);
          v179 = swift_allocObject();
          *(v179 + 16) = xmmword_217D8D8F0;
          v180 = v38;
          v181 = sub_217D8818C();
          v183 = v182;
          *(v179 + 56) = MEMORY[0x277D837D0];
          *(v179 + 64) = sub_217A62448();
          *(v179 + 32) = v181;
          *(v179 + 40) = v183;
          sub_217D88E6C(v177, &dword_217A45000, v178, "Processing %{public}@ for feedback submission", 45, 2, v179);

          sub_217C2021C(&qword_2811C11B8, type metadata accessor for HeadlineExposureEvent.Model, &protocol conformance descriptor for HeadlineExposureEvent.Model);
          v184 = v220;
          v185 = v221;
          v186 = v214;
          v187 = v215;
          v188 = v264;
          sub_217D88A1C();
          if (!v188)
          {
            v208 = *(v184 + *(v185 + 28) + 120);
            v209 = v213;
            if (*(v208 + 16))
            {
              sub_217C1FFAC(v208, 4);
            }

            sub_217AE010C(v214, v215);
            sub_217C20264(v184, type metadata accessor for HeadlineExposureEvent.Model);
            (*(v222 + 8))(v228, v229);
            (*(v55 + 8))(v209, v180);
            return;
          }

          v88 = v188;
          sub_217AE010C(v186, v187);
          (*(v222 + 8))(v228, v229);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_217AE010C(v214, v215);
            (*(v55 + 8))(v40, v38);
            return;
          }

          v193 = sub_217D897CC();
          if (qword_2811C7B40 != -1)
          {
            swift_once();
          }

          v194 = qword_2811C7B48;
          sub_217A67100(0);
          v195 = swift_allocObject();
          *(v195 + 16) = xmmword_217D8D8F0;
          v180 = v38;
          v196 = sub_217D8818C();
          v198 = v197;
          *(v195 + 56) = MEMORY[0x277D837D0];
          *(v195 + 64) = sub_217A62448();
          *(v195 + 32) = v196;
          *(v195 + 40) = v198;
          sub_217D88E6C(v193, &dword_217A45000, v194, "Processing %{public}@ for feedback submission", 45, 2, v195);

          sub_217C2021C(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model, &protocol conformance descriptor for ArticleViewEvent.Model);
          v199 = v217;
          v200 = v218;
          v201 = v214;
          v202 = v215;
          v203 = v264;
          sub_217D88A1C();
          if (!v203)
          {
            v210 = *(v199 + *(v200 + 28) + 120);
            v211 = v213;
            if (*(v210 + 16))
            {
              sub_217C1FFAC(v210, 2);
            }

            sub_217AE010C(v214, v215);
            sub_217C20264(v199, type metadata accessor for ArticleViewEvent.Model);
            (*(v219 + 8))(v223, v224);
            (*(v55 + 8))(v211, v180);
            return;
          }

          v88 = v203;
          sub_217AE010C(v201, v202);
          (*(v219 + 8))(v223, v224);
        }

        (*(v55 + 8))(v213, v180);
LABEL_29:
        v74 = MEMORY[0x277D837D0];
        v71 = v88;
        goto LABEL_2;
      }

      v145 = sub_217D897CC();
      if (qword_2811C7B40 != -1)
      {
        swift_once();
      }

      v146 = qword_2811C7B48;
      sub_217A67100(0);
      v147 = swift_allocObject();
      v262 = xmmword_217D8D8F0;
      *(v147 + 16) = xmmword_217D8D8F0;
      v120 = v38;
      v148 = sub_217D8818C();
      v150 = v149;
      *(v147 + 56) = MEMORY[0x277D837D0];
      *(v147 + 64) = sub_217A62448();
      *(v147 + 32) = v148;
      *(v147 + 40) = v150;
      sub_217D88E6C(v145, &dword_217A45000, v146, "Processing %{public}@ for feedback submission", 45, 2, v147);

      sub_217C2021C(&qword_27CBA22D0, type metadata accessor for FollowTagEvent.Model, &protocol conformance descriptor for FollowTagEvent.Model);
      v151 = v230;
      v152 = v231;
      v153 = v214;
      v154 = v215;
      v155 = v264;
      sub_217D88A1C();
      if (v155)
      {
        v71 = v155;
        sub_217AE010C(v153, v154);
        (*(v232 + 8))(v238, v239);
        goto LABEL_54;
      }

      sub_217C201CC();
      v189 = v151;
      v190 = swift_allocObject();
      *(v190 + 16) = v262;
      v191 = (v189 + *(v152 + 20));
      v192 = v191[1];
      *(v190 + 32) = *v191;
      *(v190 + 40) = v192;

      sub_217C1FFAC(v190, 0);
      sub_217AE010C(v153, v154);

      sub_217C20264(v189, type metadata accessor for FollowTagEvent.Model);
      (*(v232 + 8))(v238, v239);
    }

    (*(v263 + 8))(v213, v120);
    return;
  }

  *&v262 = v35;
  v59 = sub_217D897CC();
  if (qword_2811C7B40 != -1)
  {
    swift_once();
  }

  v60 = qword_2811C7B48;
  sub_217A67100(0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_217D8D8F0;
  v62 = v58;
  v63 = sub_217D8818C();
  v65 = v64;
  *(v61 + 56) = MEMORY[0x277D837D0];
  *(v61 + 64) = sub_217A62448();
  *(v61 + 32) = v63;
  *(v61 + 40) = v65;
  sub_217D88E6C(v59, &dword_217A45000, v60, "Processing %{public}@ for feedback submission", 45, 2, v61);

  sub_217C2021C(&qword_27CBA2300, type metadata accessor for ArticleLikeEvent.Model, &protocol conformance descriptor for ArticleLikeEvent.Model);
  v66 = v53;
  v67 = v31;
  v68 = v214;
  v69 = v215;
  v70 = v264;
  sub_217D88A1C();
  v71 = v70;
  v72 = v260;
  v73 = v212;
  if (v71)
  {
    sub_217AE010C(v68, v69);
    (*(v72 + 8))(v73, v262);
    (*(v263 + 8))(v213, v62);
LABEL_10:
    v74 = MEMORY[0x277D837D0];
LABEL_2:
    v44 = sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    v45 = qword_2811C7B48;
    sub_217A67100(0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217D9CB60;
    v47 = sub_217D8818C();
    v49 = v48;
    *(v46 + 56) = v74;
    v50 = sub_217A62448();
    *(v46 + 64) = v50;
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    swift_getErrorValue();
    v51 = sub_217D89DBC();
    *(v46 + 96) = v74;
    *(v46 + 104) = v50;
    *(v46 + 72) = v51;
    *(v46 + 80) = v52;
    sub_217D88E6C(v44, &dword_217A45000, v45, "Error processing %{public}@ for feedback submission: %{public}@", 63, 2, v46);

    return;
  }

  v101 = *(v66 + *(v67 + 20) + 120);
  v102 = v263;
  if (*(v101 + 16))
  {
    sub_217C1FFAC(v101, 0);
  }

  sub_217AE010C(v214, v215);
  sub_217C20264(v66, type metadata accessor for ArticleLikeEvent.Model);
  (*(v72 + 8))(v73, v262);
  (*(v102 + 8))(v213, v62);
}

void sub_217C1FB0C(uint64_t a1)
{
  if (!qword_2811C88E0)
  {
    type metadata accessor for UnfollowTagEvent(255);
    sub_217C2021C(qword_2811C4A30, type metadata accessor for UnfollowTagEvent, &protocol conformance descriptor for UnfollowTagEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88E0);
    }
  }
}

void sub_217C1FBA0(uint64_t a1)
{
  if (!qword_2811C8888)
  {
    type metadata accessor for FollowTagEvent(255);
    sub_217C2021C(qword_2811C6FD0, type metadata accessor for FollowTagEvent, &protocol conformance descriptor for FollowTagEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8888);
    }
  }
}

void sub_217C1FC34(uint64_t a1)
{
  if (!qword_2811C8918)
  {
    type metadata accessor for UnblockTagEvent(255);
    sub_217C2021C(qword_2811C5F18, type metadata accessor for UnblockTagEvent, &protocol conformance descriptor for UnblockTagEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8918);
    }
  }
}

void sub_217C1FCC8(uint64_t a1)
{
  if (!qword_2811C88A8)
  {
    type metadata accessor for BlockTagEvent(255);
    sub_217C2021C(qword_2811C77A0, type metadata accessor for BlockTagEvent, &protocol conformance descriptor for BlockTagEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88A8);
    }
  }
}

void sub_217C1FD5C(uint64_t a1)
{
  if (!qword_2811C8908)
  {
    type metadata accessor for ArticleSaveEvent(255);
    sub_217C2021C(qword_2811C5B00, type metadata accessor for ArticleSaveEvent, &protocol conformance descriptor for ArticleSaveEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8908);
    }
  }
}

void sub_217C1FDF0(uint64_t a1)
{
  if (!qword_2811C88D8)
  {
    type metadata accessor for ArticleShareEvent(255);
    sub_217C2021C(qword_2811C48A8, type metadata accessor for ArticleShareEvent, &protocol conformance descriptor for ArticleShareEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88D8);
    }
  }
}

void sub_217C1FE84(uint64_t a1)
{
  if (!qword_2811C88C8)
  {
    type metadata accessor for ArticleDislikeEvent(255);
    sub_217C2021C(qword_2811C2B70, type metadata accessor for ArticleDislikeEvent, &protocol conformance descriptor for ArticleDislikeEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88C8);
    }
  }
}

void sub_217C1FF18(uint64_t a1)
{
  if (!qword_2811C8910)
  {
    type metadata accessor for ArticleLikeEvent(255);
    sub_217C2021C(qword_2811C5D88, type metadata accessor for ArticleLikeEvent, &protocol conformance descriptor for ArticleLikeEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8910);
    }
  }
}

void sub_217C1FFAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = sub_217C202C4(a1, a2, v3);
  v7 = v3[3];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v4;
    v21[4] = sub_217C20764;
    v21[5] = v8;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_217C20648;
    v21[3] = &block_descriptor_1;
    v9 = _Block_copy(v21);

    v10 = v7;

    [v10 registerFeedback:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    v11 = sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    v12 = qword_2811C7B48;
    sub_217A67100(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_217D9CB60;
    v14 = sub_217C1D5F8(a1, v4);
    v16 = v15;
    v17 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v18 = sub_217A62448();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = v3[4];
    v19 = v3[5];
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 64) = v18;
    *(v13 + 72) = v20;
    *(v13 + 80) = v19;

    sub_217D88E6C(v11, &dword_217A45000, v12, "Error submitting %{public}@, nil topic store with identifier %{public}@", 71, 2, v13);
  }
}

void sub_217C201CC()
{
  if (!qword_2811BC428)
  {
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC428);
    }
  }
}

uint64_t sub_217C2021C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217C20264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_217C202C4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277D3A400]);
  v5 = sub_217D896CC();
  v6 = sub_217D8951C();
  if (a2 <= 1u)
  {
    v8 = v4;
    if (a2)
    {
      v9 = 0;
      v10 = v5;
    }

    else
    {
      v9 = v5;
      v10 = 0;
    }

    v11 = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v8 = v4;
    v9 = 0;
    v10 = 0;
    v11 = v5;
LABEL_11:
    v7 = [v8 initWithExplicitlyEngagedStrings:v9 explicitlyRejectedStrings:v10 implicitlyEngagedStrings:v11 implicitlyRejectedStrings:0 mappingId:v6];
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v7 = [v4 initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v5 mappingId:v6];
  }

  else
  {
    v7 = [v4 initWithExplicitlyEngagedStrings:0 implicitlyEngagedStrings:0 offeredStrings:v5 mappingId:v6];
  }

LABEL_12:
  v12 = v7;

  return v12;
}

uint64_t sub_217C203FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1)
  {
    v6 = sub_217D897CC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    v7 = qword_2811C7B48;
    sub_217A67100(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_217D8D8F0;
    v9 = sub_217C1D5F8(a3, a4);
    v11 = v10;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_217A62448();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_217D88E6C(v6, &dword_217A45000, v7, "Successfully submitted %{public}@", 33, 2, v8);
  }

  else
  {
    v14 = sub_217D897DC();
    if (qword_2811C7B40 != -1)
    {
      swift_once();
    }

    v15 = qword_2811C7B48;
    sub_217A67100(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_217D9CB60;
    v17 = sub_217C1D5F8(a3, a4);
    v19 = v18;
    v20 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v21 = sub_217A62448();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v22 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v23 = sub_217D89DBC();
      v22 = v24;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x21CEACC70](v23, v22);

    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0xE000000000000000;
    sub_217D88E6C(v14, &dword_217A45000, v15, "Error submitting %{public}@: %{public}@", 39, 2, v16);
  }
}

void sub_217C20648(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t PortraitEventProcessor.deinit()
{

  return v0;
}

uint64_t PortraitEventProcessor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ErrorDetails.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ErrorDetails.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorDetails.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ErrorDetails.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ErrorDetails.init(domain:code:message:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_217C208C8()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_217C20918@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C21004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C20940(uint64_t a1)
{
  v2 = sub_217C20B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2097C(uint64_t a1)
{
  v2 = sub_217C20B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorDetails.encode(to:)(void *a1)
{
  sub_217C20DF8(0, &qword_27CBA2308, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = v1[2];
  v11[1] = v1[3];
  v11[2] = v8;
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C20B68();
  sub_217D89E7C();
  v14 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v13 = 1;
    sub_217D89CCC();
    v12 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C20B68()
{
  result = qword_27CBA2310;
  if (!qword_27CBA2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2310);
  }

  return result;
}

uint64_t ErrorDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C20DF8(0, &qword_27CBA2318, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C20B68();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  v21 = sub_217D89BEC();
  v22 = 2;
  v14 = sub_217D89B2C();
  v17 = v16;
  v18 = *(v7 + 8);
  v20 = v14;
  v18(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v19;
  a2[4] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C20DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C20B68();
    v7 = a3(a1, &type metadata for ErrorDetails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C20E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t sub_217C20F00()
{
  result = qword_27CBA2320;
  if (!qword_27CBA2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2320);
  }

  return result;
}

unint64_t sub_217C20F58()
{
  result = qword_27CBA2328;
  if (!qword_27CBA2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2328);
  }

  return result;
}

unint64_t sub_217C20FB0()
{
  result = qword_27CBA2330;
  if (!qword_27CBA2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2330);
  }

  return result;
}

uint64_t sub_217C21004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

NewsAnalytics::VideoAdEngagementType_optional __swiftcall VideoAdEngagementType.init(rawValue:)(Swift::String rawValue)
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

uint64_t VideoAdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 0x6D6F436863746177;
  v4 = 1885956979;
  if (v1 != 4)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x656D75736572;
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

unint64_t sub_217C2124C()
{
  result = qword_27CBA2338;
  if (!qword_27CBA2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2338);
  }

  return result;
}

uint64_t sub_217C212A8(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217C213A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xED00006574656C70;
  v6 = 0x6D6F436863746177;
  v7 = 0xE400000000000000;
  v8 = 1885956979;
  if (v2 != 4)
  {
    v8 = 0x726F4D6E7261656CLL;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6573756170;
  if (v2 != 1)
  {
    v10 = 0x656D75736572;
    v9 = 0xE600000000000000;
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

unint64_t sub_217C2151C()
{
  result = qword_27CBA2340;
  if (!qword_27CBA2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2340);
  }

  return result;
}

uint64_t sub_217C21638()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2378);
  __swift_project_value_buffer(v0, qword_27CBA2378);
  return sub_217D8866C();
}

uint64_t ArticleUndislikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleUndislikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUndislikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C225BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleUndislikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUndislikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUndislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleUndislikeEvent(0);
  v5 = v4[5];
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v12, v23);
}

uint64_t ArticleUndislikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 20);
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

uint64_t ArticleUndislikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleUndislikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleUndislikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 28);
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

uint64_t ArticleUndislikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleUndislikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 36));
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

uint64_t ArticleUndislikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 40));
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

void ArticleUndislikeEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 44));
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

uint64_t ArticleUndislikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleUndislikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleUndislikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUndislikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 ArticleUndislikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11)
{
  v17 = *a3;
  v18 = a4[1];
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[3];
  v43 = *a4;
  v41 = a4[4];
  v45 = *a5;
  v44 = *(a5 + 2);
  v49 = a10[1];
  v50 = *a10;
  v48 = *(a10 + 1);
  v53 = *a11;
  v52 = a11[1];
  v51 = *(a11 + 8);
  v21 = sub_217D8899C();
  v46 = a8[1];
  v47 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleUndislikeEvent.Model(0);
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
  *(a9 + v22[6]) = v17;
  v28 = a9 + v22[7];
  *v28 = v43;
  *(v28 + 8) = v18;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v42;
  *(v28 + 32) = v41;
  v29 = a9 + v22[8];
  *v29 = v45;
  *(v29 + 16) = v44;
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
  result = v47;
  *v37 = v47;
  v37[1] = v46;
  v39 = a9 + v22[12];
  *v39 = v50;
  *(v39 + 1) = v49;
  *(v39 + 2) = v48;
  v40 = a9 + v22[13];
  *v40 = v53;
  *(v40 + 8) = v52;
  *(v40 + 16) = v51;
  return result;
}

unint64_t sub_217C231C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6174614477656976;
    if (a1 == 8)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000021;
    if (a1 == 5)
    {
      v7 = 0x74614470756F7267;
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
    v2 = 0x61446E6F69746361;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44656C6369747261;
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

uint64_t sub_217C23318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C24FC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C23340(uint64_t a1)
{
  v2 = sub_217C23AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2337C(uint64_t a1)
{
  v2 = sub_217C23AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleUndislikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C24458(0, &qword_27CBA2390, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C23AF8();
  sub_217D89E7C();
  v115[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v116 = v7;
    v11 = type metadata accessor for ArticleUndislikeEvent.Model(0);
    v57 = v3;
    v58 = v11;
    v12 = v3 + *(v11 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v112 = *(v12 + 80);
    v113 = v13;
    v15 = *(v12 + 96);
    *v114 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v109 = *(v12 + 32);
    v110 = v17;
    v18 = *(v12 + 48);
    v111 = *(v12 + 64);
    v19 = *(v12 + 16);
    v108[0] = *v12;
    v108[1] = v19;
    v105 = v112;
    v106 = v15;
    v107[0] = *(v12 + 112);
    v102 = v109;
    v103 = v18;
    v104 = v14;
    *&v114[15] = *(v12 + 127);
    *(v107 + 15) = *(v12 + 127);
    v100 = v108[0];
    v101 = v16;
    v99 = 1;
    sub_217AD1630(v108, &v84);
    sub_217ACF52C();
    sub_217D89CAC();
    v97[5] = v105;
    v97[6] = v106;
    *v98 = v107[0];
    *&v98[15] = *(v107 + 15);
    v97[2] = v102;
    v97[3] = v103;
    v97[4] = v104;
    v97[0] = v100;
    v97[1] = v101;
    sub_217AD2864(v97);
    v20 = v57;
    v21 = v58;
    LOBYTE(v84) = *(v57 + v58[6]);
    LOBYTE(v75) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v22 = v20 + v21[7];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *&v84 = *v22;
    *(&v84 + 1) = v23;
    LOBYTE(v85) = v24;
    BYTE1(v85) = v25;
    *(&v85 + 1) = v26;
    *&v86 = v27;
    LOBYTE(v75) = 3;
    sub_217AD084C();

    sub_217D89CAC();
    v7 = v116;

    v28 = v58;
    v29 = (v20 + v58[8]);
    v30 = v29[1];
    v31 = v29[2];
    v94 = *v29;
    v95 = v30;
    v96 = v31;
    v93 = 4;
    sub_217AD1A68(v94, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, v95, v96);
    v32 = v57;
    v33 = (v57 + v28[9]);
    v34 = v33[6];
    v35 = v33[4];
    v89 = v33[5];
    v90 = v34;
    v36 = v33[6];
    v37 = v33[8];
    v91 = v33[7];
    v92 = v37;
    v38 = v33[2];
    v39 = *v33;
    v85 = v33[1];
    v86 = v38;
    v40 = v33[2];
    v41 = v33[4];
    v87 = v33[3];
    v88 = v41;
    v42 = *v33;
    v81 = v36;
    v82 = v91;
    v83 = v33[8];
    v84 = v42;
    v77 = v40;
    v78 = v87;
    v79 = v35;
    v80 = v89;
    v75 = v39;
    v76 = v85;
    v74 = 5;
    sub_217AD87FC(&v84, v73);
    sub_217A5D3B4();
    sub_217D89C3C();
    v73[6] = v81;
    v73[7] = v82;
    v73[8] = v83;
    v73[2] = v77;
    v73[3] = v78;
    v73[4] = v79;
    v73[5] = v80;
    v73[0] = v75;
    v73[1] = v76;
    sub_217AD96E8(v73);
    v43 = v32 + v28[10];
    v44 = *(v43 + 16);
    v45 = *(v43 + 32);
    v71[0] = *v43;
    v71[1] = v44;
    v71[2] = v45;
    v72 = *(v43 + 48);
    v67 = v71[0];
    v68 = v44;
    v69 = *(v43 + 32);
    v70 = *(v43 + 48);
    v66 = 6;
    sub_217ACC004(v71, v64);
    sub_217A55B98();
    sub_217D89CAC();
    v64[0] = v67;
    v64[1] = v68;
    v64[2] = v69;
    v65 = v70;
    sub_217ACC69C(v64);
    v46 = (v32 + v28[11]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    v60 = *v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v59 = 7;
    sub_217AE39D0(v60, v47, v48, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v60, v61, v62, v63);
    v50 = (v32 + v28[12]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 1);
    LOBYTE(v60) = v51;
    BYTE1(v60) = v52;
    WORD1(v60) = v50;
    v59 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v53 = v32 + v28[13];
    v54 = *v53;
    v55 = *(v53 + 8);
    LOWORD(v53) = *(v53 + 16);
    v60 = v54;
    v61 = v55;
    LOWORD(v62) = v53;
    v59 = 9;
    sub_217A5E790();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C23AF8()
{
  result = qword_27CBA2398;
  if (!qword_27CBA2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2398);
  }

  return result;
}

void ArticleUndislikeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_217D8899C();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C24458(0, &qword_27CBA23A0, MEMORY[0x277D844C8]);
  v53 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217C23AF8();
  v54 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v82);
  }

  else
  {
    v13 = v51;
    v47 = v9;
    v48 = v11;
    LOBYTE(v73) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v14 = v52;
    sub_217D89BCC();
    v15 = v48;
    (*(v50 + 32))(v48, v14, v4);
    v64 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v46 = v4;
    v52 = 0;
    v16 = v47;
    v17 = &v15[v47[5]];
    v18 = *v72;
    *(v17 + 6) = v71;
    *(v17 + 7) = v18;
    *(v17 + 127) = *&v72[15];
    v19 = v68;
    *(v17 + 2) = v67;
    *(v17 + 3) = v19;
    v20 = v70;
    *(v17 + 4) = v69;
    *(v17 + 5) = v20;
    v21 = v66;
    *v17 = v65;
    *(v17 + 1) = v21;
    LOBYTE(v59) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v15[v16[6]] = v73;
    LOBYTE(v59) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v22 = *(&v73 + 1);
    v23 = v74;
    v24 = BYTE1(v74);
    v25 = *(&v74 + 1);
    v26 = v75;
    v27 = &v15[v16[7]];
    *v27 = v73;
    *(v27 + 1) = v22;
    v27[16] = v23;
    v27[17] = v24;
    *(v27 + 3) = v25;
    *(v27 + 4) = v26;
    LOBYTE(v59) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v28 = v74;
    v29 = &v15[v16[8]];
    *v29 = v73;
    *(v29 + 2) = v28;
    v63 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v15[v16[9]];
    v31 = v78;
    v32 = v80;
    *(v30 + 6) = v79;
    *(v30 + 7) = v32;
    *(v30 + 8) = v81;
    v33 = v76;
    *(v30 + 2) = v75;
    *(v30 + 3) = v33;
    *(v30 + 4) = v77;
    *(v30 + 5) = v31;
    v34 = v74;
    *v30 = v73;
    *(v30 + 1) = v34;
    v58 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v35 = &v15[v16[10]];
    v36 = v60;
    *v35 = v59;
    *(v35 + 1) = v36;
    *(v35 + 2) = v61;
    v35[48] = v62;
    v55 = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = v47;
    v38 = &v48[v47[11]];
    v39 = v57;
    *v38 = v56;
    *(v38 + 1) = v39;
    v55 = 8;
    sub_217ACFB38();
    sub_217D89BCC();
    v40 = BYTE1(v56);
    v41 = WORD1(v56);
    v42 = &v48[v37[12]];
    *v42 = v56;
    v42[1] = v40;
    *(v42 + 1) = v41;
    v55 = 9;
    sub_217A5E738();
    sub_217D89B5C();
    (*(v13 + 8))(v54, v53);
    v43 = v57;
    v44 = v48;
    v45 = &v48[v47[13]];
    *v45 = v56;
    *(v45 + 8) = v43;
    sub_217C244BC(v44, v49);
    __swift_destroy_boxed_opaque_existential_1(v82);
    sub_217C24520(v44);
  }
}

void sub_217C24458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C23AF8();
    v7 = a3(a1, &type metadata for ArticleUndislikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C244BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C24520(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUndislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C24654@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v13, v24);
}

void sub_217C24B48(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C225BC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217C225BC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217C225BC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217C225BC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217C225BC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217C225BC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217C225BC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_217C225BC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C225BC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
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

unint64_t sub_217C24EC0()
{
  result = qword_27CBA23A8;
  if (!qword_27CBA23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23A8);
  }

  return result;
}

unint64_t sub_217C24F18()
{
  result = qword_27CBA23B0;
  if (!qword_27CBA23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23B0);
  }

  return result;
}

unint64_t sub_217C24F70()
{
  result = qword_27CBA23B8;
  if (!qword_27CBA23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23B8);
  }

  return result;
}

uint64_t sub_217C24FC4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t ConfigurableOffersData.offerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfigurableOffersData.offerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C253CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656449726566666FLL && a2 == 0xEF7265696669746ELL)
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

uint64_t sub_217C2545C(uint64_t a1)
{
  v2 = sub_217C25620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C25498(uint64_t a1)
{
  v2 = sub_217C25620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfigurableOffersData.encode(to:)(void *a1)
{
  sub_217C257F8(0, &qword_2811BC5F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C25620()
{
  result = qword_2811C0510[0];
  if (!qword_2811C0510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C0510);
  }

  return result;
}

uint64_t ConfigurableOffersData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C257F8(0, &qword_27CBA23C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
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

void sub_217C257F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C25620();
    v7 = a3(a1, &type metadata for ConfigurableOffersData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C25860()
{
  result = qword_2811C04E8;
  if (!qword_2811C04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04E8);
  }

  return result;
}

unint64_t sub_217C258B8()
{
  result = qword_2811C04F0;
  if (!qword_2811C04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04F0);
  }

  return result;
}

uint64_t sub_217C25924(void *a1)
{
  sub_217C257F8(0, &qword_2811BC5F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25620();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C25A94()
{
  result = qword_27CBA23C8;
  if (!qword_27CBA23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23C8);
  }

  return result;
}

unint64_t sub_217C25AEC()
{
  result = qword_2811C0500;
  if (!qword_2811C0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0500);
  }

  return result;
}

unint64_t sub_217C25B44()
{
  result = qword_2811C0508;
  if (!qword_2811C0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0508);
  }

  return result;
}

uint64_t sub_217C25BE4(uint64_t a1)
{
  v2 = sub_217C25DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C25C20(uint64_t a1)
{
  v2 = sub_217C25DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementData.encode(to:)(void *a1)
{
  sub_217C25FF8(0, &qword_27CBA23D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25DB8();
  sub_217D89E7C();
  v11 = v8;
  sub_217C25E0C();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C25DB8()
{
  result = qword_27CBA23D8;
  if (!qword_27CBA23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23D8);
  }

  return result;
}

unint64_t sub_217C25E0C()
{
  result = qword_27CBA23E0;
  if (!qword_27CBA23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23E0);
  }

  return result;
}

uint64_t AdEngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C25FF8(0, &qword_27CBA23E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C25DB8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C2605C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C25FF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C25DB8();
    v7 = a3(a1, &type metadata for AdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C2605C()
{
  result = qword_27CBA23F0;
  if (!qword_27CBA23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23F0);
  }

  return result;
}

unint64_t sub_217C260B4()
{
  result = qword_27CBA23F8;
  if (!qword_27CBA23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA23F8);
  }

  return result;
}

unint64_t sub_217C2610C()
{
  result = qword_27CBA2400;
  if (!qword_27CBA2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2400);
  }

  return result;
}

unint64_t sub_217C261B4()
{
  result = qword_27CBA2408;
  if (!qword_27CBA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2408);
  }

  return result;
}

unint64_t sub_217C2620C()
{
  result = qword_27CBA2410;
  if (!qword_27CBA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2410);
  }

  return result;
}

unint64_t sub_217C26264()
{
  result = qword_27CBA2418;
  if (!qword_27CBA2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2418);
  }

  return result;
}

uint64_t SmarterFetchData.fetchSources.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SmarterFetchData.fetchStrategy.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SmarterFetchData.fetchStrategy.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::SmarterFetchData __swiftcall SmarterFetchData.init(fetchSources:fetchStrategy:)(Swift::OpaquePointer fetchSources, Swift::String_optional fetchStrategy)
{
  *v2 = fetchSources;
  *(v2 + 8) = fetchStrategy;
  result.fetchStrategy = fetchStrategy;
  result.fetchSources = fetchSources;
  return result;
}

uint64_t sub_217C263A8()
{
  if (*v0)
  {
    return 0x7274536863746566;
  }

  else
  {
    return 0x756F536863746566;
  }
}

uint64_t sub_217C263F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F536863746566 && a2 == 0xEC00000073656372;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7274536863746566 && a2 == 0xED00007967657461)
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

uint64_t sub_217C264E0(uint64_t a1)
{
  v2 = sub_217C26738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2651C(uint64_t a1)
{
  v2 = sub_217C26738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmarterFetchData.encode(to:)(void *a1)
{
  sub_217C269D8(0, &qword_2811BC700, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12[1] = v1[2];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C26738();

  sub_217D89E7C();
  v15 = v10;
  v14 = 0;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89CAC();

  if (!v2)
  {
    v13 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C26738()
{
  result = qword_2811C4D38;
  if (!qword_2811C4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D38);
  }

  return result;
}

uint64_t SmarterFetchData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217C269D8(0, &qword_27CBA2420, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C26738();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217A55F8C();
  v15[15] = 0;
  sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89BCC();
  v10 = v16;
  v15[14] = 1;
  v11 = sub_217D89B2C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C269D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C26738();
    v7 = a3(a1, &type metadata for SmarterFetchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C26A40()
{
  result = qword_27CBA2428;
  if (!qword_27CBA2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2428);
  }

  return result;
}

unint64_t sub_217C26A98()
{
  result = qword_2811C4D20;
  if (!qword_2811C4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D20);
  }

  return result;
}

uint64_t sub_217C26B1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217C26B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C26BC8()
{
  result = qword_27CBA2430;
  if (!qword_27CBA2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2430);
  }

  return result;
}

unint64_t sub_217C26C20()
{
  result = qword_2811C4D28;
  if (!qword_2811C4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D28);
  }

  return result;
}

unint64_t sub_217C26C78()
{
  result = qword_2811C4D30;
  if (!qword_2811C4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D30);
  }

  return result;
}

uint64_t sub_217C26D94()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2468);
  __swift_project_value_buffer(v0, qword_27CBA2468);
  return sub_217D8866C();
}

uint64_t ConsentScreenViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_217C26F60(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C26F60(uint64_t a1)
{
  if (!qword_27CBA2480)
  {
    sub_217C26FC8();
    sub_217C2701C();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA2480);
    }
  }
}

unint64_t sub_217C26FC8()
{
  result = qword_27CBA2488;
  if (!qword_27CBA2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2488);
  }

  return result;
}

unint64_t sub_217C2701C()
{
  result = qword_27CBA2490;
  if (!qword_27CBA2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2490);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_217C26F60(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ConsentScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  v5 = *MEMORY[0x277CEACF0];
  sub_217C26F60(0);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ConsentScreenViewEvent.Model.consentScreenActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(eventData:consentScreenActionData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_217C272EC()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C27330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD0930 == a2)
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

uint64_t sub_217C2741C(uint64_t a1)
{
  v2 = sub_217C27660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C27458(uint64_t a1)
{
  v2 = sub_217C27660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C27A0C(0, &qword_27CBA2498, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C27660();
  sub_217D89E7C();
  v11[15] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ConsentScreenViewEvent.Model(0) + 20));
    v11[13] = 1;
    sub_217C2701C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C27660()
{
  result = qword_27CBA24A0;
  if (!qword_27CBA24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24A0);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_217D8899C();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C27A0C(0, &qword_27CBA24A8, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C27660();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v20 = v12;
  v13 = v22;
  v28 = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v25;
  v15 = v23;
  sub_217D89BCC();
  v16 = v20;
  (*(v13 + 32))(v20, v5, v14);
  v26 = 1;
  sub_217C26FC8();
  sub_217D89B5C();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_217C27A70(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C27AD4(v16);
}

void sub_217C27A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C27660();
    v7 = a3(a1, &type metadata for ConsentScreenViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C27A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C27AD4(uint64_t a1)
{
  v2 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C27C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = *MEMORY[0x277CEACF0];
  sub_217C26F60(0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_217C27D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_217C27E0C()
{
  if (!qword_27CBA24D0)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA24D0);
    }
  }
}

unint64_t sub_217C27E70()
{
  result = qword_27CBA24D8;
  if (!qword_27CBA24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24D8);
  }

  return result;
}

unint64_t sub_217C27EC8()
{
  result = qword_27CBA24E0;
  if (!qword_27CBA24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24E0);
  }

  return result;
}

unint64_t sub_217C27F20()
{
  result = qword_27CBA24E8;
  if (!qword_27CBA24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24E8);
  }

  return result;
}

NewsAnalytics::SportScoreConcernContentType_optional __swiftcall SportScoreConcernContentType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SportScoreConcernContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6172756363616E69;
  v3 = 0x656D6954656D6167;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E696874656D6F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53646579616C6564;
  if (v1 != 1)
  {
    v5 = 0x6F666E496D616574;
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

unint64_t sub_217C280D4()
{
  result = qword_27CBA24F0;
  if (!qword_27CBA24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24F0);
  }

  return result;
}

uint64_t sub_217C28130(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217C28258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65726F63536574;
  v4 = 0x6172756363616E69;
  v5 = 0xE800000000000000;
  v6 = 0x656D6954656D6167;
  v7 = 0x8000000217DCB3B0;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x6E696874656D6F73;
    v7 = 0xED000065736C4567;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000065726F63;
  v10 = 0x53646579616C6564;
  if (v2 != 1)
  {
    v10 = 0x6F666E496D616574;
    v9 = 0xE800000000000000;
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

unint64_t sub_217C283FC()
{
  result = qword_27CBA24F8;
  if (!qword_27CBA24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA24F8);
  }

  return result;
}

NewsAnalytics::TodayFeedPoolMyArticlesSource_optional __swiftcall TodayFeedPoolMyArticlesSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t TodayFeedPoolMyArticlesSource.rawValue.getter()
{
  v1 = 0x74694B64756F6C63;
  if (*v0 != 1)
  {
    v1 = 0x4672657472616D73;
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

uint64_t sub_217C28510(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v4 = 0x4672657472616D73;
    v3 = 0xEC00000068637465;
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

  v7 = 0xE800000000000000;
  v8 = 0x74694B64756F6C63;
  if (*a2 != 1)
  {
    v8 = 0x4672657472616D73;
    v7 = 0xEC00000068637465;
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

unint64_t sub_217C28628()
{
  result = qword_27CBA2500;
  if (!qword_27CBA2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2500);
  }

  return result;
}

uint64_t sub_217C2867C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C28728(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C287C0(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C28874(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v5 = 0x4672657472616D73;
    v4 = 0xEC00000068637465;
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

unint64_t sub_217C2899C()
{
  result = qword_2811BE1D8;
  if (!qword_2811BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1D8);
  }

  return result;
}

uint64_t UserEmbeddingData.embeddingCoefficients.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217C28A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD0950 == a2)
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

uint64_t sub_217C28B04(uint64_t a1)
{
  v2 = sub_217C28D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C28B40(uint64_t a1)
{
  v2 = sub_217C28D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEmbeddingData.encode(to:)(void *a1)
{
  sub_217C28F80(0, &qword_2811BC6D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C28D18();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217C28D6C();
  sub_217C28FE4(&qword_2811BCD20, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C28D18()
{
  result = qword_2811C42D8;
  if (!qword_2811C42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42D8);
  }

  return result;
}

void sub_217C28D6C()
{
  if (!qword_2811BCD28)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD28);
    }
  }
}

uint64_t UserEmbeddingData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217C28F80(0, &qword_2811BCA58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C28D18();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C28D6C();
    sub_217C28FE4(&qword_2811BCD18, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C28F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C28D18();
    v7 = a3(a1, &type metadata for UserEmbeddingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C28FE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217C28D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C290A0()
{
  result = qword_27CBA2508;
  if (!qword_27CBA2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2508);
  }

  return result;
}

unint64_t sub_217C290F8()
{
  result = qword_2811C42C8;
  if (!qword_2811C42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42C8);
  }

  return result;
}

unint64_t sub_217C29150()
{
  result = qword_2811C42D0;
  if (!qword_2811C42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42D0);
  }

  return result;
}

void __swiftcall Error.errorData()(NewsAnalytics::ErrorData *__return_ptr retstr)
{
  v4 = v2;
  v5 = v1;
  v7 = *(v1 - 8);
  (MEMORY[0x28223BE20])();
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x277D84F90];
  v23 = &v25;
  sub_217C29550(sub_217C29548, v22, v5, v4);
  (*(v7 + 16))(v9, v3, v5);
  v10 = sub_217D89D1C();
  if (v10)
  {
    v11 = v10;
    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v11 = swift_allocError();
    (*(v7 + 32))(v12, v9, v5);
  }

  v13 = sub_217D87B1C();

  v14 = [v13 domain];
  v15 = sub_217D8954C();
  v17 = v16;

  v24 = [v13 code];
  v18 = sub_217D89CFC();
  v20 = v19;

  v21 = v25;
  retstr->errorDomain.value._countAndFlagsBits = v15;
  retstr->errorDomain.value._object = v17;
  retstr->errorCode._countAndFlagsBits = v18;
  retstr->errorCode._object = v20;
  retstr->errorDetails.value._rawValue = v21;
}

char *sub_217C29398(void *a1, char **a2)
{
  sub_217C297B8();
  sub_217C29804();
  v4 = a1;
  v5 = sub_217D89D1C();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = swift_allocError();
    *v7 = v4;
  }

  v8 = sub_217D87B1C();

  v9 = [v8 domain];
  v10 = sub_217D8954C();
  v12 = v11;

  v13 = [v8 code];
  v14 = [v8 localizedDescription];
  v15 = sub_217D8954C();
  v17 = v16;

  v18 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v18;
  if ((result & 1) == 0)
  {
    result = sub_217B5B404(0, *(v18 + 2) + 1, 1, v18);
    v18 = result;
    *a2 = result;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    result = sub_217B5B404((v20 > 1), v21 + 1, 1, v18);
    v18 = result;
    *a2 = result;
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[40 * v21];
  *(v22 + 4) = v10;
  *(v22 + 5) = v12;
  *(v22 + 6) = v13;
  *(v22 + 7) = v15;
  *(v22 + 8) = v17;
  return result;
}

uint64_t sub_217C29550(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v10);
  v11 = sub_217D89D1C();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 8))(v9, a3);
  }

  else
  {
    v12 = swift_allocError();
    (*(v7 + 32))(v13, v9, a3);
  }

  v14 = sub_217D87B1C();

  a1(v14);
  v15 = [v14 underlyingErrors];
  sub_217C29754();
  v16 = sub_217D896EC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      swift_getErrorValue();
      v20 = v24[1];
      v21 = v24[2];
      v22 = v19;
      sub_217C29550(a1, a2, v20, v21);

      --v17;
    }

    while (v17);
  }
}

unint64_t sub_217C29754()
{
  result = qword_2811BC3F0;
  if (!qword_2811BC3F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BC3F0);
  }

  return result;
}

unint64_t sub_217C297B8()
{
  result = qword_27CBA2510;
  if (!qword_27CBA2510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CBA2510);
  }

  return result;
}

unint64_t sub_217C29804()
{
  result = qword_27CBA2518;
  if (!qword_27CBA2518)
  {
    sub_217C297B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2518);
  }

  return result;
}

uint64_t sub_217C29924()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C2958);
  __swift_project_value_buffer(v0, qword_2811C2958);
  return sub_217D8866C();
}

uint64_t OfflineModeEndEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OfflineModeEndEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfflineModeEndEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineModeEndEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfflineModeEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for OfflineModeEndEvent(0);
  v5 = *(v4 + 20);
  sub_217B8A2C8(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A608E0(0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t OfflineModeEndEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OfflineModeEndEvent.Model(0) + 20));
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

uint64_t sub_217C29E78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t OfflineModeEndEvent.Model.init(eventData:userBundleSubscriptionContextData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for OfflineModeEndEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = *(a2 + 48);
  v12 = *(v9 + 24);
  v13 = sub_217D889CC();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

unint64_t sub_217C29FE8()
{
  v1 = 0xD000000000000021;
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

uint64_t sub_217C2A048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C2AE9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C2A070(uint64_t a1)
{
  v2 = sub_217C2A3D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2A0AC(uint64_t a1)
{
  v2 = sub_217C2A3D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C2A910(0, &qword_27CBA2520, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2A3D4();
  sub_217D89E7C();
  v27 = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for OfflineModeEndEvent.Model(0) + 20));
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v24 = v10[1];
    v25 = v11;
    v23 = v12;
    v26 = *(v10 + 48);
    v19 = v13;
    v20 = v24;
    v21 = v10[2];
    v22 = *(v10 + 48);
    v18 = 1;
    sub_217ACC004(&v23, v16);
    sub_217A55B98();
    sub_217D89CAC();
    v16[0] = v19;
    v16[1] = v20;
    v16[2] = v21;
    v17 = v22;
    sub_217ACC69C(v16);
    v15[15] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C2A3D4()
{
  result = qword_27CBA2528;
  if (!qword_27CBA2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2528);
  }

  return result;
}

uint64_t OfflineModeEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_217D889CC();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_217D8899C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C2A910(0, &qword_27CBA2530, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OfflineModeEndEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2A3D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v14 = v25;
  v13 = v26;
  LOBYTE(v30) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v13 + 32))(v21, v27, v29);
  v35 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v27 = v10;
  v15 = &v21[*(v10 + 20)];
  v16 = v31;
  *v15 = v30;
  *(v15 + 1) = v16;
  *(v15 + 2) = v32;
  v15[48] = v33;
  v34 = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v20 = v5;
  v17 = v24;
  sub_217D89BCC();
  (*(v14 + 8))(v9, v28);
  v18 = v21;
  (*(v22 + 32))(&v21[*(v27 + 6)], v20, v17);
  sub_217C2A974(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C2A9D8(v18);
}

void sub_217C2A910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C2A3D4();
    v7 = a3(a1, &type metadata for OfflineModeEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C2A974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineModeEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C2A9D8(uint64_t a1)
{
  v2 = type metadata accessor for OfflineModeEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C2AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217B8A2C8(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A608E0(0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C2AC34(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217B8A2C8(319);
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

uint64_t sub_217C2ACF8(uint64_t a1)
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

unint64_t sub_217C2AD98()
{
  result = qword_27CBA2548;
  if (!qword_27CBA2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2548);
  }

  return result;
}

unint64_t sub_217C2ADF0()
{
  result = qword_27CBA2550;
  if (!qword_27CBA2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2550);
  }

  return result;
}

unint64_t sub_217C2AE48()
{
  result = qword_27CBA2558;
  if (!qword_27CBA2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2558);
  }

  return result;
}

uint64_t sub_217C2AE9C(uint64_t a1, uint64_t a2)
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

NewsAnalytics::SessionObserverKind_optional __swiftcall SessionObserverKind.init(rawValue:)(Swift::String rawValue)
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

uint64_t SessionObserverKind.rawValue.getter()
{
  v1 = 0x6F69647561;
  if (*v0 != 1)
  {
    v1 = 0x7274656D656C6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_217C2B0C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  if (v2 != 1)
  {
    v4 = 0x7274656D656C6574;
    v3 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (*a2 != 1)
  {
    v8 = 0x7274656D656C6574;
    v7 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

uint64_t sub_217C2B1BC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C2B258(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C2B2E0(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C2B384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F69647561;
  if (v2 != 1)
  {
    v5 = 0x7274656D656C6574;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_217C2B3EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      type metadata accessor for AppSessionStartEvent(0);
      sub_217A4C15C(qword_2811C2300, type metadata accessor for AppSessionStartEvent, &protocol conformance descriptor for AppSessionStartEvent);
      v8 = 0u;
      v9 = 0u;
      sub_217D8822C();
      v4 = MEMORY[0x277D84F70];
      sub_217AE4A44(&v8, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8);
      type metadata accessor for AppSessionEndEvent(0);
      sub_217A4C15C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      sub_217D8821C();
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      result = sub_217D8910C();
      if (result)
      {
        type metadata accessor for OfflineModeStartEvent(0);
        sub_217A4C15C(&qword_2811C0E68, type metadata accessor for OfflineModeStartEvent, &protocol conformance descriptor for OfflineModeStartEvent);
        v8 = 0u;
        v9 = 0u;
        sub_217D8822C();
        sub_217AE4A44(&v8, &qword_2811BC3D0, v4 + 8);
        type metadata accessor for OfflineModeEndEvent(0);
        sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent, &protocol conformance descriptor for OfflineModeEndEvent);
        return sub_217D8821C();
      }

      return result;
    }

LABEL_12:
    result = sub_217D89A9C();
    __break(1u);
    return result;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return result;
    }

    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = sub_217D8910C();
  v7 = MEMORY[0x277D84F70];
  if (v6)
  {
    type metadata accessor for OfflineModeEndEvent(0);
    sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent, &protocol conformance descriptor for OfflineModeEndEvent);
    v8 = 0u;
    v9 = 0u;
    sub_217D8822C();
    sub_217AE4A44(&v8, &qword_2811BC3D0, v7 + 8);
  }

  type metadata accessor for AppSessionEndEvent(0);
  sub_217A4C15C(qword_2811C3ED8, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
  v8 = 0u;
  v9 = 0u;
  sub_217D8822C();
  return sub_217AE4A44(&v8, &qword_2811BC3D0, v7 + 8);
}

id SessionObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_217D8951C();
    [v4 removeObserver:v0 forKeyPath:v5 context:0];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void (*SessionObserver.window.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_window;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_217C2BAB0;
}

void sub_217C2BAB0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(v3 + 32);
      v7 = Strong;
      sub_217A56BD0(Strong);
      v8 = sub_217D8951C();
      [v7 addObserver:v6 forKeyPath:v8 options:1 context:0];

      sub_217A4CAE8();
    }
  }

  free(v3);
}

uint64_t SessionObserver.sceneSessionIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SessionObserver.sceneSessionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id SessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_217C2BDCC()
{
  swift_getObjectType();

  return sub_217D87DCC();
}

uint64_t sub_217C2BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_217C2BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

Swift::Void __swiftcall SessionObserver.sessionWillEnd(withEndReason:)(NSNumber withEndReason)
{
  v3 = v1;
  v5 = sub_217D87C9C();
  v137 = *(v5 - 8);
  v138 = v5;
  MEMORY[0x28223BE20](v5);
  v136 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [(objc_class *)withEndReason.super.super.isa integerValue];
  if (v7 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x504020300uLL >> (8 * v7);
  }

  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v9 = sub_217D898DC();
  sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_217D9CB60;
  if (v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind])
  {
    if (v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind] == 1)
    {
      v12 = 0xE500000000000000;
      v13 = 0x6F69647561;
    }

    else
    {
      v12 = 0xE900000000000079;
      v13 = 0x7274656D656C6574;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    v13 = 7368801;
  }

  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_217A62448();
  v11[8] = v15;
  v11[4] = v13;
  v11[5] = v12;
  if (v8 > 2u)
  {
    if (v8 == 3)
    {
      v16 = 0x8000000217DCCA10;
      v17 = 0xD000000000000015;
    }

    else if (v8 == 4)
    {
      v17 = 0x6975516563726F66;
      v16 = 0xE900000000000074;
    }

    else
    {
      v16 = 0xEF74657365524449;
      v17 = 0x72617073646C6566;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v16 = 0xED0000646E756F72;
      v17 = 0x676B636142707061;
    }

    else
    {
      v16 = 0xEF646E756F72676BLL;
      v17 = 0x636142656E656373;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E75;
  }

  v11[12] = v14;
  v11[13] = v15;
  v11[9] = v17;
  v11[10] = v16;
  v18 = sub_217D897FC();
  sub_217D88E5C("Ending app analytics %{public}@ session due to Feldspar analytics session will end with endReason %@", 100, 2, &dword_217A45000, v9, v18, v11);

  v19 = *&v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  sub_217D883AC();
  LOBYTE(v154) = v8;
  sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = v20;
  v22 = sub_217D882DC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v129 = v25 + *(v23 + 72);
  v130 = v24;
  v133 = v21;
  v26 = swift_allocObject();
  v126 = xmmword_217D8D8F0;
  *(v26 + 16) = xmmword_217D8D8F0;
  v27 = *MEMORY[0x277CEAD10];
  v28 = *(v23 + 104);
  v131 = v25;
  v132 = v23 + 104;
  v128 = v27;
  v127 = v28;
  v28(v26 + v25);
  sub_217BE3E20();
  v134 = "ics session start";
  sub_217D8890C();

  v135 = v3;
  v29 = *&v3[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext];
  v30 = [v29 userEventHistory];
  v31 = [v30 storage];

  v140 = [objc_msgSend(v29 appConfigurationManager)];
  swift_unknownObjectRelease();
  v32 = [v31 sessions];
  if (v32)
  {
    v33 = v32;
    sub_217D88FFC();
    v34 = sub_217D896EC();
  }

  else
  {
    v34 = 0;
  }

  v35 = [v31 metadata];
  v36 = sub_217D883AC();
  v37 = [v35 sessionsOnDiskSize];
  v38 = v37 % 1000;
  v125 = v36;
  if (v37 % 1000 > 499)
  {
LABEL_27:
    v40 = 1000 - v38;
    v39 = __OFADD__(v37, v40);
    v38 = v37 + v40;
    if (v39)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_28;
  }

  v39 = __OFSUB__(v37, v38);
  v38 = v37 - v38;
  if (v39)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v124 = v38;
  v41 = [v31 prunedSessionIDs];
  v42 = sub_217D896EC();

  v36 = v42[2];

  if (v36 % 0x3E8 > 0x1F3)
  {
    v44 = 1000 - v36 % 0x3E8;
    v39 = __OFADD__(v36, v44);
    v43 = v36 + v44;
    if (v39)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }
  }

  else
  {
    v43 = 1000 * (v36 / 0x3E8);
  }

  v123 = v43;
  v45 = [v31 prunedSessionSize];
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v122 = v22;
  if (v45 % 0x3E8 > 0x1F3)
  {
    v46 = 1000 - v45 % 0x3E8;
    v121 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  else
  {
    v121 = 1000 * (v45 / 0x3E8);
  }

  v2 = -1.0;
  v22 = v34 >> 62;
  if (!v34)
  {
    v120 = -1;
    goto LABEL_45;
  }

  v42 = (v34 & 0xFFFFFFFFFFFFFF8);
  if (v22)
  {
    goto LABEL_64;
  }

  v47 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v120 = v47;
  if (v47)
  {
LABEL_38:
    v36 = v47 - 1;
    if (!__OFSUB__(v47, 1))
    {
      if ((v34 & 0xC000000000000001) == 0)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v36 < v42[2])
        {
          v42 = *(v34 + 8 * v36 + 32);
LABEL_43:
          v25 = v136;
          sub_217D88FEC();
          v36 = v25;
          sub_217D87C4C();
          v49 = v48;

          (*(v137 + 8))(v25, v138);
          v2 = -v49;
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_111;
      }

LABEL_108:

      v42 = MEMORY[0x21CEAD080](v36, v34);

      goto LABEL_43;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  while (1)
  {
LABEL_45:
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v2 > -9.22337204e18)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    if (v34 >= 0)
    {
      v36 = v42;
    }

    else
    {
      v36 = v34;
    }

    v120 = sub_217D89AAC();
    v47 = sub_217D89AAC();
    if (v47)
    {
      goto LABEL_38;
    }
  }

  if (v2 >= 9.22337204e18)
  {
    goto LABEL_63;
  }

  v50 = v2;
  v51 = v2 % 1000;
  if (v51 > 499)
  {
    goto LABEL_52;
  }

  v25 = v50 - v51;
  if (__OFSUB__(v50, v51))
  {
    __break(1u);
LABEL_52:
    v52 = 1000 - v51;
    v25 = v50 + v52;
    if (!__OFADD__(v50, v52))
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_53:
  v53 = -1.0;
  if (!v34)
  {
    goto LABEL_71;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v22)
  {
    if (!sub_217D89AAC())
    {
      goto LABEL_70;
    }

LABEL_56:
    if ((v34 & 0xC000000000000001) == 0)
    {
      if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v54 = *(v34 + 32);
LABEL_59:
      v55 = v54;

      v22 = v136;
      sub_217D88FEC();
      v36 = v22;
      sub_217D87C4C();
      v57 = v56;

      (*(v137 + 8))(v22, v138);
      v53 = -v57;
      goto LABEL_71;
    }

LABEL_111:
    v54 = MEMORY[0x21CEAD080](0, v34);
    goto LABEL_59;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_70:

LABEL_71:
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v58 = v53;
  v59 = v53 % 1000;
  v139 = v19;
  v118 = v31;
  v119 = v25;
  if (v59 <= 499)
  {
    v36 = v58 - v59;
    if (!__OFSUB__(v58, v59))
    {
      goto LABEL_79;
    }

    __break(1u);
  }

  v60 = 1000 - v59;
  v36 = v58 + v60;
  if (__OFADD__(v58, v60))
  {
    goto LABEL_106;
  }

LABEL_79:
  v111 = [v35 aggregateStoreGenerationTime];
  v110 = [v35 aggregateTotalCount];
  [v35 meanCountOfEvents];
  v62 = v61;
  [v35 standardDeviationOfEvents];
  v64 = v63;
  v109 = [v35 totalEventsCount];
  v108 = [v35 headlineEventCount];
  v107 = [v35 headlinesWithValidTitleEmbeddingsEventCount];
  v106 = [v35 headlinesWithInvalidTitleEmbeddingsEventCount];
  v105 = [v35 headlinesWithValidBodyEmbeddingsEventCount];
  v104 = [v35 headlinesWithInvalidBodyEmbeddingsEventCount];
  if (([v140 respondsToSelector_] & 1) != 0 && objc_msgSend(v140, sel_personalizationAnalyticsEnabled) && (v65 = v36, (v66 = objc_msgSend(v35, sel_eventCounts)) != 0))
  {
    v67 = v66;
    sub_217C2CFD0(&v154);

    v117 = 0;
    v114 = v155;
    v115 = v154;
    v112 = *&v156[16];
    v113 = *v156;
    v116 = *&v156[32];
    v68 = *&v156[40];
    v69 = *&v156[48];
    v36 = v65;
  }

  else
  {
    v116 = 0;
    v68 = 0;
    v69 = 0;
    v117 = 1;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
  }

  if (([v140 respondsToSelector_] & 1) != 0 && objc_msgSend(v140, sel_personalizationAnalyticsEnabled) && (v70 = v36, (v71 = objc_msgSend(v35, sel_aggregateStoreData)) != 0))
  {
    v72 = v71;
    sub_217C2D3F0(&v154);

    v73 = 0;
    v74 = v154;
    v75 = v155;
    v76 = *v156;
    v77 = *&v156[16];
    v78 = *&v156[32];
    v79 = *&v156[48];
    v80 = v157;
    v36 = v70;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v73 = 1;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
  }

  *&v154 = v124;
  BYTE8(v154) = 0;
  v155.i64[0] = v123;
  v155.i64[1] = v121;
  *v156 = v120;
  *&v156[8] = v119;
  *&v156[16] = v36;
  *&v156[24] = v111;
  *&v156[32] = v110;
  *&v156[40] = v62;
  *&v156[48] = v64;
  *&v157 = v109;
  *(&v157 + 1) = v108;
  v158 = v107;
  v159 = v106;
  v160 = v105;
  v161 = v104;
  v163 = v114;
  v162 = v115;
  v165 = v112;
  v164 = v113;
  v166 = v116;
  v167 = v68;
  v168 = v69;
  v169 = v117;
  v170 = v74;
  v171 = v75;
  v172 = v76;
  v173 = v77;
  v174 = v78;
  v175 = v79;
  v176 = v80;
  v177 = v73;
  v81 = swift_allocObject();
  *(v81 + 16) = v126;
  v127(v81 + v131, v128, v122);
  sub_217C2EC90();
  sub_217D8890C();

  sub_217D883AC();
  v82 = v135;
  v83 = *&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider + 24];
  v84 = *&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v135[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider], v83);
  (*(v84 + 8))(&v154, v83, v84);
  v85 = *(&v154 + 1);
  if (*(&v154 + 1))
  {
    v86 = v156[0];
    v87 = v155;
    v88 = v154;
    v89 = v159;
    v90 = v158;
    v91 = v157;
    v92 = *&v156[40];
    v93 = *&v156[24];
    v94 = *&v156[8];
    v153[0] = *&v156[1];
    *(v153 + 3) = *&v156[4];
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    sub_217AE4A44(&v145, &qword_2811C2DE0, &type metadata for TabiRequestSummary);
    v94 = 0uLL;
    v86 = 0;
    v87 = vdupq_n_s64(v95);
    v85 = 0xE700000000000000;
    v88 = 0x6E776F6E6B6E75;
    v90 = 0x6E776F6E6B6E75;
    v89 = 0xE700000000000000;
    v93 = 0uLL;
    v92 = 0uLL;
    v91 = 0uLL;
  }

  *&v141 = v88;
  *(&v141 + 1) = v85;
  v142 = v87;
  LOBYTE(v143[0]) = v86;
  *(v143 + 1) = v153[0];
  DWORD1(v143[0]) = *(v153 + 3);
  *(v143 + 8) = v94;
  *(&v143[1] + 8) = v93;
  *(&v143[2] + 8) = v92;
  *(&v143[3] + 8) = v91;
  *(&v143[4] + 1) = v90;
  v144 = v89;
  sub_217C2ECE4();
  sub_217D8890C();

  v149 = v143[2];
  v150 = v143[3];
  v151 = v143[4];
  v152 = v144;
  v145 = v141;
  v146 = v142;
  v147 = v143[0];
  v148 = v143[1];
  sub_217B9F380(&v145);
  v96 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider + 24];
  v97 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider], v96);
  (*(v97 + 8))(&v141, v96, v97);
  if (BYTE4(v141) != 1)
  {
    v98 = v141;
    sub_217D883AC();
    LODWORD(v141) = v98;
    sub_217C2ED94();
    sub_217D8890C();
  }

  v99 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider + 24];
  v100 = *&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider], v99);
  (*(v100 + 8))(&v141, v99, v100);
  v101 = v141;
  if (v141)
  {
    sub_217D883AC();
    *&v141 = v101;
    sub_217C2ED40();
    sub_217D8890C();
  }

  *(swift_allocObject() + 16) = v82;
  v102 = v82;
  v103 = v136;
  sub_217D87C8C();
  sub_217D8834C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v137 + 8))(v103, v138);
}

Swift::Int64 __swiftcall Int64.rounded(by:)(Swift::Int64 by)
{
  if (!by)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (by == -1 && v1 == 0x8000000000000000)
  {
    goto LABEL_12;
  }

  v2 = v1 % by;
  if (v1 % by < by / 2)
  {
    by = v1 - v2;
    if (!__OFSUB__(v1, v2))
    {
      return by;
    }

    __break(1u);
  }

  v3 = __OFSUB__(by, v2);
  v4 = by - v2;
  if (v3)
  {
    goto LABEL_13;
  }

  by = v1 + v4;
  if (__OFADD__(v1, v4))
  {
LABEL_14:
    __break(1u);
  }

  return by;
}

uint64_t sub_217C2CFD0@<X0>(void *a1@<X8>)
{
  result = [v1 articleSeenEventCount];
  v4 = result % 10;
  if (result % 10 <= 4)
  {
    v5 = result - v4;
    if (!__OFSUB__(result, v4))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v6 = 10 - v4;
  v5 = result + v6;
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_58;
  }

LABEL_6:
  result = [v1 articleVisitedEventCount];
  v7 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_10;
  }

  v8 = result - v7;
  if (__OFSUB__(result, v7))
  {
    __break(1u);
LABEL_10:
    v9 = 10 - v7;
    v8 = result + v9;
    if (!__OFADD__(result, v9))
    {
      goto LABEL_11;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_11:
  result = [v1 articleReadEventCount];
  v10 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_15;
  }

  v11 = result - v10;
  if (__OFSUB__(result, v10))
  {
    __break(1u);
LABEL_15:
    v12 = 10 - v10;
    v11 = result + v12;
    if (!__OFADD__(result, v12))
    {
      goto LABEL_16;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_16:
  result = [v1 articleLikedEventCount];
  v13 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_20;
  }

  v14 = result - v13;
  if (__OFSUB__(result, v13))
  {
    __break(1u);
LABEL_20:
    v15 = 10 - v13;
    v14 = result + v15;
    if (!__OFADD__(result, v15))
    {
      goto LABEL_21;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_21:
  result = [v1 articleDislikedEventCount];
  v16 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_25;
  }

  v17 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
LABEL_25:
    v18 = 10 - v16;
    v17 = result + v18;
    if (!__OFADD__(result, v18))
    {
      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_26:
  result = [v1 articleSharedEventCount];
  v19 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_30;
  }

  v20 = result - v19;
  if (__OFSUB__(result, v19))
  {
    __break(1u);
LABEL_30:
    v21 = 10 - v19;
    v20 = result + v21;
    if (!__OFADD__(result, v21))
    {
      goto LABEL_31;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_31:
  result = [v1 articleSavedEventCount];
  v22 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_35;
  }

  v23 = result - v22;
  if (__OFSUB__(result, v22))
  {
    __break(1u);
LABEL_35:
    v24 = 10 - v22;
    v23 = result + v24;
    if (!__OFADD__(result, v24))
    {
      goto LABEL_36;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_36:
  result = [v1 feedViewEventCount];
  v25 = result % 10;
  if (result % 10 > 4)
  {
    goto LABEL_40;
  }

  v26 = result - v25;
  if (__OFSUB__(result, v25))
  {
    __break(1u);
LABEL_40:
    v27 = 10 - v25;
    v26 = result + v27;
    if (!__OFADD__(result, v27))
    {
      goto LABEL_41;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_41:
  result = [v1 tagFollowedEventCount];
  v28 = result % 10;
  v43 = v26;
  if (result % 10 > 4)
  {
    goto LABEL_45;
  }

  v29 = __OFSUB__(result, v28);
  v28 = result - v28;
  if (v29)
  {
    __break(1u);
LABEL_45:
    v30 = 10 - v28;
    v29 = __OFADD__(result, v30);
    v28 = result + v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_46:
  v31 = v20;
  v32 = v17;
  v33 = v14;
  v34 = v11;
  v35 = v8;
  v36 = v5;
  result = [v1 tagUnfollowedEventCount];
  v37 = result % 10;
  if (result % 10 <= 4)
  {
    v38 = result - v37;
    if (!__OFSUB__(result, v37))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  v39 = 10 - v37;
  v38 = result + v39;
  if (__OFADD__(result, v39))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_51:
  result = [v1 tagMutedEventCount];
  v40 = result % 10;
  if (result % 10 <= 4)
  {
    v29 = __OFSUB__(result, v40);
    v40 = result - v40;
    if (!v29)
    {
      goto LABEL_56;
    }

    __break(1u);
  }

  v41 = 10 - v40;
  v29 = __OFADD__(result, v41);
  v40 = result + v41;
  if (!v29)
  {
LABEL_56:
    *a1 = v36;
    a1[1] = v35;
    a1[2] = v34;
    a1[3] = v33;
    a1[4] = v32;
    a1[5] = v31;
    a1[6] = v23;
    a1[7] = v43;
    a1[8] = v42;
    a1[9] = v38;
    a1[10] = v40;
    return result;
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_217C2D3F0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 baselineTimestamp];
  v5 = [v2 baselineStatelessEventCount];
  v6 = [v2 baselineTotalEventCount];
  v7 = [v2 aggregateCounts];
  v8 = [v7 tag];
  v9 = [v7 channelTopic];
  v10 = [v7 group];

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  *(a1 + 80) = v10;
  *(a1 + 88) = 0;
  *(a1 + 89) = 0;
}

uint64_t sub_217C2D510(uint64_t a1)
{
  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v2 = sub_217D898DC();
  sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_217D8D8F0;
  if (*(a1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind))
  {
    if (*(a1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind) == 1)
    {
      v5 = 0xE500000000000000;
      v6 = 0x6F69647561;
    }

    else
    {
      v5 = 0xE900000000000079;
      v6 = 0x7274656D656C6574;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7368801;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_217A62448();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  v7 = sub_217D897FC();
  sub_217D88E5C("Ended app analytics %{public}@ session due to Feldspar analytics session will end", 81, 2, &dword_217A45000, v2, v7, v4);
}

uint64_t SessionObserver.networkReachabilityConnectivityDidChange(_:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  sub_217D8894C();
}

void sub_217C2D74C(int a1, id a2)
{
  if (a2)
  {
    if ([a2 isNetworkReachable])
    {
      type metadata accessor for OfflineModeEndEvent(0);
      sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent, &protocol conformance descriptor for OfflineModeEndEvent);
      v2 = 0u;
      v3 = 0u;
      sub_217D8822C();
      sub_217AE4A44(&v2, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8);
    }

    else
    {
      type metadata accessor for OfflineModeStartEvent(0);
      sub_217A4C15C(&qword_2811C0E68, type metadata accessor for OfflineModeStartEvent, &protocol conformance descriptor for OfflineModeStartEvent);
      v2 = 0u;
      v3 = 0u;
      sub_217D8822C();
      sub_217AE4A44(&v2, &qword_2811BC3D0, MEMORY[0x277D84F70] + 8);
      type metadata accessor for OfflineModeEndEvent(0);
      sub_217A4C15C(&qword_2811C2948, type metadata accessor for OfflineModeEndEvent, &protocol conformance descriptor for OfflineModeEndEvent);
      sub_217D8821C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217C2D998(uint64_t a1)
{
  sub_217A619E0(0, &qword_2811C8A10, sub_217A61A40, &type metadata for StartMethodData);
  v113 = *(v2 - 8);
  v114 = v2;
  MEMORY[0x28223BE20](v2);
  v112 = &v90 - v3;
  sub_217A619E0(0, &qword_2811C8960, sub_217A66A2C, &type metadata for CampaignData);
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  v109 = &v90 - v5;
  v6 = sub_217D8885C();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_217D88B6C();
  v8 = *(v118 - 8);
  v9 = MEMORY[0x28223BE20](v118);
  v103 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v90 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v90 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = sub_217D88B9C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v107 = &v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v90 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v90 - v26;
  sub_217A4BFDC(0, &qword_2811BCF70, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v29 = v28;
  v117 = a1;
  sub_217D88C3C();
  sub_217D88B8C();
  v32 = *(v18 + 8);
  v30 = v18 + 8;
  v31 = v32;
  v116 = v17;
  v32(v27, v17);
  sub_217D88B7C();
  v34 = v33;
  v37 = *(v8 + 8);
  v35 = v8 + 8;
  v36 = v37;
  v37(v16, v118);
  if (v34)
  {
  }

  sub_217D88C3C();
  v38 = v115;
  sub_217D88B8C();
  v39 = v25;
  v40 = v116;
  v31(v39, v116);
  sub_217D88B7C();
  v42 = v41;
  v36(v38, v118);
  if (v42)
  {
  }

  v44 = v40;
  v92 = v35;
  v93 = v31;
  v94 = v30;
  URLHandlerContext<A>.urlReferralData()(&v119);
  v144 = v119;
  v145 = v120;
  v146 = v121;
  v45 = v123;
  v100 = v124;
  v101 = v122;
  v98 = v126;
  v99 = v125;
  v96 = v129;
  v97 = v127;
  v142 = v135;
  v143 = v128;
  v140 = v133;
  v141 = v134;
  v138 = v131;
  v139 = v132;
  memcpy(v137, v136, sizeof(v137));
  v115 = v130;
  if (v130 != 1)
  {
    sub_217D883AC();
    v46 = *MEMORY[0x277CEAE38];
    v48 = v105;
    v47 = v106;
    v49 = *(v105 + 104);
    v91 = v36;
    v50 = v104;
    v49(v104, v46, v106);
    sub_217D8891C();

    v36 = v91;
    (*(v48 + 8))(v50, v47);
  }

  v106 = v45;
  v95 = v29;
  if (v45)
  {
    *&v119 = v101;
    *(&v119 + 1) = v45;
    *&v120 = v100;
    *(&v120 + 1) = v99;
    *&v121 = v98;
    *(&v121 + 1) = v97;
    sub_217A66A2C();

    v51 = v109;
    sub_217D880EC();
    sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v52 = sub_217D882DC();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217D8D8F0;
    (*(v53 + 104))(v55 + v54, *MEMORY[0x277CEAD10], v52);
    v44 = v116;
    sub_217D8835C();

    (*(v110 + 8))(v51, v111);
  }

  if (v115 == 1)
  {
    v56 = v107;
    sub_217D88C3C();
    v57 = v108;
    sub_217D88B8C();
    v93(v56, v44);
    v58 = sub_217D88B7C();
    v60 = v59;
    v61 = v118;
    (v36)(v57);
    v62 = sub_217D8954C();
    v64 = v112;
    if (v60)
    {
      if (v58 == v62 && v60 == v63)
      {
        goto LABEL_19;
      }

      v65 = sub_217D89D4C();

      if (v65)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v68 = v102;
    sub_217D88C3C();
    v69 = v103;
    sub_217D88B8C();
    v93(v68, v44);
    v70 = sub_217D88B7C();
    v72 = v71;
    v36(v69, v61);
    v73 = sub_217D8954C();
    if (v72)
    {
      if (v70 == v73 && v72 == v74)
      {
LABEL_19:

LABEL_20:
        v66 = 0xEB00000000746567;
        v67 = 0x6469577961646F74;
        goto LABEL_24;
      }

      v75 = sub_217D89D4C();

      if (v75)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v67 = 0x6C616E7265747865;
    v66 = 0xEC0000006B6E694CLL;
    goto LABEL_24;
  }

  v66 = 0xEC0000006E6F6974;
  v67 = 0x6163696669746F6ELL;
  v64 = v112;
LABEL_24:
  *&v119 = v67;
  *(&v119 + 1) = v66;
  sub_217A61A40();
  sub_217D880EC();
  sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v76 = sub_217D882DC();
  v77 = v64;
  v78 = *(v76 - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_217D8D8F0;
  (*(v78 + 104))(v80 + v79, *MEMORY[0x277CEAD10], v76);
  sub_217D8835C();

  sub_217D883AC();
  v81 = swift_allocObject();
  v82 = v145;
  *(v81 + 16) = v144;
  *(v81 + 32) = v82;
  *(v81 + 48) = v146;
  v83 = v106;
  *(v81 + 64) = v101;
  *(v81 + 72) = v83;
  v84 = v99;
  *(v81 + 80) = v100;
  *(v81 + 88) = v84;
  v85 = v97;
  *(v81 + 96) = v98;
  *(v81 + 104) = v85;
  v86 = v142;
  *(v81 + 112) = v143;
  v87 = v115;
  *(v81 + 128) = v96;
  *(v81 + 136) = v87;
  v88 = v140;
  *(v81 + 192) = v141;
  *(v81 + 208) = v86;
  v89 = v139;
  *(v81 + 144) = v138;
  *(v81 + 160) = v89;
  *(v81 + 176) = v88;
  memcpy((v81 + 224), v137, 0x1C8uLL);
  sub_217D888EC();

  return (*(v113 + 8))(v77, v114);
}

uint64_t sub_217C2E5CC(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v25[0] = *a2;
  v25[1] = v3;
  v5 = *a2;
  v4 = a2[1];
  v25[2] = a2[2];
  __dst[0] = v5;
  v6 = a2[2];
  __dst[1] = v4;
  __dst[2] = v6;
  sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v23 = sub_217D882DC();
  v7 = *(v23 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217D8D8F0;
  v10 = *(v7 + 104);
  v11 = *MEMORY[0x277CEAD10];
  v10(v9 + v8);
  sub_217C2EEEC(v25, v24);
  sub_217B7CFA8();
  sub_217D8820C();

  v12 = *(a2 + 7);
  if (v12)
  {
    v13 = *(a2 + 6);
    v14 = a2[5];
    __dst[1] = a2[4];
    __dst[2] = v14;
    *&__dst[0] = v13;
    *(&__dst[0] + 1) = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_217D8D8F0;
    (v10)(v15 + v8, v11, v23);
    sub_217A66A2C();
    sub_217D8820C();
  }

  v16 = *(a2 + 15);
  if (v16 != 1)
  {
    v17 = *(a2 + 14);
    v18 = a2[11];
    __dst[3] = a2[10];
    __dst[4] = v18;
    __dst[5] = a2[12];
    v19 = a2[9];
    __dst[1] = a2[8];
    __dst[2] = v19;
    *&__dst[0] = v17;
    *(&__dst[0] + 1) = v16;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_217D8D8F0;
    (v10)(v20 + v8, v11, v23);
    sub_217AE0160();
    sub_217D8820C();
  }

  memcpy(__dst, a2 + 13, 0x1C8uLL);
  result = get_enum_tag_for_layout_string_13NewsAnalytics20WidgetEngagementDataVSg_0(__dst);
  if (result != 1)
  {
    memcpy(v24, __dst, sizeof(v24));
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_217D8D8F0;
    (v10)(v22 + v8, v11, v23);
    sub_217C2EF48();
    sub_217D8820C();
  }

  return result;
}

uint64_t sub_217C2E960()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_217C2E9BC(uint64_t a1, uint64_t a2)
{
  sub_217D89E1C();
  sub_217D895CC();
  v4 = sub_217D89E3C();

  return sub_217C2EA34(a1, a2, v4);
}

unint64_t sub_217C2EA34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_217D89D4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_217C2EAEC(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, objc_class *a13)
{
  v23 = objc_allocWithZone(a13);

  return sub_217A4B71C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v23);
}

unint64_t sub_217C2EB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_217C2F034(0);
    v3 = sub_217D89ADC();
    v4 = a1 + 32;

    while (1)
    {
      sub_217C2F0D4(v4, &v11);
      v5 = v11;
      result = sub_217D7AC1C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_217B2C754(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_217C2EC90()
{
  result = qword_2811C1B70;
  if (!qword_2811C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B70);
  }

  return result;
}

unint64_t sub_217C2ECE4()
{
  result = qword_2811BD2A8;
  if (!qword_2811BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2A8);
  }

  return result;
}

unint64_t sub_217C2ED40()
{
  result = qword_2811C42C0;
  if (!qword_2811C42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42C0);
  }

  return result;
}

unint64_t sub_217C2ED94()
{
  result = qword_2811C0EF8;
  if (!qword_2811C0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0EF8);
  }

  return result;
}

unint64_t sub_217C2EDF4()
{
  result = qword_27CBA2638;
  if (!qword_27CBA2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2638);
  }

  return result;
}

unint64_t sub_217C2EF48()
{
  result = qword_2811C1A20;
  if (!qword_2811C1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1A20);
  }

  return result;
}

void sub_217C2EF9C(uint64_t a1)
{
  if (!qword_27CBA2730)
  {
    sub_217A4BFDC(255, &qword_27CBA2738, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    v1 = sub_217D89AEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA2730);
    }
  }
}

void sub_217C2F034(uint64_t a1)
{
  if (!qword_27CBA2740)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_217A4C15C(&qword_27CB9E6D8, type metadata accessor for OpenURLOptionsKey, &unk_217D8D31C);
    v1 = sub_217D89AEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA2740);
    }
  }
}

uint64_t sub_217C2F0D4(uint64_t a1, uint64_t a2)
{
  sub_217C2F138(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217C2F138(uint64_t a1)
{
  if (!qword_27CBA2750)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CBA2750);
    }
  }
}

NewsAnalytics::PuzzleRevealType_optional __swiftcall PuzzleRevealType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PuzzleRevealType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1685221239;
  if (*v0 != 2)
  {
    v2 = 0x72657474656CLL;
  }

  if (*v0)
  {
    v1 = 7105633;
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

unint64_t sub_217C2F27C()
{
  result = qword_27CBA2758;
  if (!qword_27CBA2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2758);
  }

  return result;
}

uint64_t sub_217C2F2D0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C2F380(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C2F41C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C2F4D4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1685221239;
  if (*v1 != 2)
  {
    v5 = 0x72657474656CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 7105633;
    v2 = 0xE300000000000000;
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

unint64_t sub_217C2F600()
{
  result = qword_27CBA2760;
  if (!qword_27CBA2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2760);
  }

  return result;
}

uint64_t GroupingInventoryData.inventory.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217C2F6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F746E65766E69 && a2 == 0xE900000000000079)
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

uint64_t sub_217C2F764(uint64_t a1)
{
  v2 = sub_217C2F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C2F7A0(uint64_t a1)
{
  v2 = sub_217C2F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupingInventoryData.encode(to:)(void *a1)
{
  sub_217C2FBF8(0, &qword_2811BC618, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2F984();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217C2F9D8();
  sub_217C2FC5C(&qword_2811BCDC8, sub_217C19668, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C2F984()
{
  result = qword_2811C1290[0];
  if (!qword_2811C1290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1290);
  }

  return result;
}

void sub_217C2F9D8()
{
  if (!qword_2811BCDD0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDD0);
    }
  }
}

uint64_t GroupingInventoryData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217C2FBF8(0, &qword_27CBA2768, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C2F984();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C2F9D8();
    sub_217C2FC5C(&qword_27CBA2770, sub_217C19610, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C2FBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C2F984();
    v7 = a3(a1, &type metadata for GroupingInventoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C2FC5C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217C2F9D8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C2FD24()
{
  result = qword_27CBA2778;
  if (!qword_27CBA2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2778);
  }

  return result;
}

unint64_t sub_217C2FD7C()
{
  result = qword_2811C1280;
  if (!qword_2811C1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1280);
  }

  return result;
}

unint64_t sub_217C2FDD4()
{
  result = qword_2811C1288;
  if (!qword_2811C1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1288);
  }

  return result;
}

uint64_t NotificationData.notificationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationData.notificationID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationData.senderChannelID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NotificationData.senderChannelID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NotificationData.sourceChannelID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NotificationData.sourceChannelID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NotificationData.notificationArticleID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NotificationData.notificationArticleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NotificationData.algoId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NotificationData.algoId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void __swiftcall NotificationData.init(notificationID:viewFromNotification:senderChannelID:sourceChannelID:notificationArticleID:notificationType:notificationInterruptionLevel:notificationSource:notificationSurfacedAs:algoId:)(NewsAnalytics::NotificationData *__return_ptr retstr, Swift::String_optional notificationID, Swift::Bool viewFromNotification, Swift::String_optional senderChannelID, Swift::String_optional sourceChannelID, Swift::String_optional notificationArticleID, NewsAnalytics::NotificationType_optional notificationType, NewsAnalytics::NotificationInterruptionLevel_optional notificationInterruptionLevel, NewsAnalytics::NotificationSource_optional notificationSource, NewsAnalytics::NotificationSurfacedAs_optional notificationSurfacedAs, Swift::String_optional algoId)
{
  v11 = *notificationType.value;
  v12 = *algoId.value._countAndFlagsBits;
  v13 = *algoId.value._object;
  v14 = *v15;
  retstr->notificationID = notificationID;
  retstr->viewFromNotification = viewFromNotification;
  retstr->senderChannelID = senderChannelID;
  retstr->sourceChannelID = sourceChannelID;
  retstr->notificationArticleID = notificationArticleID;
  retstr->notificationType.value = v11;
  retstr->notificationInterruptionLevel.value = v12;
  retstr->notificationSource.value = v13;
  retstr->notificationSurfacedAs.value = v14;
  retstr->algoId.value._countAndFlagsBits = v16;
  retstr->algoId.value._object = v17;
}

uint64_t sub_217C30234(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000016;
    if (a1 != 8)
    {
      v5 = 0x64496F676C61;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001DLL;
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
    v1 = 0x6163696669746F6ELL;
    v2 = 0x68437265646E6573;
    v3 = 0x6843656372756F73;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_217C303B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C3132C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C303DC(uint64_t a1)
{
  v2 = sub_217C30784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C30418(uint64_t a1)
{
  v2 = sub_217C30784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationData.encode(to:)(void *a1)
{
  sub_217C30F04(0, &qword_27CBA2780, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v25 = *(v1 + 16);
  v8 = *(v1 + 24);
  v23 = *(v1 + 32);
  v24 = v8;
  v9 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = v9;
  v10 = *(v1 + 56);
  v19 = *(v1 + 64);
  v20 = v10;
  LODWORD(v10) = *(v1 + 72);
  v17 = *(v1 + 73);
  v18 = v10;
  LODWORD(v10) = *(v1 + 74);
  v15 = *(v1 + 75);
  v16 = v10;
  v11 = *(v1 + 88);
  v14[1] = *(v1 + 80);
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C30784();
  sub_217D89E7C();
  v40 = 0;
  v12 = v26;
  sub_217D89C0C();
  if (!v12)
  {
    v39 = 1;
    sub_217D89C7C();
    v38 = 2;
    sub_217D89C0C();
    v37 = 3;
    sub_217D89C0C();
    v36 = 4;
    sub_217D89C0C();
    v35 = v18;
    v34 = 5;
    sub_217C307D8();
    sub_217D89C3C();
    v33 = v17;
    v32 = 6;
    sub_217C3082C();
    sub_217D89C3C();
    v31 = v16;
    v30 = 7;
    sub_217C30880();
    sub_217D89C3C();
    v29 = v15;
    v28 = 8;
    sub_217C308D4();
    sub_217D89C3C();
    v27 = 9;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C30784()
{
  result = qword_27CBA2788;
  if (!qword_27CBA2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2788);
  }

  return result;
}

unint64_t sub_217C307D8()
{
  result = qword_27CBA2790;
  if (!qword_27CBA2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2790);
  }

  return result;
}

unint64_t sub_217C3082C()
{
  result = qword_27CBA2798;
  if (!qword_27CBA2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2798);
  }

  return result;
}

unint64_t sub_217C30880()
{
  result = qword_27CBA27A0;
  if (!qword_27CBA27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27A0);
  }

  return result;
}

unint64_t sub_217C308D4()
{
  result = qword_27CBA27A8;
  if (!qword_27CBA27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27A8);
  }

  return result;
}

uint64_t NotificationData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C30F04(0, &qword_27CBA27B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C30784();
  sub_217D89E5C();
  if (v2)
  {
    v72 = v2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56[0]) = 0;
  v10 = sub_217D89B2C();
  v13 = v12;
  v14 = v10;
  LOBYTE(v56[0]) = 1;
  v49 = sub_217D89B9C();
  LOBYTE(v56[0]) = 2;
  v15 = sub_217D89B2C();
  v17 = v16;
  v47 = v15;
  v48 = v14;
  LOBYTE(v56[0]) = 3;
  v18 = sub_217D89B2C();
  v20 = v19;
  v45 = v18;
  v46 = a2;
  LOBYTE(v56[0]) = 4;
  v21 = sub_217D89B2C();
  v72 = 0;
  v23 = v22;
  v44 = v21;
  LOBYTE(v50) = 5;
  sub_217C30F68();
  v24 = v72;
  sub_217D89B5C();
  v72 = v24;
  if (v24 || (v43 = LOBYTE(v56[0]), LOBYTE(v50) = 6, sub_217C30FBC(), v25 = v72, sub_217D89B5C(), (v72 = v25) != 0) || (v42 = LOBYTE(v56[0]), LOBYTE(v50) = 7, sub_217C31010(), v26 = v72, sub_217D89B5C(), (v72 = v26) != 0) || (v41 = LOBYTE(v56[0]), LOBYTE(v50) = 8, sub_217C31064(), v27 = v72, sub_217D89B5C(), (v72 = v27) != 0))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_4;
  }

  v40 = LOBYTE(v56[0]);
  v70 = 9;
  *&v39 = sub_217D89B2C();
  *(&v39 + 1) = v28;
  v72 = 0;
  v49 &= 1u;
  v29 = v49;
  (*(v7 + 8))(v9, v6);
  v30 = v48;
  *&v50 = v48;
  *(&v50 + 1) = v13;
  LOBYTE(v51) = v29;
  *(&v51 + 1) = *v71;
  DWORD1(v51) = *&v71[3];
  v31 = v47;
  *(&v51 + 1) = v47;
  v32 = v45;
  *&v52 = v17;
  *(&v52 + 1) = v45;
  *&v53 = v20;
  *(&v53 + 1) = v44;
  *&v54 = v23;
  BYTE8(v54) = v43;
  BYTE9(v54) = v42;
  BYTE10(v54) = v41;
  BYTE11(v54) = v40;
  v33 = v39;
  v55 = v39;
  v34 = v52;
  v35 = v53;
  v36 = v39;
  v37 = v46;
  v46[4] = v54;
  v37[5] = v36;
  v37[2] = v34;
  v37[3] = v35;
  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  sub_217ADF510(&v50, v56);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v56[0] = v30;
  v56[1] = v13;
  v57 = v49;
  *v58 = *v71;
  *&v58[3] = *&v71[3];
  v59 = v31;
  v60 = v17;
  v61 = v32;
  v62 = v20;
  v63 = v44;
  v64 = v23;
  v65 = v43;
  v66 = v42;
  v67 = v41;
  v68 = v40;
  v69 = __PAIR128__(*(&v39 + 1), v33);
  return sub_217C310B8(v56);
}

void sub_217C30F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C30784();
    v7 = a3(a1, &type metadata for NotificationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C30F68()
{
  result = qword_27CBA27B8;
  if (!qword_27CBA27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27B8);
  }

  return result;
}

unint64_t sub_217C30FBC()
{
  result = qword_27CBA27C0;
  if (!qword_27CBA27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27C0);
  }

  return result;
}

unint64_t sub_217C31010()
{
  result = qword_27CBA27C8;
  if (!qword_27CBA27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27C8);
  }

  return result;
}

unint64_t sub_217C31064()
{
  result = qword_27CBA27D0;
  if (!qword_27CBA27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_217C3113C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_217C31198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217C31228()
{
  result = qword_27CBA27D8;
  if (!qword_27CBA27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27D8);
  }

  return result;
}

unint64_t sub_217C31280()
{
  result = qword_27CBA27E0;
  if (!qword_27CBA27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27E0);
  }

  return result;
}

unint64_t sub_217C312D8()
{
  result = qword_27CBA27E8;
  if (!qword_27CBA27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27E8);
  }

  return result;
}

uint64_t sub_217C3132C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0FB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68437265646E6573 && a2 == 0xEF44496C656E6E61 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843656372756F73 && a2 == 0xEF44496C656E6E61 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0FD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD0FF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD1010 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1030 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1050 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64496F676C61 && a2 == 0xE600000000000000)
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

NewsAnalytics::NotificationSurfacedAs_optional __swiftcall NotificationSurfacedAs.init(rawValue:)(Swift::String rawValue)
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

uint64_t NotificationSurfacedAs.rawValue.getter()
{
  v1 = 0x74616964656D6D69;
  if (*v0 != 1)
  {
    v1 = 0x756F59726F66;
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

uint64_t sub_217C3171C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74616964656D6D69;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x756F59726F66;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x74616964656D6D69;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x756F59726F66;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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

unint64_t sub_217C31824()
{
  result = qword_27CBA27F0;
  if (!qword_27CBA27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27F0);
  }

  return result;
}

uint64_t sub_217C31878()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C3191C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C319AC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C31A58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x74616964656D6D69;
  if (v2 != 1)
  {
    v5 = 0x756F59726F66;
    v4 = 0xE600000000000000;
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

unint64_t sub_217C31B78()
{
  result = qword_27CBA27F8;
  if (!qword_27CBA27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA27F8);
  }

  return result;
}

unint64_t sub_217C31BCC(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x7961646F54;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
      result = 0x2B7377654ELL;
      break;
    case 9:
      result = 0x747241664F646E45;
      break;
    case 10:
      result = 0x6F69647541;
      break;
    case 11:
      result = 0x7369486F69647541;
      break;
    case 12:
      result = 0x616C506F69647541;
      break;
    case 13:
      result = 0x6465766153;
      break;
    case 14:
      result = 0x79726F74736948;
      break;
    case 15:
      result = 0x686372616553;
      break;
    case 16:
      result = 0x6F48686372616553;
      break;
    case 17:
      result = 0x6957646572616853;
      break;
    case 18:
      result = 0x7374726F7053;
      break;
    case 19:
      result = 0x76457374726F7053;
      break;
    case 20:
      result = 0x7548656C7A7A7550;
      break;
    case 21:
      result = 0x7954656C7A7A7550;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6F42657069636552;
      break;
    case 24:
      result = 0x627548646F6F46;
      break;
    case 25:
      result = 0x6143657069636552;
      break;
    case 26:
      result = 0x636552664F646E45;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_217C31E24(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v45 = a5;
  v42 = a3;
  v43 = a4;
  v46 = sub_217D87A4C();
  v10 = *(v46 - 8);
  v11 = MEMORY[0x28223BE20](v46);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = a1[1];
  v47 = *a1;
  v48 = v21;

  MEMORY[0x21CEACC70](a6, a7);
  sub_217D8959C();

  sub_217D87A1C();

  v22 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_217B5ABE8((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v27 = *(v10 + 32);
  v25 = v10 + 32;
  v26 = v27;
  v28 = (*(v25 + 48) + 32) & ~*(v25 + 48);
  v29 = *(v25 + 40);
  v30 = v20;
  v31 = v46;
  v27(&v22[v28 + v29 * v24], v30, v46);
  if (v44[1])
  {
    sub_217D87A1C();
    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = sub_217B5ABE8((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    v26(&v22[v28 + v33 * v29], v18, v31);
  }

  sub_217D87A1C();
  v35 = *(v22 + 2);
  v34 = *(v22 + 3);
  if (v35 >= v34 >> 1)
  {
    v22 = sub_217B5ABE8((v34 > 1), v35 + 1, 1, v22);
  }

  *(v22 + 2) = v35 + 1;
  v26(&v22[v28 + v35 * v29], v15, v31);
  if (v45 != 1)
  {
    sub_217C31BCC(v42);
    if (v36)
    {
      v37 = v41;
      sub_217D87A1C();

      v39 = *(v22 + 2);
      v38 = *(v22 + 3);
      if (v39 >= v38 >> 1)
      {
        v22 = sub_217B5ABE8((v38 > 1), v39 + 1, 1, v22);
      }

      *(v22 + 2) = v39 + 1;
      v26(&v22[v28 + v39 * v29], v37, v31);
    }
  }

  return v22;
}

void sub_217C32214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a3;
  v6 = sub_217D87A4C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeViewEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C327B8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217D881AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  sub_217C32810(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v22 = swift_dynamicCast();
  v23 = *(v19 + 56);
  if (v22)
  {
    v23(v12, 0, 1, v18);
    (*(v19 + 32))(v21, v12, v18);
    v24 = sub_217D8816C();
    v25 = v48;
    v26 = sub_217D887BC();
    if (v25)
    {
      (*(v19 + 8))(v21, v18);
    }

    else
    {
      v28 = v26;
      v29 = v27;

      sub_217D8796C();
      swift_allocObject();
      sub_217D8795C();
      sub_217C328A4(&qword_27CBA2808, type metadata accessor for RecipeViewEvent.Model, &protocol conformance descriptor for RecipeViewEvent.Model);
      v30 = v47;
      sub_217D8794C();
      v48 = v29;

      sub_217D87A1C();
      v31 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v31[2];
      v32 = v31[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v41 = v33 + 1;
        v40 = sub_217B5ABE8((v32 > 1), v33 + 1, 1, v31);
        v34 = v41;
        v31 = v40;
      }

      v31[2] = v34;
      (*(v42 + 32))(v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, v46, v43);
      v53 = v31;
      v35 = v30 + v8[6];
      v50 = *(v35 + 32);
      v36 = *(v35 + 16);
      v49[0] = *v35;
      v49[1] = v36;
      v37 = v30 + v8[7];
      v52 = *(v37 + 32);
      v38 = *(v37 + 16);
      v51[0] = *v37;
      v51[1] = v38;
      v39 = sub_217C31E24(v49, v51, *(v30 + v8[8]), *(v30 + v8[8] + 8), *(v30 + v8[8] + 16), v44, v45);
      sub_217B0E7A0(v39);
      sub_217AE010C(v28, v48);
      sub_217C328EC(v30, type metadata accessor for RecipeViewEvent.Model);
      (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    v23(v12, 1, 1, v18);
    sub_217C328EC(v12, sub_217C327B8);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_217C327B8(uint64_t a1)
{
  if (!qword_27CBA2800)
  {
    sub_217C32810(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA2800);
    }
  }
}

void sub_217C32810(uint64_t a1)
{
  if (!qword_2811C8920)
  {
    type metadata accessor for RecipeViewEvent(255);
    sub_217C328A4(qword_2811C61B8, type metadata accessor for RecipeViewEvent, &protocol conformance descriptor for RecipeViewEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8920);
    }
  }
}

uint64_t sub_217C328A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217C328EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FCRelativePriority.analyticsPriority.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    type metadata accessor for FCRelativePriority(0);
    result = sub_217D89D8C();
    __break(1u);
  }

  else
  {
    *a2 = result + 1;
  }

  return result;
}

uint64_t sub_217C32A68()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2810);
  __swift_project_value_buffer(v0, qword_27CBA2810);
  return sub_217D8866C();
}

uint64_t EOAGroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAGroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 44);
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C335CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t EOAGroupExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 44);
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAGroupExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_217C33B20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAGroupExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 24));
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

uint64_t EOAGroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 36);
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

uint64_t EOAGroupExposureEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 40);
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

uint64_t EOAGroupExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 44));
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

__n128 EOAGroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v17 = *(a4 + 1);
  v16 = *(a4 + 2);
  v38 = a5[1];
  v39 = *a5;
  v44 = a7[1];
  v45 = *a7;
  v42 = *(a7 + 17);
  v43 = *(a7 + 16);
  v40 = a7[4];
  v41 = a7[3];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[3];
  v22[2] = a3[2];
  v22[3] = v23;
  v24 = a3[1];
  *v22 = *a3;
  v22[1] = v24;
  v25 = a3[8];
  v22[7] = a3[7];
  v22[8] = v25;
  v26 = a3[6];
  v22[5] = a3[5];
  v22[6] = v26;
  v22[4] = a3[4];
  v27 = a9 + v19[7];
  *v27 = v15;
  *(v27 + 8) = v17;
  *(v27 + 16) = v16;
  v28 = (a9 + v19[8]);
  *v28 = v39;
  v28[1] = v38;
  v29 = a9 + v19[9];
  v30 = *(a6 + 48);
  *(v29 + 32) = *(a6 + 32);
  *(v29 + 48) = v30;
  v31 = *(a6 + 16);
  *v29 = *a6;
  *(v29 + 16) = v31;
  *(v29 + 127) = *(a6 + 127);
  v32 = *(a6 + 112);
  *(v29 + 96) = *(a6 + 96);
  *(v29 + 112) = v32;
  v33 = *(a6 + 80);
  *(v29 + 64) = *(a6 + 64);
  *(v29 + 80) = v33;
  v34 = a9 + v19[10];
  *v34 = v45;
  *(v34 + 8) = v44;
  *(v34 + 16) = v43;
  *(v34 + 17) = v42;
  *(v34 + 24) = v41;
  *(v34 + 32) = v40;
  v35 = a9 + v19[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  result = *(a8 + 32);
  *(v35 + 32) = result;
  *(v35 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217C34040()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000021;
    if (v1 == 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (*v0 <= 5u)
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
    v2 = 0x746144746E657665;
    v3 = 0x74614470756F7267;
    if (v1 != 2)
    {
      v3 = 0x6174614464656566;
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
}

uint64_t sub_217C34144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C35B8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C3416C(uint64_t a1)
{
  v2 = sub_217C34834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C341A8(uint64_t a1)
{
  v2 = sub_217C34834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAGroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3516C(0, &qword_27CBA2828, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v45 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C34834();
  sub_217D89E7C();
  LOBYTE(v94[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for EOAGroupExposureEvent.Model(0);
    v102[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[5];
    v13 = v11[7];
    v99 = v11[6];
    v100 = v13;
    v14 = v11[7];
    v101 = v11[8];
    v15 = v11[1];
    v16 = v11[3];
    v95 = v11[2];
    v96 = v16;
    v17 = v11[3];
    v18 = v11[5];
    v97 = v11[4];
    v98 = v18;
    v19 = v11[1];
    v94[0] = *v11;
    v94[1] = v19;
    v91 = v99;
    v92 = v14;
    v93 = v11[8];
    v87 = v95;
    v88 = v17;
    v89 = v97;
    v90 = v12;
    v85 = v94[0];
    v86 = v15;
    v84 = 2;
    sub_217AF7618(v94, v83);
    sub_217A5D3B4();
    sub_217D89CAC();
    v83[6] = v91;
    v83[7] = v92;
    v83[8] = v93;
    v83[2] = v87;
    v83[3] = v88;
    v83[4] = v89;
    v83[5] = v90;
    v83[0] = v85;
    v83[1] = v86;
    sub_217AF8104(v83);
    v20 = v3 + v10[7];
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    LOBYTE(v72) = *v20;
    *(&v72 + 1) = v21;
    *&v73 = v22;
    LOBYTE(v64) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    v23 = (v3 + v10[8]);
    v24 = v23[1];
    v81 = *v23;
    v82 = v24;
    v80 = 4;
    sub_217BA73F4();

    sub_217D89CAC();

    v25 = (v3 + v10[9]);
    v26 = v25[5];
    v27 = v25[7];
    v78 = v25[6];
    *v79 = v27;
    v28 = v25[1];
    v29 = v25[3];
    v74 = v25[2];
    v75 = v29;
    v30 = v25[3];
    v31 = v25[5];
    v76 = v25[4];
    v77 = v31;
    v32 = v25[1];
    v72 = *v25;
    v73 = v32;
    v33 = v25[7];
    v70 = v78;
    v71[0] = v33;
    v66 = v74;
    v67 = v30;
    v68 = v76;
    v69 = v26;
    *&v79[15] = *(v25 + 127);
    *(v71 + 15) = *(v25 + 127);
    v64 = v72;
    v65 = v28;
    v63 = 5;
    sub_217AD1630(&v72, v61);
    sub_217ACF52C();
    sub_217D89CAC();
    v61[6] = v70;
    *v62 = v71[0];
    *&v62[15] = *(v71 + 15);
    v61[2] = v66;
    v61[3] = v67;
    v61[4] = v68;
    v61[5] = v69;
    v61[0] = v64;
    v61[1] = v65;
    sub_217AD2864(v61);
    v34 = (v3 + v10[10]);
    v35 = v34[1];
    v36 = *(v34 + 16);
    v37 = *(v34 + 17);
    v38 = v34[3];
    v39 = v34[4];
    v55 = *v34;
    v56 = v35;
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v60 = v39;
    v54 = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v40 = (v3 + v10[11]);
    v41 = v40[1];
    v52[0] = *v40;
    v52[1] = v41;
    v43 = *v40;
    v42 = v40[1];
    v52[2] = v40[2];
    v53 = *(v40 + 48);
    v48 = v43;
    v49 = v42;
    v50 = v40[2];
    v51 = *(v40 + 48);
    v47 = 7;
    sub_217ACC004(v52, v45);
    sub_217A55B98();
    sub_217D89CAC();
    v45[0] = v48;
    v45[1] = v49;
    v45[2] = v50;
    v46 = v51;
    sub_217ACC69C(v45);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C34834()
{
  result = qword_27CBA2830;
  if (!qword_27CBA2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2830);
  }

  return result;
}

uint64_t EOAGroupExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_217D889CC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3516C(0, &qword_27CBA2838, MEMORY[0x277D844C8]);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_217C34834();
  v12 = v52;
  sub_217D89E5C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  v13 = v48;
  v14 = v10;
  LOBYTE(v62) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v15 = v50;
  sub_217D89BCC();
  v16 = *(v47 + 32);
  v52 = v14;
  v16(v14, v51, v5);
  LOBYTE(v62) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v17 = v13;
  v18 = v46;
  sub_217D89BCC();
  v43 = v5;
  v51 = 0;
  (*(v45 + 32))(v52 + v8[5], v17, v18);
  v61 = 2;
  sub_217A5D308();
  sub_217D89BCC();
  v19 = (v52 + v8[6]);
  v20 = v69;
  v19[6] = v68;
  v19[7] = v20;
  v19[8] = v70;
  v21 = v65;
  v19[2] = v64;
  v19[3] = v21;
  v22 = v67;
  v19[4] = v66;
  v19[5] = v22;
  v23 = v63;
  *v19 = v62;
  v19[1] = v23;
  LOBYTE(v53) = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v24 = v49;
  v25 = v52 + v8[7];
  *v25 = v59[0];
  *(v25 + 8) = *(v59 + 8);
  LOBYTE(v53) = 4;
  sub_217BA73A0();
  sub_217D89BCC();
  v26 = *(&v59[0] + 1);
  v27 = (v52 + v8[8]);
  *v27 = *&v59[0];
  v27[1] = v26;
  v58 = 5;
  sub_217ACF4D8();
  sub_217D89BCC();
  v28 = v52 + v8[9];
  v29 = v59[5];
  v30 = *v60;
  *(v28 + 96) = v59[6];
  *(v28 + 112) = v30;
  *(v28 + 127) = *&v60[15];
  v31 = v59[3];
  *(v28 + 32) = v59[2];
  *(v28 + 48) = v31;
  *(v28 + 64) = v59[4];
  *(v28 + 80) = v29;
  v32 = v59[1];
  *v28 = v59[0];
  *(v28 + 16) = v32;
  v57 = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v33 = *(&v53 + 1);
  v34 = v54;
  v35 = BYTE1(v54);
  v36 = *(&v54 + 1);
  v37 = v55;
  v38 = v52 + v8[10];
  *v38 = v53;
  *(v38 + 8) = v33;
  *(v38 + 16) = v34;
  *(v38 + 17) = v35;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  v57 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v24 + 8))(0, v15);
  v39 = v52;
  v40 = v52 + v8[11];
  v41 = v54;
  *v40 = v53;
  *(v40 + 16) = v41;
  *(v40 + 32) = v55;
  *(v40 + 48) = v56;
  sub_217C351D0(v39, v44);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return sub_217C35234(v39);
}

void sub_217C3516C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C34834();
    v7 = a3(a1, &type metadata for EOAGroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C351D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C35234(uint64_t a1)
{
  v2 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C35368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C335CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C335CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C335CC(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C335CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217C335CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_217C335CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_217C35720(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217C335CC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217C335CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217C335CC(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
          if (v5 <= 0x3F)
          {
            sub_217C335CC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
            if (v6 <= 0x3F)
            {
              sub_217C335CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
              if (v7 <= 0x3F)
              {
                sub_217C335CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

uint64_t sub_217C359AC(uint64_t a1)
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

unint64_t sub_217C35A88()
{
  result = qword_27CBA2840;
  if (!qword_27CBA2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2840);
  }

  return result;
}

unint64_t sub_217C35AE0()
{
  result = qword_27CBA2848;
  if (!qword_27CBA2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2848);
  }

  return result;
}

unint64_t sub_217C35B38()
{
  result = qword_27CBA2850;
  if (!qword_27CBA2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2850);
  }

  return result;
}

uint64_t sub_217C35B8C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000013 && 0x8000000217DCED30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCED50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCED70 == a2 || (sub_217D89D4C() & 1) != 0)
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

uint64_t UserSubscriptionContextData.purchaseSources.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

NewsAnalytics::UserSubscriptionContextData __swiftcall UserSubscriptionContextData.init(isPurchaser:purchaseSources:)(Swift::Bool isPurchaser, Swift::OpaquePointer purchaseSources)
{
  *v2 = isPurchaser;
  *(v2 + 8) = purchaseSources;
  result.purchaseSources = purchaseSources;
  result.isPurchaser = isPurchaser;
  return result;
}

uint64_t sub_217C35EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6168637275507369 && a2 == 0xEB00000000726573;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEF73656372756F53)
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

uint64_t sub_217C35FAC(uint64_t a1)
{
  v2 = sub_217A64958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C35FE8(uint64_t a1)
{
  v2 = sub_217A64958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSubscriptionContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A64708(0, &qword_2811BC940, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A64958();
  sub_217D89E5C();
  if (!v2)
  {
    v15 = 0;
    v13 = sub_217D89B9C() & 1;
    sub_217A64AAC();
    v14 = 1;
    sub_217A64AFC(&qword_2811BCDF0, sub_217C36234, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v11 = v12[1];
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217C36234()
{
  result = qword_2811C6B08;
  if (!qword_2811C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6B08);
  }

  return result;
}

unint64_t sub_217C362C4()
{
  result = qword_27CBA2858;
  if (!qword_27CBA2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2858);
  }

  return result;
}

void ChannelDataFactory.createChannelData(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v4 = [a1 identifier];
  v5 = sub_217D8954C();
  v7 = v6;

  v8 = FCChannelProviding.isAdSupported()();
  swift_getObjectType();
  v9 = FCBundleSubscriptionManagerType.bundleContainsChannel(_:)(a1);
  v10 = [a1 language];
  if (v10)
  {
    v11 = v10;
    v12 = sub_217D8954C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 17) = v9 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

void ChannelDataFactory.createChannelContextData(for:)(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_217C36530(v2, a1, &v12 + 1);
  v5 = BYTE1(v12);
  sub_217C36680(&v12, a1, v2);
  v6 = v12;
  v7 = *(v2 + 32);
  v8 = [a1 identifier];
  if (!v8)
  {
    sub_217D8954C();
    v8 = sub_217D8951C();
  }

  v9 = [v7 hasSubscriptionToTagID_];

  v10 = [a1 identifier];
  if (!v10)
  {
    sub_217D8954C();
    v10 = sub_217D8951C();
  }

  v11 = [v7 hasMutedSubscriptionForTagID_];

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = v6;
}