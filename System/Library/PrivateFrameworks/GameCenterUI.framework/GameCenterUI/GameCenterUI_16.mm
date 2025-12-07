uint64_t sub_24E0EDC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RemoveFriendAction(uint64_t a1)
{
  result = qword_27F1E3B88;
  if (!qword_27F1E3B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0EDCE0(uint64_t a1)
{
  result = sub_24DF88A8C(319, &qword_280BDFA90, 0x277D0C138);
  if (v2 <= 0x3F)
  {
    result = sub_24DF88A8C(319, &qword_27F1E3D40, 0x277D0C1C8);
    if (v3 <= 0x3F)
    {
      result = sub_24E347208();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E0EDE00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_24E0EDEFC(uint64_t a1)
{
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - v4;
  v9 = type metadata accessor for BaseHostingViewController(0, v3, *((v7 & v6) + 0x138), v8);
  v15.receiver = v2;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  sub_24E345628();
  sub_24E0EDE94(v5);
  v10 = sub_24E345618();
  v11 = [v2 view];
  if (!v11)
  {
    v12 = v10;
    goto LABEL_5;
  }

  v12 = v11;
  [v11 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v2 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview_];

    sub_24E225DAC(v10, 0.0, 0.0);
    sub_24E225F0C(v10, 0.0, 1.0);
    sub_24E2260E8(v10, 0.0, 1.0);

LABEL_5:
    return;
  }

  __break(1u);
}

void sub_24E0EE0B0(void *a1)
{
  v1 = a1;
  sub_24E0EDEFC(v1);
}

void sub_24E0EE0F8(char a1)
{
  OUTLINED_FUNCTION_0_99();
  OUTLINED_FUNCTION_0_99();
  v6 = type metadata accessor for BaseHostingViewController(0, v4, *(v3 + 312), v5);
  v9.receiver = v1;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v7 = [v1 navigationItem];
  v8 = qword_27F20AED0;
  qword_27F20AED0 = v7;
}

void sub_24E0EE198(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E0EE0F8(a3);
}

id sub_24E0EE1EC(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_27F20AED0;
  qword_27F20AED0 = 0;

  v7 = type metadata accessor for BaseHostingViewController(0, *((v4 & v3) + 0x130), *((v4 & v3) + 0x138), v6);
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
}

void sub_24E0EE284(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E0EE1EC(a3);
}

id sub_24E0EE2D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x140)], a1, v5);
  v8 = type metadata accessor for BaseHostingViewController(0, v5, *((v4 & v3) + 0x138), v7);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v6 + 8))(a1, v5);
  return v9;
}

id sub_24E0EE50C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_99();
  OUTLINED_FUNCTION_0_99();
  v6 = type metadata accessor for BaseHostingViewController(0, v4, *(v3 + 312), v5);
  v8.receiver = v2;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_24E0EE5FC(char a1, char a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a1;
  *(v3 + 17) = a2;
  return v3;
}

void *sub_24E0EE610(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v8 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24DF95B98(a1, v7, &qword_27F1DF018, &qword_24E372030);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_24E0EF370(v7, v12);
    v14 = *(v12 + v8[11]);

    v15 = sub_24E0EF228(a2);
    type metadata accessor for DashboardPresenter(0);
    v34 = 0uLL;
    v33 = 0;
    v35 = 0;
    OUTLINED_FUNCTION_19_1();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = &OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToActivityInfo;
    }

    else
    {
      v18 = type metadata accessor for DashboardActivityFeedPresenter(0);
      v16 = OUTLINED_FUNCTION_8_37(v18);
      if (!v16)
      {
        goto LABEL_9;
      }

      v17 = &OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo;
    }

    v19 = v16 + *v17;
    v20 = *(v19 + 24);
    v33 = *v19;
    v34 = *(v19 + 8);
    v35 = v20;
    if (v34)
    {
      *(&v34 + 1) = 0;
      v35 = 1;
    }

LABEL_9:
    v21 = v8[9];
    v22 = *(v12 + v8[8]);
    v32[0] = 0;
    v32[1] = v14;
    v13 = static PlayerProfileUtil.ParseActivityFeed(with:requiredData:isFirstLoad:numOfSectionAboveThisShelf:scrollToActivityInfo:)(v22, v32, *(v12 + v21), v15, &v33);
    OUTLINED_FUNCTION_2_62();
    sub_24E0EF318(v12, v23);

    OUTLINED_FUNCTION_19_1();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToActivityInfo;
    }

    else
    {
      v26 = type metadata accessor for DashboardActivityFeedPresenter(0);
      v24 = OUTLINED_FUNCTION_8_37(v26);
      if (!v24)
      {
LABEL_17:

        return v13;
      }

      v25 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo;
    }

    v27 = v24 + v25;
    if (*(v27 + 8))
    {
      v28 = v34 == 0;
      v29 = *(&v34 + 1);
      v30 = v35;
      if (!v34)
      {
        v29 = 0;
      }

      *(v27 + 16) = v29;
      *(v27 + 24) = (v28 | v30) & 1;
    }

    goto LABEL_17;
  }

  sub_24DF8BFF4(v7, &qword_27F1DF018, &qword_24E372030);
  return 0;
}

uint64_t sub_24E0EE878@<X0>(void *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v115 = a1;
  v5 = sub_24E347458();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v113 = v8 - v7;
  v9 = sub_24E347478();
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v112 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v13);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v114 = &v104 - v15;
  v16 = sub_24E3433A8();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  OUTLINED_FUNCTION_4_5(v20);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  v117 = &v104 - v22;
  v23 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v118 = (v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  v28 = OUTLINED_FUNCTION_4_5(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v119 = &v104 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  OUTLINED_FUNCTION_4_5(v33);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v104 - v35;
  sub_24DF95B98(a3, &v104 - v35, &qword_27F1DF018, &qword_24E372030);
  v37 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_24DF8BFF4(v36, &qword_27F1DF018, &qword_24E372030);
    v38 = 0;
    v39 = v119;
    goto LABEL_11;
  }

  v40 = *&v36[*(v37 + 32)];
  v41 = v40;
  OUTLINED_FUNCTION_2_62();
  sub_24E0EF318(v36, v42);
  v39 = v119;
  if (!v40)
  {
    goto LABEL_10;
  }

  v43 = sub_24E165D40(v41);
  if (!v43)
  {
    goto LABEL_10;
  }

  v44 = v43;
  if (!sub_24DFD8654())
  {

LABEL_10:
    v38 = 0;
    goto LABEL_11;
  }

  sub_24DFFA844();
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x25303F560](0, v44);
  }

  else
  {
    v45 = *(v44 + 32);
  }

  v38 = v45;

LABEL_11:
  v46 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v50 = sub_24E0EF228(v115);
  if (v38)
  {
    v108 = v50;
    v51 = sub_24E078E9C(v38);
    if (v52)
    {
      v107 = v52;
      v109 = v51;
      v115 = v38;
      v53 = v118;
      sub_24E099B2C(v118);
      type metadata accessor for TitleHeaderView.TextConfiguration(0);
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for PlayerCardTheme(0);
      v59 = *(__swift_project_value_buffer(v58, qword_27F20BF00) + *(v58 + 40));
      v60 = v23[8];
      v53[v23[6]] = 0;
      v53[v23[7]] = 0;
      v53[v60] = 0;
      v53[v23[9]] = 0;
      *&v53[v23[11]] = 0;
      *&v53[v23[13]] = v59;
      v53[v23[10]] = 1;
      v53[v23[12]] = 0;
      memset(v126, 0, sizeof(v126));
      v127 = -1;
      memset(v124, 0, sizeof(v124));
      v125 = -1;
      v123 = 0;
      memset(v122, 0, sizeof(v122));
      v61 = v59;
      v62 = sub_24E078F80(v115);
      if (!v63)
      {
        v62 = sub_24E31685C(*(v116 + 16));
      }

      v105 = v63;
      v106 = v62;
      sub_24E3444F8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      sub_24E343398();
      v104 = sub_24E343378();
      v69 = v68;
      (*(v110 + 8))(v19, v111);
      v70 = &v30[v46[7]];
      *(v70 + 32) = 0u;
      *(v70 + 48) = 0u;
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 64) = -1;
      v71 = &v30[v46[9]];
      *(v71 + 32) = 0u;
      *(v71 + 48) = 0u;
      *v71 = 0u;
      *(v71 + 16) = 0u;
      *(v71 + 64) = -1;
      v72 = &v30[v46[10]];
      v73 = &v30[v46[11]];
      *(v73 + 32) = 0;
      *v73 = 0u;
      *(v73 + 16) = 0u;
      v74 = v46[13];
      v110 = v46[12];
      v75 = &v30[v74];
      *(v75 + 4) = 0;
      *v75 = 0u;
      *(v75 + 1) = 0u;
      v116 = v46[14];
      v111 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
      v120 = v104;
      v121 = v69;
      sub_24E348918();
      sub_24E026ED8(v118, &v30[v46[5]]);
      v80 = &v30[v46[6]];
      v81 = v107;
      *v80 = v109;
      *(v80 + 1) = v81;

      sub_24DF95B4C(v126, v70, &qword_27F1DEE88, &unk_24E36BF90);
      v82 = &v30[v46[8]];
      *v82 = 0;
      *(v82 + 1) = 0;
      sub_24DF95B4C(v124, v71, &qword_27F1DEE88, &unk_24E36BF90);
      *&v30[v110] = 0;
      *v72 = 0;
      *(v72 + 1) = 0;
      sub_24DF95B4C(v122, v73, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF95B98(v117, &v30[v46[17]], &qword_27F1DF050, &unk_24E36B8D0);
      v83 = &v30[v46[16]];
      v84 = v108;
      *v83 = v108;
      v83[8] = 0;
      v85 = &v30[v46[15]];
      v86 = v105;
      *v85 = v106;
      *(v85 + 1) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E369E30;
      strcpy((inited + 32), "impressionType");
      *(inited + 47) = -18;
      *(inited + 48) = 0x666C656873;
      *(inited + 56) = 0xE500000000000000;
      v88 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = 0x6973736572706D69;
      v89 = MEMORY[0x277D83B88];
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = v84;
      *(inited + 120) = v89;
      *(inited + 128) = 0x657079546469;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 0x636974617473;
      *(inited + 152) = 0xE600000000000000;
      *(inited + 168) = v88;
      *(inited + 176) = 1701667182;
      *(inited + 216) = v88;
      v90 = v109;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = v90;
      *(inited + 200) = v81;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v91 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v91);
      v92 = v114;
      sub_24E347488();

      sub_24DF8BFF4(v117, &qword_27F1DF050, &unk_24E36B8D0);
      sub_24DF8BFF4(v122, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BFF4(v124, &qword_27F1DEE88, &unk_24E36BF90);
      sub_24DF8BFF4(v126, &qword_27F1DEE88, &unk_24E36BF90);
      sub_24E0EF318(v118, type metadata accessor for TitleHeaderView.Style);
      v39 = v119;
      sub_24DF8BFF4(v119, &qword_27F1DF058, &unk_24E36F980);
      __swift_storeEnumTagSinglePayload(v92, 0, 1, v111);
      sub_24DF8BEB4(v92, &v30[v116]);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v46);
      sub_24E026E68(v30, v39);
    }

    else
    {
    }
  }

  v93 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = a2 + v93[11];
  *v98 = 0u;
  *(v98 + 16) = 0u;
  *(v98 + 32) = 1;
  v99 = a2 + v93[12];
  *v99 = 0;
  *(v99 + 8) = 1;
  v100 = (a2 + v93[13]);
  v101 = (a2 + v93[14]);
  v102 = (a2 + v93[15]);
  result = sub_24E026E68(v39, a2);
  *(a2 + v93[6]) = 1;
  *v100 = 0;
  v100[1] = 0;
  *v101 = 0;
  v101[1] = 0;
  *v102 = 0;
  v102[1] = 0;
  *(a2 + v93[7]) = 1;
  *(a2 + v93[8]) = 1;
  *(a2 + v93[9]) = 1;
  *(a2 + v93[10]) = 0;
  return result;
}

unint64_t sub_24E0EF228(void *a1)
{
  v3 = type metadata accessor for DashboardPresenter(0);
  if (OUTLINED_FUNCTION_8_37(v3))
  {
    v4 = *(v1 + 16);
    v5 = a1;
    sub_24E2629F0(v4);
  }

  else
  {
    v7 = type metadata accessor for DashboardActivityFeedPresenter(0);
    if (!OUTLINED_FUNCTION_8_37(v7))
    {
      return 0;
    }

    v8 = *(v1 + 16);
    v9 = a1;
    v6 = sub_24E2B4E74(v8);
  }

  v10 = v6;

  return v10;
}

uint64_t sub_24E0EF2BC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24E0EF318(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E0EF370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_37(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t sub_24E0EF428(uint64_t a1)
{
  v1 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E347348();
  sub_24E346FC8();
  v8 = sub_24E346FF8();
  v10 = v9;
  sub_24E343C98();
  v11 = sub_24E343F78();
  if (os_log_type_enabled(v11, v7))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_24E1C2BE0(v8, v10, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_24DE53000, v11, v7, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x253040EE0](v13, -1, -1);
    MEMORY[0x253040EE0](v12, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_24E0EF5FC(uint64_t a1, unsigned int *a2, __n128 a3)
{
  v5 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *a2, v5, v9);
  sub_24E0EF428(a1);
  return (*(v7 + 8))(v11, v5);
}

double sub_24E0EF6E4(double a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v4 sizeThatFits_];

  if (qword_27F1DD868 != -1)
  {
    OUTLINED_FUNCTION_0_100(&qword_27F1DD868);
  }

  sub_24E348558();
  return v5;
}

uint64_t sub_24E0EF790()
{
  v0 = sub_24E3444F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27F20B4E8);
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  sub_24E3444E8();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v6, v0);
  v8(v3, v7, v0);
  sub_24E3444E8();
  v13 = v12;
  result = (v11)(v3, v0);
  qword_27F1E3C18 = v10;
  qword_27F1E3C20 = 0;
  qword_27F1E3C28 = v13;
  qword_27F1E3C30 = 0;
  return result;
}

char *sub_24E0EF93C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LoadingIndicatorAccessoryView();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator;
  v12 = *&v10[OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator];
  v13 = v10;
  [v12 setHidesWhenStopped_];
  [v13 addSubview_];

  return v13;
}

void sub_24E0EFA40()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  sub_24E348AE8();
  __break(1u);
}

double sub_24E0EFAE4(double a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator) sizeThatFits_];
  if (qword_27F1DD868 != -1)
  {
    OUTLINED_FUNCTION_0_100(&qword_27F1DD868);
  }

  sub_24E348558();
  return a1;
}

id sub_24E0EFBC0(uint64_t a1)
{
  v37.receiver = v1;
  v37.super_class = type metadata accessor for LoadingIndicatorAccessoryView();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator];
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  [v1 layoutMargins];
  [v2 sizeThatFits_];
  v12 = v11;
  v14 = v13;
  [v1 bounds];
  v16 = v15;
  v18 = v17;
  [v1 layoutMargins];
  v20 = v19;
  v38.origin.x = v21;
  v23 = v16 - v21 - v22;
  v38.size.height = v18 - v20 - v24;
  v38.origin.y = v20;
  v38.size.width = v23;
  v25 = CGRectGetMidX(v38) - v12 * 0.5;
  [v1 bounds];
  v27 = v26;
  v29 = v28;
  [v1 layoutMargins];
  v31 = v30;
  v39.origin.x = v32;
  v34 = v27 - v32 - v33;
  v39.size.height = v29 - v31 - v35;
  v39.origin.y = v31;
  v39.size.width = v34;
  return [v2 setFrame_];
}

id sub_24E0EFD7C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LoadingIndicatorAccessoryView();
  objc_msgSendSuper2(&v5, sel_didMoveToSuperview);
  v2 = [v1 superview];
  if (v2)
  {

    v3 = &selRef_startAnimating;
  }

  else
  {
    v3 = &selRef_stopAnimating;
  }

  return [*&v1[OBJC_IVAR____TtC12GameCenterUI29LoadingIndicatorAccessoryView_loadingIndicator] *v3];
}

id sub_24E0EFE40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LoadingIndicatorAccessoryView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for BlackListCoreRecencyContactAction(uint64_t a1)
{
  result = qword_27F1E3C40;
  if (!qword_27F1E3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E0EFF3C(uint64_t a1)
{
  result = sub_24E03A93C();
  if (v2 <= 0x3F)
  {
    result = sub_24E347208();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_24E0EFFC0(void *a1, uint64_t a2, void *a3, void (**a4)(char *, char *, uint64_t), void *a5, uint64_t a6, int a7, int a8)
{
  LODWORD(v39) = a8;
  v45 = a7;
  v44 = a6;
  v42 = a5;
  v40 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_24E343288();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  v20 = sub_24E343368();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_24E2FB274(a1, a2, a3, v40, v42, v44);
  v22 = v21;
  sub_24DF8C95C(v19, &unk_27F1E5890, qword_24E377010);
  v49 = a1;
  v50 = a2;
  v23 = v22[2];
  if (v23)
  {
    v44 = v14;
    v24 = (v39 & 1) == 0;
    v25 = 9142498;
    if (v39)
    {
      v25 = 0;
    }

    v39 = v25;
    v40 = (v15 + 32);
    if (v24)
    {
      v26 = 0xA300000000000000;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v37 = (v15 + 8);
    v38 = v26;

    v27 = &v22[16 * v23 - 12];
    v28 = v23;
    v42 = v22;
    v43 = v13;
    while (v28 <= v23)
    {
      memcpy(v48, v27, sizeof(v48));
      v29 = v48[2];
      v30 = v48[3];
      if (v45)
      {
        v46 = v48[2];
        v47 = v48[3];
        sub_24E0F042C();
        OUTLINED_FUNCTION_0_101();
        sub_24E347D78();
      }

      else
      {
        memcpy(__dst, (v27 + 32), 0x51uLL);
        sub_24E0F03D0(v48, &v46);
        sub_24E18F520(__dst, v13);
        v31 = v44;
        if (__swift_getEnumTagSinglePayload(v13, 1, v44) == 1)
        {
          sub_24DF8C95C(v13, &qword_27F1DEFB8, &unk_24E36FFA0);
        }

        else
        {
          v32 = v41;
          (*v40)(v41, v43, v31);
          v46 = 5974570;
          v47 = 0xE300000000000000;
          MEMORY[0x25303E950](v29, v30);
          MEMORY[0x25303E950](10333, 0xE200000000000000);
          v33 = sub_24E343218();
          MEMORY[0x25303E950](v33);

          MEMORY[0x25303E950](41, 0xE100000000000000);
          MEMORY[0x25303E950](v39, v38);

          MEMORY[0x25303E950](10794, 0xE200000000000000);
          v29 = v46;
          v30 = v47;
          v34 = v32;
          v13 = v43;
          (*v37)(v34, v31);
        }

        v22 = v42;
        v46 = v29;
        v47 = v30;
        sub_24E0F042C();
        OUTLINED_FUNCTION_0_101();
        sub_24E347D78();
        sub_24E0F0480(v48);
      }

      if (!--v28)
      {
        goto LABEL_18;
      }

      v23 = v22[2];
      v27 -= 128;
    }

    __break(1u);
LABEL_18:

    return v49;
  }

  else
  {
  }

  return a1;
}

unint64_t sub_24E0F042C()
{
  result = qword_27F1E3C50;
  if (!qword_27F1E3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3C50);
  }

  return result;
}

uint64_t sub_24E0F04EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E116DC8(a1);
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24E0F7178;
  *(v9 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3C88, &qword_24E37A250);
  type metadata accessor for FriendSuggestionLockup(0);
  sub_24DFB4C28(&qword_27F1E3C90, &qword_27F1E3C88, &qword_24E37A250, MEMORY[0x277D83980]);
  sub_24E0F7A18(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup, &unk_24E37B930);
  sub_24E346CC8();
  v10 = sub_24E346E68();
  v11 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CA0, &qword_24E377B90) + 36));
  *v11 = v10;
  v11[1] = a1;
}

id sub_24E0F06B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  v7 = [a2 contact];
  v8 = [v7 identifier];

  sub_24E347CF8();
  v9 = sub_24E130ED0();

  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v10 = type metadata accessor for FriendSuggestionLockup(0);
  v11 = v10[6];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148, &unk_24E36D820);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v10[7];
  sub_24E346B78();
  *v12 = v16;
  *(v12 + 8) = v17;
  *(a4 + v10[8]) = a2;
  *(a4 + v10[9]) = a3;
  v13 = a4 + v10[10];
  strcpy(v13, "SearchResult");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = 4;
  strcpy((v13 + 48), "SearchResults");
  *(v13 + 62) = -4864;
  *(v13 + 64) = xmmword_24E3779C0;
  *(v13 + 80) = 1;
  *(v13 + 88) = 2;
  *(a4 + v10[11]) = v9;

  return a2;
}

uint64_t sub_24E0F08AC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_102();
  v2 = sub_24E0F7A18(v0, v1, &unk_24E377B28);
  OUTLINED_FUNCTION_6_42(v2, v3);
}

uint64_t sub_24E0F095C(unint64_t a1)
{

  sub_24E0DD69C(v4, a1);
  OUTLINED_FUNCTION_23_19();

  if (v2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_26_15(v6, v7, v8);
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t sub_24E0F0A30()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_102();
  v2 = sub_24E0F7A18(v0, v1, &unk_24E377B28);
  OUTLINED_FUNCTION_6_42(v2, v3);
}

uint64_t sub_24E0F0AE0(uint64_t a1)
{

  sub_24E0F747C(v4, a1, &qword_27F1E21A0, off_279667088);
  OUTLINED_FUNCTION_23_19();

  if (v2)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_26_15(v7, v8, v9);
  }
}

uint64_t sub_24E0F0BC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t sub_24E0F0C00()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_102();
  v2 = sub_24E0F7A18(v0, v1, &unk_24E377B28);
  OUTLINED_FUNCTION_6_42(v2, v3);

  swift_beginAccess();
}

uint64_t sub_24E0F0CC4(uint64_t a1)
{
  swift_beginAccess();

  sub_24E0F747C(v4, a1, &qword_27F1E3D40, 0x277D0C1C8);
  OUTLINED_FUNCTION_23_19();

  if (v2)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_26_15(v7, v8, v9);
  }
}

uint64_t sub_24E0F0D9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

double sub_24E0F0E04()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_102();
  v2 = sub_24E0F7A18(v0, v1, &unk_24E377B28);
  OUTLINED_FUNCTION_6_42(v2, v3);

  return result;
}

uint64_t sub_24E0F0EB4(uint64_t a1)
{

  sub_24E0F5AB4(v4, a1);
  OUTLINED_FUNCTION_23_19();

  if (v2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_26_15(v6, v7, v8);
  }

  else
  {
    *(v1 + 56) = a1;
  }
}

uint64_t sub_24E0F0F88(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;
}

uint64_t sub_24E0F0FC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = sub_24E342EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E0F0E04();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
    sub_24E3480B8();
  }

  v24[0] = a1;
  v24[1] = a2;
  sub_24E342EC8();
  sub_24DF90C4C();
  v14 = sub_24E348718();
  v16 = v15;
  (*(v10 + 8))(v12, v9);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    return sub_24E0F095C(0);
  }

  v18 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  sub_24E348068();

  v19 = sub_24E348058();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v3;
  v20[5] = a1;
  v20[6] = a2;
  sub_24E0E26E8();
  return sub_24E0F0EB4(v22);
}

uint64_t sub_24E0F1228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_24E348068();
  v6[3] = sub_24E348058();
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_24E0F12EC;

  return sub_24E0F1490();
}

uint64_t sub_24E0F12EC()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_24E347FF8();
  if (v0)
  {
    v9 = sub_24E0F1434;
  }

  else
  {
    v9 = sub_24E04A0AC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24E0F1434()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0F1490()
{
  OUTLINED_FUNCTION_9_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0F151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_22();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_21_17();
  a22 = v24;
  a13 = *MEMORY[0x277D85DE8];
  v27 = v24[14];
  v28 = objc_opt_self();
  v29 = sub_24E347CB8();
  v30 = [v28 predicateForContactsMatchingName_];
  v24[15] = v30;

  v31 = *(v27 + 48);
  if (qword_27F1DD870 != -1)
  {
LABEL_23:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D20, &qword_24E377CB0);
  v32 = sub_24E347EE8();
  v24[7] = 0;
  v33 = [v31 unifiedContactsMatchingPredicate:v30 keysToFetch:v32 error:v24 + 7];

  v34 = v24[7];
  if (v33)
  {
    a9 = v24 + 5;
    sub_24DF88A8C(0, &qword_27F1E2F40, 0x277CBDA58);
    v30 = sub_24E347F08();
    v35 = v34;

    v24[8] = 0;
    v36 = [v31 meContactIdentifiers_];
    v31 = v24[8];
    if (v36)
    {
      v37 = v36;
      a10 = sub_24E347F08();
      v38 = v31;
    }

    else
    {
      v50 = v31;
      v31 = sub_24E3431B8();

      swift_willThrow();
      a10 = MEMORY[0x277D84F90];
    }

    a11 = MEMORY[0x277D84F90];
    v51 = sub_24DFD8654();
    for (i = 0; v51 != i; ++i)
    {
      sub_24DFFA844();
      if ((v30 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x25303F560](i, v30);
      }

      else
      {
        v53 = *(v30 + 8 * i + 32);
      }

      v54 = v53;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v55 = [v53 identifier];
      v56 = sub_24E347CF8();
      v58 = v57;

      v24[5] = v56;
      v24[6] = v58;
      v31 = swift_task_alloc();
      v31[2] = a9;
      LOBYTE(v56) = sub_24E023F8C();

      if (v56)
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        v31 = &a11;
        sub_24E348A58();
      }
    }

    v24[16] = a11;
    v59 = swift_task_alloc();
    v24[17] = v59;
    *v59 = v24;
    v59[1] = sub_24E0F1938;
    OUTLINED_FUNCTION_7_36();

    return sub_24E0F3A7C();
  }

  else
  {
    v39 = v34;
    v40 = sub_24E3431B8();

    swift_willThrow();
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_7_36();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_24E0F1938()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24E0F1A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_22();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_21_17();
  a22 = v24;
  a13 = *MEMORY[0x277D85DE8];
  v27 = v24[19];
  sub_24E3480C8();
  if (v27)
  {
    v28 = v24[15];

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_7_36();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v38 = sub_24DFD8654();
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v40 = v38;
      a11 = MEMORY[0x277D84F90];
      sub_24E12F080(0, v38 & ~(v38 >> 63), 0);
      if (v40 < 0)
      {
        goto LABEL_31;
      }

      v41 = 0;
      v42 = v24[16];
      v43 = a11;
      v44 = v42 & 0xC000000000000001;
      v68 = v42 + 32;
      do
      {
        if (v44)
        {
          v45 = MEMORY[0x25303F560](v41, v24[16]);
        }

        else
        {
          v45 = *(v68 + 8 * v41);
        }

        v46 = v45;
        v47 = [v46 identifier];
        v48 = sub_24E347CF8();
        v50 = v49;

        a11 = v43;
        v52 = *(v43 + 16);
        v51 = *(v43 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_24E12F080((v51 > 1), v52 + 1, 1);
          v43 = a11;
        }

        ++v41;
        *(v43 + 16) = v52 + 1;
        v53 = v43 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
      }

      while (v40 != v41);

      v39 = MEMORY[0x277D84F90];
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    v54 = 0;
    v55 = v24[18];
    v56 = v43 + 40;
    v57 = *(v43 + 16);
    a11 = v39;
LABEL_17:
    v58 = v56 + 16 * v54;
    while (v57 != v54)
    {
      if (v54 >= *(v43 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
      }

      if (*(v55 + 16))
      {
        v59 = *(v58 - 8);

        v60 = sub_24E26AE3C(v59);
        if (v61)
        {
          v62 = *(*(v55 + 56) + 8 * v60);

          MEMORY[0x25303EA30](v63);
          if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          ++v54;
          sub_24E347F88();
          v56 = v43 + 40;
          goto LABEL_17;
        }
      }

      v58 += 16;
      ++v54;
    }

    a11 = sub_24E0834DC(v64);
    sub_24E0F5E04(&a11);
    v24[20] = 0;

    v24[21] = a11;
    v65 = swift_task_alloc();
    v24[22] = v65;
    *v65 = v24;
    v65[1] = sub_24E0F1E2C;
    OUTLINED_FUNCTION_7_36();

    return sub_24E0F24D0(v66);
  }
}

uint64_t sub_24E0F1E2C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = v3;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0F1F4C()
{
  OUTLINED_FUNCTION_29_5();
  v1 = v0[20];
  sub_24E3480C8();
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[15];

    OUTLINED_FUNCTION_12_5();

    return v3();
  }

  else
  {
    sub_24E348068();
    v0[25] = sub_24E348058();
    v6 = sub_24E347FF8();

    return MEMORY[0x2822009F8](sub_24E0F20A0, v6, v5);
  }
}

uint64_t sub_24E0F20A0()
{
  OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_21_17();
  v1 = v0[23];
  v11 = v0[18];
  v2 = v0[14];

  swift_getKeyPath();
  v0[9] = v2;
  OUTLINED_FUNCTION_0_102();
  sub_24E0F7A18(v3, v4, &unk_24E377B28);
  OUTLINED_FUNCTION_22_17();
  sub_24E343538();

  v0[10] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_17();
  sub_24E343558();

  swift_beginAccess();
  sub_24E0F6E5C(v1, sub_24E0F75FC, 0, (v2 + 40));
  swift_endAccess();
  v0[11] = v2;
  swift_getKeyPath();
  sub_24E343548();

  sub_24E0F095C(v5);
  sub_24E0F0AE0(v11);

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_7_36();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24E0F2260()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v1();
}

uint64_t sub_24E0F22E8()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v1();
}

id sub_24E0F2370(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 supportsFriendingViaPush];
  if (v4 != [v3 supportsFriendingViaPush])
  {
    return [v2 supportsFriendingViaPush];
  }

  v6 = [v2 contact];
  v7 = [v6 familyName];

  v8 = sub_24E347CF8();
  v10 = v9;

  v11 = [v3 contact];
  v12 = [v11 familyName];

  v13 = sub_24E347CF8();
  v15 = v14;

  if (v13 == v8 && v15 == v10)
  {

    return 0;
  }

  else
  {
    v17 = sub_24E348C08();

    return (v17 & 1);
  }
}

uint64_t sub_24E0F24D0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_8_38();
}

uint64_t sub_24E0F24E4()
{
  v1 = v0[3];
  v2 = sub_24E0F0C00();
  v20 = v0;
  v0[5] = v2;
  v21 = MEMORY[0x277D84F90];
  v3 = sub_24DFD8654();
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v1 + 32;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = MEMORY[0x25303F560](v4, v20[3]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 8 * v4);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return MEMORY[0x282200600]();
    }

    v10 = [v8 contact];
    v11 = [v10 identifier];

    v12 = sub_24E347CF8();
    if (*(v2 + 16))
    {
      sub_24E26AE3C(v12);
      v14 = v13;

      if (v14)
      {

        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_24E348A48();
    sub_24E348A78();
    sub_24E348A88();
    sub_24E348A58();
LABEL_12:
    ++v4;
  }

  v15 = v20[4];
  v20[6] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CF8, &qword_24E377C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D00, &qword_24E377C58);
  v16 = swift_task_alloc();
  v20[7] = v16;
  *(v16 + 16) = v21;
  *(v16 + 24) = v15;
  v17 = swift_task_alloc();
  v20[8] = v17;
  *v17 = v20;
  v17[1] = sub_24E0F2750;
  OUTLINED_FUNCTION_29_2();

  return MEMORY[0x282200600]();
}

uint64_t sub_24E0F2750()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0F286C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E0F28CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D08, &unk_24E377C70);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0F29E0, 0, 0);
}

uint64_t sub_24E0F29E0()
{
  OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_21_17();
  v1 = sub_24DFD8654();
  v25 = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x2822002E8](v1);
    }

    v2 = 0;
    v3 = *(v0 + 120);
    v22 = v3 + 32;
    v23 = **(v0 + 112);
    v24 = v3 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v4 = MEMORY[0x25303F560](v2, *(v0 + 120));
      }

      else
      {
        v4 = *(v22 + 8 * v2);
      }

      v5 = v4;
      v7 = *(v0 + 160);
      v6 = *(v0 + 168);
      v8 = *(v0 + 128);
      v9 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v8;
      v10[5] = v5;
      sub_24E0F78FC(v6, v7);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v7, 1, v9);

      v11 = v5;
      v12 = *(v0 + 160);
      if (v6 == 1)
      {
        sub_24DFA9298(*(v0 + 160), &unk_27F1DFC70, &qword_24E36BAF0);
      }

      else
      {
        sub_24E348088();
        (*(*(v9 - 8) + 8))(v12, v9);
      }

      if (v10[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_24E347FF8();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = &unk_24E377C90;
      *(v16 + 24) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CF8, &qword_24E377C50);
      v17 = v15 | v13;
      if (v15 | v13)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v17 = v0 + 16;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      ++v2;
      v18 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v17;
      *(v0 + 64) = v23;
      swift_task_create();

      sub_24DFA9298(v18, &unk_27F1DFC70, &qword_24E36BAF0);
    }

    while (v25 != v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CF8, &qword_24E377C50);
  sub_24E348028();
  *(v0 + 176) = MEMORY[0x277D84F98];
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_5_56(v19);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_7_36();

  return MEMORY[0x2822002E8](v1);
}

uint64_t sub_24E0F2D18()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0F2DFC()
{
  v2 = v0[9];
  v1 = v0[10];
  if (v1 == 1)
  {
    v14 = v0[22];
    v15 = v0[13];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v15 = v14;

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_29_2();

    __asm { BRAA            X1, X16 }
  }

  if (!v1)
  {
    goto LABEL_18;
  }

  v3 = v0[11];
  v4 = v0[22];

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v0[12] = v4;
  v6 = sub_24E26AE3C(v2);
  if (__OFADD__(*(v4 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D18, &unk_24E377CA0);
  if ((sub_24E348AB8() & 1) == 0)
  {
LABEL_13:
    if (v9)
    {

      v18 = v0[12];
      v19 = v18[7];
      v20 = *(v19 + 8 * v8);
      *(v19 + 8 * v8) = v5;

LABEL_17:
      v0[22] = v18;
LABEL_18:
      v25 = swift_task_alloc();
      v0[23] = v25;
      *v25 = v0;
      OUTLINED_FUNCTION_5_56(v25);
      OUTLINED_FUNCTION_35_3();
      OUTLINED_FUNCTION_29_2();

      return MEMORY[0x2822002E8](v6);
    }

    v18 = v0[12];
    v18[(v8 >> 6) + 8] |= 1 << v8;
    v21 = (v18[6] + 16 * v8);
    *v21 = v2;
    v21[1] = v1;
    *(v18[7] + 8 * v8) = v5;

    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      v18[2] = v24;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    return MEMORY[0x2822002E8](v6);
  }

  v10 = sub_24E26AE3C(v2);
  if ((v9 & 1) == (v11 & 1))
  {
    v8 = v10;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_29_2();

  return sub_24E348C98();
}

uint64_t sub_24E0F3070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24E0F3108;

  return sub_24E0F32CC(a5);
}

uint64_t sub_24E0F3108()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0F31F4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    v4 = [v2 contact];
    v5 = [v4 identifier];

    v6 = sub_24E347CF8();
    v8 = v7;

    v1 = v0[5];
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v0[2];
  *v9 = v6;
  v9[1] = v8;
  v9[2] = v1;
  OUTLINED_FUNCTION_12_5();

  return v10();
}

uint64_t sub_24E0F32E0()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CE0, &qword_24E377C40);
  *v3 = v0;
  v3[1] = sub_24E0F33E0;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822007B8](v4);
}

uint64_t sub_24E0F33E0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E0F34E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CE8, &qword_24E377C48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  v10 = [a2 contact];
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_24E0F7314;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0F39D8;
  aBlock[3] = &block_descriptor_63_0;
  v13 = _Block_copy(aBlock);

  [v9 getGameCenterRelationshipsForContact:v10 shouldRefresh:0 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_24E0F3700(uint64_t a1, void *a2)
{
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    sub_24E343CC8();
    v9 = a2;
    v10 = sub_24E343F78();
    v11 = sub_24E348258();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24DE53000, v10, v11, "Error when fetching game center relationships: %@", v12, 0xCu);
      sub_24DFA9298(v13, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v13, -1, -1);
      MEMORY[0x253040EE0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CE8, &qword_24E377C48);
    sub_24E348018();
  }

  else if (a1)
  {
    v16 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        v19 = 0;
LABEL_17:
        v20 = [v19 relatedPlayer];

        goto LABEL_18;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v18 relationship] == 2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v20 = 0;
LABEL_18:
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CE8, &qword_24E377C48);
    sub_24E348018();
  }
}

uint64_t sub_24E0F39D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1E3CF0, 0x277D0C008);
    v4 = sub_24E347F08();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24E0F3A7C()
{
  OUTLINED_FUNCTION_9_7();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_24E343F88();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0F3B3C()
{
  OUTLINED_FUNCTION_9_7();
  sub_24E348068();
  *(v0 + 80) = sub_24E348058();
  v2 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0F3BCC, v2, v1);
}

uint64_t sub_24E0F3BCC()
{
  OUTLINED_FUNCTION_9_7();

  *(v0 + 88) = sub_24E0F0A30();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0F3C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_21_17();
  v63 = v16[11];
  v64 = v16;
  v17 = v16[4];
  v65 = MEMORY[0x277D84F90];
  v18 = sub_24DFD8654();
  v19 = v17 & 0xC000000000000001;
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  v21 = v17 + 32;

  for (i = 0; v18 != i; ++i)
  {
    if (v19)
    {
      v22 = MEMORY[0x25303F560](i, v16[4]);
    }

    else
    {
      if (i >= *(v20 + 16))
      {
        goto LABEL_35;
      }

      v22 = *(v21 + 8 * i);
    }

    v24 = v22;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return MEMORY[0x2822008A0](v22);
    }

    v25 = [v24 identifier];
    v26 = sub_24E347CF8();

    if (*(v63 + 16))
    {
      sub_24E26AE3C(v26);
      v28 = v27;

      if (v28)
      {

        continue;
      }
    }

    else
    {
    }

    sub_24E348A48();
    sub_24E348A78();
    sub_24E348A88();
    v22 = sub_24E348A58();
  }

  v29 = v65;
  v16[12] = v65;
  if (sub_24DFD8654())
  {
    sub_24E343CC8();

    v30 = sub_24E343F78();
    v31 = sub_24E348238();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = sub_24DFD8654();

      _os_log_impl(&dword_24DE53000, v30, v31, "Attempting to hydrate %ld contacts", v32, 0xCu);
      MEMORY[0x253040EE0](v32, -1, -1);
    }

    else
    {
    }

    v42 = v16[9];
    v43 = v16[6];
    v44 = v16[7];
    v45 = *(v44 + 8);
    v16[13] = v45;
    v16[14] = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v42, v43);
    sub_24E3480C8();
    v46 = sub_24DFD8654();
    v47 = MEMORY[0x277D84F90];
    if (v46)
    {
      v48 = v46;
      v66 = MEMORY[0x277D84F90];
      v22 = sub_24E12F080(0, v46 & ~(v46 >> 63), 0);
      if (v48 < 0)
      {
        goto LABEL_36;
      }

      v49 = v48;
      v50 = 0;
      v47 = v66;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x25303F560](v50, v29);
        }

        else
        {
          v51 = *(v29 + 8 * v50 + 32);
        }

        v52 = v51;
        v53 = [v52 identifier];
        v54 = sub_24E347CF8();
        v56 = v55;

        v58 = *(v66 + 16);
        v57 = *(v66 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_24E12F080((v57 > 1), v58 + 1, 1);
        }

        ++v50;
        *(v66 + 16) = v58 + 1;
        v59 = v66 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
      }

      while (v49 != v50);
      v16 = v64;
    }

    v16[15] = v47;
    v60 = swift_task_alloc();
    v16[16] = v60;
    *(v60 + 16) = v47;
    v61 = swift_task_alloc();
    v16[17] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CA8, &qword_24E388690);
    *v61 = v16;
    v61[1] = sub_24E0F4114;
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_7_36();

    return MEMORY[0x2822008A0](v22);
  }

  OUTLINED_FUNCTION_7_36();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, v63, v16, v65, a13, a14, a15, a16);
}

uint64_t sub_24E0F4114()
{
  OUTLINED_FUNCTION_29_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0F4278()
{
  v1 = v0[12];
  v2 = v0[2];
  v0[19] = v2;
  v24 = MEMORY[0x277D84F90];
  v3 = sub_24DFD8654();
  v4 = v3;
  v5 = 0;
LABEL_2:
  while (v5 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25303F560](v5, v23[12]);
    }

    else
    {
      if (v5 >= *(v1 + 16))
      {
        goto LABEL_26;
      }

      v3 = *(v1 + 32 + 8 * v5);
    }

    v6 = v3;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return MEMORY[0x2822008A0](v3);
    }

    v8 = [v3 identifier];
    v9 = sub_24E347CF8();
    v11 = v10;

    if (*(v2 + 16))
    {
      sub_24E348D18();
      sub_24E347DC8();
      v12 = sub_24E348D68();
      v13 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v14 = v12 & v13;
        if (((*(v2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        v15 = (*(v2 + 48) + 16 * v14);
        if (*v15 != v9 || v15[1] != v11)
        {
          v17 = sub_24E348C08();
          v12 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        v3 = sub_24E348A58();
        goto LABEL_2;
      }
    }
  }

  v18 = v23[18];
  v23[20] = v24;
  sub_24E3480C8();
  if (!v18)
  {
    v21 = swift_task_alloc();
    v23[21] = v21;
    *(v21 + 16) = v24;
    v22 = swift_task_alloc();
    v23[22] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CB0, &qword_24E377C20);
    *v22 = v23;
    v22[1] = sub_24E0F45A8;
    OUTLINED_FUNCTION_35_3();

    return MEMORY[0x2822008A0](v3);
  }

  OUTLINED_FUNCTION_12_5();

  return v19();
}

uint64_t sub_24E0F45A8()
{
  OUTLINED_FUNCTION_29_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_24E0F4718(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 184);
  v4 = *(v1 + 24);
  sub_24E3480C8();
  if (v3)
  {

    OUTLINED_FUNCTION_25_17();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_24DFD8654();
  if (!v7)
  {

    v27 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v8 = v7;
  v64 = MEMORY[0x277D84F90];
  sub_24E348A68();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v62 = v8;
    while (1)
    {
      v10 = *(v2 + 96);
      v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x25303F560](v9) : *(v10 + 8 * v9 + 32);
      v12 = v11;
      v13 = [v11 identifier];
      v14 = sub_24E347CF8();

      if (!*(v4 + 16))
      {
        break;
      }

      v15 = sub_24E26AE3C(v14);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      v18 = (*(v4 + 56) + 16 * v15);
      v19 = *v18;
      v20 = v18[1];

LABEL_16:
      v21 = *(v2 + 152);
      ++v9;
      v22 = [v12 identifier];
      v23 = sub_24E347CF8();
      v25 = v24;

      sub_24E00D4BC(v23, v25, v21);

      v26 = objc_allocWithZone(GKSuggestedFriend);
      sub_24E11EB64(v12, v19, v20);
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
      if (v62 == v9)
      {

        v27 = v64;
LABEL_19:
        v63 = sub_24DFD8654();
        if (!v63)
        {
LABEL_35:
          sub_24E343CC8();

          v51 = sub_24E343F78();
          v52 = sub_24E348238();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 134217984;
            v54 = sub_24DFD8654();

            *(v53 + 4) = v54;

            _os_log_impl(&dword_24DE53000, v51, v52, "Successfully hydrated %ld contacts", v53, 0xCu);
            MEMORY[0x253040EE0](v53, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          (*(v2 + 104))(*(v2 + 64), *(v2 + 48));

          OUTLINED_FUNCTION_25_17();

          __asm { BRAA            X2, X16 }
        }

        v28 = 0;
        v60 = v2;
        v61 = v27 & 0xC000000000000001;
        v58 = v27 & 0xFFFFFFFFFFFFFF8;
        v59 = v27;
        v29 = *(v2 + 88);
        while (1)
        {
          if (v61)
          {
            v30 = MEMORY[0x25303F560](v28, v27);
          }

          else
          {
            if (v28 >= *(v58 + 16))
            {
              goto LABEL_47;
            }

            v30 = *(v27 + 8 * v28 + 32);
          }

          v31 = v30;
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v33 = [v30 contact];
          v34 = [v33 identifier];

          v35 = sub_24E347CF8();
          v37 = v36;

          v38 = v31;
          swift_isUniquelyReferenced_nonNull_native();
          v39 = sub_24E26AE3C(v35);
          if (__OFADD__(v29[2], (v40 & 1) == 0))
          {
            goto LABEL_45;
          }

          v41 = v39;
          v42 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CB8, &qword_24E377C28);
          if (sub_24E348AB8())
          {
            v43 = sub_24E26AE3C(v35);
            if ((v42 & 1) != (v44 & 1))
            {
              OUTLINED_FUNCTION_25_17();

              sub_24E348C98();
              return;
            }

            v41 = v43;
          }

          if (v42)
          {

            v45 = v29[7];
            v46 = *(v45 + 8 * v41);
            *(v45 + 8 * v41) = v38;
          }

          else
          {
            v29[(v41 >> 6) + 8] |= 1 << v41;
            v47 = (v29[6] + 16 * v41);
            *v47 = v35;
            v47[1] = v37;
            *(v29[7] + 8 * v41) = v38;

            v48 = v29[2];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_46;
            }

            v29[2] = v50;
          }

          ++v28;
          v27 = v59;
          v2 = v60;
          if (v32 == v63)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

LABEL_15:
    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_24E0F4CD8()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0F4D44()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

void sub_24E0F4DB0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CD8, &qword_24E377C38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 profileServicePrivate];

  v9 = sub_24E347EE8();
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v6, v3);
  aBlock[4] = sub_24E0F726C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0F5058;
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [v8 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v9 withCompletion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0F4FC4(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CD8, &qword_24E377C38);
    return sub_24E348008();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3CD8, &qword_24E377C38);
    return sub_24E348018();
  }
}

uint64_t sub_24E0F5058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24E348138();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_24E0F50F8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3CC0, &qword_24E377C30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 profileServicePrivate];

  sub_24DF88A8C(0, &qword_27F1E2F40, 0x277CBDA58);
  v9 = sub_24E347EE8();
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v6, v3);
  aBlock[4] = sub_24E0F71C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E0F5844;
  aBlock[3] = &block_descriptor_45;
  v12 = _Block_copy(aBlock);

  [v8 getContactAssociationIDsForContacts:v9 shouldRefresh:0 completionHandler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0F5324(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  if (a2)
  {
    v13 = a2;
    sub_24E343CC8();
    v14 = a2;
    v15 = sub_24E343F78();
    v16 = sub_24E348258();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_24DE53000, v15, v16, "Error getting caids: %@", v17, 0xCu);
      sub_24DFA9298(v18, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v18, -1, -1);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v61 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3CC0, &qword_24E377C30);
    return sub_24E348008();
  }

  else if (a1)
  {
    v22 = a1 + 64;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F98];
    v57 = a1;
    v58 = a3;
    v55 = v26;
    v56 = a1 + 64;
    if (v25)
    {
      while (1)
      {
        v29 = v27;
LABEL_13:
        v30 = __clz(__rbit64(v25)) | (v29 << 6);
        v31 = *(*(a1 + 48) + 8 * v30);
        v32 = (*(a1 + 56) + 16 * v30);
        v33 = v32[1];
        v59 = *v32;
        v34 = v31;

        v60 = v34;
        v35 = [v34 identifier];
        v36 = sub_24E347CF8();
        v38 = v37;

        swift_isUniquelyReferenced_nonNull_native();
        v61 = v28;
        v39 = sub_24E26AE3C(v36);
        if (__OFADD__(v28[2], (v40 & 1) == 0))
        {
          break;
        }

        v41 = v39;
        v42 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EB8, &qword_24E371820);
        if (sub_24E348AB8())
        {
          v43 = sub_24E26AE3C(v36);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_31;
          }

          v41 = v43;
        }

        v25 &= v25 - 1;
        if (v42)
        {

          v28 = v61;
          v45 = (v61[7] + 16 * v41);
          *v45 = v59;
          v45[1] = v33;
        }

        else
        {
          v28 = v61;
          v61[(v41 >> 6) + 8] |= 1 << v41;
          v46 = (v28[6] + 16 * v41);
          *v46 = v36;
          v46[1] = v38;
          v47 = (v28[7] + 16 * v41);
          *v47 = v59;
          v47[1] = v33;

          v48 = v28[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_30;
          }

          v28[2] = v50;
        }

        v27 = v29;
        a1 = v57;
        v26 = v55;
        v22 = v56;
        if (!v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v26)
        {

          v61 = v28;
          goto LABEL_27;
        }

        v25 = *(v22 + 8 * v29);
        ++v27;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_24E348C98();
    __break(1u);
  }

  else
  {
    sub_24E343CC8();
    v51 = sub_24E343F78();
    v52 = sub_24E348258();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_24DE53000, v51, v52, "Map of contacts to caids was unexpectedly nil", v53, 2u);
      MEMORY[0x253040EE0](v53, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v61 = sub_24E347C28();
LABEL_27:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3CC0, &qword_24E377C30);
    return sub_24E348018();
  }

  return result;
}

uint64_t sub_24E0F5844(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1E2F40, 0x277CBDA58);
    sub_24E0F7204();
    v4 = sub_24E347C08();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_24E0F58FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E3779D0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  sub_24DF88A8C(0, &unk_27F1EAA50, 0x277CCACA8);
  sub_24E347CF8();
  *(v0 + 40) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 48) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 56) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 64) = sub_24E2F0E9C();
  sub_24E347CF8();
  result = sub_24E2F0E9C();
  *(v0 + 72) = result;
  qword_27F1E3C60 = v0;
  return result;
}

uint64_t sub_24E0F5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_102();
  sub_24E0F7A18(v3, v4, &unk_24E377B28);
  return sub_24E343528();
}

BOOL sub_24E0F5AB4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
    v3 = sub_24E3480A8();
  }

  return (v3 & 1) == 0;
}

uint64_t sub_24E0F5B2C()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI26InviteFriendsSearchManager___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_24E0F5BA8()
{
  sub_24E0F5B2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InviteFriendsSearchManager(uint64_t a1)
{
  result = qword_27F1E3C78;
  if (!qword_27F1E3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0F5C54(uint64_t a1)
{
  result = sub_24E343578();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E0F5D44()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_24DF88A8C(0, &qword_27F1E21A0, off_279667088);
  v1 = sub_24E347C28();
  v2 = MEMORY[0x277D84F98];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 56) = 0;
  sub_24E343568();
  return v0;
}

uint64_t sub_24E0F5DD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24E0F5E04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E0F5E80(v6);
  return sub_24E348A58();
}

void sub_24E0F5E80(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E155320(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E0F6164(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24E0F5F60(0, v3, 1, a1);
  }
}

void sub_24E0F5F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = *a4 + 8 * a3 - 8;
  v6 = a1 - a3;
  v7 = &selRef_smallIconURLString;
  v32 = *a4;
  while (2)
  {
    v30 = v5;
    v31 = a3;
    v8 = *(v4 + 8 * a3);
    v29 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[106]];
      if (v12 == [v11 v7[106]])
      {
        break;
      }

      v13 = [v10 v7[106]];

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_12:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v26 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v26;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_17;
      }
    }

    v14 = [v10 contact];
    v15 = [v14 familyName];

    v16 = sub_24E347CF8();
    v18 = v17;

    v19 = [v11 contact];
    v20 = [v19 familyName];

    v21 = sub_24E347CF8();
    v23 = v22;

    if (v21 != v16 || v23 != v18)
    {
      v25 = sub_24E348C08();

      v4 = v32;
      v7 = &selRef_smallIconURLString;
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v4 = v32;
    v7 = &selRef_smallIconURLString;
LABEL_17:
    a3 = v31 + 1;
    v5 = v30 + 8;
    v6 = v29 - 1;
    if (v31 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_24E0F6164(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_108;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &selRef_smallIconURLString;
  do
  {
    v10 = v7 + 1;
    v121 = v8;
    if (v7 + 1 >= v6)
    {
      v14 = v7 + 1;
    }

    else
    {
      v123 = v6;
      v11 = *a3;
      v131 = *(*a3 + 8 * v10);
      v130 = *(v11 + 8 * v7);
      v12 = v130;
      v13 = v131;
      v5 = v12;
      v128 = sub_24E0F2370(&v131, &v130);
      if (v125)
      {

        return;
      }

      v114 = v7;
      v126 = 8 * v7;
      v4 = (v11 + 8 * v7 + 16);
      v14 = v123;
      while (1)
      {
        v15 = v10 + 1;
        if (v10 + 1 >= v14)
        {
          break;
        }

        v16 = *(v4 - 1);
        v17 = *v4;
        v18 = v16;
        LODWORD(v16) = [v17 v9[106]];
        if (v16 == [v18 v9[106]])
        {
          v21 = [v17 contact];
          v22 = [v21 familyName];

          v23 = sub_24E347CF8();
          v25 = v24;

          v26 = [v18 contact];
          v27 = [v26 familyName];

          v28 = sub_24E347CF8();
          v5 = v29;

          if (v28 == v23 && v5 == v25)
          {
            v31 = 0;
          }

          else
          {
            v31 = sub_24E348C08();
          }

          v14 = v123;

          v9 = &selRef_smallIconURLString;
          if ((v128 ^ v31))
          {
            v14 = v15;
            break;
          }
        }

        else
        {
          v19 = [v17 v9[106]];

          v20 = v128 ^ v19;
          v14 = v123;
          if (v20)
          {
            v14 = v10 + 1;
            break;
          }
        }

        ++v4;
        v10 = v15;
      }

      v7 = v114;
      v32 = v126;
      if (v128)
      {
        if (v14 < v114)
        {
          goto LABEL_144;
        }

        if (v114 < v14)
        {
          v33 = 8 * v14 - 8;
          v34 = v14;
          v35 = v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_149;
              }

              v37 = *(v36 + v32);
              *(v36 + v32) = *(v36 + v33);
              *(v36 + v33) = v37;
            }

            ++v35;
            v33 -= 8;
            v32 += 8;
          }

          while (v35 < v34);
        }
      }
    }

    v38 = a3[1];
    if (v14 >= v38)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v14, v7))
    {
      goto LABEL_141;
    }

    if (v14 - v7 >= a4)
    {
LABEL_37:
      v4 = v14;
      goto LABEL_38;
    }

    if (__OFADD__(v7, a4))
    {
      goto LABEL_142;
    }

    if (v7 + a4 >= v38)
    {
      v4 = a3[1];
    }

    else
    {
      v4 = (v7 + a4);
    }

    if (v4 < v7)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      v105 = sub_24E081A20(v4);
      goto LABEL_111;
    }

    if (v14 == v4)
    {
      goto LABEL_37;
    }

    v81 = *a3;
    v82 = *a3 + 8 * v14 - 8;
    v115 = v7;
    v83 = v7 - v14;
    v118 = v4;
    v127 = *a3;
    do
    {
      v124 = v14;
      v84 = *(v81 + 8 * v14);
      v119 = v83;
      v120 = v82;
      v85 = v83;
      v86 = v82;
      while (1)
      {
        v87 = *v86;
        v88 = v84;
        v5 = v87;
        LODWORD(v87) = [v88 v9[106]];
        if (v87 != [v5 v9[106]])
        {
          v89 = [v88 v9[106]];

          if ((v89 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_99;
        }

        v90 = [v88 contact];
        v91 = [v90 familyName];

        v92 = sub_24E347CF8();
        v94 = v93;

        v129 = v5;
        v95 = [v5 contact];
        v96 = [v95 familyName];

        v5 = sub_24E347CF8();
        v98 = v97;

        if (v5 == v92 && v98 == v94)
        {
          break;
        }

        v100 = sub_24E348C08();

        v9 = &selRef_smallIconURLString;
        v81 = v127;
        if ((v100 & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_99:
        if (!v81)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v101 = *v86;
        v84 = *(v86 + 8);
        *v86 = v84;
        *(v86 + 8) = v101;
        v86 -= 8;
        if (__CFADD__(v85++, 1))
        {
          goto LABEL_104;
        }
      }

      v9 = &selRef_smallIconURLString;
      v81 = v127;
LABEL_104:
      v14 = v124 + 1;
      v82 = v120 + 8;
      v83 = v119 - 1;
      v4 = v118;
    }

    while ((v124 + 1) != v118);
    v7 = v115;
LABEL_38:
    if (v4 < v7)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v121;
    }

    else
    {
      sub_24E076FA4(0, *(v121 + 16) + 1, 1, v121);
      v8 = v103;
    }

    v40 = v8[2];
    v39 = v8[3];
    v41 = v40 + 1;
    v117 = v4;
    if (v40 >= v39 >> 1)
    {
      sub_24E076FA4(v39 > 1, v40 + 1, 1, v8);
      v8 = v104;
    }

    v8[2] = v41;
    v4 = v8 + 4;
    v42 = &v8[2 * v40 + 4];
    *v42 = v7;
    v42[1] = v117;
    v43 = *a1;
    if (!*a1)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v40)
    {
      while (2)
      {
        v44 = v41 - 1;
        v45 = &v4[2 * v41 - 2];
        v46 = &v8[2 * v41];
        if (v41 >= 4)
        {
          v51 = &v4[2 * v41];
          v52 = *(v51 - 8);
          v53 = *(v51 - 7);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_125;
          }

          v56 = *(v51 - 6);
          v55 = *(v51 - 5);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_126;
          }

          v58 = v46[1];
          v59 = v58 - *v46;
          if (__OFSUB__(v58, *v46))
          {
            goto LABEL_128;
          }

          v57 = __OFADD__(v49, v59);
          v60 = v49 + v59;
          if (v57)
          {
            goto LABEL_131;
          }

          if (v60 >= v54)
          {
            v74 = *v45;
            v73 = v45[1];
            v57 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v57)
            {
              goto LABEL_139;
            }

            if (v49 < v75)
            {
              v44 = v41 - 2;
            }
          }

          else
          {
LABEL_58:
            if (v50)
            {
              goto LABEL_127;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_130;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_133;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_135;
            }

            if (v64 + v67 < v49)
            {
              goto LABEL_73;
            }

            if (v49 < v67)
            {
              v44 = v41 - 2;
            }
          }
        }

        else
        {
          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_58;
          }

          if (v41 < 2)
          {
            goto LABEL_129;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_73:
          if (v65)
          {
            goto LABEL_132;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_134;
          }

          if (v72 < v64)
          {
            break;
          }
        }

        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v76 = v8;
        v77 = &v4[2 * v44 - 2];
        v5 = *v77;
        v78 = &v4[2 * v44];
        v79 = v78[1];
        sub_24E0F69E8((*a3 + 8 * *v77), (*a3 + 8 * *v78), (*a3 + 8 * v79), v43);
        if (v125)
        {
          goto LABEL_119;
        }

        if (v79 < v5)
        {
          goto LABEL_122;
        }

        v80 = v76[2];
        if (v44 > v80)
        {
          goto LABEL_123;
        }

        *v77 = v5;
        v77[1] = v79;
        if (v44 >= v80)
        {
          goto LABEL_124;
        }

        v41 = v80 - 1;
        sub_24E081A34(v78 + 16, v80 - 1 - v44, &v4[2 * v44]);
        v8 = v76;
        v76[2] = (v80 - 1);
        v9 = &selRef_smallIconURLString;
        if (v80 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v6 = a3[1];
    v7 = v117;
  }

  while (v117 < v6);
LABEL_108:
  v5 = *a1;
  if (!*a1)
  {
LABEL_151:
    __break(1u);
    return;
  }

  v4 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_145;
  }

  v105 = v4;
LABEL_111:
  v4 = (v105 + 16);
  v106 = *(v105 + 2);
  while (v106 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_148;
    }

    v107 = v105;
    v108 = &v105[16 * v106];
    v109 = *v108;
    v110 = &v4[2 * v106];
    v111 = v110[1];
    sub_24E0F69E8((*a3 + 8 * *v108), (*a3 + 8 * *v110), (*a3 + 8 * v111), v5);
    if (v125)
    {
      break;
    }

    if (v111 < v109)
    {
      goto LABEL_136;
    }

    if (v106 - 2 >= *v4)
    {
      goto LABEL_137;
    }

    *v108 = v109;
    *(v108 + 1) = v111;
    v112 = *v4 - v106;
    if (*v4 < v106)
    {
      goto LABEL_138;
    }

    v106 = *v4 - 1;
    sub_24E081A34(v110 + 16, v112, v110);
    *v4 = v106;
    v105 = v107;
  }

LABEL_119:
}

uint64_t sub_24E0F69E8(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_24E130EB0(a1, a2 - a1, a4);
    v10 = &selRef_smallIconURLString;
    v11 = &v4[v8];
    v58 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v33 = v7;
        goto LABEL_44;
      }

      v13 = v11;
      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      LODWORD(v14) = [v15 v10[106]];
      if (v14 == [v16 v10[106]])
      {
        v62 = v6;
        v60 = v7;
        v18 = [v15 contact];
        v19 = [v18 familyName];

        v20 = sub_24E347CF8();
        v22 = v21;

        v23 = [v16 contact];
        v24 = [v23 familyName];

        v25 = sub_24E347CF8();
        v27 = v26;

        if (v25 == v20 && v27 == v22)
        {

          v5 = v58;
          v7 = v60;
          v6 = v62;
          v10 = &selRef_smallIconURLString;
        }

        else
        {
          v29 = sub_24E348C08();

          v5 = v58;
          v7 = v60;
          v6 = v62;
          v10 = &selRef_smallIconURLString;
          if (v29)
          {
LABEL_15:
            v30 = v6;
            v31 = v7 == v6++;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v17 = [v15 v10[106]];

        if (v17)
        {
          goto LABEL_15;
        }
      }

      v30 = v4;
      v31 = v7 == v4++;
LABEL_18:
      v11 = v13;
      if (!v31)
      {
        *v7 = *v30;
      }

      ++v7;
    }
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v32 = 0x1FAC35000uLL;
  v11 = &v4[v9];
  v61 = v7;
  v56 = v4;
LABEL_22:
  v33 = v6--;
  --v5;
  v63 = v6;
  v57 = v33;
  while (v11 > v4 && v33 > v7)
  {
    v35 = v11 - 1;
    v36 = *v6;
    v37 = v32;
    v38 = *(v11 - 1);
    v39 = v36;
    LODWORD(v36) = [v38 (v37 + 2040)];
    if (v36 == [v39 (v37 + 2040)])
    {
      v55 = v11;
      v59 = v5;
      v41 = [v38 contact];
      v42 = [v41 familyName];

      v43 = sub_24E347CF8();
      v45 = v44;

      v46 = [v39 contact];
      v47 = [v46 familyName];

      v48 = sub_24E347CF8();
      v50 = v49;

      if (v48 == v43 && v50 == v45)
      {

        v5 = v59;
        v7 = v61;
        v6 = v63;
        v11 = v55;
        v4 = v56;
        goto LABEL_38;
      }

      v40 = sub_24E348C08();

      v5 = v59;
      v7 = v61;
      v6 = v63;
      v11 = v55;
    }

    else
    {
      v40 = [v38 (v37 + 2040)];
    }

    v4 = v56;
    if (v40)
    {
      v32 = 0x1FAC35000;
      if (v5 + 1 != v57)
      {
        *v5 = *v6;
      }

      goto LABEL_22;
    }

LABEL_38:
    v33 = v57;
    if (v11 != v5 + 1)
    {
      *v5 = *v35;
    }

    --v5;
    v11 = v35;
    v32 = 0x1FAC35000;
  }

LABEL_44:
  v52 = v11 - v4;
  if (v33 != v4 || v33 >= &v4[v52])
  {
    memmove(v33, v4, 8 * v52);
  }

  return 1;
}

uint64_t sub_24E0F6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_24E0F6ED0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_24E0F6ED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_24E0A8E2C();
  v6 = v43;
  v7 = v45;
  v8 = v46;
  v38 = v47;
  v39 = v42[3];
  v9 = (v44 + 64) >> 6;

  v37 = v43;
  if (v46)
  {
    while (1)
    {
      v40 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v16 = v15;
      v38(v41, v42);

      v17 = v41[0];
      v18 = v41[1];
      v19 = v41[2];
      v20 = *v48;
      v22 = sub_24E26AE3C(v41[0]);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((v40 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D18, &unk_24E377CA0);
          sub_24E348AC8();
        }
      }

      else
      {
        sub_24E0A830C(v25, v40 & 1);
        v27 = sub_24E26AE3C(v17);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v48;
      if (v26)
      {

        v30 = v29[7];
        v31 = *(v30 + 8 * v22);
        *(v30 + 8 * v22) = v19;
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v32 = (v29[6] + 16 * v22);
        *v32 = v17;
        v32[1] = v18;
        *(v29[7] + 8 * v22) = v19;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v7 = v10;
      v6 = v37;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_24DFFCE68();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v40 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_24E348C98();
  __break(1u);
  return result;
}

double block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_24E0F7204()
{
  result = qword_27F1E3CD0;
  if (!qword_27F1E3CD0)
  {
    sub_24DF88A8C(255, &qword_27F1E2F40, 0x277CBDA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3CD0);
  }

  return result;
}

uint64_t objectdestroy_49Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_26();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t sub_24E0F733C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_24E0F73D4()
{
  OUTLINED_FUNCTION_8_9();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_4(v7);
  *v8 = v9;
  v8[1] = sub_24DFB4D64;

  return sub_24E0F28CC(v4, v2, v6, v5);
}

void sub_24E0F747C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a1 + 48) + 16 * v14);
      v16 = *(*(a1 + 56) + 8 * v14);

      v17 = v16;
      v18 = sub_24E26AE3C(v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_24DF88A8C(0, a3, a4);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_24E348628();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24E0F75FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24E0A8624(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_24E0F7640(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_24E0F7734;

  return v5(v2 + 16);
}

uint64_t sub_24E0F7734()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v1 + 32);
  *v4 = *(v2 + 16);
  *(v4 + 16) = v6;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_24E0F785C()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_18_22(v3);

  return sub_24E0F3070(v5, v6, v7, v8, v1);
}

uint64_t sub_24E0F78FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E0F796C()
{
  OUTLINED_FUNCTION_8_9();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v5[1] = sub_24DFB4D64;

  return sub_24E0F7640(v2, v3);
}

uint64_t sub_24E0F7A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E0F7A60()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_22(v4);

  return sub_24E0F1228(v6, v7, v8, v9, v1, v2);
}

unint64_t sub_24E0F7B5C()
{
  result = qword_27F1E3D48;
  if (!qword_27F1E3D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3CA0, &qword_24E377B90);
    sub_24E0F7C14();
    sub_24DFB4C28(&qword_27F1E3D60, &qword_27F1E3D68, &unk_24E377D70, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3D48);
  }

  return result;
}

unint64_t sub_24E0F7C14()
{
  result = qword_27F1E3D50;
  if (!qword_27F1E3D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3D58, &qword_24E377D68);
    sub_24E0F7A18(&qword_27F1E3C98, type metadata accessor for FriendSuggestionLockup, &unk_24E37B930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3D50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E0F5A0C(a1, v3, a3);
}

void sub_24E0F7DDC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 playerID];
  v4 = sub_24E347CF8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_24E0F7E34(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24E347CB8();
  [v2 setPlayerID_];
}

uint64_t sub_24E0F7E98()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for AllFriendsDetailView(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v13;
  }

  return v9;
}

void AllFriendsDetailView.body.getter()
{
  OUTLINED_FUNCTION_32();
  v125 = v1;
  v2 = type metadata accessor for AllFriendsBaseView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D70, &qword_24E377D80);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = v108 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D78, &qword_24E377D88);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v124 = v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D80, &qword_24E377D90);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v117 = v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D88, &qword_24E377D98);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_3();
  v119 = v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3D90, &unk_24E377DA0);
  OUTLINED_FUNCTION_0_14();
  v113 = v16;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  v112 = v18;
  sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v114 = v20;
  v115 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058, &qword_24E370220);
  OUTLINED_FUNCTION_0_14();
  v127 = v24;
  v128 = v25;
  MEMORY[0x28223BE20](v24);
  v111 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v108 - v28;
  sub_24E0F7E98();
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E0FA0D4(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);
  v126 = v29;
  sub_24E346D68();
  v30 = type metadata accessor for AllFriendsDetailView(0);
  v31 = v30[5];
  v121 = v0;
  v32 = v0 + v31;
  v33 = *v32;
  if (*(v32 + 8) == 1)
  {
    v153 = *v32;
  }

  else
  {

    sub_24E348268();
    v34 = v9;
    v35 = v2;
    v36 = sub_24E346198();
    sub_24E343EA8();

    v2 = v35;
    v9 = v34;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v33, 0);
    (v114[1])(v23, v115);
    LOBYTE(v33) = v153;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v37 = v30[11];
      v38 = v2[5];
      sub_24E347638();
      OUTLINED_FUNCTION_5_2();
      v40 = v6 + v38;
      v41 = v121;
      (*(v39 + 16))(v40, v121 + v37);
      v42 = *(v41 + v30[7]);
      v43 = *(v41 + v30[8]);
      v44 = *(v41 + v30[9]);
      v45 = *(v41 + v30[10]);
      *v6 = swift_getKeyPath();
      *(v6 + 8) = 0;
      *(v6 + v2[6]) = v42;
      *(v6 + v2[7]) = v43;
      *(v6 + v2[8]) = v44;
      *(v6 + v2[9]) = v45;
      *(v6 + v2[10]) = 2;
      OUTLINED_FUNCTION_2_63();
      v48 = sub_24E0FA0D4(v46, v47, &unk_24E378124);

      v114 = v48;
      sub_24E3467D8();
      OUTLINED_FUNCTION_7_37();
      v49 = sub_24E346E28();
      v112 = v50;
      v113 = v49;
      v121 = v2;
      v115 = v9;
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
      }

      v51 = type metadata accessor for PlayerCardTheme(0);
      v52 = __swift_project_value_buffer(v51, qword_27F20BF00);
      v53 = *(v52 + 8);
      v54 = *(v52 + 16);
      v55 = *(v52 + 24);
      v56 = *(v52 + 32);
      v57 = *(v52 + 40);
      v58 = *(v52 + 48);
      v59 = *(v52 + 56);
      LODWORD(v109) = v59;
      v60 = sub_24E345708();
      v111 = v60;
      LODWORD(v110) = sub_24E3461E8();
      v139[0] = v53;
      v139[1] = v54;
      v139[2] = v55;
      v139[3] = v56;
      v139[4] = v57;
      v139[5] = v58;
      LOBYTE(v139[6]) = v59;
      *(&v139[6] + 1) = *v138;
      HIDWORD(v139[6]) = *&v138[3];
      v139[7] = v60;
      LOBYTE(v139[8]) = v110;
      *(&v139[8] + 1) = v131;
      HIDWORD(v139[8]) = *(&v131 + 3);
      v61 = v112;
      v62 = v113;
      v139[9] = v113;
      v139[10] = v112;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3DB8, &qword_24E377DD8);
      memcpy(&v115[*(v63 + 36)], v139, 0x58uLL);
      v140 = v53;
      v141 = v54;
      v142 = v55;
      v143 = v56;
      v144 = v57;
      v145 = v58;
      v146 = v109;
      *v147 = *v138;
      *&v147[3] = *&v138[3];
      v148 = v111;
      v149 = v110;
      *v150 = v131;
      *&v150[3] = *(&v131 + 3);
      v151 = v62;
      v152 = v61;
      sub_24DFD7E3C(v53, v54, v55, v56, v57, v58, v109);
      sub_24DF95B98(v139, v133, &qword_27F1E3DD0, &qword_24E377DE0);
      sub_24E101ED8(&v140, &qword_27F1E3DD0);
      v64 = *(v120 + 36);
      v65 = *MEMORY[0x277CDF3C0];
      v66 = sub_24E345238();
      OUTLINED_FUNCTION_5_2();
      v68 = v115;
      (*(v67 + 104))(&v115[v64], v65, v66);
      __swift_storeEnumTagSinglePayload(v68 + v64, 0, 1, v66);
      sub_24DF95B98(v68, v117, &qword_27F1E3D70, &qword_24E377D80);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_11_26(&qword_27F1E3DA0, &qword_27F1E3D90, &unk_24E377DA0);
      sub_24E0F9F04();
      v69 = v119;
      sub_24E345E38();
      sub_24DF95B98(v69, v124, &qword_27F1E3D88, &qword_24E377D98);
      swift_storeEnumTagMultiPayload();
      sub_24E0F9E4C();
      sub_24E345E38();
      sub_24E101ED8(v69, &qword_27F1E3D88);
      sub_24E101ED8(v68, &qword_27F1E3D70);
    }

    else
    {
      v98 = v30[11];
      v99 = v2[5];
      sub_24E347638();
      OUTLINED_FUNCTION_5_2();
      v101 = v121;
      (*(v100 + 16))(v6 + v99, v121 + v98);
      v102 = *(v101 + v30[7]);
      v103 = *(v101 + v30[8]);
      v104 = *(v101 + v30[9]);
      v105 = *(v101 + v30[10]);
      *v6 = swift_getKeyPath();
      *(v6 + 8) = 0;
      *(v6 + v2[6]) = v102;
      *(v6 + v2[7]) = v103;
      *(v6 + v2[8]) = v104;
      *(v6 + v2[9]) = v105;
      *(v6 + v2[10]) = 2;
      sub_24E0FFAD0(v6, v124, type metadata accessor for AllFriendsBaseView);
      swift_storeEnumTagMultiPayload();
      sub_24E0F9E4C();
      OUTLINED_FUNCTION_2_63();
      sub_24E0FA0D4(v106, v107, &unk_24E378124);

      sub_24E345E38();
      OUTLINED_FUNCTION_7_37();
    }

    (*(v128 + 8))(v126, v127);
  }

  else
  {
    v70 = v111;
    v71 = v127;
    sub_24E346D58();
    swift_getKeyPath();
    sub_24E346D78();

    v72 = *(v128 + 8);
    v128 += 8;
    v115 = v72;
    (v72)(v70, v71);
    v73 = v139[0];
    v74 = v139[1];
    v75 = v139[2];
    LOBYTE(v71) = BYTE2(v139[2]);
    v76 = v139[3];
    v77 = v139[4];
    swift_getKeyPath();
    v133[0] = v73;
    v133[1] = v74;
    v134 = v75;
    v135 = v71;
    v136 = v76;
    v137 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1138, &qword_24E3702F0);
    sub_24E346C78();

    v114 = v108;
    v129 = v131;
    v130 = v132;
    MEMORY[0x28223BE20](v78);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338, &qword_24E36DB80);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3DE8, &qword_24E377E38);
    v109 = OUTLINED_FUNCTION_20_19(&qword_27F1E3DF0);
    v108[1] = OUTLINED_FUNCTION_20_19(&qword_27F1E3DF8);
    v108[0] = OUTLINED_FUNCTION_20_19(&qword_27F1E3E00);
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E08, &qword_24E377E40);
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E10, &qword_24E377E48);
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E18, &qword_24E377E50);
    v82 = type metadata accessor for PlayerProfilePage(255);
    v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E20, &qword_24E377E58);
    OUTLINED_FUNCTION_2_63();
    v86 = sub_24E0FA0D4(v84, v85, &unk_24E378124);
    v140 = v2;
    v141 = v86;
    v87 = OUTLINED_FUNCTION_12_23();
    v140 = v83;
    v141 = v87;
    v88 = OUTLINED_FUNCTION_12_23();
    v89 = sub_24E0FA0D4(&qword_27F1E3E28, type metadata accessor for PlayerProfilePage, &unk_24E3780D4);
    v140 = v81;
    v141 = MEMORY[0x277D837D0];
    v142 = v82;
    v143 = v88;
    v121 = v2;
    v144 = MEMORY[0x277D837E0];
    v145 = v89;
    v90 = OUTLINED_FUNCTION_12_23();
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E30, &unk_24E377E60);
    v92 = sub_24E1027E4(&qword_27F1E3E38, &qword_27F1E3E30, &unk_24E377E60, MEMORY[0x277CDD7A8]);
    v140 = v91;
    v141 = v92;
    v93 = OUTLINED_FUNCTION_12_23();
    v140 = v79;
    v141 = v80;
    v142 = v90;
    v143 = v93;
    OUTLINED_FUNCTION_12_23();
    v94 = v112;
    sub_24E3456E8();
    v95 = v113;
    v96 = v118;
    (*(v113 + 16))(v117, v94, v118);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_26(&qword_27F1E3DA0, &qword_27F1E3D90, &unk_24E377DA0);
    sub_24E0F9F04();
    v97 = v119;
    sub_24E345E38();
    sub_24DF95B98(v97, v124, &qword_27F1E3D88, &qword_24E377D98);
    swift_storeEnumTagMultiPayload();
    sub_24E0F9E4C();
    sub_24E345E38();
    sub_24E101ED8(v97, &qword_27F1E3D88);
    (*(v95 + 8))(v94, v96);
    (v115)(v126, v127);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0F8E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for AllFriendsDetailView(0);
  v4 = (v3 - 8);
  v68 = *(v3 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24E345BB8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AllFriendsBaseView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E20, &qword_24E377E58);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = &v56 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E18, &qword_24E377E50);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E08, &qword_24E377E40);
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v16;
  v17 = v4[13];
  v18 = v8[5];
  v19 = sub_24E347638();
  (*(*(v19 - 8) + 16))(&v10[v18], a1 + v17, v19);
  v20 = *(a1 + v4[9]);
  v21 = *(a1 + v4[10]);
  v22 = v4[12];
  v23 = *(a1 + v4[11]);
  v24 = *(a1 + v22);
  v57 = a1;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  *&v10[v8[6]] = v20;
  *&v10[v8[7]] = v21;
  *&v10[v8[8]] = v23;
  *&v10[v8[9]] = v24;
  *&v10[v8[10]] = 2;

  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = GKGetLocalizedStringFromTableInBundle();

  v28 = sub_24E347CF8();
  v30 = v29;

  v73 = v28;
  v74 = v30;
  sub_24DF90C4C();
  v31 = sub_24E3464E8();
  v33 = v32;
  LOBYTE(v27) = v34;
  v35 = sub_24E0FA0D4(&qword_27F1E3DC0, type metadata accessor for AllFriendsBaseView, &unk_24E378124);
  sub_24E3466A8();
  sub_24DFA92EC(v31, v33, v27 & 1);

  sub_24E0FFB2C(v10, type metadata accessor for AllFriendsBaseView);
  v36 = v61;
  v37 = v62;
  (*(v61 + 104))(v7, *MEMORY[0x277CDDDC0], v62);
  v73 = v8;
  v74 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = v59;
  sub_24E3467F8();
  (*(v36 + 8))(v7, v37);
  v41 = v40;
  (*(v60 + 8))(v12, v40);
  v42 = v65;
  sub_24E0FFAD0(a1, v65, type metadata accessor for AllFriendsDetailView);
  v43 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v44 = swift_allocObject();
  sub_24E1009DC(v42, v44 + v43, type metadata accessor for AllFriendsDetailView);
  v45 = type metadata accessor for PlayerProfilePage(0);
  v73 = v41;
  v74 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v55 = sub_24E0FA0D4(&qword_27F1E3E28, type metadata accessor for PlayerProfilePage, &unk_24E3780D4);
  v47 = MEMORY[0x277D837E0];
  v49 = v63;
  v48 = v64;
  v50 = MEMORY[0x277D837D0];
  sub_24E346798();

  (*(v66 + 8))(v39, v48);
  v72 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E10, &qword_24E377E48);
  v73 = v48;
  v74 = v50;
  v75 = v45;
  v76 = v46;
  v77 = v47;
  v78 = v55;
  swift_getOpaqueTypeConformance2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E30, &unk_24E377E60);
  v52 = sub_24E1027E4(&qword_27F1E3E38, &qword_27F1E3E30, &unk_24E377E60, MEMORY[0x277CDD7A8]);
  v73 = v51;
  v74 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v69;
  sub_24E3468B8();
  return (*(v70 + 8))(v49, v53);
}

uint64_t sub_24E0F9650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(type metadata accessor for AllFriendsDetailView(0) + 44);
  v8 = *(type metadata accessor for PlayerProfilePage(0) + 24);
  v9 = sub_24E347638();
  (*(*(v9 - 8) + 16))(a3 + v8, a2 + v7, v9);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
}

uint64_t sub_24E0F9708(uint64_t a1)
{
  v2 = sub_24E345EA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E30, &unk_24E377E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  sub_24E345E88();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4060, &unk_24E37A030);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830, &qword_24E36BC10);
  v8 = sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_24E3452E8();
  v9 = sub_24E1027E4(&qword_27F1E3E38, &qword_27F1E3E30, &unk_24E377E60, MEMORY[0x277CDD7A8]);
  MEMORY[0x25303CA30](v6, v3, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E0F9930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for AllFriendsDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  v19[2] = v13;
  v19[3] = v15;
  sub_24E0FFAD0(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllFriendsDetailView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_24E1009DC(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AllFriendsDetailView);
  sub_24DF90C4C();
  sub_24E346C08();
  sub_24E1027E4(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  sub_24E346818();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E0F9BD0(uint64_t a1)
{
  v15 = sub_24E345B68();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_24E345478();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF95B98(a1, v7, &qword_27F1DF620, &qword_24E36B560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_24E345468();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24E0F9E4C()
{
  result = qword_27F1E3D98;
  if (!qword_27F1E3D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3D88, &qword_24E377D98);
    sub_24E1027E4(&qword_27F1E3DA0, &qword_27F1E3D90, &unk_24E377DA0, MEMORY[0x277CDDA18]);
    sub_24E0F9F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3D98);
  }

  return result;
}

unint64_t sub_24E0F9F04()
{
  result = qword_27F1E3DA8;
  if (!qword_27F1E3DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3D70, &qword_24E377D80);
    sub_24E0F9FBC();
    sub_24E1027E4(&qword_27F1E3DD8, &unk_27F1E3DE0, &unk_24E377DE8, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3DA8);
  }

  return result;
}

unint64_t sub_24E0F9FBC()
{
  result = qword_27F1E3DB0;
  if (!qword_27F1E3DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3DB8, &qword_24E377DD8);
    type metadata accessor for AllFriendsBaseView(255);
    sub_24E0FA0D4(&qword_27F1E3DC0, type metadata accessor for AllFriendsBaseView, &unk_24E378124);
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E3DC8, &unk_27F1E3DD0, &unk_24E377DE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3DB0);
  }

  return result;
}

uint64_t sub_24E0FA0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E0FA120()
{
  OUTLINED_FUNCTION_32();
  v24 = v1;
  v25 = sub_24E345BA8();
  OUTLINED_FUNCTION_0_14();
  v23 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F28, &qword_24E378178);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F30, &qword_24E378180);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  v26 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F38, &qword_24E378188);
  sub_24E1027E4(&qword_27F1E3F40, &qword_27F1E3F38, &qword_24E378188, MEMORY[0x277CE14C0]);
  sub_24E346398();
  v19 = sub_24E1027E4(&qword_27F1E3F48, &qword_27F1E3F28, &qword_24E378178, MEMORY[0x277CDE580]);
  sub_24E3464F8();
  (*(v9 + 8))(v12, v7);
  sub_24E345B98();
  v27 = v7;
  v28 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_24E3465D8();
  (*(v23 + 8))(v6, v25);
  (*(v15 + 8))(v18, v13);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F50, &qword_24E378190) + 36));
  *v21 = sub_24E0FAA00;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0FA420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AllFriendsView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for AllFriendsBaseView(0);
  v55 = *(a1 + v10[9]);
  LOBYTE(__src[0]) = 0;
  swift_retain_n();
  sub_24E346B78();
  v43 = v59;
  v57 = v60;
  type metadata accessor for GameCenterSettings(0);
  v11 = sub_24DFF20B4();
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = (v11 & 1) == 0;
  v12 = *(a1 + v10[7]);
  v13 = *(a1 + v10[8]);
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E0FA0D4(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);
  v50 = v12;

  v45 = v13;

  v56 = sub_24E345298();
  v42 = v14;
  v49 = swift_getKeyPath();
  v15 = v10[5];
  v16 = sub_24E347638();
  (*(*(v16 - 8) + 16))(v9, a1 + v15, v16);
  *&v9[*(v5 + 28)] = *(a1 + v10[6]);
  v17 = v9;
  *&v9[*(v5 + 32)] = v55;

  v18 = sub_24DFF20B4();
  v19 = 0;
  v53 = 0;
  v20 = 0;
  v54 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v18)
  {
    v19 = 0xD000000000000011;
    v53 = 0x800000024E3A7880;
    v54 = 0x800000024E3A78A0;
    v21 = *(a1 + v10[10]);

    v20 = 0xD000000000000012;
    v23 = 0xEA00000000006567;
    v22 = 0x6150646E65697266;
    v25 = 2;
    v24 = v26;
  }

  v46 = v22;
  v47 = v24;
  v48 = v23;
  v40 = v19;
  v27 = v17;
  v41 = v17;
  v28 = v52;
  v29 = v20;
  v38 = v20;
  v39 = v25;
  sub_24E0FFAD0(v27, v52, type metadata accessor for AllFriendsView);
  *a2 = v43;
  v30 = v55;
  *(a2 + 8) = v57;
  *(a2 + 16) = v30;
  v31 = v30;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = sub_24DFEB7E4;
  v32 = v49;
  *(a2 + 40) = v44;
  *(a2 + 48) = v32;
  *(a2 + 56) = 0;
  *(a2 + 64) = v56;
  *(a2 + 72) = v42 & 1;
  v33 = v45;
  *(a2 + 80) = v50;
  *(a2 + 88) = v33;
  *(a2 + 96) = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F58, &qword_24E3781C8);
  sub_24E0FFAD0(v28, a2 + *(v34 + 64), type metadata accessor for AllFriendsView);
  v35 = *(v34 + 80);
  __src[0] = v19;
  __src[1] = v53;
  __src[2] = v29;
  __src[3] = v54;
  __src[4] = v21;
  __src[5] = v25;
  __src[6] = v46;
  __src[7] = v48;
  __src[8] = v47;
  memcpy((a2 + v35), __src, 0x48uLL);

  v36 = v49;
  sub_24E100480(v49, 0);

  sub_24DF95B98(__src, &v59, &qword_27F1E3F60, &qword_24E3781D0);
  sub_24E0FFB2C(v41, type metadata accessor for AllFriendsView);
  v59 = v40;
  v60 = v53;
  v61 = v38;
  v62 = v54;
  v63 = v21;
  v64 = v39;
  v65 = v46;
  v66 = v48;
  v67 = v47;
  sub_24E101ED8(&v59, &qword_27F1E3F60);
  sub_24E0FFB2C(v52, type metadata accessor for AllFriendsView);
  sub_24DE73F34(v36, 0);
}

uint64_t sub_24E0FAA00()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E347628();
  sub_24E32E770(1, 12, 3u, 0, v3, 0);
  return (*(v1 + 8))(v3, v0);
}

void AllFriendsView.body.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v41 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E40, &qword_24E378EF0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E48, &qword_24E377E70);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v39 = v7;
  v8 = type metadata accessor for AllFriendsListView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E50, &qword_24E377E78);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = (v38 - v14);
  v38[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E58, &unk_24E377E80);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v19 = type metadata accessor for AllFriendsView(0);
  v20 = *(v0 + *(v19 + 20));
  if (sub_24E0E0DD0())
  {
    v21 = sub_24DFD8654();

    if (v21)
    {
      v22 = v8[5];
      sub_24E347638();
      OUTLINED_FUNCTION_5_2();
      (*(v23 + 16))(v12 + v22, v1);
      v24 = *(v1 + *(v19 + 24));
      v42 = 0;

      sub_24E346B78();
      v25 = v44;
      *v12 = v43;
      *(v12 + 8) = v25;
      *(v12 + v8[6]) = v20;
      *(v12 + v8[7]) = v24;
      sub_24E0FFAD0(v12, v15, type metadata accessor for AllFriendsListView);
      swift_storeEnumTagMultiPayload();
      sub_24E0FF908();
      OUTLINED_FUNCTION_6_47();
      sub_24E0FA0D4(v26, v27, &unk_24E378034);
      OUTLINED_FUNCTION_21_18();
      sub_24E345E38();
      sub_24E0FFB2C(v12, type metadata accessor for AllFriendsListView);
    }

    else
    {
      *v15 = *(v1 + *(v19 + 24));
      swift_storeEnumTagMultiPayload();
      sub_24E0FF908();
      OUTLINED_FUNCTION_6_47();
      sub_24E0FA0D4(v36, v37, &unk_24E378034);

      OUTLINED_FUNCTION_21_18();
      sub_24E345E38();
    }

    v34 = &qword_27F1E3E58;
    sub_24DF95B98(v18, v39, &qword_27F1E3E58, &unk_24E377E80);
    swift_storeEnumTagMultiPayload();
    sub_24E0FF84C();
    sub_24E0FF95C();
    sub_24E345E38();
    v35 = v18;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_19_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60, &qword_24E379950, MEMORY[0x277CE1138]);
    sub_24E346D28();
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v30 = type metadata accessor for PlayerCardTheme(0);
    v31 = *(__swift_project_value_buffer(v30, qword_27F20BF00) + 64);
    v43 = sub_24E346948();
    v32 = sub_24E346C48();
    v33 = v39;
    *&v5[*(v40 + 36)] = v32;
    v34 = &qword_27F1E3E40;
    sub_24DF95B98(v5, v33, &qword_27F1E3E40, &qword_24E378EF0);
    swift_storeEnumTagMultiPayload();
    sub_24E0FF84C();
    sub_24E0FF95C();
    sub_24E345E38();
    v35 = v5;
  }

  sub_24E101ED8(v35, v34);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0FB008@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24E345BF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4048, &qword_24E37E990);
  return sub_24E0FB058(a2 + *(v3 + 44));
}

uint64_t sub_24E0FB058@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4050, &qword_24E3782C0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_24E345348();
  v9 = sub_24E3461E8();
  sub_24E3451B8();
  v10 = &v8[*(v3 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_24DF95B98(v8, v5, &qword_27F1E4050, &qword_24E3782C0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4058, &unk_24E3782C8);
  sub_24DF95B98(v5, a1 + *(v15 + 48), &qword_27F1E4050, &qword_24E3782C0);
  v16 = a1 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_24E101ED8(v8, &qword_27F1E4050);
  return sub_24E101ED8(v5, &qword_27F1E4050);
}

uint64_t sub_24E0FB1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3FA0, &qword_24E3781F8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3FA8, &qword_24E378200);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3FB0, &qword_24E378208);
  sub_24E1005EC();
  sub_24E346D28();
  KeyPath = swift_getKeyPath();
  v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4000, &qword_24E378260) + 36)];
  *v11 = KeyPath;
  v11[8] = 1;
  v12 = sub_24E3461E8();
  v13 = &v5[*(v3 + 44)];
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  sub_24E346E28();
  sub_24E3457F8();
  sub_24E04B898(v5, v9, &qword_27F1E3FA0, &qword_24E3781F8);
  memcpy(&v9[*(v7 + 44)], __src, 0x70uLL);
  v16[1] = sub_24E3469A8();
  v14 = sub_24E346C48();
  sub_24E04B898(v9, a1, &qword_27F1E3FA8, &qword_24E378200);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4008, &qword_24E378268);
  *(a1 + *(result + 36)) = v14;
  return result;
}

void *sub_24E0FB420@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345CF8();
  LOBYTE(__src[0]) = 1;
  sub_24E0FB54C(v10);
  *&v7[7] = v10[0];
  *&v7[23] = v10[1];
  *&v7[39] = v10[2];
  *&v7[55] = v10[3];
  KeyPath = swift_getKeyPath();
  v5 = sub_24E3461E8();
  sub_24E346E28();
  sub_24E3457F8();
  memcpy(&v8[7], __src, 0x70uLL);
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  memcpy((a2 + 17), v7, 0x47uLL);
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = 1;
  *(a2 + 104) = v5;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 1;
  return memcpy((a2 + 145), v8, 0x77uLL);
}

uint64_t sub_24E0FB54C@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E3437A8();
  sub_24DF90C4C();
  v2 = sub_24E3464E8();
  v4 = v3;
  v6 = v5;
  sub_24E346388();
  v7 = sub_24E3464B8();
  v9 = v8;
  v11 = v10;

  sub_24DFA92EC(v2, v4, v6 & 1);

  v12 = sub_24E346498();
  v28 = v13;
  v29 = v12;
  v27 = v14;
  v30 = v15;
  sub_24DFA92EC(v7, v9, v11 & 1);

  sub_24E343848();
  v16 = sub_24E3464E8();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_24E346378();
  v20 = sub_24E3464B8();
  v22 = v21;
  LOBYTE(v4) = v23;
  v25 = v24;

  sub_24DFA92EC(v16, v18, v9 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v25;
  sub_24DF82DD4(v29, v28, v27 & 1);

  sub_24DF82DD4(v20, v22, v4 & 1);

  sub_24DFA92EC(v20, v22, v4 & 1);

  sub_24DFA92EC(v29, v28, v27 & 1);
}

uint64_t sub_24E0FB774@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4010, &qword_24E378270);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  type metadata accessor for AllFriendsListView(0);
  v7 = sub_24E0E0DD0();
  if (v7)
  {
    MEMORY[0x28223BE20](v7);
    *(&v14 - 2) = v8;
    *(&v14 - 1) = v1;
    sub_24E343AA8();
    sub_24DFD8654();
    v14 = sub_24E343858();
    v15 = v9;
    sub_24DF90C4C();
    v14 = sub_24E3464E8();
    v15 = v10;
    v16 = v11 & 1;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4018, &qword_24E378278);
    sub_24E100844();
    sub_24E346D08();

    (*(v4 + 32))(a1, v6, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_24E0FB99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllFriendsListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_24E0FFAD0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllFriendsListView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24E1009DC(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AllFriendsListView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26F0, &unk_24E372F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4030, qword_24E378280);
  sub_24E1027E4(&qword_27F1E4040, &qword_27F1E26F0, &unk_24E372F50, MEMORY[0x277D83980]);
  sub_24E1008C8();
  return sub_24E346CC8();
}

uint64_t sub_24E0FBB80@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for AllFriendsListView(0) + 20);
  v7 = type metadata accessor for FriendRowView(0);
  v8 = *(v7 + 36);
  v9 = sub_24E347638();
  (*(*(v9 - 8) + 16))(a3 + v8, a2 + v6, v9);
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E0FA0D4(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);
  v10 = v5;
  v11 = sub_24E345298();
  LOBYTE(v8) = v12;
  type metadata accessor for GameCenterContainerViewModel(0);
  sub_24E0FA0D4(&qword_27F1E1270, type metadata accessor for GameCenterContainerViewModel, &unk_24E3750E0);
  v13 = sub_24E345288();
  v15 = v14;
  type metadata accessor for GameCenterSettings(0);
  sub_24E0FA0D4(&qword_27F1E01A0, type metadata accessor for GameCenterSettings, &protocol conformance descriptor for GameCenterSettings);
  v16 = sub_24E345848();
  v18 = v17;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v8 & 1;
  *(a3 + 32) = v13;
  *(a3 + 40) = v15 & 1;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  *(a3 + 64) = v10;
  *(a3 + *(v7 + 40)) = 0x4046000000000000;
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for PlayerCardTheme(0);
  v20 = *(__swift_project_value_buffer(v19, qword_27F20BF00) + 64);
  sub_24E346948();
  v21 = sub_24E346C48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4030, qword_24E378280);
  *(a3 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_24E0FBE04()
{
  v1 = sub_24E345B68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_24E348268();
    v7 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_24E0FBF4C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v84 = type metadata accessor for PlayerProfilePage(0);
  MEMORY[0x28223BE20](v84);
  v83 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E40E8, &qword_24E378620);
  v86 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = &v65 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E40F0, &qword_24E378628);
  MEMORY[0x28223BE20](v90);
  v91 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E40F8, &qword_24E378630);
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v65 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4100, &qword_24E378638);
  MEMORY[0x28223BE20](v76);
  v9 = &v65 - v8;
  v77 = sub_24E345778();
  v10 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for FriendRowView(0);
  v66 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v67 = v12;
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4108, &qword_24E378640);
  MEMORY[0x28223BE20](v75);
  v69 = &v65 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4110, &qword_24E378648);
  v72 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v70 = &v65 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4118, &qword_24E378650);
  MEMORY[0x28223BE20](v89);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058, &qword_24E370220);
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x28223BE20](v17);
  v87 = &v65 - v18;
  v19 = sub_24E345B68();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  LODWORD(v22) = *(v1 + 8);
  v81 = v16;
  if (v22 == 1)
  {
    v97 = v24;
    if (v24)
    {
LABEL_3:
      v25 = [*(v1 + 64) playerID];
      v26 = sub_24E347CF8();
      v28 = v27;

      v29 = *(v82 + 36);
      v30 = *(v84 + 24);
      v31 = sub_24E347638();
      v32 = v83;
      (*(*(v31 - 8) + 16))(&v83[v30], v1 + v29, v31);
      *v32 = swift_getKeyPath();
      v32[8] = 0;
      *(v32 + 2) = v26;
      *(v32 + 3) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4120, &qword_24E378658);
      sub_24E101754();
      sub_24E0FA0D4(&qword_27F1E3E28, type metadata accessor for PlayerProfilePage, &unk_24E3780D4);
      v33 = v85;
      sub_24E3455A8();
      v34 = v86;
      (*(v86 + 16))(v91, v33, v3);
      swift_storeEnumTagMultiPayload();
      sub_24E101838();
      sub_24E1027E4(&qword_27F1E4178, &qword_27F1E40E8, &qword_24E378620, MEMORY[0x277CDD938]);
      sub_24E345E38();
      return (*(v34 + 8))(v33, v3);
    }
  }

  else
  {

    sub_24E348268();
    v36 = sub_24E346198();
    v65 = v1;
    v37 = v9;
    v38 = v6;
    v39 = v36;
    sub_24E343EA8();

    v6 = v38;
    v9 = v37;
    v1 = v65;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v24, 0);
    v21 = (*(v20 + 8))(v23, v19);
    if (v97)
    {
      goto LABEL_3;
    }
  }

  v40 = v1;
  sub_24E0FBE04();
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E0FA0D4(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);
  sub_24E346D68();
  v95 = &type metadata for GameCenterUIFeatureFlags;
  v96 = sub_24E032C80();
  v41 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v92);
  if ((v41 & 1) != 0 && (type metadata accessor for GameCenterSettings(0), sub_24DFF1F8C()))
  {
    v42 = v68;
    sub_24E0FFAD0(v40, v68, type metadata accessor for FriendRowView);
    v43 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v44 = swift_allocObject();
    v45 = sub_24E1009DC(v42, v44 + v43, type metadata accessor for FriendRowView);
    v86 = v6;
    MEMORY[0x28223BE20](v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4138, &unk_24E378660);
    sub_24E1027E4(&qword_27F1E4130, &qword_27F1E4138, &unk_24E378660, &unk_24E38B878);
    v46 = v69;
    sub_24E346BD8();
    v47 = v75;
    *(v46 + *(v75 + 36)) = 0;
    v48 = v71;
    sub_24E345768();
    v49 = sub_24E10197C();
    v50 = sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v51 = v70;
    v52 = v77;
    sub_24E346588();
    (*(v10 + 8))(v48, v52);
    sub_24E101ED8(v46, &qword_27F1E4108);
    v53 = v72;
    v54 = v78;
    (*(v72 + 16))(v9, v51, v78);
    swift_storeEnumTagMultiPayload();
    v92 = v47;
    v93 = v52;
    v94 = v49;
    v95 = v50;
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4170, &qword_27F1E40F8, &qword_24E378630, MEMORY[0x277CDD938]);
    v55 = v81;
    sub_24E345E38();
    (*(v53 + 8))(v51, v54);
  }

  else
  {
    v56 = [*(v40 + 64) playerID];
    v57 = sub_24E347CF8();
    v59 = v58;

    v92 = v57;
    v93 = v59;
    MEMORY[0x28223BE20](v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4120, &qword_24E378658);
    sub_24E101754();
    v61 = v73;
    sub_24E3455B8();
    v62 = v74;
    (*(v74 + 16))(v9, v61, v6);
    swift_storeEnumTagMultiPayload();
    v63 = sub_24E10197C();
    v64 = sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v92 = v75;
    v93 = v77;
    v94 = v63;
    v95 = v64;
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4170, &qword_27F1E40F8, &qword_24E378630, MEMORY[0x277CDD938]);
    v55 = v81;
    sub_24E345E38();
    (*(v62 + 8))(v61, v6);
  }

  sub_24DF95B98(v55, v91, &qword_27F1E4118, &qword_24E378650);
  swift_storeEnumTagMultiPayload();
  sub_24E101838();
  sub_24E1027E4(&qword_27F1E4178, &qword_27F1E40E8, &qword_24E378620, MEMORY[0x277CDD938]);
  sub_24E345E38();
  sub_24E101ED8(v55, &qword_27F1E4118);
  return (*(v79 + 8))(v87, v80);
}

uint64_t sub_24E0FCDC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24E343288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24E348998();

  v16 = 0xD00000000000001FLL;
  v17 = 0x800000024E3A78E0;
  v9 = [*(a1 + 64) playerID];
  v10 = sub_24E347CF8();
  v12 = v11;

  MEMORY[0x25303E950](v10, v12);

  sub_24E343268();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_24E101ED8(v4, &qword_27F1DEFB8);
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = [objc_opt_self() sharedApplication];
  v15 = sub_24E343228();
  [v14 openURL_];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E0FD018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FriendRowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_24E345D08();
  v8 = sub_24E345BF8();
  sub_24E0FFAD0(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRowView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_24E1009DC(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FriendRowView);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4138, &unk_24E378660) + 52);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = sub_24E101BC0;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_24E0FD1B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = sub_24E1AF4F4(*(v1 + 64));
  v5 = v4;
  v7 = v6;
  type metadata accessor for FriendRowView(0);
  sub_24E346E38();
  sub_24E3453D8();
  v8 = v7 & 1;
  v9 = (v7 >> 8) & 1;
  *&v22[3] = *&v22[27];
  *&v22[11] = *&v22[35];
  *&v22[19] = v23;
  v10 = sub_24E345D08();
  LOBYTE(v27[0]) = 1;
  sub_24E0FD57C(v2, v24);
  *&v21[7] = v24[0];
  *&v21[23] = v24[1];
  *&v21[39] = v24[2];
  *&v21[55] = v24[3];
  v11 = v27[0];
  __src[0] = v3;
  __src[1] = v5;
  LOBYTE(__src[2]) = v8;
  BYTE1(__src[2]) = v9;
  __src[8] = *(&v23 + 1);
  *(&__src[6] + 2) = *&v22[16];
  *(&__src[4] + 2) = *&v22[8];
  *(&__src[2] + 2) = *v22;
  memcpy(__dst, __src, 0x48uLL);
  v26[0] = v10;
  v26[1] = 0;
  LOBYTE(v26[2]) = v27[0];
  memcpy(&v26[2] + 1, v21, 0x47uLL);
  memcpy(&__dst[72], v26, 0x58uLL);
  memcpy(a1, __dst, 0xA0uLL);
  v27[0] = v10;
  v27[1] = 0;
  v28 = v11;
  memcpy(v29, v21, sizeof(v29));
  sub_24DF95B98(__src, v14, &qword_27F1E4180, &qword_24E3786B0);
  sub_24DF95B98(v26, v14, &qword_27F1E4188, &unk_24E3786B8);
  sub_24E101ED8(v27, &qword_27F1E4188);
  v14[0] = v3;
  v14[1] = v5;
  v15 = v8;
  v16 = v9;
  v17 = *v22;
  v18 = *&v22[8];
  v19[0] = *&v22[16];
  *(v19 + 14) = *&v22[23];
  return sub_24E101ED8(v14, &qword_27F1E4180);
}

void sub_24E0FD3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for FriendRowView(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = sub_24E345D08();
  v32 = sub_24E345BF8();
  sub_24E0FFAD0(v25, &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRowView);
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = swift_allocObject();
  sub_24E1009DC(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FriendRowView);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4138, &unk_24E378660) + 52);
  *(v27 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v27 = v23;
  *(v27 + 8) = v34;
  *(v27 + 16) = v31;
  *(v27 + 24) = 0;
  *(v27 + 32) = 1;
  *(v27 + 40) = v32;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4120, &qword_24E378658) + 36)) = 0;
  OUTLINED_FUNCTION_18();
}

id sub_24E0FD57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = [v3 alias];
  if (result)
  {
    v5 = result;
    sub_24E347CF8();

    sub_24DF90C4C();
    v6 = sub_24E3464E8();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v3 contact];
    if (v13)
    {
      v37 = v13;
      v14 = [v13 _gkCompositeName];
      sub_24E347CF8();

      v15 = sub_24E3464E8();
      v17 = v16;
      v19 = v18;
      sub_24E346358();
      v39 = v8;
      v38 = v10;
      v20 = sub_24E3464B8();
      v22 = v21;
      v40 = v6;
      v24 = v23;

      sub_24DFA92EC(v15, v17, v19 & 1);

      sub_24E345F28();
      v25 = sub_24E346478();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = v24 & 1;
      v6 = v40;
      v33 = v20;
      v10 = v38;
      sub_24DFA92EC(v33, v22, v32);

      v34 = v29 & 1;
      v8 = v39;
      sub_24DF82DD4(v25, v27, v34);
    }

    else
    {
      v25 = 0;
      v27 = 0;
      v34 = 0;
      v31 = 0;
    }

    v36 = v10 & 1;
    v35 = v36;
    sub_24DF82DD4(v6, v8, v36);

    sub_24E00B1C4(v25, v27, v34, v31);
    sub_24E00B208(v25, v27, v34, v31);
    sub_24E00B208(v25, v27, v34, v31);
    sub_24DFA92EC(v6, v8, v36);
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v12 = 0;
    v25 = 0;
    v27 = 0;
    v34 = 0;
    v31 = 0;
    v35 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v35;
  a2[3] = v12;
  a2[4] = v25;
  a2[5] = v27;
  a2[6] = v34;
  a2[7] = v31;
  return result;
}

uint64_t sub_24E0FD844@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4210, &qword_24E378750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4218, &qword_24E378758);
  type metadata accessor for InviteFriendsView(255);
  sub_24E10202C();
  sub_24E0FA0D4(&qword_27F1DF608, type metadata accessor for InviteFriendsView, &unk_24E379E40);
  swift_getOpaqueTypeConformance2();
  sub_24E346D28();
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PlayerCardTheme(0);
  v6 = *(__swift_project_value_buffer(v5, qword_27F20BF00) + 64);
  sub_24E346948();
  v7 = sub_24E346C48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4258, &qword_24E378780);
  *(a4 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_24E0FD9D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4218, &qword_24E378758);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a1 & 1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4260, &qword_24E378788);
  sub_24E1021D4();
  sub_24E346BD8();
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for PlayerCardTheme(0);
  v13 = *(__swift_project_value_buffer(v12, qword_27F20BF00) + *(v12 + 36));
  v14 = sub_24E346948();
  KeyPath = swift_getKeyPath();
  v25 = v14;
  v16 = sub_24E3453E8();
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4230, &qword_24E378760) + 36)];
  *v17 = KeyPath;
  v17[1] = v16;
  type metadata accessor for GameCenterSettings(0);
  LOBYTE(v16) = sub_24DFF20B4();
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = (v16 & 1) == 0;
  v20 = &v9[*(v7 + 36)];
  *v20 = v18;
  v20[1] = sub_24E04BCC0;
  v20[2] = v19;
  v27 = v11;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346BA8();
  v23[3] = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  type metadata accessor for InviteFriendsView(0);
  sub_24E10202C();
  sub_24E0FA0D4(&qword_27F1DF608, type metadata accessor for InviteFriendsView, &unk_24E379E40);

  sub_24E346868();

  return sub_24E101ED8(v9, &qword_27F1E4218);
}

uint64_t sub_24E0FDD50@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345BF8();
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  v13 = v12 & 1;
  sub_24DF82DD4(v7, v8, v12 & 1);

  sub_24DFA92EC(v7, v9, v13);

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v13;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

double sub_24E0FDE70@<D0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for InviteFriendsView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v4[8];

  sub_24E346B78();
  *v6 = v10;
  *(v6 + 2) = v11;
  v7 = (a2 + v4[9]);
  sub_24E346B78();
  result = *&v10;
  *v7 = v10;
  *(a2 + v4[6]) = a1;
  v9 = (a2 + v4[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_24E0FDF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4190, &qword_24E3786C8);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4198, &qword_24E3786D0);
  MEMORY[0x28223BE20](v6);
  v39 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E41A0, &qword_24E3786D8);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - v9;
  v11 = sub_24E345B68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 1);
  v17 = *(v1 + 2);
  v43[0] = *v1;
  v43[1] = v16;
  v43[2] = v17;
  v18 = v1[6];
  v46 = *(v1 + 8);
  v19 = *v1;
  v44 = v18;
  v45 = v19;
  if (v46 == 1)
  {
    v20 = v19;
    v42 = v19;
  }

  else
  {
    v38 = v13;
    sub_24DF95B98(&v45, v41, &qword_27F1E41A8, &qword_24E3786E0);
    sub_24E348268();
    v21 = sub_24E346198();
    v40 = v10;
    v22 = v3;
    v23 = v21;
    sub_24E343EA8();

    v3 = v22;
    v10 = v40;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24E101ED8(&v45, &qword_27F1E41A8);
    (*(v12 + 8))(v15, v38);
    v20 = v42;
  }

  if ((v20 - 1) > 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E101C58(&qword_27F1E41B0, &qword_27F1E41A0, &qword_24E3786D8, sub_24E101CD0);
    return sub_24E345E38();
  }

  sub_24E0DE4A0();
  if (v24)
  {
    v25 = v24;
    v26 = sub_24DFD8654();
    if (v26 >= 1)
    {
      v37[0] = v6;
      v37[1] = v3;
      v40 = v10;
      v38 = a1;
      MEMORY[0x28223BE20](v26);
      v37[-2] = v43;
      v37[-1] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E41E0, &unk_24E3786F8);
      v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E41D0, &qword_24E3786F0);
      v28 = sub_24E345778();
      v29 = sub_24E1027E4(&qword_27F1E41D8, &qword_27F1E41D0, &qword_24E3786F0, MEMORY[0x277CDD938]);
      v30 = sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v41[0] = v27;
      v41[1] = v28;
      v41[2] = v29;
      v41[3] = v30;
      swift_getOpaqueTypeConformance2();
      v31 = v39;
      sub_24E346D28();

      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for PlayerCardTheme(0);
      v33 = *(__swift_project_value_buffer(v32, qword_27F20BF00) + 64);
      v41[0] = sub_24E346948();
      v34 = sub_24E346C48();
      v6 = v37[0];
      *(v31 + *(v37[0] + 36)) = v34;
      v10 = v40;
      sub_24DE619A0(v31, v40);
      v35 = 0;
      goto LABEL_13;
    }
  }

  v35 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v10, v35, 1, v6);
  sub_24DF95B98(v10, v5, &qword_27F1E41A0, &qword_24E3786D8);
  swift_storeEnumTagMultiPayload();
  sub_24E101C58(&qword_27F1E41B0, &qword_27F1E41A0, &qword_24E3786D8, sub_24E101CD0);
  sub_24E345E38();
  return sub_24E101ED8(v10, &qword_27F1E41A0);
}

uint64_t sub_24E0FE564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_24E345778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03D0, &unk_24E36DF60);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E41D0, &qword_24E3786F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - v14;
  v17[4] = a2;
  sub_24E0FE828(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E41E8, &qword_24E378708);
  sub_24E101F3C();
  sub_24E032508();
  sub_24E3455A8();
  sub_24E345768();
  sub_24E1027E4(&qword_27F1E41D8, &qword_27F1E41D0, &qword_24E3786F0, MEMORY[0x277CDD938]);
  sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_24E346588();
  (*(v6 + 8))(v8, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24E0FE828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_24E345B68();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - v5;
  v6 = sub_24E347638();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FriendRequestsDetailView(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03C8, &qword_24E36DF58);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = &v36 - v13;
  v15 = a1[4];
  v14 = a1[5];
  v16 = a1[6];
  v17 = type metadata accessor for GameCenterSettingsState(0);
  v18 = sub_24E0FA0D4(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);

  v43 = v17;
  v41 = v18;
  v19 = sub_24E345298();
  v21 = v20;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v22 = v11 + v9[5];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v11 + v9[6];
  *v23 = v19;
  v23[8] = v21 & 1;
  *(v11 + v9[7]) = v15;
  *(v11 + v9[8]) = v14;
  *(v11 + v9[9]) = v16;
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v52 = sub_24E3477C8();
  v53 = MEMORY[0x277D221C0];
  v24 = v39;
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v40 + 8))(v24, v42);
  (*(v37 + 8))(v8, v38);

  LOBYTE(v53) = *(a1 + 24);
  v52 = a1[2];
  v25 = v53;

  if ((v25 & 1) == 0)
  {
    sub_24E348268();
    v26 = sub_24E346198();
    sub_24E343EA8();

    v27 = v47;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24E101ED8(&v52, &qword_27F1E4208);
    (*(v48 + 8))(v27, v49);
  }

  sub_24E0FA0D4(&qword_27F1E03E0, type metadata accessor for FriendRequestsDetailView, &protocol conformance descriptor for FriendRequestsDetailView);
  v28 = v44;
  sub_24E3465A8();

  sub_24E0FFB2C(v11, type metadata accessor for FriendRequestsDetailView);
  v55 = *(a1 + 8);
  v29 = *a1;
  v54 = *a1;
  if (v55 == 1)
  {
    v51[0] = v29;
  }

  else
  {
    sub_24DF95B98(&v54, v51, &qword_27F1E41A8, &qword_24E3786E0);
    sub_24E348268();
    v30 = sub_24E346198();
    sub_24E343EA8();

    v31 = v47;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24E101ED8(&v54, &qword_27F1E41A8);
    (*(v48 + 8))(v31, v49);
    LOBYTE(v29) = v51[0];
  }

  KeyPath = swift_getKeyPath();
  v33 = v50;
  (*(v45 + 32))(v50, v28, v46);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03D0, &unk_24E36DF60);
  v35 = v33 + *(result + 36);
  *v35 = KeyPath;
  *(v35 + 8) = v29;
  return result;
}

uint64_t sub_24E0FEEDC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345BF8();
  sub_24E343AA8();
  sub_24E343718();
  sub_24DF90C4C();
  v4 = sub_24E3464E8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24DFD8654();
  v8 &= 1u;
  sub_24DF82DD4(v4, v6, v8);

  sub_24DFA92EC(v4, v6, v8);

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v11;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_24E0FEFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlayerProfilePage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v1[2];
  v7 = v1[3];

  __dst[0] = v8;
  __dst[1] = v7;
  __dst[2] = sub_24E345708();
  LOBYTE(__dst[3]) = sub_24E3461E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F68, &qword_24E3781D8);
  sub_24E10048C();
  sub_24E10056C();
  sub_24E3467B8();

  v9 = sub_24E346E28();
  v11 = v10;
  sub_24E0FF240(v2, v19);
  memcpy(v20, v19, 0x48uLL);
  v20[9] = v9;
  v20[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F88, &unk_24E3781E0);
  memcpy((a1 + *(v12 + 36)), v20, 0x58uLL);
  memcpy(__dst, v19, 0x48uLL);
  __dst[9] = v9;
  __dst[10] = v11;
  sub_24DF95B98(v20, &v18, &qword_27F1E3F90, &qword_24E378BE0);
  sub_24E101ED8(__dst, &qword_27F1E3F90);
  sub_24E0FFAD0(v2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayerProfilePage);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24E1009DC(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PlayerProfilePage);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3F98, &qword_24E3781F0);
  v16 = (a1 + *(result + 36));
  *v16 = sub_24E1005C0;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

void sub_24E0FF240(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8) == 1)
  {
    v9 = *a1;
    v23 = *a1;
  }

  else
  {

    sub_24E348268();
    v10 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v8, 0);
    (*(v5 + 8))(v7, v4);
    v9 = v23;
  }

  if (v9 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for PlayerCardTheme(0);
    v12 = __swift_project_value_buffer(v11, qword_27F20BF00);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    v18 = *(v12 + 48);
    v19 = *(v12 + 56);
    v20 = sub_24E345708();
    v21 = sub_24E3461E8();
    sub_24DFD7E3C(v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 255;
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
}

uint64_t sub_24E0FF470(uint64_t a1)
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PlayerProfilePage(0);
  return sub_24E32E900(1, 13, 1, 6, 0, a1 + *(v2 + 24));
}

uint64_t sub_24E0FF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayerProfileViewController();
  v7 = 0;
  memset(v6, 0, sizeof(v6));

  return PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)(a2, a3, v6, 0);
}

uint64_t sub_24E0FF570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1016C8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E0FF5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1016C8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E0FF638(uint64_t a1)
{
  sub_24E1016C8();
  sub_24E3460C8();
  __break(1u);
}

uint64_t sub_24E0FF660@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E348178();
  v3 = [objc_opt_self() localizedStringFromNumber:v2 numberStyle:1];
  sub_24E347CF8();

  sub_24DF90C4C();
  v4 = sub_24E3464E8();
  v6 = v5;
  v8 = v7;
  sub_24E3469B8();
  v9 = sub_24E346468();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_24DFA92EC(v4, v6, v8 & 1);

  LOBYTE(v4) = sub_24E3461D8();
  sub_24E3451B8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_24E346978();
  result = sub_24E3461E8();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v4;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  *(a1 + 72) = 0;
  *(a1 + 80) = v24;
  *(a1 + 88) = result;
  *(a1 + 89) = 256;
  return result;
}

unint64_t sub_24E0FF84C()
{
  result = qword_27F1E3E70;
  if (!qword_27F1E3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E58, &unk_24E377E80);
    sub_24E0FF908();
    sub_24E0FA0D4(&qword_27F1E3E80, type metadata accessor for AllFriendsListView, &unk_24E378034);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3E70);
  }

  return result;
}

unint64_t sub_24E0FF908()
{
  result = qword_27F1E3E78;
  if (!qword_27F1E3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3E78);
  }

  return result;
}

unint64_t sub_24E0FF95C()
{
  result = qword_27F1E3E88;
  if (!qword_27F1E3E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E40, &qword_24E378EF0);
    sub_24E0FFA14();
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488, &qword_24E379970, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3E88);
  }

  return result;
}

unint64_t sub_24E0FFA14()
{
  result = qword_27F1E3E90;
  if (!qword_27F1E3E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3E98, &unk_24E377E90);
    sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60, &qword_24E379950, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3E90);
  }

  return result;
}

uint64_t sub_24E0FFAD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0FFB2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_24E0FFBE4(uint64_t a1)
{
  sub_24E0FFD54(319, &qword_27F1E3EB8, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    sub_24E03A9D8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E0FFD54(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AllFriendsDataSource(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FriendRequestsDataSource(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FriendSuggestionsDataSource(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FriendSuggestionInvitationStateManager(319);
              if (v7 <= 0x3F)
              {
                sub_24E347638();
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

void sub_24E0FFD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E0FFDD0(uint64_t a1)
{
  result = sub_24E347638();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AllFriendsDataSource(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FriendSuggestionInvitationStateManager(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24E0FFE6C()
{
  result = qword_27F1E3ED8;
  if (!qword_27F1E3ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3EE0, &qword_24E377F88);
    sub_24E0F9E4C();
    sub_24E0FA0D4(&qword_27F1E3DC0, type metadata accessor for AllFriendsBaseView, &unk_24E378124);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3ED8);
  }

  return result;
}

unint64_t sub_24E0FFF28()
{
  result = qword_27F1E3EE8;
  if (!qword_27F1E3EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3EF0, &unk_24E377F90);
    sub_24E0FF84C();
    sub_24E0FF95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3EE8);
  }

  return result;
}

void sub_24E0FFFDC(uint64_t a1)
{
  sub_24E03A9D8(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24E347638();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AllFriendsDataSource(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FriendSuggestionInvitationStateManager(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E1000EC(uint64_t a1)
{
  sub_24E03A9D8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E347638();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E347638();
  OUTLINED_FUNCTION_4_10();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_16(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void __swift_store_extra_inhabitant_index_32Tm()
{
  OUTLINED_FUNCTION_10_30();
  sub_24E347638();
  OUTLINED_FUNCTION_4_10();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_17_23(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

void sub_24E1002F8(uint64_t a1)
{
  sub_24E03A9D8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E347638();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AllFriendsDataSource(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FriendRequestsDataSource(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FriendSuggestionsDataSource(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FriendSuggestionInvitationStateManager(319);
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

double sub_24E100480(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24E10048C()
{
  result = qword_27F1E3F70;
  if (!qword_27F1E3F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F68, &qword_24E3781D8);
    sub_24E100518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3F70);
  }

  return result;
}

unint64_t sub_24E100518()
{
  result = qword_27F1E3F78;
  if (!qword_27F1E3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3F78);
  }

  return result;
}

unint64_t sub_24E10056C()
{
  result = qword_27F1E3F80;
  if (!qword_27F1E3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3F80);
  }

  return result;
}

unint64_t sub_24E1005EC()
{
  result = qword_27F1E3FB8;
  if (!qword_27F1E3FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3FB0, &qword_24E378208);
    sub_24E100678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3FB8);
  }

  return result;
}

unint64_t sub_24E100678()
{
  result = qword_27F1E3FC0;
  if (!qword_27F1E3FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3FC8, &qword_24E378210);
    sub_24E100704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3FC0);
  }

  return result;
}

unint64_t sub_24E100704()
{
  result = qword_27F1E3FD0;
  if (!qword_27F1E3FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3FD8, &qword_24E378218);
    sub_24E1027E4(&qword_27F1E3FE0, &unk_27F1E3FE8, &unk_24E378220, MEMORY[0x277CE1198]);
    sub_24E1027E4(&qword_27F1E3FF0, &qword_27F1E3FF8, &unk_24E3792B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3FD0);
  }

  return result;
}

uint64_t sub_24E1007E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E345A28();
  *a1 = result;
  return result;
}

unint64_t sub_24E100844()
{
  result = qword_27F1E4020;
  if (!qword_27F1E4020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4018, &qword_24E378278);
    sub_24E1008C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4020);
  }

  return result;
}

unint64_t sub_24E1008C8()
{
  result = qword_27F1E4028;
  if (!qword_27F1E4028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4030, qword_24E378280);
    sub_24E0FA0D4(&qword_27F1E4038, type metadata accessor for FriendRowView, &unk_24E378580);
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488, &qword_24E379970, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4028);
  }

  return result;
}

uint64_t sub_24E1009DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E100A38()
{
  v0 = type metadata accessor for AllFriendsListView(0);
  OUTLINED_FUNCTION_4_5(v0);
  v1 = OUTLINED_FUNCTION_19_18();

  return sub_24E0FBB80(v1, v2, v3);
}

uint64_t sub_24E100AA4()
{
  v0 = type metadata accessor for AllFriendsDetailView(0);
  OUTLINED_FUNCTION_4_5(v0);
  v1 = OUTLINED_FUNCTION_19_18();

  return sub_24E0F9650(v1, v2, v3);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for AllFriendsDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345478();
    OUTLINED_FUNCTION_5_2();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  sub_24DE73F34(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  v7 = *(v1 + 44);
  sub_24E347638();
  OUTLINED_FUNCTION_5_2();
  (*(v8 + 8))(v5 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E100CDC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_4_5(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

uint64_t sub_24E100D54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E100D94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_24E100DF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E100E30(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_24E100EB8(uint64_t a1)
{
  sub_24E03A9D8(319, &qword_27F1E3EC0, &type metadata for PresentationContext, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E0FFD54(319, &qword_27F1E1170, type metadata accessor for GameCenterSettingsState);
    if (v2 <= 0x3F)
    {
      sub_24E02FD08(319);
      if (v4 <= 0x3F)
      {
        sub_24DFEB518(319, v3);
        if (v5 <= 0x3F)
        {
          sub_24E01CAA4();
          if (v6 <= 0x3F)
          {
            sub_24E347638();
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

unint64_t sub_24E100FE4()
{
  result = qword_27F1E4078;
  if (!qword_27F1E4078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F50, &qword_24E378190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F30, &qword_24E378180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F28, &qword_24E378178);
    sub_24E1027E4(&qword_27F1E3F48, &qword_27F1E3F28, &qword_24E378178, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4078);
  }

  return result;
}

unint64_t sub_24E101124()
{
  result = qword_27F1E4080;
  if (!qword_27F1E4080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F98, &qword_24E3781F0);
    sub_24E1011B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4080);
  }

  return result;
}

unint64_t sub_24E1011B0()
{
  result = qword_27F1E4088;
  if (!qword_27F1E4088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F88, &unk_24E3781E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3F68, &qword_24E3781D8);
    sub_24E10048C();
    sub_24E10056C();
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4090, &qword_27F1E3F90, &qword_24E378BE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4088);
  }

  return result;
}

unint64_t sub_24E1012C0()
{
  result = qword_27F1E4098;
  if (!qword_27F1E4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4008, &qword_24E378268);
    sub_24E101378();
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488, &qword_24E379970, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4098);
  }

  return result;
}

unint64_t sub_24E101378()
{
  result = qword_27F1E40A0;
  if (!qword_27F1E40A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3FA8, &qword_24E378200);
    sub_24E101404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40A0);
  }

  return result;
}

unint64_t sub_24E101404()
{
  result = qword_27F1E40A8;
  if (!qword_27F1E40A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3FA0, &qword_24E3781F8);
    sub_24E101490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40A8);
  }

  return result;
}

unint64_t sub_24E101490()
{
  result = qword_27F1E40B0;
  if (!qword_27F1E40B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4000, &qword_24E378260);
    sub_24E101548();
    sub_24E1027E4(&qword_27F1E3FF0, &qword_27F1E3FF8, &unk_24E3792B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40B0);
  }

  return result;
}

unint64_t sub_24E101548()
{
  result = qword_27F1E40B8;
  if (!qword_27F1E40B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E40C0, &qword_24E378458);
    sub_24E1005EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40B8);
  }

  return result;
}

unint64_t sub_24E1015D8()
{
  result = qword_27F1E40D8;
  if (!qword_27F1E40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4010, &qword_24E378270);
    sub_24E100844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40D8);
  }

  return result;
}

unint64_t sub_24E1016C8()
{
  result = qword_27F1E40E0;
  if (!qword_27F1E40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E40E0);
  }

  return result;
}

unint64_t sub_24E101754()
{
  result = qword_27F1E4128;
  if (!qword_27F1E4128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4120, &qword_24E378658);
    sub_24E1027E4(&qword_27F1E4130, &qword_27F1E4138, &unk_24E378660, &unk_24E38B878);
    sub_24E1027E4(&qword_27F1E4140, &qword_27F1E4148, &qword_24E379670, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4128);
  }

  return result;
}

unint64_t sub_24E101838()
{
  result = qword_27F1E4150;
  if (!qword_27F1E4150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4118, &qword_24E378650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4108, &qword_24E378640);
    sub_24E345778();
    sub_24E10197C();
    sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E4170, &qword_27F1E40F8, &qword_24E378630, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4150);
  }

  return result;
}

unint64_t sub_24E10197C()
{
  result = qword_27F1E4158;
  if (!qword_27F1E4158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4108, &qword_24E378640);
    sub_24E1027E4(&qword_27F1E4160, &unk_27F1E4168, &unk_24E378670, MEMORY[0x277CDF028]);
    sub_24E1027E4(&qword_27F1E4140, &qword_27F1E4148, &qword_24E379670, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4158);
  }

  return result;
}

uint64_t objectdestroy_110Tm()
{
  type metadata accessor for FriendRowView(0);
  OUTLINED_FUNCTION_16_12();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_24DE73F34(*v3, *(v3 + 8));

  j__swift_release();

  v4 = *(v0 + 44);
  sub_24E347638();
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 8))(v3 + v4);
  v6 = OUTLINED_FUNCTION_9_32();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_24E101BD8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for FriendRowView(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_24E101C58(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E101CD0()
{
  result = qword_27F1E41B8;
  if (!qword_27F1E41B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4198, &qword_24E3786D0);
    sub_24E101D88();
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488, &qword_24E379970, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E41B8);
  }

  return result;
}

unint64_t sub_24E101D88()
{
  result = qword_27F1E41C0;
  if (!qword_27F1E41C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E41C8, &qword_24E3786E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E41D0, &qword_24E3786F0);
    sub_24E345778();
    sub_24E1027E4(&qword_27F1E41D8, &qword_27F1E41D0, &qword_24E3786F0, MEMORY[0x277CDD938]);
    sub_24E0FA0D4(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E41C0);
  }

  return result;
}

uint64_t sub_24E101ED8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_20(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_24E101F3C()
{
  result = qword_27F1E41F0;
  if (!qword_27F1E41F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E41E8, &qword_24E378708);
    sub_24E1027E4(&qword_27F1E41F8, &unk_27F1E4200, &unk_24E378710, MEMORY[0x277CE1138]);
    sub_24E1027E4(&qword_27F1E4140, &qword_27F1E4148, &qword_24E379670, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E41F0);
  }

  return result;
}

unint64_t sub_24E10202C()
{
  result = qword_27F1E4220;
  if (!qword_27F1E4220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4218, &qword_24E378758);
    sub_24E1020E4();
    sub_24E1027E4(&qword_27F1E0160, &qword_27F1E0168, &unk_24E37BF60, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4220);
  }

  return result;
}

unint64_t sub_24E1020E4()
{
  result = qword_27F1E4228;
  if (!qword_27F1E4228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4230, &qword_24E378760);
    sub_24E1027E4(&qword_27F1E4238, &unk_27F1E4240, &unk_24E378768, MEMORY[0x277CDF028]);
    sub_24E1027E4(&qword_27F1E4248, &unk_27F1E4250, &unk_24E378770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4228);
  }

  return result;
}

unint64_t sub_24E1021D4()
{
  result = qword_27F1E4268;
  if (!qword_27F1E4268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4260, &qword_24E378788);
    sub_24E1027E4(&qword_27F1E4270, &unk_27F1E4278, &unk_24E378790, MEMORY[0x277CE1138]);
    sub_24E1027E4(&qword_27F1E4140, &qword_27F1E4148, &qword_24E379670, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4268);
  }

  return result;
}

uint64_t objectdestroy_131Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24E102314()
{
  result = qword_27F1E4280;
  if (!qword_27F1E4280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4288, &qword_24E378808);
    sub_24E101838();
    sub_24E1027E4(&qword_27F1E4178, &qword_27F1E40E8, &qword_24E378620, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4280);
  }

  return result;
}

unint64_t sub_24E1023CC()
{
  result = qword_27F1E4290;
  if (!qword_27F1E4290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4298, &qword_24E378810);
    sub_24E101C58(&qword_27F1E41B0, &qword_27F1E41A0, &qword_24E3786D8, sub_24E101CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4290);
  }

  return result;
}

unint64_t sub_24E102484()
{
  result = qword_27F1E42A0;
  if (!qword_27F1E42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4258, &qword_24E378780);
    sub_24E10253C();
    sub_24E1027E4(&qword_27F1DF4A8, &qword_27F1DF488, &qword_24E379970, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E42A0);
  }

  return result;
}

unint64_t sub_24E10253C()
{
  result = qword_27F1E42A8;
  if (!qword_27F1E42A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E42B0, qword_24E378818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4218, &qword_24E378758);
    type metadata accessor for InviteFriendsView(255);
    sub_24E10202C();
    sub_24E0FA0D4(&qword_27F1DF608, type metadata accessor for InviteFriendsView, &unk_24E379E40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E42A8);
  }

  return result;
}

unint64_t sub_24E102674()
{
  result = qword_27F1E42B8;
  if (!qword_27F1E42B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E42C0, &qword_24E378870);
    sub_24E10272C();
    sub_24E1027E4(&qword_27F1E42D8, &qword_27F1E42E0, &unk_24E378880, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E42B8);
  }

  return result;
}

unint64_t sub_24E10272C()
{
  result = qword_27F1E42C8;
  if (!qword_27F1E42C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E42D0, &qword_24E378878);
    sub_24DFB4858();
    sub_24E1027E4(&unk_27F1DF810, &qword_27F1DF4A0, &unk_24E36B290, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E42C8);
  }

  return result;
}

uint64_t sub_24E1027E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_37()
{

  return sub_24E0FFB2C(v0, type metadata accessor for AllFriendsBaseView);
}

uint64_t OUTLINED_FUNCTION_11_26(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277CDDA18];

  return sub_24E1027E4(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_20_19(unint64_t *a1)
{

  return sub_24E1027E4(a1, v2, v3, v1);
}

uint64_t sub_24E10294C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24DF95B98(v2, &v14 - v9, &qword_27F1DF620, &qword_24E36B560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24E345478();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E102B4C()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for FriendRequestsDetailView(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v13;
  }

  return v9;
}

uint64_t FriendRequestsDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v104 = type metadata accessor for FriendRequestsBaseView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E42E8, &qword_24E378890);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v105 = v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E42F0, &qword_24E378898);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v100 = v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E42F8, &qword_24E3788A0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_3();
  v93 = v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4300, &qword_24E3788A8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  v95 = v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4308, &unk_24E3788B0);
  OUTLINED_FUNCTION_0_14();
  v91 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v90 = v17;
  v18 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v24 = v23 - v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058, &qword_24E370220);
  OUTLINED_FUNCTION_0_14();
  v106 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v86 - v30;
  sub_24E102B4C();
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E103BB8(&qword_27F1E03D8);
  v102 = v31;
  sub_24E346D68();
  v32 = type metadata accessor for FriendRequestsDetailView(0);
  v33 = *(v32 + 20);
  v96 = v2;
  v34 = v2 + v33;
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    v131 = *v34;
  }

  else
  {

    sub_24E348268();
    v36 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v35, 0);
    (*(v20 + 8))(v24, v18);
    LOBYTE(v35) = v131;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v37 = *(v32 + 40);
      v38 = v104;
      v39 = *(v104 + 20);
      sub_24E347638();
      OUTLINED_FUNCTION_5_2();
      (*(v40 + 16))(v6 + v39, v96 + v37);
      OUTLINED_FUNCTION_23_21();
      *v6 = swift_getKeyPath();
      *(v6 + 8) = 0;
      *(v6 + v38[6]) = v37;
      *(v6 + v38[7]) = v24;
      *(v6 + v38[8]) = v32;
      LOBYTE(v117[0]) = 0;

      sub_24E346B78();
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_3_65();
      v96 = sub_24E103BB8(v41);
      sub_24E3467D8();
      OUTLINED_FUNCTION_10_31();
      v42 = sub_24E346E28();
      v90 = v43;
      v91 = v42;
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for PlayerCardTheme(0);
      v45 = __swift_project_value_buffer(v44, qword_27F20BF00);
      v46 = *(v45 + 8);
      v47 = *(v45 + 16);
      v48 = *(v45 + 24);
      v49 = *(v45 + 32);
      v50 = *(v45 + 40);
      v51 = *(v45 + 48);
      v52 = *(v45 + 56);
      LODWORD(v87) = v52;
      v53 = sub_24E345708();
      v89 = v53;
      LODWORD(v88) = sub_24E3461E8();
      v117[0] = v46;
      v117[1] = v47;
      v117[2] = v48;
      v117[3] = v49;
      v117[4] = v50;
      v117[5] = v51;
      LOBYTE(v117[6]) = v52;
      *(&v117[6] + 1) = *v116;
      HIDWORD(v117[6]) = *&v116[3];
      v117[7] = v53;
      LOBYTE(v117[8]) = v88;
      *(&v117[8] + 1) = v109;
      HIDWORD(v117[8]) = *(&v109 + 3);
      v54 = v90;
      v55 = v91;
      v117[9] = v91;
      v117[10] = v90;
      memcpy(&v105[*(v97 + 36)], v117, 0x58uLL);
      v118 = v46;
      v119 = v47;
      v120 = v48;
      v121 = v49;
      v122 = v50;
      v123 = v51;
      v124 = v87;
      *v125 = *v116;
      *&v125[3] = *&v116[3];
      v126 = v89;
      v127 = v88;
      *v128 = v109;
      *&v128[3] = *(&v109 + 3);
      v129 = v55;
      v130 = v54;
      sub_24DFD7E3C(v46, v47, v48, v49, v50, v51, v87);
      sub_24DF95B98(v117, v111, &qword_27F1E3DD0, &qword_24E377DE0);
      sub_24E10CF40(&v118, &qword_27F1E3DD0);
      v56 = v105;
      sub_24DF95B98(v105, v93, &qword_27F1E42E8, &qword_24E378890);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_29(&unk_27F1E4318);
      sub_24E103AA0();
      v57 = v95;
      sub_24E345E38();
      sub_24DF95B98(v57, v100, &qword_27F1E4300, &qword_24E3788A8);
      swift_storeEnumTagMultiPayload();
      sub_24E1039E8();
      sub_24E345E38();
      sub_24E10CF40(v57, &qword_27F1E4300);
      sub_24E10CF40(v56, &qword_27F1E42E8);
    }

    else
    {
      v80 = *(v32 + 40);
      v81 = v104;
      v82 = *(v104 + 20);
      sub_24E347638();
      OUTLINED_FUNCTION_5_2();
      (*(v83 + 16))(v6 + v82, v96 + v80);
      OUTLINED_FUNCTION_23_21();
      *v6 = swift_getKeyPath();
      *(v6 + 8) = 0;
      *(v6 + v81[6]) = v80;
      *(v6 + v81[7]) = v24;
      *(v6 + v81[8]) = v32;
      LOBYTE(v117[0]) = 0;

      sub_24E346B78();
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_8_39();
      sub_24E10B91C(v6, v100, v84);
      swift_storeEnumTagMultiPayload();
      sub_24E1039E8();
      OUTLINED_FUNCTION_3_65();
      sub_24E103BB8(v85);
      sub_24E345E38();
      OUTLINED_FUNCTION_10_31();
    }

    return (*(v106 + 8))(v102, v103);
  }

  else
  {
    v58 = v103;
    sub_24E346D58();
    swift_getKeyPath();
    sub_24E346D78();

    v105 = *(v106 + 8);
    v106 += 8;
    (v105)(v28, v58);
    v59 = v117[0];
    v60 = v117[1];
    v61 = v117[2];
    LOBYTE(v58) = BYTE2(v117[2]);
    v62 = v117[3];
    v63 = v117[4];
    swift_getKeyPath();
    v111[0] = v59;
    v111[1] = v60;
    v112 = v61;
    v113 = v58;
    v114 = v62;
    v115 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1138, &qword_24E3702F0);
    sub_24E346C78();

    v89 = v86;
    v107 = v109;
    v108 = v110;
    MEMORY[0x28223BE20](v64);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338, &qword_24E36DB80);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4330, &qword_24E378938);
    v86[3] = OUTLINED_FUNCTION_27_11(&qword_27F1E3DF0);
    v86[2] = OUTLINED_FUNCTION_27_11(&qword_27F1E3DF8);
    v86[1] = OUTLINED_FUNCTION_27_11(&qword_27F1E3E00);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4338, &qword_24E378940);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4340, &qword_24E378948);
    v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4348, &qword_24E378950);
    OUTLINED_FUNCTION_3_65();
    v87 = sub_24E103BB8(v68);
    v118 = v104;
    v119 = v87;
    v69 = OUTLINED_FUNCTION_12_23();
    v70 = sub_24E10B210();
    v118 = v67;
    v119 = MEMORY[0x277D837D0];
    v120 = &type metadata for PlayerProfilePage;
    v121 = v69;
    v122 = MEMORY[0x277D837E0];
    v123 = v70;
    v71 = OUTLINED_FUNCTION_12_23();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4358, &qword_24E378958);
    v73 = sub_24E10D6AC(&qword_27F1E4360);
    v118 = v72;
    v119 = v73;
    v74 = OUTLINED_FUNCTION_12_23();
    v118 = v65;
    v119 = v66;
    v120 = v71;
    v121 = v74;
    OUTLINED_FUNCTION_12_23();
    v75 = v90;
    sub_24E3456E8();
    v76 = v91;
    v77 = v94;
    (*(v91 + 16))(v93, v75, v94);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_29(&unk_27F1E4318);
    sub_24E103AA0();
    v78 = v95;
    sub_24E345E38();
    sub_24DF95B98(v78, v100, &qword_27F1E4300, &qword_24E3788A8);
    swift_storeEnumTagMultiPayload();
    sub_24E1039E8();
    sub_24E345E38();
    sub_24E10CF40(v78, &qword_27F1E4300);
    (*(v76 + 8))(v75, v77);
    return (v105)(v102, v103);
  }
}

unint64_t sub_24E1039E8()
{
  result = qword_27F1E4310;
  if (!qword_27F1E4310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4300, &qword_24E3788A8);
    sub_24E10D6AC(&unk_27F1E4318);
    sub_24E103AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4310);
  }

  return result;
}

unint64_t sub_24E103AA0()
{
  result = qword_27F1E4320;
  if (!qword_27F1E4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E42E8, &qword_24E378890);
    type metadata accessor for FriendRequestsBaseView(255);
    sub_24E103BB8(&unk_27F1E4328);
    swift_getOpaqueTypeConformance2();
    sub_24E10D6AC(&qword_27F1E3DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E4320);
  }

  return result;
}

unint64_t sub_24E103BB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24E103BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v40 = sub_24E345BB8();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FriendRequestsBaseView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4348, &qword_24E378950);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4338, &qword_24E378940);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v16;
  v17 = type metadata accessor for FriendRequestsDetailView(0);
  v18 = v17[10];
  v19 = v7[5];
  v20 = sub_24E347638();
  (*(*(v20 - 8) + 16))(&v9[v19], a1 + v18, v20);
  v21 = *(a1 + v17[7]);
  v22 = *(a1 + v17[8]);
  v23 = *(a1 + v17[9]);
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *&v9[v7[6]] = v21;
  *&v9[v7[7]] = v22;
  *&v9[v7[8]] = v23;
  v24 = &v9[v7[9]];
  v53 = 0;

  sub_24E346B78();
  v25 = v48;
  *v24 = v47;
  *(v24 + 1) = v25;
  v26 = v40;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v40);
  v27 = sub_24E103BB8(&unk_27F1E4328);
  sub_24E3467F8();
  (*(v4 + 8))(v6, v26);
  sub_24E10B978(v9, type metadata accessor for FriendRequestsBaseView);
  v47 = v7;
  v48 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_24E10B210();
  v29 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837E0];
  v31 = v39;
  v32 = v41;
  sub_24E346798();
  (*(v42 + 8))(v13, v32);
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4340, &qword_24E378948);
  v47 = v32;
  v48 = v29;
  v49 = &type metadata for PlayerProfilePage;
  v50 = OpaqueTypeConformance2;
  v51 = v30;
  v52 = v37;
  swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4358, &qword_24E378958);
  v34 = sub_24E10D6AC(&qword_27F1E4360);
  v47 = v33;
  v48 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_24E3468B8();
  return (*(v44 + 8))(v31, v35);
}

uint64_t sub_24E104148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t sub_24E1041A0(uint64_t a1)
{
  v2 = sub_24E345EA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4358, &qword_24E378958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24E345E88();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4418, &qword_24E378BE8);
  sub_24E10BB6C();
  sub_24E3452E8();
  v7 = sub_24E10D6AC(&qword_27F1E4360);
  MEMORY[0x25303CA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E104358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for FriendRequestsDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  v24 = v13;
  v25 = v15;
  sub_24E10B91C(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestsDetailView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject() + v16;
  v18 = v23;
  sub_24E10BC94(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17, type metadata accessor for FriendRequestsDetailView);
  sub_24DF90C4C();
  sub_24E346C08();
  sub_24E10D6AC(&qword_27F1DF868);
  sub_24E346818();
  (*(v7 + 8))(v9, v6);
  if (qword_27F1DDDD8 != -1)
  {
    swift_once();
  }

  v19 = qword_27F20B800;
  v20 = sub_24E346948();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4418, &qword_24E378BE8);
  *(v18 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_24E10465C(uint64_t a1)
{
  v2 = sub_24E345478();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FriendRequestsDetailView(0);
  sub_24E32E900(1, 19, 1, 35, 1, a1 + *(v6 + 40));
  sub_24E10294C(v5);
  sub_24E345468();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E104798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v68 = sub_24E345BA8();
  OUTLINED_FUNCTION_0_14();
  v66 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v65 = v6 - v5;
  v7 = type metadata accessor for FriendRequestsBaseView(0);
  v8 = v7 - 8;
  v56 = *(v7 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4398, &qword_24E378B48);
  OUTLINED_FUNCTION_0_14();
  v58 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43A0, &qword_24E378B50);
  OUTLINED_FUNCTION_0_14();
  v61 = v14;
  v62 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v55 = &v55 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43A8, &qword_24E378B58);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43B0, &qword_24E378B60);
  OUTLINED_FUNCTION_0_14();
  v63 = v21;
  v64 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_3();
  v59 = v24;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43B8, &unk_24E378B68);
  sub_24E10D6AC(&unk_27F1E43C0);
  sub_24E346398();
  v25 = v2 + *(v8 + 44);
  v26 = *v25;
  v27 = *(v25 + 8);
  v74 = v26;
  v75 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346BA8();
  OUTLINED_FUNCTION_8_39();
  sub_24E10B91C(v2, &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v29 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v30 = swift_allocObject();
  sub_24E10BC94(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for FriendRequestsBaseView);
  v31 = type metadata accessor for InviteFriendsView(0);
  v53 = sub_24E10D6AC(&unk_27F1E43C8);
  v54 = sub_24E103BB8(&qword_27F1DF608);
  v32 = v57;
  sub_24E346868();

  (*(v58 + 8))(v13, v32);
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v38 = v37;

  v70 = v36;
  v71 = v38;
  sub_24DF90C4C();
  v39 = sub_24E3464E8();
  v41 = v40;
  v43 = v42;
  v70 = v32;
  v71 = v31;
  v72 = v53;
  v73 = v54;
  swift_getOpaqueTypeConformance2();
  v44 = v61;
  v45 = v55;
  sub_24E3466A8();
  sub_24DFA92EC(v39, v41, v43 & 1);

  (*(v62 + 8))(v45, v44);
  v46 = v60;
  v47 = &v20[*(v60 + 36)];
  *v47 = sub_24E1056BC;
  v48 = sub_24E10B734();
  v47[2] = 0;
  v47[3] = 0;
  v47[1] = 0;
  v49 = v59;
  sub_24E3464F8();
  sub_24E10CF40(v20, &qword_27F1E43A8);
  v50 = v65;
  sub_24E345B98();
  v70 = v46;
  v71 = v48;
  OUTLINED_FUNCTION_9_35();
  swift_getOpaqueTypeConformance2();
  v51 = v63;
  sub_24E3465D8();
  (*(v66 + 8))(v50, v68);
  return (*(v64 + 8))(v49, v51);
}

uint64_t sub_24E104E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43D8, &qword_24E378BB0);
  MEMORY[0x28223BE20](v62);
  v57 = &v54 - v3;
  v55 = type metadata accessor for InviteFriendsSection(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43E0, &qword_24E378BB8);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v54 - v11;
  v12 = type metadata accessor for FriendRequestsList(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for ContactsOnlyToggle(0);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v23 = type metadata accessor for FriendRequestsBaseView(0);
  v24 = *(a1 + v23[6]);
  type metadata accessor for FriendRequestsDataSource(0);
  sub_24E103BB8(&qword_27F1E3908);
  swift_retain_n();
  v58 = v22;
  sub_24E346D68();
  v25 = v23[5];
  v26 = *(v13 + 28);
  v27 = sub_24E347638();
  v28 = *(*(v27 - 8) + 16);
  v28(&v17[v26], a1 + v25, v27);
  v59 = v17;
  *v17 = v24;
  type metadata accessor for GameCenterSettings(0);
  if (sub_24DFF20B4())
  {
    v29 = (a1 + v23[9]);
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(__src[0]) = v30;
    __src[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346BA8();
    v32 = v68;
    v33 = v69;
    v34 = v70;
    v35 = v25;
    v36 = v7;
    v37 = v55;
    v28((v36 + *(v55 + 20)), a1 + v35, v27);
    v38 = *(a1 + v23[8]);
    *v36 = v32;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    *(v36 + *(v37 + 24)) = v38;
    v39 = *(a1 + v23[7]);
    v40 = v56;
    sub_24E10B91C(v36, v56, type metadata accessor for InviteFriendsSection);
    v41 = v57;
    sub_24E10B91C(v40, v57, type metadata accessor for InviteFriendsSection);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43F0, &qword_24E378BC8) + 48);
    __src[0] = 0xD000000000000011;
    __src[1] = 0x800000024E3A7880;
    __src[2] = 0xD000000000000012;
    __src[3] = 0x800000024E3A78A0;
    __src[4] = 3;
    LOBYTE(__src[5]) = 2;
    *(&__src[5] + 1) = *v66;
    HIDWORD(__src[5]) = *&v66[3];
    strcpy(&__src[6], "FriendRequest");
    HIWORD(__src[7]) = -4864;
    __src[8] = v39;
    memcpy((v41 + v42), __src, 0x48uLL);

    sub_24E10B9CC(__src, &v68);
    sub_24E10B978(v36, type metadata accessor for InviteFriendsSection);
    v68 = 0xD000000000000011;
    v69 = 0x800000024E3A7880;
    v70 = 0xD000000000000012;
    v71 = 0x800000024E3A78A0;
    v72 = 3;
    v73 = 2;
    *v74 = *v66;
    *&v74[3] = *&v66[3];
    strcpy(v75, "FriendRequest");
    v75[7] = -4864;
    v76 = v39;
    sub_24E10BA28(&v68);
    sub_24E10B978(v40, type metadata accessor for InviteFriendsSection);
    v43 = v61;
    sub_24E04B898(v41, v61, &qword_27F1E43D8, &qword_24E378BB0);
    v44 = v43;
    v45 = 0;
  }

  else
  {
    v43 = v61;
    v44 = v61;
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v62);
  v46 = v58;
  v47 = v60;
  sub_24E10B91C(v58, v60, type metadata accessor for ContactsOnlyToggle);
  v48 = v59;
  v49 = v63;
  sub_24E10B91C(v59, v63, type metadata accessor for FriendRequestsList);
  v50 = v64;
  sub_24DF95B98(v43, v64, &qword_27F1E43E0, &qword_24E378BB8);
  v51 = v65;
  sub_24E10B91C(v47, v65, type metadata accessor for ContactsOnlyToggle);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E43E8, &qword_24E378BC0);
  sub_24E10B91C(v49, v51 + *(v52 + 48), type metadata accessor for FriendRequestsList);
  sub_24DF95B98(v50, v51 + *(v52 + 64), &qword_27F1E43E0, &qword_24E378BB8);
  sub_24E10CF40(v43, &qword_27F1E43E0);
  sub_24E10B978(v48, type metadata accessor for FriendRequestsList);
  sub_24E10B978(v46, type metadata accessor for ContactsOnlyToggle);
  sub_24E10CF40(v50, &qword_27F1E43E0);
  sub_24E10B978(v49, type metadata accessor for FriendRequestsList);
  return sub_24E10B978(v47, type metadata accessor for ContactsOnlyToggle);
}

double sub_24E10559C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FriendRequestsBaseView(0) + 32));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for InviteFriendsView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v4[8];

  sub_24E346B78();
  *v6 = v10;
  *(v6 + 2) = v11;
  v7 = (a2 + v4[9]);
  sub_24E346B78();
  result = *&v10;
  *v7 = v10;
  *(a2 + v4[6]) = v3;
  v9 = (a2 + v4[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_24E1056BC()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E347628();
  sub_24E32E770(1, 19, 3u, 0, v3, 0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1057D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E40, &qword_24E378EF0);
  MEMORY[0x28223BE20](v36);
  v4 = v30 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44C0, &qword_24E378EF8);
  MEMORY[0x28223BE20](v34);
  v35 = v30 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44C8, &qword_24E378F00);
  MEMORY[0x28223BE20](v32);
  v7 = v30 - v6;
  v8 = type metadata accessor for FriendRequestsList(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44D0, &qword_24E378F08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44D8, &unk_24E378F10);
  MEMORY[0x28223BE20](v33);
  v15 = v30 - v14;
  sub_24E0DE4A0();
  if (v16)
  {
    v17 = v16;
    if (sub_24DFD8654() < 1)
    {

      swift_storeEnumTagMultiPayload();
      sub_24E10C324();
      sub_24E10C734();
      sub_24E345E38();
    }

    else
    {

      v19 = sub_24E116E7C(v18);

      v38 = v19;
      v30[1] = swift_getKeyPath();
      sub_24E10B91C(v2, v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestsList);
      v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v21 = swift_allocObject();
      sub_24E10BC94(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for FriendRequestsList);
      *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_24E10C8C4;
      *(v22 + 24) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4570, &qword_24E378F88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44F8, &qword_24E378F20);
      sub_24E10D6AC(&qword_27F1E4578);
      sub_24E10C3A8();
      sub_24E346CC8();
      (*(v11 + 16))(v7, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_24E10C324();
      sub_24E10C734();
      sub_24E345E38();
      (*(v11 + 8))(v13, v10);
    }

    v27 = &qword_27F1E44D8;
    sub_24DF95B98(v15, v35, &qword_27F1E44D8, &unk_24E378F10);
    swift_storeEnumTagMultiPayload();
    sub_24E10C298();
    sub_24E10C788(&qword_27F1E3E88);
    sub_24E345E38();
    v28 = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E60, &qword_24E379950);
    sub_24E10D6AC(&qword_27F1E3E68);
    sub_24E346D28();
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for PlayerCardTheme(0);
    v24 = *(__swift_project_value_buffer(v23, qword_27F20BF00) + 64);
    v38 = sub_24E346948();
    v25 = sub_24E346C48();
    v26 = v35;
    *&v4[*(v36 + 36)] = v25;
    v27 = &qword_27F1E3E40;
    sub_24DF95B98(v4, v26, &qword_27F1E3E40, &qword_24E378EF0);
    swift_storeEnumTagMultiPayload();
    sub_24E10C298();
    sub_24E10C788(&qword_27F1E3E88);
    sub_24E345E38();
    v28 = v4;
  }

  return sub_24E10CF40(v28, v27);
}

uint64_t sub_24E105EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24E345C38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4508, &qword_24E378F28);
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-v15];
  v33 = a3;
  v34 = a2;
  if (a4 >> 62)
  {
    v17 = sub_24E348878();
  }

  else
  {
    v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  if (v17 - 1 == a1)
  {
    sub_24E343AA8();
    v35 = sub_24E343928();
    v36 = v18;
    sub_24DF90C4C();
    v19 = sub_24E3464E8();
    v23 = v22 & 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v23 = 0;
    v21 = 0;
  }

  v35 = v19;
  v36 = v20;
  v37 = v23;
  v38 = v21;
  type metadata accessor for FriendRequestCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4540, &qword_24E378F40);
  sub_24E103BB8(&unk_27F1E4530);
  sub_24E10C6B8();
  sub_24E346D38();
  sub_24E345C28();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4518, &qword_24E378F30) + 36);
  (*(v11 + 16))(&v16[v24], v13, v10);
  __swift_storeEnumTagSinglePayload(&v16[v24], 0, 1, v10);
  KeyPath = swift_getKeyPath();
  v26 = &v16[*(v14 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4560, &qword_24E378F50) + 28);
  (*(v11 + 32))(v26 + v27, v13, v10);
  __swift_storeEnumTagSinglePayload(v26 + v27, 0, 1, v10);
  *v26 = KeyPath;
  if (qword_27F1DE118 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v28 = type metadata accessor for PlayerCardTheme(0);
  v29 = *(__swift_project_value_buffer(v28, qword_27F20BF00) + 64);
  v35 = sub_24E346948();
  v30 = sub_24E346C48();
  sub_24E04B898(v16, a5, &qword_27F1E4508, &qword_24E378F28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E44F8, &qword_24E378F20);
  *(a5 + *(result + 36)) = v30;
  return result;
}

void *sub_24E106264@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(type metadata accessor for FriendRequestsList(0) + 20);
  v8 = type metadata accessor for FriendRequestCell(0);
  v9 = v8[9];
  v10 = sub_24E347638();
  (*(*(v10 - 8) + 16))(a3 + v9, &a1[v7], v10);
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E103BB8(&qword_27F1E03D8);

  v11 = sub_24E345298();
  LOBYTE(v7) = v12;
  type metadata accessor for GameCenterContainerViewModel(0);
  sub_24E103BB8(&qword_27F1E1270);
  v13 = sub_24E345288();
  v15 = v14;
  type metadata accessor for GameCenterSettings(0);
  sub_24E103BB8(&qword_27F1E01A0);
  v16 = sub_24E345848();
  v18 = v17;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v7 & 1;
  *(a3 + 32) = v13;
  *(a3 + 40) = v15 & 1;
  *(a3 + 48) = v6;
  *(a3 + 56) = a2;
  v19 = a3 + v8[10];
  v20 = a2;
  result = sub_24E346B78();
  *v19 = v23;
  *(v19 + 8) = v24;
  v22 = (a3 + v8[11]);
  *v22 = v16;
  v22[1] = v18;
  return result;
}

uint64_t sub_24E106490@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24E345BF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4048, &qword_24E37E990);
  return sub_24E1064E0(a2 + *(v3 + 44));
}

uint64_t sub_24E1064E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4050, &qword_24E3782C0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_24E345348();
  v9 = sub_24E3461E8();
  sub_24E3451B8();
  v10 = &v8[*(v3 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_24DF95B98(v8, v5, &qword_27F1E4050, &qword_24E3782C0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4058, &unk_24E3782C8);
  sub_24DF95B98(v5, a1 + *(v15 + 48), &qword_27F1E4050, &qword_24E3782C0);
  v16 = a1 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_24E10CF40(v8, &qword_27F1E4050);
  return sub_24E10CF40(v5, &qword_27F1E4050);
}

void *sub_24E10664C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345CF8();
  LOBYTE(__src[0]) = 1;
  sub_24E106780(v10);
  *&v7[7] = v10[0];
  *&v7[23] = v10[1];
  *&v7[39] = v10[2];
  *&v7[55] = v10[3];
  KeyPath = swift_getKeyPath();
  sub_24E346E28();
  sub_24E3457F8();
  memcpy(&v8[7], __src, 0x70uLL);
  sub_24E3469A8();
  v5 = sub_24E346C48();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  memcpy((a2 + 17), v7, 0x47uLL);
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = 1;
  result = memcpy((a2 + 97), v8, 0x77uLL);
  *(a2 + 216) = v5;
  return result;
}

uint64_t sub_24E106780@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E343878();
  sub_24DF90C4C();
  v2 = sub_24E3464E8();
  v4 = v3;
  v6 = v5;
  sub_24E346388();
  v7 = sub_24E3464B8();
  v9 = v8;
  v11 = v10;

  sub_24DFA92EC(v2, v4, v6 & 1);

  v12 = sub_24E346498();
  v28 = v13;
  v29 = v12;
  v27 = v14;
  v30 = v15;
  sub_24DFA92EC(v7, v9, v11 & 1);

  sub_24E343918();
  v16 = sub_24E3464E8();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_24E346378();
  v20 = sub_24E3464B8();
  v22 = v21;
  LOBYTE(v4) = v23;
  v25 = v24;

  sub_24DFA92EC(v16, v18, v9 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v25;
  sub_24DF82DD4(v29, v28, v27 & 1);

  sub_24DF82DD4(v20, v22, v4 & 1);

  sub_24DFA92EC(v20, v22, v4 & 1);

  sub_24DFA92EC(v29, v28, v27 & 1);
}

uint64_t sub_24E1069A0()
{
  v1 = sub_24E345B68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_24E348268();
    v7 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_24E106AE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4600, &qword_24E379110);
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4];
  *v5 = sub_24E345CF8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4608, &qword_24E379118);
  sub_24E106D60(v1, &v5[*(v6 + 44)]);
  sub_24E343AA8();
  v24 = sub_24E343768();
  v25 = v7;
  v8 = v1 + *(type metadata accessor for FriendRequestCell(0) + 40);
  v9 = *v8;
  v10 = *(v8 + 8);
  v22[32] = v9;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346BA8();
  sub_24E10D6AC(&unk_27F1E4610);
  sub_24DF90C4C();
  sub_24E346838();

  sub_24E10CF40(v5, &qword_27F1E4600);
  v11 = sub_24E346208();
  sub_24E3451B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4618, &qword_24E379120);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24E106D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for FriendRequestCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4620, &qword_24E379128);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4628, &qword_24E379130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v32 - v16);
  *v17 = sub_24E346E38();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4630, &qword_24E379138);
  sub_24E107148(a1, v17 + *(v19 + 44));
  v20 = sub_24E345D08();
  v21 = sub_24E345BF8();
  sub_24E10B91C(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestCell);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_24E10BC94(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for FriendRequestCell);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4638, &qword_24E379140) + 52);
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v11 = sub_24E10CE94;
  *(v11 + 1) = v23;
  *(v11 + 2) = v20;
  *(v11 + 3) = 0;
  v11[32] = 1;
  *(v11 + 5) = v21;
  *(v11 + 6) = 0;
  v11[56] = 1;
  type metadata accessor for GameCenterSettings(0);
  LOBYTE(v24) = sub_24DFF20B4();
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = (v24 & 1) == 0;
  v27 = &v11[*(v7 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_24E04BCC0;
  v27[2] = v26;
  sub_24DF95B98(v17, v14, &qword_27F1E4628, &qword_24E379130);
  v28 = v32;
  sub_24DF95B98(v11, v32, &qword_27F1E4620, &qword_24E379128);
  v29 = v33;
  sub_24DF95B98(v14, v33, &qword_27F1E4628, &qword_24E379130);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4640, &qword_24E379180);
  sub_24DF95B98(v28, v29 + *(v30 + 48), &qword_27F1E4620, &qword_24E379128);
  sub_24E10CF40(v11, &qword_27F1E4620);
  sub_24E10CF40(v17, &qword_27F1E4628);
  sub_24E10CF40(v28, &qword_27F1E4620);
  return sub_24E10CF40(v14, &qword_27F1E4628);
}

uint64_t sub_24E107148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for FriendRequestCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46E0, &qword_24E379208);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46E8, &qword_24E379210);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_24E107494();
  v19 = sub_24E345D08();
  v26 = sub_24E345BF8();
  sub_24E10B91C(a1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestCell);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_24E10BC94(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for FriendRequestCell);
  v22 = *(v7 + 60);
  *&v12[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v12 = sub_24E10D230;
  *(v12 + 1) = v21;
  *(v12 + 2) = v19;
  *(v12 + 3) = 0;
  v12[32] = 1;
  *(v12 + 5) = v26;
  *(v12 + 6) = 0;
  v12[56] = 1;
  sub_24DF95B98(v18, v15, &qword_27F1E46E8, &qword_24E379210);
  sub_24DF95B98(v12, v9, &qword_27F1E46E0, &qword_24E379208);
  v23 = v27;
  sub_24DF95B98(v15, v27, &qword_27F1E46E8, &qword_24E379210);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46F0, &qword_24E379218);
  sub_24DF95B98(v9, v23 + *(v24 + 48), &qword_27F1E46E0, &qword_24E379208);
  sub_24E10CF40(v12, &qword_27F1E46E0);
  sub_24E10CF40(v18, &qword_27F1E46E8);
  sub_24E10CF40(v9, &qword_27F1E46E0);
  return sub_24E10CF40(v15, &qword_27F1E46E8);
}

uint64_t sub_24E107494()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46F8, &qword_24E379220);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4700, &qword_24E379228);
  MEMORY[0x28223BE20](v59);
  v6 = &v43 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4708, &qword_24E379230);
  MEMORY[0x28223BE20](v56);
  v49 = &v43 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4710, &qword_24E379238);
  MEMORY[0x28223BE20](v50);
  v55 = &v43 - v8;
  v9 = type metadata accessor for FriendRequestCell(0);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = v10;
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4718, &qword_24E379240);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v43 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4720, &qword_24E379248);
  MEMORY[0x28223BE20](v58);
  v54 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058, &qword_24E370220);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v57 = &v43 - v15;
  v16 = sub_24E345B68();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  if (*(v1 + 8) == 1)
  {
    v65 = *v1;
    if (v22)
    {
LABEL_3:
      v23 = [*(v1 + 56) playerID];
      v24 = sub_24E347CF8();
      v26 = v25;

      KeyPath = swift_getKeyPath();
      LOBYTE(v61) = 0;
      v62 = v24;
      v63 = v26;
      sub_24E10B210();
      sub_24E3455A8();
      *&v4[*(v2 + 36)] = 0;
      sub_24DF95B98(v4, v6, &qword_27F1E46F8, &qword_24E379220);
      swift_storeEnumTagMultiPayload();
      sub_24E10D294();
      sub_24E10D404();
      sub_24E345E38();
      return sub_24E10CF40(v4, &qword_27F1E46F8);
    }
  }

  else
  {
    v43 = v18;

    sub_24E348268();
    v28 = sub_24E346198();
    v44 = v6;
    v29 = v28;
    sub_24E343EA8();

    v6 = v44;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v22, 0);
    (*(v17 + 8))(v21, v43);
    if (v65)
    {
      goto LABEL_3;
    }
  }

  sub_24E1069A0();
  type metadata accessor for GameCenterSettingsState(0);
  sub_24E103BB8(&qword_27F1E03D8);
  sub_24E346D68();
  v63 = &type metadata for GameCenterUIFeatureFlags;
  v64 = sub_24E032C80();
  v30 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&KeyPath);
  if ((v30 & 1) != 0 && (type metadata accessor for GameCenterSettings(0), sub_24DFF1F8C()))
  {
    sub_24E10B91C(v1, v11, type metadata accessor for FriendRequestCell);
    v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v32 = swift_allocObject();
    sub_24E10BC94(v11, v32 + v31, type metadata accessor for FriendRequestCell);
    v33 = v47;
    sub_24E346BD8();
    v34 = v48;
    v35 = v51;
    (*(v48 + 16))(v55, v33, v51);
    swift_storeEnumTagMultiPayload();
    sub_24E10D6AC(&unk_27F1E4730);
    sub_24E10D34C();
    v36 = v54;
    sub_24E345E38();
    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v37 = [*(v1 + 56) playerID];
    v38 = sub_24E347CF8();
    v40 = v39;

    KeyPath = v38;
    v61 = v40;
    v41 = v49;
    sub_24E3455B8();
    v42 = v55;
    *(v41 + *(v56 + 36)) = 0;
    sub_24DF95B98(v41, v42, &qword_27F1E4708, &qword_24E379230);
    swift_storeEnumTagMultiPayload();
    sub_24E10D6AC(&unk_27F1E4730);
    sub_24E10D34C();
    v36 = v54;
    sub_24E345E38();
    sub_24E10CF40(v41, &qword_27F1E4708);
  }

  sub_24DF95B98(v36, v6, &qword_27F1E4720, &qword_24E379248);
  swift_storeEnumTagMultiPayload();
  sub_24E10D294();
  sub_24E10D404();
  sub_24E345E38();
  sub_24E10CF40(v36, &qword_27F1E4720);
  return (*(v52 + 8))(v57, v53);
}

uint64_t sub_24E107E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v13 = sub_24E1AF4F4(*(a1 + 56));
  v5 = v4;
  v7 = v6;
  sub_24E346E38();
  sub_24E3453D8();
  v8 = v7 & 1;
  v9 = (v7 >> 8) & 1;
  *&v23[3] = *&v23[27];
  *&v23[11] = *&v23[35];
  *&v23[19] = v24;
  v10 = sub_24E345D08();
  LOBYTE(v28[0]) = 1;
  sub_24E1080A4(v2, v25);
  *&v22[7] = v25[0];
  *&v22[23] = v25[1];
  *&v22[39] = v25[2];
  *&v22[55] = v25[3];
  v11 = v28[0];
  LOBYTE(v2) = sub_24E3461D8();
  __src[0] = v13;
  __src[1] = v5;
  LOBYTE(__src[2]) = v8;
  BYTE1(__src[2]) = v9;
  *(&__src[2] + 2) = *v23;
  *(&__src[4] + 2) = *&v23[8];
  *(&__src[6] + 2) = *&v23[16];
  __src[8] = *(&v24 + 1);
  memcpy(__dst, __src, 0x48uLL);
  v27[0] = v10;
  v27[1] = 0;
  LOBYTE(v27[2]) = v11;
  memcpy(&v27[2] + 1, v22, 0x47uLL);
  LOBYTE(v27[11]) = v2;
  memset(&v27[12], 0, 32);
  LOBYTE(v27[16]) = 1;
  memcpy(&__dst[72], v27, 0x81uLL);
  v20 = 1;
  memcpy(a2, __dst, 0xD0uLL);
  *(a2 + 208) = 0;
  *(a2 + 216) = 1;
  v28[0] = v10;
  v28[1] = 0;
  v29 = v11;
  memcpy(v30, v22, 0x47uLL);
  v30[71] = v2;
  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  sub_24DF95B98(__src, v14, &qword_27F1E4180, &qword_24E3786B0);
  sub_24DF95B98(v27, v14, &qword_27F1E09B0, qword_24E36EA88);
  sub_24E10CF40(v28, &qword_27F1E09B0);
  v14[0] = v13;
  v14[1] = v5;
  v15 = v8;
  v16 = v9;
  v17 = *v23;
  v18 = *&v23[8];
  v19[0] = *&v23[16];
  *(v19 + 14) = *&v23[23];
  return sub_24E10CF40(v14, &qword_27F1E4180);
}

uint64_t sub_24E1080A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = [v3 alias];
  if (v4)
  {
    v5 = v4;
    sub_24E347CF8();
  }

  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  v10 = v9;
  v11 = sub_24E346498();
  v41 = v12;
  v14 = v13;
  v16 = v15;
  sub_24DFA92EC(v6, v8, v10 & 1);

  v17 = [v3 inboxEntry];
  if (v17)
  {
    v18 = v17;
    v38 = v14;
    v39 = v11;
    v40 = v16;
    v19 = &selRef_senderDisplayName;
  }

  else
  {
    v18 = [v3 contact];
    if (!v18)
    {
      v31 = 0;
      v33 = 0;
      v36 = 0;
      goto LABEL_8;
    }

    v38 = v14;
    v39 = v11;
    v40 = v16;
    v19 = &selRef__gkCompositeName;
  }

  v20 = [v18 *v19];

  sub_24E347CF8();
  v21 = sub_24E3464E8();
  v23 = v22;
  v25 = v24;
  sub_24E346358();
  v26 = sub_24E3464B8();
  v28 = v27;
  v30 = v29;

  sub_24DFA92EC(v21, v23, v25 & 1);

  sub_24E345F28();
  v31 = sub_24E346478();
  v33 = v32;
  LOBYTE(v21) = v34;
  v18 = v35;
  sub_24DFA92EC(v26, v28, v30 & 1);

  v36 = v21 & 1;
  sub_24DF82DD4(v31, v33, v21 & 1);

  v11 = v39;
  v16 = v40;
  v14 = v38;
LABEL_8:
  sub_24DF82DD4(v11, v41, v14 & 1);

  sub_24E00B1C4(v31, v33, v36, v18);
  sub_24E00B208(v31, v33, v36, v18);
  *a2 = v11;
  *(a2 + 8) = v41;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v31;
  *(a2 + 40) = v33;
  *(a2 + 48) = v36;
  *(a2 + 56) = v18;
  sub_24E00B208(v31, v33, v36, v18);
  sub_24DFA92EC(v11, v41, v14 & 1);
}

uint64_t sub_24E1083AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4648, &qword_24E379188);
  MEMORY[0x28223BE20](v72);
  v63 = &v55 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4650, &qword_24E379190);
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4658, &qword_24E379198);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4660, &qword_24E3791A0);
  MEMORY[0x28223BE20](v69);
  v71 = &v55 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4668, &qword_24E3791A8);
  MEMORY[0x28223BE20](v70);
  v61 = &v55 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4670, &qword_24E3791B0);
  MEMORY[0x28223BE20](v57);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4678, &qword_24E3791B8);
  MEMORY[0x28223BE20](v56);
  v58 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v22 = sub_24E345B68();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (*(a1 + 8) == 1)
  {
    v27 = *a1;
    v75 = *a1;
  }

  else
  {

    sub_24E348268();
    v28 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(v26, 0);
    (*(v23 + 8))(v25, v22);
    v27 = v75;
  }

  if (v27 == 1)
  {
    sub_24E108CC0(v21);
    sub_24E3469D8();
    v29 = sub_24E3469C8();

    KeyPath = swift_getKeyPath();
    v74 = v29;
    v31 = sub_24E3453E8();
    v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4698, &qword_24E3791C8) + 36)];
    *v32 = KeyPath;
    v32[1] = v31;
    *&v21[*(v56 + 36)] = sub_24E3469B8();
    sub_24E109014(v17);
    sub_24E3469D8();
    v33 = sub_24E3469C8();

    v34 = swift_getKeyPath();
    v74 = v33;
    v35 = sub_24E3453E8();
    v36 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46A0, &qword_24E3791D0) + 36)];
    *v36 = v34;
    v36[1] = v35;
    v37 = sub_24E346998();
    v38 = v58;
    *&v17[*(v57 + 36)] = v37;
    sub_24DF95B98(v21, v38, &qword_27F1E4678, &qword_24E3791B8);
    v39 = v60;
    sub_24DF95B98(v17, v60, &qword_27F1E4670, &qword_24E3791B0);
    v40 = v61;
    sub_24DF95B98(v38, v61, &qword_27F1E4678, &qword_24E3791B8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46A8, &qword_24E3791D8);
    sub_24DF95B98(v39, v40 + *(v41 + 48), &qword_27F1E4670, &qword_24E3791B0);
    sub_24E10CF40(v39, &qword_27F1E4670);
    sub_24E10CF40(v38, &qword_27F1E4678);
    sub_24DF95B98(v40, v71, &qword_27F1E4668, &qword_24E3791A8);
    swift_storeEnumTagMultiPayload();
    sub_24E10D6AC(&unk_27F1E4688);
    sub_24E10D6AC(&unk_27F1E4690);
    sub_24E345E38();
    sub_24E10CF40(v40, &qword_27F1E4668);
    sub_24E10CF40(v17, &qword_27F1E4670);
    return sub_24E10CF40(v21, &qword_27F1E4678);
  }

  else
  {
    v43 = v64;
    sub_24E108CC0(v64);
    v44 = v67;
    sub_24E109014(v67);
    v45 = v66;
    v46 = *(v65 + 16);
    v47 = v59;
    v46(v59, v43, v66);
    v48 = v62;
    v49 = *(v62 + 16);
    v50 = v68;
    v49(v5, v44, v68);
    v51 = v63;
    v46(v63, v47, v45);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4680, &qword_24E3791C0);
    v49((v51 + *(v52 + 48)), v5, v50);
    v53 = *(v48 + 8);
    v53(v5, v50);
    v54 = *(v65 + 8);
    v54(v47, v45);
    sub_24DF95B98(v51, v71, &qword_27F1E4648, &qword_24E379188);
    swift_storeEnumTagMultiPayload();
    sub_24E10D6AC(&unk_27F1E4688);
    sub_24E10D6AC(&unk_27F1E4690);
    sub_24E345E38();
    sub_24E10CF40(v51, &qword_27F1E4648);
    v53(v67, v68);
    return (v54)(v64, v66);
  }
}

uint64_t sub_24E108CC0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_24E345CA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FriendRequestCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46B0, &qword_24E3791E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_24E10B91C(v1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestCell);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_24E10BC94(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FriendRequestCell);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E46B8, &unk_24E3791E8);
  sub_24E10D0C4(&unk_27F1E46C0);
  sub_24E346BD8();
  sub_24E345C98();
  sub_24E10D6AC(&unk_27F1E46C8);
  sub_24E103BB8(&qword_27F1E46D8);
  sub_24E346588();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}