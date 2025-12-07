uint64_t OUTLINED_FUNCTION_2_111(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_46(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_18_39()
{
  *(v3 + 16) = v1;

  return memcpy((v3 + 160 * v2 + 32), (v0 + 104), 0xA0uLL);
}

id OUTLINED_FUNCTION_21_31(double a1, double a2)
{
  v6 = a2 - v5;

  return [v2 (v3 + 2424)];
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI25AsyncPresenterUpdatePhaseO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E2830B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E28311C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_24E283170(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    v2 = a2 - 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_24E2831E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E283220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for AddFriendsAction(uint64_t a1)
{
  result = qword_27F1E9578;
  if (!qword_27F1E9578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2832F8(uint64_t a1)
{
  sub_24DF88A8C(319, &qword_280BDFA90, 0x277D0C138);
  if (v1 <= 0x3F)
  {
    sub_24E347208();
    if (v2 <= 0x3F)
    {
      sub_24E2833AC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E2833AC(uint64_t a1)
{
  if (!qword_27F1E9588)
  {
    sub_24DF88A8C(255, &qword_27F1E05B0, 0x277D75D28);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E9588);
    }
  }
}

void sub_24E283414(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[3] = &type metadata for GKFeatureFlags;
  v16[4] = sub_24DFA0CB4();
  LOBYTE(v16[0]) = 15;
  v4 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v4 & 1) != 0 && [a1 supportsFriendingViaPush] && (v5 = sub_24E283C30(a1), v6))
  {
    v7 = v5;
    v8 = v6;
    v9 = [a1 contact];
    v10 = [v9 identifier];

    v11 = sub_24E347CF8();
    v13 = v12;

    v14 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24E369990;
    v15 = [a1 contact];
    v13 = 0;
    v7 = 0;
    v8 = 0;
    *(v11 + 32) = v15;
    v14 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v14;
}

uint64_t sub_24E2835B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v9 = sub_24E347458();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_14();
  v57 = v10;
  sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v58 = v12;
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_14();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60, qword_24E36F7F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for AddFriendsAction(0);
  v26 = *(v25 + 28);
  *a5 = a1;
  v27 = a2;
  v28 = a5;
  v29 = *(v27 + 16);
  *(a5 + 8) = *v27;
  *(a5 + 24) = v29;
  *(a5 + 40) = *(v27 + 32);
  *(a5 + v26) = v60;
  sub_24E283B58(a3, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v54 = v25;
    v60 = a3;
    sub_24DFB8654(v27, v61);
    sub_24E283BC8(v16);
    v30 = *(v27 + 32);
    v53 = v17;
    if (v30)
    {
      v31 = *v27 | *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      v32 = v56;
      if (v31)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E367D20;
        *(inited + 32) = 0x79546E6F69746361;
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = 0x657461676976616ELL;
        *(inited + 56) = 0xE800000000000000;
        v34 = sub_24E347C28();
        if (qword_27F1DD808 != -1)
        {
          OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
        }

        v46 = sub_24E347058();
        __swift_project_value_buffer(v46, qword_27F20AE00);
        v36 = OUTLINED_FUNCTION_1_130();
        v37 = 0xE600000000000000;
      }

      else
      {
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_24E367D20;
        *(v33 + 32) = 0x79546E6F69746361;
        *(v33 + 40) = 0xEA00000000006570;
        *(v33 + 72) = MEMORY[0x277D837D0];
        *(v33 + 48) = 0x657461676976616ELL;
        *(v33 + 56) = 0xE800000000000000;
        v34 = sub_24E347C28();
        if (qword_27F1DD808 != -1)
        {
          OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
        }

        v35 = sub_24E347058();
        __swift_project_value_buffer(v35, qword_27F20AE00);
        v36 = OUTLINED_FUNCTION_1_130() & 0xFFFFFFFFFFFFLL | 0x744F000000000000;
        v37 = 0xEC00000073726568;
      }

      v43 = 1802398060;
      v44 = 0xE400000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_24E367D20;
      v41 = MEMORY[0x277D837D0];
      *(v40 + 32) = 0x79546E6F69746361;
      *(v40 + 40) = 0xEA00000000006570;
      *(v40 + 72) = v41;
      *(v40 + 48) = 6579297;
      *(v40 + 56) = 0xE300000000000000;
      v34 = sub_24E347C28();
      v32 = v56;
      if (qword_27F1DD808 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
      }

      v42 = sub_24E347058();
      __swift_project_value_buffer(v42, qword_27F20AE00);
      v36 = OUTLINED_FUNCTION_1_130();
      v43 = 0x6E6F74747562;
      v37 = 0xE600000000000000;
      v44 = 0xE600000000000000;
    }

    MEMORY[0x25303DB90](v36, v37, v43, v44, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
    v47 = v58;
    v48 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_24E367D20;
    v50 = v49 + v48;
    v51 = v59;
    (*(v47 + 16))(v50, v32, v59);
    sub_24E347448();
    v52 = v55;
    sub_24E3471D8();
    sub_24DFB8758(v27);
    sub_24E283BC8(v60);
    (*(v47 + 8))(v32, v51);
    return (*(v19 + 32))(v28 + *(v54 + 24), v52, v53);
  }

  else
  {
    sub_24E283BC8(a3);
    v38 = *(v19 + 32);
    v38(v24, v16, v17);
    return (v38)(a5 + *(v25 + 24), v24, v17);
  }
}

uint64_t sub_24E283B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60, qword_24E36F7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E283BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60, qword_24E36F7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E283C30(void *a1)
{
  v1 = [a1 contactAssociationID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

id sub_24E283CA8(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for BaseCollectionViewCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setEdgesInsettingLayoutMarginsFromSafeArea_];
  return v9;
}

id sub_24E283DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DashboardSidebarProfileView(uint64_t a1)
{
  result = qword_27F1E9640;
  if (!qword_27F1E9640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E283EEC()
{
  v0 = [objc_opt_self() systemWhiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27F20B340 = v1;
  qword_27F20B348 = 0x4034000000000000;
}

uint64_t sub_24E283F90(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = sub_24E343FC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DE000 != -1)
  {
    swift_once();
  }

  v12 = sub_24E344158();
  __swift_project_value_buffer(v12, &unk_27F20BC00);
  OUTLINED_FUNCTION_12_46();
  (*(v13 + 16))(v11);
  (*(v9 + 104))(v11, *MEMORY[0x277D22618], v8);
  *a3 = sub_24E3444F8();
  *a4 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(a5);
  v17[3] = v8;
  v17[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  sub_24E344508();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E284170@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v39 = a6;
  v17 = sub_24E343FC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DE000 != -1)
  {
    swift_once();
  }

  v21 = sub_24E344158();
  v38 = __swift_project_value_buffer(v21, &unk_27F20BC00);
  v22 = *(v21 - 8);
  v43 = *(v22 + 16);
  v41 = v22 + 16;
  v43(v20, v38, v21);
  v42 = *MEMORY[0x277D22618];
  v40 = v18[13];
  v40(v20);
  v23 = sub_24E3444F8();
  v24 = MEMORY[0x277D22798];
  *(a1 + 56) = v23;
  *(a1 + 64) = v24;
  __swift_allocate_boxed_opaque_existential_1((a1 + 32));
  v45 = v17;
  v46 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v26 = v18[2];
  v26(boxed_opaque_existential_1, v20, v17);
  sub_24E344508();
  v27 = v18[1];
  v27(v20, v17);
  v37 = v21;
  v43(v20, v38, v21);
  (v40)(v20, v42, v17);
  v38 = v23;
  *(a1 + 96) = v23;
  *(a1 + 104) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 72));
  v45 = v17;
  v46 = MEMORY[0x277D22628];
  v28 = __swift_allocate_boxed_opaque_existential_1(v44);
  v36 = v18 + 2;
  v26(v28, v20, v17);
  sub_24E344508();
  v27(v20, v17);
  v29 = MEMORY[0x277D225F8];
  *(a1 + 136) = MEMORY[0x277D85048];
  *(a1 + 144) = v29;
  *(a1 + 112) = 0x4030000000000000;
  if (qword_27F1DDFF8 != -1)
  {
    swift_once();
  }

  v30 = a5 + a9;
  v31 = a2 + v39;
  v32 = v37;
  v33 = __swift_project_value_buffer(v37, &unk_27F20BBE8);
  v43(v20, v33, v32);
  (v40)(v20, v42, v17);
  *(a1 + 176) = v38;
  *(a1 + 184) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 152));
  v45 = v17;
  v46 = MEMORY[0x277D22628];
  v34 = __swift_allocate_boxed_opaque_existential_1(v44);
  v26(v34, v20, v17);
  sub_24E344508();
  result = (v27)(v20, v17);
  *a1 = v31;
  *(a1 + 8) = a3 + a7;
  *(a1 + 16) = a4 + a8;
  *(a1 + 24) = v30;
  return result;
}

char *sub_24E28458C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v82 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v80 - v14;
  v6[qword_27F1E95E0] = 0;
  v6[qword_27F1E95E8] = 0;
  v6[qword_27F1E95F0] = 1;
  v16 = &v6[qword_27F1E95F8];
  if (qword_27F1DDB98 != -1)
  {
    OUTLINED_FUNCTION_9_60();
    swift_once();
  }

  v17 = qword_27F20B340;
  v18 = qword_27F20B348;
  *v16 = qword_27F20B340;
  *(v16 + 1) = v18;
  v19 = qword_27F1E9608;
  v20 = objc_allocWithZone(GKDashboardPlayerPhotoView);
  v21 = v17;
  v22 = OUTLINED_FUNCTION_10_59();
  *&v7[v19] = [v20 v23];
  v24 = qword_27F1E9610;
  if (qword_27F1DDF68 != -1)
  {
    OUTLINED_FUNCTION_8_76();
    swift_once();
  }

  v25 = sub_24E344158();
  __swift_project_value_buffer(v25, &unk_27F20BA38);
  OUTLINED_FUNCTION_12_46();
  v27 = *(v26 + 16);
  v27(v15);
  OUTLINED_FUNCTION_14_41();
  v28 = type metadata accessor for DynamicTypeLabel(0);
  v29 = objc_allocWithZone(v28);
  *&v7[v24] = OUTLINED_FUNCTION_0_54(v15);
  v30 = qword_27F1E9618;
  if (qword_27F1DDFF8 != -1)
  {
    OUTLINED_FUNCTION_7_62();
    swift_once();
  }

  v31 = __swift_project_value_buffer(v25, &unk_27F20BBE8);
  (v27)(v15, v31, v25);
  OUTLINED_FUNCTION_14_41();
  v32 = objc_allocWithZone(v28);
  *&v7[v30] = OUTLINED_FUNCTION_0_54(v15);
  v33 = qword_27F1E9620;
  type metadata accessor for BackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v7[v33] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v35 = qword_27F1E9628;
  *&v7[v35] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = qword_27F1E9630;
  v81 = type metadata accessor for BadgeView();
  v37 = objc_allocWithZone(v81);
  v38 = OUTLINED_FUNCTION_10_59();
  *&v7[v36] = [v39 v40];
  *&v7[qword_27F1E9638] = 0;
  v41 = &v7[qword_27F1E9600];
  v42 = v82;
  *v41 = v82;
  *(v41 + 1) = a2;
  v43 = a2;
  sub_24DF88BEC(v42, a2);
  v44 = type metadata accessor for DashboardSidebarProfileView(0);
  v84.receiver = v7;
  v84.super_class = v44;
  v45 = objc_msgSendSuper2(&v84, sel_initWithFrame_, a3, a4, a5, a6);
  v46 = OUTLINED_FUNCTION_7_2();
  [v47 v48];
  sub_24E2855E0();
  v49 = qword_27F1E9610;
  OUTLINED_FUNCTION_18_40();
  v50 = *&v45[v49];
  v51 = qword_27F1DE118;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for PlayerCardTheme(0);
  v54 = __swift_project_value_buffer(v53, qword_27F20BF00);
  v55 = GKIsRemoteUI();
  v56 = objc_opt_self();
  v57 = &selRef_whiteColor;
  if (!v55)
  {
    v57 = &selRef_labelColor;
  }

  v58 = [v56 *v57];
  [v52 setTextColor_];

  v59 = qword_27F1E9618;
  OUTLINED_FUNCTION_18_40();
  v60 = *&v45[v59];
  v61 = objc_opt_self();
  v62 = v60;
  v63 = [v61 secondaryLabelColor];
  [v62 setTextColor_];

  v64 = [*&v45[v59] layer];
  if (*(v54 + *(v53 + 56) + 8))
  {
    v65 = sub_24E347CB8();
  }

  else
  {
    v65 = 0;
  }

  [v64 setCompositingFilter_];

  swift_unknownObjectRelease();
  v66 = qword_27F1E9608;
  OUTLINED_FUNCTION_18_40();
  v67 = qword_27F1E9630;
  OUTLINED_FUNCTION_18_40();
  v68 = qword_27F1DDBA0;
  v69 = *&v45[v67];
  v70 = v43;
  if (v68 != -1)
  {
    swift_once();
  }

  v71 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeSize;
  OUTLINED_FUNCTION_13_51();
  __swift_assign_boxed_opaque_existential_1(&v69[v71], qword_27F1E9590);
  swift_endAccess();

  v72 = qword_27F1DDBA8;
  v73 = *&v45[v67];
  if (v72 != -1)
  {
    swift_once();
  }

  v74 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeBorderWidth;
  OUTLINED_FUNCTION_13_51();
  __swift_assign_boxed_opaque_existential_1(&v73[v74], qword_27F1E95B8);
  swift_endAccess();

  v75 = *&v45[v66];
  v76 = *&v45[v67];
  v77 = v75;
  sub_24E284BCC(v77);

  v83.receiver = *&v45[v67];
  v83.super_class = v81;
  v78 = v83.receiver;
  objc_msgSendSuper2(&v83, sel_setHidden_, 1);
  sub_24E286898();

  [v45 _gkDisableDefaultFocusEffect];
  sub_24DE73FA0(v82, v70);

  return v45;
}

void sub_24E284BCC(void *a1)
{
  v2 = v1;
  v3 = [a1 layer];
  [v3 setMask_];

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = sub_24E3431E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_kvoFrameToken);
  *(v2 + OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_kvoFrameToken) = v6;
}

void sub_24E284CFC(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setHidden_, a1 & 1);
  sub_24E286898();
}

void sub_24E284D48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  *(v0 + qword_27F1E95E0) = 0;
  *(v0 + qword_27F1E95E8) = 0;
  *(v0 + qword_27F1E95F0) = 1;
  v5 = (v0 + qword_27F1E95F8);
  if (qword_27F1DDB98 != -1)
  {
    OUTLINED_FUNCTION_9_60();
    swift_once();
  }

  v6 = qword_27F20B340;
  v7 = qword_27F20B348;
  *v5 = qword_27F20B340;
  v5[1] = v7;
  v8 = qword_27F1E9608;
  v9 = objc_allocWithZone(GKDashboardPlayerPhotoView);
  v10 = v6;
  *(v1 + v8) = [v9 initWithFrame_];
  v11 = qword_27F1E9610;
  if (qword_27F1DDF68 != -1)
  {
    OUTLINED_FUNCTION_8_76();
    swift_once();
  }

  v12 = sub_24E344158();
  v13 = __swift_project_value_buffer(v12, &unk_27F20BA38);
  v14 = *(*(v12 - 8) + 16);
  v14(v4, v13, v12);
  OUTLINED_FUNCTION_1_22();
  v15 = type metadata accessor for DynamicTypeLabel(0);
  v16 = objc_allocWithZone(v15);
  *(v1 + v11) = OUTLINED_FUNCTION_0_54(v4);
  v17 = qword_27F1E9618;
  if (qword_27F1DDFF8 != -1)
  {
    OUTLINED_FUNCTION_7_62();
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, &unk_27F20BBE8);
  v14(v4, v18, v12);
  OUTLINED_FUNCTION_1_22();
  v19 = objc_allocWithZone(v15);
  *(v1 + v17) = OUTLINED_FUNCTION_0_54(v4);
  v20 = qword_27F1E9620;
  type metadata accessor for BackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v20) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v22 = qword_27F1E9628;
  *(v1 + v22) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = qword_27F1E9630;
  *(v1 + v23) = [objc_allocWithZone(type metadata accessor for BadgeView()) initWithFrame_];
  *(v1 + qword_27F1E9638) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E28507C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  [v2 layoutMargins];
  OUTLINED_FUNCTION_8_2();
  a1[3] = &type metadata for DashboardSidebarProfileViewLayout;
  a1[4] = sub_24E0D7888();
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = OUTLINED_FUNCTION_7_2();
  sub_24E284170(v6, v5, v7, v8, v9, v10, v11, v12, v13);
  v14 = *&v2[qword_27F1E9608];
  *(v4 + 232) = sub_24DF88A8C(0, &qword_27F1E2650, off_279666D88);
  *(v4 + 240) = sub_24E28707C(&qword_27F1E9680, &qword_27F1E2650, off_279666D88, &protocol conformance descriptor for GKDashboardPlayerPhotoView);
  *(v4 + 208) = v14;
  v15 = *&v2[qword_27F1E9610];
  v16 = type metadata accessor for DynamicTypeLabel(0);
  v17 = MEMORY[0x277D22A70];
  *(v4 + 272) = v16;
  *(v4 + 280) = v17;
  *(v4 + 248) = v15;
  v18 = *&v2[qword_27F1E9618];
  *(v4 + 312) = v16;
  *(v4 + 320) = v17;
  *(v4 + 288) = v18;
  v19 = v14;
  v20 = v15;
  v21 = v18;
  LOBYTE(v15) = sub_24E00CF10();
  v23 = *&v2[qword_27F1E9630];
  *(v4 + 360) = type metadata accessor for BadgeView();
  *(v4 + 368) = sub_24E2870C0();
  *(v4 + 336) = v23;
  *(v4 + 328) = v15 & 1;

  return v23;
}

id sub_24E28522C()
{
  v1 = v0;
  v2 = *&v0[qword_27F1E9620];
  [v1 bounds];
  [v2 setFrame_];
  v3 = *&v1[qword_27F1E9628];
  [v1 bounds];
  [v3 setFrame_];
  [v1 bounds];
  OUTLINED_FUNCTION_8_2();
  [v1 layoutMargins];
  sub_24E3484F8();
  sub_24E3484F8();
  v5 = v4 + -44.0;
  v6 = [v1 traitCollection];
  v7 = sub_24E3483B8();

  v8 = *&v1[qword_27F1E9610];
  OUTLINED_FUNCTION_17_38();
  v10 = v9;
  if (v7)
  {
    OUTLINED_FUNCTION_17_38();
    v10 = v10 - (v5 - CGRectGetWidth(v19));
  }

  OUTLINED_FUNCTION_17_38();
  v12 = v11;
  OUTLINED_FUNCTION_17_38();
  [v8 setFrame_];
  v13 = *&v1[qword_27F1E9618];
  [v13 frame];
  v15 = v14;
  [v13 frame];
  Height = CGRectGetHeight(v21);

  return [v13 setFrame_];
}

id sub_24E2853F4(void *a1, uint64_t a2, char a3)
{
  [*&v3[qword_27F1E9608] setPlayer_];
  v7 = *&v3[qword_27F1E9610];
  v8 = [a1 displayName];
  v9 = sub_24E347CF8();
  v11 = v10;

  sub_24DFA0B40(v9, v11, v7);
  v12 = *&v3[qword_27F1E9618];
  v13 = sub_24E347CB8();
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D83B88];
  *(v16 + 16) = xmmword_24E367D20;
  v18 = MEMORY[0x277D83C10];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = a2;
  v19 = sub_24E347CC8();
  v21 = v20;

  sub_24DFA0B40(v19, v21, v12);
  v23.receiver = *&v3[qword_27F1E9630];
  v23.super_class = type metadata accessor for BadgeView();
  objc_msgSendSuper2(&v23, sel_setHidden_, (a3 & 1) == 0);
  sub_24E286898();
  return [v3 setNeedsLayout];
}

id sub_24E2855E0()
{
  v1 = v0;
  v2 = *&v0[qword_27F1E9620];
  v3 = &v1[qword_27F1E95F8];
  v11 = *&v1[qword_27F1E95F8];
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v4 = v11;
  sub_24DFEB8F4(&v11);
  v5 = v3[1];
  [v2 _setContinuousCornerRadius_];
  v6 = [v2 layer];
  [v6 setCompositingFilter_];

  v7 = [v2 layer];
  [v7 setMaskedCorners_];

  [v1 addSubview_];
  v8 = *&v1[qword_27F1E9628];
  v11 = [objc_opt_self() whiteColor];
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_24DFEB8F4(&v11);
  [v8 _setContinuousCornerRadius_];
  v9 = [v8 layer];
  [v9 setMaskedCorners_];

  [v1 addSubview_];

  return sub_24E2857A4();
}

id sub_24E2857A4()
{
  if (v0[qword_27F1E95E0])
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[qword_27F1E95E8] ^ 1;
  }

  [*&v0[qword_27F1E9620] setHidden_];
  v2 = *&v0[qword_27F1E9628];
  v3 = [v0 isFocused];
  v4 = 0.2;
  if (!v3)
  {
    v4 = 0.0;
  }

  return [v2 setAlpha_];
}

void sub_24E285874(void *a1)
{
  v2 = *(v1 + qword_27F1E9638);
  *(v1 + qword_27F1E9638) = a1;
  v3 = a1;

  sub_24E285850();
}

void sub_24E2858CC(void *a1)
{
  v3 = qword_27F1E9638;
  v4 = *(v1 + qword_27F1E9638);
  if (!v4 || [v4 phase] == 3 || (v5 = *(v1 + v3)) != 0 && objc_msgSend(v5, sel_phase) == 4)
  {
    v6 = sub_24E002D98(a1);
    if (v6)
    {
      v7 = v6;
      [v6 locationInView_];
      v8 = v7;
      sub_24E285874(v7);

      OUTLINED_FUNCTION_2_112();
      sub_24DF88A8C(v9, v10, v11);
      OUTLINED_FUNCTION_0_166();
      OUTLINED_FUNCTION_2_112();
      v16 = sub_24E28707C(v12, v13, v14, v15);
      OUTLINED_FUNCTION_3_110(v16);
      v17 = OUTLINED_FUNCTION_6_87();
      v38[0] = v1;
      v38[1] = type metadata accessor for DashboardSidebarProfileView(v17);
      v18 = v38;
    }

    else
    {
      OUTLINED_FUNCTION_2_112();
      sub_24DF88A8C(v19, v20, v21);
      OUTLINED_FUNCTION_0_166();
      OUTLINED_FUNCTION_2_112();
      v26 = sub_24E28707C(v22, v23, v24, v25);
      OUTLINED_FUNCTION_3_110(v26);
      v27 = OUTLINED_FUNCTION_6_87();
      v39[0] = v1;
      v39[1] = type metadata accessor for DashboardSidebarProfileView(v27);
      v18 = v39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_112();
    sub_24DF88A8C(v28, v29, v30);
    OUTLINED_FUNCTION_0_166();
    OUTLINED_FUNCTION_2_112();
    v35 = sub_24E28707C(v31, v32, v33, v34);
    OUTLINED_FUNCTION_3_110(v35);
    v36 = OUTLINED_FUNCTION_6_87();
    v37[0] = v1;
    v37[1] = type metadata accessor for DashboardSidebarProfileView(v36);
    v18 = v37;
  }

  OUTLINED_FUNCTION_16_41(v18, sel_touchesBegan_withEvent_);
}

void sub_24E285AA4(void *a1)
{
  v3 = *&v1[qword_27F1E9638];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  if (!sub_24E00DD68(v4, a1))
  {

LABEL_7:
    OUTLINED_FUNCTION_2_112();
    sub_24DF88A8C(v15, v16, v17);
    OUTLINED_FUNCTION_0_166();
    OUTLINED_FUNCTION_2_112();
    v22 = sub_24E28707C(v18, v19, v20, v21);
    OUTLINED_FUNCTION_3_110(v22);
    v23 = OUTLINED_FUNCTION_6_87();
    v25[0] = v1;
    v25[1] = type metadata accessor for DashboardSidebarProfileView(v23);
    v14 = v25;
    goto LABEL_8;
  }

  sub_24E285874(0);
  [v1 bounds];
  OUTLINED_FUNCTION_8_2();
  [v4 locationInView_];
  v27.origin.x = OUTLINED_FUNCTION_7_2();
  if (CGRectContainsPoint(v27, v26))
  {
    sub_24E286258();
  }

  OUTLINED_FUNCTION_2_112();
  sub_24DF88A8C(v5, v6, v7);
  OUTLINED_FUNCTION_0_166();
  OUTLINED_FUNCTION_2_112();
  v12 = sub_24E28707C(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_110(v12);
  v13 = OUTLINED_FUNCTION_6_87();
  v24[0] = v1;
  v24[1] = type metadata accessor for DashboardSidebarProfileView(v13);
  v14 = v24;
LABEL_8:
  OUTLINED_FUNCTION_16_41(v14, sel_touchesEnded_withEvent_);
}

void sub_24E285C40(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_87();
  sub_24E285874(v3);
  OUTLINED_FUNCTION_2_112();
  sub_24DF88A8C(v4, v5, v6);
  OUTLINED_FUNCTION_0_166();
  OUTLINED_FUNCTION_2_112();
  v11 = sub_24E28707C(v7, v8, v9, v10);
  OUTLINED_FUNCTION_3_110(v11);
  v12 = OUTLINED_FUNCTION_6_87();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DashboardSidebarProfileView(v12);
  OUTLINED_FUNCTION_16_41(&v13, sel_touchesCancelled_withEvent_);
}

void sub_24E285D08(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_27F1E2858, 0x277D758B8);
  OUTLINED_FUNCTION_0_166();
  sub_24E28707C(v5, &qword_27F1E2858, 0x277D758B8, v6);
  v7 = sub_24E348128();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DashboardSidebarProfileView(0);
  objc_msgSendSuper2(&v20, sel_pressesEnded_withEvent_, v7, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    a1 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  while (a1 < 0)
  {
    if (!sub_24E3488A8() || (swift_dynamicCast(), (v17 = v19) == 0))
    {
LABEL_18:
      OUTLINED_FUNCTION_1_64();
      return;
    }

LABEL_16:
    v18 = [v17 type];

    if (v18 == 4)
    {
      OUTLINED_FUNCTION_1_64();
      sub_24E286258();
      return;
    }
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
LABEL_12:
    v11 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v16 = *(v8 + 8 * v10);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24E285F6C(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, unint64_t *a7, void (*a8)(uint64_t, void *))
{
  sub_24DF88A8C(0, a5, a6);
  OUTLINED_FUNCTION_0_166();
  sub_24E28707C(a7, a5, a6, v14);
  v15 = sub_24E348138();
  v16 = a4;
  v17 = a1;
  a8(v15, a4);
}

id sub_24E286034(void *a1, void *a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24E28705C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_91;
  v6 = _Block_copy(aBlock);

  [a2 addCoordinatedAnimations:v6 completion:0];
  _Block_release(v6);
  v7 = [a1 nextFocusedItem];
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRelease();
    if (v8 == v2 && v2[qword_27F1E95F0] == 1 && (v2[qword_27F1E95E0] & 1) == 0)
    {
      sub_24E286258();
    }
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for DashboardSidebarProfileView(0);
  return OUTLINED_FUNCTION_16_41(&v10, sel_didUpdateFocusInContext_withAnimationCoordinator_);
}

void sub_24E286188(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24E2857A4();
  }
}

void sub_24E2861DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_24E286034(v6, v7);
}

void sub_24E286258()
{
  v1 = *(v0 + qword_27F1E9600);
  if (v1)
  {
    v2 = *(v0 + qword_27F1E9600 + 8);
    *(v0 + qword_27F1E95E0) = 1;

    v3 = sub_24E2857A4();
    v1(v3);

    sub_24DE73FA0(v1, v2);
  }
}

void sub_24E286324()
{
  sub_24DE73FA0(*(v0 + qword_27F1E9600), *(v0 + qword_27F1E9600 + 8));

  v1 = *(v0 + qword_27F1E9638);
}

id sub_24E2863D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardSidebarProfileView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E286410(uint64_t a1)
{
  sub_24DE73FA0(*(a1 + qword_27F1E9600), *(a1 + qword_27F1E9600 + 8));

  v2 = *(a1 + qword_27F1E9638);
}

char *sub_24E2864D8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeSize];
  v11 = MEMORY[0x277D839F8];
  v12 = MEMORY[0x277D22A30];
  *(v10 + 3) = MEMORY[0x277D839F8];
  *(v10 + 4) = v12;
  *v10 = 0;
  v13 = &v4[OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeBorderWidth];
  *(v13 + 3) = v11;
  *(v13 + 4) = v12;
  *v13 = 0;
  v14 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeTransparentMaskLayer;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_kvoFrameToken] = 0;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemRedColor];
  [v17 setBackgroundColor_];

  v19 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeTransparentMaskLayer;
  [*&v17[OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeTransparentMaskLayer] setFillRule_];
  v20 = *&v17[v19];
  v21 = [v16 whiteColor];
  v22 = [v21 CGColor];

  [v20 setFillColor_];
  return v17;
}

void sub_24E2866D4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeSize);
  v2 = MEMORY[0x277D839F8];
  v3 = MEMORY[0x277D22A30];
  v1[3] = MEMORY[0x277D839F8];
  v1[4] = v3;
  *v1 = 0;
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeBorderWidth);
  v4[3] = v2;
  v4[4] = v3;
  *v4 = 0;
  v5 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeTransparentMaskLayer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_kvoFrameToken) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E28680C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

void sub_24E286898()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_isHidden);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    if (!Strong)
    {
      return;
    }

    v4 = [Strong layer];

    [v4 setMask_];
  }

  else
  {
    if (!Strong)
    {
      return;
    }

    v4 = [Strong layer];

    [v4 setMask_];
  }
}

id sub_24E2869D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void sub_24E286A84(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_setFrame_, a1, a2, a3, a4);
  sub_24E286AF0();
}

void sub_24E286AF0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeSize;
    swift_beginAccess();
    sub_24DF89628(&v1[v4], v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v5 = [v1 traitCollection];
    sub_24E3441A8();
    v7 = v6;

    __swift_destroy_boxed_opaque_existential_1(v27);
    v8 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeBorderWidth;
    swift_beginAccess();
    sub_24DF89628(&v1[v8], v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = [v1 traitCollection];
    sub_24E3441A8();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1(v27);
    v12 = v7 + v11 + v11;
    [v1 center];
    v14 = v13;
    v16 = v15;
    v17 = [v1 superview];
    [v3 convertPoint:v17 fromView:{v14, v16}];
    v19 = v18;
    v21 = v20;

    v22 = objc_opt_self();
    v23 = [v22 bezierPathWithOvalInRect_];
    [v3 bounds];
    v24 = [v22 bezierPathWithRect_];
    [v24 appendPath_];
    v25 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeTransparentMaskLayer];
    v26 = [v24 CGPath];
    [v25 setPath_];

    [v3 bounds];
    [v25 setFrame_];
  }
}

void sub_24E286D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24E286AF0();
  }
}

void sub_24E286DE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  sub_24E286AF0();
}

void sub_24E286EC0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_E93A106C72447D8B59D99814DDD0B3D39BadgeView_badgeSize;
  swift_beginAccess();
  sub_24DF89628(v0 + v1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v2 = [v0 traitCollection];
  sub_24E3441A8();

  __swift_destroy_boxed_opaque_existential_1(v3);
  CGSizeMake();
}

double block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E28707C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24DF88A8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E2870C0()
{
  result = qword_27F1E9688;
  if (!qword_27F1E9688)
  {
    type metadata accessor for BadgeView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9688);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_110(uint64_t a1)
{

  return sub_24E348128();
}

uint64_t OUTLINED_FUNCTION_13_51()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_41()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

id OUTLINED_FUNCTION_16_41(objc_super *a1, SEL a2)
{

  return objc_msgSendSuper2(a1, a2, v3, v2);
}

id OUTLINED_FUNCTION_17_38()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_18_40()
{

  return [v0 (v1 + 2040)];
}

void sub_24E28725C()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  sub_24E2EACA0();
}

uint64_t sub_24E2872F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v3;
  v7 = *(a1 + 40);
  return sub_24E2EACF0(v5, a2);
}

uint64_t sub_24E287350(uint64_t result)
{
  if (result)
  {
    return sub_24E17DAC4(*(*(v1 + OBJC_IVAR____TtC12GameCenterUI26FocusableTitledAppIconView_embeddedView) + OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_iconView), 1);
  }

  return result;
}

uint64_t sub_24E2873D0(uint64_t *a1, uint64_t a2)
{
  v29[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v33 = v4;
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v29[0] = v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  OUTLINED_FUNCTION_0_14();
  v31 = v9;
  MEMORY[0x28223BE20](v10);
  v30 = v29 - v11;
  v12 = type metadata accessor for LaunchGameAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];

  sub_24E3471C8();
  *v14 = v19;
  *(v14 + 1) = v20;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  *(v14 + 4) = v15;
  *(v14 + 5) = v16;
  v21 = v29[0];
  v14[48] = 0;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v21, 1, v8) == 1)
  {
    sub_24E0AA504(v21);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    v22 = v30;
    v23 = v31;
    (*(v31 + 32))(v30, v21, v8);
    v35[3] = v12;
    v35[4] = sub_24E28772C();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    sub_24E287784(v14, boxed_opaque_existential_1);
    v26 = v32;
    v25 = v33;
    v27 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x277D21E18], v34);
    sub_24E3473B8();

    (*(v25 + 8))(v26, v27);
    (*(v23 + 8))(v22, v8);
    sub_24E2877E8(v14);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return result;
}

unint64_t sub_24E28772C()
{
  result = qword_27F1E39B0;
  if (!qword_27F1E39B0)
  {
    type metadata accessor for LaunchGameAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E39B0);
  }

  return result;
}

uint64_t sub_24E287784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2877E8(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24E287854(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = 0.0;
    do
    {
      v7 = *v5++;
      v6 = v6 + v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6 + a2 + a4;
}

id sub_24E287888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph] = 0;
  v2[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E135560(&qword_27F1E0E80, &qword_27F1E96D0, &unk_24E36C000);
  sub_24E135560(&qword_27F1E0E88, &unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E344B98();
  v6 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_onApplySnapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
  swift_allocObject();
  *&v2[v6] = sub_24E346F88();
  v7 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_onUpdatePhaseChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  swift_allocObject();
  *&v2[v7] = sub_24E346F88();
  v2[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_hasShownAuthenticationFlow] = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_authenticationPresenter;
  *&v3[v8] = [objc_allocWithZone(type metadata accessor for LocalPlayerAuthenticationPresenter()) init];
  v9 = &v3[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for BasePresenter(0);
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_24E287A3C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph) = a1;
}

uint64_t sub_24E287A80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  OUTLINED_FUNCTION_5_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_24E287B0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  OUTLINED_FUNCTION_5_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id sub_24E287BD0()
{
  sub_24DFEA130();
  v0 = sub_24E24F744();
  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x25303F560](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }

    v2 = v1;

    return v2;
  }

  else
  {

    v4 = [objc_opt_self() local];

    return v4;
  }
}

id sub_24E287C88()
{
  v0 = sub_24E287BD0();
  v1 = sub_24E245A0C();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_24E287BD0();
  v3 = [v2 isAuthenticated];

  return v3;
}

uint64_t sub_24E287CE4()
{
  v0 = sub_24E287BD0();
  v1 = sub_24E245A0C();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_24E287BD0();
  v3 = [v2 isAuthenticated];

  return v3 ^ 1;
}

uint64_t sub_24E287D40(unsigned __int8 *a1)
{
  v2 = v1;
  v66 = sub_24E343F88();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = *a1;
  v20 = sub_24E287BD0();
  v21 = sub_24E245A0C();

  if (v21)
  {
    v22 = sub_24E287BD0();
    v23 = [v22 shouldShowAnyOnboardingScreen];

    if ((v23 & 1) == 0)
    {
      sub_24E343C58();
      v33 = sub_24E343F78();
      v34 = sub_24E348238();
      if (OUTLINED_FUNCTION_3_111(v34))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_0_167(&dword_24DE53000, v35, v36, "BasePresenter.shouldShowAuthenticationFlow = false, the user should not see the onboarding flow because either the user is offline or has already onboarded");
        OUTLINED_FUNCTION_22_4();
      }

      (*(v4 + 8))(v15, v66);
      return 0;
    }

    if (*(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_hasShownAuthenticationFlow) == 1)
    {
      sub_24E343C58();
      v24 = sub_24E343F78();
      v25 = sub_24E348238();
      if (OUTLINED_FUNCTION_3_111(v25))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_0_167(&dword_24DE53000, v26, v27, "BasePresenter.shouldShowAuthenticationFlow = false, the user has already seen the auth flow in this UI instance");
        OUTLINED_FUNCTION_22_4();
      }

      (*(v4 + 8))(v12, v66);
      return 0;
    }

    v38 = objc_opt_self();
    v39 = [v38 currentGame];
    v40 = [v39 isNewsApp];

    if (v40)
    {
      sub_24E343C58();
      v41 = sub_24E343F78();
      v42 = sub_24E348238();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68 = v65;
        *v43 = 136315394;
        v67 = v19;
        v44 = DashboardLaunchContext.rawValue.getter();
        v46 = sub_24E1C2BE0(v44, v45, &v68);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        v47 = [v38 currentGame];
        v48 = [v47 bundleIdentifier];

        v49 = sub_24E347CF8();
        v51 = v50;

        v52 = sub_24E1C2BE0(v49, v51, &v68);

        *(v43 + 14) = v52;
        _os_log_impl(&dword_24DE53000, v41, v42, "BasePresenter.shouldShowAuthenticationFlow = true, launchContext = %s, client = %s", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();
      }

      (*(v4 + 8))(v9, v66);
    }

    else
    {
      sub_24E343C58();
      v53 = sub_24E343F78();
      v54 = sub_24E348238();
      v55 = &selRef_setRequiresValidation_;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v68 = v57;
        *v56 = 67109378;
        if (v19 - 2) < 0xB && ((0x6B9u >> (v19 - 2)))
        {
          v58 = v19;
          v59 = 1;
        }

        else
        {
          v60 = [objc_opt_self() mainBundle];
          v59 = [v60 _gkIsAnyOverlayUI];

          v58 = v19;
        }

        *(v56 + 4) = v59;
        *(v56 + 8) = 2080;
        v67 = v58;
        v19 = v58;
        v61 = DashboardLaunchContext.rawValue.getter();
        v63 = sub_24E1C2BE0(v61, v62, &v68);

        *(v56 + 10) = v63;
        _os_log_impl(&dword_24DE53000, v53, v54, "BasePresenter.shouldShowAuthenticationFlow = %{BOOL}d, launchContext = %s", v56, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();

        (*(v4 + 8))(v6, v66);
        v55 = &selRef_setRequiresValidation_;
      }

      else
      {

        (*(v4 + 8))(v6, v66);
      }

      if ((v19 - 2) >= 0xB || ((0x6B9u >> (v19 - 2)) & 1) == 0)
      {
        v64 = [objc_opt_self() mainBundle];
        v32 = [v64 v55[137]];

        return v32;
      }
    }
  }

  else
  {
    sub_24E343C58();
    v28 = sub_24E343F78();
    v29 = sub_24E348238();
    if (OUTLINED_FUNCTION_3_111(v29))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_0_167(&dword_24DE53000, v30, v31, "BasePresenter.shouldShowAuthenticationFlow = true, the user should see the sign in flow");
      OUTLINED_FUNCTION_22_4();
    }

    (*(v4 + 8))(v18, v66);
  }

  return 1;
}

id sub_24E2883BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasePresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BasePresenter(uint64_t a1)
{
  result = qword_27F1E96A8;
  if (!qword_27F1E96A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E28850C(uint64_t a1)
{
  sub_24E0239BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E28861C(uint64_t a1)
{
  swift_getWitnessTable();

  sub_24E19967C();
}

uint64_t sub_24E288670(uint64_t a1)
{
  result = sub_24E2886B4(&unk_27F1E96C0, &unk_24E389F00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2886B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BasePresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E2886F8(uint64_t a1)
{
  result = sub_24E2886B4(&qword_27F1E96B8, &unk_24E389F80);
  *(a1 + 8) = result;
  return result;
}

void OUTLINED_FUNCTION_0_167(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_3_111(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_24E28878C()
{
  result = qword_27F1E0E30;
  if (!qword_27F1E0E30)
  {
    type metadata accessor for InviteFriendsFlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0E30);
  }

  return result;
}

id sub_24E2887E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  sub_24DFD8A60();

  result = [objc_opt_self() shared];
  if (result)
  {
    v18 = result;
    v19 = [result isAddingFriendsRestricted];

    if (v19)
    {
      sub_24E343CC8();
      v20 = sub_24E343F78();
      v21 = sub_24E348238();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24DE53000, v20, v21, "Tried to deep link into Settings > Invite Friends while adding friends is restricted via Screen Time. Blocking.", v22, 2u);
        MEMORY[0x253040EE0](v22, -1, -1);
      }

      (*(v6 + 8))(v9, v4);
      for (i = a3; ; i = v25)
      {
        v24 = [i presentedViewController];
        if (!v24)
        {
          break;
        }

        v25 = v24;
      }

      sub_24DF88A8C(0, &qword_27F1DFB28, 0x277D75110);
      v28 = sub_24E347CB8();
      v29 = GKGameCenterUIFrameworkBundle();
      v30 = GKGetLocalizedStringFromTableInBundle();

      v31 = sub_24E347CF8();
      v33 = v32;

      v34 = sub_24E347CB8();
      v35 = GKGameCenterUIFrameworkBundle();
      v36 = GKGetLocalizedStringFromTableInBundle();

      v37 = sub_24E347CF8();
      v39 = v38;

      v40 = sub_24E3191B4(v31, v33, v37, v39, 1);
      sub_24DF88A8C(0, &qword_27F1E2900, 0x277D750F8);
      v41 = sub_24E347CB8();
      v42 = GKGameCenterUIFrameworkBundle();
      v43 = GKGetLocalizedStringFromTableInBundle();

      v44 = sub_24E347CF8();
      v46 = v45;

      v47 = sub_24E3190AC(v44, v46, 0, 0, 0);
      [v40 addAction_];
    }

    else
    {
      for (i = a3; ; i = v27)
      {
        v26 = [i presentedViewController];
        if (!v26)
        {
          break;
        }

        v27 = v26;
      }

      type metadata accessor for FriendingViewControllers();
      v40 = static FriendingViewControllers.inviteFriends(containedIn:)(i);
    }

    [i presentViewController:v40 animated:1 completion:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v12 + 104))(v15, *MEMORY[0x277D21CA8], v10);
    v48 = sub_24E347AA8();

    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_24E288CBC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E97B8, &unk_24E38A088);
  v9 = sub_24E347F08();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  swift_unknownObjectRelease();
  return result;
}

void FriendsListViewController.__allocating_init(playerId:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for FriendsListPresenter(0));
  sub_24E09F378(a1, a2, 0, 1, 1);
  v5 = objc_allocWithZone(type metadata accessor for FriendsListViewController());
  OUTLINED_FUNCTION_15_39();
}

void FriendsListViewController.__allocating_init(playerId:newFriendPlayerIds:showAddFriendButton:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = objc_allocWithZone(type metadata accessor for FriendsListPresenter(0));
  sub_24E09F378(a1, a2, a3, 1, a4);
  v9 = objc_allocWithZone(type metadata accessor for FriendsListViewController());
  OUTLINED_FUNCTION_15_39();
}

void sub_24E288E84()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0, &unk_24E36C0E0);
  OUTLINED_FUNCTION_0_14();
  v71 = v7;
  v72 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v70 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0, &unk_24E36D1A0);
  OUTLINED_FUNCTION_0_14();
  v68 = v11;
  v69 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v67 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v14);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = sub_24E347638();
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v20 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v26 = v25 - v24;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_isDeeplinked) = 0;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v22 + 16))(v26, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v20);
  sub_24E347628();
  v27 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  sub_24E3476A8();
  swift_allocObject();
  v28 = sub_24E347658();
  *&v5[OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_pageMetricsPresenter] = v28;

  *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter) = v5;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;

  v29 = v5;

  v30 = v29;
  sub_24E137668();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810, &qword_24E371680);
  swift_allocObject();
  v33 = v32;
  *&v77 = sub_24E347578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CE0, &unk_24E36C110);
  swift_allocObject();
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810, &qword_24E371680, MEMORY[0x277D22080]);
  v73 = v30;
  *&v33[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_statePresenter] = sub_24E344898();

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_24DF8BD90(&v77, v76, &qword_27F1E1B70, qword_24E3756A0);
  v34 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v35 = v33;

  v36 = v35;
  v74 = v28;
  v75 = v3;
  v37 = sub_24E190B5C(v33, v76, 0, v28, 0, 0, v3);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0, &unk_24E36C120);
  v38 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0, &unk_24E36C120, MEMORY[0x277D21A98]);
  sub_24E347198();
  v39 = v67;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v76);
  (*(v68 + 8))(v39, v69);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00, &qword_24E375EB0);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00, &qword_24E375EB0, v38);
  sub_24E347198();
  v40 = v70;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v76);
  (*(v71 + 8))(v40, v72);

  sub_24DF8BFF4(&v77, &qword_27F1E1B70, qword_24E3756A0);
  v41 = *&v36[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  *&v36[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter] = v37;

  v42 = OUTLINED_FUNCTION_16_42();
  v43 = *&v36[OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter];
  v44 = sub_24E09FB08();
  v46 = v45;

  sub_24DFF79C8(v44, v46, v42);
  v47 = [v36 navigationController];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 navigationBar];

    [v49 setBarStyle_];
  }

  v50 = [v36 navigationController];

  if (v50)
  {
    v51 = [v50 navigationBar];

    v52 = [objc_opt_self() blackColor];
    [v51 setTintColor_];
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v53 = OUTLINED_FUNCTION_16_42();
    [v53 setStyle_];
  }

  v54 = OUTLINED_FUNCTION_16_42();
  [v54 setLargeTitleDisplayMode_];

  if ([objc_opt_self() isPreferences])
  {
    v55 = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
    v56 = OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController;
    v57 = *&v36[OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController];
    *&v36[OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController] = v55;

    v58 = OUTLINED_FUNCTION_16_42();
    v59 = *&v36[v56];
    [v58 setSearchController_];

    v60 = *&v36[v56];
    if (v60)
    {
      [v60 setObscuresBackgroundDuringPresentation_];
      v61 = *&v36[v56];
      if (v61)
      {
        [v61 setSearchResultsUpdater_];
        v62 = *&v36[v56];
        if (v62)
        {
          [v62 setDefinesPresentationContext_];
        }
      }
    }
  }

  sub_24E28A82C();
  v63 = qword_27F1DE118;
  v64 = v36;
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for PlayerCardTheme(0);
  v66 = __swift_project_value_buffer(v65, qword_27F20BF00);
  sub_24DFFE82C(*v66);

  OUTLINED_FUNCTION_18();
}

void sub_24E2897E0()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_isDeeplinked) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E28990C(void *a1)
{
  type metadata accessor for FriendsListPresenter(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter);
    *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter) = v3;
  }

  else
  {

    v3 = sub_24E348AE8();
    __break(1u);
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

double sub_24E2899BC()
{
  if (qword_27F1DD900 != -1)
  {
    OUTLINED_FUNCTION_1_131(&qword_27F1DD900);
  }

  return result;
}

uint64_t sub_24E289A68(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_isDeeplinked) = result;
  *(*(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter) + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_isDeeplinked) = *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_isDeeplinked);
  return result;
}

void sub_24E289A9C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FriendsListViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  if (v1)
  {
    v2 = v1;
    sub_24E19116C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_24E289B48(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FriendsListViewController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 window];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v5 _rootSheetPresentationController];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 _setShouldScaleDownBehindDescendantSheets_];

LABEL_5:
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsFocusUpdate];
  }
}

void sub_24E289C9C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97C0, qword_24E38A0C0);
  OUTLINED_FUNCTION_0_14();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v43 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  v18 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60, MEMORY[0x277D21A98]);

  sub_24E347198();
  type metadata accessor for FriendsListViewController();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v13 + 8))(v16, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E97D0, &unk_24E374290);
  sub_24DFB4C28(&qword_27F1E97D8, &qword_27F1E97D0, &unk_24E374290, v18);

  OUTLINED_FUNCTION_12_47();
  v19 = v43;
  OUTLINED_FUNCTION_6_88(v46);

  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v44 + 8))(v19, v45);
  if (qword_27F1DD900 != -1)
  {
    OUTLINED_FUNCTION_1_131(&qword_27F1DD900);
  }

  v20 = OUTLINED_FUNCTION_16_29();
  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  sub_24E1E086C();

  v22 = OUTLINED_FUNCTION_16_29();
  v23 = v42;
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0, &unk_24E371660));
  v24 = sub_24E344CB8();
  v25 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v26 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource) = v24;

  v27 = OUTLINED_FUNCTION_16_29();
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = *(v0 + v25);
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v27;
  v30 = v28;
  sub_24E0B0548(v29, v30, v23);

  v31 = OUTLINED_FUNCTION_16_29();
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  [v31 setDataSource_];

  v33 = OUTLINED_FUNCTION_16_29();
  if (v33)
  {
    v34 = v33;
    sub_24E28A8F4();
    v36 = v35;
    [v34 setCollectionViewLayout_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
    sub_24DFB4C28(&unk_27F1E97F0, &unk_27F1E1C70, &unk_24E36C0B0, MEMORY[0x277D21A98]);

    OUTLINED_FUNCTION_12_47();
    v37 = v39;
    OUTLINED_FUNCTION_6_88(v46);

    __swift_destroy_boxed_opaque_existential_1(v46);
    (*(v40 + 8))(v37, v41);
    v38 = *(v1 + v17);
    sub_24E0A2148(v23);

    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_15:
  __break(1u);
}

void (*sub_24E28A214(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E28C70C;
}

void sub_24E28A278(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E28BC50(&v2, v2);
}

void (*sub_24E28A2BC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E28C6E8;
}

char *sub_24E28A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v38 = a1;
  v39 = a3;
  v22 = *&result[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (v22)
  {
    v23 = a2;
    v24 = result;
    v25 = v22;
    v26 = sub_24E3434D8();
    sub_24DFB8854(v26, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      v37 = v18;
      (*(v18 + 32))(v20, v16, v17);

      sub_24E3448C8();

      v28 = v40;
      v29 = *(v40 + 48);
      v30 = *&v24[OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter];
      v31 = sub_24E3434D8();
      sub_24DFC15B4(v11, &v11[v29], v31);

      if (qword_27F1DD900 != -1)
      {
        swift_once();
      }

      v32 = qword_27F20B008;
      sub_24DF8BD90(v11, v8, &unk_27F1E1CA0, &unk_24E36C0D0);
      v33 = *(v28 + 48);
      v34 = sub_24DFC15B8();
      v35 = v23;
      v36 = v43;
      v27 = (*(*v32 + 104))(v39, v35, v20, v8, &v8[v33], v43, v34, v38);

      sub_24DF8BFF4(v11, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v41 + 8))(v36, v42);
      (*(v37 + 8))(v20, v17);
      sub_24DF8BFF4(&v8[v33], &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8BFF4(v8, &unk_27F1E1CB0, &unk_24E36D160);
      return v27;
    }

    sub_24DF8BFF4(v16, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void (*sub_24E28A7C4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E1EB23C;
}

void sub_24E28A82C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController);
  if (v1)
  {
    v2 = [v1 searchBar];
    v3 = [v2 searchTextField];

    [v3 setEnabled_];
  }
}

void sub_24E28A8F4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  OUTLINED_FUNCTION_21_2();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E28C5F0, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_24E28AA34(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v19 = Strong;
  v20 = *(Strong + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  sub_24DFB8854(v45, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
LABEL_8:

    sub_24DF8BFF4(v11, &unk_27F1E1CB0, &unk_24E36D160);
LABEL_9:
    result = sub_24E348AE8();
    __break(1u);
    return result;
  }

  v22 = v17;
  v41 = *(v13 + 32);
  v42 = v12;
  v41(v17, v11, v12);
  if (qword_27F1DD900 != -1)
  {
    swift_once();
  }

  v23 = *&v19[OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter];
  sub_24DFC15B4(v8, v5, v45);

  v24 = sub_24DFC15B8();
  v25 = *MEMORY[0x277D75060];
  v26 = *(MEMORY[0x277D75060] + 8);
  v27 = *(MEMORY[0x277D75060] + 16);
  v28 = *(MEMORY[0x277D75060] + 24);
  v40 = v17;
  v29 = sub_24E1E108C(v17, v8, v5, v24, v44, v25, v26, v27, v28);
  v45 = v29;

  sub_24DF8BFF4(v5, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BFF4(v8, &unk_27F1E1CB0, &unk_24E36D160);
  [v29 setContentInsetsReference_];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v42;
  v32 = v43;
  (*(v13 + 16))(v43, v22, v42);
  v33 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v34 = (v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v41((v35 + v33), v32, v31);
  *(v35 + v34) = v30;
  aBlock[4] = sub_24E28C5F8;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E288CBC;
  aBlock[3] = &block_descriptor_92;
  v36 = _Block_copy(aBlock);

  v37 = v45;
  [v45 setVisibleItemsInvalidationHandler_];
  _Block_release(v36);

  (*(v13 + 8))(v40, v31);
  return v37;
}

uint64_t sub_24E28AEF4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_24E347478();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_24E3474B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_24DF8BFF4(v11, &qword_27F1E58A0, &unk_24E36BF80);
  }

  (*(v13 + 32))(v15, v11, v12);
  [objc_msgSend(a3 container)];
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator);

    if (v19)
    {
      sub_24E347498();
      sub_24E347728();

      (*(v20 + 8))(v8, v6);
    }
  }

  return (*(v13 + 8))(v15, v12);
}

void sub_24E28B248()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v66 = v3;
  v63 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v64 = v6;
  v65 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v62 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v59 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v69 = v18;
  v70 = v17;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  v68 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v27 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v31 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v32 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v32)
  {
    v33 = v0;
    v34 = v32;
    sub_24E344CD8();

    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      v35 = &unk_27F1E6C70;
      v36 = &unk_24E3715E0;
      v37 = v24;
      goto LABEL_7;
    }

    (*(v27 + 32))(v30, v24, v25);
    v38 = *(v33 + v31);
    if (v38)
    {
      v39 = v38;
      v40 = v2;
      v41 = sub_24E3434D8();
      sub_24DFB8854(v41, v16);

      v42 = v70;
      if (__swift_getEnumTagSinglePayload(v16, 1, v70) != 1)
      {
        v44 = v68;
        v43 = v69;
        (*(v69 + 32))(v68, v16, v42);
        v45 = v66;
        ObjectType = swift_getObjectType();
        v47 = dynamic_cast_existential_1_conditional(v45, ObjectType, &protocol descriptor for AnyComponentCell);
        if (v47)
        {
          v59 = v48;
          v60 = v47;
          v49 = qword_27F1DD900;
          v66 = v45;
          if (v49 != -1)
          {
            OUTLINED_FUNCTION_1_131(&qword_27F1DD900);
          }

          v50 = qword_27F20B008;
          v51 = *(v33 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter);
          v52 = sub_24E3434D8();
          v53 = v61;
          sub_24DFC15B4(v61, v67, v52);

          v54 = v62;
          sub_24E3448C8();

          v55 = sub_24DFC15B8();
          v56 = v40;
          v57 = v67;
          v58 = v68;
          (*(*v50 + 152))(v60, v59, v56, v30, v68, v53, v67, v54, v63, v55);

          (*(v64 + 8))(v54, v65);
          sub_24DF8BFF4(v57, &unk_27F1E1CB0, &unk_24E36D160);
          sub_24DF8BFF4(v53, &unk_27F1E1CB0, &unk_24E36D160);
          (*(v69 + 8))(v58, v70);
        }

        else
        {
          (*(v43 + 8))(v44, v42);
        }

        (*(v27 + 8))(v30, v25);
        goto LABEL_14;
      }

      (*(v27 + 8))(v30, v25);
      v35 = &unk_27F1E1CB0;
      v36 = &unk_24E36D160;
      v37 = v16;
LABEL_7:
      sub_24DF8BFF4(v37, v35, v36);
LABEL_14:
      OUTLINED_FUNCTION_18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24E28B8BC(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for AnyComponentCell);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = qword_27F1DD900;
    v10 = a2;
    if (v9 != -1)
    {
      OUTLINED_FUNCTION_1_131(&qword_27F1DD900);
    }

    v11 = sub_24DFC15B8();
    sub_24E1E1904(v7, v8, a1, v11);
  }

  return result;
}

void sub_24E28BAB4(void *a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter);
  v3 = sub_24DFFA658([a1 searchBar]);
  sub_24E0A1C00(v3, v4);
}

void sub_24E28BB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_friendsPresenter);
  sub_24E0A1C00(0, 0);
}

void sub_24E28BC50(uint64_t a1, __n128 a2)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    OUTLINED_FUNCTION_13_52();
    sub_24DFFE6D0(0);
    sub_24E28A82C();
    v4 = [v2 navigationController];
    if (v4)
    {
      v27 = v4;
      [v4 setNeedsFocusUpdate];
    }
  }

  else if (v3 == 1)
  {
    v30[3] = sub_24E344CA8();
    v30[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_24E344C98();
    sub_24E3482F8();
    sub_24DFFE6D0(0);
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v26 = v6;
    OUTLINED_FUNCTION_13_52();
    v7 = v3;
    sub_24DF88BEC(v5, v6);
    v8 = sub_24E347CB8();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v11 = sub_24E347CF8();
    v13 = v12;

    v14 = sub_24E347CB8();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = sub_24E347CF8();
    v19 = v18;

    v20 = sub_24E347CB8();
    v21 = GKGameCenterUIFrameworkBundle();
    v22 = GKGetLocalizedStringFromTableInBundle();

    v23 = sub_24E347CF8();
    v25 = v24;

    __src[0] = 0xD000000000000016;
    __src[1] = 0x800000024E39EA90;
    __src[2] = v3;
    __src[3] = v11;
    __src[4] = v13;
    __src[5] = v17;
    __src[6] = v19;
    __src[7] = v23;
    __src[8] = v25;
    __src[9] = v5;
    __src[10] = v26;
    memcpy(__dst, __src, sizeof(__dst));
    sub_24E0A63D0(__src, v30);
    sub_24E28BF40();
    sub_24DFC13E4(__src);
    memcpy(v30, __dst, 0x58uLL);
    sub_24DF8BFF4(v30, &unk_27F1E9800, &qword_24E374278);
  }
}

void sub_24E28BF40()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v4 = sub_24E344C28();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E344CA8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  memcpy(v53, v3, 0x58uLL);
  sub_24E28A82C();
  v18 = v53[4];
  if (v53[4])
  {
    v48 = v13;
    v43 = v10;
    v44 = v6;
    v45 = v4;
    v19 = v53[1];
    v41 = v53[0];
    v20 = v53[9];
    v21 = v53[10];
    v22 = v53[2];
    v23 = v53[3];

    v24 = v22;

    v47 = v20;
    v42 = v21;
    sub_24DF88BEC(v20, v21);
    sub_24DFFE6D0(0);
    v25 = [v1 collectionView];
    if (v25)
    {
      v26 = v25;
      [v25 setHidden_];

      v27 = sub_24E347CB8();
      v28 = GKGameCenterUIFrameworkBundle();
      v29 = GKGetLocalizedStringFromTableInBundle();

      v30 = sub_24E347CF8();
      v32 = v31;

      if (v23 == v30 && v18 == v32)
      {
      }

      else
      {
        v34 = sub_24E348C08();

        if ((v34 & 1) == 0)
        {
          *(&v51 + 1) = v11;
          v52 = MEMORY[0x277D74D18];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
          sub_24E344C58();
          if (v19)
          {
            sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
            sub_24E1A5748(v41, v19, 0);
            sub_24E344C68();
          }

          sub_24E344C48();

          sub_24E344BF8();
          if (v47)
          {

            sub_24E344C38();
            sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
            OUTLINED_FUNCTION_16_4();
            v46 = boxed_opaque_existential_1;
            v36 = swift_allocObject();
            *(v36 + 16) = v47;
            *(v36 + 24) = v42;

            v37 = sub_24E348658();
            sub_24E344C18();

            v38 = sub_24E344C78();
            sub_24E348668();
            v38(&v49, 0);

            boxed_opaque_existential_1 = v46;
            sub_24DE73FA0(v47, v42);
            (*(v44 + 8))(v43, v45);
          }

          (*(v48 + 32))(boxed_opaque_existential_1, v17, v11);
          goto LABEL_18;
        }
      }

      *(&v51 + 1) = v11;
      v52 = MEMORY[0x277D74D18];
      __swift_allocate_boxed_opaque_existential_1(&v50);
      sub_24E344C88();
LABEL_18:
      sub_24E3482F8();
      sub_24DF8BFF4(v53, &unk_27F1E9800, &qword_24E374278);
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_24E3482F8();
    OUTLINED_FUNCTION_18();

    sub_24DFFE6D0(v39);
  }
}

void sub_24E28C4A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25FriendsListViewController_searchController);
}

id FriendsListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendsListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E28C5F8(uint64_t a1, void *a2, double a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E28AEF4(a3, a1, a2, v3 + v8, v9);
}

double block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_1_131(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_88(uint64_t a1)
{

  return sub_24E3471A8();
}

uint64_t OUTLINED_FUNCTION_12_47()
{

  return sub_24E347198();
}

uint64_t OUTLINED_FUNCTION_13_52()
{
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;

  return sub_24E3482F8();
}

void OUTLINED_FUNCTION_15_39()
{

  sub_24E288E84();
}

id OUTLINED_FUNCTION_16_42()
{

  return [v0 (v1 + 138)];
}

char *sub_24E28C8D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(v2) initWithFrame_];
  v8 = sub_24E344158();
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v10 = v7;
  sub_24E28E6F0(v6, v7 + v9);
  swift_endAccess();
  sub_24E28CA50(a1);

  v11 = OUTLINED_FUNCTION_27_1();
  v12(v11);
  return v10;
}

void sub_24E28CA50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E0AEA08();
  v5 = [v4 preferredContentSizeCategory];

  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCaseContentSizeCategory];
  *&v2[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCaseContentSizeCategory] = v5;

  sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  v7 = sub_24E0AEA08();
  v8 = MEMORY[0x25303F0C0](a1, v7);

  [v2 _setFont_];
}

uint64_t sub_24E28CB2C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_27_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6 + 22;
  v8 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase, v11);
  sub_24E0B01B4(v1 + v8, v7);
  swift_beginAccess();
  sub_24E0B0480(a1, v1 + v8);
  swift_endAccess();
  sub_24E28D2F4(v7);
  sub_24DF8C95C(a1, &unk_27F1E5CE0, qword_24E369F80);
  return sub_24DF8C95C(v7, &unk_27F1E5CE0, qword_24E369F80);
}

double sub_24E28CC40(double a1, double a2)
{
  v3 = v2;
  v6 = [v2 imageView];
  if (!v6)
  {
    v25 = [v2 titleLabel];
    if (!v25)
    {
      v35.receiver = v2;
      v35.super_class = type metadata accessor for DynamicTypeButton(0);
      objc_msgSendSuper2(&v35, sel_intrinsicContentSize);
      return v31;
    }

    v7 = v25;
    [v25 sizeThatFits_];
    Width = v26;
    goto LABEL_17;
  }

  v7 = v6;
  [v7 bounds];
  Width = CGRectGetWidth(v36);
  v9 = [v7 image];
  v10 = 0.0;
  if (v9)
  {
    v11 = v9;
    [v9 size];
    v10 = v12;
  }

  if (Width <= v10)
  {
    Width = v10;
  }

  [v7 bounds];
  OUTLINED_FUNCTION_6_89();
  v14 = v13;

  v37.origin.x = OUTLINED_FUNCTION_5_100();
  v37.size.height = v14;
  CGRectGetHeight(v37);
  v15 = [v7 image];
  if (v15)
  {
    v16 = v15;
    [v15 size];
  }

  v17 = [v3 titleLabel];
  if (!v17)
  {
LABEL_17:

    return Width;
  }

  v18 = v17;
  [v3 contentRectForBounds_];
  OUTLINED_FUNCTION_6_89();
  height = v38.size.height;
  if (CGRectGetWidth(v38) != 0.0)
  {
    v39.origin.x = OUTLINED_FUNCTION_5_100();
    v39.size.height = height;
    CGRectGetWidth(v39);
  }

  v20 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing;
  OUTLINED_FUNCTION_5_16(v3 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing, &v33);
  sub_24DF89628(v3 + v20, v34);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_24E344168();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (*(v3 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment) == 2)
  {
    v40.origin.x = OUTLINED_FUNCTION_5_100();
    v40.size.height = height;
    [v18 sizeThatFits_];
    v24 = v23;

    if (Width <= v24)
    {
      return v24;
    }
  }

  else
  {
    v27 = v18;
    [v27 bounds];
    v28 = CGRectGetWidth(v41);
    [v27 bounds];
    OUTLINED_FUNCTION_6_89();
    v30 = v29;

    v42.origin.x = OUTLINED_FUNCTION_5_100();
    v42.size.height = v30;
    CGRectGetHeight(v42);

    return Width + v22 + v28;
  }

  return Width;
}

void sub_24E28CF6C()
{
  [v0 bounds];
  [v0 bounds];
  v3 = sub_24E28CC40(v1, v2);
  v5 = v4;
  v6.origin.x = OUTLINED_FUNCTION_2_113();
  if (CGRectGetWidth(v6) < v3)
  {
    v7.origin.x = OUTLINED_FUNCTION_2_113();
    CGRectGetWidth(v7);
  }

  v8.origin.x = OUTLINED_FUNCTION_2_113();
  if (CGRectGetHeight(v8) < v5)
  {
    v9.origin.x = OUTLINED_FUNCTION_2_113();
    CGRectGetHeight(v9);
  }

  OUTLINED_FUNCTION_2_113();
}

id sub_24E28D03C()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v2 = sub_24E344158();
  OUTLINED_FUNCTION_7_63(v2);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) = v1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing);
  v4 = MEMORY[0x277D22A30];
  v3[3] = MEMORY[0x277D839F8];
  v3[4] = v4;
  *v3 = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageWantsBaselineAlignment) = 0;
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin);
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  v5[1] = v6;
  v20 = type metadata accessor for DynamicTypeButton(0);
  v7 = OUTLINED_FUNCTION_8_3();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, v20);
  v11 = qword_27F1DDDD8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTitleColor:qword_27F20B800 forState:0];
  v13 = UIView.highlightedTintColor.getter();
  v14 = OUTLINED_FUNCTION_4_95();
  [v14 v15];

  v16 = [objc_opt_self() quaternaryLabelColor];
  v17 = OUTLINED_FUNCTION_4_95();
  [v17 v18];

  return v12;
}

void sub_24E28D1F4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v2 = sub_24E344158();
  OUTLINED_FUNCTION_7_63(v2);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) = v1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing);
  v4 = MEMORY[0x277D22A30];
  v3[3] = MEMORY[0x277D839F8];
  v3[4] = v4;
  *v3 = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageWantsBaselineAlignment) = 0;
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin);
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  v5[1] = v6;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E28D2F4(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30B0, &unk_24E38C4B0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_24E344158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(v1 + v20, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_24DF8C95C(v12, &unk_27F1E5CE0, qword_24E369F80);
  }

  v26 = v1;
  v22 = *(v14 + 32);
  v22(v19, v12, v13);
  (*(v14 + 16))(v9, v19, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v23 = *(v2 + 48);
  sub_24E0B01B4(v9, v4);
  sub_24E0B01B4(v28, &v4[v23]);
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    sub_24DF8C95C(v9, &unk_27F1E5CE0, qword_24E369F80);
    if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
    {
      sub_24DF8C95C(v4, &unk_27F1E5CE0, qword_24E369F80);
      return (*(v14 + 8))(v19, v13);
    }

    goto LABEL_8;
  }

  v24 = v27;
  sub_24E0B01B4(v4, v27);
  if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
  {
    sub_24DF8C95C(v9, &unk_27F1E5CE0, qword_24E369F80);
    (*(v14 + 8))(v24, v13);
LABEL_8:
    sub_24DF8C95C(v4, &qword_27F1E30B0, &unk_24E38C4B0);
LABEL_9:
    sub_24E28CA50(v19);
    return (*(v14 + 8))(v19, v13);
  }

  v22(v16, &v4[v23], v13);
  sub_24E0B04F0();
  LODWORD(v28) = sub_24E347CA8();
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_24DF8C95C(v9, &unk_27F1E5CE0, qword_24E369F80);
  v25(v24, v13);
  sub_24DF8C95C(v4, &unk_27F1E5CE0, qword_24E369F80);
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v25)(v19, v13);
}

void sub_24E28D74C()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) == 1)
  {
    v1 = [v0 tintColor];
    v2 = OUTLINED_FUNCTION_4_95();
    [v2 v3];

    v4 = UIView.highlightedTintColor.getter();
    [v0 setTitleColor:v4 forState:1];
  }
}

void sub_24E28D800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t rect, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_13_53();
  a41 = v43;
  a42 = v44;
  v45 = v42;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = type metadata accessor for DynamicTypeButton(0);
  a25 = v45;
  a26 = v54;
  v55 = OUTLINED_FUNCTION_5_72();
  objc_msgSendSuper2(v56, v57, v55);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  a23 = v45;
  a24 = v54;
  v66 = OUTLINED_FUNCTION_5_72();
  objc_msgSendSuper2(v67, v68, v66);
  v87 = v69;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v73 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing;
  OUTLINED_FUNCTION_5_16(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing, &a15);
  sub_24DF89628(v45 + v73, &a18);
  __swift_project_boxed_opaque_existential_1(&a18, a21);
  OUTLINED_FUNCTION_27_1();
  sub_24E344168();
  __swift_destroy_boxed_opaque_existential_1(&a18);
  v74 = [v45 titleLabel];
  if (v74)
  {
    v75 = v74;
    if (*(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageWantsBaselineAlignment) == 1)
    {
      *&v91.origin.x = v87;
      *&v91.origin.y = v88;
      *&v91.size.width = v89;
      *&v91.size.height = v90;
      *&recta = v47;
      v76 = v59;
      MinY = CGRectGetMinY(v91);
      [v75 firstBaselineFromTop];
      v92.origin.y = v61;
      v79 = MinY + v78;
      v92.origin.x = v76;
      v92.size.width = v63;
      v92.size.height = v65;
      Height = CGRectGetHeight(v92);

      v61 = v79 - Height;
      v59 = v76;
      v47 = *&recta;
    }

    else
    {
    }
  }

  if (*(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment) == 1)
  {
    v82 = [v45 traitCollection];
    v83 = sub_24E3483B8();

    if (v83)
    {
      *&v93.origin.x = v87;
      *&v93.origin.y = v88;
      *&v93.size.width = v89;
      *&v93.size.height = v90;
      CGRectGetMinX(v93);
      [v45 imageEdgeInsets];
      v94.origin.x = v59;
      v94.origin.y = v61;
      v94.size.width = v63;
      v94.size.height = v65;
      CGRectGetWidth(v94);
    }

    else
    {
      v102.origin.x = OUTLINED_FUNCTION_0_168();
      CGRectGetMinX(v102);
      *&v103.origin.x = v87;
      *&v103.origin.y = v88;
      *&v103.size.width = v89;
      *&v103.size.height = v90;
      CGRectGetWidth(v103);
      [v45 imageEdgeInsets];
    }
  }

  else if (*(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment))
  {
    v84 = [v45 titleLabel];
    if (v84)
    {
      v85 = v84;
      v95.origin.x = OUTLINED_FUNCTION_5_72();
      [v85 sizeThatFits_];
      v96.origin.x = OUTLINED_FUNCTION_5_72();
      CGRectGetHeight(v96);
      v97.origin.x = OUTLINED_FUNCTION_0_168();
      CGRectGetHeight(v97);
      v98.origin.x = v53;
      v98.origin.y = v51;
      v98.size.width = v49;
      v98.size.height = v47;
      CGRectGetWidth(v98);
      v99.origin.x = OUTLINED_FUNCTION_0_168();
      CGRectGetWidth(v99);
      v100.origin.x = OUTLINED_FUNCTION_0_168();
      CGRectGetWidth(v100);
      v101.origin.x = OUTLINED_FUNCTION_0_168();
      CGRectGetHeight(v101);
    }
  }

  else
  {
    v81 = [v45 traitCollection];
    sub_24E3483B8();
  }

  OUTLINED_FUNCTION_0_168();
  OUTLINED_FUNCTION_12_48();
}

uint64_t type metadata accessor for DynamicTypeButton(uint64_t a1)
{
  result = qword_280BE0858;
  if (!qword_280BE0858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E28DBB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t rect, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_13_53();
  a41 = v43;
  a42 = v44;
  v45 = v42;
  v46 = type metadata accessor for DynamicTypeButton(0);
  a25 = v45;
  a26 = v46;
  v47 = OUTLINED_FUNCTION_1_132();
  objc_msgSendSuper2(v48, v49, v47);
  v73 = v50;
  v74 = v51;
  a23 = v45;
  a24 = v46;
  v52 = OUTLINED_FUNCTION_1_132();
  objc_msgSendSuper2(v53, v54, v52);
  v56 = v55;
  v70 = v57;
  v71 = v58;
  recta = v59;
  v60 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing;
  OUTLINED_FUNCTION_5_16(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageSpacing, &a15);
  sub_24DF89628(v45 + v60, &a18);
  __swift_project_boxed_opaque_existential_1(&a18, a21);
  OUTLINED_FUNCTION_27_1();
  sub_24E344168();
  __swift_destroy_boxed_opaque_existential_1(&a18);
  if (*(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment) == 1)
  {
    v62 = [v45 traitCollection];
    v63 = sub_24E3483B8();

    v64 = v56;
    v65 = v70;
    v66 = v71;
    v67 = recta;
    if (v63)
    {
      CGRectGetMaxX(*&v64);
      v75.origin.x = OUTLINED_FUNCTION_8_3();
      *&v75.size.width = v73;
      *&v75.size.height = v74;
      CGRectGetWidth(v75);
    }

    else
    {
      CGRectGetMinX(*&v64);
    }

    [v45 imageEdgeInsets];
  }

  else if (*(v45 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_imageAlignment))
  {
    v68 = [v45 titleLabel];
    if (v68)
    {
      v69 = v68;
      v76.origin.x = OUTLINED_FUNCTION_1_132();
      [v69 sizeThatFits_];
      v77.origin.x = OUTLINED_FUNCTION_1_132();
      CGRectGetHeight(v77);
      v78.origin.x = v56;
      *&v78.origin.y = v70;
      *&v78.size.width = v71;
      *&v78.size.height = recta;
      CGRectGetHeight(v78);
      v79.origin.x = OUTLINED_FUNCTION_1_132();
      CGRectGetWidth(v79);
    }
  }

  else
  {
    v61 = [v45 traitCollection];
    sub_24E3483B8();
  }

  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_12_48();
}

double sub_24E28DE48(uint64_t a1, uint64_t a2, double (*a3)(double))
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_3();
  v7 = a3(v6);

  return v7;
}

void sub_24E28DEBC(double a1, double a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DynamicTypeButton(0);
  objc_msgSendSuper2(&v5, sel_sizeThatFits_, a1, a2);
  sub_24E28CC40(a1, a2);
}

void sub_24E28DF8C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DynamicTypeButton(0);
  objc_msgSendSuper2(&v7, sel_tintColorDidChange);
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) == 1)
  {
    v1 = [v0 tintColor];
    v2 = OUTLINED_FUNCTION_4_95();
    [v2 v3];

    v4 = UIView.highlightedTintColor.getter();
    v5 = OUTLINED_FUNCTION_4_95();
    [v5 v6];
  }
}

uint64_t sub_24E28E078(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = sub_24E344158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for DynamicTypeButton(0);
  v23.receiver = v1;
  v23.super_class = v10;
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  v11 = OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase;
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCase], v22);
  sub_24E0B01B4(&v1[v11], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_24DF8C95C(v5, &unk_27F1E5CE0, qword_24E369F80);
  }

  (*(v7 + 32))(v9, v5, v6);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];

  if (*&v1[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_fontUseCaseContentSizeCategory])
  {
    v15 = sub_24E347CF8();
    v17 = v16;
    if (v15 == sub_24E347CF8() && v17 == v18)
    {

      return (*(v7 + 8))(v9, v6);
    }

    v20 = sub_24E348C08();

    if (v20)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
  }

  sub_24E28CA50(v9);
  return (*(v7 + 8))(v9, v6);
}

BOOL sub_24E28E360(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin);
  v6 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin + 8);
  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin + 16);
  v8 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin + 24);
  sub_24E28CF6C();
  v15.origin.x = v9 - v6;
  v15.origin.y = v10 - v5;
  v15.size.width = v6 + v8 + v11;
  v15.size.height = v5 + v7 + v12;
  v14.x = a1;
  v14.y = a2;
  return CGRectContainsPoint(v15, v14);
}

id DynamicTypeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E28E4E0(uint64_t a1)
{
  sub_24E0B02F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for DynamicTypeButton.ImageAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E28E69C()
{
  result = qword_27F1E9830;
  if (!qword_27F1E9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9830);
  }

  return result;
}

uint64_t sub_24E28E6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_63(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void sub_24E28E89C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_14_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

uint64_t sub_24E28E8EC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DF098, type metadata accessor for ContinuePlayingData, &protocol conformance descriptor for ContinuePlayingData);
  sub_24E347158();
  (*(v2 + 16))(v4, v17, v16);
  sub_24E347AF8();
  sub_24E347B28();
  [v18 setNeedsLayout];
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24E28EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v18 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SmallPlayerCardData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1E2640, type metadata accessor for SmallPlayerCardData, &protocol conformance descriptor for SmallPlayerCardData);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v16);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = v19;
  sub_24E20D060(v13, v8, v20);
  [v14 setNeedsLayout];
  (*(v6 + 8))(v8, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E28EF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v18 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DFFC8, type metadata accessor for SmallFriendLockupData, &unk_24E3834C8);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v16);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = v19;
  sub_24E1E5528();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v8, v17);
  return (*(v11 + 8))(v13, v10);
}

void sub_24E28F284()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_15(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_16();
  v7 = OUTLINED_FUNCTION_30_14(255, v4, v5, v6, &unk_24E3F4968);
  OUTLINED_FUNCTION_40_11(v7);
  sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  OUTLINED_FUNCTION_32_18(v11);
  OUTLINED_FUNCTION_39_9();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_37_10(AssociatedConformanceWitness);
  v13 = OUTLINED_FUNCTION_31_13();
  v14(v13);
  OUTLINED_FUNCTION_38_10();
  sub_24E347B28();
  v15 = OUTLINED_FUNCTION_28_19();
  v16(v15);
  v17 = OUTLINED_FUNCTION_42_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_41_12();
  v20(v19);
  OUTLINED_FUNCTION_18();
}

void sub_24E28F4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_14_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

uint64_t sub_24E28F518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DF098, type metadata accessor for ContinuePlayingData, &protocol conformance descriptor for ContinuePlayingData);
  sub_24E347158();
  (*(v6 + 16))(v8, v21, v20);
  sub_24E347AF8();
  sub_24E347B28();
  v17 = v23;
  sub_24DF96E60(v16, v11, v24, v25, v26, v27);
  [v17 setNeedsLayout];
  (*(v9 + 8))(v11, v22);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_24E28F864(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SmallPlayerCardData(0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1E2640, type metadata accessor for SmallPlayerCardData, &protocol conformance descriptor for SmallPlayerCardData);
  sub_24E347158();
  (*(v2 + 16))(v4, v17, v16);
  sub_24E347AF8();
  sub_24E347B28();
  [v18 setNeedsLayout];
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24E28FB7C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DFFC8, type metadata accessor for SmallFriendLockupData, &unk_24E3834C8);
  sub_24E347158();
  (*(v2 + 16))(v4, v17, v16);
  sub_24E347AF8();
  sub_24E347B28();
  [v18 setNeedsLayout];
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

void sub_24E28FE94()
{
  OUTLINED_FUNCTION_32();
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v32 = v7;
  v33 = v8;
  v30 = v9;
  v31 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v28 = v12;
  v29 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_4();
  v26[1] = OUTLINED_FUNCTION_30_14(255, v14, v15, v16, &unk_24E3F4968);
  v27 = sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_74();
  v26[0] = sub_24E347188();
  OUTLINED_FUNCTION_0_14();
  v24 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  sub_24E347158();
  (*(v28 + 16))(v0, v30, v29);
  sub_24E347B28();
  (*(v4 + 56))(v1, v21, v31, v32, v33, v34, v6, v4);
  (*(v18 + 8))(v21, v27);
  (*(v24 + 8))(v1, v26[0]);
  OUTLINED_FUNCTION_18();
}

void sub_24E290170()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_14_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

BOOL sub_24E2901C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DF098, type metadata accessor for ContinuePlayingData, &protocol conformance descriptor for ContinuePlayingData);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E291BE0();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_24E2904E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SmallPlayerCardData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1E2640, type metadata accessor for SmallPlayerCardData, &protocol conformance descriptor for SmallPlayerCardData);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E291CC0();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_24E290808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198, &qword_24E36E910);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DFFC8, type metadata accessor for SmallFriendLockupData, &unk_24E3834C8);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E2920F0();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

void sub_24E290B2C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_15(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_16();
  v7 = OUTLINED_FUNCTION_30_14(255, v4, v5, v6, &unk_24E3F4968);
  OUTLINED_FUNCTION_40_11(v7);
  sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  OUTLINED_FUNCTION_32_18(v11);
  OUTLINED_FUNCTION_39_9();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_37_10(AssociatedConformanceWitness);
  v13 = OUTLINED_FUNCTION_31_13();
  v14(v13);
  OUTLINED_FUNCTION_38_10();
  sub_24E347B28();
  v15 = OUTLINED_FUNCTION_28_19();
  v16(v15);
  v17 = OUTLINED_FUNCTION_42_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_41_12();
  v20(v19);
  OUTLINED_FUNCTION_18();
}

void sub_24E290D78()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_14_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

uint64_t sub_24E290DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888, &qword_24E36E918);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DF098, type metadata accessor for ContinuePlayingData, &protocol conformance descriptor for ContinuePlayingData);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E2939D0(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E2910E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888, &qword_24E36E918);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SmallPlayerCardData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1E2640, type metadata accessor for SmallPlayerCardData, &protocol conformance descriptor for SmallPlayerCardData);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E293DD0(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E291400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888, &qword_24E36E918);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  sub_24E298484(&qword_27F1DFFC8, type metadata accessor for SmallFriendLockupData, &unk_24E3834C8);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E2951B0(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

void sub_24E29171C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_15(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_16();
  v7 = OUTLINED_FUNCTION_30_14(255, v4, v5, v6, &unk_24E3F4968);
  OUTLINED_FUNCTION_40_11(v7);
  sub_24E3474E8();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  OUTLINED_FUNCTION_32_18(v11);
  OUTLINED_FUNCTION_39_9();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_37_10(AssociatedConformanceWitness);
  v13 = OUTLINED_FUNCTION_31_13();
  v14(v13);
  OUTLINED_FUNCTION_38_10();
  sub_24E3474F8();
  v15 = OUTLINED_FUNCTION_28_19();
  v16(v15);
  v17 = OUTLINED_FUNCTION_42_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_41_12();
  v20(v19);
  OUTLINED_FUNCTION_18();
}

BOOL sub_24E291964()
{
  type metadata accessor for SmallLockupCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9880, type metadata accessor for SmallLockupCollectionViewCell, &unk_24E382FCC);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460, &qword_24E3709D8);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291A38()
{
  type metadata accessor for JetDashboardCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9888, type metadata accessor for JetDashboardCollectionViewCell, &unk_24E38386C);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C50, &qword_24E36F268);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291B0C()
{
  type metadata accessor for NicknameFieldCollectionViewCell(0);
  sub_24E298484(&qword_27F1E98C0, type metadata accessor for NicknameFieldCollectionViewCell, &unk_24E38C864);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5B0, &qword_24E38C8D0);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291BE0()
{
  swift_getObjectType();
  sub_24E298484(&qword_27F1E9870, type metadata accessor for ContinuePlayingCollectionViewCell, &unk_24E37FDE0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291CC0()
{
  swift_getObjectType();
  sub_24E298484(&qword_27F1E9898, type metadata accessor for SmallPlayerCardCollectionViewCell, &unk_24E385730);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291DA0()
{
  type metadata accessor for TitledParagraphCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9868, type metadata accessor for TitledParagraphCollectionViewCell, &unk_24E37DFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2820, &qword_24E3731D0);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291E74()
{
  type metadata accessor for AchievementsLinkCollectionViewCell(0);
  sub_24E298484(&qword_27F1E98A8, type metadata accessor for AchievementsLinkCollectionViewCell, &unk_24E387300);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFA8, &qword_24E387320);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E291F48()
{
  type metadata accessor for DashboardSidebarCollectionViewCell(0);
  sub_24E298484(&qword_27F1E98A0, type metadata accessor for DashboardSidebarCollectionViewCell, &unk_24E385FC0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2988, &qword_24E3736B8);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E29201C()
{
  type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  sub_24E298484(&qword_27F1E98B0, type metadata accessor for LargePlayerLockupCollectionViewCell, &unk_24E38A750);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20, &qword_24E38A770);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E2920F0()
{
  swift_getObjectType();
  sub_24E298484(&qword_27F1E9838, type metadata accessor for SmallFriendLockupCollectionViewCell, &unk_24E36CCE0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E2921D0()
{
  type metadata accessor for OnboardingKitButtonCollectionViewCell();
  sub_24E298484(&qword_27F1E9858, type metadata accessor for OnboardingKitButtonCollectionViewCell, &unk_24E37C994);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830, &qword_24E37C9B8);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E2922A4()
{
  type metadata accessor for PlayerProfileHeaderCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9860, type metadata accessor for PlayerProfileHeaderCollectionViewCell, &unk_24E37DB74);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78, &qword_24E37DB90);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E292378()
{
  type metadata accessor for ActivityFeedLoadMoreCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9848, type metadata accessor for ActivityFeedLoadMoreCollectionViewCell, &unk_24E371CB4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F20, &unk_24E374740);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E29244C()
{
  type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  sub_24E298484(&qword_27F1E98B8, type metadata accessor for PlayerProfileInfoBarCollectionViewCell, &unk_24E38B134);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CD8, &unk_24E37D618);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

BOOL sub_24E292520()
{
  type metadata accessor for ActivityFeedAddFriendsCollectionViewCell(0);
  sub_24E298484(&qword_27F1E9840, type metadata accessor for ActivityFeedAddFriendsCollectionViewCell, &unk_24E370048);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0, &unk_24E37E500);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90, &unk_24E369E90);
  return v0;
}

uint64_t sub_24E2925F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DetailCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9890, type metadata accessor for DetailCollectionViewCell, &unk_24E385588);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0, &qword_24E3855F0);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2929F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NoFriendsCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9878, type metadata accessor for NoFriendsCollectionViewCell, &unk_24E3812E8);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F28, &qword_24E385200);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E292DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SmallLockupCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9880, type metadata accessor for SmallLockupCollectionViewCell, &unk_24E382FCC);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460, &qword_24E3709D8);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2931E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for JetDashboardCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9888, type metadata accessor for JetDashboardCollectionViewCell, &unk_24E38386C);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C50, &qword_24E36F268);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2935D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NicknameFieldCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E98C0, type metadata accessor for NicknameFieldCollectionViewCell, &unk_24E38C864);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5B0, &qword_24E38C8D0);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2939D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = sub_24E347638();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = ObjectType;
  v26 = sub_24E298484(&qword_27F1E9870, type metadata accessor for ContinuePlayingCollectionViewCell, &unk_24E37FDE0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  sub_24E347128();

  if (!v28)
  {
    return sub_24DF8BFF4(&v27, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v27, v29);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v15 + 16))(v6, v17, v14);
    v19 = v22;
    v18 = v23;
    (*(v22 + 104))(v6, *MEMORY[0x277D21E10], v23);
    sub_24E3473B8();

    (*(v19 + 8))(v6, v18);
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

uint64_t sub_24E293DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = sub_24E347638();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = ObjectType;
  v26 = sub_24E298484(&qword_27F1E9898, type metadata accessor for SmallPlayerCardCollectionViewCell, &unk_24E385730);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  sub_24E347128();

  if (!v28)
  {
    return sub_24DF8BFF4(&v27, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v27, v29);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v15 + 16))(v6, v17, v14);
    v19 = v22;
    v18 = v23;
    (*(v22 + 104))(v6, *MEMORY[0x277D21E10], v23);
    sub_24E3473B8();

    (*(v19 + 8))(v6, v18);
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

uint64_t sub_24E2941D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9868, type metadata accessor for TitledParagraphCollectionViewCell, &unk_24E37DFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2820, &qword_24E3731D0);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2945C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AchievementsLinkCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E98A8, type metadata accessor for AchievementsLinkCollectionViewCell, &unk_24E387300);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFA8, &qword_24E387320);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2949C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DashboardSidebarCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E98A0, type metadata accessor for DashboardSidebarCollectionViewCell, &unk_24E385FC0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2988, &qword_24E3736B8);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E294DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E98B0, type metadata accessor for LargePlayerLockupCollectionViewCell, &unk_24E38A750);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20, &qword_24E38A770);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2951B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = sub_24E347638();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = ObjectType;
  v26 = sub_24E298484(&qword_27F1E9838, type metadata accessor for SmallFriendLockupCollectionViewCell, &unk_24E36CCE0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620, &qword_24E383A20);
  sub_24E347128();

  if (!v28)
  {
    return sub_24DF8BFF4(&v27, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v27, v29);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v15 + 16))(v6, v17, v14);
    v19 = v22;
    v18 = v23;
    (*(v22 + 104))(v6, *MEMORY[0x277D21E10], v23);
    sub_24E3473B8();

    (*(v19 + 8))(v6, v18);
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

uint64_t sub_24E2955B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActivityFeedHeaderCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9850, type metadata accessor for ActivityFeedHeaderCollectionViewCell, &unk_24E375AC4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5180, &qword_24E37ADA8);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E2959A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OnboardingKitButtonCollectionViewCell();
  v25 = sub_24E298484(&qword_27F1E9858, type metadata accessor for OnboardingKitButtonCollectionViewCell, &unk_24E37C994);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5830, &qword_24E37C9B8);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E295DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PlayerProfileHeaderCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9860, type metadata accessor for PlayerProfileHeaderCollectionViewCell, &unk_24E37DB74);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78, &qword_24E37DB90);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E296198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MoreCollectionViewCell = type metadata accessor for ActivityFeedLoadMoreCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9848, type metadata accessor for ActivityFeedLoadMoreCollectionViewCell, &unk_24E371CB4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F20, &unk_24E374740);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E296590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E98B8, type metadata accessor for PlayerProfileInfoBarCollectionViewCell, &unk_24E38B134);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CD8, &unk_24E37D618);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E296988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_24E347638();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActivityFeedAddFriendsCollectionViewCell(0);
  v25 = sub_24E298484(&qword_27F1E9840, type metadata accessor for ActivityFeedAddFriendsCollectionViewCell, &unk_24E370048);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0, &unk_24E37E500);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E05F70C();
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v14 + 16))(v5, v16, v13);
    v18 = v21;
    v17 = v22;
    (*(v21 + 104))(v5, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v18 + 8))(v5, v17);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

void sub_24E296D98()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_20_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E296DE8()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_20_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E296E38()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_20_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E296E88()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_20_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E296EE0()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_19_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E296F30()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_19_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E296F80()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_19_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E296FD0()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_19_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297024()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_18_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297074()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_18_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E2970C4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_18_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297114()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_18_41();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E29716C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_17_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E2971BC()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_17_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E29720C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_17_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E29725C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_17_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E2972B4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_16_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297304()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_16_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297354()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_16_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E2973A4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_16_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E2973FC()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_15_40();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E29744C()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_15_40();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E29749C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_15_40();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E2974EC()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_15_40();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E29753C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24E347188();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v15 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  sub_24E347158();
  (*(v1 + 80))(v14, v7, v5, v3, v1);
  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_18();
}

void sub_24E297704()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_13_54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297754()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_13_54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E2977A4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_13_54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E2977F4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_13_54();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297860()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_12_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E2978B0()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_12_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297900()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_12_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297950()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_12_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E2979A8()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_11_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E2979F8()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_11_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297A48()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_11_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297A98()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_11_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297AF0()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297B40()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297B90()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297BE0()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_10_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297C30()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_9_61();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297C80()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_9_61();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297CD0()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_9_61();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297D20()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_9_61();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297D74()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_8_77();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297DC4()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_8_77();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297E14()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_8_77();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297E64()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_8_77();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E297ED4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_7_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E297F24()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_7_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E297F74()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_7_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E297FC4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_7_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E29801C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_6_90();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E29806C()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_6_90();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E2980BC()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_6_90();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E29810C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_6_90();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

uint64_t sub_24E29815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_24E347248();
}

void sub_24E2981F4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_24_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E298244()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_24_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E298294()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_24_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E2982E4()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_24_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E29833C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_23_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E29838C()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_23_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E2983DC()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_23_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E29842C()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_23_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

uint64_t sub_24E298484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E2984CC()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_4_96();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E29851C()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_4_96();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E298588()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_4_96();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E2985D8()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_4_96();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E298628()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_22_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E298678()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_22_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E2986C8()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_22_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E298718()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_22_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

void sub_24E298768()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_21_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E28F284();
}

void sub_24E2987B8()
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_1_133();
  OUTLINED_FUNCTION_21_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_8();

  sub_24E28FE94();
}

void sub_24E298808()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_21_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E290B2C();
}

void sub_24E298858()
{
  OUTLINED_FUNCTION_3_112();
  OUTLINED_FUNCTION_21_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_114();

  sub_24E29171C();
}

uint64_t OUTLINED_FUNCTION_30_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_12()
{

  return sub_24E347188();
}

double OUTLINED_FUNCTION_37_10(uint64_t a1)
{

  sub_24E347158();
  return result;
}

uint64_t sub_24E298BF8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_24E298C38(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPoint.Model(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_24E09040C(v12, v7);
      v14 = *(v7 + 5);
      if (v14)
      {
        if (!v11)
        {
          goto LABEL_51;
        }

        v15 = *(v7 + 4) == v10 && v14 == v11;
        if (!v15 && (sub_24E348C08() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v11)
      {
        goto LABEL_51;
      }

      v16 = *(v7 + 7);
      v17 = *(a1 + 7);
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_51;
        }

        v18 = *(v7 + 6) == *(a1 + 6) && v16 == v17;
        if (!v18 && (sub_24E348C08() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v17)
      {
        goto LABEL_51;
      }

      if (*v7 == *a1)
      {
        v19 = *(v7 + 1);
        v20 = *(a1 + 1);
        v21 = a1[24];
        if (v7[24])
        {
          v22 = *(v7 + 2);
          v23 = *(a1 + 2);
          if (v7[24] == 1)
          {
            if (v21 == 1)
            {
              v24 = v19 == v20 && v22 == v23;
              if (v24 || (sub_24E348C08() & 1) != 0)
              {
LABEL_54:
                sub_24E08FBA8(v7);
                return v9;
              }
            }
          }

          else if (v19 | v22)
          {
            if (v19 ^ 1 | v22)
            {
              if (v21 != 2 || v20 != 2)
              {
                goto LABEL_51;
              }
            }

            else if (v21 != 2 || v20 != 1)
            {
              goto LABEL_51;
            }

            if (!v23)
            {
              goto LABEL_54;
            }
          }

          else if (v21 == 2 && !(v23 | v20))
          {
            goto LABEL_54;
          }
        }

        else if (!a1[24])
        {
          sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
          if (sub_24E348628())
          {
            goto LABEL_54;
          }
        }
      }

LABEL_51:
      sub_24E08FBA8(v7);
      ++v9;
      v12 += v13;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t sub_24E298EA0()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  [v2 isActive];

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 statusBarOrientation];

  if (!UIInterfaceOrientationIsPortrait(v4))
  {
    goto LABEL_5;
  }

  v5 = [v1 shared];
  v6 = [v5 window];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 traitCollection];

  v8 = [v7 horizontalSizeClass];
  if (v8 == 1)
  {
    LODWORD(v6) = *v0 - 3 < 3;
  }

  else
  {
LABEL_5:
    LODWORD(v6) = 0;
  }

LABEL_6:
  v9 = [v1 shared];
  v10 = [v9 location];

  switch(v10)
  {
    case 1uLL:
      if (v6)
      {
        goto LABEL_20;
      }

      result = sub_24E346DD8();
      break;
    case 2uLL:
      if (v6)
      {
        goto LABEL_16;
      }

      result = MEMORY[0x282133CF0]();
      break;
    case 3uLL:
      if (v6)
      {
LABEL_16:

        result = sub_24E346E18();
      }

      else
      {

        result = sub_24E346DF8();
      }

      break;
    default:
      if (v6)
      {
LABEL_20:

        result = MEMORY[0x282133D10]();
      }

      else
      {

        result = sub_24E346DC8();
      }

      break;
  }

  return result;
}

uint64_t sub_24E299104(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24E29DE70;
  *(v5 + 24) = v4;

  static GKLocalPlayer.loadHighlights(handler:)(sub_24E29DEB0, v5);
}

uint64_t sub_24E2991D8(uint64_t a1)
{
  result = sub_24E346378();
  qword_27F20B388 = result;
  return result;
}

uint64_t sub_24E2991F8()
{
  result = sub_24E346278();
  qword_27F20B390 = result;
  return result;
}

BOOL sub_24E299218()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 location];

  return (v1 & 0xFFFFFFFFFFFFFFFELL) != 2;
}

uint64_t sub_24E299278(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 4) == *(a2 + 4) && v4 == v5;
    if (!v6 && (sub_24E348C08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 7);
  v8 = *(a2 + 7);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(a1 + 6) == *(a2 + 6) && v7 == v8;
    if (!v9 && (sub_24E348C08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v10 = *(a1 + 1);
  v11 = *(a2 + 1);
  v12 = a2[24];
  if (!a1[24])
  {
    if (!a2[24])
    {
      sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
      return sub_24E348628() & 1;
    }

    return 0;
  }

  v13 = *(a1 + 2);
  v14 = *(a2 + 2);
  if (a1[24] == 1)
  {
    if (v12 == 1)
    {
      if (v10 != v11 || v13 != v14)
      {

        return sub_24E348C08();
      }

      return 1;
    }

    return 0;
  }

  if (v10 | v13)
  {
    if (v10 ^ 1 | v13)
    {
      if (v12 != 2 || v11 != 2)
      {
        return 0;
      }
    }

    else if (v12 != 2 || v11 != 1)
    {
      return 0;
    }

    return !v14;
  }

  return v12 == 2 && (v14 | v11) == 0;
}

uint64_t sub_24E29940C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
      return sub_24E348628() & 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }
      }

      else if (a6 != 2 || a4 != 1)
      {
        return 0;
      }

      if (a5)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a5 | a4)
    {
      return 0;
    }

    return 1;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_24E348C08();
}

void sub_24E29953C()
{
  v0 = [objc_opt_self() sharedTheme];
  if (!v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [v0 eventIconImage];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_24E2995B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();
}

uint64_t sub_24E299630(uint64_t a1)
{
  v4 = type metadata accessor for AccessPoint.Model(0);
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E09040C(a1, v2);
  v6 = v1;
  OUTLINED_FUNCTION_11_3();
  sub_24E344E68();
  return sub_24E08FBA8(a1);
}

uint64_t sub_24E2996E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E299754(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  result = sub_24E344E68();
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_highlightIndex] = 0;
  return result;
}

uint64_t sub_24E2997D0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E2996E0();
  v5 = sub_24E298C38(a1, v4);
  v7 = v6;

  if ((v7 & 1) != 0 || (v8 = *(sub_24E2996E0() + 16), , v5 >= v8 - 1))
  {
    v15 = type metadata accessor for AccessPoint.Model(0);
    v13 = a2;
    v14 = 1;
    goto LABEL_7;
  }

  result = sub_24E2996E0();
  if (v5 < -1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = v5 + 1;
  if ((v5 + 1) >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = type metadata accessor for AccessPoint.Model(0);
  sub_24E09040C(v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v11, a2);

  v13 = a2;
  v14 = 0;
  v15 = v12;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

void sub_24E29991C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A20, &qword_24E38A4E8);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A28, &qword_24E38A4F0);
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v17 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint____lazy_storage___combineWith;
  swift_beginAccess();
  sub_24DF8F3A8(v2 + v17, v16, &qword_27F1E9A28, &qword_24E38A4F0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9960, &qword_24E38A2D8);
  OUTLINED_FUNCTION_21_33(v16);
  if (v19)
  {
    sub_24DFA9298(v16, &qword_27F1E9A28, &qword_24E38A4F0);
    v31 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_hideCountPublisher;
    v32 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_activePublisher;
    v30 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_authStatePublisher;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A30, &qword_24E38A4F8);
    sub_24E344E38();
    swift_endAccess();
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A38, &qword_24E38A500);
    v29 = v5;
    v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A40, &qword_24E38A508);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A48, &qword_24E38A510);
    v28[0] = v4;
    v28[1] = v20;
    v21 = MEMORY[0x277CBCBE0];
    sub_24DFB4C28(&qword_27F1E9A50, &qword_27F1E9A38, &qword_24E38A500, MEMORY[0x277CBCBE0]);
    OUTLINED_FUNCTION_8_78();
    sub_24DFB4C28(v22, &qword_27F1E9A40, &qword_24E38A508, v23);
    sub_24DFB4C28(&qword_27F1E9A60, &qword_27F1E9A48, &qword_24E38A510, v21);
    sub_24DFB4C28(&qword_27F1E9A68, &qword_27F1E9A20, &qword_24E38A4E8, MEMORY[0x277CBCEC8]);
    v24 = v28[0];
    v25 = v29;
    sub_24E344EA8();
    (*(v7 + 8))(v1, v25);
    OUTLINED_FUNCTION_22_0();
    (*(v26 + 16))(v13, v24, v18);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    swift_beginAccess();
    sub_24E29DEB8(v13, v2 + v17);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
    (*(v27 + 32))(v4, v16, v18);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E299CF0()
{
  OUTLINED_FUNCTION_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99A8, &qword_24E38A4A0);
  OUTLINED_FUNCTION_0_14();
  v56 = v0;
  v57 = v1;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_3();
  v54 = v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99B0, &qword_24E38A4A8);
  OUTLINED_FUNCTION_0_14();
  v61 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v53 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99B8, &unk_24E38A4B0);
  OUTLINED_FUNCTION_0_14();
  v59 = v7;
  v60 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v55 = v10;
  OUTLINED_FUNCTION_18_1();
  v11 = sub_24E347458();
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v13 = sub_24E347478();
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v48 = v16;
  v49 = v15;
  v52 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v50 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v63 = MEMORY[0x277D84F90];
  v22 = [objc_opt_self() shared];
  [v22 showHighlights];

  v23 = [objc_opt_self() currentGame];
  [v23 gameInfo];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5D90, &qword_24E37D938);
  swift_allocObject();
  v62 = sub_24E344E18();
  sub_24DFB4C28(&qword_27F1E5D98, &qword_27F1E5D90, &qword_24E37D938, MEMORY[0x277CBCEB0]);
  v24 = sub_24E344E88();

  v62 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99C0, &qword_24E38A4C0);
  OUTLINED_FUNCTION_2_115();
  sub_24DFB4C28(v25, &qword_27F1E99C0, &qword_24E38A4C0, v26);
  v27 = sub_24E344EE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v29 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6F50737365636361;
  *(inited + 56) = 0xEB00000000746E69;
  *(inited + 72) = v29;
  *(inited + 80) = 0x6973736572706D69;
  v30 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v30;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v29;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v29;
  *(inited + 184) = 0xE400000000000000;
  strcpy((inited + 192), "Access Point");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v31 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v31);
  sub_24E347488();
  v51 = v27;
  v62 = v27;
  sub_24E344D98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99D0, &qword_24E38A4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E99D8, &qword_24E38A4D0);
  v32 = MEMORY[0x277CBCC78];
  sub_24DFB4C28(&qword_27F1E99E0, &qword_27F1E99D0, &qword_24E38A4C8, MEMORY[0x277CBCC78]);
  v33 = v21;
  sub_24DFB4C28(&qword_27F1E99E8, &qword_27F1E99D8, &qword_24E38A4D0, MEMORY[0x277CBCD18]);
  v34 = v54;
  v36 = v48;
  v35 = v49;
  sub_24E344F48();
  sub_24DFB4C28(&qword_27F1E99F0, &qword_27F1E99A8, &qword_24E38A4A0, MEMORY[0x277CBCCE0]);
  v37 = v53;
  v38 = v56;
  sub_24E344ED8();
  (*(v57 + 8))(v34, v38);
  v39 = v50;
  (*(v36 + 16))(v50, v33, v35);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = swift_allocObject();
  (*(v36 + 32))(v41 + v40, v39, v35);
  type metadata accessor for AccessPoint.Model(0);
  sub_24DFB4C28(&qword_27F1E99F8, &qword_27F1E99B0, &qword_24E38A4A8, MEMORY[0x277CBCC58]);
  v42 = v55;
  v43 = v58;
  sub_24E344E98();

  (*(v61 + 8))(v37, v43);
  sub_24DFB4C28(&qword_27F1E9A00, &qword_27F1E99B8, &unk_24E38A4B0, MEMORY[0x277CBCB10]);
  v44 = v59;
  v45 = sub_24E344EE8();
  (*(v60 + 8))(v42, v44);
  v62 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A08, &qword_24E38A4D8);
  sub_24DFB4C28(&qword_27F1E9A10, &qword_27F1E9A08, &qword_24E38A4D8, v32);
  sub_24E344E88();

  MEMORY[0x25303EA30](v46);
  if (*(v63 + 16) >= *(v63 + 24) >> 1)
  {
    sub_24E347F48();
  }

  sub_24E347F88();

  (*(v36 + 8))(v33, v35);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E29A5B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3A08, &qword_24E38A4E0);
  sub_24DFB4C28(&qword_27F1E9A18, &qword_27F1E3A08, &qword_24E38A4E0, MEMORY[0x277D83970]);
  return sub_24E347EB8();
}

id sub_24E29A64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 2)
  {
    v12 = *(a1 + 16);
    v5 = type metadata accessor for AccessPoint.Model(0);
    v6 = *(v5 + 48);
    v7 = sub_24E3474B8();
    (*(*(v7 - 8) + 16))(a3 + v6, a2, v7);
    __swift_storeEnumTagSinglePayload(a3 + v6, 0, 1, v7);
    v8 = sub_24E347CF8();
    *a3 = 0;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 88) = vdupq_n_s64(0x404A000000000000uLL);
    *(a3 + 104) = v8;
    *(a3 + 112) = v9;
    *(a3 + 120) = 0;
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);

    return v12;
  }

  else
  {
    v11 = type metadata accessor for AccessPoint.Model(0);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
  }
}

void sub_24E29A7AC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A78, &qword_24E38A690);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A80, &qword_24E38A698);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  sub_24E299754(MEMORY[0x277D84F90]);
  sub_24E299CF0();
  if (*(v14 + 16))
  {
    v15 = v14;
    v45 = v13;
    v16 = v8;
    v17 = *(v14 + 32);

    v18 = sub_24E25C318(1, v15);
    v22 = (v21 >> 1) - v20;
    if (v21 >> 1 == v20)
    {
      swift_unknownObjectRelease();
LABEL_8:
      v46 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A88, &qword_24E38A6A0);
      OUTLINED_FUNCTION_2_115();
      sub_24DFB4C28(v34, &qword_27F1E9A88, &qword_24E38A6A0, v35);
      sub_24E344F08();
      OUTLINED_FUNCTION_21_2();
      *(swift_allocObject() + 16) = v1;
      sub_24DFB4C28(&qword_27F1E9AB0, &qword_27F1E9A78, &qword_24E38A690, MEMORY[0x277CBCCD0]);
      v36 = v1;
      OUTLINED_FUNCTION_4_35();
      sub_24E344F38();
      OUTLINED_FUNCTION_22_28();
      (*(v4 + 8))(v7, v2);
      OUTLINED_FUNCTION_10_61(v36 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_sinks);
      sub_24E344DA8();
      swift_endAccess();

      OUTLINED_FUNCTION_18();
      return;
    }

    if ((v21 >> 1) > v20)
    {
      v23 = v19;
      v24 = v20;
      v37[1] = v18;
      v38 = v7;
      v39 = v1;
      v40 = v4;
      v41 = v2;
      OUTLINED_FUNCTION_2_115();
      v29 = sub_24DFB4C28(v25, v26, v27, v28);
      v43 = (v10 + 8);
      v44 = v29;
      v30 = (v23 + 8 * v24);
      v42 = v16;
      do
      {
        v31 = *v30++;
        v46 = v17;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A88, &qword_24E38A6A0);
        v46 = sub_24E344EE8();
        v47 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A98, qword_24E38A6A8);
        sub_24DFB4C28(&qword_27F1E9AA0, &qword_27F1E9A98, qword_24E38A6A8, MEMORY[0x277CBCC78]);
        v32 = v45;
        sub_24E344EF8();

        sub_24DFB4C28(&qword_27F1E9AA8, &qword_27F1E9A80, &qword_24E38A698, MEMORY[0x277CBCB40]);
        v33 = v42;
        v17 = sub_24E344E88();

        (*v43)(v32, v33);
        --v22;
      }

      while (v22);
      swift_unknownObjectRelease();
      v4 = v40;
      v2 = v41;
      v7 = v38;
      v1 = v39;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E29ABEC()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A48, &qword_24E38A510);
  OUTLINED_FUNCTION_0_14();
  v91 = v4;
  v92 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v90 = v6;
  OUTLINED_FUNCTION_18_1();
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v88 = v8;
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v83 = v10 - v9;
  v11 = OUTLINED_FUNCTION_18_1();
  v12 = type metadata accessor for AccessPoint.Model(v11);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v87 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v84 = v78 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9948, &qword_24E38A2D0);
  OUTLINED_FUNCTION_0_14();
  v81 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  v79 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9920, &qword_24E38A2C8);
  OUTLINED_FUNCTION_0_14();
  v94 = v22;
  v95 = v21;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = v78 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A30, &qword_24E38A4F8);
  OUTLINED_FUNCTION_0_14();
  v85 = v27;
  v86 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v31);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_14();
  v33 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_observations] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_observationsWhenActive] = v33;
  v34 = &v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_placeholder];
  sub_24E3474B8();
  OUTLINED_FUNCTION_11_48();
  v35 = sub_24E347CF8();
  *v34 = 4;
  *(v34 + 8) = xmmword_24E38A290;
  *(v34 + 24) = 1;
  *(v34 + 32) = 0xD000000000000012;
  *(v34 + 40) = 0x800000024E3B0570;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  v93 = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = v36;
  *(v34 + 104) = v35;
  *(v34 + 112) = v37;
  *(v34 + 120) = 0;
  sub_24E29DF28(v1, v34 + *(v12 + 48));
  v38 = &v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_signIn];
  OUTLINED_FUNCTION_11_48();
  sub_24E29953C();
  v39 = sub_24E347CF8();
  OUTLINED_FUNCTION_7_65(v39, v40);
  v78[1] = v12;
  sub_24E29DF28(v1, &v38[v41]);
  v42 = &v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_disabled];
  OUTLINED_FUNCTION_11_48();
  sub_24E29953C();
  v43 = sub_24E347CF8();
  OUTLINED_FUNCTION_7_65(v43, v44);
  sub_24E29DF28(v1, &v42[v45]);
  v46 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint__models;
  v97 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9910, &qword_24E38A2C0);
  sub_24E344E28();
  v85[4](&v2[v46], v30, v86);
  v47 = objc_opt_self();
  v48 = [v47 shared];
  swift_getKeyPath();
  sub_24E3431F8();

  v49 = MEMORY[0x277CC9E08];
  v50 = sub_24DFB4C28(&qword_27F1E9928, &qword_27F1E9920, &qword_24E38A2C8, MEMORY[0x277CC9E08]);
  v51 = v95;
  v86 = v50;
  sub_24E344F28();
  v52 = *(v94 + 8);
  v93.i64[0] = v25;
  v85 = v52;
  v82 = v94 + 8;
  (v52)(v25, v51);
  v53 = [v47 shared];
  swift_getKeyPath();
  sub_24E3431F8();

  v54 = [objc_opt_self() local];
  swift_getKeyPath();
  v55 = v79;
  sub_24E3431F8();

  sub_24DFB4C28(&qword_27F1E9950, &qword_27F1E9948, &qword_24E38A2D0, v49);
  sub_24E29DFA4();
  v56 = v80;
  sub_24E344F28();
  (*(v81 + 8))(v55, v56);
  v57 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint____lazy_storage___combineWith;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9960, &qword_24E38A2D8);
  __swift_storeEnumTagSinglePayload(&v2[v57], 1, 1, v58);
  v59 = [v47 shared];
  swift_getKeyPath();
  v60 = v83;
  sub_24E3431F8();

  v61 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_tracker;
  sub_24E3477D8();
  *&v2[v61] = sub_24E3477C8();
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_sinks] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_highlightIndex] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint_timer] = 0;
  v62 = v84;
  sub_24E09040C(v34, v84);
  OUTLINED_FUNCTION_10_61(&v2[OBJC_IVAR____TtC12GameCenterUI11AccessPoint__model]);
  sub_24E09040C(v62, v87);
  sub_24E344E28();
  sub_24E08FBA8(v62);
  swift_endAccess();
  v63 = type metadata accessor for AccessPoint(0);
  v96.receiver = v2;
  v96.super_class = v63;
  v64 = objc_msgSendSuper2(&v96, sel_init);
  sub_24E343C98();
  v65 = sub_24E343F78();
  v66 = sub_24E348248();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_24DE53000, v65, v66, "setting up sinks", v67, 2u);
    MEMORY[0x253040EE0](v67, -1, -1);
  }

  (*(v88 + 8))(v60, v89);
  v69 = v90;
  v68 = v91;
  v70 = v92;
  (*(v91 + 16))(v90, v64 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_authStatePublisher, v92);
  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = v64;
  sub_24DFB4C28(&qword_27F1E9A60, &qword_27F1E9A48, &qword_24E38A510, MEMORY[0x277CBCBE0]);
  v71 = v64;
  OUTLINED_FUNCTION_4_35();
  sub_24E344F38();
  OUTLINED_FUNCTION_22_28();
  (*(v68 + 8))(v69, v70);
  v72 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_sinks;
  OUTLINED_FUNCTION_10_61(v71 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_sinks);
  sub_24E344DA8();
  swift_endAccess();

  v73 = [v47 shared];
  swift_getKeyPath();
  v74 = v93.i64[0];
  sub_24E3431F8();

  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = v71;
  v75 = v71;
  OUTLINED_FUNCTION_4_35();
  v76 = v95;
  sub_24E344F38();
  OUTLINED_FUNCTION_22_28();
  v77 = v85;
  (v85)(v74, v76);
  OUTLINED_FUNCTION_10_61(v71 + v72);
  sub_24E344DA8();
  swift_endAccess();

  sub_24E29BD54();
  (*(v94 + 16))(v74, v75 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_showHighlightsPublisher, v76);
  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = v75;
  OUTLINED_FUNCTION_4_35();
  sub_24E344F38();
  OUTLINED_FUNCTION_22_28();
  (v77)(v74, v76);
  OUTLINED_FUNCTION_10_61(v71 + v72);
  sub_24E344DA8();
  swift_endAccess();

  OUTLINED_FUNCTION_18();
}

void sub_24E29B674(uint64_t *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_24E343C98();
  v7 = sub_24E343F78();
  v8 = sub_24E348248();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_24DE53000, v7, v8, "authState: %lu", v9, 0xCu);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_24E29BC04(v6);
}

void sub_24E29B7D4(unsigned __int8 *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_24E343C98();
  v7 = sub_24E343F78();
  v8 = sub_24E348248();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_24DE53000, v7, v8, "isActive: %{BOOL}d", v9, 8u);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v11 = sub_24E347CF8();
  v13 = v12;
  v14 = sub_24E347CF8();
  sub_24E08FD58(v11, v13, v14, v15, v10);

  if ((v6 & 1) == 0)
  {
    sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
    static GKLocalPlayer.dismissAccessPointInOverlay()();
  }
}

void sub_24E29B9D8(_BYTE *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_24E347CF8();
  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v11 = sub_24E347CF8();
  sub_24E29E020(v11, v12, v7, v9, v10);

  sub_24E343C98();
  v13 = sub_24E343F78();
  v14 = sub_24E348248();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v6;
    _os_log_impl(&dword_24DE53000, v13, v14, "showHighlights: %{BOOL}d", v15, 8u);
    MEMORY[0x253040EE0](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v16 = [objc_opt_self() local];
  v17 = [v16 authenticationState];

  sub_24E29BC04(v17);
}

void sub_24E29BC04(uint64_t a1)
{
  v3 = type metadata accessor for AccessPoint.Model(0);
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  if (a1 == 3)
  {
    v11 = [objc_opt_self() shared];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v11 isGameCenterDisabled];

    v14 = &OBJC_IVAR____TtC12GameCenterUI11AccessPoint_disabled;
    if (!v13)
    {
      v14 = &OBJC_IVAR____TtC12GameCenterUI11AccessPoint_signIn;
    }

    sub_24E09040C(v1 + *v14, v10);
    v15 = v10;
LABEL_11:
    sub_24E299630(v15);
    sub_24E299754(MEMORY[0x277D84F90]);
    return;
  }

  if (a1 != 2)
  {
    sub_24E09040C(v1 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_placeholder, v7);
    v15 = v7;
    goto LABEL_11;
  }

  sub_24E29A7AC();
}

uint64_t sub_24E29BD54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9960, &qword_24E38A2D8);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_9();
  sub_24E29991C();
  OUTLINED_FUNCTION_21_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24E29DDE4;
  *(v7 + 24) = v6;
  sub_24DFB4C28(&qword_27F1E99A0, &qword_27F1E9960, &qword_24E38A2D8, MEMORY[0x277CBCB00]);
  v8 = v0;
  sub_24E344F38();

  (*(v4 + 8))(v1, v2);
  swift_beginAccess();
  sub_24E344DA8();
  swift_endAccess();
}

void sub_24E29BF04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) != 0 && !a2 && (a3 == 3 || a3 == 2 && *(a4 + 16)))
  {
    v4 = objc_opt_self();
    v5 = [v4 shared];
    [v5 setTimeLastShown_];

    sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
    static GKLocalPlayer.presentAccessPointInOverlay(returnToForeground:)(0);
    v6 = 1;
  }

  else
  {
    sub_24E29C050();
    v4 = objc_opt_self();
    v6 = 0;
  }

  v7 = [v4 shared];
  [v7 setVisible_];
}

void sub_24E29C050()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_timer;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_timer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_24E29C0AC()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_24E347528();
  OUTLINED_FUNCTION_0_14();
  v46 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v42 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v44 = &v39 - v7;
  OUTLINED_FUNCTION_18_1();
  v45 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v43 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v13);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for AccessPoint.Model(0);
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  v24 = sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v29 = v28 - v27;
  v30 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_highlightIndex);
  v31 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_18();
      return;
    }

    v40 = v26;
    v41 = v1;
    v32 = sub_24E2996E0();
    if (v31 < *(v32 + 16))
    {
      sub_24E09040C(v32 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, v23);

      sub_24DF8F3A8(v23 + *(v17 + 48), v16, &qword_27F1E58A0, &unk_24E36BF80);
      sub_24E08FBA8(v23);
      OUTLINED_FUNCTION_21_33(v16);
      if (v33)
      {
        sub_24DFA9298(v16, &qword_27F1E58A0, &unk_24E36BF80);
      }

      else
      {
        v34 = v40;
        (*(v40 + 32))(v29, v16, v24);
        v39 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_tracker);
        sub_24E343358();
        v35 = v42;
        sub_24E347518();
        v36 = v44;
        sub_24E347508();
        v37 = *(v46 + 8);
        v38 = v41;
        v37(v35, v41);
        sub_24E3477A8();
        v37(v36, v38);
        (*(v43 + 8))(v12, v45);
        (*(v34 + 8))(v29, v24);
      }

      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_24E29C460()
{
  OUTLINED_FUNCTION_32();
  sub_24E347528();
  OUTLINED_FUNCTION_0_14();
  v45 = v3;
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v41 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - v7;
  OUTLINED_FUNCTION_18_1();
  v44 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v40 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for AccessPoint.Model(0);
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v20 = sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v39 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  sub_24E29C0AC();
  v26 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint_highlightIndex;
  v27 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_highlightIndex);
  v28 = *(sub_24E2996E0() + 16);

  if (v27 >= v28)
  {
    goto LABEL_7;
  }

  v29 = *(v0 + v26);
  v30 = sub_24E2996E0();
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v29 < *(v30 + 16))
  {
    sub_24E09040C(v30 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v29, v1);

    sub_24DF8F3A8(v1 + *(v16 + 48), v15, &qword_27F1E58A0, &unk_24E36BF80);
    sub_24E08FBA8(v1);
    OUTLINED_FUNCTION_21_33(v15);
    if (v31)
    {
      sub_24DFA9298(v15, &qword_27F1E58A0, &unk_24E36BF80);
    }

    else
    {
      v32 = v39;
      (*(v39 + 32))(v25, v15, v20);
      v33 = v40;
      sub_24E343358();
      v34 = v41;
      sub_24E347518();
      v35 = v43;
      sub_24E347508();
      v36 = *(v45 + 8);
      v37 = v34;
      v38 = v46;
      v36(v37, v46);
      sub_24E347798();
      v36(v35, v38);
      (*(v42 + 8))(v33, v44);
      (*(v32 + 8))(v25, v20);
    }

LABEL_7:
    OUTLINED_FUNCTION_18();
    return;
  }

  __break(1u);
}

void sub_24E29C824()
{
  OUTLINED_FUNCTION_32();
  v32 = v2;
  v33 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v35 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_14();
  v11 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v34 = swift_allocBox();
  v22 = v21;
  sub_24E347628();
  v36 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11AccessPoint_tracker);
  v37 = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  v23 = v33;
  (*(v9 + 8))(v1, v7);

  v24 = *(v13 + 8);
  v24(v20, v11);
  if (v23)
  {
    (*(v13 + 16))(v17, v22, v11);
    v36 = v32;
    v37 = v23;
    if (qword_27F1DDAB8 != -1)
    {
      swift_once();
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8828, &unk_24E386E80);
    __swift_project_value_buffer(v25, qword_27F1E8810);
    sub_24E3475B8();
    v24(v17, v11);
    (*(v13 + 40))(v22, v20, v11);
  }

  v26 = sub_24E348098();
  v27 = v35;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v26);
  sub_24E348068();
  v28 = v34;

  v29 = sub_24E348058();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  sub_24DFC8994(0, 0, v27, &unk_24E38A490, v30);

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E29CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a1;
  v5 = sub_24E347638();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = sub_24E347088();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = sub_24E347388();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_projectBox();
  sub_24E348068();
  v4[38] = sub_24E348058();
  v9 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E29CD58, v9, v8);
}

uint64_t sub_24E29CD58()
{

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v16 = v0[34];
  v17 = v0[31];
  v6 = v0[29];
  v14 = v0[37];
  v15 = v0[28];
  v18 = v0[27];
  (*(v2 + 16))(v1, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v8;
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6F50737365636361;
  *(inited + 56) = 0xEF65676150746E69;
  *(inited + 80) = sub_24E347CF8();
  *(inited + 88) = v10;
  *(inited + 96) = 0x6F50737365636361;
  *(inited + 104) = 0xEB00000000746E69;
  *(inited + 120) = v9;
  *(inited + 128) = 0x707954746E657665;
  *(inited + 168) = v9;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 0x6973736572706D69;
  *(inited + 152) = 0xEB00000000736E6FLL;
  sub_24E347C28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E60, &qword_24E374538);
  sub_24E3479D8();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3479A8();
  sub_24E1ACE80();
  sub_24E347078();
  swift_beginAccess();
  (*(v6 + 16))(v5, v14, v15);
  v11 = sub_24E347378();
  (*(v6 + 8))(v5, v15);
  (*(v4 + 8))(v3, v17);
  (*(v2 + 8))(v1, v16);
  *v18 = v11;

  v12 = v0[1];

  return v12();
}

id sub_24E29D0CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessPoint(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E29D378(uint64_t a1)
{
  type metadata accessor for AccessPoint.Model(319);
  if (v1 <= 0x3F)
  {
    sub_24E29DA70(319, &qword_27F1E9900, type metadata accessor for AccessPoint.Model, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_24E29D77C(319, &qword_27F1E9908, &qword_27F1E9910, &qword_24E38A2C0, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_24E29D6F0(319, &qword_27F1E9918, &qword_27F1E9920, &qword_24E38A2C8, &qword_27F1E9928);
        if (v4 <= 0x3F)
        {
          sub_24E29D7DC(319, &qword_27F1E9930, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            sub_24E29D6F0(319, &qword_27F1E9940, &qword_27F1E9948, &qword_24E38A2D0, &qword_27F1E9950);
            if (v6 <= 0x3F)
            {
              sub_24E29D77C(319, &qword_27F1E9958, &qword_27F1E9960, &qword_24E38A2D8, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24E29D7DC(319, &qword_27F1E9968, MEMORY[0x277D839B0]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24E29D6F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_8_78();
    sub_24DFB4C28(a5, a3, a4, v9);
    v10 = sub_24E344D68();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_24E29D77C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_11_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24E29D7DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_24DF88A8C(255, &qword_27F1E9938, off_279666BD0);
    OUTLINED_FUNCTION_11_3();
    v4 = sub_24E348608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E29D870(uint64_t a1)
{
  sub_24E0ADC44();
  if (v1 <= 0x3F)
  {
    sub_24E29D98C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_24E29DA08(319);
        if (v4 <= 0x3F)
        {
          sub_24E29DA70(319, &qword_280BE0650, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E29D98C(uint64_t a1)
{
  if (!qword_27F1E9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9988, &qword_24E38A308);
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1E9980);
    }
  }
}

void sub_24E29DA08(uint64_t a1)
{
  if (!qword_27F1E9990)
  {
    sub_24DF88A8C(255, &qword_27F1E50D0, 0x277CCABB0);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E9990);
    }
  }
}

void sub_24E29DA70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_11_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI11AccessPointC5ModelV5BadgeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for AccessPoint.Model.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E29DBDC()
{
  result = qword_27F1E9998;
  if (!qword_27F1E9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9998);
  }

  return result;
}

uint64_t sub_24E29DC30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccessPoint(0);
  result = sub_24E344DD8();
  *a2 = result;
  return result;
}

uint64_t sub_24E29DCAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DF8CD84;

  return sub_24E29CB9C(a1, v4, v5, v6);
}

uint64_t sub_24E29DDB4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_24E29DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24E3474B8();
  OUTLINED_FUNCTION_4_5(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_24E29A64C(a1, v7, a2);
}

uint64_t sub_24E29DE70(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_24E29DEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9A28, &qword_24E38A4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E29DF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E29DFA4()
{
  result = qword_27F1E9A70;
  if (!qword_27F1E9A70)
  {
    type metadata accessor for GKAuthenticationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9A70);
  }

  return result;
}

void sub_24E29E020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_24E347CB8();

  v7 = sub_24E347CB8();
  [a5 reportEvent:v6 type:v7];
}

__n128 OUTLINED_FUNCTION_7_65(uint64_t a1, uint64_t a2)
{
  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  result = *(v4 - 160);
  *(v3 + 88) = result;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  *(v3 + 120) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_61(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_22_28()
{
}

uint64_t sub_24E29E194(uint64_t a1, uint64_t a2)
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v3 = 10.0;
  if (result)
  {
    v3 = 16.0;
  }

  qword_27F20B3F0 = *&v3;
  return result;
}

uint64_t sub_24E29E1C4(void *a1)
{
  v1 = a1;
  v2 = sub_24E29E1F8();

  return v2 & 1;
}

id sub_24E29E1F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E29E230(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_24E29E284(v3);
}

void sub_24E29E284(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24E1DA8D8();
}

id sub_24E29E2D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Shelf.Presentation(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  LODWORD(v6) = *(v9 + *(v6 + 32));
  OUTLINED_FUNCTION_5_101();
  sub_24E29F868(v9, v10);
  if (v6 == 1)
  {
    return sub_24E29E3B4(a1, v11, a3);
  }

  else
  {
    return sub_24E29E88C(a1, v11, a3);
  }
}

id sub_24E29E3B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20, &qword_24E38A770);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_62();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  OUTLINED_FUNCTION_11_49(v14);
  [objc_msgSend(a3 container)];
  OUTLINED_FUNCTION_7_10();
  swift_unknownObjectRelease();
  sub_24E29F804(v13, v4);
  OUTLINED_FUNCTION_2_116();
  v17 = sub_24E29F7BC(v15, v16, &unk_24E36AA30);
  OUTLINED_FUNCTION_14_43(v17);
  type metadata accessor for LargePlayerLockupView();
  v18 = OUTLINED_FUNCTION_12_50();
  v20 = v19;
  (*(v8 + 8))(v3, v6);
  v21 = objc_opt_self();
  v22 = [v21 absoluteDimension_];
  v23 = [v21 absoluteDimension_];
  v24 = objc_opt_self();
  v25 = [v24 sizeWithWidthDimension:v22 heightDimension:v23];

  v26 = [objc_opt_self() itemWithLayoutSize_];
  v27 = [v21 fractionalWidthDimension_];
  v28 = [v21 absoluteDimension_];
  v29 = [v24 sizeWithWidthDimension:v27 heightDimension:v28];

  LODWORD(v27) = GKIsXRUIIdiomShouldUsePadUI();
  v30 = objc_opt_self();
  v31 = v30;
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24E369990;
    *(v32 + 32) = v26;
    sub_24E1698C0();
    v33 = v26;
    v34 = sub_24E347EE8();

    v35 = [v31 horizontalGroupWithLayoutSize:v29 subitems:v34];

    v36 = objc_opt_self();
    if (qword_27F1DDBC0 != -1)
    {
      OUTLINED_FUNCTION_0_170(&qword_27F1DDBC0);
    }

    v37 = *&qword_27F20B3F0;
    v38 = [v36 fixedSpacing_];
  }

  else
  {
    v35 = [v30 horizontalGroupWithLayoutSize:v29 subitem:v26 count:6];
    v39 = objc_opt_self();
    if (qword_27F1DDBC0 != -1)
    {
      OUTLINED_FUNCTION_0_170(&qword_27F1DDBC0);
    }

    v38 = [v39 fixedSpacing_];
    v37 = 70.0;
  }

  v40 = v38;
  [v35 setInterItemSpacing_];

  v41 = [objc_opt_self() sectionWithGroup_];
  [v41 setInterGroupSpacing_];

  OUTLINED_FUNCTION_1_134();
  sub_24E29F868(v13, v42);
  return v41;
}

id sub_24E29E88C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20, &qword_24E38A770);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_62();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  OUTLINED_FUNCTION_11_49(v16);
  [objc_msgSend(a3 container)];
  OUTLINED_FUNCTION_7_10();
  swift_unknownObjectRelease();
  sub_24E29F804(v15, v4);
  OUTLINED_FUNCTION_2_116();
  v19 = sub_24E29F7BC(v17, v18, &unk_24E36AA30);
  OUTLINED_FUNCTION_14_43(v19);
  type metadata accessor for LargePlayerLockupView();
  OUTLINED_FUNCTION_12_50();
  OUTLINED_FUNCTION_7_10();
  (*(v10 + 8))(v3, v8);
  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension_];
  v22 = [v20 absoluteDimension_];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  v24 = [objc_opt_self() itemWithLayoutSize_];
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24E369990;
  *(v26 + 32) = v24;
  sub_24E1698C0();
  v27 = v24;
  v28 = sub_24E347EE8();

  v29 = [v25 verticalGroupWithLayoutSize:v23 subitems:v28];

  v30 = [objc_opt_self() sectionWithGroup_];
  [v30 setOrthogonalScrollingBehavior_];
  if (qword_27F1DDBC0 != -1)
  {
    OUTLINED_FUNCTION_0_170(&qword_27F1DDBC0);
  }

  [v30 setInterGroupSpacing_];

  OUTLINED_FUNCTION_1_134();
  sub_24E29F868(v15, v31);
  return v30;
}

double sub_24E29EC3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20, &qword_24E38A770);
  OUTLINED_FUNCTION_0_14();
  v39 = v9;
  v40 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v38[1] = OUTLINED_FUNCTION_7_66();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = v38 - v15;
  v16 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v24 = v38 - v23;
  sub_24E120A58(a2, v38 - v23);
  sub_24E120A58(a3, &v24[*(v21 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v25 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v25, qword_27F20BF00);
  swift_getObjectType();
  v26 = [a4 traitCollection];
  sub_24E0D03A0(v26, a4);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v27 = *(v20 + *(v16 + 24));
  OUTLINED_FUNCTION_5_101();
  sub_24E29F868(v20, v28);
  if (v27 == 1 && (GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    swift_getKeyPath();
    sub_24E347128();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
    v29 = v41;
    swift_dynamicCast();
    [objc_msgSend(a4 container)];
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    sub_24E29F804(v29, v13);
    OUTLINED_FUNCTION_2_116();
    sub_24E29F7BC(v34, v35, &unk_24E36AA30);
    sub_24E347158();
    type metadata accessor for LargePlayerLockupView();
    sub_24E1F8940(v31, v33, v4, a4);
    (*(v39 + 8))(v4, v40);
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    if (qword_27F1DDBC0 != -1)
    {
      OUTLINED_FUNCTION_0_170(&qword_27F1DDBC0);
    }

    sub_24E120AC8(v24);
    OUTLINED_FUNCTION_1_134();
    sub_24E29F868(v29, v36);
  }

  else
  {
    sub_24E120AC8(v24);
  }

  return 0.0;
}

double sub_24E29F0C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_24E120A58(a2, &v23 - v16);
  sub_24E120A58(a3, &v17[*(v14 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v18 = sub_24E3444F8();
  __swift_project_value_buffer(v18, qword_27F20B4E8);
  v19 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v21 = v20;

  (*(v9 + 8))(v13, v7);
  sub_24E120AC8(v17);
  return v21;
}

double sub_24E29F284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_24E120A58(a2, &v16 - v10);
  sub_24E120A58(a3, &v11[*(v8 + 56)]);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v4 = *MEMORY[0x277D75060];
  }

  else
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v12 = type metadata accessor for PlayerCardTheme(0);
    __swift_project_value_buffer(v12, qword_27F20BF00);
    v13 = [a4 traitCollection];
    sub_24E336638(v13, v14);
    OUTLINED_FUNCTION_7_10();
  }

  sub_24E120AC8(v11);
  return v4;
}

double sub_24E29F40C()
{
  if (qword_27F1DDA20 != -1)
  {
    swift_once();
  }

  return *&qword_27F20B160;
}

id sub_24E29F460(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E29F4EC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E29F580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargePlayerLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LargePlayerLockupCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E9AB8;
  if (!qword_27F1E9AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E29F67C(uint64_t a1)
{
  result = sub_24E29F7BC(&qword_27F1E9AC8, type metadata accessor for LargePlayerLockupCollectionViewCell, &unk_24E38A6E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E29F764(uint64_t a1)
{
  result = sub_24E29F7BC(&qword_27F1E6470, type metadata accessor for LargePlayerLockupCollectionViewCell, &unk_24E38A724);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E29F7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E29F804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargePlayerLockupData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E29F868(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_170(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_66()
{

  return type metadata accessor for LargePlayerLockupData(0);
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_12_50()
{

  return sub_24E1F8940(v3, v4, v1, v0);
}

double OUTLINED_FUNCTION_14_43(uint64_t a1)
{

  sub_24E347158();
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI21AccessoryToggleActionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI9AccessoryO(uint64_t a1)
{
  if ((*(a1 + 64) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 64) & 7;
  }
}

uint64_t sub_24E29FA10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 65))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 64);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E29FA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E29FA9C(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_24E29FAD8()
{
  result = qword_27F1E9AD0;
  if (!qword_27F1E9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9AD0);
  }

  return result;
}

uint64_t sub_24E29FB5C()
{
  sub_24E348D18();
  sub_24E348908();
  return sub_24E348D68();
}

BOOL sub_24E29FBA0(uint64_t a1, uint64_t a2)
{
  sub_24DF9D480(a1, &v75);
  v3 = sub_24DF9D480(a2, v84);
  switch(v83)
  {
    case 1:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_3_113();
      if (v20 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    case 2:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      if (v85 != 2)
      {

        goto LABEL_22;
      }

      v14 = *&v84[16];
      v15 = *&v84[24];
      if (v62 == *v84 && v63 == *&v84[8])
      {
      }

      else
      {
        v17 = sub_24E348C08();

        if ((v17 & 1) == 0)
        {

          goto LABEL_79;
        }
      }

      sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
      v33 = sub_24E348628();

      if ((v33 & 1) == 0)
      {
        goto LABEL_79;
      }

      v34 = v65 == v15;
      sub_24DF9D524(&v75);
      return v34;
    case 3:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_3_113();
      if (v18 != 3)
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_3_113();
      if (v11 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    case 5:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_3_113();
      if (v21 != 5)
      {
        goto LABEL_21;
      }

LABEL_5:
      if (a2)
      {
        if (!*&v84[8])
        {
          goto LABEL_37;
        }

        if (v62 == *v84 && a2 == *&v84[8])
        {
        }

        else
        {
          v13 = sub_24E348C08();

          if ((v13 & 1) == 0)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_75;
      }

      if (!*&v84[8])
      {
        goto LABEL_75;
      }

      goto LABEL_37;
    case 6:
      sub_24DF9D480(&v75, v72);
      if (v85 != 6)
      {
        sub_24DF8C95C(v73, &qword_27F1E0AF8, qword_24E36EDF8);
        goto LABEL_22;
      }

      v70[0] = v73[0];
      v70[1] = v73[1];
      v70[2] = v73[2];
      v71 = v74;
      v68[0] = *&v84[8];
      v68[1] = *&v84[24];
      v68[2] = *&v84[40];
      v69 = *&v84[56];
      if (v72[0] != v84[0])
      {
        OUTLINED_FUNCTION_25_19();
        sub_24DF8C95C(v22, v23, v24);
        OUTLINED_FUNCTION_25_19();
LABEL_78:
        sub_24DF8C95C(v25, v26, v27);
        goto LABEL_79;
      }

      sub_24E012B70(v70, &v62);
      sub_24E012B70(v68, v66);
      if (v62)
      {
        sub_24E012B70(&v62, &v55);
        if (*&v66[0])
        {
          v51 = v66[0];
          v52 = v66[1];
          v53 = v66[2];
          v54 = v67;
          v35 = MEMORY[0x25303F450](&v57, &v52);
          sub_24E012CA4(&v51);
          sub_24DF8C95C(v68, &qword_27F1E0AF8, qword_24E36EDF8);
          sub_24DF8C95C(v70, &qword_27F1E0AF8, qword_24E36EDF8);
          sub_24E012CA4(&v55);
          sub_24DF8C95C(&v62, &qword_27F1E0AF8, qword_24E36EDF8);
          if ((v35 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_75:
          sub_24DF9D524(&v75);
          return 1;
        }

        OUTLINED_FUNCTION_25_19();
        sub_24DF8C95C(v44, v45, v46);
        OUTLINED_FUNCTION_25_19();
        sub_24DF8C95C(v47, v48, v49);
        sub_24E012CA4(&v55);
      }

      else
      {
        OUTLINED_FUNCTION_25_19();
        sub_24DF8C95C(v36, v37, v38);
        OUTLINED_FUNCTION_25_19();
        sub_24DF8C95C(v39, v40, v41);
        if (!*&v66[0])
        {
          sub_24DF8C95C(&v62, &qword_27F1E0AF8, qword_24E36EDF8);
          goto LABEL_75;
        }
      }

      v26 = &unk_27F1E9AE8;
      v27 = &unk_24E38AA38;
      v25 = &v62;
      goto LABEL_78;
    case 7:
      v19 = v79 | v78 | v77;
      if (v81 | v82 | v75 | v80 | v19 | v76)
      {
        if (v75 != 1 || v81 | v82 | v80 | v19 | v76)
        {
          if (v85 != 7 || *v84 != 2)
          {
            goto LABEL_22;
          }
        }

        else if (v85 != 7 || *v84 != 1)
        {
          goto LABEL_22;
        }

        v32 = vorrq_s8(*&v84[32], *&v84[48]);
        if (!(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | *&v84[24] | *&v84[16] | *&v84[8]))
        {
          goto LABEL_75;
        }
      }

      else if (v85 == 7)
      {
        v28 = vorrq_s8(vorrq_s8(*v84, *&v84[32]), vorrq_s8(*&v84[16], *&v84[48]));
        if (!*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)))
        {
          goto LABEL_75;
        }
      }

      goto LABEL_22;
    default:
      OUTLINED_FUNCTION_1_135(v3, v4, v5, v6, v7, v8, v9, v10, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61);
      if (!v85)
      {
        v29 = *&v84[16];
        if (!v63)
        {
          if (*&v84[8])
          {

LABEL_37:

            goto LABEL_79;
          }

          goto LABEL_70;
        }

        if (*&v84[8])
        {
          if (v62 == *v84 && v63 == *&v84[8])
          {

LABEL_70:
            if (v64)
            {
              if (v29)
              {
                sub_24DF88A8C(0, &qword_27F1E5FD0, 0x277D75348);
                v42 = v64;
                v43 = sub_24E348628();

                if (v43)
                {
                  goto LABEL_75;
                }

                goto LABEL_79;
              }

              v29 = v64;
            }

            else if (!v29)
            {
              goto LABEL_75;
            }

LABEL_79:
            sub_24DF9D524(&v75);
            return 0;
          }

          v31 = sub_24E348C08();

          if (v31)
          {
            goto LABEL_70;
          }
        }

        else
        {
        }

        goto LABEL_79;
      }

LABEL_21:

LABEL_22:
      sub_24DF8C95C(&v75, &qword_27F1E9AE0, &qword_24E38AA30);
      return 0;
  }
}