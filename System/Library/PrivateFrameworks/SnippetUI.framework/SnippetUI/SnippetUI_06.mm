void sub_26A52C354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850488();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A52EF88();
  v8 = sub_26A8516A8();
  sub_26A850498();
  sub_26A84FEA8();
  sub_26A80D690(v8);
}

void sub_26A52C4F8()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0;
  v128 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v114 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v113 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v127 = v9 - v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v126 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v121 = v15 - v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  v119 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82();
  v118 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  v23 = OUTLINED_FUNCTION_79(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v117 = v24 - v25;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v26);
  v116 = &v112 - v27;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v28);
  v115 = &v112 - v29;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13_6();
  v31 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_41();
  v37 = v36 - v35;
  v38 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v39 = OUTLINED_FUNCTION_79(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_41();
  v129 = v41 - v40;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAF8, &qword_26A856BF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_82();
  v122 = v43;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB00, &qword_26A856BF8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  v124 = v45 - v46;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v47);
  v123 = &v112 - v48;
  sub_26A84D7D8();
  v49 = TextProperty.asAnyView()();
  v50 = *(v33 + 8);
  v50(v37, v31);
  v51 = MEMORY[0x277CE11C8];
  v138[3] = MEMORY[0x277CE11C8];
  v138[4] = &protocol witness table for AnyView;
  v138[0] = v49;
  sub_26A84D7E8();
  v52 = TextProperty.asAnyView()();
  v53 = v37;
  v54 = v2;
  v55 = v50;
  v50(v53, v31);
  v137[3] = v51;
  v137[4] = &protocol witness table for AnyView;
  v137[0] = v52;
  v56 = v54;
  sub_26A84D778();
  OUTLINED_FUNCTION_26_0(v1);
  if (v57)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v136[1] = 0;
    v136[2] = 0;
  }

  else
  {
    v56 = TextProperty.asAnyView()();
    v58 = OUTLINED_FUNCTION_69_0();
    v55(v58);
    v59 = &protocol witness table for AnyView;
    v60 = MEMORY[0x277CE11C8];
  }

  v136[0] = v56;
  v136[3] = v60;
  v136[4] = v59;
  v61 = v115;
  v62 = v54;
  sub_26A84D788();
  OUTLINED_FUNCTION_26_0(v61);
  v63 = v122;
  v65 = v116;
  v64 = v117;
  if (v57)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v135[1] = 0;
    v135[2] = 0;
  }

  else
  {
    v62 = TextProperty.asAnyView()();
    (v55)(v61, v31);
    v66 = &protocol witness table for AnyView;
    v67 = MEMORY[0x277CE11C8];
  }

  v135[0] = v62;
  v135[3] = v67;
  v135[4] = v66;
  v68 = v54;
  sub_26A84D798();
  OUTLINED_FUNCTION_26_0(v65);
  v69 = v119;
  if (v57)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v134[1] = 0;
    v134[2] = 0;
  }

  else
  {
    v68 = TextProperty.asAnyView()();
    (v55)(v65, v31);
    v70 = &protocol witness table for AnyView;
    v71 = MEMORY[0x277CE11C8];
  }

  v134[0] = v68;
  v134[3] = v71;
  v134[4] = v70;
  v72 = v54;
  sub_26A84D7A8();
  OUTLINED_FUNCTION_26_0(v64);
  if (v57)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v133[1] = 0;
    v133[2] = 0;
  }

  else
  {
    v72 = TextProperty.asAnyView()();
    v73 = OUTLINED_FUNCTION_69_0();
    v55(v73);
    v74 = &protocol witness table for AnyView;
    v75 = MEMORY[0x277CE11C8];
  }

  v76 = v121;
  v133[0] = v72;
  v133[3] = v75;
  v133[4] = v74;
  v77 = v118;
  v78 = v54;
  sub_26A84D7B8();
  v79 = sub_26A84D098();
  if (OUTLINED_FUNCTION_83_0(v77) == 1)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v132[1] = 0;
    v132[2] = 0;
  }

  else
  {
    v78 = v77;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_65();
    (*(v82 + 8))(v77, v79);
    v80 = &protocol witness table for AnyView;
    v81 = MEMORY[0x277CE11C8];
  }

  v132[0] = v78;
  v132[3] = v81;
  v132[4] = v80;
  v83 = v54;
  sub_26A84D728();
  v84 = sub_26A84BD28();
  if (OUTLINED_FUNCTION_83_0(v69) == 1)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v131[1] = 0;
    v131[2] = 0;
  }

  else
  {
    v83 = v69;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_65();
    (*(v87 + 8))(v69, v84);
    v85 = &protocol witness table for AnyView;
    v86 = MEMORY[0x277CE11C8];
  }

  v131[0] = v83;
  v131[3] = v86;
  v131[4] = v85;
  v88 = v54;
  sub_26A84D738();
  if (OUTLINED_FUNCTION_83_0(v76) == 1)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v130[1] = 0;
    v130[2] = 0;
  }

  else
  {
    v88 = v76;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_65();
    (*(v91 + 8))(v76, v84);
    v89 = &protocol witness table for AnyView;
    v90 = MEMORY[0x277CE11C8];
  }

  v130[0] = v88;
  v130[3] = v90;
  v130[4] = v89;
  SummaryItemPairNumberV2View.init(number1:number2:text1:text2:text3:text4:text5:thumbnail1:thumbnail2:)(v138, v137, v136, v135, v134, v133, v132, v131, v130, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  sub_26A84D7C8();
  v92 = v127;
  sub_26A4EF020();
  v93 = v128;
  if (__swift_getEnumTagSinglePayload(v92, 1, v128) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v95 = (v63 + *(v120 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400);
    type metadata accessor for ActionType(0);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    *v95 = KeyPath;
  }

  else
  {
    v100 = v113;
    v101 = *(v114 + 32);
    v101(v113, v92, v93);
    v102 = swift_getKeyPath();
    v103 = (v63 + *(v120 + 36));
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400);
    v101(v103 + *(v104 + 28), v100, v93);
    v105 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
    *v103 = v102;
  }

  sub_26A52DBA4(v129, v63);
  v109 = sub_26A84D748();
  sub_26A4DE0FC(v109, v110);

  sub_26A4D6FD8();
  sub_26A84D758();

  OUTLINED_FUNCTION_50_1();
  sub_26A52E9A0();
  sub_26A851248();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A52CED4()
{
  v0 = sub_26A850D48();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  sub_26A850E98();
  v4 = sub_26A850E68();

  qword_2803D1998 = v4;
  return result;
}

uint64_t sub_26A52CFEC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  sub_26A850D48();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  (*(v9 + 104))(v8 - v7, *MEMORY[0x277CE0EE0]);
  sub_26A850E98();
  v10 = sub_26A850E68();

  *a5 = v10;
  return result;
}

uint64_t sub_26A52D178(double a1, uint64_t a2, void (*a3)(uint64_t), uint64_t *a4)
{
  a3(a2);
  v5 = sub_26A850E68();

  *a4 = v5;
  return result;
}

double sub_26A52D1D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_26A8504B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0AA0], v3, v5);
  v8 = *MEMORY[0x277CE09A0];
  v9 = sub_26A850338();
  (*(*(v9 - 8) + 104))(v2, v8, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_26A8503F8();
  sub_26A4D6FD8();
  (*(v4 + 8))(v7, v3);
  sub_26A850358();
  v10 = sub_26A850428();

  qword_2803D19F0 = 0;
  result = 0.0;
  unk_2803D19E0 = 0u;
  unk_2803D19D0 = 0u;
  qword_2803D19C8 = v10;
  return result;
}

void sub_26A52D3D0()
{
  OUTLINED_FUNCTION_28_0();
  v3 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_6();
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  type metadata accessor for SummaryItemPairNumberCapsuleTVView(0);
  OUTLINED_FUNCTION_61_0();
  if (v14)
  {
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_26A851EA8();
    sub_26A8501F8();
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_81_0(v18, &dword_26A48D000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v20, v21, MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_80_0();
    swift_getAtKeyPath();
    sub_26A49035C(v2, 0);
    v22 = *(v9 + 8);
    v9 += 8;
    v22(v13);
    if (v23 == 1)
    {
LABEL_8:
      if (qword_2803A8A58 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  sub_26A720064(v1);
  v15 = OUTLINED_FUNCTION_66_0();
  v16(v15);
  OUTLINED_FUNCTION_112();
  sub_26A84EE58();
  v17 = OUTLINED_FUNCTION_72_0();
  (v9)(v17);
  (v9)(v1, v3);
  if (v0)
  {
    if (qword_2803A8A50 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_2803A8A48 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:

  OUTLINED_FUNCTION_27_0();
}

void sub_26A52D674()
{
  OUTLINED_FUNCTION_28_0();
  v3 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_6();
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  type metadata accessor for SummaryItemPairNumberCapsuleTVView(0);
  OUTLINED_FUNCTION_61_0();
  if (v14)
  {
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_26A851EA8();
    sub_26A8501F8();
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_81_0(v18, &dword_26A48D000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v20, v21, MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_80_0();
    swift_getAtKeyPath();
    sub_26A49035C(v2, 0);
    v22 = *(v9 + 8);
    v9 += 8;
    v22(v13);
    if (v23 == 1)
    {
LABEL_8:
      if (qword_2803A8A40 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  sub_26A720064(v1);
  v15 = OUTLINED_FUNCTION_66_0();
  v16(v15);
  OUTLINED_FUNCTION_112();
  sub_26A84EE58();
  v17 = OUTLINED_FUNCTION_72_0();
  (v9)(v17);
  (v9)(v1, v3);
  if (v0)
  {
    if (qword_2803A8A38 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_2803A8A30 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A52D918()
{
  v10 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemPairNumberCapsuleTVView(v10) + 24)))
  {
    if (qword_2803A8A60 != -1)
    {
      swift_once();
    }

    sub_26A6078C0();
    v29 = v11;
    sub_26A52D3D0();
    v13 = v12;
    v14 = sub_26A850238();
    sub_26A84ED48();
    OUTLINED_FUNCTION_75_0();
    v15 = sub_26A8502A8();
    sub_26A84ED48();
    OUTLINED_FUNCTION_73_0();
    sub_26A52D674();
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3E0, &qword_26A85AE48);
    v19 = (v0 + *(v18 + 36));
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3E8, &unk_26A85AE50);
    v21 = *(v20 + 52);
    v22 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v23 + 104))(&v19[v21], v22);
    *v19 = v17;
    *&v19[*(v20 + 56)] = 256;
    *v0 = v29;
    *(v0 + 8) = v13;
    *(v0 + 16) = v14;
    *(v0 + 24) = v2;
    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
    *(v0 + 48) = v5;
    *(v0 + 56) = 0;
    *(v0 + 64) = v15;
    *(v0 + 72) = v6;
    *(v0 + 80) = v7;
    *(v0 + 88) = v8;
    *(v0 + 96) = v9;
    *(v0 + 104) = 0;
    OUTLINED_FUNCTION_22_0();
    v27 = v18;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3E0, &qword_26A85AE48);
    OUTLINED_FUNCTION_81();
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t sub_26A52DB0C()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.hasComponentAbove.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A52DB58()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D7460();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A52DBA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairNumberV2View(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A52DC2C(uint64_t a1)
{
  result = sub_26A52E3C8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A52DCAC(uint64_t a1)
{
  sub_26A52E288(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A52DEC8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_26A52E288(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_26A52DEC8(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_26A52DEC8(319, &qword_2803AB798, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        v2 = v10;
        if (v11 <= 0x3F)
        {
          sub_26A52DEC8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A52DEC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A52DF18()
{
  result = qword_2803AC3A0;
  if (!qword_2803AC3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC380, &qword_26A85AD20);
    sub_26A52DFD0();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC3A0);
  }

  return result;
}

unint64_t sub_26A52DFD0()
{
  result = qword_2803AC3A8;
  if (!qword_2803AC3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC378, &qword_26A85ACF0);
    sub_26A52E05C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC3A8);
  }

  return result;
}

unint64_t sub_26A52E05C()
{
  result = qword_2803AC3B0;
  if (!qword_2803AC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC370, &unk_26A85ACB8);
    sub_26A52EF88();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC3B0);
  }

  return result;
}

void sub_26A52E188(uint64_t a1)
{
  sub_26A52E288(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_26A52DEC8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A52DEC8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A52E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A52E3C8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A52E40C()
{
  result = qword_2803AC478;
  if (!qword_2803AC478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC460, &qword_26A85AF80);
    sub_26A52E520(&qword_2803AC480, &qword_2803AC488, &qword_26A85AF88);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC478);
  }

  return result;
}

uint64_t sub_26A52E520(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, a2, a3);
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A52E598()
{
  result = qword_28157FDD8;
  if (!qword_28157FDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A0, &unk_26A861AC0);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDD8);
  }

  return result;
}

uint64_t sub_26A52E650()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A52E6A4()
{
  result = qword_2803AC4D0;
  if (!qword_2803AC4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB2E0, &qword_26A8583F0);
    sub_26A52E75C();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC4D0);
  }

  return result;
}

unint64_t sub_26A52E75C()
{
  result = qword_2803AC4D8;
  if (!qword_2803AC4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB308, &qword_26A8584C0);
    sub_26A52E814();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC4D8);
  }

  return result;
}

unint64_t sub_26A52E814()
{
  result = qword_2803AC4E0;
  if (!qword_2803AC4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAFA0, &unk_26A85D4D0);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC4E0);
  }

  return result;
}

uint64_t sub_26A52E8CC()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

void *sub_26A52E924(double a1)
{
  v3 = type metadata accessor for SummaryItemPairNumberV2View(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26A529C64(v5, a1);
}

unint64_t sub_26A52E9A0()
{
  result = qword_2803AC560;
  if (!qword_2803AC560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB00, &qword_26A856BF8);
    sub_26A52EA58();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC560);
  }

  return result;
}

unint64_t sub_26A52EA58()
{
  result = qword_2803AC568;
  if (!qword_2803AC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAF0, &qword_26A856BE8);
    sub_26A52EAE4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC568);
  }

  return result;
}

unint64_t sub_26A52EAE4()
{
  result = qword_2803AC570;
  if (!qword_2803AC570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAF8, &qword_26A856BF0);
    sub_26A52E3C8();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC570);
  }

  return result;
}

void sub_26A52EBF4(uint64_t a1)
{
  sub_26A52EC9C(319);
  if (v1 <= 0x3F)
  {
    sub_26A84B1D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A52EC9C(uint64_t a1)
{
  if (!qword_2803AC590)
  {
    sub_26A52ECF8();
    v1 = sub_26A851748();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AC590);
    }
  }
}

unint64_t sub_26A52ECF8()
{
  result = qword_2803AC598;
  if (!qword_2803AC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC598);
  }

  return result;
}

uint64_t sub_26A52ED4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, a2, a3);
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A52EDBC()
{
  result = qword_2803AC5B0;
  if (!qword_2803AC5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC3E0, &qword_26A85AE48);
    sub_26A52E520(&qword_2803AC5B8, &qword_2803AC5C0, &qword_26A85B190);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC5B0);
  }

  return result;
}

unint64_t sub_26A52EED0()
{
  result = qword_2803AC5D8;
  if (!qword_2803AC5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC5E0, qword_26A85B1A0);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC5D8);
  }

  return result;
}

unint64_t sub_26A52EF88()
{
  OUTLINED_FUNCTION_196();
  result = *v3;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void OUTLINED_FUNCTION_16_3()
{
  *(v0 + 320) = sub_26A80A810;
  *(v0 + 328) = 0;
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = v3;
  *(v0 + 40) = 1;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_26A4EF6D0();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_26A4EF6D0();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_26A4EF6D0();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 72));
  v1 = *(v0 + 80);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void OUTLINED_FUNCTION_78_0()
{
  v4 = (v1 + *(v0 + 44));
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_26A84F978();
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A84EA78();
}

void *OUTLINED_FUNCTION_82_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0xBFuLL);
}

uint64_t OUTLINED_FUNCTION_83_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void *OUTLINED_FUNCTION_84_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xC0uLL);
}

uint64_t sub_26A52F5C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_3(KeyPath, v3);

  return v5;
}

uint64_t sub_26A52F61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

double sub_26A52F6C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_3(KeyPath, v3);

  return v5;
}

uint64_t sub_26A52F730(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_111();
  return sub_26A84EC28();
}

uint64_t sub_26A52F79C(uint64_t a1, int a2)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  OUTLINED_FUNCTION_15();
  v6 = v5;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidths;
  *(v2 + v10) = OUTLINED_FUNCTION_35_3();
  v11 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders;
  *(v2 + v11) = OUTLINED_FUNCTION_35_3();
  v12 = OBJC_IVAR____TtC9SnippetUI10TableState__rowWidth;
  OUTLINED_FUNCTION_34_2();
  v13 = *(v6 + 32);
  v13(v2 + v12, v9, v4);
  v14 = OBJC_IVAR____TtC9SnippetUI10TableState__chevronWidth;
  OUTLINED_FUNCTION_34_2();
  v13(v2 + v14, v9, v4);
  v15 = v2 + OBJC_IVAR____TtC9SnippetUI10TableState____lazy_storage___spacerIndex;
  *v15 = 0;
  *(v15 + 8) = 256;
  *(v2 + OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines) = v21;
  *(v2 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) = a1;
  v16 = *(a1 + 16);
  v17 = sub_26A7990BC(v16, 0.0);
  OUTLINED_FUNCTION_25_4(v2 + OBJC_IVAR____TtC9SnippetUI10TableState__columnWidthsForRows, v23);
  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB7D0, &qword_26A858F70);
  sub_26A84EBD8();
  swift_endAccess();
  v18 = sub_26A799168(0, 1, v16);
  OUTLINED_FUNCTION_25_4(v2 + OBJC_IVAR____TtC9SnippetUI10TableState__columnWidthsForHeaders, v23);
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC658, &qword_26A85B1D0);
  sub_26A84EBD8();
  swift_endAccess();
  return v2;
}

void sub_26A52F9CC()
{
  v1 = v0 + OBJC_IVAR____TtC9SnippetUI10TableState____lazy_storage___spacerIndex;
  if (*(v0 + OBJC_IVAR____TtC9SnippetUI10TableState____lazy_storage___spacerIndex + 9))
  {
    sub_26A52FA24(v0);
    *v1 = v2;
    *(v1 + 8) = v3 & 1;
    *(v1 + 9) = 0;
  }
}

void sub_26A52FA24(uint64_t a1)
{
  v2 = sub_26A84E048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC660, &unk_26A865380);
  MEMORY[0x28223BE20](v5);
  v24 = (v23 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC668, &qword_26A85B288);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = 0;
  v26 = *(a1 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  v15 = *(v26 + 16);
  v23[1] = v3 + 16;
  v29 = (v3 + 88);
  v30 = (v3 + 32);
  v28 = *MEMORY[0x277D63678];
  v25 = v3;
  v27 = (v3 + 8);
  while (1)
  {
    if (v14 == v15)
    {
      v16 = 1;
      v14 = v15;
      goto LABEL_7;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 >= *(v26 + 16))
    {
      goto LABEL_12;
    }

    v18 = v24;
    v17 = v25;
    v19 = v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14;
    v20 = *(v5 + 48);
    *v24 = v14;
    (*(v17 + 16))(v18 + v20, v19, v2, v11);
    sub_26A4DBDB4(v18, v9, &qword_2803AC660, &unk_26A865380);
    v16 = 0;
    ++v14;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v9, v16, 1, v5);
    sub_26A4DBDB4(v9, v13, &qword_2803AC668, &qword_26A85B288);
    if (__swift_getEnumTagSinglePayload(v13, 1, v5) != 1)
    {
      v21 = v31;
      (*v30)(v31, &v13[*(v5 + 48)], v2);
      v22 = (*v29)(v21, v2);
      (*v27)(v21, v2);
      if (v22 != v28)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_26A52FD5C(unint64_t a1, double a2)
{
  v5 = v2;
  v8 = sub_26A52F5B0();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v8 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    sub_26A848EDC();
    v14 = v22;
    *v4 = v22;
    goto LABEL_8;
  }

  v9 = v8 + 16 * a1;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  if (v12 > a2)
  {
    a2 = v12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_2();
  v3 = sub_26A84EC08();
  v4 = v13;
  v14 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*(v14 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = 16 * a1;
  v17 = v14 + 16 * a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = 0;
  v3(v24, 0);

  v18 = sub_26A52F5B0();
  if (*(v18 + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v19 = *(v18 + v16 + 32);
  v20 = *(v18 + v16 + 40);

  v21 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders;
  OUTLINED_FUNCTION_25_4(v5 + OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders, v24);
  if (v20)
  {
    sub_26A5EBE8C(a1);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v5 + v21);
    sub_26A654AF8(a1, v19);
    *(v5 + v21) = v23;
  }

  swift_endAccess();
}

BOOL sub_26A52FF18(_BOOL8 result, uint64_t a2)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(v2 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  if (v3 == *(v4 + 16))
  {
    return 1;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders;
  OUTLINED_FUNCTION_15_2(v2 + OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders, a2);
  sub_26A507558(v3, *(v2 + v6));
  v8 = v7;
  swift_endAccess();
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  sub_26A52F9CC();
  v11 = v10;
  result = 0;
  if ((v9 & 1) == 0 && v11 == v3)
  {
    v12 = __OFADD__(v5, 2);
    v13 = v5 + 2;
    if (!v12)
    {
      OUTLINED_FUNCTION_15_2(v2 + v6, v9);
      sub_26A507558(v13, *(v2 + v6));
      v15 = v14;
      swift_endAccess();
      if (v15)
      {
        return v13 == *(v4 + 16);
      }

      return 1;
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_26A52FFFC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) + 16);
  if (!v3)
  {
    return;
  }

  v4 = v2;
  v5 = 0;
  v6 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidthForHeaders;
  v7 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidths;
  v8 = 0.0;
  while (1)
  {
    OUTLINED_FUNCTION_15_2(v4 + v6, a2);
    v9 = *(v4 + v6);
    if (*(v9 + 16))
    {
      v10 = sub_26A5484D4(v5);
      if (v11)
      {
        v8 = *(*(v9 + 56) + 8 * v10);
      }
    }

    swift_endAccess();
    if (!sub_26A52FF18(v5, v12))
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_15_2(v4 + v7, v13);
    v14 = *(v4 + v7);
    v15 = 0.0;
    if (*(v14 + 16))
    {
      v16 = sub_26A5484D4(v5);
      if (v17)
      {
        v15 = *(*(v14 + 56) + 8 * v16);
      }
    }

    swift_endAccess();
    if (v8 > v15)
    {
      v15 = v8;
    }

    OUTLINED_FUNCTION_25_4(v4 + v7, v33);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + v7);
    v32 = v18;
    *(v4 + v7) = 0x8000000000000000;
    v19 = sub_26A5484D4(v5);
    if (__OFADD__(v18[2], (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
    if (sub_26A8523E8())
    {
      v23 = sub_26A5484D4(v5);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_28;
      }

      v21 = v23;
    }

    if (v22)
    {
      *(v18[7] + 8 * v21) = v15;
    }

    else
    {
      v18[(v21 >> 6) + 8] |= 1 << v21;
      *(v18[6] + 8 * v21) = v5;
      *(v18[7] + 8 * v21) = v15;
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v18[2] = v27;
    }

    *(v4 + v7) = v18;
    swift_endAccess();
LABEL_21:
    OUTLINED_FUNCTION_15_2(v4 + v7, v13, v32);
    v28 = *(v4 + v7);
    v29 = 0.0;
    if (*(v28 + 16))
    {
      v30 = sub_26A5484D4(v5);
      if (v31)
      {
        v29 = *(*(v28 + 56) + 8 * v30);
      }
    }

    ++v5;
    swift_endAccess();
    v8 = v8 - v29;
    if (v3 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_26A852618();
  __break(1u);
}

uint64_t sub_26A530244(uint64_t a1, double a2)
{
  v167 = sub_26A84E048();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v163 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC660, &unk_26A865380);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v157 - v14;
  v16 = OBJC_IVAR____TtC9SnippetUI10TableState_idealWidths;
  swift_beginAccess();
  v165 = v2;
  v17 = *(v2 + v16);
  v18 = 0.0;
  if (*(v17 + 16))
  {
    v19 = sub_26A5484D4(a1);
    if (v20)
    {
      v18 = *(*(v17 + 56) + 8 * v19);
    }
  }

  swift_endAccess();
  if (v18 > a2)
  {
    a2 = v18;
  }

  v21 = v165;
  OUTLINED_FUNCTION_25_4(v165 + v16, v168);
  swift_isUniquelyReferenced_nonNull_native();
  v169 = *(v21 + v16);
  sub_26A654AF8(a1, a2);
  *(v21 + v16) = v169;
  result = swift_endAccess();
  if (a1)
  {
    return result;
  }

  sub_26A52FFFC(result, v23);
  v24 = 0;
  v159 = 0;
  v25 = *(v21 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  v26 = *(v25 + 16);
  v166 = v6 + 16;
  v160 = MEMORY[0x277D84F90];
LABEL_8:
  v27 = v24;
  while (1)
  {
    v28 = *(v25 + 16);
    if (v26 == v27)
    {
      v158 = v16;
      v38 = 0;
      v164 = MEMORY[0x277D84F90];
      while (v28 != v38)
      {
        if (v38 >= *(v25 + 16))
        {
          goto LABEL_120;
        }

        v39 = v38 + 1;
        OUTLINED_FUNCTION_16_4();
        *v12 = v40;
        (*(v6 + 16))(&v12[v21]);
        v21 = sub_26A84E028();
        sub_26A4DBD10(v12, &qword_2803AC660, &unk_26A865380);
        v38 = v39;
        if (v21)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_37_3(isUniquelyReferenced_nonNull_native, v42, v43, v164);
            v164 = v47;
          }

          v45 = *(v164 + 16);
          v44 = *(v164 + 24);
          v21 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            sub_26A7A1810(v44 > 1, v45 + 1, 1, v164);
            v164 = v48;
          }

          v46 = v164;
          *(v164 + 16) = v21;
          *(v46 + 8 * v45 + 32) = v39 - 1;
          v38 = v39;
        }
      }

      v49 = v165;
      v50 = sub_26A52F688();
      v51 = v50 - sub_26A52F6B0();
      v52 = *(v160 + 16);
      if (v52)
      {
        v53 = (v160 + 32);
        v162 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v161 = (v6 + 8);
        do
        {
          v55 = *v53++;
          v54 = v55;
          v56 = sub_26A52F688();
          v57 = sub_26A52F6B0();
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_121;
          }

          if (v54 >= *(v25 + 16))
          {
            goto LABEL_122;
          }

          v58 = v57;
          v59 = v163;
          v60 = v167;
          (*(v6 + 16))(v163, v162 + *(v6 + 72) * v54, v167);
          sub_26A84E008();
          v62 = v61;
          (*(v6 + 8))(v59, v60);
          swift_getKeyPath();
          swift_getKeyPath();
          OUTLINED_FUNCTION_46_0();
          v63 = sub_26A84EC08();
          v65 = v64;
          v66 = OUTLINED_FUNCTION_20_2(v63, v64);
          *v65 = v60;
          if ((v66 & 1) == 0)
          {
            sub_26A848EF0();
            v60 = v69;
            *v65 = v69;
          }

          v49 = v165;
          if (v54 >= *(v60 + 16))
          {
            goto LABEL_123;
          }

          v67 = (v56 - v58) * v62 / 100.0;
          *(v60 + 8 * v54 + 32) = v67;
          v68 = OUTLINED_FUNCTION_17_2();
          v63(v68);

          v51 = v51 - v67;
        }

        while (--v52);
      }

      v70 = v164;
      v163 = *(v164 + 16);
      v71 = sub_26A8516A8();
      KeyPath = *(v49 + v158);

      sub_26A817F98();
      v168[0] = v73;
      v74 = v159;
      sub_26A5330F4(v168);
      if (v74)
      {
        goto LABEL_142;
      }

      v75 = *(v168[0] + 16);
      if (!v75)
      {
LABEL_65:

        if (v51 > 0.0)
        {
          v108 = 1 << *(v71 + 32);
          v109 = -1;
          if (v108 < 64)
          {
            v109 = ~(-1 << v108);
          }

          v110 = v109 & *(v71 + 64);
          v111 = (v108 + 63) >> 6;

          v112 = 0;
          v167 = v71;
          while (v110)
          {
LABEL_74:
            v114 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
            v115 = v114 | (v112 << 6);
            v116 = *(*(v71 + 56) + 8 * v115);
            if (v116 <= v51)
            {
              v117 = *(*(v71 + 48) + 8 * v115);
              KeyPath = swift_getKeyPath();
              v118 = swift_getKeyPath();
              v166 = KeyPath;
              v162 = v118;
              v161 = sub_26A84EC08();
              v74 = v119;
              v120 = OUTLINED_FUNCTION_20_2(v161, v119);
              *v74 = KeyPath;
              if ((v120 & 1) == 0)
              {
                sub_26A848EF0();
                KeyPath = v125;
                *v74 = v125;
              }

              if ((v117 & 0x8000000000000000) != 0)
              {
                goto LABEL_139;
              }

              if (v117 >= *(KeyPath + 16))
              {
                goto LABEL_140;
              }

              *(KeyPath + 8 * v117 + 32) = v116 + *(KeyPath + 8 * v117 + 32);
              v121 = OUTLINED_FUNCTION_17_2();
              v161(v121);

              v122 = sub_26A5484D4(v117);
              if (v123)
              {
                KeyPath = v122;
                v124 = v167;
                swift_isUniquelyReferenced_nonNull_native();
                v168[0] = v124;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
                sub_26A8523E8();
                v167 = v168[0];
                sub_26A852408();
              }

              v51 = v51 - v116;
              if (v51 == 0.0)
              {
                goto LABEL_130;
              }
            }
          }

          while (1)
          {
            v113 = v112 + 1;
            if (__OFADD__(v112, 1))
            {
              goto LABEL_124;
            }

            if (v113 >= v111)
            {

              v76 = *(v167 + 16);
              v127 = v164;
              v126 = v165;
              if (v76)
              {
                v128 = 1 << *(v167 + 32);
                v129 = *(v167 + 64);
                v130 = -1;
                if (v128 < 64)
                {
                  v130 = ~(-1 << v128);
                }

                KeyPath = v130 & v129;
                if ((v130 & v129) != 0)
                {

                  v131 = __clz(__rbit64(KeyPath));
LABEL_93:
                  v93 = *(*(v167 + 48) + 8 * v131);
                  v74 = swift_getKeyPath();
                  v75 = swift_getKeyPath();
                  OUTLINED_FUNCTION_111();
                  v71 = sub_26A84EC08();
                  v79 = v137;
                  v138 = OUTLINED_FUNCTION_20_2(v71, v137);
                  *v79 = KeyPath;
                  if ((v138 & 1) == 0)
                  {
                    goto LABEL_133;
                  }

                  if ((v93 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_95;
                }

                v132 = (v128 + 63) >> 6;
                v133 = (v167 + 72);
                v134 = 1;
                while (v134 < v132)
                {
                  v136 = *v133++;
                  v135 = v136;
                  KeyPath += 64;
                  ++v134;
                  if (v136)
                  {

                    v131 = __clz(__rbit64(v135)) + KeyPath;
                    goto LABEL_93;
                  }
                }
              }

              sub_26A52F9CC();
              v140 = floor(v51 / v163);
              if (v141)
              {
                v142 = v51 / v163;
              }

              else
              {
                v142 = v140;
              }

              v75 = *(sub_26A52F59C() + 16);

              if (v75)
              {
                v143 = 0;
                v74 = &unk_26A85B300;
                while (2)
                {
                  v144 = v143;
                  v143 = (v143 + 1);
                  v145 = *(v127 + 16);
                  v146 = 32;
                  while (v145)
                  {
                    v147 = *(v127 + v146);
                    v146 += 8;
                    --v145;
                    if (v147 == v144)
                    {
                      v71 = swift_getKeyPath();
                      v79 = swift_getKeyPath();
                      v76 = sub_26A84EC08();
                      v93 = v148;
                      v149 = OUTLINED_FUNCTION_20_2(v76, v148);
                      *v93 = KeyPath;
                      if ((v149 & 1) == 0)
                      {
                        sub_26A848EF0();
                        KeyPath = v151;
                        *v93 = v151;
                      }

                      if (v144 >= *(KeyPath + 16))
                      {
                        goto LABEL_132;
                      }

                      *(KeyPath + 8 * v144 + 32) = v142 + *(KeyPath + 8 * v144 + 32);
                      v150 = OUTLINED_FUNCTION_17_2();
                      (v76)(v150);

                      v51 = v51 - v142;
                      v127 = v164;
                      break;
                    }
                  }

                  if (v143 != v75)
                  {
                    continue;
                  }

                  break;
                }

                v126 = v165;
              }

              else
              {
              }

              if (*(v126 + OBJC_IVAR____TtC9SnippetUI10TableState____lazy_storage___spacerIndex + 8))
              {
                return sub_26A531020();
              }

              v79 = *(v126 + OBJC_IVAR____TtC9SnippetUI10TableState____lazy_storage___spacerIndex);
              swift_getKeyPath();
              v74 = swift_getKeyPath();
              v75 = sub_26A84EC08();
              v71 = v152;
              v153 = OUTLINED_FUNCTION_20_2(v75, v152);
              *v71 = KeyPath;
              if ((v153 & 1) == 0)
              {
                goto LABEL_136;
              }

              if (v79 < 0)
              {
                goto LABEL_137;
              }

              goto LABEL_115;
            }

            v110 = *(v71 + 64 + 8 * v113);
            ++v112;
            if (v110)
            {
              v112 = v113;
              goto LABEL_74;
            }
          }
        }

        return sub_26A531020();
      }

      v76 = 0;
      v162 = v168[0];
      v77 = v168[0] + 32;
      v78 = (v70 + 32);
      v79 = v163;
      v166 = v70 + 32;
      v167 = v168[0] + 32;
      while (2)
      {
        v80 = v77 + 16 * v76;
        v81 = *v80;
        v82 = *(v80 + 8);
        ++v76;
        v83 = *(v164 + 16);
        v84 = v78;
        do
        {
          if (!v83)
          {
            goto LABEL_59;
          }

          v85 = *v84++;
          --v83;
        }

        while (v85 != v81);
        v86 = floor(v51 / v79);
        swift_getKeyPath();
        swift_getKeyPath();
        if (v82 > v86)
        {
          v87 = sub_26A84EC08();
          v74 = v88;
          v89 = OUTLINED_FUNCTION_20_2(v87, v88);
          *v74 = KeyPath;
          if (v89)
          {
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_126;
            }
          }

          else
          {
            sub_26A848EF0();
            KeyPath = v106;
            *v74 = v106;
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_126;
            }
          }

          if (v81 >= *(KeyPath + 16))
          {
            goto LABEL_128;
          }

          *(KeyPath + 8 * v81 + 32) = v86;
          v90 = OUTLINED_FUNCTION_17_2();
          v87(v90);

          KeyPath = swift_isUniquelyReferenced_nonNull_native();
          v168[0] = v71;
          v91 = sub_26A5484D4(v81);
          if (__OFADD__(*(v71 + 16), (v92 & 1) == 0))
          {
            goto LABEL_129;
          }

          v93 = v91;
          v94 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
          if (sub_26A8523E8())
          {
            v95 = sub_26A5484D4(v81);
            if ((v94 & 1) != (v96 & 1))
            {
LABEL_141:
              sub_26A852618();
              __break(1u);
LABEL_142:

              __break(1u);
              return result;
            }

            v93 = v95;
          }

          v97 = v82 - v86;
          v71 = v168[0];
          if (v94)
          {
            *(*(v168[0] + 56) + 8 * v93) = v97;
            goto LABEL_57;
          }

          *(v168[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
          *(*(v71 + 48) + 8 * v93) = v81;
          *(*(v71 + 56) + 8 * v93) = v97;
          v103 = *(v71 + 16);
          v104 = __OFADD__(v103, 1);
          v105 = v103 + 1;
          if (!v104)
          {
            *(v71 + 16) = v105;
            goto LABEL_57;
          }

          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          sub_26A848EF0();
          KeyPath = v155;
          *v79 = v155;
          if ((v93 & 0x8000000000000000) != 0)
          {
LABEL_134:
            __break(1u);
          }

          else
          {
LABEL_95:
            if (v93 < *(KeyPath + 16))
            {
              *(KeyPath + 8 * v93 + 32) = floor(v51 / v76) + *(KeyPath + 8 * v93 + 32);
              v139 = OUTLINED_FUNCTION_17_2();
              (v71)(v139);

              return sub_26A531020();
            }
          }

          __break(1u);
LABEL_136:
          sub_26A848EF0();
          KeyPath = v156;
          *v71 = v156;
          if (v79 < 0)
          {
LABEL_137:
            __break(1u);
          }

          else
          {
LABEL_115:
            if (v79 < *(KeyPath + 16))
            {
              *(KeyPath + 8 * v79 + 32) = v51;
              v154 = OUTLINED_FUNCTION_17_2();
              v75(v154);

              return sub_26A531020();
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v98 = sub_26A84EC08();
        v100 = v99;
        v101 = OUTLINED_FUNCTION_20_2(v98, v99);
        *v100 = KeyPath;
        if (v101)
        {
          if ((v81 & 0x8000000000000000) == 0)
          {
LABEL_53:
            if (v81 >= *(KeyPath + 16))
            {
              goto LABEL_127;
            }

            *(KeyPath + 8 * v81 + 32) = v82;
            v102 = OUTLINED_FUNCTION_17_2();
            v98(v102);

            v86 = v82;
LABEL_57:
            v78 = v166;
            v77 = v167;
            v104 = __OFSUB__(v79--, 1);
            if (v104)
            {
              goto LABEL_125;
            }

            v51 = v51 - v86;
LABEL_59:
            if (v76 != v75)
            {
              continue;
            }

            goto LABEL_65;
          }
        }

        else
        {
          sub_26A848EF0();
          KeyPath = v107;
          *v100 = v107;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }
        }

        break;
      }

      __break(1u);
      goto LABEL_65;
    }

    if (v27 >= v28)
    {
      break;
    }

    v24 = v27 + 1;
    OUTLINED_FUNCTION_16_4();
    *v15 = v29;
    (*(v6 + 16))(&v15[v21]);
    v21 = sub_26A84E018();
    sub_26A4DBD10(v15, &qword_2803AC660, &unk_26A865380);
    v27 = v24;
    if (v21)
    {
      v30 = swift_isUniquelyReferenced_nonNull_native();
      if (v30)
      {
        v33 = v160;
      }

      else
      {
        OUTLINED_FUNCTION_37_3(v30, v31, v32, v160);
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      v160 = v33;
      v21 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_26A7A1810(v34 > 1, v35 + 1, 1, v160);
        v160 = v37;
      }

      v36 = v160;
      *(v160 + 16) = v21;
      *(v36 + 8 * v35 + 32) = v24 - 1;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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

  return sub_26A531020();
}

uint64_t sub_26A531020()
{
  v1 = *(sub_26A52F59C() + 16);

  if (!v1)
  {
    return result;
  }

  v3 = *(sub_26A52F5B0() + 16);

  if (!v3)
  {
    return result;
  }

  v4 = sub_26A52F5B0();
  if (!*(v4 + 16))
  {
    goto LABEL_54;
  }

  v5 = *(v4 + 40);

  if (v5)
  {
    return result;
  }

  v6 = sub_26A8516A8();
  v7 = *(*(v0 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 4;
    v10 = 40;
    do
    {
      v11 = v9 - 4;
      v12 = sub_26A52F5B0();
      if ((v9 - 4) >= *(v12 + 16))
      {
        goto LABEL_46;
      }

      v13 = *(v12 + v10);

      if (v13)
      {
        sub_26A52F9CC();
        if ((v15 & 1) != 0 || v11 != v14)
        {
          v16 = sub_26A52F59C();
          if (v11 >= *(v16 + 16))
          {
            goto LABEL_49;
          }

          v17 = *(v16 + 8 * v9);
          swift_isUniquelyReferenced_nonNull_native();
          v52[0] = v6;
          v18 = sub_26A5484D4(v8);
          if (__OFADD__(*(v6 + 16), (v19 & 1) == 0))
          {
            goto LABEL_50;
          }

          v20 = v18;
          v21 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
          if (sub_26A8523E8())
          {
            v22 = sub_26A5484D4(v8);
            if ((v21 & 1) != (v23 & 1))
            {
              goto LABEL_55;
            }

            v20 = v22;
          }

          if ((v21 & 1) == 0)
          {
            goto LABEL_51;
          }

          v6 = v52[0];
          v35 = *(*(v52[0] + 56) + 8 * v20);

          *(*(v52[0] + 56) + 8 * v20) = v17 + v35;
        }

        v11 = v8;
      }

      else
      {
        v24 = sub_26A52F59C();
        if (v11 >= *(v24 + 16))
        {
          goto LABEL_47;
        }

        v25 = *(v24 + 8 * v9);

        swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v6;
        v26 = sub_26A5484D4(v9 - 4);
        if (__OFADD__(*(v6 + 16), (v27 & 1) == 0))
        {
          goto LABEL_48;
        }

        v28 = v26;
        v29 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
        if (sub_26A8523E8())
        {
          v30 = sub_26A5484D4(v9 - 4);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_55;
          }

          v28 = v30;
        }

        v6 = v52[0];
        if (v29)
        {
          *(*(v52[0] + 56) + 8 * v28) = v25;
        }

        else
        {
          *(v52[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
          *(*(v6 + 48) + 8 * v28) = v11;
          *(*(v6 + 56) + 8 * v28) = v25;
          v32 = *(v6 + 16);
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_52;
          }

          *(v6 + 16) = v34;
        }
      }

      ++v9;
      v10 += 16;
      v8 = v11;
    }

    while (--v7);
  }

  v36 = 0;
  v37 = 1 << *(v6 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v6 + 64);
  v40 = (v37 + 63) >> 6;
  if (!v39)
  {
LABEL_33:
    while (1)
    {
      v41 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v41 >= v40)
      {
      }

      v39 = *(v6 + 64 + 8 * v41);
      ++v36;
      if (v39)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  while (1)
  {
    v41 = v36;
LABEL_36:
    v42 = (v41 << 9) | (8 * __clz(__rbit64(v39)));
    v43 = *(*(v6 + 48) + v42);
    v51 = *(*(v6 + 56) + v42);
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = sub_26A84EC08();
    v45 = v44;
    v46 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v45 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

LABEL_38:
    if (v43 >= *(v46 + 16))
    {
      goto LABEL_53;
    }

    v39 &= v39 - 1;
    v48 = v46 + 16 * v43;
    *(v48 + 32) = v51;
    *(v48 + 40) = 0;
    v50(v52, 0);

    v36 = v41;
    if (!v39)
    {
      goto LABEL_33;
    }
  }

  sub_26A848EDC();
  v46 = v49;
  *v45 = v49;
  if ((v43 & 0x8000000000000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
}

void sub_26A531490(uint64_t a1)
{
  sub_26A52F9CC();
  if ((v3 & 1) == 0 && v2 <= a1 && __OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_26A5314D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v218 = a2;
  v236 = a1;
  v241 = a4;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC680, &qword_26A85B370);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v229 = v9;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC688, &qword_26A85B378);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  v217 = v11;
  v12 = OUTLINED_FUNCTION_25_2();
  v13 = type metadata accessor for MultilineTextPropertyView(v12);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC690, &qword_26A85B380);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_19();
  v223 = v19;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27_1();
  v225 = v21;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC698, &qword_26A85B388);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_82();
  v227 = v23;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6A0, &qword_26A85B390);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v226 = v25;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_27_1();
  v230 = v27;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6A8, &qword_26A85B398);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_82();
  v240 = v29;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6B0, &qword_26A85B3A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_82();
  v233 = v31;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6B8, &qword_26A85B3A8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_82();
  v235 = v33;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6C0, &qword_26A85B3B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_82();
  v215 = v35;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD68, &qword_26A856E80);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_82();
  v206 = v37;
  OUTLINED_FUNCTION_25_2();
  sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v207 = v39;
  v208 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_41();
  v42 = v41 - v40;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD58, &qword_26A856E70);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v43);
  v45 = &v205 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6C8, &qword_26A85B3B8);
  MEMORY[0x28223BE20](v46 - 8);
  OUTLINED_FUNCTION_19();
  v209 = v47;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27_1();
  v212 = v49;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6D0, &qword_26A85B3C0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  v211 = v51;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_27_1();
  v216 = v53;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v220 = v55;
  v221 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_41();
  v219 = v57 - v56;
  OUTLINED_FUNCTION_25_2();
  v58 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_41();
  v64 = v63 - v62;
  v65 = a3;
  v66 = sub_26A59FAE4(a3);
  v237 = v67;
  (*(v60 + 16))(v64, v236, v58);
  v68 = OUTLINED_FUNCTION_18_4();
  v70 = v69(v68);
  if (v70 == *MEMORY[0x277D637F8])
  {
    v71 = OUTLINED_FUNCTION_18_4();
    v72(v71);
    v73 = *(v64 + 40);
    LODWORD(v236) = *(v64 + 48);
    sub_26A4C2314(v64, &v242);
    v74 = sub_26A53285C(v218);
    v75 = (v74 & 1) == 0;
    __swift_project_boxed_opaque_existential_1(&v242, v244);
    sub_26A84DEE8();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(KeyPath);
    v77 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v77);
    v78 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v78);
    v79 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v79);
    v80 = v17 + *(v13 + 36);
    *v80 = swift_getKeyPath();
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    *(v80 + 24) = swift_getKeyPath();
    *(v80 + 32) = 0;
    v81 = type metadata accessor for ActionHandler(0);
    v82 = v81[6];
    *(v80 + v82) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v83 = v80 + v81[7];
    *v83 = swift_getKeyPath();
    *(v83 + 8) = 0;
    *(v83 + 16) = 0;
    v84 = v80 + v81[8];
    *v84 = swift_getKeyPath();
    *(v84 + 8) = 0;
    v85 = v80 + v81[9];
    *v85 = swift_getKeyPath();
    *(v85 + 8) = 0;
    v86 = v80 + v81[10];
    *v86 = swift_getKeyPath();
    *(v86 + 9) = 0;
    swift_unknownObjectWeakInit();
    v87 = v81[11];
    type metadata accessor for StandardActionHandler(0);
    OUTLINED_FUNCTION_36_2();
    sub_26A4DBD10(v80 + v87, &qword_2803B3910, &qword_26A855580);
    OUTLINED_FUNCTION_36_2();
    if (v65 == 5)
    {
      v220 = (v74 & 1) == 0;
      v221 = v73;
      if (qword_2803A9018 != -1)
      {
        swift_once();
      }

      v88 = v217;
      v89 = (v217 + *(v228 + 36));
      sub_26A4DBD68(&unk_2803D2760, (v89 + 24), &qword_2803AA880, &unk_26A8567F0);
      sub_26A6AEE74(v252);
      memcpy(v89, v252, 0xBFuLL);
      v89[34] = sub_26A80A810;
      v89[35] = 0;
      sub_26A53419C(v17, v88);
      OUTLINED_FUNCTION_30_2();
      sub_26A4DBD68(v90, v91, v92, v93);
      swift_storeEnumTagMultiPayload();
      sub_26A533FF0();
      OUTLINED_FUNCTION_5_11();
      sub_26A53425C(v94);
      sub_26A84FDF8();
      sub_26A4DBD10(v88, &qword_2803AC688, &qword_26A85B378);
      v75 = v220;
      v73 = v221;
    }

    else
    {
      sub_26A53419C(v17, v229);
      swift_storeEnumTagMultiPayload();
      sub_26A533FF0();
      OUTLINED_FUNCTION_5_11();
      sub_26A53425C(v127);
      sub_26A84FDF8();
    }

    sub_26A534200(v17);
    OUTLINED_FUNCTION_30_2();
    sub_26A4DBDB4(v128, v129, v130, v131);
    if (v236)
    {
      v132 = v75;
    }

    else
    {
      v132 = v73;
    }

    v133 = v236 & v74;
    v134 = swift_getKeyPath();
    v135 = v227;
    OUTLINED_FUNCTION_30_2();
    sub_26A4DBDB4(v136, v137, v138, v139);
    v140 = v135 + *(v224 + 36);
    *v140 = v134;
    *(v140 + 8) = v132;
    *(v140 + 16) = v133;
    v141 = sub_26A850238();
    sub_26A84ED48();
    OUTLINED_FUNCTION_75_0();
    v142 = v226;
    sub_26A4DBDB4(v135, v226, &qword_2803AC698, &qword_26A85B388);
    v143 = v142 + *(v234 + 36);
    *v143 = v141;
    *(v143 + 8) = v66;
    *(v143 + 16) = v4;
    *(v143 + 24) = v5;
    *(v143 + 32) = v6;
    *(v143 + 40) = 0;
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBDB4(v144, v145, v146, v147);
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBD68(v148, v149, v150, v151);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_11();
    sub_26A533E24(v152);
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_111();
    sub_26A533E24(v153);
    v154 = v235;
    sub_26A84FDF8();
    OUTLINED_FUNCTION_21_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6E8, &qword_26A85B3D0);
    sub_26A533AEC();
    v155 = sub_26A534110();
    OUTLINED_FUNCTION_19_3(v155);

    sub_26A4DBD10(v154, &qword_2803AC6B8, &qword_26A85B3A8);
    OUTLINED_FUNCTION_111();
    sub_26A4DBD10(v156, v157, v158);
    v159 = &v242;
    return __swift_destroy_boxed_opaque_existential_1(v159);
  }

  if (v70 == *MEMORY[0x277D63808])
  {
    v95 = OUTLINED_FUNCTION_18_4();
    v96(v95);
    sub_26A4C2314(v64, v252);
    v205 = a3;
    v97 = sub_26A61B05C(a3, &unk_287B13248);
    v99 = v219;
    v98 = v220;
    v100 = MEMORY[0x277D62B18];
    if (!v97)
    {
      v100 = MEMORY[0x277D62B28];
    }

    v101 = v221;
    (*(v220 + 104))(v219, *v100, v221);
    __swift_project_boxed_opaque_existential_1(v252, v252[3]);
    sub_26A84DAF8();
    v103 = v207;
    v102 = v208;
    (*(v207 + 16))(v45, v42, v208);
    v104 = type metadata accessor for VisualPropertyView(0);
    v105 = &v45[v104[5]];
    *v105 = swift_getKeyPath();
    v105[9] = 0;
    swift_unknownObjectWeakInit();
    v106 = &v45[v104[6]];
    *v106 = swift_getKeyPath();
    v106[8] = 0;
    v107 = &v45[v104[7]];
    *v107 = swift_getKeyPath();
    v107[8] = 0;
    v108 = v104[8];
    *&v45[v108] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v109 = &v45[v104[9]];
    v251[0] = 0;
    sub_26A851048();
    (*(v103 + 8))(v42, v102);
    v110 = *(&v242 + 1);
    *v109 = v242;
    *(v109 + 1) = v110;
    v111 = swift_getKeyPath();
    v112 = &v45[*(v210 + 36)];
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v98 + 16))(v112 + v113, v99, v101);
    __swift_storeEnumTagSinglePayload(v112 + v113, 0, 1, v101);
    *v112 = v111;
    if (sub_26A61B05C(v205, &unk_287B13248))
    {
      v114 = swift_getKeyPath();
      v115 = v206;
      sub_26A4DBD68(v45, v206, &qword_2803AAD58, &qword_26A856E70);
      v116 = v115 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD80, &qword_26A856F70) + 36);
      *v116 = v114;
      *(v116 + 8) = 0;
      v117 = swift_getKeyPath();
      v118 = v115 + *(v214 + 36);
      *v118 = v117;
      *(v118 + 8) = 1;
      OUTLINED_FUNCTION_46_0();
      sub_26A4DBD68(v119, v120, v121, v122);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_9();
      OUTLINED_FUNCTION_111();
      sub_26A533C88(v123);
      sub_26A533D3C();
      sub_26A84FDF8();
      OUTLINED_FUNCTION_111();
      sub_26A4DBD10(v124, v125, v126);
    }

    else
    {
      sub_26A4DBD68(v45, v215, &qword_2803AAD58, &qword_26A856E70);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_9();
      sub_26A533C88(v161);
      sub_26A533D3C();
      sub_26A84FDF8();
    }

    sub_26A4DBD10(v45, &qword_2803AAD58, &qword_26A856E70);
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBDB4(v162, v163, v164, v165);
    v166 = sub_26A850238();
    sub_26A84ED48();
    OUTLINED_FUNCTION_75_0();
    v167 = v211;
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBDB4(v168, v169, v170, v171);
    v172 = v167 + *(v231 + 36);
    *v172 = v166;
    *(v172 + 8) = v66;
    *(v172 + 16) = v4;
    *(v172 + 24) = v5;
    *(v172 + 32) = v6;
    *(v172 + 40) = 0;
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBDB4(v173, v174, v175, v176);
    OUTLINED_FUNCTION_46_0();
    sub_26A4DBD68(v177, v178, v179, v180);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_11();
    OUTLINED_FUNCTION_111();
    sub_26A533E24(v181);
    OUTLINED_FUNCTION_6_12();
    sub_26A533E24(v182);
    v183 = v235;
    sub_26A84FDF8();
    OUTLINED_FUNCTION_21_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6E8, &qword_26A85B3D0);
    sub_26A533AEC();
    v184 = sub_26A534110();
    OUTLINED_FUNCTION_19_3(v184);

    sub_26A4DBD10(v183, &qword_2803AC6B8, &qword_26A85B3A8);
    OUTLINED_FUNCTION_111();
    sub_26A4DBD10(v185, v186, v187);
    (*(v220 + 8))(v219, v221);
    v159 = v252;
    return __swift_destroy_boxed_opaque_existential_1(v159);
  }

  if (v70 == *MEMORY[0x277D63800])
  {
    if (qword_2803A8BD0 != -1)
    {
      OUTLINED_FUNCTION_4_4(&qword_2803A8BD0);
    }

    v251[0] = byte_2803B0090;
    v250 = 0;
    v242 = xmmword_2803B0080;
    v243 = byte_2803B0090;
    v244 = qword_2803B0098;
    v249 = 0;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6D8, &qword_26A85B3C8);
    sub_26A533A68();
    sub_26A84FDF8();
    memcpy(v240, v252, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6E8, &qword_26A85B3D0);
    sub_26A533AEC();
    sub_26A534110();
    OUTLINED_FUNCTION_46_0();
    sub_26A84FDF8();
  }

  else
  {
    if (qword_2803A8BD0 != -1)
    {
      OUTLINED_FUNCTION_4_4(&qword_2803A8BD0);
    }

    v250 = byte_2803B0090;
    v251[0] = 1;
    v242 = xmmword_2803B0080;
    v243 = byte_2803B0090;
    v236 = qword_2803B0098;
    v244 = qword_2803B0098;
    v245 = &sub_26A532BE4;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v249 = 1;
    v188 = OUTLINED_FUNCTION_4_10();
    sub_26A4EF6C0(v188, v189, v190);

    v191 = OUTLINED_FUNCTION_4_10();
    sub_26A4EF6C0(v191, v192, v193);

    v194 = OUTLINED_FUNCTION_4_10();
    sub_26A4EF6C0(v194, v195, v196);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6D8, &qword_26A85B3C8);
    sub_26A533A68();
    sub_26A84FDF8();
    memcpy(v240, v252, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC6E8, &qword_26A85B3D0);
    sub_26A533AEC();
    sub_26A534110();
    sub_26A84FDF8();

    v197 = OUTLINED_FUNCTION_4_10();
    sub_26A4EC448(v197, v198, v199);

    v200 = OUTLINED_FUNCTION_4_10();
    sub_26A4EC448(v200, v201, v202);

    v203 = OUTLINED_FUNCTION_18_4();
    return v204(v203);
  }
}

uint64_t sub_26A53285C(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC750, &qword_26A85B618);
  MEMORY[0x28223BE20](v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  v7 = sub_26A84F3A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC758, &qword_26A8655B0);
  v14 = MEMORY[0x28223BE20](v25);
  v16 = v24 - v15;
  v17 = v8[13];
  v17(v13, *MEMORY[0x277CDF9F0], v7, v14);
  (v17)(v10, *MEMORY[0x277CDF9D0], v7);
  v18 = sub_26A53425C(&unk_2803AC760);
  result = sub_26A851738();
  if (result)
  {
    v24[1] = v18;
    v20 = v8[4];
    v20(v6, v13, v7);
    v20(&v6[*(v1 + 48)], v10, v7);
    sub_26A4DBD68(v6, v3, &qword_2803AC750, &qword_26A85B618);
    v21 = *(v1 + 48);
    v20(v16, v3, v7);
    v22 = v8[1];
    v22(&v3[v21], v7);
    sub_26A4DBDB4(v6, v3, &qword_2803AC750, &qword_26A85B618);
    v20(&v16[*(v25 + 36)], &v3[*(v1 + 48)], v7);
    v22(v3, v7);
    if (sub_26A851728())
    {
      v23 = sub_26A851738();
    }

    else
    {
      v23 = 0;
    }

    sub_26A4DBD10(v16, &qword_2803AC758, &qword_26A8655B0);
    return v23 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A532C34()
{
  v1 = OBJC_IVAR____TtC9SnippetUI10TableState__columnWidthsForRows;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC768, &qword_26A85B620);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC9SnippetUI10TableState__columnWidthsForHeaders;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC770, &qword_26A85B628);
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v0 + v3);

  v5 = OBJC_IVAR____TtC9SnippetUI10TableState__rowWidth;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  OUTLINED_FUNCTION_46();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v8(v0 + OBJC_IVAR____TtC9SnippetUI10TableState__chevronWidth, v6);

  return v0;
}

uint64_t sub_26A532D80()
{
  sub_26A532C34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TableState(uint64_t a1)
{
  result = qword_2803AC638;
  if (!qword_2803AC638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A532E2C(uint64_t a1)
{
  sub_26A532F88(319, &qword_2803AC648, &qword_2803AB7D0, &qword_26A858F70);
  if (v1 <= 0x3F)
  {
    sub_26A532F88(319, &qword_2803AC650, &qword_2803AC658, &qword_26A85B1D0);
    if (v2 <= 0x3F)
    {
      sub_26A532FDC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A532F88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26A84EC38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A532FDC()
{
  if (!qword_28157FF10)
  {
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FF10);
    }
  }
}

uint64_t sub_26A53302C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

uint64_t sub_26A5330F4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545178(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_26A533160(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_26A533160(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A852558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC678, &qword_26A85B368);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A5332D4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26A533264(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A533264(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26A5332D4(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 >= *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0DBC(0, v8[2] + 1, 1, v8);
        v8 = v80;
      }

      v37 = v8[2];
      v36 = v8[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_26A7A0DBC(v36 > 1, v37 + 1, 1, v8);
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_26A5338E4((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_26A5337B8(&v87, *result, a3);
LABEL_89:
}

uint64_t sub_26A5337B8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A544B3C(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_26A5338E4((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_26A5338E4(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26A7A563C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[1] >= v4[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_26A7A563C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t sub_26A533A68()
{
  result = qword_2803AC6E0;
  if (!qword_2803AC6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC6D8, &qword_26A85B3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC6E0);
  }

  return result;
}

unint64_t sub_26A533AEC()
{
  result = qword_2803AC6F0;
  if (!qword_2803AC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC6B8, &qword_26A85B3A8);
    sub_26A533E24(&unk_2803AC6F8);
    sub_26A533E24(&unk_2803AC720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC6F0);
  }

  return result;
}

unint64_t sub_26A533BD0()
{
  result = qword_2803AC700;
  if (!qword_2803AC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC6C8, &qword_26A85B3B8);
    sub_26A533C88(&unk_2803AC708);
    sub_26A533D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC700);
  }

  return result;
}

unint64_t sub_26A533C88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4, v5);
    v2();
    sub_26A5340D8(&qword_28157FB50);
    result = OUTLINED_FUNCTION_9_9();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A533D3C()
{
  result = qword_2803AC718;
  if (!qword_2803AC718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD58, &qword_26A856E70);
    sub_26A53425C(&qword_28157E9E0);
    sub_26A5340D8(&qword_2803AB9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC718);
  }

  return result;
}

unint64_t sub_26A533E24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4, v5);
    v2();
    result = OUTLINED_FUNCTION_9_9();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A533E7C()
{
  result = qword_2803AC728;
  if (!qword_2803AC728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC698, &qword_26A85B388);
    sub_26A533F34();
    sub_26A5340D8(&qword_28157FB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC728);
  }

  return result;
}

unint64_t sub_26A533F34()
{
  result = qword_2803AC730;
  if (!qword_2803AC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC690, &qword_26A85B380);
    sub_26A533FF0();
    sub_26A53425C(&qword_2803AC740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC730);
  }

  return result;
}

unint64_t sub_26A533FF0()
{
  result = qword_2803AC738;
  if (!qword_2803AC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC688, &qword_26A85B378);
    sub_26A53425C(&qword_2803AC740);
    sub_26A5340D8(&qword_2803A99A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC738);
  }

  return result;
}

unint64_t sub_26A5340D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A534110()
{
  result = qword_2803AC748;
  if (!qword_2803AC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC6E8, &qword_26A85B3D0);
    sub_26A533A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC748);
  }

  return result;
}

uint64_t sub_26A53419C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultilineTextPropertyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A534200(uint64_t a1)
{
  v2 = type metadata accessor for MultilineTextPropertyView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A53425C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1)
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v5 = *(v0 + 288);

  return sub_26A4DBD68(v3, v5, v1, v2);
}

void *OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, ...)
{

  return sub_26A84EC18();
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  *(v0 - 104) = 0;

  return sub_26A84EBD8();
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_26A8516A8();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

void OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16) + 1;

  sub_26A7A1810(0, v5, 1, a4);
}

uint64_t sub_26A5344E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArchiveRenderingModel(255, *(a1 + 16), *(a1 + 24), a4);
  sub_26A851088();
  sub_26A851058();
  return v5;
}

void *ArchiveRenderer.init(model:)@<X0>(void *a1@<X0>, void *a2@<X8>, uint64_t a3@<X3>)
{
  type metadata accessor for ArchiveRenderingModel(0, *(*a1 + 80), *(*a1 + 88), a3);
  result = sub_26A851048();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t ArchiveRenderer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v118 = a1;
  v4 = v2[1];
  v119 = *v2;
  v5 = v119;
  v120 = v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC780, &qword_26A85B630);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v116 = &v103 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC788, &qword_26A85B638);
  OUTLINED_FUNCTION_15();
  v114 = v9;
  v115 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v112 = &v103 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC790, &qword_26A85B640);
  OUTLINED_FUNCTION_15();
  v110 = v13;
  v111 = v12;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v109 = &v103 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC798, &qword_26A85B648);
  OUTLINED_FUNCTION_15();
  v107 = v17;
  v108 = v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v103 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7A0, &qword_26A85B650);
  OUTLINED_FUNCTION_15();
  v22 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v103 - v24;
  v122 = v5;
  v123 = v4;
  sub_26A5344E0(a1, v26, v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7A8, &qword_26A85B658);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  sub_26A602FE4(&v103 - v31);

  v33 = sub_26A84FA98();
  OUTLINED_FUNCTION_15();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  (*(v35 + 104))(v38 - v37, *MEMORY[0x277CE00F0], v33);
  v40 = sub_26A536104();
  sub_26A850A18();
  v41 = v39;
  v42 = v118;
  (*(v35 + 8))(v41, v33);
  sub_26A4DBD10(v32, &qword_2803AC7A8, &qword_26A85B658);
  v43 = v119;
  v122 = v119;
  v123 = v120;
  sub_26A5344E0(v42, v44, v45, v46);
  v47 = sub_26A534FEC();
  v49 = v48;

  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v50 + 24) = v49;
  v122 = v29;
  v123 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v20;
  v52 = v105;
  sub_26A850B08();

  (*(v22 + 8))(v25, v52);
  v53 = sub_26A84F5E8();
  OUTLINED_FUNCTION_15();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_41();
  v59 = v58 - v57;
  v122 = v43;
  v123 = v120;
  v63 = sub_26A5344E0(v42, v60, v61, v62);
  LOBYTE(v35) = sub_26A602B44(v63);

  if (v35)
  {
    sub_26A84F5B8();
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
    sub_26A5361C0(&qword_2803AC7C0, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7C8, &qword_26A85B660);
    sub_26A4DBCC8(&qword_2803AC7D0, &qword_2803AC7C8, &qword_26A85B660, MEMORY[0x277D83970]);
    sub_26A852118();
  }

  v122 = v52;
  v123 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v108;
  v65 = v109;
  v66 = v106;
  sub_26A850C98();
  (*(v55 + 8))(v59, v53);
  (*(v107 + 8))(v66, v64);
  sub_26A851BD8();
  v67 = v120;

  v68 = v119;

  v69 = sub_26A851BC8();
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  v70[2] = v69;
  v70[3] = v71;
  v72 = *(v118 + 16);
  v73 = *(v118 + 24);
  v70[4] = v72;
  v70[5] = v73;
  v70[6] = v68;
  v70[7] = v67;
  v118 = sub_26A851C18();
  OUTLINED_FUNCTION_15();
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = &v103 - v79;
  sub_26A851BF8();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v104 = sub_26A84F328();
    v105 = &v103;
    OUTLINED_FUNCTION_15();
    v103 = v81;
    MEMORY[0x28223BE20](v82);
    OUTLINED_FUNCTION_41();
    v107 = v73;
    v108 = v72;
    v85 = v84 - v83;
    v122 = 0;
    v123 = 0xE000000000000000;
    sub_26A852248();

    v122 = 0xD00000000000002CLL;
    v123 = 0x800000026A88B940;
    v121 = 37;
    v86 = sub_26A852568();
    MEMORY[0x26D663B00](v86);

    v106 = &v103;
    v88 = MEMORY[0x28223BE20](v87);
    v89 = v118;
    (*(v75 + 16))(&v103 - v79, v80, v118, v88);
    OUTLINED_FUNCTION_211();
    v72 = v108;
    sub_26A84F318();
    (*(v75 + 8))(v80, v89);
    v90 = v112;
    (*(v110 + 32))(v112, v65, v111);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7D8, &qword_26A85B678);
    v92 = v85;
    v73 = v107;
    (*(v103 + 32))(&v90[*(v91 + 36)], v92, v104);
  }

  else
  {
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803AC7E8, &qword_26A85B6B0);
    v90 = v112;
    v94 = &v112[*(v93 + 36)];
    v95 = sub_26A84F198();
    (*(v75 + 32))(&v94[*(v95 + 20)], &v103 - v79, v118);
    *v94 = &unk_26A85B670;
    *(v94 + 1) = v70;
    (*(v110 + 32))(v90, v65, v111);
  }

  v96 = swift_allocObject();
  *(v96 + 2) = v72;
  *(v96 + 3) = v73;
  v97 = v120;
  *(v96 + 4) = v119;
  *(v96 + 5) = v97;
  KeyPath = swift_getKeyPath();
  v99 = v116;
  v100 = &v116[*(v113 + 36)];
  *v100 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7E0, &qword_26A85B6A8);
  swift_storeEnumTagMultiPayload();
  v101 = (v100 + *(type metadata accessor for SnippetEnvironmentChangeObserverModifier(0) + 20));
  *v101 = sub_26A5363B0;
  v101[1] = v96;
  (*(v114 + 32))(v99, v90, v115);
  sub_26A494BDC(v99, v117);
}

uint64_t sub_26A53502C(void *a1, void (*a2)(void *))
{
  v6[3] = sub_26A536B04();
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_26A53508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  sub_26A851BD8();
  v6[8] = sub_26A851BC8();
  v6[9] = sub_26A851B78();
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_26A535128);
}

uint64_t sub_26A535128()
{
  OUTLINED_FUNCTION_1_10();
  v5 = OUTLINED_FUNCTION_6_13(v1, v2, v3, v4);
  v0[11] = v5;
  v0[12] = sub_26A5344E0(v5, v6, v7, v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_26A5351C4;

  return sub_26A604434();
}

uint64_t sub_26A5351C4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26A535300);
}

uint64_t sub_26A535300()
{
  v1 = *(v0 + 88);

  sub_26A5344E0(v1, v2, v3, v4);
  sub_26A6038AC();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26A535390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_26A851BD8();

  v12 = sub_26A851BC8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;
  sub_26A601D48(0, 0, v10, &unk_26A85B868, v13);
}

uint64_t sub_26A5354B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  sub_26A851BD8();
  v7[8] = sub_26A851BC8();
  v7[9] = sub_26A851B78();
  v7[10] = v8;

  return MEMORY[0x2822009F8](sub_26A53554C);
}

uint64_t sub_26A53554C()
{
  OUTLINED_FUNCTION_1_10();
  v5 = OUTLINED_FUNCTION_6_13(v1, v2, v3, v4);
  *(v0 + 88) = sub_26A5344E0(v5, v6, v7, v8);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_26A5355E4;

  return sub_26A604434();
}

uint64_t sub_26A5355E4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26A535720);
}

uint64_t sub_26A535720()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A535780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A84F8F8();
  v4 = type metadata accessor for SnippetEnvironment(0);
  sub_26A84F748();
  sub_26A84F7A8();
  sub_26A84F788();
  sub_26A84F6D8();
  sub_26A84F818();
  sub_26A84F708();
  *(a2 + v4[10]) = v5;
  sub_26A84F6F8();
  *(a2 + v4[12]) = sub_26A84F8C8() & 1;
  *(a2 + v4[13]) = sub_26A84F888() & 1;
  *(a2 + v4[14]) = sub_26A84F898() & 1;
  v6 = sub_26A84F8B8();
  v7 = sub_26A84F988();
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *(a2 + v4[15]) = v6 & 1;
  return result;
}

uint64_t sub_26A53588C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F568();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC880, &qword_26A85B778);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC8D8, &unk_26A85B850);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  if ((MEMORY[0x26D65CF60](a1, a2, v12) & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = type metadata accessor for SnippetEnvironment(0);
  if ((sub_26A84F398() & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = v15;
  v25 = v5;
  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_26A514320(a1 + v16, v14, &qword_2803AC880, &qword_26A85B778);
  sub_26A514320(a2 + v16, &v14[v17], &qword_2803AC880, &qword_26A85B778);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_26A514320(v14, v10, &qword_2803AC880, &qword_26A85B778);
    if (__swift_getEnumTagSinglePayload(&v14[v17], 1, v4) != 1)
    {
      v18 = v25;
      (*(v25 + 32))(v7, &v14[v17], v4);
      sub_26A5361C0(&qword_2803AC8E8, MEMORY[0x277CDFB80], MEMORY[0x277CDFB88]);
      v19 = sub_26A851758();
      v20 = *(v18 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_26A4DBD10(v14, &qword_2803AC880, &qword_26A85B778);
      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    (*(v25 + 8))(v10, v4);
LABEL_8:
    sub_26A4DBD10(v14, &qword_2803AC8D8, &unk_26A85B850);
    goto LABEL_18;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_26A4DBD10(v14, &qword_2803AC880, &qword_26A85B778);
LABEL_10:
  v21 = v24;
  if ((sub_26A84F4D8() & 1) != 0 && (sub_26A84EE58() & 1) != 0 && (sub_26A84EE58() & 1) != 0 && *(a1 + v21[10]) == *(a2 + v21[10]))
  {
    sub_26A84EF78();
    sub_26A5361C0(&qword_2803AC8E0, MEMORY[0x277CDF548], MEMORY[0x277CDF558]);
    sub_26A851A48();
    sub_26A851A48();
    if (v27 == v26 && *(a1 + v21[12]) == *(a2 + v21[12]) && *(a1 + v21[13]) == *(a2 + v21[13]) && *(a1 + v21[14]) == *(a2 + v21[14]))
    {
      v22 = *(a1 + v21[15]) ^ *(a2 + v21[15]) ^ 1;
      return v22 & 1;
    }
  }

LABEL_18:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_26A535D04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1, v4);
  return sub_26A535780(v6, a1);
}

uint64_t sub_26A535DCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7E0, &qword_26A85B6A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A514320(v2, &v13 - v9, &qword_2803AC7E0, &qword_26A85B6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A536984(v10, a1);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A535F9C()
{
  v0 = type metadata accessor for SnippetEnvironment(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A535DCC(v2);
  type metadata accessor for SnippetEnvironmentChangeObserverModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC8C0, &qword_26A85B848);
  sub_26A4DBCC8(&qword_2803AC8C8, &qword_2803AC8C0, &qword_26A85B848, MEMORY[0x277CE04B0]);
  sub_26A5361C0(&qword_2803AC8D0, type metadata accessor for SnippetEnvironment, &unk_26A85B7CC);
  sub_26A850C88();
  return sub_26A536928(v2);
}

unint64_t sub_26A536104()
{
  result = qword_2803AC7B0;
  if (!qword_2803AC7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC7A8, &qword_26A85B658);
    sub_26A5361C0(&qword_2803AC7B8, MEMORY[0x277CDD890], MEMORY[0x277CDD888]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC7B0);
  }

  return result;
}

uint64_t sub_26A5361C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A536208()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26A5362C8;

  return sub_26A53508C(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_26A5362C8()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26A536420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_26A536480()
{
  result = qword_2803AC870;
  if (!qword_2803AC870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC780, &qword_26A85B630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC790, &qword_26A85B640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC798, &qword_26A85B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC7A0, &qword_26A85B650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC7A8, &qword_26A85B658);
    sub_26A536104();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26A5361C0(&qword_2803AC878, type metadata accessor for SnippetEnvironmentChangeObserverModifier, &unk_26A85B7F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC870);
  }

  return result;
}

void sub_26A536684(uint64_t a1)
{
  sub_26A84AD18();
  if (v1 <= 0x3F)
  {
    sub_26A84F3A8();
    if (v2 <= 0x3F)
    {
      sub_26A5368A8(319, &qword_2803AC898, MEMORY[0x277CDFB80], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26A84F4E8();
        if (v4 <= 0x3F)
        {
          sub_26A84EE68();
          if (v5 <= 0x3F)
          {
            sub_26A84FBC8();
            if (v6 <= 0x3F)
            {
              sub_26A84EF78();
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

void sub_26A5367F4(uint64_t a1)
{
  sub_26A5368A8(319, &qword_2803AC8B8, type metadata accessor for SnippetEnvironment, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26A5046B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5368A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A536928(uint64_t a1)
{
  v2 = type metadata accessor for SnippetEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A536984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A536A30(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26A536B7C;

  return sub_26A5354B0(a1, v6, v7, v9, v8, v4, v5);
}

unint64_t sub_26A536B04()
{
  result = qword_2803AC8F0;
  if (!qword_2803AC8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AC8F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[5];
  v4[2] = v4[4];
  v4[3] = v8;

  return type metadata accessor for ArchiveRenderer(0, v6, v7, a4);
}

uint64_t getEnumTagSinglePayload for DeviceScaleFactor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceScaleFactor(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A536D0C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  if (v2 == 1.0)
  {
    return 0;
  }

  if (v2 == 2.0)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_26A536D94(double a1)
{
  if (a1 == 1.0)
  {
    return 0;
  }

  if (a1 == 3.0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1 == 2.0)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26A536E08@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A536D94(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_26A536E64()
{
  result = qword_2803AC8F8;
  if (!qword_2803AC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC8F8);
  }

  return result;
}

id sub_26A536EE0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 player];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 text_1];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v9 = v1;
    *(v9 + 8) = &unk_287B13270;
    *(v9 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v66 = v6;
  RFTextProperty.asPartialText()(v64);
  v7 = [v1 text_2];
  if (v7)
  {
    v8 = v7;
    *(&v62 + 1) = &type metadata for PartialText;
    v63 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v61 = swift_allocObject();
    RFTextProperty.asPartialText()(v61 + 16);
  }

  else
  {
    v63 = 0;
    v62 = 0u;
    v61 = 0u;
  }

  v11 = sub_26A537584(v2);
  if (v11)
  {
    v12 = v11;
    *(&v59 + 1) = &type metadata for PartialText;
    v60 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v58 = swift_allocObject();
    sub_26A735084(v12, v58 + 16);
  }

  else
  {
    v60 = 0;
    v59 = 0u;
    v58 = 0u;
  }

  v13 = [v2 text_4];
  if (v13)
  {
    v20 = v13;
    *(&v56 + 1) = &type metadata for PartialText;
    v57 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v55 = swift_allocObject();
    RFTextProperty.asPartialText()(v55 + 16);
  }

  else
  {
    v57 = 0;
    v56 = 0u;
    v55 = 0u;
  }

  sub_26A6F9608(0, 0, v47, v14, v15, v16, v17, v18, v19);
  if (qword_2803A89D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
  v22 = __swift_project_value_buffer(v21, qword_2803D1900);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
  v24 = &a1[*(v23 + 32)];
  sub_26A4EA070(v22, v24, &qword_2803AADC8, &qword_26A85B990);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A5375E4(&v24[*(v21 + 36)], &a1[*(v23 + 28)]);
  v25 = type metadata accessor for SimpleItemPlayerView(0);
  v26 = &a1[v25[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v48[0] = xmmword_281588758;
  v48[1] = unk_281588768;
  v48[2] = xmmword_281588778;
  v48[3] = xmmword_281588788;
  v49 = xmmword_281588758;
  v50 = unk_281588768;
  v51 = xmmword_281588778;
  v52 = xmmword_281588788;
  v42 = xmmword_281588788;
  v43 = xmmword_281588778;
  sub_26A4EA070(v48, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v53);
  memcpy(v26, v53, 0xC0uLL);
  *(v26 + 12) = v43;
  *(v26 + 13) = v42;
  v27 = v50;
  *(v26 + 14) = v49;
  *(v26 + 15) = v27;
  v28 = v52;
  *(v26 + 16) = v51;
  *(v26 + 17) = v28;
  v29 = v25[6];
  *&a1[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v30 = v25[7];
  *&a1[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v31 = &a1[v25[8]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  memcpy(__dst, v64, 0xFAuLL);
  memcpy(v46, v64, 0xFAuLL);
  sub_26A4EC458(__dst, v44);
  sub_26A4EC4B4();
  *&a1[v25[9]] = sub_26A851248();
  sub_26A4EA070(&v61, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v46[3])
  {
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v32 = OUTLINED_FUNCTION_0_11();
    v34 = v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    sub_26A537648(v46);
    v34 = 0;
  }

  *&a1[v25[10]] = v34;
  sub_26A4EA070(&v58, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v46[3])
  {
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v35 = OUTLINED_FUNCTION_0_11();
    v37 = v36(v35);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    sub_26A537648(v46);
    v37 = 0;
  }

  *&a1[v25[11]] = v37;
  sub_26A4EA070(&v55, v44, &qword_2803A91B8, &qword_26A8575C0);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v38 = OUTLINED_FUNCTION_0_11();
    v40 = v39(v38);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_26A537648(v44);
    v40 = 0;
  }

  *&a1[v25[12]] = v40;
  sub_26A5376B0(v47, v46);
  sub_26A53770C();
  v41 = sub_26A851248();

  sub_26A537760(v47);
  memcpy(v46, v64, 0xFAuLL);
  sub_26A4EC508(v46);
  sub_26A537648(&v55);
  sub_26A537648(&v58);
  result = sub_26A537648(&v61);
  *&a1[v25[13]] = v41;
  return result;
}

unint64_t sub_26A53752C()
{
  result = qword_2803AC900;
  if (!qword_2803AC900)
  {
    type metadata accessor for SimpleItemPlayerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC900);
  }

  return result;
}

uint64_t sub_26A537584(void *a1)
{
  v1 = [a1 text_3];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A5377B4();
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A5375E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemConstants(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A537648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91B8, &qword_26A8575C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A53770C()
{
  result = qword_2803AC910;
  if (!qword_2803AC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC910);
  }

  return result;
}

unint64_t sub_26A5377B4()
{
  result = qword_28157D858;
  if (!qword_28157D858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D858);
  }

  return result;
}

void sub_26A5377F8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return;
  }

  v4 = a2;
  v5 = 0;
  v51 = *(*result + 16);
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_65;
    }

    v6 = v2 + 72 * v5;
    if (*(v6 + 64))
    {
      goto LABEL_52;
    }

    sub_26A695C7C(*(v6 + 56), v4);
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

LABEL_52:
    if (++v5 == v3)
    {
      return;
    }
  }

  v9 = 0;
  v10 = v7 + 32;
  v56 = *(v7 + 16);
  v57 = v7;
  v55 = v7 + 32;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_57;
    }

    v11 = v10 + 16 * v9;
    v12 = *v11;
    if (*v11 >= 2)
    {
      break;
    }

LABEL_49:
    if (++v9 == v8)
    {

      v3 = v51;
      v4 = a2;
      goto LABEL_52;
    }
  }

  if (*(v2 + 16) < v5)
  {
    goto LABEL_58;
  }

  v13 = *(v11 + 8);
  v14 = sub_26A8496F8();
  sub_26A552104(v12, v14, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_unknownObjectRelease();
  v24 = v23 >> 1;
  v25 = (v19 + 32 + 72 * v21);
  for (i = v21; ; ++i)
  {
    if (v24 == i)
    {
      v27 = 0;
LABEL_16:
      v28 = v27 - 1;
      if (__OFSUB__(v27, 1))
      {
        goto LABEL_59;
      }

      v29 = *(v54 + 40);
      if ((v28 & 0x8000000000000000) != 0)
      {
        v31 = 0.0;
        v30 = v29 * 0.0;
      }

      else
      {
        v30 = v29 * v28;
        v31 = 0.0;
      }

      if (v24 != v21)
      {
        v35 = v24 - v21;
        if (v24 <= v21)
        {
          goto LABEL_62;
        }

        v36 = (v19 + 72 * v21);
        do
        {
          v37 = *v36;
          v36 += 9;
          v31 = v31 + v37;
          --v35;
        }

        while (v35);
      }

      swift_unknownObjectRelease();
      v32 = __OFSUB__(v24, v21);
      v38 = v24 - v21;
      if (v32)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v39 = v31 + v30;
      if (v39 < v13)
      {
        if (*(v2 + 16) < v5)
        {
          goto LABEL_63;
        }

        v40 = sub_26A8496F8();
        sub_26A7F7B00(v38, v40, v41, v42, v43);
        if ((v45 >> 1) < v44)
        {
          goto LABEL_64;
        }

        sub_26A537B70(v44, v45 >> 1, result);
        if (*(v46 + 16))
        {
          v47 = sub_26A565288(v46);
          v49 = v48;

          if (v49)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26A848EC8();
              v2 = v50;
            }

            swift_unknownObjectRelease();
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            if (v47 >= *(v2 + 16))
            {
              goto LABEL_67;
            }

            *(v2 + 72 * v47 + 32) = v13 - v39 + *(v2 + 72 * v47 + 32);
            *result = v2;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v8 = v56;
      v7 = v57;
      v10 = v55;
      goto LABEL_49;
    }

    if (i >= v24)
    {
      __break(1u);
      goto LABEL_55;
    }

    if ((*v25 & 1) == 0)
    {
      break;
    }

    v25 += 72;
  }

  v27 = 0;
LABEL_20:
  v32 = __OFADD__(v27++, 1);
  if (!v32)
  {
    while (1)
    {
      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v33 == v24)
      {
        goto LABEL_16;
      }

      if (v33 < v21 || v33 >= v24)
      {
        goto LABEL_56;
      }

      ++i;
      if ((*(v19 + 32 + 72 * v33) & 1) == 0)
      {
        i = v33;
        goto LABEL_20;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_26A537B70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D84F90];
  v7 = result;
  v8 = result;
LABEL_2:
  v9 = 72 * v7 + 48;
  while (a2 != v8)
  {
    if (a2 < result)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (v7 < result)
    {
      goto LABEL_17;
    }

    if (v8 >= a2)
    {
      goto LABEL_18;
    }

    if (v7 < 0)
    {
      goto LABEL_19;
    }

    if (v8 >= *(*a3 + 16))
    {
      goto LABEL_20;
    }

    v10 = *(*a3 + v9);
    v9 += 72;
    ++v8;
    if (v10 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7DCC48(0, *(v6 + 16) + 1, 1);
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26A7DCC48(v11 > 1, v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v8 - 1;
      v7 = v8;
      goto LABEL_2;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI10EngageableOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_26A537CE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A537D28(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26A537DA4(uint64_t a1)
{
  result = type metadata accessor for LoadableText.Source.URLImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A537E48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_26A537E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A537F10(uint64_t a1)
{
  sub_26A84AB98();
  if (v1 <= 0x3F)
  {
    sub_26A538008(319, &qword_2803AC920, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26A538008(319, &qword_2803AC928, &type metadata for Engageable);
      if (v3 <= 0x3F)
      {
        sub_26A53AEFC(319, &qword_28157FB08, MEMORY[0x277CE1030]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A538008(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26A852068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A538054()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC948, &qword_26A85BD08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  if ((sub_26A84AB68() & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = type metadata accessor for LoadableText.Source.URLImage(0);
  v19 = v18[5];
  v20 = (v4 + v19);
  v21 = *(v4 + v19 + 8);
  v22 = (v2 + v19);
  v23 = v22[1];
  if (!v21)
  {
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_11:
    if (*(v4 + v18[6]) != *(v2 + v18[6]))
    {
      goto LABEL_30;
    }

    v41 = v7;
    v25 = v18[7];
    v26 = *(v4 + v25);
    v27 = *(v4 + v25 + 8);
    v28 = v2 + v25;
    v43 = *v28;
    v29 = *(v28 + 8);
    if (v27 == 255)
    {
      v42 = v26;
      sub_26A5065CC(v26, 0xFFu);
      if (v29 == 255)
      {
        sub_26A5065CC(v43, 0xFFu);
        sub_26A5066E8(v42, 0xFFu);
        goto LABEL_21;
      }

      v31 = v43;
      sub_26A5065CC(v43, v29);
      v32 = v42;
    }

    else
    {
      v46 = v26;
      v47 = v27;
      if (v29 != 255)
      {
        v44 = v43;
        v45 = v29;
        v42 = v26;
        sub_26A5065CC(v26, v27);
        sub_26A5065CC(v43, v29);
        v30 = v42;
        sub_26A5065CC(v42, v27);
        LODWORD(v43) = static Engageable.== infix(_:_:)(&v46, &v44);
        sub_26A5066FC(v44, v45);
        sub_26A5066FC(v46, v47);
        sub_26A5066E8(v30, v27);
        if ((v43 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_21:
        v33 = v18[8];
        v34 = *(v14 + 48);
        sub_26A53AB5C(v4 + v33, v17);
        sub_26A53AB5C(v2 + v33, &v17[v34]);
        OUTLINED_FUNCTION_37_4(v17);
        if (v24)
        {
          OUTLINED_FUNCTION_37_4(&v17[v34]);
          if (v24)
          {
            sub_26A4DBD10(v17, &qword_2803AC918, &qword_26A85DBA0);
            goto LABEL_30;
          }
        }

        else
        {
          sub_26A53AB5C(v17, v0);
          OUTLINED_FUNCTION_37_4(&v17[v34]);
          if (!v35)
          {
            v36 = v41;
            (*(v41 + 32))(v11, &v17[v34], v5);
            OUTLINED_FUNCTION_0_16();
            sub_26A539308(v37, v38, MEMORY[0x277CE1040]);
            sub_26A851758();
            v39 = *(v36 + 8);
            v39(v11, v5);
            v39(v0, v5);
            sub_26A4DBD10(v17, &qword_2803AC918, &qword_26A85DBA0);
            goto LABEL_30;
          }

          (*(v41 + 8))(v0, v5);
        }

        sub_26A4DBD10(v17, &qword_2803AC948, &qword_26A85BD08);
        goto LABEL_30;
      }

      v32 = v26;
      sub_26A5065CC(v26, v27);
      v31 = v43;
      sub_26A5065CC(v43, 0xFFu);
      sub_26A5065CC(v32, v27);
      sub_26A5066FC(v32, v27);
    }

    sub_26A5066E8(v32, v27);
    sub_26A5066E8(v31, v29);
    goto LABEL_30;
  }

  if (v23)
  {
    v24 = *v20 == *v22 && v21 == v23;
    if (v24 || (sub_26A852598() & 1) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_27_0();
}

void sub_26A538494()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_31_3();
  v5 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_2();
  sub_26A84AB98();
  OUTLINED_FUNCTION_3_10();
  sub_26A539308(v11, v12, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_17_3();
  sub_26A8516F8();
  v13 = type metadata accessor for LoadableText.Source.URLImage(0);
  v14 = (v1 + *(v13 + 20));
  if (v14[1])
  {
    v4 = *v14;
    OUTLINED_FUNCTION_21_3();
    sub_26A851848();
  }

  else
  {
    OUTLINED_FUNCTION_20_3();
  }

  v15 = OUTLINED_FUNCTION_28_2();
  if (v17)
  {
    v15 = v16;
  }

  MEMORY[0x26D664950](*&v15);
  OUTLINED_FUNCTION_27_2();
  if (v17)
  {
    OUTLINED_FUNCTION_20_3();
  }

  else
  {
    v19 = *v18;
    OUTLINED_FUNCTION_21_3();
    if (v4)
    {
      if (v4 == 1)
      {
        MEMORY[0x26D664930](1);
        v20 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_22_3(v20, v21);
        v22 = OUTLINED_FUNCTION_25_5();
      }

      else
      {
        MEMORY[0x26D664930](2);
        v26 = OUTLINED_FUNCTION_23_4();
        sub_26A5065E0(v26, v27);
        sub_26A759300(v0, v19);
        v22 = OUTLINED_FUNCTION_23_4();
      }
    }

    else
    {
      MEMORY[0x26D664930](0);
      v24 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_22_3(v24, v25);
      v22 = OUTLINED_FUNCTION_24_4();
    }

    sub_26A5066E8(v22, v23);
  }

  sub_26A53AB5C(v1 + *(v13 + 32), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_18_5();
    v29(v28);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_0_16();
    sub_26A539308(v30, v31, MEMORY[0x277CE1038]);
    OUTLINED_FUNCTION_17_3();
    sub_26A8516F8();
    (*(v7 + 8))(v2, v5);
  }

  OUTLINED_FUNCTION_27_0();
}

BOOL sub_26A538794(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(a1 + 6);
  v7 = *(a1 + 56);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v14 = *(a2 + 56);
  if (v13)
  {
    if (v3 != v9 || v2 != v8 || v5 != v11 || v4 != v10)
    {
      return 0;
    }

LABEL_28:
    if (v7 == 255)
    {
      sub_26A5065CC(v6, 0xFFu);
      if (v14 == 255)
      {
        sub_26A5065CC(v12, 0xFFu);
        sub_26A5066E8(v6, 0xFFu);
        return 1;
      }

      sub_26A5065CC(v12, v14);
    }

    else
    {
      v40 = v6;
      v41 = v7;
      if (v14 != 255)
      {
        v38 = v12;
        v39 = v14;
        v23 = OUTLINED_FUNCTION_211();
        sub_26A5065CC(v23, v24);
        sub_26A5065CC(v12, v14);
        v25 = OUTLINED_FUNCTION_211();
        sub_26A5065CC(v25, v26);
        v27 = static Engageable.== infix(_:_:)(&v40, &v38);
        sub_26A5066FC(v38, v39);
        sub_26A5066FC(v40, v41);
        v28 = OUTLINED_FUNCTION_211();
        sub_26A5066E8(v28, v29);
        return (v27 & 1) != 0;
      }

      v30 = OUTLINED_FUNCTION_211();
      sub_26A5065CC(v30, v31);
      sub_26A5065CC(v12, 0xFFu);
      v32 = OUTLINED_FUNCTION_211();
      sub_26A5065CC(v32, v33);
      v34 = OUTLINED_FUNCTION_211();
      sub_26A5066FC(v34, v35);
    }

    v36 = OUTLINED_FUNCTION_211();
    sub_26A5066E8(v36, v37);
    sub_26A5066E8(v12, v14);
    return 0;
  }

  v15 = sub_26A852598();
  result = 0;
  if (v15)
  {
    v17 = v3 == v9 && v2 == v8;
    v18 = v17 && v5 == v11;
    if (v18 && v4 == v10)
    {
      goto LABEL_28;
    }
  }

  return result;
}

void sub_26A538954(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  sub_26A851848();
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x26D664950](*&v10);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x26D664950](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x26D664950](*&v12);
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  MEMORY[0x26D664950](*&v13);
  if (v9 == 255)
  {
    sub_26A8526D8();
  }

  else
  {
    sub_26A8526D8();
    if (v9)
    {
      if (v9 == 1)
      {
        MEMORY[0x26D664930](1);
        v14 = OUTLINED_FUNCTION_13_7();
        sub_26A5065E0(v14, v15);
        sub_26A852008();
        v16 = OUTLINED_FUNCTION_13_7();
      }

      else
      {
        MEMORY[0x26D664930](2);
        sub_26A5065E0(v8, 2u);
        sub_26A759300(a1, v8);
        v16 = v8;
        v17 = 2;
      }
    }

    else
    {
      MEMORY[0x26D664930](0);
      sub_26A5065E0(v8, 0);
      sub_26A852008();
      v16 = v8;
      v17 = 0;
    }

    sub_26A5066E8(v16, v17);
  }
}

uint64_t sub_26A538ABC()
{
  sub_26A8526B8();
  sub_26A538954(v1);
  return sub_26A8526F8();
}

void sub_26A538AFC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LoadableText.Source.URLImage(0);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930, &qword_26A85BD00);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v18 = (v24 + *(v17 + 56) - v15);
  sub_26A539350(v4, v24 - v15);
  sub_26A539350(v2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A539350(v16, v9);
    v19 = v9[1];
    v30[0] = *v9;
    v30[1] = v19;
    *v31 = v9[2];
    *&v31[9] = *(v9 + 41);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v18[1];
      v28[0] = *v18;
      v28[1] = v20;
      v22 = *v18;
      v21 = v18[1];
      *v29 = v18[2];
      *&v29[9] = *(v18 + 41);
      v23 = v9[1];
      v26[0] = *v9;
      v26[1] = v23;
      *v27 = v9[2];
      *&v27[9] = *(v9 + 41);
      v24[0] = v22;
      v24[1] = v21;
      *v25 = v18[2];
      *&v25[9] = *(v18 + 41);
      sub_26A538794(v26, v24);
      sub_26A5393B4(v28);
      sub_26A5393B4(v30);
LABEL_9:
      sub_26A53ABCC();
      goto LABEL_10;
    }

    sub_26A5393B4(v30);
  }

  else
  {
    sub_26A539350(v16, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A5393E4(v18, v0);
      sub_26A538054();
      sub_26A53ABCC();
      sub_26A53ABCC();
      goto LABEL_9;
    }

    sub_26A53ABCC();
  }

  sub_26A4DBD10(v16, &unk_2803B3930, &qword_26A85BD00);
LABEL_10:
  OUTLINED_FUNCTION_27_0();
}

void sub_26A538DC4()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_31_3();
  v4 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_32_2();
  v11 = type metadata accessor for LoadableText.Source.URLImage(v10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  LODWORD(v16) = type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = (v19 - v18);
  sub_26A539350(v1, v19 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v20[1];
    v42[0] = *v20;
    v42[1] = v21;
    *v43 = v20[2];
    *&v43[9] = *(v20 + 41);
    MEMORY[0x26D664930](1);
    sub_26A538954(v0);
    sub_26A5393B4(v42);
  }

  else
  {
    sub_26A5393E4(v20, v15);
    MEMORY[0x26D664930](0);
    sub_26A84AB98();
    OUTLINED_FUNCTION_3_10();
    sub_26A539308(v22, v23, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_17_3();
    sub_26A8516F8();
    v24 = (v15 + *(v11 + 20));
    if (v24[1])
    {
      v16 = *v24;
      OUTLINED_FUNCTION_21_3();
      sub_26A851848();
    }

    else
    {
      OUTLINED_FUNCTION_20_3();
    }

    v25 = OUTLINED_FUNCTION_28_2();
    if (v27)
    {
      v25 = v26;
    }

    MEMORY[0x26D664950](*&v25);
    OUTLINED_FUNCTION_27_2();
    if (v27)
    {
      OUTLINED_FUNCTION_20_3();
    }

    else
    {
      v29 = *v28;
      OUTLINED_FUNCTION_21_3();
      if (v16)
      {
        if (v16 == 1)
        {
          MEMORY[0x26D664930](1);
          v30 = OUTLINED_FUNCTION_25_5();
          OUTLINED_FUNCTION_22_3(v30, v31);
          v32 = OUTLINED_FUNCTION_25_5();
        }

        else
        {
          MEMORY[0x26D664930](2);
          v36 = OUTLINED_FUNCTION_23_4();
          sub_26A5065E0(v36, v37);
          sub_26A759300(v0, v29);
          v32 = OUTLINED_FUNCTION_23_4();
        }
      }

      else
      {
        MEMORY[0x26D664930](0);
        v34 = OUTLINED_FUNCTION_24_4();
        OUTLINED_FUNCTION_22_3(v34, v35);
        v32 = OUTLINED_FUNCTION_24_4();
      }

      sub_26A5066E8(v32, v33);
    }

    sub_26A53AB5C(v15 + *(v11 + 32), v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      OUTLINED_FUNCTION_20_3();
    }

    else
    {
      v38 = OUTLINED_FUNCTION_18_5();
      v39(v38);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_0_16();
      sub_26A539308(v40, v41, MEMORY[0x277CE1038]);
      OUTLINED_FUNCTION_17_3();
      sub_26A8516F8();
      (*(v6 + 8))(v2, v4);
    }

    sub_26A53ABCC();
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A539148(uint64_t (*a1)(void *))
{
  sub_26A8526B8();
  a1(v3);
  return sub_26A8526F8();
}

uint64_t sub_26A539198(uint64_t a1)
{
  sub_26A8526B8();
  sub_26A538954(v2);
  return sub_26A8526F8();
}

unint64_t sub_26A5391DC()
{
  result = qword_2803AC938;
  if (!qword_2803AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC938);
  }

  return result;
}

uint64_t sub_26A539278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26A8526B8();
  a4(v6);
  return sub_26A8526F8();
}

uint64_t sub_26A539308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A539350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadableText.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5393E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A539448()
{
  OUTLINED_FUNCTION_1_10();
  v0[30] = v1;
  v2 = type metadata accessor for LoadableText.Source.URLImage(0);
  OUTLINED_FUNCTION_79(v2);
  v0[31] = swift_task_alloc();
  v3 = type metadata accessor for LoadableText.Source(0);
  v0[32] = v3;
  OUTLINED_FUNCTION_79(v3);
  v0[33] = swift_task_alloc();
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26A5394F8()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A539350(*(v0 + 240), *(v0 + 264));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 264);
    v3 = *v1;
    v2 = v1[1];
    v4 = v1[2];
    *(v0 + 57) = *(v1 + 41);
    *(v0 + 32) = v2;
    *(v0 + 48) = v4;
    *(v0 + 16) = v3;
    *(v0 + 80) = v3;
    *(v0 + 96) = v2;
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 121) = *(v0 + 57);
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    v5[1] = sub_26A5397F8;

    return sub_26A53A310();
  }

  else
  {
    sub_26A5393E4(*(v0 + 264), *(v0 + 248));
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_26A539654;

    return sub_26A539A7C();
  }
}

uint64_t sub_26A539654()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_34_3();
  v5 = v4;
  OUTLINED_FUNCTION_15_3();
  *v6 = v5;
  *(v5 + 176) = v7;
  *(v5 + 184) = v0;
  *(v5 + 168) = v8;
  *(v5 + 152) = v9;
  *(v5 + 160) = v10;
  *(v5 + 144) = v2;
  *((v3 | 0x1000000000000000) - 8) = *v2;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 73) = v1;
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26A539770()
{
  OUTLINED_FUNCTION_5_12();

  v0 = OUTLINED_FUNCTION_12_4();

  return v1(v0);
}

uint64_t sub_26A5397F8()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_34_3();
  v5 = v4;
  OUTLINED_FUNCTION_15_3();
  *v6 = v5;
  *(v5 + 224) = v7;
  *(v5 + 232) = v0;
  *(v5 + 216) = v8;
  *(v5 + 200) = v9;
  *(v5 + 208) = v10;
  *(v5 + 192) = v2;
  *((v3 | 0x1000000000000000) - 8) = *v2;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 74) = v1;
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26A539914()
{
  sub_26A5393B4(v0 + 16);

  v1 = OUTLINED_FUNCTION_12_4();

  return v2(v1);
}

uint64_t sub_26A5399A0()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A539A0C()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A5393B4(v0 + 16);

  OUTLINED_FUNCTION_2_9();

  return v1();
}

uint64_t sub_26A539A7C()
{
  OUTLINED_FUNCTION_1_10();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v2);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26A539B30()
{
  OUTLINED_FUNCTION_1_10();
  if (qword_28157F8F8 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_2815889C8;

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_26A539C08;

  return sub_26A6194F8();
}

uint64_t sub_26A539C08()
{
  OUTLINED_FUNCTION_1_10();
  v2 = *v1;
  OUTLINED_FUNCTION_15_3();
  *v3 = v2;
  *v3 = *v1;
  v2[13] = v4;
  v2[14] = v5;
  v2[15] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26A539D18()
{
  v1 = sub_26A84ABC8();
  v2 = CGImageSourceCreateWithData(v1, 0);

  if (v2)
  {
    if (CGImageSourceGetCount(v2) >= 1)
    {
      OUTLINED_FUNCTION_9_7();
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, v4, v5);
      if (ImageAtIndex)
      {
        v7 = ImageAtIndex;
        v8 = *(v0 + 48);
        v9 = type metadata accessor for LoadableText.Source.URLImage(0);
        v10 = (v8 + v9[5]);
        v11 = v10[1];
        v61 = v7;
        if (v11)
        {
          v59 = *(v0 + 72);
          v12 = *v10;

          sub_26A73AE44(0);
          *(v0 + 16) = v12;
          *(v0 + 24) = v11;
          sub_26A53ACC8();
          sub_26A850898();
          v13 = v7;
          sub_26A850FA8();
          sub_26A53AB5C(v8 + v9[8], v59);
          v14 = sub_26A850F68();
          v15 = OUTLINED_FUNCTION_13_7();
          if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
          {
            OUTLINED_FUNCTION_4_11();
            (*(v17 + 104))();
            v18 = OUTLINED_FUNCTION_13_7();
            if (__swift_getEnumTagSinglePayload(v18, v19, v14) != 1)
            {
              sub_26A4DBD10(*(v0 + 72), &qword_2803AC918, &qword_26A85DBA0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_11();
            (*(v31 + 32))();
          }

          v32 = 80;
        }

        else
        {
          v24 = *(v0 + 56);
          sub_26A73AE44(0);
          v25 = v7;
          sub_26A850EF8();
          sub_26A53AB5C(v8 + v9[8], v24);
          v14 = sub_26A850F68();
          v26 = OUTLINED_FUNCTION_13_7();
          if (__swift_getEnumTagSinglePayload(v26, v27, v14) == 1)
          {
            OUTLINED_FUNCTION_4_11();
            (*(v28 + 104))();
            v29 = OUTLINED_FUNCTION_13_7();
            if (__swift_getEnumTagSinglePayload(v29, v30, v14) != 1)
            {
              sub_26A4DBD10(*(v0 + 56), &qword_2803AC918, &qword_26A85DBA0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_11();
            (*(v33 + 32))();
          }

          v32 = 64;
        }

        v34 = *(v0 + v32);
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v14);
        sub_26A850F38();

        sub_26A4DBD10(v34, &qword_2803AC918, &qword_26A85DBA0);
        v35 = *(v0 + 48);

        v36 = sub_26A8508A8();
        v38 = v37;
        v40 = v39;
        v60 = v41;
        v42 = v35 + v9[7];
        v43 = *(v42 + 8);
        v45 = *(v0 + 104);
        v44 = *(v0 + 112);
        if (v43 == 255)
        {

          sub_26A513D40(v45, v44);

          v52 = v38;
          v50 = v40;
          v53 = v60;
        }

        else
        {
          v46 = *v42;
          *(v0 + 32) = *v42;
          *(v0 + 40) = v43;
          sub_26A5065E0(v46, v43);
          sub_26A53AC74();
          v47 = sub_26A850698();
          v57 = v48;
          v58 = v47;
          v55 = v38;
          v50 = v49;
          v56 = v51;

          sub_26A513D40(v45, v44);

          sub_26A4EC448(v36, v55, v40 & 1);

          sub_26A5066E8(v46, v43);
          v52 = v57;
          v36 = v58;
          v53 = v56;
        }

        v54 = *(v0 + 8);

        return v54(v36, v52, v50 & 1, v53);
      }
    }
  }

  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  sub_26A53AC20();
  swift_allocError();
  swift_willThrow();
  sub_26A513D40(v20, v21);

  OUTLINED_FUNCTION_2_9();

  return v22();
}

uint64_t sub_26A53A288()
{
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A53A310()
{
  OUTLINED_FUNCTION_1_10();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  OUTLINED_FUNCTION_79(v3);
  *(v0 + 32) = swift_task_alloc();
  v4 = sub_26A84FBC8();
  *(v0 + 40) = v4;
  *(v0 + 48) = *(v4 - 8);
  *(v0 + 56) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *(v2 + 2);
  *(v0 + 88) = *(v2 + 1);
  v7 = *v2;
  v8 = v2[1];
  *(v0 + 64) = v5;
  *(v0 + 72) = v7;
  *(v0 + 80) = v8;
  *(v0 + 104) = v6;
  *(v0 + 120) = v2[6];
  *(v0 + 25) = *(v2 + 56);
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26A53A42C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  v8 = *(v7 + 104);
  v8(v5, *MEMORY[0x277CE0210], v6);
  v20 = sub_26A830F0C();
  v19 = sub_26A831080();
  *(v0 + 17) = v19;
  sub_26A53AD1C();

  v10 = sub_26A836B54(v9);
  *(v0 + 18) = v10;
  v11 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v3 scale:{v2, v1}];
  *(v0 + 19) = v11;
  [v11 setShape_];
  v12 = [objc_opt_self() currentTraitCollection];
  v13 = [v12 layoutDirection];

  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v11 setLanguageDirection_];
  v8(v4, *MEMORY[0x277CE0220], v6);
  v15 = sub_26A84EE58();
  v0[20] = *(v7 + 8);
  *(v0 + 21) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16 = OUTLINED_FUNCTION_29_4();
  v17(v16);
  [v11 setContrast_];
  [v11 setAppearance_];
  if (v19)
  {
    [v11 setTintColor_];
  }

  *(v0 + 22) = [v10 prepareImageForDescriptor_];
  sub_26A851BD8();
  *(v0 + 23) = sub_26A851BC8();
  sub_26A851B78();

  return MEMORY[0x2822009F8](&sub_26A53A6CC);
}

uint64_t sub_26A53A7D0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v26 = *(v0 + 25);
  v5 = *(v0 + 32);

  v6 = OUTLINED_FUNCTION_29_4();
  v2(v6);

  v7 = sub_26A8508A8();
  v9 = v8;
  v11 = v10;
  v12 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  sub_26A8503E8();
  sub_26A4DBD10(v5, &qword_2803AB208, &qword_26A857FD0);
  v13 = sub_26A850738();
  v15 = v14;
  LOBYTE(v4) = v16;

  sub_26A4EC448(v7, v9, v11 & 1);

  sub_26A850688();
  sub_26A4EC448(v13, v15, v4 & 1);

  if (v26 == 255)
  {
    v22 = *(v0 + 128);
  }

  else
  {
    v17 = *(v0 + 120);
    *(v0 + 16) = v17;
    v27 = *(v0 + 128);
    v18 = *(v0 + 25);
    *(v0 + 24) = v18;
    sub_26A5065E0(v17, v18);
    sub_26A53AC74();
    sub_26A850698();

    v19 = OUTLINED_FUNCTION_29_4();
    sub_26A4EC448(v19, v20, v21);

    sub_26A5066E8(v17, v18);
  }

  v23 = OUTLINED_FUNCTION_29_4();

  return v24(v23);
}

uint64_t sub_26A53AA68()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);

  v2(v6, v7);
  sub_26A53AC20();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_2_9();

  return v8();
}

uint64_t sub_26A53AB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A53ABCC()
{
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_26A53AC20()
{
  result = qword_2803AC958;
  if (!qword_2803AC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC958);
  }

  return result;
}

unint64_t sub_26A53AC74()
{
  result = qword_2803AC960;
  if (!qword_2803AC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC960);
  }

  return result;
}

unint64_t sub_26A53ACC8()
{
  result = qword_28157D8E0;
  if (!qword_28157D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8E0);
  }

  return result;
}

unint64_t sub_26A53AD1C()
{
  result = qword_28157D7F0;
  if (!qword_28157D7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D7F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoadableText.Errors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_26A53AE54(uint64_t a1)
{
  sub_26A84EE68();
  if (v1 <= 0x3F)
  {
    sub_26A53AEFC(319, &qword_2803AC968, type metadata accessor for CTFont);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A53AEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A852068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A53AF54()
{
  result = qword_2803AC970;
  if (!qword_2803AC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC970);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_26A53ABCC();
}

uint64_t OUTLINED_FUNCTION_11_6@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_26A8526D8();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_26A8526D8();
}

uint64_t OUTLINED_FUNCTION_22_3(void *a1, unsigned __int8 a2)
{
  sub_26A5065E0(a1, a2);

  return sub_26A852008();
}

uint64_t sub_26A53B1C0()
{
  result = sub_26A53B1E0();
  qword_2803D1A08 = result;
  return result;
}

uint64_t sub_26A53B1E0()
{
  v12[0] = sub_26A4EC5B0(0, &qword_281580490, 0x277D4BF70);
  v12[1] = sub_26A53FCF8(&unk_281580498);
  v12[2] = sub_26A4EC5B0(0, &qword_2815804C0, 0x277D4BF78);
  v12[3] = sub_26A53FCF8(&unk_2815804C8);
  v12[4] = sub_26A4EC5B0(0, &qword_2803ACBE8, 0x277D4C040);
  v12[5] = sub_26A53FCF8(&unk_2803ACBF0);
  v12[6] = sub_26A4EC5B0(0, &qword_281580390, 0x277D4BF90);
  v12[7] = sub_26A53FCF8(&unk_281580398);
  v12[8] = sub_26A4EC5B0(0, &qword_281580370, 0x277D4BFB8);
  v12[9] = sub_26A53FCF8(&unk_281580378);
  v12[10] = sub_26A4EC5B0(0, &qword_281580280, 0x277D4BFC8);
  v12[11] = sub_26A53FCF8(&unk_281580288);
  v12[12] = sub_26A4EC5B0(0, &qword_281580340, 0x277D4BFD0);
  v12[13] = sub_26A53FCF8(&unk_281580348);
  v12[14] = sub_26A4EC5B0(0, &qword_281580430, 0x277D4BFD8);
  v12[15] = sub_26A53FCF8(&unk_281580438);
  v12[16] = sub_26A4EC5B0(0, &qword_281580470, 0x277D4BFA0);
  v12[17] = sub_26A53FCF8(&unk_281580478);
  v12[18] = sub_26A4EC5B0(0, &qword_2815802B0, 0x277D4BFA8);
  v12[19] = sub_26A53FCF8(&unk_2815802B8);
  v12[20] = sub_26A4EC5B0(0, &qword_281580380, 0x277D4BFB0);
  v12[21] = sub_26A53FCF8(&unk_281580388);
  v12[22] = sub_26A4EC5B0(0, &qword_281580360, 0x277D4BFC0);
  v12[23] = sub_26A53FCF8(&unk_281580368);
  v12[24] = sub_26A4EC5B0(0, &qword_281580420, 0x277D4C000);
  v12[25] = sub_26A53FCF8(&unk_281580428);
  v12[26] = sub_26A4EC5B0(0, &qword_281580300, 0x277D4C050);
  v12[27] = sub_26A53FCF8(&unk_281580308);
  v12[28] = sub_26A4EC5B0(0, &qword_281580400, 0x277D4C058);
  v12[29] = sub_26A53FCF8(&unk_281580408);
  v12[30] = sub_26A4EC5B0(0, &qword_2815802F0, 0x277D4C068);
  v12[31] = sub_26A53FCF8(&unk_2815802F8);
  v12[32] = sub_26A4EC5B0(0, &qword_281580240, 0x277D4C060);
  v12[33] = sub_26A53FCF8(&unk_281580248);
  v12[34] = sub_26A4EC5B0(0, &qword_2815803F0, 0x277D4C070);
  v12[35] = sub_26A53FCF8(&unk_2815803F8);
  v12[36] = sub_26A4EC5B0(0, &qword_2815803E0, 0x277D4C078);
  v12[37] = sub_26A53FCF8(&unk_2815803E8);
  v12[38] = sub_26A4EC5B0(0, &qword_281580330, 0x277D4C080);
  v12[39] = sub_26A53FCF8(&unk_281580338);
  v12[40] = sub_26A4EC5B0(0, &qword_2815803D0, 0x277D4C088);
  v12[41] = sub_26A53FCF8(&unk_2815803D8);
  v12[42] = sub_26A4EC5B0(0, &qword_2815803C0, 0x277D4C098);
  v12[43] = sub_26A53FCF8(&unk_2815803C8);
  v12[44] = sub_26A4EC5B0(0, &qword_281580480, 0x277D4C090);
  v12[45] = sub_26A53FCF8(&unk_281580488);
  v12[46] = sub_26A4EC5B0(0, &qword_281580230, 0x277D4C0A0);
  v12[47] = sub_26A53FCF8(&unk_281580238);
  v12[48] = sub_26A4EC5B0(0, &qword_281580270, 0x277D4C0A8);
  v12[49] = sub_26A53FCF8(&unk_281580278);
  v12[50] = sub_26A4EC5B0(0, &qword_2803ACBF8, 0x277D4BF88);
  v12[51] = sub_26A53FCF8(&unk_2803ACC00);
  v12[52] = sub_26A4EC5B0(0, &qword_281580410, 0x277D4C0B0);
  v12[53] = sub_26A53FCF8(&unk_281580418);
  v12[54] = sub_26A4EC5B0(0, &qword_281580460, 0x277D4C0C0);
  v12[55] = sub_26A53FCF8(&unk_281580468);
  v12[56] = sub_26A4EC5B0(0, &qword_281580350, 0x277D4C0D0);
  v12[57] = sub_26A53FCF8(&unk_281580358);
  v12[58] = sub_26A4EC5B0(0, &qword_2815802E0, 0x277D4C0B8);
  v12[59] = sub_26A53FCF8(&unk_2815802E8);
  v12[60] = sub_26A4EC5B0(0, &qword_281580220, 0x277D4C0C8);
  v12[61] = sub_26A53FCF8(&unk_281580228);
  v12[62] = sub_26A4EC5B0(0, &qword_281580260, 0x277D4C0D8);
  v12[63] = sub_26A53FCF8(&unk_281580268);
  v12[64] = sub_26A4EC5B0(0, &qword_2815802A0, 0x277D4C0E0);
  v12[65] = sub_26A53FCF8(&unk_2815802A8);
  v12[66] = sub_26A4EC5B0(0, &qword_2815803B0, 0x277D4C0E8);
  v12[67] = sub_26A53FCF8(&unk_2815803B8);
  v12[68] = sub_26A4EC5B0(0, &qword_281580250, 0x277D4C0F0);
  v12[69] = sub_26A53FCF8(&unk_281580258);
  v12[70] = sub_26A4EC5B0(0, &qword_2803ACC08, 0x277D4C0F8);
  v12[71] = sub_26A53FCF8(&unk_2803ACC10);
  v12[72] = sub_26A4EC5B0(0, &qword_2815802D0, 0x277D4C108);
  v12[73] = sub_26A53FCF8(&unk_2815802D8);
  v12[74] = sub_26A4EC5B0(0, &qword_281580450, 0x277D4C110);
  v12[75] = sub_26A53FCF8(&unk_281580458);
  v12[76] = sub_26A4EC5B0(0, &qword_2815802C0, 0x277D4C118);
  v12[77] = sub_26A53FCF8(&unk_2815802C8);
  v12[78] = sub_26A4EC5B0(0, &qword_2815803A0, 0x277D4C120);
  v12[79] = sub_26A53FCF8(&unk_2815803A8);
  v12[80] = sub_26A4EC5B0(0, &qword_281580290, 0x277D4C128);
  v12[81] = sub_26A53FCF8(&unk_281580298);
  v12[82] = sub_26A4EC5B0(0, &qword_281580320, 0x277D4C130);
  v12[83] = sub_26A53FCF8(&unk_281580328);
  v12[84] = sub_26A4EC5B0(0, &qword_281580310, 0x277D4C138);
  v12[85] = sub_26A53FCF8(&unk_281580318);
  v12[86] = sub_26A4EC5B0(0, &qword_281580440, 0x277D4C140);
  v12[87] = sub_26A53FCF8(&unk_281580448);
  v12[88] = sub_26A4EC5B0(0, &qword_2815804A0, 0x277D4C158);
  v12[89] = sub_26A53FCF8(&unk_2815804A8);
  v12[90] = sub_26A4EC5B0(0, &qword_2815804B0, 0x277D4C160);
  v12[91] = sub_26A53FCF8(&unk_2815804B8);
  v12[92] = sub_26A4EC5B0(0, &qword_2815804D0, 0x277D4C010);
  v12[93] = sub_26A53FCF8(&unk_2815804D8);
  v10 = MEMORY[0x277D84F90];
  sub_26A7DCEA8(0, 47, 0);
  v0 = 0;
  v1 = v10;
  v2 = *(v10 + 16);
  v3 = 24 * v2;
  do
  {
    v4 = *&v12[2 * v0];
    v11 = v1;
    v5 = *(v1 + 24);
    v6 = v2 + v0 + 1;
    if (v2 + v0 >= v5 >> 1)
    {
      v9 = *&v12[2 * v0];
      sub_26A7DCEA8((v5 > 1), v2 + v0 + 1, 1);
      v4 = v9;
      v1 = v11;
    }

    ++v0;
    *(v1 + 16) = v6;
    v7 = v1 + v3;
    *(v7 + 32) = v4;
    *(v7 + 40) = v4;
    v3 += 24;
  }

  while (v0 != 47);

  return sub_26A53C1CC(v1);
}

uint64_t sub_26A53C1CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACC18, &qword_26A85C1D8);
    v1 = sub_26A852488();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_26A53F374(v2, 1, &v4);

  return v4;
}

uint64_t _s9SnippetUI22VisualResponseProviderC4view3for7contextQrSaySo13SFCardSectionCG_AA7ContextCtFZ_0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v152 = a2;
  v175 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC978, &qword_26A85BDE0);
  OUTLINED_FUNCTION_0_17(v4, &v181);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC980, &qword_26A85BDE8);
  OUTLINED_FUNCTION_0_17(v7, &v182);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC988, &qword_26A85BDF0);
  OUTLINED_FUNCTION_0_17(v10, &v185);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC990, &qword_26A85BDF8);
  OUTLINED_FUNCTION_0_17(v13, &v183);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC998, &qword_26A85BE00);
  OUTLINED_FUNCTION_0_17(v16, &v184);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9A0, &qword_26A85BE08);
  OUTLINED_FUNCTION_0_17(v19, &v187);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82();
  v172 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9A8, &qword_26A85BE10);
  OUTLINED_FUNCTION_0_17(v22, &v186);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9B0, &qword_26A85BE18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_82();
  v171 = v26;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9B8, &qword_26A85BE20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_82();
  v173 = v28;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9C0, &qword_26A85BE28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_82();
  v168 = v30;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9C8, &unk_26A85BE30);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  v169 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v167 = &v148 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9D0, &qword_26A867850);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v36);
  v38 = &v148 - v37;
  v39 = type metadata accessor for AnyComponentViewConverter(0);
  OUTLINED_FUNCTION_15();
  v150 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v149 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  v148 = &v148 - v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_0(&v148 - v47);

  v48 = sub_26A851E78();
  LOBYTE(v145) = 2;
  sub_26A7B21A8(v48, 1, "SnippetUI/CardSectionViewBuilder.swift", 38, 2, 106, "view(for:context:)", 18, v145, a1, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v154 = type metadata accessor for Form(0);
  v49 = swift_allocObject();
  v153 = Form.init()(v49);
  v50 = sub_26A73670C();
  v51 = 0;
  v177 = a1 & 0xC000000000000001;
  v178 = v50;
  v52 = a1;
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v176 = MEMORY[0x277D84F90];
  v54 = &unk_2803D1000;
  while (v178 != v51)
  {
    if (v177)
    {
      v55 = MEMORY[0x26D6644E0](v51, v52);
    }

    else
    {
      if (v51 >= *(v53 + 16))
      {
        goto LABEL_41;
      }

      v55 = *(v52 + 8 * v51 + 32);
    }

    v56 = v55;
    a1 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v117 = MEMORY[0x26D6644E0](0, v52);
      goto LABEL_35;
    }

    if (qword_2803A8A68 != -1)
    {
      swift_once();
    }

    v57 = qword_2803D1A08;
    if (*(qword_2803D1A08 + 16) && (ObjectType = swift_getObjectType(), v59 = sub_26A5484D4(ObjectType), (v60 & 1) != 0))
    {
      (*(*(*(v57 + 56) + 16 * v59 + 8) + 144))(v56);
      if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
      {
        goto LABEL_18;
      }

      v61 = v149;
      sub_26A53E5AC(v38, v149, v62);
      v63 = v61;
      v64 = v148;
      sub_26A53E5AC(v63, v148, v65);
      sub_26A53E5AC(v64, v151, v66);
      v67 = v176;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A1910();
        v67 = v72;
      }

      v69 = *(v67 + 16);
      if (v69 >= *(v67 + 24) >> 1)
      {
        sub_26A7A1910();
        v67 = v73;
      }

      *(v67 + 16) = v69 + 1;
      v70 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v176 = v67;
      sub_26A53E5AC(v151, v67 + v70 + *(v150 + 72) * v69, v68);
      v51 = a1;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
LABEL_18:
      sub_26A4DBD10(v38, &qword_2803AC9D0, &qword_26A867850);
      v71 = sub_26A851E98();
      LOBYTE(v146) = 2;
      sub_26A7B2484(v71, 1, "SnippetUI/CardSectionViewBuilder.swift", 38, 2, 250, "converter(for:)", 15, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);

      ++v51;
    }
  }

  v74 = v176;
  v75 = *(v176 + 16);
  if (v75 != sub_26A73670C())
  {
    v76 = sub_26A851E98();
    LOBYTE(v146) = 2;
    sub_26A7B26A8(v76, 1, "SnippetUI/CardSectionViewBuilder.swift", 38, 2, 113, "view(for:context:)", 18, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  }

  sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
  v78 = sub_26A63CD18(v77);
  v80 = v152;
  switch(v78)
  {
    case 1:
    case 2:
    case 3:
      v81 = sub_26A852598();

      if (v81)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    case 4:
LABEL_24:
      switch(sub_26A63CD18(v79))
      {
        case 2u:
          goto LABEL_27;
        case 4u:
          break;
        default:
          v83 = sub_26A852598();

          if (v83)
          {
            goto LABEL_28;
          }

          break;
      }

      switch(sub_26A63CD18(v82))
      {
        case 3u:
          goto LABEL_27;
        case 4u:
          goto LABEL_29;
        default:
          v144 = sub_26A852598();

          if (v144)
          {
            goto LABEL_28;
          }

          break;
      }

      break;
    default:
LABEL_27:

LABEL_28:
      v80[OBJC_IVAR____TtC9SnippetUI7Context_isModernizedSnippet] = 1;
      break;
  }

LABEL_29:
  v84 = v157;
  sub_26A53D2C8(v74, v80, v52, v157);

  *&v84[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9D8, &qword_26A85BE40) + 36)] = v80;
  *&v84[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9E0, &qword_26A85BE48) + 36)] = 256;
  v85 = &v84[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9E8, &qword_26A85BE50) + 36)];
  *v85 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F0, &unk_26A87C5C0);
  swift_storeEnumTagMultiPayload();
  v86 = (v85 + *(type metadata accessor for MaterialVibrancyListenerModifier(0) + 20));
  type metadata accessor for Context(0);
  sub_26A53E610(&qword_28157D9E0);
  v39 = v80;
  OUTLINED_FUNCTION_14_5();
  *v86 = sub_26A84F258();
  v86[1] = v87;
  KeyPath = swift_getKeyPath();
  v89 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  v90 = *&v39[v89];
  v91 = &v84[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F8, &qword_26A85BEB8) + 36)];
  *v91 = KeyPath;
  v91[1] = v90;
  swift_getKeyPath();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACA00, &qword_26A85BEE8);
  OUTLINED_FUNCTION_13_8(v92);
  swift_getKeyPath();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACA08, &qword_26A85BF18);
  OUTLINED_FUNCTION_13_8(v93);
  v94 = swift_getKeyPath();
  v95 = v39[OBJC_IVAR____TtC9SnippetUI7Context_isSolariumEnabled];
  v96 = &v84[*(v155 + 36)];
  *v96 = v94;
  v96[8] = v95;
  v97 = swift_getKeyPath();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    VRXInteractionDelegate.boxed()();
    swift_unknownObjectRelease();
  }

  else
  {
    v179 = 0;
  }

  v54 = v164;
  v180 = Strong == 0;
  OUTLINED_FUNCTION_9_10();
  v99 = v163;
  v101 = (v163 + v100);
  sub_26A4DBDB4(&v179, v163 + v100 + 8, &qword_2803ACA10, &qword_26A85BF70);
  *v101 = v97;
  sub_26A4DBDB4(v84, v99, &qword_2803AC978, &qword_26A85BDE0);
  v102 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0, &qword_26A85A4C0);
  swift_allocObject();
  v103 = sub_26A84EBA8();
  v104 = v99;
  v105 = v161;
  sub_26A4DBDB4(v104, v161, &qword_2803AC980, &qword_26A85BDE8);
  OUTLINED_FUNCTION_9_10();
  v107 = (v105 + v106);
  *v107 = v102;
  v107[1] = v103;
  v108 = swift_getKeyPath();
  v109 = v105;
  v110 = v162;
  sub_26A4DBDB4(v109, v162, &qword_2803AC988, &qword_26A85BDF0);
  OUTLINED_FUNCTION_9_10();
  v112 = (v110 + v111);
  *v112 = v108;
  v112[1] = 1;
  v113 = swift_getKeyPath();
  LOBYTE(v103) = sub_26A61E6B8();
  sub_26A4DBDB4(v110, v54, &qword_2803AC990, &qword_26A85BDF8);
  OUTLINED_FUNCTION_9_10();
  v115 = &v54[v114];
  *v115 = v113;
  v115[8] = v103 & 1;
  a1 = swift_getKeyPath();
  if (v178)
  {
    v116 = v177;
    sub_26A736710();
    if (v116)
    {
      goto LABEL_42;
    }

    v117 = *(v52 + 32);
LABEL_35:
    v118 = v117;
    v119 = [v117 increasedContrastMode];

    v120 = sub_26A837664(v119);
    goto LABEL_37;
  }

  v120 = 0;
LABEL_37:
  v121 = v172;
  sub_26A4DBDB4(v54, v172, &qword_2803AC998, &qword_26A85BE00);
  OUTLINED_FUNCTION_9_10();
  v123 = v121 + v122;
  *v123 = a1;
  *(v123 + 8) = v120;
  OUTLINED_FUNCTION_9_10();
  v124 = v165;
  v126 = (v165 + v125);
  *v126 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v127 = v126 + *(type metadata accessor for VibrancyTraitCheck(0) + 20);
  *v127 = swift_getKeyPath();
  v127[8] = 0;
  sub_26A4DBDB4(v121, v124, &qword_2803AC9A0, &qword_26A85BE08);
  v128 = v171;
  sub_26A53DC24(v171);
  sub_26A4DBD10(v124, &qword_2803AC9A8, &qword_26A85BE10);
  sub_26A53E610(&qword_28157DB60);
  v129 = sub_26A84EB78();
  v130 = v173;
  sub_26A4DBDB4(v128, v173, &qword_2803AC9B0, &qword_26A85BE18);
  v131 = (v130 + *(v166 + 36));
  v132 = v153;
  *v131 = v129;
  v131[1] = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = v39;
  v134 = v130;
  v135 = v168;
  sub_26A4DBDB4(v134, v168, &qword_2803AC9B8, &qword_26A85BE20);
  v136 = (v135 + *(v170 + 36));
  *v136 = sub_26A53E650;
  v136[1] = v133;
  v137 = v167;
  sub_26A4DBDB4(v135, v167, &qword_2803AC9C0, &qword_26A85BE28);
  sub_26A4DBD68(v137, v169, &qword_2803AC9C8, &unk_26A85BE30);
  sub_26A53E658();
  v138 = v39;
  v139 = sub_26A851248();
  OUTLINED_FUNCTION_14_5();
  result = sub_26A4DBD10(v140, v141, v142);
  *v175 = v139;
  return result;
}

uint64_t sub_26A53D2C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v31 = a3;
  v33 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB40, &qword_26A85C0E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_26A56B810();
  *&v36 = v13;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26A53F648;
  *(v15 + 24) = v14;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB48, &qword_26A85C118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB50, &qword_26A85C120);
  sub_26A5401F4(&unk_28157D8C8);
  sub_26A53F658();
  sub_26A8512F8();
  sub_26A4EC5B0(0, &qword_28157D860, 0x277CBEBD0);
  v17 = sub_26A551A34(1);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v34 = 0;
  v21 = 0;
  if (v17)
  {

    sub_26A66480C(v22, &v36);
    v18 = v36;
    v19 = *(&v36 + 1);
    v20 = v37;
    v21 = v38;
    v34 = *(&v37 + 1);
    v40 = v37;
    v41 = v36;
    v39 = v38;
    sub_26A4DBD68(&v41, v35, &qword_2803AC190, &qword_26A85A9E0);
    sub_26A4DBD68(&v40, v35, &qword_2803AC190, &qword_26A85A9E0);
    sub_26A4DBD68(&v39, v35, &qword_2803ACBD8, &qword_26A870190);
  }

  v23 = *(v7 + 16);
  v32 = v12;
  v23(v9, v12, v6);
  v24 = v20;
  v25 = v6;
  v26 = v33;
  v23(v33, v9, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACBD0, &qword_26A85C178) + 48)];
  v28 = v34;
  sub_26A53FC44(v18, v19, v24, v34, v21);
  sub_26A53FC94(v18, v19, v24, v28, v21);
  *v27 = v18;
  v27[1] = v19;
  v27[2] = v24;
  v27[3] = v28;
  v27[4] = v21;
  v29 = *(v7 + 8);
  v29(v32, v25);
  sub_26A53FC94(v18, v19, v24, v28, v21);
  return (v29)(v9, v25);
}

uint64_t sub_26A53D68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a4;
  v71 = a5;
  v8 = sub_26A84FAF8();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v65 - v11;
  v12 = OBJC_IVAR____TtC9SnippetUI7Context_componentViewBuilderContext;
  swift_beginAccess();
  v13 = *a2;

  v76[0] = v13(v14);

  v15 = sub_26A851248();

  v16 = sub_26A850258();
  sub_26A84ED48();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_26A850268();
  sub_26A84ED48();
  v73[0] = 0;
  v72 = 0;
  v78 = v15;
  v79 = v16;
  v80 = v18;
  v81 = v20;
  v82 = v22;
  v83 = v24;
  v84 = 0;
  v85 = v25;
  v86 = v26;
  v87 = v27;
  v88 = v28;
  v89 = v29;
  v30 = a1;
  v90 = 0;
  v31 = *(a3 + v12);
  if (v31)
  {
    v32 = *(v31 + 24);
    v33 = *(v32 + 16);
    v30 = a1;
    if (v33)
    {
      v30 = 0;
      v34 = *(a2 + 16);
      v35 = *(a2 + 24);
      v36 = (v32 + 40);
      while (1)
      {
        if (*v36)
        {
          v37 = *(v36 - 1) == v34 && *v36 == v35;
          if (v37 || (sub_26A852598() & 1) != 0)
          {
            break;
          }
        }

        v36 += 2;
        if (v33 == ++v30)
        {
          v30 = a1;
          break;
        }
      }
    }
  }

  sub_26A5655D4(v30, *(a2 + 69), *(a2 + 48), *(a2 + 56), v76);
  sub_26A4DBD10(&v78, &qword_2803ACBC0, &qword_26A882A50);
  result = swift_getKeyPath();
  v39 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = result;
    v41 = *(v66 + 16);
    v42 = *(a3 + v12);
    if (v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = v39 < v41;
    }

    v44 = v43;
    if (v42 && v39 >= v41)
    {
      v45 = *(a2 + 16);
      v46 = *(a2 + 24);
      v47 = sub_26A5652AC(*(v42 + 24));
      if (v48 > 1)
      {
        v49 = v47;
        v50 = v48;
        if (v45 == v47 && v48 == v46)
        {
          sub_26A53FCE4(v45, v48);
          v44 = 0;
        }

        else
        {
          v52 = sub_26A852598();
          sub_26A53FCE4(v49, v50);
          v44 = v52 ^ 1;
        }
      }

      else
      {
        v44 = 1;
      }
    }

    sub_26A4DBDB4(v76, v73, &qword_2803ACB88, &qword_26A85C138);
    v74 = v40;
    v75 = v44 & 1;
    KeyPath = swift_getKeyPath();
    v54 = *(a3 + v12);
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = a1 <= 0;
    }

    v56 = !v55;
    if (v54 && a1 <= 0)
    {
      v57 = *(v54 + 24);
      if (v57[2] && (v58 = v57[5]) != 0)
      {
        if (*(a2 + 16) == v57[4] && v58 == *(a2 + 24))
        {
          v56 = 0;
        }

        else
        {
          v56 = sub_26A852598() ^ 1;
        }
      }

      else
      {
        v56 = 1;
      }
    }

    sub_26A4DBDB4(v73, v76, &qword_2803ACB78, &qword_26A85C130);
    v76[37] = KeyPath;
    v77 = v56 & 1;
    v60 = v68;
    sub_26A84FAE8();
    v62 = v69;
    v61 = v70;
    (*(v69 + 16))(v67, v60, v70);
    sub_26A53E610(&unk_28157FC88);
    v63 = sub_26A84F058();
    (*(v62 + 8))(v60, v61);
    v64 = v71;
    result = sub_26A4DBDB4(v76, v71, &qword_2803ACB68, &qword_26A85C128);
    *(v64 + 312) = v63;
  }

  return result;
}

uint64_t sub_26A53DBB8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACBE0, &qword_26A85C180);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_26A53DC24@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB30, &qword_26A85C0A8);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACA40, &qword_26A85C048);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  sub_26A53E328();
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    v11 = &v8[*(v6 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB18, &qword_26A85C090);
    v13[1] = a1;

    sub_26A84ACD8();
    *v11 = KeyPath;
    sub_26A4DBD68(v1, v8, &qword_2803AC9A8, &qword_26A85BE10);
    sub_26A4DBD68(v8, v5, &qword_2803ACA40, &qword_26A85C048);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9A8, &qword_26A85BE10);
    sub_26A53E8E0();
    sub_26A53E998();
    sub_26A84FDF8();

    return sub_26A4DBD10(v8, &qword_2803ACA40, &qword_26A85C048);
  }

  else
  {
    sub_26A4DBD68(v1, v5, &qword_2803AC9A8, &qword_26A85BE10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9A8, &qword_26A85BE10);
    sub_26A53E8E0();
    sub_26A53E998();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A53DE8C(uint64_t *a1)
{
  v1 = COERCE_DOUBLE(sub_26A507558(0, *a1));
  if (v2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  sub_26A61DEB0(*&v1, v2);
  sub_26A5E7C88(v3);
  return sub_26A53F320(&v5);
}

uint64_t sub_26A53DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_26A851238();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v17 = type metadata accessor for ComponentStack(255, v4, v5, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240, &qword_26A855E00);
  v32[1] = v17;
  sub_26A84F4F8();
  sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v36 = v18;
  v37 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82();
  v34 = v21;
  v39 = v4;
  v40 = v5;
  v41 = v3;
  sub_26A84FBF8();
  sub_26A851228();
  OUTLINED_FUNCTION_5_13();
  v35 = v22;
  swift_getWitnessTable();
  v33 = v15;
  sub_26A80757C();
  v23 = *(v8 + 8);
  v23(v12, v6);
  sub_26A80757C();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v26 = sub_26A5401F4(v25);
  v46 = WitnessTable;
  v47 = v26;
  swift_getWitnessTable();
  v27 = v34;
  sub_26A8012F4();
  v23(v12, v6);
  v23(v33, v6);
  v44 = swift_getWitnessTable();
  v45 = v26;
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v42 = v28;
  v43 = v29;
  OUTLINED_FUNCTION_6_14();
  v30 = v36;
  swift_getWitnessTable();
  sub_26A80757C();
  return (*(v37 + 8))(v27, v30);
}

uint64_t sub_26A53E248(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A80757C();
  sub_26A80757C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_26A53E328()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_26A8517B8();
  v4 = v3;

  type metadata accessor for Resources();
  v5 = sub_26A5884F0();
  v6 = [v5 localizations];

  if (!v6)
  {
    sub_26A851A98();
    v6 = sub_26A851A88();
  }

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB38, &qword_26A85C0E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8570D0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  v9 = sub_26A851A88();

  v10 = [v7 preferredLocalizationsFromArray:v6 forPreferences:v9];

  v11 = sub_26A851A98();
  if (!*(v11 + 16))
  {

    return 0;
  }

  v12 = *(v11 + 32);

  return v12;
}

uint64_t sub_26A53E4E4(uint64_t a1)
{
  v2 = sub_26A84AD18();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F908();
}

uint64_t sub_26A53E5AC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for AnyComponentViewConverter(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26A53E610(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A53E658()
{
  result = qword_2803ACA18;
  if (!qword_2803ACA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9C8, &unk_26A85BE30);
    sub_26A53E6E4();
    sub_26A53F2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA18);
  }

  return result;
}

unint64_t sub_26A53E6E4()
{
  result = qword_2803ACA20;
  if (!qword_2803ACA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9C0, &qword_26A85BE28);
    sub_26A53E79C();
    sub_26A5401F4(&unk_28157FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA20);
  }

  return result;
}

unint64_t sub_26A53E79C()
{
  result = qword_2803ACA28;
  if (!qword_2803ACA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9B8, &qword_26A85BE20);
    sub_26A53E854();
    sub_26A5401F4(&qword_28157FB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA28);
  }

  return result;
}

unint64_t sub_26A53E854()
{
  result = qword_2803ACA30;
  if (!qword_2803ACA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9B0, &qword_26A85BE18);
    sub_26A53E8E0();
    sub_26A53E998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA30);
  }

  return result;
}

unint64_t sub_26A53E8E0()
{
  result = qword_2803ACA38;
  if (!qword_2803ACA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACA40, &qword_26A85C048);
    sub_26A53E998();
    sub_26A5401F4(&unk_2803ACB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA38);
  }

  return result;
}

unint64_t sub_26A53E998()
{
  result = qword_2803ACA48;
  if (!qword_2803ACA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9A8, &qword_26A85BE10);
    sub_26A53EA54();
    sub_26A53E610(&qword_2803ACB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA48);
  }

  return result;
}

unint64_t sub_26A53EA54()
{
  result = qword_2803ACA50;
  if (!qword_2803ACA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9A0, &qword_26A85BE08);
    sub_26A53EB0C();
    sub_26A5401F4(&unk_2803ACAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA50);
  }

  return result;
}

unint64_t sub_26A53EB0C()
{
  result = qword_2803ACA58;
  if (!qword_2803ACA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC998, &qword_26A85BE00);
    sub_26A53EBC4();
    sub_26A5401F4(&qword_28157FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA58);
  }

  return result;
}

unint64_t sub_26A53EBC4()
{
  result = qword_2803ACA60;
  if (!qword_2803ACA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC990, &qword_26A85BDF8);
    sub_26A53EC7C();
    sub_26A5401F4(&qword_28157FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA60);
  }

  return result;
}

unint64_t sub_26A53EC7C()
{
  result = qword_2803ACA68;
  if (!qword_2803ACA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC988, &qword_26A85BDF0);
    sub_26A53ED34();
    sub_26A5401F4(&unk_28157FB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA68);
  }

  return result;
}

unint64_t sub_26A53ED34()
{
  result = qword_2803ACA70;
  if (!qword_2803ACA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC980, &qword_26A85BDE8);
    sub_26A53EDEC();
    sub_26A5401F4(&qword_28157FBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA70);
  }

  return result;
}

unint64_t sub_26A53EDEC()
{
  result = qword_2803ACA78;
  if (!qword_2803ACA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC978, &qword_26A85BDE0);
    sub_26A53EEA4();
    sub_26A5401F4(&qword_28157FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA78);
  }

  return result;
}

unint64_t sub_26A53EEA4()
{
  result = qword_2803ACA80;
  if (!qword_2803ACA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACA08, &qword_26A85BF18);
    sub_26A53EF5C();
    sub_26A5401F4(&qword_28157FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA80);
  }

  return result;
}

unint64_t sub_26A53EF5C()
{
  result = qword_2803ACA88;
  if (!qword_2803ACA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACA00, &qword_26A85BEE8);
    sub_26A53F014();
    sub_26A5401F4(&qword_2803ACAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA88);
  }

  return result;
}

unint64_t sub_26A53F014()
{
  result = qword_2803ACA90;
  if (!qword_2803ACA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9F8, &qword_26A85BEB8);
    sub_26A53F0CC();
    sub_26A5401F4(&qword_28157FB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA90);
  }

  return result;
}

unint64_t sub_26A53F0CC()
{
  result = qword_2803ACA98;
  if (!qword_2803ACA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9E8, &qword_26A85BE50);
    sub_26A53F188();
    sub_26A53E610(&unk_2803ACAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACA98);
  }

  return result;
}

unint64_t sub_26A53F188()
{
  result = qword_2803ACAA0;
  if (!qword_2803ACAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACAA8, &unk_26A85C050);
    sub_26A53F214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACAA0);
  }

  return result;
}

unint64_t sub_26A53F214()
{
  result = qword_2803ACAB0;
  if (!qword_2803ACAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC9E0, &qword_26A85BE48);
    sub_26A5401F4(&unk_2803ACAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACAB0);
  }

  return result;
}

unint64_t sub_26A53F2CC()
{
  result = qword_28157F3F8;
  if (!qword_28157F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F3F8);
  }

  return result;
}

void sub_26A53F374(uint64_t a1, char a2, void *a3)
{
  v23 = *(a1 + 16);
  if (!v23)
  {

    return;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i = (i + 24))
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_26A852618();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(i - 1);
    v24 = *i;
    v9 = *a3;
    v11 = sub_26A5484D4(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803ACC20, &unk_26A85C1E0);
      sub_26A8523F8();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + 8 * v11) = v8;
    *(v17[7] + 16 * v11) = v24;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    ++v6;
    v17[2] = v20;
    a2 = 1;
    if (v23 == v6)
    {

      return;
    }
  }

  sub_26A71C2BC();
  v15 = sub_26A5484D4(v8);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v21 = swift_allocError();
  swift_willThrow();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_26A852248();
  MEMORY[0x26D663B00](0xD00000000000001BLL, 0x800000026A88BAC0);
  sub_26A8523D8();
  MEMORY[0x26D663B00](39, 0xE100000000000000);
  sub_26A852418();
  __break(1u);
}

unint64_t sub_26A53F658()
{
  result = qword_2803ACB58;
  if (!qword_2803ACB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACB50, &qword_26A85C120);
    sub_26A53F710();
    sub_26A5401F4(&unk_28157FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACB58);
  }

  return result;
}

unint64_t sub_26A53F710()
{
  result = qword_2803ACB60;
  if (!qword_2803ACB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACB68, &qword_26A85C128);
    sub_26A53F7C8();
    sub_26A5401F4(&qword_28157FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACB60);
  }

  return result;
}

unint64_t sub_26A53F7C8()
{
  result = qword_2803ACB70;
  if (!qword_2803ACB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACB78, &qword_26A85C130);
    sub_26A53F880();
    sub_26A5401F4(&qword_28157FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACB70);
  }

  return result;
}

unint64_t sub_26A53F880()
{
  result = qword_2803ACB80;
  if (!qword_2803ACB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACB88, &qword_26A85C138);
    sub_26A53F938();
    sub_26A5401F4(&qword_28157FBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACB80);
  }

  return result;
}

unint64_t sub_26A53F938()
{
  result = qword_2803ACB90;
  if (!qword_2803ACB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACB98, &qword_26A85C140);
    sub_26A53F9F0();
    sub_26A5401F4(&unk_28157FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACB90);
  }

  return result;
}

unint64_t sub_26A53F9F0()
{
  result = qword_2803ACBA0;
  if (!qword_2803ACBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACBA8, &qword_26A85C148);
    sub_26A53FAA8();
    sub_26A5401F4(&qword_28157FB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACBA0);
  }

  return result;
}

unint64_t sub_26A53FAA8()
{
  result = qword_2803ACBB0;
  if (!qword_2803ACBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACBB8, &unk_26A85C150);
    sub_26A53FB34();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ACBB0);
  }

  return result;
}

unint64_t sub_26A53FB34()
{
  result = qword_28157FD88;
  if (!qword_28157FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACBC0, &qword_26A882A50);
    sub_26A53FBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD88);
  }

  return result;
}

unint64_t sub_26A53FBC0()
{
  result = qword_28157FDF0;
  if (!qword_28157FDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ACBC8, &unk_26A85C160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDF0);
  }

  return result;
}

uint64_t sub_26A53FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_26A53FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_26A53FCE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_26A53FCF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_7(a1);
  if (!result)
  {
    sub_26A4EC5B0(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26A53FD3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Context(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A53FDC4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A53FF00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26A540104(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_26A540144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A5401F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_7(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t result)
{
  v4 = v3 + *(result + 36);
  *v4 = v1;
  *(v4 + 8) = v2;
  return result;
}

uint64_t sub_26A5402CC(uint64_t a1)
{
  v1 = sub_26A8502F8();
  result = sub_26A84FEC8();
  qword_2803D1A10 = v1;
  dword_2803D1A18 = result;
  qword_2803D1A30 = MEMORY[0x277CE04F8];
  unk_2803D1A38 = MEMORY[0x277CE04E8];
  return result;
}

uint64_t sub_26A540318(uint64_t a1)
{
  sub_26A850468();
  sub_26A8503A8();
  v1 = sub_26A850428();

  result = sub_26A84FED8();
  qword_2803D1A40 = v1;
  dword_2803D1A48 = result;
  qword_2803D1A60 = MEMORY[0x277CE04F8];
  unk_2803D1A68 = MEMORY[0x277CE04E8];
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI10ShapeStyle_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26A5403A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A5403E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A540444@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8A70 != -1)
  {
    swift_once();
  }

  return sub_26A540518(&qword_2803D1A10, a1);
}

uint64_t sub_26A5404B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8A78 != -1)
  {
    swift_once();
  }

  return sub_26A540518(&qword_2803D1A40, a1);
}

uint64_t sub_26A540618(uint64_t a1)
{
  *(v1 + 16) = a1;

  swift_beginAccess();
  *(v1 + 24) = MEMORY[0x277D84F98];

  return sub_26A540F00();
}

void sub_26A54067C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCD0, &unk_26A85C4F0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v9 - v4);
  v6 = v1[1];
  v7 = *(*v1 + 16);
  if (v6 == v7)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v6 >= v7)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for SmartDialogCollatableItem(0);
      v1[1] = v6 + 1;
      v8 = v1[2];
      *v5 = v8;
      sub_26A544FD0();
      if (!__OFADD__(v8, 1))
      {
        v1[2] = v8 + 1;
        sub_26A544EC8(v5, a1, &qword_2803ACCD0, &unk_26A85C4F0);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_26A54081C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v35 = v3;
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmartDialogAnimationDrawableType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCE8, &qword_26A85C518);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - v19;
  v22 = &v35 + *(v21 + 56) - v19;
  sub_26A544FD0();
  sub_26A544FD0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v35;
      v23 = v36;
      (*(v35 + 32))(v5, v22, v36);
      v25 = sub_26A84AC98();
      v26 = *(v24 + 8);
      v26(v5, v23);
      v26(v14, v23);
LABEL_13:
      sub_26A545090(v20, type metadata accessor for SmartDialogAnimationDrawableType);
      return v25 & 1;
    }

    (*(v35 + 8))(v14, v36);
    goto LABEL_7;
  }

  sub_26A544FD0();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCD8, &unk_26A85C500) + 48);
  v29 = *&v17[v27];
  v28 = *&v17[v27 + 8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v17, v6);
LABEL_7:
    sub_26A545028(v20);
    goto LABEL_8;
  }

  v31 = *&v22[v27];
  v30 = *&v22[v27 + 8];
  (*(v8 + 32))(v11, v22, v6);
  v32 = MEMORY[0x26D6629F0](v17, v11);
  v33 = *(v8 + 8);
  v33(v11, v6);
  v33(v17, v6);
  if (v32)
  {
    v25 = v28 == v30 && v29 == v31;
    goto LABEL_13;
  }

  sub_26A545090(v20, type metadata accessor for SmartDialogAnimationDrawableType);
LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_26A540C30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_2_11();
  v6 = *(type metadata accessor for SmartDialogAnimationChunk(v5) + 20);

  return sub_26A54081C(v3 + v6, v2 + v6);
}

uint64_t sub_26A540C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4 || (sub_26A7567F4() & 1) == 0)
  {
    return 0;
  }

  return sub_26A7567F4();
}

double sub_26A540D10()
{
  type metadata accessor for SmartDialogCollatableItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_14();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668, &qword_26A858C20) + 48);
    sub_26A84ACC8();
  }

  else
  {
    v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660, &qword_26A858C18) + 64);
    sub_26A850798();
  }

  v3 = *(v0 + *v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v0);
  return v3;
}

double sub_26A540E08()
{
  type metadata accessor for SmartDialogCollatableItem(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_14();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668, &qword_26A858C20) + 48);
    sub_26A84ACC8();
  }

  else
  {
    v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660, &qword_26A858C18) + 64);
    sub_26A850798();
  }

  v3 = *(v0 + *v2 + 16);
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v0);
  return v3;
}

uint64_t sub_26A540F00()
{
  v69 = sub_26A84ACC8();
  v1 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SmartDialogAnimationChunk(0);
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v56 - v5);
  v65 = sub_26A850798();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SmartDialogCollatableItem(0);
  MEMORY[0x28223BE20](v62);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCC8, &qword_26A85C4E8);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v56 - v17);

  v73 = v0;
  sub_26A541684(v19);
  v20 = v19;

  v21 = 0;
  v61 = (v7 + 32);
  v60 = (v7 + 16);
  v59 = (v7 + 8);
  v58 = (v1 + 32);
  v57 = (v1 + 16);
  v56 = (v1 + 8);
  v77 = 0;
  v75 = v20;
  v76 = 0;
  v22 = 0.0;
  v70 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v72;
    sub_26A54067C(v72);
    sub_26A544EC8(v23, v18, &qword_2803ACCC8, &qword_26A85C4E8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCD0, &unk_26A85C4F0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
    {

      v53 = v73;
      v54 = v70;
      v55 = v71;
      *(v73 + 32) = v21;
      *(v53 + 40) = v55;
      *(v53 + 48) = v54;
    }

    v25 = *v18;
    sub_26A541B6C();
    sub_26A540D10();
    v27 = v26;
    sub_26A540E08();
    v29 = v27 + v28;
    result = sub_26A5416D8(v27 < v22, v27, v27 + v28);
    if ((v31 & 1) == 0)
    {
      v32 = v21;
      v21 = result;
      goto LABEL_10;
    }

    if (v22 >= v27 && v25)
    {
      v32 = v21;
      goto LABEL_10;
    }

    v32 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v33 = v73;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v33 + 24);
    sub_26A654CD0(v21, v27, v29);
    *(v33 + 24) = v74;
    swift_endAccess();
    v22 = v27;
LABEL_10:
    sub_26A544FD0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v6;
      v36 = v68;
      v35 = v69;
      (*v58)(v68, v10, v69);
      v37 = v66;
      (*v57)(v66 + *(v67 + 20), v36, v35);
      type metadata accessor for SmartDialogAnimationDrawableType(0);
      swift_storeEnumTagMultiPayload();
      *v37 = v21;
      v38 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A1464();
        v38 = v49;
      }

      v39 = *(v38 + 16);
      v40 = v39 + 1;
      v6 = v34;
      if (v39 >= *(v38 + 24) >> 1)
      {
        sub_26A7A1464();
        v38 = v50;
      }

      (*v56)(v68, v69);
      v70 = v38;
    }

    else
    {
      v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB660, &qword_26A858C18) + 48)];
      v42 = *v41;
      v43 = *(v41 + 1);
      v45 = v64;
      v44 = v65;
      (*v61)(v64, v10, v65);
      v46 = v6 + *(v67 + 20);
      v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCD8, &unk_26A85C500) + 48)];
      (*v60)(v46, v45, v44);
      *v47 = v42;
      *(v47 + 1) = v43;
      type metadata accessor for SmartDialogAnimationDrawableType(0);
      swift_storeEnumTagMultiPayload();
      *v6 = v21;
      v38 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A1464();
        v38 = v51;
      }

      v48 = *(v38 + 16);
      v40 = v48 + 1;
      if (v48 >= *(v38 + 24) >> 1)
      {
        sub_26A7A1464();
        v38 = v52;
      }

      (*v59)(v64, v65);
      v71 = v38;
    }

    sub_26A545090(v13, type metadata accessor for SmartDialogCollatableItem);
    *(v38 + 16) = v40;
    sub_26A541B6C();
    v21 = v32;
  }

  __break(1u);
  return result;
}