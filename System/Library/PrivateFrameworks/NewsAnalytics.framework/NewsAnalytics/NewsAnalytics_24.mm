unint64_t sub_217CF6ED4()
{
  result = qword_27CBA45B8;
  if (!qword_27CBA45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45B8);
  }

  return result;
}

uint64_t sub_217CF6F28()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF7028(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CF7114(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CF721C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCB8E0;
  v6 = 0xD000000000000012;
  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (v2 != 2)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7469617274726F70;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_217CF7398()
{
  result = qword_2811C1F18;
  if (!qword_2811C1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F18);
  }

  return result;
}

uint64_t ArticleViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CF7484(uint64_t a1)
{
  v2 = sub_217CF7648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF74C0(uint64_t a1)
{
  v2 = sub_217CF7648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewData.encode(to:)(void *a1)
{
  sub_217CF7820(0, &qword_2811BC768, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF7648()
{
  result = qword_2811C6938;
  if (!qword_2811C6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6938);
  }

  return result;
}

uint64_t ArticleViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF7820(0, &qword_2811BCAB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
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

void sub_217CF7820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF7648();
    v7 = a3(a1, &type metadata for ArticleViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF78A4(void *a1)
{
  sub_217CF7820(0, &qword_2811BC768, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF7648();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF7A14()
{
  result = qword_27CBA45C0;
  if (!qword_27CBA45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45C0);
  }

  return result;
}

unint64_t sub_217CF7A6C()
{
  result = qword_2811C6928;
  if (!qword_2811C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6928);
  }

  return result;
}

unint64_t sub_217CF7AC4()
{
  result = qword_2811C6930;
  if (!qword_2811C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6930);
  }

  return result;
}

uint64_t sub_217CF7BE0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA45C8);
  __swift_project_value_buffer(v0, qword_27CBA45C8);
  return sub_217D8866C();
}

uint64_t AppSessionResignEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResignEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResignEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionResignEvent(0);
  v5 = *(v4 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppSessionResignEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionResignEvent.Model(0) + 20));
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

uint64_t AppSessionResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppSessionResignEvent.Model.init(eventData:userBundleSubscriptionContextData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppSessionResignEvent.Model(0);
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

uint64_t sub_217CF837C(uint64_t a1)
{
  v2 = sub_217CF86A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF83B8(uint64_t a1)
{
  v2 = sub_217CF86A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CF8AF4(0, &qword_27CBA45E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF86A0();
  sub_217D89E7C();
  v29 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AppSessionResignEvent.Model(0);
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

unint64_t sub_217CF86A0()
{
  result = qword_27CBA45E8;
  if (!qword_27CBA45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45E8);
  }

  return result;
}

uint64_t AppSessionResignEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CF8AF4(0, &qword_27CBA45F0, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AppSessionResignEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF86A0();
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
  sub_217CF8B58(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CF8BBC(v18);
}

void sub_217CF8AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF86A0();
    v7 = a3(a1, &type metadata for AppSessionResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF8B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CF8BBC(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CF8D54()
{
  result = qword_27CBA4608;
  if (!qword_27CBA4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4608);
  }

  return result;
}

unint64_t sub_217CF8DAC()
{
  result = qword_27CBA4610;
  if (!qword_27CBA4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4610);
  }

  return result;
}

unint64_t sub_217CF8E04()
{
  result = qword_27CBA4618;
  if (!qword_27CBA4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4618);
  }

  return result;
}

uint64_t ExternalAnalyticsURLProvider.__allocating_init(queryItemsGenerators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExternalAnalyticsURLProvider.generateURL<A>(from:configuration:sessionID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a4;
  v8 = v7;
  v38 = a6;
  v37 = a5;
  v34 = a2;
  v35 = a7;
  v11 = sub_217D87CCC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CFA2FC(0, &qword_2811C8CA0, MEMORY[0x277CC9260]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = sub_217CF91F4(v8, a1, a3, v36, v37, v38);
  if (v21)
  {
    v22 = v21;
    sub_217D87CBC();
    v23 = sub_217D87CAC();
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    sub_217CF92FC(v34, v22, v23, v25, v20);

    sub_217A61C54(v20, v18);
    v26 = sub_217D87BAC();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v18, 1, v26) == 1)
    {
      v28 = MEMORY[0x277CC9260];
      sub_217A61D58(v18, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      sub_217CF9FBC();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
      return sub_217A61D58(v20, &qword_2811C8CA0, v28);
    }

    else
    {
      sub_217A61D58(v20, &qword_2811C8CA0, MEMORY[0x277CC9260]);
      v32 = v35;
      (*(v27 + 32))(v35, v18, v26);
      return (*(v27 + 56))(v32, 0, 1, v26);
    }
  }

  else
  {
    v31 = sub_217D87BAC();
    return (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  }
}

uint64_t sub_217CF91F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  sub_217A4998C(v6 + 32, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (*(v10 + 8))(a2, a3, a4, a5, a6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

id sub_217CF92FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_217CFA2FC(0, &qword_2811C8CA0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v75 - v11;
  v107 = sub_217D87BAC();
  v12 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v93 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_217D87A4C();
  v14 = *(v112 - 8);
  v15 = MEMORY[0x28223BE20](v112);
  v111 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v94 = &v75 - v23;
  sub_217CFA2FC(0, qword_2811C8CB8, MEMORY[0x277CC8958]);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v101 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v29 = sub_217D87AAC();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v96 = &v75 - v33;
  v109 = a1;
  v34 = [a1 analyticsBaseUrl];
  if (!v34)
  {
    return (*(v12 + 56))(a5, 1, 1, v107);
  }

  v89 = a4;
  v88 = a2;
  v35 = v34;
  sub_217D8954C();
  v37 = v36;

  sub_217D87A9C();
  v38 = *(v30 + 48);
  v95 = v30 + 48;
  if ((v38)(v28, 1, v29) == 1)
  {

    sub_217A61D58(v28, qword_2811C8CB8, MEMORY[0x277CC8958]);
    return (*(v12 + 56))(a5, 1, 1, v107);
  }

  (*(v30 + 32))(v96, v28, v29);
  v40 = [v109 queryParameterConfigs];
  if (!v40 || (v41 = v40, v113 = 0, sub_217CFA350(), sub_217D896DC(), v41, (v42 = v113) == 0))
  {

    sub_217CFA010(v88, a3, v89);
    v74 = v96;
    sub_217D87A6C();
LABEL_52:
    sub_217D87A8C();
    return (*(v30 + 8))(v74, v29);
  }

  v43 = v113 & 0xFFFFFFFFFFFFFF8;
  v106 = v113;
  if (v113 >> 62)
  {
LABEL_55:
    v44 = sub_217D89AAC();
    v42 = v106;
  }

  else
  {
    v44 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = a5;
  v45 = MEMORY[0x277D84F90];
  if (!v44)
  {
LABEL_51:

    v74 = v96;
    sub_217D87A6C();
    goto LABEL_52;
  }

  v86 = v43;
  v87 = v38;
  v83 = a3;
  a3 = 0;
  v105 = v42 & 0xC000000000000001;
  v100 = v14 + 32;
  v84 = (v12 + 56);
  v81 = (v30 + 16);
  v80 = (v30 + 8);
  v79 = (v12 + 48);
  v77 = (v12 + 32);
  v98 = v14 + 8;
  v99 = (v14 + 16);
  v76 = (v12 + 8);
  v108 = v29;
  v104 = v30;
  v102 = v44;
  v82 = v14;
  v103 = v37;
  while (1)
  {
    if (v105)
    {
      v47 = MEMORY[0x21CEAD080](a3, v42);
    }

    else
    {
      if (a3 >= *(v86 + 16))
      {
        goto LABEL_54;
      }

      v47 = *(v42 + 8 * a3 + 32);
    }

    a5 = v47;
    v30 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v48 = [v109 eventQueryParameterName];
    if (!v48)
    {
      break;
    }

    v49 = v48;
    v50 = sub_217D8954C();
    v43 = v51;

    v52 = [a5 name];
    if (!v52)
    {
      goto LABEL_36;
    }

    v53 = v52;
    v54 = sub_217D8954C();
    v56 = v55;

    if (v54 == v50 && v56 == v43)
    {
    }

    else
    {
      v57 = sub_217D89D4C();

      if ((v57 & 1) == 0)
      {
LABEL_36:

        break;
      }
    }

    v85 = v50;
    result = [a5 value];
    if (!result)
    {
      goto LABEL_57;
    }

    v58 = result;
    sub_217D8954C();

    v38 = v101;
    sub_217D87A9C();

    v29 = v108;
    v59 = v87;
    if (!v87(v38, 1, v108))
    {
      v113 = MEMORY[0x277D84F90];

      sub_217B0E7A0(v60);
      sub_217D87A1C();
      v61 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_217B5ABE8(0, v61[2] + 1, 1, v61);
      }

      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_217B5ABE8((v62 > 1), v63 + 1, 1, v61);
      }

      v61[2] = v63 + 1;
      (*(v14 + 32))(v61 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v63, v94, v112);
      v38 = v101;
      sub_217D87A6C();
      v29 = v108;
      v59 = v87;
    }

    if (v59(v38, 1, v29))
    {

      v12 = v97;
      (*v84)(v97, 1, 1, v107);
    }

    else
    {
      v64 = v90;
      (*v81)(v90, v38, v29);
      v12 = v97;
      sub_217D87A8C();
      (*v80)(v64, v29);
      v65 = v107;
      if ((*v79)(v12, 1, v107) != 1)
      {
        (*v77)(v93, v12, v65);
        sub_217D87B5C();
        v12 = v91;
        sub_217D87A1C();

        (*v99)(v92, v12, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_217B5ABE8(0, v45[2] + 1, 1, v45);
        }

        v14 = v82;
        v72 = v45[2];
        v71 = v45[3];
        v43 = v72 + 1;
        v29 = v108;
        if (v72 >= v71 >> 1)
        {
          v45 = sub_217B5ABE8((v71 > 1), v72 + 1, 1, v45);
        }

        v73 = v112;
        (*(v14 + 8))(v91, v112);
        (*v76)(v93, v107);
        v45[2] = v43;
        (*(v14 + 32))(v45 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v72, v92, v73);
        v38 = v101;
        goto LABEL_13;
      }

      v38 = v101;
      v14 = v82;
    }

    sub_217A61D58(v12, &qword_2811C8CA0, MEMORY[0x277CC9260]);
LABEL_13:
    v37 = v103;
    sub_217A61D58(v38, qword_2811C8CB8, MEMORY[0x277CC8958]);
LABEL_14:
    ++a3;
    v46 = v30 == v102;
    v30 = v104;
    v42 = v106;
    if (v46)
    {
      goto LABEL_51;
    }
  }

  result = [a5 name];
  if (result)
  {
    v66 = result;
    sub_217D8954C();

    v67 = [a5 value];
    if (v67)
    {
      v68 = v67;
      sub_217D8954C();
    }

    v12 = v110;
    sub_217D87A1C();

    (*v99)(v111, v12, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_217B5ABE8(0, v45[2] + 1, 1, v45);
    }

    v29 = v108;
    v38 = v45[2];
    v69 = v45[3];
    v43 = v38 + 1;
    if (v38 >= v69 >> 1)
    {
      v45 = sub_217B5ABE8((v69 > 1), v38 + 1, 1, v45);
    }

    v70 = v112;
    (*(v14 + 8))(v110, v112);
    v45[2] = v43;
    (*(v14 + 32))(v45 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v111, v70);
    v37 = v103;
    goto LABEL_14;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_217CF9FBC()
{
  result = qword_27CBA4620;
  if (!qword_27CBA4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4620);
  }

  return result;
}

void *sub_217CFA010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_217D87A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];

  sub_217B0E7A0(v7);
  sub_217D87A1C();
  v8 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_217B5ABE8(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_217B5ABE8((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6, v3);
  return v8;
}

uint64_t ExternalAnalyticsURLProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_217CFA2A8()
{
  result = qword_27CBA4628;
  if (!qword_27CBA4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4628);
  }

  return result;
}

void sub_217CFA2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_217CFA350()
{
  result = qword_2811BCBA8;
  if (!qword_2811BCBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCBA8);
  }

  return result;
}

uint64_t HeartbeatData.init(userID:timestamp:eventID:osVersion:osBundleVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for HeartbeatData(0);
  v18 = v17[5];
  v19 = sub_217D87C9C();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t HeartbeatData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HeartbeatData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeartbeatData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartbeatData(0) + 20);
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartbeatData.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartbeatData(0) + 20);
  v4 = sub_217D87C9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartbeatData.eventID.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 24));

  return v1;
}

uint64_t HeartbeatData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 28));

  return v1;
}

uint64_t HeartbeatData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osBundleVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 32));

  return v1;
}

uint64_t HeartbeatData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_217CFA8AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CFAF68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CFA8D4(uint64_t a1)
{
  v2 = sub_217A5B1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFA910(uint64_t a1)
{
  v2 = sub_217A5B1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_217D87C9C();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5B0B0(0, &qword_27CBA4630, MEMORY[0x277D844C8]);
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for HeartbeatData(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5B1AC();
  v31 = v8;
  v12 = v33;
  sub_217D89E5C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v38 = 0;
  *v11 = sub_217D89B8C();
  v11[1] = v14;
  v33 = v14;
  v37 = 1;
  sub_217A5B3A8(&qword_27CBA4638, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_217D89BCC();
  (*(v13 + 32))(v11 + v9[5], v5, v3);
  v36 = 2;
  v27[1] = 0;
  v15 = sub_217D89B8C();
  v16 = (v11 + v9[6]);
  *v16 = v15;
  v16[1] = v17;
  v35 = 3;
  v18 = sub_217D89B8C();
  v19 = (v11 + v9[7]);
  *v19 = v18;
  v19[1] = v20;
  v34 = 4;
  v21 = sub_217D89B8C();
  v27[0] = v22;
  v23 = v21;
  (*(v30 + 8))(v31, v32);
  v24 = (v11 + v9[8]);
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_217B8B618(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CFADD4(v11);
}

uint64_t sub_217CFADD4(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CFAF14()
{
  result = qword_27CBA4640;
  if (!qword_27CBA4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4640);
  }

  return result;
}

uint64_t sub_217CFAF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
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

NewsAnalytics::SubscribeButtonTargetType_optional __swiftcall SubscribeButtonTargetType.init(rawValue:)(Swift::String rawValue)
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

uint64_t SubscribeButtonTargetType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x50676E69646E616CLL;
  v4 = 1802398060;
  if (v1 != 3)
  {
    v4 = 0x65676150706D61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573616863727570;
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

unint64_t sub_217CFB23C()
{
  result = qword_27CBA4648;
  if (!qword_27CBA4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4648);
  }

  return result;
}

uint64_t sub_217CFB290()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CFB380(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CFB45C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CFB554(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000656761;
  v6 = 0x50676E69646E616CLL;
  v7 = 0xE400000000000000;
  v8 = 1802398060;
  if (v2 != 3)
  {
    v8 = 0x65676150706D61;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xED00007465656853;
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

unint64_t sub_217CFB6C0()
{
  result = qword_2811BF150;
  if (!qword_2811BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF150);
  }

  return result;
}

NewsAnalytics::LiveActivityOrigination_optional __swiftcall LiveActivityOrigination.init(rawValue:)(Swift::String rawValue)
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

uint64_t LiveActivityOrigination.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465626D45626577;
  v4 = 0x50676E69646E616CLL;
  if (v1 != 4)
  {
    v4 = 0x6B6E696C70656564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6163696669746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x6C69546F63736964;
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

unint64_t sub_217CFB850()
{
  result = qword_27CBA4650;
  if (!qword_27CBA4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4650);
  }

  return result;
}

uint64_t sub_217CFB8AC(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217CFB9C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  v7 = 0xEB00000000656761;
  v8 = 0x50676E69646E616CLL;
  if (v2 != 4)
  {
    v8 = 0x6B6E696C70656564;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006E6F6974;
  v10 = 0x6163696669746F6ELL;
  if (v2 != 1)
  {
    v10 = 0x6C69546F63736964;
    v9 = 0xE900000000000065;
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

unint64_t sub_217CFBB58()
{
  result = qword_27CBA4658;
  if (!qword_27CBA4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4658);
  }

  return result;
}

uint64_t backgroundTask(withName:work:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = sub_217D8951C();
  v6 = [v4 beginBackgroundTaskWithName:v5 expirationHandler:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  a3(sub_217CFBC90, v7);
}

uint64_t backgroundTask(withName:timeout:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = sub_217D88FCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  v22 = a3;
  v23 = a4;
  sub_217CFBFF0();
  swift_allocObject();
  sub_217D88DDC();
  v14 = [objc_opt_self() sharedApplication];
  v15 = sub_217D8951C();
  v16 = [v14 beginBackgroundTaskWithName:v15 expirationHandler:0];

  sub_217D88FBC();
  sub_217D88FDC();
  v17 = *(v8 + 8);
  v17(v11, v7);
  v18 = sub_217D88D6C();
  sub_217D88DCC();

  v17(v13, v7);
  sub_217A569F4();
  v19 = sub_217D8982C();
  *(swift_allocObject() + 16) = v16;
  sub_217D88DBC();
}

uint64_t sub_217CFBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_217A591DC;
  *(v9 + 24) = v8;

  a5(sub_217A590F0, v9);
}

void sub_217CFBFF0()
{
  if (!qword_2811BCF18)
  {
    v0 = sub_217D88DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCF18);
    }
  }
}

void sub_217CFC044(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 endBackgroundTask_];
}

void __swiftcall ChannelData.init(channelID:adSupportedChannel:isBundleChannel:language:)(NewsAnalytics::ChannelData *__return_ptr retstr, Swift::String channelID, Swift::Bool adSupportedChannel, Swift::Bool isBundleChannel, Swift::String language)
{
  retstr->channelID = channelID;
  retstr->adSupportedChannel = adSupportedChannel;
  retstr->isBundleChannel = isBundleChannel;
  retstr->language = language;
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
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ChannelData.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_217CFC244()
{
  v1 = 0x496C656E6E616863;
  v2 = 0x656C646E75427369;
  if (*v0 != 2)
  {
    v2 = 0x65676175676E616CLL;
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

uint64_t sub_217CFC2D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CFC9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CFC2FC(uint64_t a1)
{
  v2 = sub_217CFC550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFC338(uint64_t a1)
{
  v2 = sub_217CFC550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelData.encode(to:)(void *a1)
{
  sub_217CFC81C(0, &qword_2811BC858, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v14 = *(v1 + 16);
  v12 = *(v1 + 17);
  v8 = *(v1 + 24);
  v11[0] = *(v1 + 32);
  v11[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFC550();
  sub_217D89E7C();
  v18 = 0;
  v9 = v13;
  sub_217D89C6C();
  if (!v9)
  {
    v17 = 1;
    sub_217D89C7C();
    v16 = 2;
    sub_217D89C7C();
    v15 = 3;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CFC550()
{
  result = qword_2811C7D98;
  if (!qword_2811C7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D98);
  }

  return result;
}

uint64_t ChannelData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CFC81C(0, &qword_2811BCB48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFC550();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v26 = 1;
  v23 = sub_217D89B9C() & 1;
  v25 = 2;
  v28 = sub_217D89B9C() & 1;
  v24 = 3;
  v14 = sub_217D89B8C();
  v17 = v16;
  v18 = *(v7 + 8);
  v22 = v14;
  v18(v9, v6);
  v19 = v23;
  v20 = v28;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 17) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CFC81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFC550();
    v7 = a3(a1, &type metadata for ChannelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CFC8CC()
{
  result = qword_27CBA4660;
  if (!qword_27CBA4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4660);
  }

  return result;
}

unint64_t sub_217CFC924()
{
  result = qword_2811C7D88;
  if (!qword_2811C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D88);
  }

  return result;
}

unint64_t sub_217CFC97C()
{
  result = qword_2811C7D90;
  if (!qword_2811C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D90);
  }

  return result;
}

uint64_t sub_217CFC9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD2600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEF6C656E6E616843 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
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

uint64_t AppLaunchTakeoverTriggerData.articleId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppLaunchTakeoverTriggerData.articleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::AppLaunchTakeoverTriggerData __swiftcall AppLaunchTakeoverTriggerData.init(result:articleId:)(NewsAnalytics::AppLaunchTakeoverTriggerResult result, Swift::String_optional articleId)
{
  *v2 = *result;
  *(v2 + 8) = articleId;
  v3.articleId = articleId;
  v3.result = result;
  return v3;
}

uint64_t sub_217CFCC24()
{
  if (*v0)
  {
    return 0x49656C6369747261;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_217CFCC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000064)
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

uint64_t sub_217CFCD40(uint64_t a1)
{
  v2 = sub_217CFCF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFCD7C(uint64_t a1)
{
  v2 = sub_217CFCF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLaunchTakeoverTriggerData.encode(to:)(void *a1)
{
  sub_217CFD1D8(0, &qword_2811BC560, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFCF48();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217CFCF9C();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CFCF48()
{
  result = qword_2811BEB80;
  if (!qword_2811BEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB80);
  }

  return result;
}

unint64_t sub_217CFCF9C()
{
  result = qword_2811BE1C0;
  if (!qword_2811BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1C0);
  }

  return result;
}

uint64_t AppLaunchTakeoverTriggerData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CFD1D8(0, &qword_27CBA4668, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFCF48();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_217CFD23C();
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

void sub_217CFD1D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFCF48();
    v7 = a3(a1, &type metadata for AppLaunchTakeoverTriggerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CFD23C()
{
  result = qword_27CBA4670;
  if (!qword_27CBA4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4670);
  }

  return result;
}

unint64_t sub_217CFD294()
{
  result = qword_2811BEB60;
  if (!qword_2811BEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB60);
  }

  return result;
}

unint64_t sub_217CFD2EC()
{
  result = qword_2811BEB68;
  if (!qword_2811BEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB68);
  }

  return result;
}

unint64_t sub_217CFD394()
{
  result = qword_27CBA4678;
  if (!qword_27CBA4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4678);
  }

  return result;
}

unint64_t sub_217CFD3EC()
{
  result = qword_2811BEB70;
  if (!qword_2811BEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB70);
  }

  return result;
}

unint64_t sub_217CFD444()
{
  result = qword_2811BEB78;
  if (!qword_2811BEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB78);
  }

  return result;
}

uint64_t sub_217CFD498(uint64_t a1, uint64_t a2, float a3)
{
  v7 = sub_217D8946C();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217D8945C();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217D8957C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CFDA7C(a1, a2, v3);
  sub_217D8956C();
  v17 = sub_217D8955C();
  v19 = v18;

  v20 = v16;
  v21 = v19;
  (*(v14 + 8))(v20, v13);
  if (v19 >> 60 == 15)
  {
    sub_217A535B4();
    v22 = sub_217D898DC();
    v23 = sub_217D897DC();
    sub_217D88E5C("PrivacySampler failed to convert the hash input to valid data", 61, 2, &dword_217A45000, v22, v23, MEMORY[0x277D84F90]);

    return 0;
  }

  sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_217D8944C();
  sub_217B0A564(v17, v19);
  sub_217CFDBE8(v17, v19, v9);
  sub_217B0AABC(v17, v19);
  sub_217D8943C();
  (*(v46 + 8))(v9, v7);
  v51 = v10;
  v52 = sub_217CFDDC8(&qword_27CBA4680, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  v25 = v47;
  (*(v47 + 16))(boxed_opaque_existential_1, v12, v10);
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_217D87B0C();
  v27 = v48;
  v26 = v49;
  sub_217B0A564(v48, v49);
  result = __swift_destroy_boxed_opaque_existential_1(v50);
  v29 = v26 >> 62;
  v30 = v12;
  v31 = v10;
  if ((v26 >> 62) > 1)
  {
    if (v29 != 2)
    {
LABEL_11:
      sub_217A535B4();
      v36 = sub_217D898DC();
      v37 = sub_217D897DC();
      sub_217D88E5C("PrivacySampler failed to generated valid SHA256 hash", 52, 2, &dword_217A45000, v36, v37, MEMORY[0x277D84F90]);

      sub_217AE010C(v27, v26);
      sub_217B0AABC(v17, v21);
      (*(v25 + 8))(v30, v10);
      return 0;
    }

    v33 = *(v27 + 16);
    v32 = *(v27 + 24);
    v34 = __OFSUB__(v32, v33);
    v35 = v32 - v33;
    if (v34)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v35 > 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    sub_217AE010C(v27, v26);
    goto LABEL_11;
  }

  if (!v29)
  {
    if (BYTE6(v26) > 1uLL)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v27), v27))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v27) - v27 <= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v29 == 2)
  {
    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    v34 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (!v34)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    v38 = BYTE6(v26);
    goto LABEL_23;
  }

  if (v29 != 1)
  {
    goto LABEL_22;
  }

  LODWORD(v38) = HIDWORD(v27) - v27;
  if (__OFSUB__(HIDWORD(v27), v27))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = v38;
LABEL_23:
  result = v38 - 2;
  if (__OFSUB__(v38, 2))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_217D87BDC();
  if (v29 == 2)
  {
    v43 = *(v27 + 16);
    v42 = *(v27 + 24);
    v34 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (!v34)
    {
LABEL_32:
      if (!__OFSUB__(v41, 1))
      {
        v44 = result << 8;
        v45 = sub_217D87BDC();
        sub_217AE010C(v27, v26);
        sub_217B0AABC(v17, v21);
        sub_217AE010C(v27, v26);
        (*(v25 + 8))(v30, v31);
        return (a3 * 65536.0) > (v44 | v45);
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_31:
    v41 = BYTE6(v26);
    goto LABEL_32;
  }

  if (v29 != 1)
  {
    goto LABEL_31;
  }

  LODWORD(v41) = HIDWORD(v27) - v27;
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v41 = v41;
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_217CFDA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);

    MEMORY[0x21CEACC70](45, 0xE100000000000000);
    MEMORY[0x21CEACC70](a1, a2);
    return v7;
  }

  else
  {
    v5 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  }

  return v5;
}

uint64_t sub_217CFDB1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_217CFDB54@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_217CFDEF0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_217CFDFA8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_217CFE024(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_217CFDBE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_217D8946C();
      sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_217D8942C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_217CFDE10(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_217CFDE10(v5, v6);
  }

  sub_217D8946C();
  sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_217D8942C();
}

uint64_t sub_217CFDDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217CFDE10(uint64_t a1, uint64_t a2)
{
  result = sub_217D87ACC();
  if (!result || (result = sub_217D87AEC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217D87ADC();
      sub_217D8946C();
      sub_217CFDDC8(&qword_2811BCEA8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_217D8942C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217CFDEF0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_217CFDFA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_217D87AFC();
  swift_allocObject();
  result = sub_217D87ABC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_217D87BCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_217CFE024(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_217D87AFC();
  swift_allocObject();
  result = sub_217D87ABC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

NewsAnalytics::ArticleConcernContentType_optional __swiftcall ArticleConcernContentType.init(rawValue:)(Swift::String rawValue)
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

unint64_t ArticleConcernContentType.rawValue.getter()
{
  v1 = 0x726F666E4973696DLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_217CFE19C()
{
  result = qword_27CBA4688;
  if (!qword_27CBA4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4688);
  }

  return result;
}

uint64_t sub_217CFE1F0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CFE2C0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CFE37C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CFE454(unint64_t *a1@<X8>)
{
  v2 = 0xEE006E6F6974616DLL;
  v3 = 0x726F666E4973696DLL;
  v4 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000217DCC580;
  }

  v5 = 0x8000000217DCC530;
  if (*v1)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000217DCC550;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217CFE5A0()
{
  result = qword_27CBA4690;
  if (!qword_27CBA4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4690);
  }

  return result;
}

uint64_t sub_217CFE6BC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA46C8);
  __swift_project_value_buffer(v0, qword_27CBA46C8);
  return sub_217D8866C();
}

uint64_t AudioUpsellMessageCompleted.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioUpsellMessageCompleted.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.upsellVariantData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageCompleted.upsellVariantData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageCompleted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageCompleted.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioUpsellMessageCompleted(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t AudioUpsellMessageCompleted.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 20);
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

void AudioUpsellMessageCompleted.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 24));
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

uint64_t AudioUpsellMessageCompleted.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioUpsellMessageCompleted.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 32));
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

uint64_t AudioUpsellMessageCompleted.Model.upsellVariantData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageCompleted.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 AudioUpsellMessageCompleted.Model.init(eventData:articleData:channelData:feedData:userBundleSubscriptionContextData:upsellVariantData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 + 4);
  v31 = *a4;
  v13 = *(a4 + 2);
  v14 = *a6;
  v15 = a6[1];
  v16 = sub_217D8899C();
  v29 = a3[1];
  v30 = *a3;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  v18 = a7 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  *(v18 + 127) = *(a2 + 127);
  v21 = *(a2 + 112);
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 112) = v21;
  v22 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v22;
  v23 = a7 + v17[6];
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v12;
  v24 = a7 + v17[7];
  *v24 = v31;
  *(v24 + 16) = v13;
  v25 = a7 + v17[8];
  v26 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v26;
  result = *(a5 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a5 + 48);
  v28 = (a7 + v17[9]);
  *v28 = v14;
  v28[1] = v15;
  return result;
}

uint64_t sub_217CFF6E0(uint64_t a1)
{
  v2 = sub_217CFFC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CFF71C(uint64_t a1)
{
  v2 = sub_217CFFC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellMessageCompleted.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D00378(0, &qword_27CBA46E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFFC18();
  sub_217D89E7C();
  v70[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v71 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
    v10 = v3 + *(v71 + 20);
    v11 = *(v10 + 96);
    v12 = *(v10 + 64);
    v67 = *(v10 + 80);
    v68 = v11;
    v13 = *(v10 + 96);
    *v69 = *(v10 + 112);
    v14 = *(v10 + 16);
    v15 = *(v10 + 48);
    v64 = *(v10 + 32);
    v65 = v15;
    v16 = *(v10 + 48);
    v66 = *(v10 + 64);
    v17 = *(v10 + 16);
    v63[0] = *v10;
    v63[1] = v17;
    v60 = v67;
    v61 = v13;
    v62[0] = *(v10 + 112);
    v57 = v64;
    v58 = v16;
    v59 = v12;
    *&v69[15] = *(v10 + 127);
    *(v62 + 15) = *(v10 + 127);
    v55 = v63[0];
    v56 = v14;
    v54 = 1;
    sub_217AFFBC0(v63, v52);
    sub_217ACF52C();
    sub_217D89C3C();
    v52[6] = v61;
    *v53 = v62[0];
    *&v53[15] = *(v62 + 15);
    v52[2] = v57;
    v52[3] = v58;
    v52[4] = v59;
    v52[5] = v60;
    v52[0] = v55;
    v52[1] = v56;
    sub_217B009E0(v52);
    v18 = v71;
    v19 = (v3 + *(v71 + 24));
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    *&v44 = *v19;
    *(&v44 + 1) = v20;
    *&v45 = v21;
    *(&v45 + 1) = v22;
    *&v46 = v23;
    LOBYTE(v40) = 2;
    sub_217AD86BC(v44, v20, v21, v22, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v44, *(&v44 + 1), v45, *(&v45 + 1), v46);
    v24 = (v3 + v18[7]);
    v25 = v24[1];
    v26 = v24[2];
    v49 = *v24;
    v50 = v25;
    v51 = v26;
    v48 = 3;
    sub_217AD1A68(v49, v25, v26);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v49, v50, v51);
    v27 = (v3 + v18[8]);
    v28 = v27[1];
    v44 = *v27;
    v45 = v28;
    v30 = *v27;
    v29 = v27[1];
    v46 = v27[2];
    v47 = *(v27 + 48);
    v40 = v30;
    v41 = v29;
    v42 = v27[2];
    v43 = *(v27 + 48);
    v39 = 4;
    sub_217ACC004(&v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v31 = (v3 + v18[9]);
    v32 = v31[1];
    v35 = *v31;
    v36 = v32;
    v34[15] = 5;
    sub_217C7CEB4();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CFFC18()
{
  result = qword_27CBA46E8;
  if (!qword_27CBA46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA46E8);
  }

  return result;
}

void AudioUpsellMessageCompleted.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D00378(0, &qword_27CBA46F0, MEMORY[0x277D844C8]);
  v47 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CFFC18();
  v30 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v28;
    LOBYTE(v39) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v29;
    sub_217D89BCC();
    (*(v27 + 32))(v11, v13, v4);
    v38 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v14 = &v11[v9[5]];
    v15 = *v46;
    *(v14 + 6) = v45;
    *(v14 + 7) = v15;
    *(v14 + 127) = *&v46[15];
    v16 = v42;
    *(v14 + 2) = v41;
    *(v14 + 3) = v16;
    v17 = v44;
    *(v14 + 4) = v43;
    *(v14 + 5) = v17;
    v18 = v40;
    *v14 = v39;
    *(v14 + 1) = v18;
    LOBYTE(v32) = 2;
    sub_217AD07F8();
    v29 = 0;
    sub_217D89B5C();
    v19 = v36;
    v20 = &v11[v9[6]];
    v21 = v35;
    *v20 = v34;
    *(v20 + 1) = v21;
    *(v20 + 4) = v19;
    LOBYTE(v32) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v22 = v35;
    v23 = &v11[v9[7]];
    *v23 = v34;
    *(v23 + 2) = v22;
    v33 = 4;
    sub_217A54D08();
    sub_217D89BCC();
    v24 = &v11[v9[8]];
    v25 = v35;
    *v24 = v34;
    *(v24 + 1) = v25;
    *(v24 + 2) = v36;
    v24[48] = v37;
    v31 = 5;
    sub_217C7CE5C();
    sub_217D89B5C();
    (*(v12 + 8))(v30, v47);
    *&v11[v9[9]] = v32;
    sub_217D003DC(v11, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217D00440(v11);
  }
}

void sub_217D00378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CFFC18();
    v7 = a3(a1, &type metadata for AudioUpsellMessageCompleted.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D003DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D00440(uint64_t a1)
{
  v2 = type metadata accessor for AudioUpsellMessageCompleted.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D005D8()
{
  result = qword_27CBA4718;
  if (!qword_27CBA4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4718);
  }

  return result;
}

unint64_t sub_217D00630()
{
  result = qword_27CBA4720;
  if (!qword_27CBA4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4720);
  }

  return result;
}

unint64_t sub_217D00688()
{
  result = qword_27CBA4728;
  if (!qword_27CBA4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4728);
  }

  return result;
}

NewsAnalytics::IssueType_optional __swiftcall IssueType.init(rawValue:)(Swift::String rawValue)
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

uint64_t IssueType.rawValue.getter()
{
  v1 = 6712929;
  if (*v0 != 1)
  {
    v1 = 6710384;
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

uint64_t sub_217D007DC(_BYTE *a1, _BYTE *a2)
{
  v2 = 6710384;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 6712929;
  }

  else
  {
    v4 = 6710384;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 6712929;
  }

  if (*a2)
  {
    v7 = v2;
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

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217D008B0()
{
  result = qword_27CBA47A0;
  if (!qword_27CBA47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47A0);
  }

  return result;
}

uint64_t sub_217D00904()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0099C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D00A20(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D00AC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6712929;
  if (v2 != 1)
  {
    v4 = 6710384;
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

unint64_t sub_217D00BD4()
{
  result = qword_2811BD100;
  if (!qword_2811BD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD100);
  }

  return result;
}

double ScienceDataFactory.scienceData(for:scoringContext:)@<D0>(void *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_217D00CA8(a2, a3);
  if (v4)
  {
    v5 = v4;
    FCFeedPersonalizedItemScoreProfile.scienceData.getter(__src);

    memcpy(a1, __src, 0x111uLL);
  }

  else
  {

    return static ScienceData.emptyScienceData.getter(a1);
  }

  return result;
}

id sub_217D00CA8(void *a1, uint64_t a2)
{
  v4 = sub_217D890AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  result = [a1 scoreProfile];
  if (!result)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_217D01058();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_217DBF9F0;
    *(v12 + 32) = a1;
    swift_unknownObjectRetain();
    v13 = sub_217D8918C();

    if (*(v13 + 16))
    {
      (*(v5 + 16))(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      (*(v5 + 32))(v10, v8, v4);
      v14 = sub_217D8909C();
      (*(v5 + 8))(v10, v4);
      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void ScienceDataFactory.recipeScienceData(for:scoringContext:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = [*(v2 + 56) appConfiguration];
  if ([v5 respondsToSelector_])
  {
    v6 = [v5 shouldIncludeRecipePersonalizationScienceData];
  }

  else
  {
    v6 = 1;
  }

  swift_unknownObjectRelease();
  v7 = [a1 scoreProfile];
  if (v7)
  {
    v8 = v7;
    [v7 tabiScore];
    v10 = v9;

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (!v6)
    {
LABEL_10:
      v16 = 0;
      v18 = 0;
      goto LABEL_11;
    }
  }

  v11 = [a1 rapidUpdatePersonalizationData];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = sub_217D87C0C();
  v15 = v14;

  v16 = sub_217D87BFC();
  v18 = v17;
  sub_217AE010C(v13, v15);
LABEL_11:
  *a2 = v10;
  a2[1] = v16;
  a2[2] = v18;
}

uint64_t ScienceDataFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ScienceDataFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_217D01058()
{
  if (!qword_2811BC408)
  {
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC408);
    }
  }
}

uint64_t GroupData.init(groupLocation:groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:curatedSubtype:layoutIDs:formationReason:groupBackingTagId:personalizationScore:competingGroups:groupedAuxiliaryData:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char *a13, __int128 a14, uint64_t a15, char a16, uint64_t a17, uint64_t *a18)
{
  v19 = *a2;
  v20 = *a13;
  v21 = *a18;
  *a9 = *a1;
  *(a9 + 1) = v19;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 28) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v20;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16 & 1;
  *(a9 + 128) = a17;

  *(a9 + 136) = v21;
  return result;
}

uint64_t GroupData.groupID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t GroupData.groupID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GroupData.groupedArticleIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t GroupData.groupedIssueIDs.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t GroupData.groupedTagIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GroupData.groupedRecipeIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t GroupData.curatedSubtype.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t GroupData.curatedSubtype.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t GroupData.layoutIDs.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t GroupData.groupBackingTagId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t GroupData.groupBackingTagId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t GroupData.personalizationScore.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t GroupData.competingGroups.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t GroupData.groupedAuxiliaryData.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

unint64_t sub_217D01668(char a1)
{
  result = 0x636F4C70756F7267;
  switch(a1)
  {
    case 1:
      result = 0x70795470756F7267;
      break;
    case 2:
      result = 0x444970756F7267;
      break;
    case 3:
      result = 0x756F4370756F7267;
      break;
    case 4:
      result = 0x736F5070756F7267;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x49646570756F7267;
      break;
    case 7:
      result = 0x54646570756F7267;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x5364657461727563;
      break;
    case 10:
      result = 0x444974756F79616CLL;
      break;
    case 11:
      result = 0x6F6974616D726F66;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
    case 15:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x6E697465706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D01870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D02CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D01898(uint64_t a1)
{
  v2 = sub_217D01EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D018D4(uint64_t a1)
{
  v2 = sub_217D01EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupData.encode(to:)(void *a1)
{
  sub_217D029B0(0, &qword_2811BC4E0, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = *v1;
  LODWORD(v36) = v1[1];
  v8 = *(v1 + 1);
  v34 = *(v1 + 2);
  v35 = v8;
  LODWORD(v5) = *(v1 + 7);
  v39 = *(v1 + 6);
  v33 = v5;
  v9 = *(v1 + 4);
  v31 = *(v1 + 5);
  v32 = v9;
  v10 = *(v1 + 6);
  v29 = *(v1 + 7);
  v30 = v10;
  v11 = *(v1 + 8);
  v27 = *(v1 + 9);
  v28 = v11;
  v26 = *(v1 + 10);
  v25 = v1[88];
  v12 = *(v1 + 12);
  v23 = *(v1 + 13);
  v24 = v12;
  v22 = *(v1 + 14);
  v21[1] = v1[120];
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_217D01EDC();
  sub_217D89E7C();
  LOBYTE(v38) = v7;
  v40 = 0;
  sub_217D01F30();
  v19 = v37;
  sub_217D89CAC();
  if (v19)
  {
    return (*(v4 + 8))(v6, v18);
  }

  v37 = v14;
  LOBYTE(v38) = v36;
  v40 = 1;
  sub_217C0AA48();
  sub_217D89CAC();
  LOBYTE(v38) = 2;
  sub_217D89C6C();
  LOBYTE(v38) = 3;
  sub_217D89CBC();
  LOBYTE(v38) = 4;
  sub_217D89CBC();
  v38 = v32;
  v40 = 5;
  sub_217D01FD8(0, &qword_2811BCD50, MEMORY[0x277D837D0]);
  sub_217A560C0(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v36 = v6;
  sub_217D89C3C();
  v38 = v31;
  v40 = 6;
  sub_217D89C3C();
  v38 = v30;
  v40 = 7;
  sub_217D89C3C();
  v38 = v29;
  v40 = 8;
  sub_217D89C3C();
  LOBYTE(v38) = 9;
  sub_217D89C0C();
  v38 = v26;
  v40 = 10;
  sub_217D89C3C();
  LOBYTE(v38) = v25;
  v40 = 11;
  sub_217D01F84();
  sub_217D89C3C();
  LOBYTE(v38) = 12;
  sub_217D89C0C();
  LOBYTE(v38) = 13;
  sub_217D89C2C();
  v38 = v13;
  v40 = 14;
  sub_217D01FD8(0, &qword_2811BCD88, &type metadata for CompetingGroupPersonalizationListData);
  sub_217D02ABC(&qword_2811BCD80, sub_217D02024, MEMORY[0x277D83948]);
  sub_217D89C3C();
  v38 = v37;
  v40 = 15;
  sub_217B75F00();

  sub_217D89C3C();

  return (*(v4 + 8))(v36, v18);
}

unint64_t sub_217D01EDC()
{
  result = qword_2811BD1A0;
  if (!qword_2811BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1A0);
  }

  return result;
}

unint64_t sub_217D01F30()
{
  result = qword_2811C72A8;
  if (!qword_2811C72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72A8);
  }

  return result;
}

unint64_t sub_217D01F84()
{
  result = qword_2811C2048[0];
  if (!qword_2811C2048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2048);
  }

  return result;
}

void sub_217D01FD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217D8971C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217D02024()
{
  result = qword_2811BD6B0;
  if (!qword_2811BD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6B0);
  }

  return result;
}

uint64_t GroupData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217D029B0(0, &qword_2811BC8D8, MEMORY[0x277D844C8]);
  v83 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D01EDC();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v47 = a2;
    LOBYTE(v48) = 0;
    sub_217D02A14();
    sub_217D89BCC();
    v9 = LOBYTE(v57[0]);
    LOBYTE(v48) = 1;
    sub_217C0AC98();
    sub_217D89BCC();
    v10 = LOBYTE(v57[0]);
    LOBYTE(v57[0]) = 2;
    v42 = sub_217D89B8C();
    v43 = v10;
    v45 = v11;
    LOBYTE(v57[0]) = 3;
    v12 = sub_217D89BDC();
    LOBYTE(v57[0]) = 4;
    v39 = sub_217D89BDC();
    v40 = v12;
    v41 = v9;
    sub_217D01FD8(0, &qword_2811BCD50, MEMORY[0x277D837D0]);
    LOBYTE(v48) = 5;
    sub_217A560C0(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89B5C();
    v38 = v57[0];
    LOBYTE(v48) = 6;
    sub_217D89B5C();
    v37 = v57[0];
    LOBYTE(v48) = 7;
    sub_217D89B5C();
    v36 = v57[0];
    LOBYTE(v48) = 8;
    sub_217D89B5C();
    v35 = v6;
    v44 = v57[0];
    LOBYTE(v57[0]) = 9;
    v13 = sub_217D89B2C();
    v46 = v14;
    v15 = v13;
    LOBYTE(v48) = 10;
    sub_217D89B5C();
    v16 = v57[0];
    LOBYTE(v48) = 11;
    sub_217D02A68();
    sub_217D89B5C();
    v34 = LOBYTE(v57[0]);
    LOBYTE(v57[0]) = 12;
    v33 = sub_217D89B2C();
    v18 = v17;
    LOBYTE(v57[0]) = 13;
    v32 = sub_217D89B4C();
    v79 = v19 & 1;
    sub_217D01FD8(0, &qword_2811BCD88, &type metadata for CompetingGroupPersonalizationListData);
    LOBYTE(v48) = 14;
    sub_217D02ABC(&qword_2811BCD78, sub_217D02B38, MEMORY[0x277D83978]);
    sub_217D89B5C();
    v20 = v57[0];
    v76 = 15;
    sub_217B75EA8();
    sub_217D89B5C();
    (*(v35 + 8))(v8, v83);
    v21 = v77;

    LOBYTE(v48) = v41;
    BYTE1(v48) = v43;
    *(&v48 + 2) = v81;
    WORD3(v48) = v82;
    *(&v48 + 1) = v42;
    *&v49 = v45;
    *(&v49 + 1) = __PAIR64__(v39, v40);
    *&v50 = v38;
    *(&v50 + 1) = v37;
    *&v51 = v36;
    *(&v51 + 1) = v44;
    v31 = v15;
    *&v52 = v15;
    *(&v52 + 1) = v46;
    *&v53 = v16;
    BYTE8(v53) = v34;
    HIDWORD(v53) = *&v80[3];
    *(&v53 + 9) = *v80;
    *&v54 = v33;
    *(&v54 + 1) = v18;
    *&v55 = v32;
    LODWORD(v83) = v79;
    BYTE8(v55) = v79;
    *(&v55 + 9) = *v78;
    HIDWORD(v55) = *&v78[3];
    *&v56 = v20;
    *(&v56 + 1) = v21;
    v22 = v48;
    v23 = v49;
    v24 = v51;
    v25 = v47;
    v47[2] = v50;
    v25[3] = v24;
    *v25 = v22;
    v25[1] = v23;
    v26 = v52;
    v27 = v53;
    v28 = v56;
    v25[7] = v55;
    v25[8] = v28;
    v29 = v54;
    v25[5] = v27;
    v25[6] = v29;
    v25[4] = v26;
    sub_217AF7618(&v48, v57);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v57[0]) = v41;
    BYTE1(v57[0]) = v43;
    *(v57 + 2) = v81;
    HIWORD(v57[0]) = v82;
    v57[1] = v42;
    v57[2] = v45;
    v58 = v40;
    v59 = v39;
    v60 = v38;
    v61 = v37;
    v62 = v36;
    v63 = v44;
    v64 = v31;
    v65 = v46;
    v66 = v16;
    v67 = v34;
    *&v68[3] = *&v80[3];
    *v68 = *v80;
    v69 = v33;
    v70 = v18;
    v71 = v32;
    v72 = v83;
    *v73 = *v78;
    *&v73[3] = *&v78[3];
    v74 = v20;
    v75 = v21;
    return sub_217AF8104(v57);
  }
}

void sub_217D029B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D01EDC();
    v7 = a3(a1, &type metadata for GroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D02A14()
{
  result = qword_2811C7298;
  if (!qword_2811C7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7298);
  }

  return result;
}

unint64_t sub_217D02A68()
{
  result = qword_2811C2038;
  if (!qword_2811C2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2038);
  }

  return result;
}

uint64_t sub_217D02ABC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217D01FD8(255, &qword_2811BCD88, &type metadata for CompetingGroupPersonalizationListData);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217D02B38()
{
  result = qword_2811BD6A8;
  if (!qword_2811BD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6A8);
  }

  return result;
}

unint64_t sub_217D02BD0()
{
  result = qword_27CBA47A8;
  if (!qword_27CBA47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47A8);
  }

  return result;
}

unint64_t sub_217D02C28()
{
  result = qword_2811BD190;
  if (!qword_2811BD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD190);
  }

  return result;
}

unint64_t sub_217D02C80()
{
  result = qword_2811BD198;
  if (!qword_2811BD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD198);
  }

  return result;
}

uint64_t sub_217D02CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636F4C70756F7267 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F4370756F7267 && a2 == 0xEA0000000000746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736F5070756F7267 && a2 == 0xED00006E6F697469 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2830 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49646570756F7267 && a2 == 0xEF73444965757373 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x54646570756F7267 && a2 == 0xED00007344496761 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2850 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5364657461727563 && a2 == 0xEE00657079746275 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x444974756F79616CLL && a2 == 0xE900000000000073 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6974616D726F66 && a2 == 0xEF6E6F736165526ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2870 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E697465706D6F63 && a2 == 0xEF7370756F724767 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2890 == a2)
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

uint64_t AMSMarketingItemData.amsPurchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AMSMarketingItemData.amsPurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AMSMarketingItemData.campaignId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AMSMarketingItemData.campaignId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall AMSMarketingItemData.init(amsPurchaseID:campaignId:isPaidBundleViaOffer:)(NewsAnalytics::AMSMarketingItemData *__return_ptr retstr, Swift::String_optional amsPurchaseID, Swift::String_optional campaignId, Swift::Bool_optional isPaidBundleViaOffer)
{
  retstr->amsPurchaseID = amsPurchaseID;
  retstr->campaignId = campaignId;
  retstr->isPaidBundleViaOffer = isPaidBundleViaOffer;
}

unint64_t sub_217D0336C()
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

uint64_t sub_217D033DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D03BEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D03404(uint64_t a1)
{
  v2 = sub_217D03628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D03440(uint64_t a1)
{
  v2 = sub_217D03628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AMSMarketingItemData.encode(to:)(void *a1)
{
  sub_217D038CC(0, &qword_2811BC668, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D03628();
  sub_217D89E7C();
  v15 = 0;
  v9 = v11[3];
  sub_217D89C0C();
  if (!v9)
  {
    v14 = 1;
    sub_217D89C0C();
    v13 = 2;
    sub_217D89C1C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D03628()
{
  result = qword_2811C2478[0];
  if (!qword_2811C2478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2478);
  }

  return result;
}

uint64_t AMSMarketingItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D038CC(0, &qword_27CBA47B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D03628();
  sub_217D89E5C();
  if (!v2)
  {
    v25 = 0;
    v10 = sub_217D89B2C();
    v13 = v12;
    v14 = v10;
    v24 = 1;
    v15 = sub_217D89B2C();
    v17 = v16;
    v21 = v15;
    v23 = 2;
    v18 = sub_217D89B3C();
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

void sub_217D038CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D03628();
    v7 = a3(a1, &type metadata for AMSMarketingItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D03934()
{
  result = qword_2811C2450;
  if (!qword_2811C2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2450);
  }

  return result;
}

unint64_t sub_217D0398C()
{
  result = qword_2811C2458;
  if (!qword_2811C2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2458);
  }

  return result;
}

uint64_t sub_217D03A10(uint64_t a1, unsigned int a2)
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

uint64_t sub_217D03A6C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217D03AE8()
{
  result = qword_27CBA47B8;
  if (!qword_27CBA47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA47B8);
  }

  return result;
}

unint64_t sub_217D03B40()
{
  result = qword_2811C2468;
  if (!qword_2811C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2468);
  }

  return result;
}

unint64_t sub_217D03B98()
{
  result = qword_2811C2470;
  if (!qword_2811C2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2470);
  }

  return result;
}

uint64_t sub_217D03BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863727550736D61 && a2 == 0xED00004449657361;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD28B0 == a2)
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

uint64_t sub_217D03DE4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA47F0);
  __swift_project_value_buffer(v0, qword_27CBA47F0);
  return sub_217D8866C();
}

uint64_t InteractivePuzzleTeaserEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 20);
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 20);
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 24);
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 24);
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 28);
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 28);
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 32);
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 32);
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 36);
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 36);
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 40);
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 40);
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.interactivePuzzleTeaserEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 44);
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D04A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t InteractivePuzzleTeaserEngagementEvent.interactivePuzzleTeaserEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0) + 44);
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent(0);
  v5 = v4[5];
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 20));
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

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

void InteractivePuzzleTeaserEngagementEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 28));
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

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 32));
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

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0) + 36));
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

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.interactivePuzzleTeaserEngagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 InteractivePuzzleTeaserEngagementEvent.Model.init(eventData:puzzleData:feedData:channelData:userBundleSubscriptionContextData:groupData:feedPositionData:interactivePuzzleTeaserEngagementData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v36 = *a3;
  v15 = *(a3 + 2);
  v16 = *(a4 + 4);
  v17 = *a7;
  v18 = *(a7 + 4);
  v37 = *a8;
  v19 = sub_217D8899C();
  v34 = a4[1];
  v35 = *a4;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  v21 = (a9 + v20[5]);
  v22 = a2[3];
  v21[2] = a2[2];
  v21[3] = v22;
  v21[4] = a2[4];
  v23 = a2[1];
  *v21 = *a2;
  v21[1] = v23;
  v24 = a9 + v20[6];
  *v24 = v36;
  *(v24 + 16) = v15;
  v25 = a9 + v20[7];
  *v25 = v35;
  *(v25 + 16) = v34;
  *(v25 + 32) = v16;
  v26 = a9 + v20[8];
  v27 = *(a5 + 16);
  *v26 = *a5;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a5 + 32);
  *(v26 + 48) = *(a5 + 48);
  v28 = a9 + v20[9];
  v29 = *(a6 + 112);
  *(v28 + 96) = *(a6 + 96);
  *(v28 + 112) = v29;
  *(v28 + 128) = *(a6 + 128);
  v30 = *(a6 + 48);
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = v30;
  v31 = *(a6 + 80);
  *(v28 + 64) = *(a6 + 64);
  *(v28 + 80) = v31;
  result = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = result;
  v33 = a9 + v20[10];
  *v33 = v17;
  *(v33 + 4) = v18;
  *(a9 + v20[11]) = v37;
  return result;
}

unint64_t sub_217D05398()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000025;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000021;
    if (v1 != 4)
    {
      v6 = 0x74614470756F7267;
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
    v3 = 0x6174614464656566;
    if (v1 != 2)
    {
      v3 = 0x446C656E6E616863;
    }

    if (*v0)
    {
      v2 = 0x6144656C7A7A7570;
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

uint64_t sub_217D054A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D06DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D054CC(uint64_t a1)
{
  v2 = sub_217D05AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D05508(uint64_t a1)
{
  v2 = sub_217D05AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractivePuzzleTeaserEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D062A0(0, &qword_27CBA4810, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D05AF8();
  sub_217D89E7C();
  v91[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v87 = v11[1];
    v88 = v12;
    v14 = v11[2];
    v15 = v11[4];
    v89 = v11[3];
    v90 = v15;
    v16 = *v11;
    v83 = v14;
    v84 = v89;
    v85 = v11[4];
    v86 = v16;
    v81 = v13;
    v82 = v87;
    v80 = 1;
    sub_217AD85B8(&v86, &v57);
    sub_217AD6D08();
    sub_217D89CAC();
    v79[2] = v83;
    v79[3] = v84;
    v79[4] = v85;
    v79[0] = v81;
    v79[1] = v82;
    sub_217AD9650(v79);
    v17 = (v3 + v10[6]);
    v18 = v17[1];
    v19 = v17[2];
    *&v57 = *v17;
    *(&v57 + 1) = v18;
    *&v58 = v19;
    LOBYTE(v46) = 2;
    sub_217AD1A68(v57, v18, v19);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v57, *(&v57 + 1), v58);
    v20 = (v3 + v10[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v74 = *v20;
    v75 = v21;
    v76 = v22;
    v77 = v23;
    v78 = v24;
    v73 = 3;
    sub_217AD86BC(v74, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v74, v75, v76, v77, v78);
    v25 = (v3 + v10[8]);
    v26 = v25[1];
    v71[0] = *v25;
    v71[1] = v26;
    v28 = *v25;
    v27 = v25[1];
    v71[2] = v25[2];
    v72 = *(v25 + 48);
    v67 = v28;
    v68 = v27;
    v69 = v25[2];
    v70 = *(v25 + 48);
    v66 = 4;
    sub_217ACC004(v71, &v57);
    sub_217A55B98();
    sub_217D89CAC();
    v55[0] = v67;
    v55[1] = v68;
    v55[2] = v69;
    v56 = v70;
    sub_217ACC69C(v55);
    v29 = (v3 + v10[9]);
    v30 = v29[5];
    v31 = v29[7];
    v63 = v29[6];
    v64 = v31;
    v32 = v29[7];
    v65 = v29[8];
    v33 = v29[1];
    v34 = v29[3];
    v59 = v29[2];
    v60 = v34;
    v35 = v29[3];
    v36 = v29[5];
    v61 = v29[4];
    v62 = v36;
    v37 = v29[1];
    v57 = *v29;
    v58 = v37;
    v52 = v63;
    v53 = v32;
    v54 = v29[8];
    v48 = v59;
    v49 = v35;
    v50 = v61;
    v51 = v30;
    v46 = v57;
    v47 = v33;
    v45 = 5;
    sub_217AD87FC(&v57, v44);
    sub_217A5D3B4();
    sub_217D89C3C();
    v44[6] = v52;
    v44[7] = v53;
    v44[8] = v54;
    v44[2] = v48;
    v44[3] = v49;
    v44[4] = v50;
    v44[5] = v51;
    v44[0] = v46;
    v44[1] = v47;
    sub_217AD96E8(v44);
    v38 = (v3 + v10[10]);
    v39 = *v38;
    LOBYTE(v38) = *(v38 + 4);
    v42 = v39;
    v43 = v38;
    HIBYTE(v41) = 6;
    sub_217AD7710();
    sub_217D89C3C();
    LOBYTE(v42) = *(v3 + v10[11]);
    HIBYTE(v41) = 7;
    sub_217B71080();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D05AF8()
{
  result = qword_27CBA4818;
  if (!qword_27CBA4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4818);
  }

  return result;
}

void InteractivePuzzleTeaserEngagementEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_217D8899C();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D062A0(0, &qword_27CBA4820, MEMORY[0x277D844C8]);
  v40 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217D05AF8();
  v39 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    v13 = v36;
    v34 = v9;
    LOBYTE(v56) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v14 = v37;
    sub_217D89BCC();
    (*(v13 + 32))(v11, v14, v4);
    v50 = 1;
    sub_217AD6CB4();
    sub_217D89BCC();
    v37 = 0;
    v15 = v34;
    v16 = &v11[v34[5]];
    v17 = v54;
    *(v16 + 2) = v53;
    *(v16 + 3) = v17;
    *(v16 + 4) = v55;
    v18 = v52;
    *v16 = v51;
    *(v16 + 1) = v18;
    LOBYTE(v46) = 2;
    sub_217A5B978();
    sub_217D89B5C();
    v19 = v57;
    v20 = &v11[v15[6]];
    *v20 = v56;
    *(v20 + 2) = v19;
    LOBYTE(v46) = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v21 = v58;
    v22 = &v11[v15[7]];
    v23 = v57;
    *v22 = v56;
    *(v22 + 1) = v23;
    *(v22 + 4) = v21;
    v45 = 4;
    sub_217A54D08();
    sub_217D89BCC();
    v24 = &v11[v15[8]];
    v25 = v47;
    *v24 = v46;
    *(v24 + 1) = v25;
    *(v24 + 2) = v48;
    v24[48] = v49;
    v44 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v26 = &v11[v15[9]];
    v27 = v63;
    *(v26 + 6) = v62;
    *(v26 + 7) = v27;
    *(v26 + 8) = v64;
    v28 = v59;
    *(v26 + 2) = v58;
    *(v26 + 3) = v28;
    v29 = v61;
    *(v26 + 4) = v60;
    *(v26 + 5) = v29;
    v30 = v57;
    *v26 = v56;
    *(v26 + 1) = v30;
    v41 = 6;
    sub_217AD76BC();
    sub_217D89B5C();
    v31 = v43;
    v32 = &v11[v15[10]];
    *v32 = v42;
    v32[4] = v31;
    v41 = 7;
    sub_217B71028();
    sub_217D89BCC();
    (*(v38 + 8))(v39, v40);
    v33 = v35;
    v11[v34[11]] = v42;
    sub_217D06304(v11, v33);
    __swift_destroy_boxed_opaque_existential_1(v65);
    sub_217D06368(v11);
  }
}

void sub_217D062A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D05AF8();
    v7 = a3(a1, &type metadata for InteractivePuzzleTeaserEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D06304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D06368(uint64_t a1)
{
  v2 = type metadata accessor for InteractivePuzzleTeaserEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D0649C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217D068A0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D04A08(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
    if (v2 <= 0x3F)
    {
      sub_217D04A08(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217D04A08(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D04A08(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            sub_217D04A08(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217D04A08(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
              if (v7 <= 0x3F)
              {
                sub_217D04A08(319, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
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

void sub_217D06B64(uint64_t a1)
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
          sub_217A5E974(319, &qword_2811C5238, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D06C9C()
{
  result = qword_27CBA4848;
  if (!qword_27CBA4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4848);
  }

  return result;
}

unint64_t sub_217D06CF4()
{
  result = qword_27CBA4850;
  if (!qword_27CBA4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4850);
  }

  return result;
}

unint64_t sub_217D06D4C()
{
  result = qword_27CBA4858;
  if (!qword_27CBA4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4858);
  }

  return result;
}

uint64_t sub_217D06DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217DD28D0 == a2)
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

NewsAnalytics::TextSizeData __swiftcall TextSizeData.init(contentSizeCategory:)(__C::UIContentSizeCategory contentSizeCategory)
{
  v2 = v1;
  sub_217A5DAC8(contentSizeCategory._rawValue, &v4);
  *v2 = v4;
  return result;
}

NewsAnalytics::ArticleTextSizeData __swiftcall ArticleTextSizeData.init(startContentSizeCategory:endContentSizeCategory:diagnosticsEnabled:)(__C::UIContentSizeCategory startContentSizeCategory, __C::UIContentSizeCategory endContentSizeCategory, Swift::Bool diagnosticsEnabled)
{
  v7 = v3;
  if (sub_217D8986C())
  {
    v8 = 1;
LABEL_5:
    v9 = sub_217D89D4C();

    if ((v9 & 1) != 0 && !diagnosticsEnabled)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_217A5DAC8(endContentSizeCategory._rawValue, &v12);

    v11 = v12;
    goto LABEL_10;
  }

  if (sub_217D8987C())
  {
    v8 = 2;
    goto LABEL_5;
  }

  v8 = 0;
  if (diagnosticsEnabled)
  {
    goto LABEL_9;
  }

LABEL_7:

  v11 = 13;
LABEL_10:
  *v7 = v8;
  v7[1] = v11;
  return v10;
}

NewsAnalytics::NotificationType_optional __swiftcall NotificationType.init(rawValue:)(Swift::String rawValue)
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

unint64_t NotificationType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E4F64656B636970;
    v7 = 0x64657265746C6966;
    if (v1 != 8)
    {
      v7 = 0x6E65476961;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x647541664F646E65;
    if (v1 != 5)
    {
      v8 = 0xD00000000000001DLL;
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
    v3 = 0x6169726F74696465;
    v4 = 0x657573734977656ELL;
    if (v1 != 3)
    {
      v4 = 0x656C6369747261;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E6974656B72616DLL;
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

unint64_t sub_217D07360()
{
  result = qword_27CBA4860;
  if (!qword_27CBA4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4860);
  }

  return result;
}

uint64_t sub_217D073B4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D833AC(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217D07404(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D833AC(v4, v2);
  return sub_217D89E3C();
}

unint64_t sub_217D07454@<X0>(unint64_t *a1@<X8>)
{
  result = NotificationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D0753C()
{
  result = qword_27CBA4868;
  if (!qword_27CBA4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4868);
  }

  return result;
}

NewsAnalytics::AdJournalEntryError_optional __swiftcall AdJournalEntryError.init(rawValue:)(Swift::String rawValue)
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

unint64_t AdJournalEntryError.rawValue.getter()
{
  v1 = 0x726568746FLL;
  v2 = 0x6F5464656C696166;
  if (*v0 != 2)
  {
    v2 = 0x4674736575716572;
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

unint64_t sub_217D07690()
{
  result = qword_27CBA4870;
  if (!qword_27CBA4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4870);
  }

  return result;
}

uint64_t sub_217D076E4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D077C0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D07888(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0796C(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726568746FLL;
  v4 = 0xEE007265646E6552;
  v5 = 0x6F5464656C696166;
  if (*v1 != 2)
  {
    v5 = 0x4674736575716572;
    v4 = 0xED000064656C6961;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000217DCC600;
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

unint64_t sub_217D07AC4()
{
  result = qword_2811C2D88;
  if (!qword_2811C2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D88);
  }

  return result;
}

uint64_t sub_217D07B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053)
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

uint64_t sub_217D07C0C(uint64_t a1)
{
  v2 = sub_217D07DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D07C48(uint64_t a1)
{
  v2 = sub_217D07DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackData.encode(to:)(void *a1)
{
  sub_217D07FA8(0, &qword_27CBA4878, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D07DCC()
{
  result = qword_27CBA4880;
  if (!qword_27CBA4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4880);
  }

  return result;
}

uint64_t PlaybackData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D07FA8(0, &qword_27CBA4888, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
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

void sub_217D07FA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D07DCC();
    v7 = a3(a1, &type metadata for PlaybackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0802C(void *a1)
{
  sub_217D07FA8(0, &qword_27CBA4878, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D07DCC();
  sub_217D89E7C();
  sub_217D89C9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D08198()
{
  result = qword_27CBA4890;
  if (!qword_27CBA4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4890);
  }

  return result;
}

unint64_t sub_217D081F0()
{
  result = qword_27CBA4898;
  if (!qword_27CBA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4898);
  }

  return result;
}

unint64_t sub_217D08248()
{
  result = qword_27CBA48A0;
  if (!qword_27CBA48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA48A0);
  }

  return result;
}

uint64_t sub_217D0829C()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA48A8);
  v1 = __swift_project_value_buffer(v0, qword_27CBA48A8);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217D0838C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA48C0);
  v1 = __swift_project_value_buffer(v0, qword_27CBA48C0);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217D0844C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA48D8);
  __swift_project_value_buffer(v0, qword_27CBA48D8);
  return sub_217D8866C();
}

uint64_t IgnoreSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IgnoreSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IgnoreSportsTagEvent(0);
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

uint64_t IgnoreSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 20));
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

uint64_t IgnoreSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IgnoreSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 28));
}

uint64_t IgnoreSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 IgnoreSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
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

uint64_t sub_217D09120(uint64_t a1)
{
  v2 = sub_217D09550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0915C(uint64_t a1)
{
  v2 = sub_217D09550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IgnoreSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D09AB0(0, &qword_27CBA48F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D09550();
  sub_217D89E7C();
  v37 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
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

unint64_t sub_217D09550()
{
  result = qword_27CBA48F8;
  if (!qword_27CBA48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA48F8);
  }

  return result;
}

uint64_t IgnoreSportsTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D09AB0(0, &qword_27CBA4900, MEMORY[0x277D844C8]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D09550();
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
  sub_217D09B14(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D09B78(v11);
}

void sub_217D09AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D09550();
    v7 = a3(a1, &type metadata for IgnoreSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D09B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D09B78(uint64_t a1)
{
  v2 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D09D10()
{
  result = qword_27CBA4928;
  if (!qword_27CBA4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4928);
  }

  return result;
}

unint64_t sub_217D09D68()
{
  result = qword_27CBA4930;
  if (!qword_27CBA4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4930);
  }

  return result;
}

unint64_t sub_217D09DC0()
{
  result = qword_27CBA4938;
  if (!qword_27CBA4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4938);
  }

  return result;
}

uint64_t sub_217D09E60(uint64_t a1)
{
  v2 = sub_217D0A034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D09E9C(uint64_t a1)
{
  v2 = sub_217D0A034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsUserSelectionData.encode(to:)(void *a1)
{
  sub_217D0A274(0, &qword_27CBA4940, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0A034();
  sub_217D89E7C();
  v11 = v8;
  sub_217D0A088();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D0A034()
{
  result = qword_27CBA4948;
  if (!qword_27CBA4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4948);
  }

  return result;
}

unint64_t sub_217D0A088()
{
  result = qword_27CBA4950;
  if (!qword_27CBA4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4950);
  }

  return result;
}

uint64_t PersonalizedAdsUserSelectionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D0A274(0, &qword_27CBA4958, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0A034();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D0A2D8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0A274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0A034();
    v7 = a3(a1, &type metadata for PersonalizedAdsUserSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D0A2D8()
{
  result = qword_27CBA4960;
  if (!qword_27CBA4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4960);
  }

  return result;
}

unint64_t sub_217D0A388()
{
  result = qword_27CBA4968;
  if (!qword_27CBA4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4968);
  }

  return result;
}

unint64_t sub_217D0A3E0()
{
  result = qword_27CBA4970;
  if (!qword_27CBA4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4970);
  }

  return result;
}

unint64_t sub_217D0A438()
{
  result = qword_27CBA4978;
  if (!qword_27CBA4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4978);
  }

  return result;
}

NewsAnalytics::GroupLocation_optional __swiftcall GroupLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t GroupLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1684366694;
  v4 = 0x747241664F646E65;
  if (v1 != 3)
  {
    v4 = 0x636552664F646E65;
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

unint64_t sub_217D0A59C()
{
  result = qword_27CBA4980;
  if (!qword_27CBA4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4980);
  }

  return result;
}

uint64_t sub_217D0A5F0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0A6DC(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D0A7B4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0A8A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1684366694;
  v7 = 0xEC000000656C6369;
  v8 = 0x747241664F646E65;
  if (v2 != 3)
  {
    v8 = 0x636552664F646E65;
    v7 = 0xEB00000000657069;
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

unint64_t sub_217D0AA10()
{
  result = qword_2811C72A0;
  if (!qword_2811C72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72A0);
  }

  return result;
}

uint64_t DismissalData.dismissingIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DismissalData.dismissingIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::DismissalData __swiftcall DismissalData.init(dismissingIdentifier:isDismissed:)(NewsAnalytics::DismissalData dismissingIdentifier, Swift::Bool isDismissed)
{
  *v2 = dismissingIdentifier.dismissingIdentifier;
  *(v2 + 16) = isDismissed;
  dismissingIdentifier.isDismissed = isDismissed;
  return dismissingIdentifier;
}

uint64_t sub_217D0AB30()
{
  if (*v0)
  {
    return 0x73696D7369447369;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217D0AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DD2900 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73696D7369447369 && a2 == 0xEB00000000646573)
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

uint64_t sub_217D0AC64(uint64_t a1)
{
  v2 = sub_217D0AE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0ACA0(uint64_t a1)
{
  v2 = sub_217D0AE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissalData.encode(to:)(void *a1)
{
  sub_217D0B0A0(0, &qword_2811BC7D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0AE5C();
  sub_217D89E7C();
  v13 = 0;
  v8 = v10[1];
  sub_217D89C6C();
  if (!v8)
  {
    v12 = 1;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D0AE5C()
{
  result = qword_2811C7650;
  if (!qword_2811C7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7650);
  }

  return result;
}

uint64_t DismissalData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D0B0A0(0, &qword_2811BCAF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0AE5C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_217D89B9C();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0B0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0AE5C();
    v7 = a3(a1, &type metadata for DismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D0B160()
{
  result = qword_27CBA4988;
  if (!qword_27CBA4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4988);
  }

  return result;
}

unint64_t sub_217D0B1B8()
{
  result = qword_2811C7640;
  if (!qword_2811C7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7640);
  }

  return result;
}

unint64_t sub_217D0B210()
{
  result = qword_2811C7648;
  if (!qword_2811C7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7648);
  }

  return result;
}

NewsAnalytics::ListenSheetActionData_optional __swiftcall ListenSheetActionData.init(rawValue:)(Swift::String rawValue)
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

uint64_t ListenSheetActionData.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x654E6E657473696CLL;
  v4 = 0x614C6E657473696CLL;
  if (v1 != 3)
  {
    v4 = 0x6C65636E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4E6E657473696CLL;
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

unint64_t sub_217D0B3A4()
{
  result = qword_27CBA4990;
  if (!qword_27CBA4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4990);
  }

  return result;
}

uint64_t sub_217D0B3F8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0B4E8(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D0B5C4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0B6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA00000000007478;
  v6 = 0x654E6E657473696CLL;
  v7 = 0xEB00000000726574;
  v8 = 0x614C6E657473696CLL;
  if (v2 != 3)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4E6E657473696CLL;
    v3 = 0xE900000000000077;
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

unint64_t sub_217D0B828()
{
  result = qword_27CBA4998;
  if (!qword_27CBA4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4998);
  }

  return result;
}

uint64_t sub_217D0B944()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA49D0);
  __swift_project_value_buffer(v0, qword_27CBA49D0);
  return sub_217D8866C();
}

uint64_t SearchResultSelectEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultSelectEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D0C208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t SearchResultSelectEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultSelectEvent(0);
  v5 = v4[5];
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t SearchResultSelectEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchResultSelectEvent.Model.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SearchResultSelectEvent.Model.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 28);
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

uint64_t SearchResultSelectEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 32));
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

uint64_t SearchResultSelectEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchResultSelectEvent.Model.init(eventData:searchData:searchSelectionData:searchResultsData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = a2[3];
  v15 = *a3;
  v16 = a3[1];
  v33 = a6[1];
  v34 = *a6;
  v31 = *(a3 + 16);
  v32 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for SearchResultSelectEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  v20 = a7 + v18[6];
  *v20 = v15;
  *(v20 + 8) = v16;
  *(v20 + 16) = v31;
  v21 = a7 + v18[7];
  v22 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v22;
  v23 = *(a4 + 80);
  *(v21 + 64) = *(a4 + 64);
  *(v21 + 80) = v23;
  v24 = *(a4 + 48);
  *(v21 + 32) = *(a4 + 32);
  *(v21 + 48) = v24;
  *(v21 + 160) = *(a4 + 160);
  v25 = *(a4 + 144);
  *(v21 + 128) = *(a4 + 128);
  *(v21 + 144) = v25;
  v26 = *(a4 + 112);
  *(v21 + 96) = *(a4 + 96);
  *(v21 + 112) = v26;
  v27 = a7 + v18[8];
  v28 = *(a5 + 16);
  *v27 = *a5;
  *(v27 + 16) = v28;
  result = *(a5 + 32);
  *(v27 + 32) = result;
  *(v27 + 48) = *(a5 + 48);
  v30 = a7 + v18[9];
  *v30 = v34;
  *(v30 + 8) = v33;
  *(v30 + 16) = v32;
  return result;
}

unint64_t sub_217D0CA08()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 4)
  {
    v3 = 0x6174614477656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x6144686372616573;
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

uint64_t sub_217D0CAD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D0E008(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D0CAF8(uint64_t a1)
{
  v2 = sub_217D0D068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0CB34(uint64_t a1)
{
  v2 = sub_217D0D068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultSelectEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D0D730(0, &qword_27CBA49F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v43[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0D068();
  sub_217D89E7C();
  LOBYTE(v70) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SearchResultSelectEvent.Model(0);
    v11 = v3;
    v12 = v10;
    v13 = *(v10 + 20);
    v85 = v11;
    v14 = v11 + v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    *&v70 = *v14;
    *(&v70 + 1) = v15;
    LOBYTE(v71) = v16;
    *(&v71 + 1) = v17;
    LOBYTE(v59) = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v18 = v12;
    v19 = v12[6];
    v20 = v85;
    v21 = (v85 + v19);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v21) = *(v21 + 16);
    v82 = v22;
    v83 = v23;
    v84 = v21;
    v81 = 2;
    sub_217BA2EE8();

    sub_217D89CAC();

    v25 = (v20 + v18[7]);
    v26 = v25[7];
    v27 = v25[9];
    v78 = v25[8];
    v79 = v27;
    v28 = v25[3];
    v29 = v25[5];
    v74 = v25[4];
    v75 = v29;
    v30 = v25[5];
    v31 = v25[7];
    v76 = v25[6];
    v77 = v31;
    v32 = v25[1];
    v70 = *v25;
    v71 = v32;
    v33 = v25[3];
    v35 = *v25;
    v34 = v25[1];
    v72 = v25[2];
    v73 = v33;
    v36 = v25[9];
    v67 = v78;
    v68 = v36;
    v63 = v74;
    v64 = v30;
    v65 = v76;
    v66 = v26;
    v59 = v35;
    v60 = v34;
    v80 = *(v25 + 20);
    v69 = *(v25 + 20);
    v61 = v72;
    v62 = v28;
    v58 = 3;
    sub_217B09D18(&v70, v56);
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
    v37 = v20 + v18[8];
    v38 = *(v37 + 16);
    v39 = *(v37 + 32);
    v54[0] = *v37;
    v54[1] = v38;
    v54[2] = v39;
    v55 = *(v37 + 48);
    v50 = v54[0];
    v51 = v38;
    v52 = *(v37 + 32);
    v53 = *(v37 + 48);
    v49 = 4;
    sub_217ACC004(v54, v47);
    sub_217A55B98();
    sub_217D89CAC();
    v47[0] = v50;
    v47[1] = v51;
    v47[2] = v52;
    v48 = v53;
    sub_217ACC69C(v47);
    v40 = (v20 + v18[9]);
    v41 = *v40;
    v42 = v40[1];
    LOWORD(v40) = *(v40 + 8);
    v44 = v41;
    v45 = v42;
    v46 = v40;
    v43[7] = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D0D068()
{
  result = qword_27CBA49F8;
  if (!qword_27CBA49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA49F8);
  }

  return result;
}

uint64_t SearchResultSelectEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_217D8899C();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D0D730(0, &qword_27CBA4A00, MEMORY[0x277D844C8]);
  v44 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SearchResultSelectEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217D0D068();
  v43 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v13 = v40;
  v14 = v41;
  v38 = v11;
  LOBYTE(v55) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v42;
  sub_217D89BCC();
  v16 = *(v14 + 32);
  v17 = v38;
  v16(v38, v15, v4);
  LOBYTE(v50) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v18 = *(&v55 + 1);
  v19 = v56;
  v20 = *(&v56 + 1);
  v21 = v17 + v9[5];
  *v21 = v55;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  LOBYTE(v50) = 2;
  sub_217BA2E90();
  v42 = 0;
  sub_217D89BCC();
  v22 = *(&v55 + 1);
  v23 = v56;
  v24 = v17 + v9[6];
  *v24 = v55;
  *(v24 + 8) = v22;
  *(v24 + 16) = v23;
  v54 = 3;
  sub_217B09D84();
  sub_217D89BCC();
  v25 = v17 + v9[7];
  v26 = v62;
  v27 = v64;
  *(v25 + 128) = v63;
  *(v25 + 144) = v27;
  v28 = v58;
  v29 = v60;
  v30 = v61;
  *(v25 + 64) = v59;
  *(v25 + 80) = v29;
  *(v25 + 160) = v65;
  *(v25 + 96) = v30;
  *(v25 + 112) = v26;
  v31 = v56;
  *v25 = v55;
  *(v25 + 16) = v31;
  *(v25 + 32) = v57;
  *(v25 + 48) = v28;
  v49 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v32 = v17 + v9[8];
  v33 = v51;
  *v32 = v50;
  *(v32 + 16) = v33;
  *(v32 + 32) = v52;
  *(v32 + 48) = v53;
  v45 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v13 + 8))(v43, v44);
  v34 = v47;
  v35 = v48;
  v36 = v17 + v9[9];
  *v36 = v46;
  *(v36 + 8) = v34;
  *(v36 + 16) = v35;
  sub_217D0D794(v17, v39);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_217D0D7F8(v17);
}

void sub_217D0D730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0D068();
    v7 = a3(a1, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0D794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D0D7F8(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D0D92C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_217D0DC2C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D0C208(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
    if (v2 <= 0x3F)
    {
      sub_217D0C208(319, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
      if (v3 <= 0x3F)
      {
        sub_217D0C208(319, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
        if (v4 <= 0x3F)
        {
          sub_217D0C208(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            sub_217D0C208(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
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

uint64_t sub_217D0DE50(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D0DF04()
{
  result = qword_27CBA4A28;
  if (!qword_27CBA4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A28);
  }

  return result;
}

unint64_t sub_217D0DF5C()
{
  result = qword_27CBA4A30;
  if (!qword_27CBA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A30);
  }

  return result;
}

unint64_t sub_217D0DFB4()
{
  result = qword_27CBA4A38;
  if (!qword_27CBA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A38);
  }

  return result;
}

uint64_t sub_217D0E008(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2920 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD04C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

NewsAnalytics::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::String rawValue)
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

uint64_t Priority.rawValue.getter()
{
  v1 = 7827308;
  v2 = 1751607656;
  if (*v0 != 2)
  {
    v2 = 0x6867694879726576;
  }

  if (*v0)
  {
    v1 = 0x6C616D726F6ELL;
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

unint64_t sub_217D0E2F4()
{
  result = qword_27CBA4A40;
  if (!qword_27CBA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A40);
  }

  return result;
}

uint64_t sub_217D0E348()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0E3F8(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D0E494(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0E54C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827308;
  v4 = 0xE400000000000000;
  v5 = 1751607656;
  if (*v1 != 2)
  {
    v5 = 0x6867694879726576;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C616D726F6ELL;
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

unint64_t sub_217D0E678()
{
  result = qword_2811BD2C8;
  if (!qword_2811BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2C8);
  }

  return result;
}

uint64_t sub_217D0E6CC()
{
  result = sub_217D879FC();
  if (result)
  {
    v1 = result;
    v25 = 0xD000000000000012;
    v26 = 0x8000000217DD2960;
    sub_217D899BC();
    if (*(v1 + 16) && (v2 = sub_217D7AB6C(v24), (v3 & 1) != 0))
    {
      sub_217AE02B0(*(v1 + 56) + 32 * v2, &v25);
      sub_217B74D38(v24);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v22;
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = v23;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      sub_217B74D38(v24);
      v5 = 0;
      v6 = 0;
    }

    v25 = 0x6E676961706D6163;
    v26 = 0xEA00000000004449;
    sub_217D899BC();
    if (*(v1 + 16) && (v7 = sub_217D7AB6C(v24), (v8 & 1) != 0))
    {
      sub_217AE02B0(*(v1 + 56) + 32 * v7, &v25);
      sub_217B74D38(v24);
      v9 = swift_dynamicCast();
      if (v9)
      {
        v10 = v22;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        v11 = v23;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      sub_217B74D38(v24);
      v10 = 0;
      v11 = 0;
    }

    v12 = swift_allocObject();
    sub_217D899BC();
    if (*(v1 + 16) && (v13 = sub_217D7AB6C(v24), (v14 & 1) != 0))
    {
      sub_217AE02B0(*(v1 + 56) + 32 * v13, &v25);
      sub_217B74D38(v24);
      if (swift_dynamicCast())
      {
        v15 = *(v12 + 16);
        if (v15 == 2 || (v15 & 1) != 0)
        {
LABEL_28:
          v16 = swift_allocObject();
          v16[2] = v5;
          v16[3] = v6;
          v16[4] = v10;
          v16[5] = v11;
          v16[6] = v12;

          sub_217D8833C();

          sub_217D899BC();
          if (*(v1 + 16) && (v17 = sub_217D7AB6C(v24), (v18 & 1) != 0))
          {
            sub_217AE02B0(*(v1 + 56) + 32 * v17, &v25);
            sub_217B74D38(v24);

            if (swift_dynamicCast())
            {
              v19 = 0x656449726566666FLL;
              v20 = 0xEF7265696669746ELL;
LABEL_34:
              v21 = swift_allocObject();
              *(v21 + 16) = v19;
              *(v21 + 24) = v20;
              sub_217D8833C();
            }
          }

          else
          {

            sub_217B74D38(v24);
          }

          v19 = 0;
          v20 = 0xE000000000000000;
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_217B74D38(v24);
    }

    *(v12 + 16) = 2;
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_217D0EABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a1;
  sub_217D0F0A0(0, &unk_2811C89E8, sub_217D0F100, &type metadata for AMSMarketingItemData);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  swift_beginAccess();
  v16 = *(a6 + 16);
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v23 = v16;
  sub_217D0F100();

  sub_217D880EC();
  sub_217A4CA88(0);
  v17 = sub_217D882DC();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_217D8D8F0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD10], v17);
  sub_217D8854C();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_217D0ED20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217D0F0A0(0, &unk_2811C89D0, sub_217D0F04C, &type metadata for ConfigurableOffersData);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v15[0] = a2;
  v15[1] = a3;
  sub_217D0F04C();

  sub_217D880EC();
  sub_217A4CA88(0);
  v10 = sub_217D882DC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_217D8D8F0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CEAD10], v10);
  sub_217D8854C();

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D0F04C()
{
  result = qword_2811C04F8;
  if (!qword_2811C04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04F8);
  }

  return result;
}

void sub_217D0F0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_217D0F100()
{
  result = qword_2811C2460;
  if (!qword_2811C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2460);
  }

  return result;
}

NewsAnalytics::AlternateHeadlineTreatmentStateData_optional __swiftcall AlternateHeadlineTreatmentStateData.init(rawValue:)(Swift::String rawValue)
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

uint64_t AlternateHeadlineTreatmentStateData.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x654472656E6E6977;
  if (v1 != 5)
  {
    v3 = 0x6C4172656E6E6977;
  }

  v4 = 1953719668;
  if (v1 != 3)
  {
    v4 = 0x724172656E6E6977;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746C7561666564;
  if (v1 != 1)
  {
    v5 = 0x6C6F72746E6F63;
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

unint64_t sub_217D0F2B8()
{
  result = qword_27CBA4A48;
  if (!qword_27CBA4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A48);
  }

  return result;
}

uint64_t sub_217D0F318(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217D0F458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xED0000746C756166;
  v6 = 0x654472656E6E6977;
  if (v2 != 5)
  {
    v6 = 0x6C4172656E6E6977;
    v5 = 0xEF6574616E726574;
  }

  v7 = 0xE400000000000000;
  v8 = 1953719668;
  if (v2 != 3)
  {
    v8 = 0x724172656E6E6977;
    v7 = 0xED0000656C636974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x746C7561666564;
  if (v2 != 1)
  {
    v9 = 0x6C6F72746E6F63;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
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

unint64_t sub_217D0F614()
{
  result = qword_2811BDA28;
  if (!qword_2811BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA28);
  }

  return result;
}

uint64_t sub_217D0F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F43646964 && a2 == 0xEA0000000000746ELL)
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

uint64_t sub_217D0F754(uint64_t a1)
{
  v2 = sub_217D0F914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0F790(uint64_t a1)
{
  v2 = sub_217D0F914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenActionData.encode(to:)(void *a1)
{
  sub_217D0FAEC(0, &qword_27CBA4A50, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D0F914()
{
  result = qword_27CBA4A58;
  if (!qword_27CBA4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A58);
  }

  return result;
}

uint64_t ConsentScreenActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D0FAEC(0, &qword_27CBA4A60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0FAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0F914();
    v7 = a3(a1, &type metadata for ConsentScreenActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0FB70(void *a1)
{
  sub_217D0FAEC(0, &qword_27CBA4A50, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D0FCDC()
{
  result = qword_27CBA4A68;
  if (!qword_27CBA4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A68);
  }

  return result;
}

unint64_t sub_217D0FD34()
{
  result = qword_27CBA4A70;
  if (!qword_27CBA4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A70);
  }

  return result;
}

unint64_t sub_217D0FD8C()
{
  result = qword_27CBA4A78;
  if (!qword_27CBA4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A78);
  }

  return result;
}

uint64_t sub_217D0FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000217DD2A50 == a2)
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

uint64_t sub_217D0FEDC(uint64_t a1)
{
  v2 = sub_217D100B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0FF18(uint64_t a1)
{
  v2 = sub_217D100B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityOriginationData.encode(to:)(void *a1)
{
  sub_217D102F0(0, &qword_27CBA4A80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D100B0();
  sub_217D89E7C();
  v11 = v8;
  sub_217D10104();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D100B0()
{
  result = qword_27CBA4A88;
  if (!qword_27CBA4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A88);
  }

  return result;
}

unint64_t sub_217D10104()
{
  result = qword_27CBA4A90;
  if (!qword_27CBA4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A90);
  }

  return result;
}

uint64_t LiveActivityOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D102F0(0, &qword_27CBA4A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D100B0();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D10354();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D102F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D100B0();
    v7 = a3(a1, &type metadata for LiveActivityOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D10354()
{
  result = qword_27CBA4AA0;
  if (!qword_27CBA4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AA0);
  }

  return result;
}

unint64_t sub_217D10404()
{
  result = qword_27CBA4AA8;
  if (!qword_27CBA4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AA8);
  }

  return result;
}

unint64_t sub_217D1045C()
{
  result = qword_27CBA4AB0;
  if (!qword_27CBA4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AB0);
  }

  return result;
}

unint64_t sub_217D104B4()
{
  result = qword_27CBA4AB8;
  if (!qword_27CBA4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AB8);
  }

  return result;
}

NewsAnalytics::AdJournalEntryData __swiftcall AdJournalEntryData.init(status:error:)(NewsAnalytics::AdJournalEntryStatus status, NewsAnalytics::AdJournalEntryError_optional error)
{
  v3 = *error.value;
  *v2 = *status;
  v2[1] = v3;
  result.status = status;
  return result;
}

uint64_t sub_217D10594()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_217D105C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_217D1069C(uint64_t a1)
{
  v2 = sub_217D108C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D106D8(uint64_t a1)
{
  v2 = sub_217D108C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryData.encode(to:)(void *a1)
{
  sub_217D10BA0(0, &qword_2811BC6C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D108C0();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217D10914();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217D10968();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217D108C0()
{
  result = qword_2811C4070[0];
  if (!qword_2811C4070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4070);
  }

  return result;
}

unint64_t sub_217D10914()
{
  result = qword_2811C2448;
  if (!qword_2811C2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2448);
  }

  return result;
}

unint64_t sub_217D10968()
{
  result = qword_2811C2D90;
  if (!qword_2811C2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D90);
  }

  return result;
}

uint64_t AdJournalEntryData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D10BA0(0, &qword_27CBA4AC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D108C0();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217D10C04();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217D10C58();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D10BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D108C0();
    v7 = a3(a1, &type metadata for AdJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D10C04()
{
  result = qword_27CBA4AC8;
  if (!qword_27CBA4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AC8);
  }

  return result;
}

unint64_t sub_217D10C58()
{
  result = qword_27CBA4AD0;
  if (!qword_27CBA4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdJournalEntryData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_217D10DAC()
{
  result = qword_27CBA4AD8;
  if (!qword_27CBA4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AD8);
  }

  return result;
}

unint64_t sub_217D10E04()
{
  result = qword_2811C4060;
  if (!qword_2811C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4060);
  }

  return result;
}

unint64_t sub_217D10E5C()
{
  result = qword_2811C4068;
  if (!qword_2811C4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4068);
  }

  return result;
}

uint64_t sub_217D10F04(uint64_t a1)
{
  v2 = sub_217D110C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D10F40(uint64_t a1)
{
  v2 = sub_217D110C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedPositionData.encode(to:)(void *a1)
{
  sub_217D11298(0, &qword_2811BC720, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D110C4()
{
  result = qword_2811C5260;
  if (!qword_2811C5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5260);
  }

  return result;
}

uint64_t FeedPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D11298(0, &qword_2811BCA78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D11298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D110C4();
    v7 = a3(a1, &type metadata for FeedPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1131C(void *a1)
{
  sub_217D11298(0, &qword_2811BC720, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D11488()
{
  result = qword_27CBA4AE0;
  if (!qword_27CBA4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AE0);
  }

  return result;
}

unint64_t sub_217D114E0()
{
  result = qword_2811C5250;
  if (!qword_2811C5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5250);
  }

  return result;
}

unint64_t sub_217D11538()
{
  result = qword_2811C5258;
  if (!qword_2811C5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5258);
  }

  return result;
}

uint64_t SportScoreConcernData.competitorTagIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SportScoreConcernData.umcCanonicalID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportScoreConcernData.umcCanonicalID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SportScoreConcernData.embedURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportScoreConcernData.embedURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SportScoreConcernData.dataURLs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t SportScoreConcernData.leagueUmcId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SportScoreConcernData.leagueUmcId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t SportScoreConcernData.leagueName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SportScoreConcernData.leagueName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void __swiftcall SportScoreConcernData.init(concernContentType:competitorTagIDs:umcCanonicalID:embedURL:dataURLs:leagueUmcId:leagueName:)(NewsAnalytics::SportScoreConcernData *__return_ptr retstr, NewsAnalytics::SportScoreConcernContentType concernContentType, Swift::OpaquePointer competitorTagIDs, Swift::String umcCanonicalID, Swift::String embedURL, Swift::OpaquePointer dataURLs, Swift::String_optional leagueUmcId, Swift::String_optional leagueName)
{
  retstr->concernContentType = *concernContentType;
  retstr->competitorTagIDs = competitorTagIDs;
  retstr->umcCanonicalID = umcCanonicalID;
  retstr->embedURL = embedURL;
  retstr->dataURLs = dataURLs;
  retstr->leagueUmcId.value._countAndFlagsBits = leagueUmcId.value._countAndFlagsBits;
  *&retstr->leagueUmcId.value._object = *&leagueUmcId.value._object;
  retstr->leagueName.value._object = leagueName.value._object;
}

unint64_t sub_217D118C0()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x6D5565756761656CLL;
  if (v1 != 5)
  {
    v3 = 0x614E65756761656CLL;
  }

  v4 = 0x4C52556465626D65;
  if (v1 != 3)
  {
    v4 = 0x734C525561746164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_217D119C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D12640(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D119E8(uint64_t a1)
{
  v2 = sub_217D11D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D11A24(uint64_t a1)
{
  v2 = sub_217D11D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportScoreConcernData.encode(to:)(void *a1)
{
  sub_217D1238C(0, &qword_27CBA4AE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v12 = *(v1 + 6);
  v22 = *(v1 + 5);
  v23 = v10;
  v20 = v12;
  v21 = v11;
  v13 = *(v1 + 8);
  v19[2] = *(v1 + 7);
  v19[3] = v13;
  v14 = *(v1 + 10);
  v19[1] = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D11D48();
  sub_217D89E7C();
  LOBYTE(v27) = v8;
  v28 = 0;
  sub_217D11D9C();
  v15 = v26;
  sub_217D89CAC();
  if (!v15)
  {
    v26 = v14;
    v27 = v25;
    v28 = 1;
    sub_217A55F8C();
    v17 = v16;
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89CAC();
    v25 = v17;
    LOBYTE(v27) = 2;
    sub_217D89C6C();
    LOBYTE(v27) = 3;
    sub_217D89C6C();
    v27 = v20;
    v28 = 4;
    sub_217D89CAC();
    LOBYTE(v27) = 5;
    sub_217D89C0C();
    LOBYTE(v27) = 6;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D11D48()
{
  result = qword_27CBA4AF0;
  if (!qword_27CBA4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AF0);
  }

  return result;
}

unint64_t sub_217D11D9C()
{
  result = qword_27CBA4AF8;
  if (!qword_27CBA4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AF8);
  }

  return result;
}

uint64_t SportScoreConcernData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D1238C(0, &qword_27CBA4B00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D11D48();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_217D123F0();
    sub_217D89BCC();
    v46 = LOBYTE(v43[0]);
    sub_217A55F8C();
    LOBYTE(v37) = 1;
    v10 = sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    v34 = v10;
    v36 = v43[0];
    LOBYTE(v43[0]) = 2;
    v11 = sub_217D89B8C();
    v35 = v12;
    v32 = v11;
    LOBYTE(v43[0]) = 3;
    v31 = sub_217D89B8C();
    v33 = v13;
    LOBYTE(v37) = 4;
    sub_217D89BCC();
    v34 = v43[0];
    LOBYTE(v43[0]) = 5;
    v14 = sub_217D89B2C();
    v16 = v15;
    v17 = v14;
    v44 = 6;
    v18 = sub_217D89B2C();
    v30 = v19;
    v20 = v18;
    (*(v7 + 8))(v9, v6);
    LOBYTE(v37) = v46;
    DWORD1(v37) = *(v45 + 3);
    *(&v37 + 1) = v45[0];
    v21 = v36;
    *(&v37 + 1) = v36;
    v22 = v35;
    *&v38 = v32;
    *(&v38 + 1) = v35;
    *&v39 = v31;
    *(&v39 + 1) = v33;
    *&v40 = v34;
    *(&v40 + 1) = v17;
    *&v41 = v16;
    *(&v41 + 1) = v20;
    v23 = v30;
    v42 = v30;
    v25 = v39;
    v24 = v40;
    v26 = v41;
    *(a2 + 80) = v30;
    *(a2 + 48) = v24;
    *(a2 + 64) = v26;
    v27 = v37;
    *(a2 + 16) = v38;
    *(a2 + 32) = v25;
    *a2 = v27;
    sub_217CCC334(&v37, v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v43[0]) = v46;
    *(v43 + 1) = v45[0];
    HIDWORD(v43[0]) = *(v45 + 3);
    v43[1] = v21;
    v43[2] = v32;
    v43[3] = v22;
    v43[4] = v31;
    v43[5] = v33;
    v43[6] = v34;
    v43[7] = v17;
    v43[8] = v16;
    v43[9] = v20;
    v43[10] = v23;
    return sub_217CCC870(v43);
  }
}

void sub_217D1238C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D11D48();
    v7 = a3(a1, &type metadata for SportScoreConcernData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D123F0()
{
  result = qword_27CBA4B08;
  if (!qword_27CBA4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B08);
  }

  return result;
}

uint64_t sub_217D1247C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_217D124C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217D1253C()
{
  result = qword_27CBA4B10;
  if (!qword_27CBA4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B10);
  }

  return result;
}

unint64_t sub_217D12594()
{
  result = qword_27CBA4B18;
  if (!qword_27CBA4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B18);
  }

  return result;
}

unint64_t sub_217D125EC()
{
  result = qword_27CBA4B20;
  if (!qword_27CBA4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B20);
  }

  return result;
}

uint64_t sub_217D12640(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000217DD1970 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2A70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0044496C616369 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556465626D65 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734C525561746164 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D5565756761656CLL && a2 == 0xEB00000000644963 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E65756761656CLL && a2 == 0xEA0000000000656DLL)
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

NewsAnalytics::FeedType_optional __swiftcall FeedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FeedType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x756F59726F66;
      break;
    case 2:
    case 3:
      result = 0x656E697A6167616DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C656E6E616863;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x697A6167614D796DLL;
      break;
    case 9:
      result = 6385509;
      break;
    case 0xA:
      result = 0x6F69647561;
      break;
    case 0xB:
      result = 0x7369486F69647561;
      break;
    case 0xC:
      result = 0x616C506F69647561;
      break;
    case 0xD:
      result = 0x6465766173;
      break;
    case 0xE:
      result = 0x79726F74736968;
      break;
    case 0xF:
      result = 0x686372616573;
      break;
    case 0x10:
      result = 0x6F48686372616573;
      break;
    case 0x11:
      result = 0x6957646572616873;
      break;
    case 0x12:
      result = 0x7374726F7073;
      break;
    case 0x13:
      result = 0x76457374726F7073;
      break;
    case 0x14:
      result = 0x7548656C7A7A7570;
      break;
    case 0x15:
      result = 0x7954656C7A7A7570;
      break;
    case 0x16:
      result = 0xD000000000000011;
      break;
    case 0x17:
      result = 0x6F42657069636572;
      break;
    case 0x18:
      result = 0x627548646F6F66;
      break;
    case 0x19:
      result = 0x6143657069636572;
      break;
    case 0x1A:
      result = 7499621;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D12CD8()
{
  v0 = FeedType.rawValue.getter();
  v2 = v1;
  if (v0 == FeedType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217D12D78()
{
  result = qword_27CBA4B28;
  if (!qword_27CBA4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B28);
  }

  return result;
}

uint64_t sub_217D12DCC()
{
  sub_217D89E1C();
  FeedType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D12E34(uint64_t a1)
{
  FeedType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217D12E98(uint64_t a1)
{
  sub_217D89E1C();
  FeedType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217D12F08@<X0>(unint64_t *a1@<X8>)
{
  result = FeedType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}