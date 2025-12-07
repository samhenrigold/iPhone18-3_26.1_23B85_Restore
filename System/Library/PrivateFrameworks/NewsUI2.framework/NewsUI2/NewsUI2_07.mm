uint64_t sub_2187798AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8E250, &protocolRef_FCLocalAreasManager);
    result = sub_219BE1E24();
    if (result)
    {
      a2[3] = &type metadata for ChannelLocationService;
      a2[4] = &off_282A33058;
      *a2 = v5;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2187799C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20, MEMORY[0x277D34428], 1);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
    result = sub_219BE1E34();
    if (v6)
    {
      a2[3] = &type metadata for SportsNavigationTitleStringBuilder;
      a2[4] = &protocol witness table for SportsNavigationTitleStringBuilder;
      v5 = swift_allocObject();
      *a2 = v5;
      result = sub_2186CB1F0(&v8, v5 + 16);
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218779AE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_218779B20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = [result networkBehaviorMonitor];

  v7 = [objc_allocWithZone(MEMORY[0x277D30F80]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA8210, &protocol descriptor for SearchEndpointConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0, &protocolRef_FCAppleAccount);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v10 = [result contentStoreFrontID];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = sub_219BF5414();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = type metadata accessor for PuzzleArchiveService();
  swift_getObjectType();
  sub_2186C6148(0, &qword_280E8E200, 0x277D30F80);
  result = sub_218779FB4(&v17, v7, &v15, v8, v9, v11, v13, v14);
  a2[3] = v14;
  a2[4] = &off_282A63178;
  *a2 = result;
  return result;
}

void *sub_218779E18@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E90330, MEMORY[0x277D33A50], 1);
    result = sub_219BE1E34();
    if (v13)
    {
      v10 = a2(0);
      v11 = swift_allocObject();
      sub_219BEE324();
      swift_allocObject();
      *(v11 + 16) = sub_219BEE314();
      *(v11 + 24) = v9;
      result = sub_2186CB1F0(&v12, v11 + 32);
      a4[3] = v10;
      a4[4] = a3;
      *a4 = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218779FB4(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[17] = 0xD000000000000012;
  v15[18] = 0x8000000219D10710;
  v15[19] = 0xD00000000000001BLL;
  v15[20] = 0x8000000219D10730;
  sub_2186CB1F0(a1, (v15 + 2));
  v15[7] = a2;
  sub_2186CB1F0(a3, (v15 + 8));
  v15[13] = a4;
  v15[14] = a5;
  v15[15] = a6;
  v15[16] = a7;
  return v15;
}

void sub_21877A078(uint64_t a1)
{
  if (!qword_280E91EB0)
  {
    type metadata accessor for TagFeedPoolService();
    sub_2190BB864(&unk_280ED2650, type metadata accessor for TagFeedPoolService, &unk_219C861F0);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91EB0);
    }
  }
}

uint64_t sub_21877A10C(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925E0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618F0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91EB0, type metadata accessor for TagFeedPoolService, sub_2186D5AF8);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21877A29C()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F618F0);
  __swift_project_value_buffer(v0, qword_280F618F0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61708;
  return sub_219BED9E4();
}

uint64_t sub_21877A344()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61708 = result;
  return result;
}

void *sub_21877A414@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE32E8, MEMORY[0x277D2D670], 1);
  result = sub_219BE1E34();
  if (!v185)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(&v184, v185);
  v5 = sub_219BEC464();
  result = __swift_destroy_boxed_opaque_existential_1(&v184);
  if ((v5 & 1) == 0)
  {
    v40 = 0;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_26;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270, &protocolRef_FCFeedPersonalizing);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v185)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68, &protocol descriptor for ChannelSectionHeadlinesServiceType, 1);
  result = sub_219BE1E34();
  if (!v183)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250, MEMORY[0x277D33C48], 0);
  result = sub_219BE1E34();
  if (!v180)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v179)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0, MEMORY[0x277D33CB0], 1);
  result = sub_219BE1E34();
  if (!v177)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1E34();
  if (!v175)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedCurationService();
  result = sub_219BE1E24();
  v129 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92678, MEMORY[0x277D31C00], 1);
  result = sub_219BE1E34();
  if (!v173)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA370, &protocol descriptor for SportsFavoritesServiceType, 1);
  result = sub_219BE1E34();
  if (!v171)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7670, &protocol descriptor for MySportsTagServiceType, 1);
  result = sub_219BE1E34();
  if (!v169)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v128 = v166;
  if (!v166)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v127 = v167;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  v126 = result;
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810, &protocol descriptor for LocalNewsChannelServiceType, 1);
  result = sub_219BE1E34();
  if (!v165)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v125 = result;
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  v124 = result;
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EDA4F0, &protocol descriptor for FoodServiceType, 1);
  result = sub_219BE1E34();
  if (!v163)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v119 = v181;
  v120 = v180;
  v121 = v7;
  v122 = v6;
  v123 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBE990, &protocol descriptor for FoodClusteringServiceType, 1);
  result = sub_219BE1E34();
  if (v161)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
    v118 = &v104;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    v117 = &v104;
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (&v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v168, v169);
    v116 = &v104;
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v164, v165);
    v115 = &v104;
    v24 = MEMORY[0x28223BE20](v23);
    v26 = (&v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
    v114 = &v104;
    v29 = MEMORY[0x28223BE20](v28);
    v31 = (&v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = *v11;
    v34 = *v16;
    v35 = *v21;
    v36 = *v26;
    v37 = *v31;
    v38 = type metadata accessor for ChannelSectionHeadlinesService();
    v159[4] = &off_282A34C28;
    v159[3] = v38;
    v39 = v38;
    v159[0] = v33;
    v130 = type metadata accessor for SportsFavoritesService();
    v158 = &off_282A62438;
    v157 = v130;
    v156[0] = v34;
    v133 = type metadata accessor for MySportsTagService();
    v155 = &off_282A97430;
    v154 = v133;
    v153[0] = v35;
    v132 = type metadata accessor for LocalNewsChannelService();
    v151 = v132;
    v152 = &off_282A6E848;
    v150[0] = v36;
    v131 = type metadata accessor for FoodClusteringService();
    v148 = v131;
    v149 = &off_282A75BE8;
    v147[0] = v37;
    type metadata accessor for PPTTagFeedPoolService();
    v40 = swift_allocObject();
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v159, v39);
    v113 = &v104;
    v105 = v39;
    v42 = *(v39 - 8);
    v43 = *(v42 + 64);
    v44 = MEMORY[0x28223BE20](v41);
    v106 = *(v42 + 16);
    v107 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v106)(&v104 - v107, v44);
    v45 = __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
    v112 = &v104;
    v46 = MEMORY[0x28223BE20](v45);
    v48 = (&v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48, v46);
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
    v111 = &v104;
    v51 = MEMORY[0x28223BE20](v50);
    v53 = (&v104 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53, v51);
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
    v110 = &v104;
    v56 = MEMORY[0x28223BE20](v55);
    v58 = (&v104 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58, v56);
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
    v109 = &v104;
    v61 = MEMORY[0x28223BE20](v60);
    v63 = (&v104 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63, v61);
    v65 = *(&v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    v66 = *v48;
    v67 = *v53;
    v68 = *v58;
    v69 = *v63;
    v70 = v105;
    v146[3] = v105;
    v146[4] = &off_282A34C28;
    v146[0] = v65;
    v145 = &off_282A62438;
    v144 = v130;
    v143[0] = v66;
    v141 = v133;
    v142 = &off_282A97430;
    v140[0] = v67;
    v138 = v132;
    v139 = &off_282A6E848;
    v137[0] = v68;
    v135 = v131;
    v136 = &off_282A75BE8;
    v134[0] = v69;
    v71 = __swift_mutable_project_boxed_opaque_existential_1(v146, v105);
    v108 = &v104;
    v72 = MEMORY[0x28223BE20](v71);
    v73 = (&v104 - v107);
    (v106)(&v104 - v107, v72);
    v74 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
    v107 = &v104;
    v75 = MEMORY[0x28223BE20](v74);
    v77 = (&v104 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77, v75);
    v79 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
    v106 = &v104;
    v80 = MEMORY[0x28223BE20](v79);
    v82 = (&v104 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))(v82, v80);
    v84 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    v104 = &v104;
    v85 = MEMORY[0x28223BE20](v84);
    v87 = (&v104 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87, v85);
    v89 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v90 = MEMORY[0x28223BE20](v89);
    v92 = (&v104 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92, v90);
    v94 = *v73;
    v95 = *v77;
    v96 = *v82;
    v97 = *v87;
    v98 = *v92;
    v40[12] = v70;
    v40[13] = &off_282A34C28;
    v40[9] = v94;
    v40[40] = v130;
    v40[41] = &off_282A62438;
    v40[37] = v95;
    v40[45] = v133;
    v40[46] = &off_282A97430;
    v40[42] = v96;
    v40[53] = v132;
    v40[54] = &off_282A6E848;
    v40[50] = v97;
    v40[65] = v131;
    v40[66] = &off_282A75BE8;
    v40[62] = v98;
    v99 = v121;
    v40[2] = v122;
    v40[3] = v99;
    sub_2186CB1F0(&v184, (v40 + 4));
    v100 = v119;
    v40[14] = v120;
    v40[15] = v100;
    sub_2186CB1F0(&v178, (v40 + 16));
    sub_2186CB1F0(&v176, (v40 + 21));
    sub_2186CB1F0(&v174, (v40 + 26));
    v40[31] = v129;
    sub_2186CB1F0(&v172, (v40 + 32));
    v101 = v127;
    v40[47] = v128;
    v40[48] = v101;
    v102 = v125;
    v40[49] = v126;
    v103 = v124;
    v40[55] = v102;
    v40[56] = v103;
    sub_2186CB1F0(&v162, (v40 + 57));
    __swift_destroy_boxed_opaque_existential_1(v134);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v140);
    __swift_destroy_boxed_opaque_existential_1(v143);
    __swift_destroy_boxed_opaque_existential_1(v146);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(v150);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v159);
    __swift_destroy_boxed_opaque_existential_1(v160);
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v170);
    result = __swift_destroy_boxed_opaque_existential_1(v182);
    a2 = v123;
LABEL_24:
    *a2 = v40;
    return result;
  }

LABEL_44:
  __break(1u);
  return result;
}

void *sub_21877B6FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270, &protocolRef_FCFeedPersonalizing);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v133)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68, &protocol descriptor for ChannelSectionHeadlinesServiceType, 1);
  result = sub_219BE1E34();
  if (!v131)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250, MEMORY[0x277D33C48], 0);
  result = sub_219BE1E34();
  if (!v128)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v127)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0, MEMORY[0x277D33CB0], 1);
  result = sub_219BE1E34();
  if (!v125)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1E34();
  if (!v123)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedCurationService();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92678, MEMORY[0x277D31C00], 1);
  result = sub_219BE1E34();
  if (!v121)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA370, &protocol descriptor for SportsFavoritesServiceType, 1);
  result = sub_219BE1E34();
  if (!v119)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7670, &protocol descriptor for MySportsTagServiceType, 1);
  result = sub_219BE1E34();
  if (!v117)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v94 = v114;
  if (!v114)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v93 = v115;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  v92 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810, &protocol descriptor for LocalNewsChannelServiceType, 1);
  result = sub_219BE1E34();
  if (!v113)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v91 = result;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  v90 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EDA4F0, &protocol descriptor for FoodServiceType, 1);
  result = sub_219BE1E34();
  if (!v111)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v85 = v5;
  v86 = v129;
  v87 = v128;
  v88 = v4;
  v89 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBE990, &protocol descriptor for FoodClusteringServiceType, 1);
  result = sub_219BE1E34();
  if (v109)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
    v84 = v73;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v118, v119);
    v83 = v73;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
    v82 = v73;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
    v81 = v73;
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    v80 = v73;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = *v9;
    v32 = *v14;
    v33 = *v19;
    v34 = *v24;
    v35 = *v29;
    v36 = type metadata accessor for ChannelSectionHeadlinesService();
    v107[3] = v36;
    v107[4] = &off_282A34C28;
    v107[0] = v31;
    v78 = type metadata accessor for SportsFavoritesService();
    v105 = v78;
    v106 = &off_282A62438;
    v104[0] = v32;
    v77 = type metadata accessor for MySportsTagService();
    v102 = v77;
    v103 = &off_282A97430;
    v101[0] = v33;
    v76 = type metadata accessor for LocalNewsChannelService();
    v99 = v76;
    v100 = &off_282A6E848;
    v98[0] = v34;
    v74 = type metadata accessor for FoodClusteringService();
    v96 = v74;
    v97 = &off_282A75BE8;
    v95[0] = v35;
    type metadata accessor for TagFeedPoolService();
    v37 = swift_allocObject();
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v107, v36);
    v79 = v73;
    v39 = MEMORY[0x28223BE20](v38);
    v41 = (v73 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v75 = v73;
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
    v73[1] = v73;
    v49 = MEMORY[0x28223BE20](v48);
    v51 = (v73 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51, v49);
    v53 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v73[0] = v73;
    v54 = MEMORY[0x28223BE20](v53);
    v56 = (v73 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56, v54);
    v58 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    v59 = MEMORY[0x28223BE20](v58);
    v61 = (v73 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61, v59);
    v63 = *v41;
    v64 = *v46;
    v65 = *v51;
    v66 = *v56;
    v67 = *v61;
    v37[12] = v36;
    v37[13] = &off_282A34C28;
    v37[9] = v63;
    v37[40] = v78;
    v37[41] = &off_282A62438;
    v37[37] = v64;
    v37[45] = v77;
    v37[46] = &off_282A97430;
    v37[42] = v65;
    v37[53] = v76;
    v37[54] = &off_282A6E848;
    v37[50] = v66;
    v37[65] = v74;
    v37[66] = &off_282A75BE8;
    v37[62] = v67;
    v68 = v88;
    v37[2] = v89;
    v37[3] = v68;
    sub_2186CB1F0(&v132, (v37 + 4));
    v69 = v86;
    v37[14] = v87;
    v37[15] = v69;
    sub_2186CB1F0(&v126, (v37 + 16));
    sub_2186CB1F0(&v124, (v37 + 21));
    sub_2186CB1F0(&v122, (v37 + 26));
    v37[31] = v85;
    sub_2186CB1F0(&v120, (v37 + 32));
    v70 = v93;
    v37[47] = v94;
    v37[48] = v70;
    v71 = v91;
    v37[49] = v92;
    v72 = v90;
    v37[55] = v71;
    v37[56] = v72;
    sub_2186CB1F0(&v110, (v37 + 57));
    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(v108);
    __swift_destroy_boxed_opaque_existential_1(v112);
    __swift_destroy_boxed_opaque_existential_1(v116);
    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(v130);
    return v37;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21877C5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877C9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CBD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CD38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CD80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CEA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877CF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TagFeedConfig(uint64_t a1)
{
  result = qword_280EDD748;
  if (!qword_280EDD748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21877D0AC(uint64_t a1)
{
  sub_2186DD004(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2186DD004(319, &qword_280E91B80, MEMORY[0x277D32028]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21877D20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21877D258()
{
  result = qword_280EDF3A0;
  if (!qword_280EDF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDF3A0);
  }

  return result;
}

uint64_t sub_21877D2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21877D4EC(void *a1)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v4 = result;
    type metadata accessor for SportsFeedOfflineFeedBuilder();
    v5 = swift_allocObject();
    sub_2186CB1F0(v8, v5 + 16);
    *(v5 + 56) = v3;
    sub_2186CB1F0(&v6, v5 + 64);
    *(v5 + 104) = v4;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21877D650(void *a1)
{
  if (qword_280E8D8F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617B0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4(0);
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TagFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186D6034(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21877D89C(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEE544();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEDA24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92598 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F61860);
  (*(v9 + 16))(v11, v12, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7814(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v24 = v5;
  v25 = v3;
  v26 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v30;
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  v17 = v27;
  sub_219BEE534();
  v18 = v26;
  if (qword_280EE5FB0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v18, qword_280F62640);
  v21 = v24;
  v20 = v25;
  (*(v25 + 16))(v24, v19, v18);
  sub_2186F9F20(0);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + qword_280ED32C0, v11, v8);
  *(v22 + qword_280ED32C8) = v23;
  *(v22 + *(*v22 + 160)) = v15;
  *(v22 + *(*v22 + 168)) = v16;
  (*(v28 + 32))(v22 + *(*v22 + 176), v17, v29);
  (*(v20 + 32))(v22 + *(*v22 + 184), v21, v18);
  return v22;
}

void *sub_21877DD44(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  if (qword_280E92598 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280F61860);
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6754(0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v10(v5, v9, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E65A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v13 = v21;
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v22;
  v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v13;
  v19[4] = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  sub_2186FEBD4(0);
  swift_allocObject();
  v17 = sub_219BF0CF4();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    v23 = 0;
    v20[0] = v12;
    v18 = result;
    v19[0] = v17;
    sub_2186F7814(0);
    swift_allocObject();
    return sub_219BF0C74();
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_21877E0C8(void *a1)
{
  if (qword_280E8D860 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61748;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E65A0(0);
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for MagazineFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186E6754(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21877E2F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61748 = result;
  return result;
}

uint64_t sub_21877E47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877E59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21877E7A4()
{
  type metadata accessor for MagazineFeedServiceContextFactory();

  return swift_allocObject();
}

uint64_t sub_21877E7E4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62640);
  __swift_project_value_buffer(v0, qword_280F62640);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void *sub_21877E8D4(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F618C0);
  (*(v7 + 16))(v9, v10, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90B60, sub_2186FA878, sub_2186E8CB8, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  v23 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v9;
  v22 = v3;
  v12 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v24;
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (qword_280EE5F28 != -1)
  {
    swift_once();
  }

  v17 = v14;
  v18 = __swift_project_value_buffer(v14, qword_280F62550);
  v19 = v22;
  (*(v22 + 16))(v12, v18, v17);
  sub_2186E879C(0);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + qword_280EC7460, v21, v6);
  *(v20 + *(*v20 + 144)) = v23;
  *(v20 + *(*v20 + 152)) = v13;
  *(v20 + *(*v20 + 160)) = v15;
  *(v20 + *(*v20 + 168)) = v16;
  (*(v19 + 32))(v20 + *(*v20 + 176), v12, v17);
  return v20;
}

uint64_t sub_21877ED08()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F618C0);
  __swift_project_value_buffer(v0, qword_280F618C0);
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616E0;
  return sub_219BED9E4();
}

uint64_t sub_21877EDB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F616E0 = result;
  return result;
}

void *sub_21877EE88(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618C0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FA878(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
    result = sub_219BE1E34();
    if (v8[4])
    {
      sub_218736D08(0);
      swift_allocObject();
      return sub_219BF0D04();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21877F044(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E8C24(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61720;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186FA878(0);
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21877F328(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2, a3, 1);
  result = sub_219BE1E34();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21877F428(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618C0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E80, type metadata accessor for SavedFeedPoolService, sub_2186D7994);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21877F5B8(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, a2, a3, 1);
    result = sub_219BE1E34();
    if (v14)
    {
      a4(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      a5(v13, v12 + 24);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21877F710()
{
  result = qword_280EC6CF0;
  if (!qword_280EC6CF0)
  {
    type metadata accessor for SavedFeedServiceConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6CF0);
  }

  return result;
}

uint64_t sub_21877F78C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61720 = result;
  return result;
}

void *sub_21877F8A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EBA5B0, &protocol descriptor for SavedFeedConfigManagerType, 1);
    result = sub_219BE1E34();
    if (v20)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for SavedFeedConfigManager();
      v18[3] = v10;
      v18[4] = &off_282A62738;
      v18[0] = v9;
      type metadata accessor for SavedFeedServiceConfigFetcher();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[8] = v10;
      v11[9] = &off_282A62738;
      v11[2] = 0x6565466465766153;
      v11[3] = 0xE900000000000064;
      v11[4] = v3;
      v11[5] = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21877FB64(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2, a3, 1);
  result = sub_219BE1E34();
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_219BE1E24();
    if (result)
    {
      v11 = result;
      a4(0);
      v12 = swift_allocObject();
      a5(v13, v12 + 16);
      *(v12 + 56) = v11;
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21877FCB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockSavedFeedDataProvider();
  v3 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  sub_21870B65C(0, 100, 0);
  v4 = 0;
  v5 = v13;
  do
  {
    result = sub_219BF7894();
    v14 = v5;
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v9 >= v8 >> 1)
    {
      v12 = result;
      v11 = v7;
      sub_21870B65C((v8 > 1), v9 + 1, 1);
      v7 = v11;
      result = v12;
      v5 = v14;
    }

    ++v4;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 16 * v9;
    *(v10 + 32) = result;
    *(v10 + 40) = v7;
  }

  while (v4 != 100);
  *(v3 + 16) = v5;
  a1[3] = v2;
  a1[4] = &off_282A4FD70;
  *a1 = v3;
  return result;
}

uint64_t sub_21877FE00()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62550);
  __swift_project_value_buffer(v0, qword_280F62550);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void *sub_21877FEEC(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925A0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61878);
  (*(v7 + 16))(v9, v10, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90B30, sub_2186E98A4, sub_2186EE930, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  v23 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v9;
  v22 = v3;
  v12 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v24;
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (qword_280EE6078 != -1)
  {
    swift_once();
  }

  v17 = v14;
  v18 = __swift_project_value_buffer(v14, qword_280F627A8);
  v19 = v22;
  (*(v22 + 16))(v12, v18, v17);
  sub_2186E9710(0);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + qword_280EC7460, v21, v6);
  *(v20 + *(*v20 + 144)) = v23;
  *(v20 + *(*v20 + 152)) = v13;
  *(v20 + *(*v20 + 160)) = v15;
  *(v20 + *(*v20 + 168)) = v16;
  (*(v19 + 32))(v20 + *(*v20 + 176), v12, v17);
  return v20;
}

uint64_t sub_218780320()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F61878);
  __swift_project_value_buffer(v0, qword_280F61878);
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617D8;
  return sub_219BED9E4();
}

uint64_t sub_2187803D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617D8 = result;
  return result;
}

void *sub_2187804A8(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61878);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E98A4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
    result = sub_219BE1E34();
    if (v8[4])
    {
      sub_218713BA8(0);
      swift_allocObject();
      return sub_219BF0D04();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218780664(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218780984(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61720;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186E98A4(0);
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_218780984(uint64_t a1)
{
  if (!qword_280E91E30)
  {
    type metadata accessor for HistoryFeedPoolService();
    sub_2186FF954(qword_280EC8080, type metadata accessor for HistoryFeedPoolService, &unk_219C43B88);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91E30);
    }
  }
}

uint64_t sub_218780A18(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61878);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E30, type metadata accessor for HistoryFeedPoolService, sub_2186D79EC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218780BE8()
{
  result = qword_280EC18D0;
  if (!qword_280EC18D0)
  {
    type metadata accessor for HistoryFeedServiceConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC18D0);
  }

  return result;
}

uint64_t sub_218780C98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218780CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218780D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218780D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218780DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218780E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_218780E48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB4218, &protocol descriptor for HistoryFeedConfigManagerType, 1);
    result = sub_219BE1E34();
    if (v20)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for HistoryFeedConfigManager();
      v18[3] = v10;
      v18[4] = &off_282A41620;
      v18[0] = v9;
      type metadata accessor for HistoryFeedServiceConfigFetcher();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[8] = v10;
      v11[9] = &off_282A41620;
      v11[2] = 0x4679726F74736948;
      v11[3] = 0xEB00000000646565;
      v11[4] = v3;
      v11[5] = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21878114C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockHistoryFeedDataProvider();
  v3 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  sub_21870B65C(0, 100, 0);
  v4 = 0;
  v5 = v13;
  do
  {
    result = sub_219BF7894();
    v14 = v5;
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v9 >= v8 >> 1)
    {
      v12 = result;
      v11 = v7;
      sub_21870B65C((v8 > 1), v9 + 1, 1);
      v7 = v11;
      result = v12;
      v5 = v14;
    }

    ++v4;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 16 * v9;
    *(v10 + 32) = result;
    *(v10 + 40) = v7;
  }

  while (v4 != 100);
  *(v3 + 16) = v5;
  a1[3] = v2;
  a1[4] = &off_282A93E80;
  *a1 = v3;
  return result;
}

uint64_t sub_218781298()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F627A8);
  __swift_project_value_buffer(v0, qword_280F627A8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void *sub_218781388(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925F0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61908);
  (*(v7 + 16))(v9, v10, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90BB0, sub_2186EA004, sub_2186EA104, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  v23 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v9;
  v22 = v3;
  v12 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v24;
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (qword_280EE5FD0 != -1)
  {
    swift_once();
  }

  v17 = v14;
  v18 = __swift_project_value_buffer(v14, qword_280F62688);
  v19 = v22;
  (*(v22 + 16))(v12, v18, v17);
  sub_2186E9E4C(0);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + qword_280EC7460, v21, v6);
  *(v20 + *(*v20 + 144)) = v23;
  *(v20 + *(*v20 + 152)) = v13;
  *(v20 + *(*v20 + 160)) = v15;
  *(v20 + *(*v20 + 168)) = v16;
  (*(v19 + 32))(v20 + *(*v20 + 176), v12, v17);
  return v20;
}

uint64_t sub_2187817BC()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F61908);
  __swift_project_value_buffer(v0, qword_280F61908);
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61760;
  return sub_219BED9E4();
}

uint64_t sub_218781868()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61760 = result;
  return result;
}

void *sub_218781940(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925F0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61908);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EA004(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
    result = sub_219BE1E34();
    if (v8[4])
    {
      sub_2186FF588(0);
      swift_allocObject();
      return sub_219BF0D04();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218781AFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218781E1C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61720;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186EA004(0);
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_218781E1C(uint64_t a1)
{
  if (!qword_280E91ED0)
  {
    type metadata accessor for SharedWithYouFeedPoolService();
    sub_218713920(qword_280EB2E60, type metadata accessor for SharedWithYouFeedPoolService, &unk_219CC9540);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91ED0);
    }
  }
}

uint64_t sub_218781EB0(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925F0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61908);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91ED0, type metadata accessor for SharedWithYouFeedPoolService, sub_2186D5B50);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21878211C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9F068, &protocol descriptor for SharedWithYouFeedConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for SharedWithYouFeedConfigManager();
    v19[3] = v11;
    v19[4] = &off_282A8B678;
    v19[0] = v10;
    type metadata accessor for SharedWithYouFeedServiceConfigFetcher();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[8] = v11;
    v12[9] = &off_282A8B678;
    v12[2] = 0xD000000000000011;
    v12[3] = 0x8000000219D1C990;
    v12[4] = v3;
    v12[5] = v18;
    v12[10] = v4;
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21878246C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockSharedWithYouFeedDataProvider();
  v3 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  sub_21870B65C(0, 100, 0);
  v4 = 0;
  v5 = v13;
  do
  {
    result = sub_219BF7894();
    v14 = v5;
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v9 >= v8 >> 1)
    {
      v12 = result;
      v11 = v7;
      sub_21870B65C((v8 > 1), v9 + 1, 1);
      v7 = v11;
      result = v12;
      v5 = v14;
    }

    ++v4;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 16 * v9;
    *(v10 + 32) = result;
    *(v10 + 40) = v7;
  }

  while (v4 != 100);
  *(v3 + 16) = v5;
  a1[3] = v2;
  a1[4] = &off_282A60128;
  *a1 = v3;
  return result;
}

uint64_t sub_2187825B8()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62688);
  __swift_project_value_buffer(v0, qword_280F62688);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void *sub_2187826A8(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92588 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61848);
  (*(v7 + 16))(v9, v10, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90B00, sub_2187011DC, sub_218ED1A48, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v34 = v9;
  v35 = v3;
  v12 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v15 = v38[0];
  if (!v38[0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_280F62568);
  v17 = v35;
  (*(v35 + 16))(v12, v16, v2);
  sub_218783A58(0);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + qword_280EC7460, v34, v6);
  *(v18 + *(*v18 + 144)) = v36;
  *(v18 + *(*v18 + 152)) = v13;
  *(v18 + *(*v18 + 160)) = v14;
  *(v18 + *(*v18 + 168)) = v15;
  (*(v17 + 32))(v18 + *(*v18 + 176), v12, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF3A8, &protocol descriptor for RecipeFilterConfigManagerType, 1);
  result = sub_219BE1E34();
  if (v39)
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v25 = type metadata accessor for RecipeFilterConfigManager();
    v37[3] = v25;
    v37[4] = &off_282A9B8B8;
    v37[0] = v24;
    type metadata accessor for RecipeBoxFeedOfflineFeedBuilder();
    v26 = swift_allocObject();
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v37, v25);
    v28 = MEMORY[0x28223BE20](v27);
    v30 = (&v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = *v30;
    v26[6] = v25;
    v26[7] = &off_282A9B8B8;
    v26[2] = v18;
    v26[3] = v32;
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v26;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218782CB8()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F61848);
  __swift_project_value_buffer(v0, qword_280F61848);
  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616E8;
  return sub_219BED9E4();
}

uint64_t sub_218782D6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F616E8 = result;
  return result;
}

void *sub_218782E40(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92588 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61848);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187011DC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
    result = sub_219BE1E34();
    if (v8[4])
    {
      sub_2187012DC(0);
      swift_allocObject();
      return sub_219BF0D04();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218782FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878331C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F616E8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2187011DC(0);
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21878331C(uint64_t a1)
{
  if (!qword_280E91DF0)
  {
    type metadata accessor for RecipeBoxFeedPoolService();
    sub_218714794(qword_280EC0850, type metadata accessor for RecipeBoxFeedPoolService, &unk_219CD603C);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91DF0);
    }
  }
}

uint64_t sub_2187833B0(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92588 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61848);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91DF0, type metadata accessor for RecipeBoxFeedPoolService, sub_2186D9398);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218783580()
{
  result = qword_280EBA8B0;
  if (!qword_280EBA8B0)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA8B0);
  }

  return result;
}

void *sub_218783644(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EAB888, &protocol descriptor for RecipeBoxFeedConfigManagerType, 1);
    result = sub_219BE1E34();
    if (v20)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for RecipeBoxFeedConfigManager();
      v18[3] = v10;
      v18[4] = &off_282A58AA8;
      v18[0] = v9;
      type metadata accessor for RecipeBoxFeedServiceConfigFetcher();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[8] = v10;
      v11[9] = &off_282A58AA8;
      v11[2] = 0x6F42657069636552;
      v11[3] = 0xE900000000000078;
      v11[4] = v3;
      v11[5] = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218783968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BE5434();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void sub_218783A58(uint64_t a1)
{
  if (!qword_280EC73B0)
  {
    v2 = type metadata accessor for RecipeBoxFeedServiceContextFactory();
    v3 = type metadata accessor for RecipeBoxFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B00, sub_2187011DC, sub_218ED1A48, MEMORY[0x277D33010]);
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = sub_2186D560C(qword_280E9F708, type metadata accessor for RecipeBoxFeedServiceContextFactory, &unk_219C37E80);
    v7[4] = sub_2186D560C(qword_280EA23B0, type metadata accessor for RecipeBoxFeedServiceConfigFetcher, &unk_219CA1640);
    v7[5] = sub_218783BEC();
    v7[6] = sub_2186D560C(&unk_280EBA8A0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60240);
    v5 = type metadata accessor for OfflineFeedBuilderLite(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_280EC73B0);
    }
  }
}

unint64_t sub_218783BEC()
{
  result = qword_280E90B08;
  if (!qword_280E90B08)
  {
    sub_2186DB874(255, &qword_280E90B00, sub_2187011DC, sub_218ED1A48, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90B08);
  }

  return result;
}

void *sub_218783C88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218783DA0();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E90330, MEMORY[0x277D33A50], 1);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for RecipeFilterConfigManager();
      v7 = swift_allocObject();
      sub_219BEE324();
      swift_allocObject();
      *(v7 + 16) = sub_219BEE314();
      *(v7 + 24) = v5;
      result = sub_2186CB1F0(&v8, v7 + 32);
      a2[3] = v6;
      a2[4] = &off_282A9B8B8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_218783DA0()
{
  result = qword_280E8DCA0;
  if (!qword_280E8DCA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DCA0);
  }

  return result;
}

void *sub_218783E28(void *a1)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v5 = result;
    type metadata accessor for FoodHubOfflineFeedBuilder();
    v6 = swift_allocObject();
    sub_2186CB1F0(v9, (v6 + 2));
    v6[7] = v3;
    v6[8] = v4;
    sub_2186CB1F0(&v7, (v6 + 9));
    v6[14] = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218783FD4(void *a1)
{
  if (qword_280E8D8F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617B0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4(0);
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TagFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186D6034(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_218784220(void *a1)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v5 = result;
    type metadata accessor for RecipeCatalogOfflineFeedBuilder();
    v6 = swift_allocObject();
    sub_2186CB1F0(v9, (v6 + 2));
    v6[7] = v3;
    v6[8] = v4;
    sub_2186CB1F0(&v7, (v6 + 9));
    v6[14] = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2187843CC(void *a1)
{
  if (qword_280E8D8F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617B0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4(0);
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TagFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186D6034(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_218784618(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D8F8 != -1)
  {
    swift_once();
  }

  v4 = qword_280F617B0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4(0);
  v5 = v4;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TagFeedDatabaseGroupProcessor();
  v7 = swift_allocObject();
  sub_2186CB1F0(&v8, v7 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8 = v7;
    sub_2186D6034(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218784850(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218735F3C();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = MEMORY[0x277D6CA70];
    sub_2186D0720(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_219BE1BE4();
    sub_21872CBB8(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_2186D0720(0, &qword_280E8F610, v9, MEMORY[0x277D83940]);
    sub_21872CC48(&qword_280E8F600, &qword_280E8F610, v9);
    sub_219BF7164();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = a2;
    v10[4] = a3;
    sub_2186D0720(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
    swift_allocObject();

    return sub_219BE2D14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218784AF4()
{

  return swift_deallocObject();
}

uint64_t sub_218784B34(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for PuzzleTypeOfflineFeedBuilderContext();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1B94();
}

void *sub_218784C70(void *a1)
{
  sub_218718690(a1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleTypeOfflineFeedBuilderContext();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    type metadata accessor for PuzzleTypeOfflineFeedBuilder();
    v7 = swift_allocObject();
    sub_2186CB1F0(v14, (v7 + 2));
    v9 = v3[2];
    v8 = v3[3];

    v7[7] = v9;
    v7[8] = v8;
    v7[14] = v4;
    v7[15] = v5;
    sub_2186CB1F0(&v12, (v7 + 9));
    sub_2186CB1F0(&v10, (v7 + 16));
    v7[21] = v6;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_218784ED0(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEE544();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEDA24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925D8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F618D8);
  (*(v9 + 16))(v11, v12, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187001D8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v24 = v5;
  v25 = v3;
  v26 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v30;
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  v17 = v27;
  sub_219BEE534();
  v18 = v26;
  if (qword_280EE6008 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v18, qword_280F626E8);
  v21 = v24;
  v20 = v25;
  (*(v25 + 16))(v24, v19, v18);
  sub_2186F6930(0);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + qword_280ED32C0, v11, v8);
  *(v22 + qword_280ED32C8) = v23;
  *(v22 + *(*v22 + 160)) = v15;
  *(v22 + *(*v22 + 168)) = v16;
  (*(v28 + 32))(v22 + *(*v22 + 176), v17, v29);
  (*(v20 + 32))(v22 + *(*v22 + 184), v21, v18);
  return v22;
}

uint64_t sub_218785378()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F618D8);
  __swift_project_value_buffer(v0, qword_280F618D8);
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616F8;
  return sub_219BED9E4();
}

uint64_t sub_218785424()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F616F8 = result;
  return result;
}

uint64_t sub_2187854F8(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618D8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6A1C(0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21871417C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    v10[2] = v8;
    v10[3] = 0;
    v10[0] = result;
    v10[1] = v9;
    sub_2187001D8(0);
    swift_allocObject();
    return sub_219BF0C74();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218785704(void *a1)
{
  if (qword_280E8D8D8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61790;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED404(0);
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for AudioFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186E6A1C(0);
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21878592C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61790 = result;
  return result;
}

void *sub_218785A04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6988(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F616F8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186ED404(0);
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_218785CE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6430, MEMORY[0x277D34F20], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70, &protocol descriptor for OfflineContentManagerType, 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for AudioFeedGroupEmitterFactory();
    v3 = swift_allocObject();
    sub_2186CB1F0(&v10, v3 + 16);
    sub_2186CB1F0(&v8, v3 + 56);
    sub_2186CB1F0(&v6, v3 + 96);
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218785E9C(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618D8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E90, type metadata accessor for AudioFeedPoolService, sub_2186D5CC8);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21878602C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
  result = sub_219BE1E34();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for AudioFeedPoolService();
      result = swift_allocObject();
      result[2] = v4;
      result[3] = v5;
      result[4] = v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218786228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218786274()
{
  result = qword_280EDE380;
  if (!qword_280EDE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDE380);
  }

  return result;
}

uint64_t sub_218786310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218786358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218786574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEE754();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21878662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BEE754();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2187866D8(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618D8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED404(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_21871417C(0);
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218786950(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480, &protocol descriptor for AudioFeedConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAD980, &protocol descriptor for AudioFeedConfigTransformerType, 1);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for AudioFeedConfigManager();
    v20[3] = v11;
    v20[4] = &off_282A71790;
    v20[0] = v10;
    type metadata accessor for AudioFeedServiceConfigFetcher();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    *(v12 + 64) = v11;
    *(v12 + 72) = &off_282A71790;
    *(v12 + 16) = 0x6565466F69647541;
    *(v12 + 24) = 0xE900000000000064;
    *(v12 + 32) = v3;
    *(v12 + 40) = v18;
    v19 = v24;
    *(v12 + 80) = v23;
    *(v12 + 96) = v19;
    *(v12 + 112) = v25;
    sub_2186CB1F0(&v21, v12 + 120);
    *(v12 + 160) = v4;
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218786D18()
{
  type metadata accessor for AudioFeedServiceContextFactory();

  return swift_allocObject();
}

uint64_t sub_218786D58()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F626E8);
  __swift_project_value_buffer(v0, qword_280F626E8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

void *sub_218786E48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90B70, sub_2186ED404, sub_2186F6CE0, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceConfigFetcher();
  result = sub_219BE1E04();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6A1C(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v6 = result;
    type metadata accessor for AudioFeedOfflineFeedUpdater();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    result[5] = v7;
    result[6] = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2187870B4()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_2199DCAD8;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_218793E0C;
  v3[3] = &block_descriptor_49_1;
  v2 = _Block_copy(v3);

  [v0 scheduleLowPriorityBlock_];
  _Block_release(v2);
}

uint64_t sub_2187871A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2187871E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280EE7310, &protocolRef_TSBackgroundFetchJournalType);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = objc_allocWithZone(sub_219BE2A24());
    return sub_219BE2A14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218787264()
{
  sub_219BE2C54();
  swift_allocObject();
  return sub_219BE2C44();
}

void sub_21878729C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PaidBundleBackgroundWorkerManager();
  v3 = sub_219BE1E24();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleStreakBackgroundWorkerManager();
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }
}

void *sub_218787340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2A24();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E935B8, &protocol descriptor for NewIssueNotificationBackgroundWorkerFactoryType, 1);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v19 = type metadata accessor for NewIssueNotificationBackgroundWorkerFactory();
    v20 = &off_282A74590;
    v18[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for PaidBundleBackgroundWorkerManager());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21878769C(v3, *v15, v4, v11);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2187875E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_218718690(a1, v10);
  v7 = a2(0);
  v8 = swift_allocObject();
  result = sub_2186CB1F0(v10, v8 + 16);
  a4[3] = v7;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

id sub_21878769C(void *a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v26[3] = type metadata accessor for NewIssueNotificationBackgroundWorkerFactory();
  v26[4] = &off_282A74590;
  v26[0] = a2;
  *&a4[OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_registeredWorkers] = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_backgroundFetchManager] = a1;
  sub_218718690(v26, &a4[OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_workerFactory]);
  *&a4[OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_bundleSubscriptionManager] = a3;
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v9 = a1;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v25, sel_init);
  [a3 addObserver_];
  v11 = [a3 cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v12 = MEMORY[0x277D84F70];
  if (!*(&v22 + 1))
  {
    sub_218745EEC(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187442AC);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v20;
  v14 = [v20 integerValue];
  if (v14 == -1)
  {

    goto LABEL_21;
  }

  v15 = v14;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v15))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_218745EEC(&v23, &qword_280E8B4F0, v12 + 8, MEMORY[0x277D83D88], sub_2187442AC);
LABEL_18:

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    sub_218A708D8(v18);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v10;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = v20;
  v17 = [v16 integerValue];

  if ((v17 ^ v15))
  {
    goto LABEL_21;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v26);

  swift_unknownObjectRelease();
  return v10;
}

void *sub_2187879D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2A24();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E96C20, &protocol descriptor for PuzzleStreakBackgroundWorkerFactoryType, 1);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v19 = type metadata accessor for PuzzleStreakBackgroundWorkerFactory();
    v20 = &off_282A64BF0;
    v18[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for PuzzleStreakBackgroundWorkerManager());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_218787CC0(v3, *v15, v4, v11);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_218787CC0(void *a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v26[3] = type metadata accessor for PuzzleStreakBackgroundWorkerFactory();
  v26[4] = &off_282A64BF0;
  v26[0] = a2;
  *&a4[OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_registeredWorkers] = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_backgroundFetchManager] = a1;
  sub_218718690(v26, &a4[OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_workerFactory]);
  *&a4[OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_bundleSubscriptionManager] = a3;
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v9 = a1;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v25, sel_init);
  [a3 addObserver_];
  v11 = [a3 cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v12 = MEMORY[0x277D84F70];
  if (!*(&v22 + 1))
  {
    sub_218745EEC(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187442AC);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v20;
  v14 = [v20 integerValue];
  if (v14 == -1)
  {

    goto LABEL_21;
  }

  v15 = v14;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v15))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_218745EEC(&v23, &qword_280E8B4F0, v12 + 8, MEMORY[0x277D83D88], sub_2187442AC);
LABEL_18:

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    sub_218F97108(v18);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v10;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = v20;
  v17 = [v16 integerValue];

  if ((v17 ^ v15))
  {
    goto LABEL_21;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v26);

  swift_unknownObjectRelease();
  return v10;
}

void *sub_218787FFC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OfflineFeedsBackgroundWorker();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D560C(&qword_280EB3918, type metadata accessor for OfflineFeedsBackgroundWorker, &unk_219CB33B0);
    sub_219BE2A04();

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for OfflineIssueAutoDownloader();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      sub_2186D560C(&qword_280EBADC0, type metadata accessor for OfflineIssueAutoDownloader, &unk_219C22628);
      sub_219BE2A04();

      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218788154(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0, &protocol descriptor for OfflineFeedsSupervisorType, 1);
  result = sub_219BE1E34();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70, &protocol descriptor for OfflineContentManagerType, 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580, &protocolRef_FCContentContext);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    type metadata accessor for OfflineFeedsBackgroundWorker();
    v5 = swift_allocObject();
    sub_2186CB1F0(&v8, v5 + 16);
    sub_2186CB1F0(&v6, v5 + 56);
    *(v5 + 96) = v3;
    *(v5 + 104) = v4;
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187882F0()
{
  v0 = MEMORY[0x277D84560];
  sub_218788720(0, &qword_280E8C088, MEMORY[0x277D6CDD0], MEMORY[0x277D84560]);
  v16 = sub_219BE2A34();
  v1 = *(*(v16 - 8) + 72);
  v2 = *(v16 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C0B8C0;
  v5 = v4 + v3;
  v19 = v4;
  v20 = v4 + v3;
  v17 = *(v2 + 104);
  (v17)(v4 + v3, *MEMORY[0x277D6CDB0], v16);
  v6 = (v5 + v1);
  sub_218788784(0);
  v8 = v7;
  v9 = (v5 + v1 + *(v7 + 64));
  *v6 = 0xD00000000000001FLL;
  v6[1] = 0x8000000219D3D6A0;
  v10 = MEMORY[0x277D6CE10];
  sub_218788720(0, &qword_280E8C080, MEMORY[0x277D6CE10], v0);
  sub_219BE2BE4();
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  sub_219BE2BC4();
  sub_219BE2BB4();
  sub_218788850(&unk_280EE7320, 255, MEMORY[0x277D6CE10], MEMORY[0x277D6CE18]);
  sub_218788720(0, &qword_280E8F5A8, v10, MEMORY[0x277D83940]);
  sub_218788898();
  sub_219BF7164();
  *v9 = sub_21878968C;
  v9[1] = v18;
  v15 = *MEMORY[0x277D6CDC8];
  v17(v5 + v1);
  v11 = (v20 + 2 * v1);
  v12 = (v11 + *(v8 + 64));
  *v11 = 0xD000000000000024;
  v11[1] = 0x8000000219D3D6C0;
  *(swift_allocObject() + 16) = xmmword_219C09BA0;

  sub_219BE2BD4();
  sub_219BF7164();
  *v12 = sub_21878B9DC;
  v12[1] = v18;
  (v17)(v11, v15, v16);

  v13 = sub_218788920(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

void sub_218788720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218788784(uint64_t a1)
{
  if (!qword_280E8F950)
  {
    sub_219BE2BE4();
    sub_218788800();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8F950);
    }
  }
}

unint64_t sub_218788800()
{
  result = qword_280E8B4D0;
  if (!qword_280E8B4D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280E8B4D0);
  }

  return result;
}

uint64_t sub_218788850(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218788898()
{
  result = qword_280E8F5A0;
  if (!qword_280E8F5A0)
  {
    sub_218788720(255, &qword_280E8F5A8, MEMORY[0x277D6CE10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F5A0);
  }

  return result;
}

uint64_t sub_218788920(uint64_t a1)
{
  v2 = sub_219BE2A34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_218788C34(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE7388, MEMORY[0x277D6CDD0], MEMORY[0x277D6CDD8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280EE7380, MEMORY[0x277D6CDD0], MEMORY[0x277D6CDE0]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_218788C34(uint64_t a1)
{
  if (!qword_280E8D740)
  {
    sub_219BE2A34();
    sub_218751238(&qword_280EE7388, MEMORY[0x277D6CDD0], MEMORY[0x277D6CDD8]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D740);
    }
  }
}

uint64_t sub_218788CC8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1FD8](ObjectType, a2);
}

void sub_218788D04(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  MEMORY[0x28223BE20](v9);
  v74 = &v67 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v73 = &v67 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v67 - v17;
  v19 = *(v1 + 40);
  v18 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v19);
  (*(v18 + 96))(v19, v18);
  sub_219BE20E4();

  if (v78 != 1)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v31 = sub_219BE5434();
    __swift_project_value_buffer(v31, qword_280F62790);
    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "BG worker will schedule in distant future because Offline Mode is disabled";
    goto LABEL_17;
  }

  v20 = [objc_msgSend(*(v1 + 104) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (!v20)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v36 = sub_219BE5434();
    __swift_project_value_buffer(v36, qword_280F62790);
    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "BG worker has no prefetch config";
LABEL_17:
    _os_log_impl(&dword_2186C1000, v32, v33, v35, v34, 2u);
    MEMORY[0x21CECF960](v34, -1, -1);
LABEL_18:

    sub_219BDBBD4();
    return;
  }

  v72 = v20;
  v21 = [v20 scheduledBGFetchTimes];
  if (!v21)
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = v21;
  sub_2187381BC(0, &qword_27CC20CD8, &qword_280E8DA20, 0x277CCABB0, MEMORY[0x277D83940]);
  v24 = v23;
  v25 = sub_219BF5214();

  v26 = *(v25 + 16);

  if (v26)
  {
    if (qword_27CC08860 != -1)
    {
      swift_once();
    }

    sub_218788850(&unk_27CC20CB8, v27, type metadata accessor for OfflineFeedsBackgroundWorker, &unk_219CB3330);
    sub_219BDC7D4();
    sub_219BDBBB4();
    sub_218788850(&qword_280EE9C80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v28 = sub_219BF53A4();
    v70 = *(v3 + 8);
    v71 = v3 + 8;
    v70(v13, v2);
    v29 = v72;
    v30 = v73;
    if (v28)
    {
      sub_219BDBD24();
    }

    else
    {
      (*(v3 + 16))();
    }

    v43 = v74;
    v44 = [v29 scheduledBGFetchTimes];
    if (v44)
    {
      v45 = v44;
      v46 = sub_219BF5214();

      sub_2199061CC(v30, v46, v43);

      v47 = [v29 scheduledBGFetchTimeJitter];
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v24 = v75;
        if (v47)
        {
          v69 = sub_218D34164(v47);
          if (qword_280EE6070 == -1)
          {
LABEL_29:
            v48 = sub_219BE5434();
            __swift_project_value_buffer(v48, qword_280F62790);
            v49 = *(v3 + 16);
            v49(v8, v43, v2);
            v49(v5, v24, v2);
            v50 = sub_219BE5414();
            v51 = sub_219BF6214();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v78 = v68;
              *v52 = 136446722;
              sub_218788850(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v53 = sub_219BF7894();
              v55 = v54;
              v56 = v70;
              v70(v8, v2);
              v57 = sub_2186D1058(v53, v55, &v78);

              *(v52 + 4) = v57;
              *(v52 + 12) = 2082;
              v58 = sub_219BF7894();
              v60 = v59;
              v56(v5, v2);
              v61 = sub_2186D1058(v58, v60, &v78);

              *(v52 + 14) = v61;
              *(v52 + 22) = 2082;
              v77 = v69;
              v62 = sub_219BF7894();
              v64 = sub_2186D1058(v62, v63, &v78);

              *(v52 + 24) = v64;
              v29 = v72;
              v30 = v73;
              _os_log_impl(&dword_2186C1000, v50, v51, "BG worker calculated next scheduled refresh date=%{public}s, previous=%{public}s, jitter=%{public}s", v52, 0x20u);
              v65 = v68;
              swift_arrayDestroy();
              MEMORY[0x21CECF960](v65, -1, -1);
              v66 = v52;
              v43 = v74;
              MEMORY[0x21CECF960](v66, -1, -1);
            }

            else
            {

              v56 = v70;
              v70(v5, v2);
              v56(v8, v2);
            }

            sub_219BDBBF4();

            v56(v43, v2);
            v56(v30, v2);
            v56(v75, v2);
            return;
          }

LABEL_35:
          swift_once();
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v37 = sub_219BE5434();
  __swift_project_value_buffer(v37, qword_280F62790);
  v38 = sub_219BE5414();
  v39 = sub_219BF6214();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v72;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2186C1000, v38, v39, "BG worker has no scheduled fetch times", v42, 2u);
    MEMORY[0x21CECF960](v42, -1, -1);
  }

  sub_219BDBBD4();
}

uint64_t sub_218789690(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE5074();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21878972C();
    sub_219BE2A04();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21878972C()
{
  result = qword_280EE60F0;
  if (!qword_280EE60F0)
  {
    sub_219BE5074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE60F0);
  }

  return result;
}

void *sub_2187897B0(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE62A0, MEMORY[0x277D352C0], 1);
  result = sub_219BE1E34();
  v4 = ObjectType;
  if (!ObjectType)
  {
    __break(1u);
    goto LABEL_23;
  }

  swift_getObjectType();
  v5 = v27;
  v6 = __swift_project_boxed_opaque_existential_1(v25, ObjectType);
  *(&v23 + 1) = v4;
  v24 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE62F0, MEMORY[0x277D35118], 1);
  result = sub_219BE1E34();
  v8 = ObjectType;
  if (!ObjectType)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v27;
  v10 = __swift_project_boxed_opaque_existential_1(v25, ObjectType);
  *(&v23 + 1) = v8;
  v24 = *(v9 + 8);
  v11 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = sub_219BE4724();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = result;
  ObjectType = v12;
  v27 = sub_2186D5C5C(&unk_280EE6218, MEMORY[0x277D35360], MEMORY[0x277D35358]);
  *v25 = v13;
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE64E0, MEMORY[0x277D34CC0], 0);
  result = sub_219BE1E34();
  v14 = v22;
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = *(&v22 + 1);
  ObjectType = swift_getObjectType();
  v27 = *(v15 + 8);
  *v25 = v14;
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  sub_2186C709C(0, &unk_280EE48F8, MEMORY[0x277D6E008], 1);
  if (swift_dynamicCast())
  {
    sub_2186CB1F0(&v22, v25);
    sub_219BE9B14();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_219919C78(&v22, &unk_27CC20F20, &unk_280EE48F8, MEMORY[0x277D6E008]);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = type metadata accessor for NotificationAuthorizationRequester();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_27;
  }

  v17 = result;
  ObjectType = v16;
  v27 = sub_2186D5C5C(&qword_280E9FB58, type metadata accessor for NotificationAuthorizationRequester, &unk_219C33C64);
  *v25 = v17;
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    sub_2186CB1F0(&v22, v25);
    sub_219BE9B14();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_219919C78(&v22, &unk_27CC20F20, &unk_280EE48F8, MEMORY[0x277D6E008]);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA3940, &protocol descriptor for EmailSignupAutomaticPresentorType, 0);
  sub_219BE1E34();
  if (swift_dynamicCast())
  {
    sub_2186CB1F0(&v22, v25);
    sub_219BE9B14();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_219919C78(&v22, &unk_27CC20F20, &unk_280EE48F8, MEMORY[0x277D6E008]);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E9D588, &protocol descriptor for LocationSharingDetectionManagerType, 1);
  result = sub_219BE1E34();
  v18 = ObjectType;
  if (!ObjectType)
  {
    goto LABEL_30;
  }

  v19 = v27;
  v20 = __swift_project_boxed_opaque_existential_1(v25, ObjectType);
  *(&v23 + 1) = v18;
  v24 = *(v19 + 8);
  v21 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(v18 - 8) + 16))(v21, v20, v18);
  sub_219BE9B14();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC384();
    sub_219BDC8A4();
  }

  return sub_219BE9B04();
}

void *sub_218789EE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE87E4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E9F9E8, &protocol descriptor for OnboardingConfigurationFactoryType, 1);
    result = sub_219BE1E34();
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      sub_21878A198(v6);
      v8 = sub_219BE4514();
      swift_allocObject();
      v9 = sub_219BE4504();
      __swift_destroy_boxed_opaque_existential_1(v10);
      a2[3] = v8;
      result = sub_2186D5C5C(&unk_280EE6300, MEMORY[0x277D35110], MEMORY[0x277D35108]);
      a2[4] = result;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21878A088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for OnboardingConfigurationFactory();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A4F0C0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21878A198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_219BE9AF4();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E808], v5);
  v8 = sub_219BEA294();
  swift_allocObject();
  v9 = sub_219BEA284();
  v26 = v8;
  v27 = MEMORY[0x277D6EA48];
  *&v25 = v9;
  v23 = type metadata accessor for OnboardingPersonalizedAdsStep();
  v10 = swift_allocObject();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_219C14CF0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 80) = 1;
  sub_2186CB1F0(&v25, v10 + 16);
  v11 = *(v1 + 16);
  v12 = *(v2 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *&v25 = MEMORY[0x277D84F90];
  sub_21878A648(&qword_280EE7E70, 255, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218709A98(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();
  v14 = v12;
  swift_unknownObjectRetain();
  sub_219BF7164();
  sub_21878A690();
  swift_allocObject();
  v15 = sub_219BE2D14();
  v16 = sub_219BEA404();
  swift_allocObject();
  v17 = sub_219BEA3F4();
  v26 = v16;
  v27 = MEMORY[0x277D6EAA8];
  *&v25 = v17;
  v18 = type metadata accessor for OnboardingAdsLocationServicesStep();
  v19 = swift_allocObject();
  v19[11] = v15;
  sub_2186CB1F0(&v25, (v19 + 2));
  v19[7] = sub_218EC5798;
  v19[8] = v2;
  v19[9] = sub_218EC57A0;
  v19[10] = v2;
  sub_218709A98(0, &qword_280E8BF48, sub_21878A704, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09EC0;
  *(v20 + 56) = v23;
  *(v20 + 64) = sub_21878A648(&qword_280EAF960, 255, type metadata accessor for OnboardingPersonalizedAdsStep, &unk_219CB0160);
  *(v20 + 32) = v10;
  *(v20 + 96) = v18;
  *(v20 + 104) = sub_21878A648(&qword_280EA2BD8, 255, type metadata accessor for OnboardingAdsLocationServicesStep, &unk_219CC6E44);
  *(v20 + 72) = v19;
  swift_retain_n();
  return sub_219BE87D4();
}

uint64_t sub_21878A5E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21878A648(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21878A690()
{
  if (!qword_280EE7138)
  {
    v0 = sub_219BE2D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7138);
    }
  }
}

unint64_t sub_21878A704()
{
  result = qword_280EE5AB8;
  if (!qword_280EE5AB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5AB8);
  }

  return result;
}

void *sub_21878A768@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62B8, MEMORY[0x277D35228], 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310, MEMORY[0x277D35100], 0);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0, &protocolRef_FCNetworkReachabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE63E8, MEMORY[0x277D34FE0], 1);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE62E0, MEMORY[0x277D35120], 1);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_2186CB1F0(&v19, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD28, MEMORY[0x277D34640], 1);
  result = sub_219BE1E34();
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_2186CB1F0(&v16, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD30, MEMORY[0x277D34638], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2186CB1F0(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_2186CB1F0(&v10, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901C0, MEMORY[0x277D33D68], 1);
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    v5 = sub_219BE42A4();
    swift_allocObject();
    v6 = sub_219BE4294();
    a2[3] = v5;
    result = sub_2186D5C5C(&unk_280EE63A0, MEMORY[0x277D35028], MEMORY[0x277D35020]);
    a2[4] = result;
    *a2 = v6;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21878ACEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AppLaunchUpsellDataStore();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_2186D5C5C(qword_280EC2C20, type metadata accessor for AppLaunchUpsellDataStore, &unk_219C6E8AC);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21878AE70(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v88 = &v82[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v89 = &v82[-v6];
  MEMORY[0x28223BE20](v7);
  v91 = &v82[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v82[-v10];
  MEMORY[0x28223BE20](v12);
  v92 = &v82[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v82[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v82[-v18];
  MEMORY[0x28223BE20](v20);
  v90 = &v82[-v21];
  v23 = *(v1 + 40);
  v22 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v23);
  (*(v22 + 96))(v23, v22);
  sub_219BE20E4();

  if (v95 != 1)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v40 = sub_219BE5434();
    __swift_project_value_buffer(v40, qword_280F62790);
    v41 = sub_219BE5414();
    v42 = sub_219BF61F4();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_26;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BG worker will schedule in distant future because Offline Mode is disabled";
    goto LABEL_25;
  }

  v24 = [objc_msgSend(*(v1 + 104) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (!v24)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v45 = sub_219BE5434();
    __swift_project_value_buffer(v45, qword_280F62790);
    v41 = sub_219BE5414();
    v42 = sub_219BF61F4();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_26;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BG worker has no prefetch config";
LABEL_25:
    _os_log_impl(&dword_2186C1000, v41, v42, v44, v43, 2u);
    MEMORY[0x21CECF960](v43, -1, -1);
LABEL_26:

    sub_219BDBBD4();
    return;
  }

  v25 = [v24 scheduledMicroUpdateTimes];
  if (!v25)
  {
    __break(1u);
    goto LABEL_45;
  }

  v26 = v25;
  sub_2187381BC(0, &qword_27CC20CD8, &qword_280E8DA20, 0x277CCABB0, MEMORY[0x277D83940]);
  v87 = v27;
  v28 = sub_219BF5214();

  v29 = *(v28 + 16);

  if (v29)
  {
    v86 = v24;
    if (qword_27CC08860 != -1)
    {
      swift_once();
    }

    sub_218788850(&unk_27CC20CB8, v30, type metadata accessor for OfflineFeedsBackgroundWorker, &unk_219CB3330);
    sub_219BDC7D4();
    if (qword_27CC08868 != -1)
    {
      swift_once();
    }

    sub_219BDC7D4();
    v31 = MEMORY[0x277CC9578];
    sub_218788850(&qword_280EE9C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v32 = sub_219BF5334();
    v33 = *(v3 + 8);
    v34 = (v32 & 1) == 0;
    if (v32)
    {
      v35 = v19;
    }

    else
    {
      v35 = v16;
    }

    if (v34)
    {
      v36 = v19;
    }

    else
    {
      v36 = v16;
    }

    v33(v35, v2);
    v37 = v90;
    (*(v3 + 32))(v90, v36, v2);
    sub_219BDBBB4();
    sub_218788850(&qword_280EE9C80, 255, v31, MEMORY[0x277CC9598]);
    v38 = sub_219BF53A4();
    v85 = v33;
    v33(v11, v2);
    v39 = v92;
    if (v38)
    {
      sub_219BDBD24();
    }

    else
    {
      (*(v3 + 16))(v92, v37, v2);
    }

    v50 = v91;
    v51 = v86;
    v52 = v37;
    v53 = [v86 scheduledMicroUpdateTimes];
    if (v53)
    {
      v54 = v53;
      v55 = sub_219BF5214();

      sub_2199061CC(v39, v55, v50);

      v56 = [v51 scheduledMicroUpdateTimeJitter];
      if ((v56 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v39 = v89;
        if (v56)
        {
          v87 = sub_218D34164(v56);
          if (qword_280EE6070 == -1)
          {
LABEL_37:
            v57 = sub_219BE5434();
            __swift_project_value_buffer(v57, qword_280F62790);
            v58 = *(v3 + 16);
            v58(v39, v50, v2);
            v59 = v88;
            v58(v88, v37, v2);
            v60 = sub_219BE5414();
            v61 = sub_219BF6214();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v95 = v84;
              *v62 = 136446722;
              sub_218788850(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v83 = v61;
              v63 = sub_219BF7894();
              v65 = v64;
              v66 = v39;
              v67 = v85;
              v85(v66, v2);
              v68 = sub_2186D1058(v63, v65, &v95);

              *(v62 + 4) = v68;
              *(v62 + 12) = 2082;
              v69 = sub_219BF7894();
              v71 = v70;
              v72 = v59;
              v73 = v67;
              v67(v72, v2);
              v74 = sub_2186D1058(v69, v71, &v95);

              *(v62 + 14) = v74;
              *(v62 + 22) = 2082;
              v51 = v86;
              v94 = v87;
              v75 = sub_219BF7894();
              v77 = sub_2186D1058(v75, v76, &v95);

              *(v62 + 24) = v77;
              v78 = v92;
              _os_log_impl(&dword_2186C1000, v60, v83, "BG worker calculated next scheduled micro-update date=%{public}s, previous=%{public}s, jitter=%{public}s", v62, 0x20u);
              v79 = v84;
              swift_arrayDestroy();
              v52 = v90;
              MEMORY[0x21CECF960](v79, -1, -1);
              v80 = v62;
              v50 = v91;
              MEMORY[0x21CECF960](v80, -1, -1);
            }

            else
            {

              v81 = v59;
              v73 = v85;
              v85(v81, v2);
              v73(v39, v2);
              v78 = v92;
            }

            sub_219BDBBF4();

            v73(v50, v2);
            v73(v78, v2);
            v73(v52, v2);
            return;
          }

LABEL_43:
          swift_once();
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    return;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v46 = sub_219BE5434();
  __swift_project_value_buffer(v46, qword_280F62790);
  v47 = sub_219BE5414();
  v48 = sub_219BF6214();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2186C1000, v47, v48, "BG worker has no scheduled micro-update times", v49, 2u);
    MEMORY[0x21CECF960](v49, -1, -1);
  }

  sub_219BDBBD4();
}

uint64_t sub_21878B920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AppLaunchUpsellTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_21871C950(qword_280EC9258, type metadata accessor for AppLaunchUpsellTracker, &unk_219CD1438);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21878BA04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62B0, MEMORY[0x277D352B8], 1);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6210, MEMORY[0x277D35370], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE62E0, MEMORY[0x277D35120], 1);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    sub_219BE4724();
    swift_allocObject();
    return sub_219BE4714();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21878BC44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290, &protocol descriptor for NotificationServiceType, 1);
  result = sub_219BE1E34();
  if (v7[3])
  {
    v2 = type metadata accessor for NotificationAuthorizationRequester();
    v3 = objc_allocWithZone(v2);
    v4 = &v3[OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_uid];
    *v4 = 0xD000000000000023;
    *(v4 + 1) = 0x8000000219D4BD70;
    sub_218718690(v7, &v3[OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService]);
    v6.receiver = v3;
    v6.super_class = v2;
    v5 = objc_msgSendSuper2(&v6, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21878BD34()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_uid);

  return v1;
}

void *sub_21878BD74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0, &protocolRef_FCAppleAccount);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878C2F8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240, &protocolRef_FCNewsletterManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB8D80, &protocol descriptor for EmailSignupModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v34[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0, &protocol descriptor for SportsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA37A0, &protocol descriptor for FineGrainedNewslettersHandlerType, 1);
  result = sub_219BE1E34();
  if (!v30[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v6;
  v23 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = result;
  v22 = a2;
  v10 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310, MEMORY[0x277D35100], 0);
  result = sub_219BE1E34();
  v20 = v28;
  if (v28)
  {
    v11 = v29;
    v12 = type metadata accessor for EmailSignupAutomaticPresentor();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor__cachedModel;
    v26 = xmmword_219C14CF0;
    v27 = 0;
    sub_21878F4C0(0, &unk_280EE7090, sub_21878F524, MEMORY[0x277D6CF18]);
    swift_allocObject();
    *&v13[v14] = sub_219BE2E64();
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_appleAccount] = v10;
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_userInfo] = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_appConfigurationManager] = v23;
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_bundleSubscriptionManager] = v24;
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_newsletterManager] = v8;
    sub_218718690(v34, &v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_emailSignupModelFactory]);
    sub_218718690(v31, &v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_sportsOnboardingManager]);
    sub_218718690(v30, &v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_fineGrainedNewslettersHandler]);
    *&v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_featureAvailability] = v21;
    v15 = &v13[OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_appLaunchMethodChecker];
    *v15 = v20;
    *(v15 + 1) = v11;
    v25.receiver = v13;
    v25.super_class = v12;
    swift_unknownObjectRetain();
    v19 = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = objc_msgSendSuper2(&v25, sel_init);
    [v24 addObserver_];
    v18 = v32;
    v17 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v17 + 48))(v16, &off_282A4AE88, v18, v17);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v34);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    *v22 = v16;
    v22[1] = &off_282A4AE98;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21878C2F8()
{
  result = qword_280E8E890;
  if (!qword_280E8E890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E890);
  }

  return result;
}

uint64_t sub_21878C344@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EmailSignupModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A37D18;
  *a1 = result;
  return result;
}

void *sub_21878C3B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240, &protocolRef_FCNewsletterManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA36D8, &protocol descriptor for FollowingNotificationsTrackerType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E95828, &protocol descriptor for NewsletterManagementRouteModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21878F25C(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = type metadata accessor for FineGrainedNewslettersHandler();
    a2[3] = result;
    a2[4] = &off_282A4B990;
    *a2 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21878C690()
{
  type metadata accessor for FollowingNotificationsViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &unk_280E93398, &protocol descriptor for FollowingNotificationsHeaderLabelTextProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA6940, &protocol descriptor for FollowingNotificationsStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EA6948, &protocol descriptor for FollowingNotificationsRouterType, 1);
  sub_219BE2914();
  type metadata accessor for FollowingNotificationsRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_280E98560, &protocol descriptor for FollowingNotificationsEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9B818, &protocol descriptor for FollowingNotificationsInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E998E0, &protocol descriptor for FollowingNotificationsDataManagerType, 0);
  sub_219BE2914();
  type metadata accessor for FollowingNotificationsDataManager();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EA36D8, &protocol descriptor for FollowingNotificationsTrackerType, 1);
  sub_219BE2914();

  type metadata accessor for FollowingNotificationsModifierFactory();
  sub_219BE2904();

  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  sub_21878DB3C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21878E644(0);
  sub_219BE2904();

  sub_21878DF90(0);
  sub_219BE2904();

  sub_21878E05C(0, &qword_280EE41E8, sub_21878E7CC, sub_21878E308, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
  sub_219BE2904();

  type metadata accessor for FollowingNotificationsLayoutBuilder();
  sub_219BE2904();

  sub_21878E8C0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_21878DE14(0);
  sub_219BE2904();

  sub_21878EA14(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();

  sub_21878DC48(0);
  sub_219BE2904();

  sub_21878E360(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21878E4DC(0);
  sub_219BE2904();

  type metadata accessor for FollowingNotificationsViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for FollowingBrowseButtonViewRenderer();
  sub_219BE2904();

  type metadata accessor for FollowingBrowseButtonViewStyler();
  sub_219BE2904();

  type metadata accessor for FollowingNotificationsViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21878EB38(0, &unk_280EE4600, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3A98, MEMORY[0x277D6EB08], 1);
  sub_219BE2914();

  sub_21878EBF4(0);
  sub_219BE2904();

  sub_219BEBB84();
  sub_219BE2914();

  sub_219BE9C54();
  sub_219BE2904();

  type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributesFactory();
  sub_219BE2904();

  sub_2186C709C(0, qword_280E938C8, &protocol descriptor for FollowingNotificationsDisabledViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E93EB0, &protocol descriptor for FollowingNotificationsDisabledViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E92F38, &protocol descriptor for FollowingNotificationsSectionFooterViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E930C0, &protocol descriptor for FollowingNotificationsSectionFooterViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E93388, &protocol descriptor for FollowingNotificationsSectionFooterViewStylerType, 1);
  sub_219BE2914();

  type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
  sub_219BE2904();

  type metadata accessor for FollowingSettingsButtonViewRenderer();
  sub_219BE2904();

  type metadata accessor for FollowingSettingsButtonViewStyler();
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21878ED24(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
}

uint64_t type metadata accessor for FollowingNotificationsViewController(uint64_t a1)
{
  result = qword_280E9B7E8;
  if (!qword_280E9B7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21878D3F4(uint64_t a1)
{
  result = type metadata accessor for FollowingNotificationsPrewarm(319);
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

uint64_t type metadata accessor for FollowingNotificationsPrewarm(uint64_t a1)
{
  result = qword_280EB09A0;
  if (!qword_280EB09A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21878D4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21878D560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21878D5C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21878D628()
{
  if (!qword_280E8FFE8)
  {
    sub_21878D4FC(0, &qword_280E8FFE0, MEMORY[0x277D34098], MEMORY[0x277D83D88]);
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FFE8);
    }
  }
}

void sub_21878D6A0(uint64_t a1)
{
  sub_21878D628();
  if (v1 <= 0x3F)
  {
    sub_21878D714(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21878D714(uint64_t a1)
{
  if (!qword_280E8F2B0)
  {
    sub_21878D4FC(255, &qword_280E8F2C0, type metadata accessor for FollowingTagModel, MEMORY[0x277D83940]);
    sub_21878D4FC(255, &qword_280E8FFE0, MEMORY[0x277D34098], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F2B0);
    }
  }
}

void sub_21878D854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21878D8D8()
{
  result = qword_280EA6960;
  if (!qword_280EA6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6960);
  }

  return result;
}

unint64_t sub_21878D92C()
{
  result = qword_280EB8B40;
  if (!qword_280EB8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8B40);
  }

  return result;
}

unint64_t sub_21878D984()
{
  result = qword_280EB8B50;
  if (!qword_280EB8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8B50);
  }

  return result;
}

unint64_t sub_21878D9DC()
{
  result = qword_280EB8B30;
  if (!qword_280EB8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8B30);
  }

  return result;
}

unint64_t sub_21878DA38()
{
  result = qword_280EB8B28;
  if (!qword_280EB8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8B28);
  }

  return result;
}

unint64_t sub_21878DA90()
{
  result = qword_280EB8B58[0];
  if (!qword_280EB8B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB8B58);
  }

  return result;
}

unint64_t sub_21878DAE8()
{
  result = qword_280EB8B48;
  if (!qword_280EB8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8B48);
  }

  return result;
}

void sub_21878DB3C(uint64_t a1)
{
  if (!qword_280EE5588)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_21878DF90(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_218703FA0(&qword_280EE5248, sub_21878DF90, MEMORY[0x277D6D960]);
    v2 = sub_219BE6F54();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE5588);
    }
  }
}

void sub_21878DC48(uint64_t a1)
{
  if (!qword_280EE3E48)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_21878E05C(255, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingNotificationsViewCellProvider();
    type metadata accessor for FollowingNotificationsViewSupplementaryViewProvider();
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_21878E26C();
    sub_218703FA0(&qword_280E98538, type metadata accessor for FollowingNotificationsViewCellProvider, &unk_219C868F8);
    sub_218703FA0(qword_280EE1C60, type metadata accessor for FollowingNotificationsViewSupplementaryViewProvider, &unk_219C6A844);
    sub_21878E308();
    v2 = sub_219BE9B94();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE3E48);
    }
  }
}

void sub_21878DE14(uint64_t a1)
{
  if (!qword_280EE4E78)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_21878DC48(255);
    sub_21878E360(255);
    sub_21878E4DC(255);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_218703FA0(&unk_280EE3E58, sub_21878DC48, MEMORY[0x277D6E820]);
    sub_218703FA0(&unk_280EE42E0, sub_21878E360, MEMORY[0x277D6E738]);
    sub_218703FA0(&qword_280EE3C98, sub_21878E4DC, MEMORY[0x277D6E9D8]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4E78);
    }
  }
}

void sub_21878DF90(uint64_t a1)
{
  if (!qword_280EE5240)
  {
    sub_21878DE14(255);
    sub_21878D8D8();
    sub_21878D92C();
    sub_218703FA0(&qword_280EE4E80, sub_21878DE14, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5240);
    }
  }
}

void sub_21878E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = &type metadata for FollowingNotificationsLayoutDescriptor;
    v11[1] = &type metadata for FollowingNotificationsLayoutModel;
    v11[2] = a3();
    v11[3] = a4();
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21878E0F4()
{
  result = qword_280E98550;
  if (!qword_280E98550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98550);
  }

  return result;
}

unint64_t sub_21878E148()
{
  result = qword_280EA36F0;
  if (!qword_280EA36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA36F0);
  }

  return result;
}

uint64_t sub_21878E1E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21878D854(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21878E228(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_219BAE7B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21878E26C()
{
  result = qword_280EE4C30;
  if (!qword_280EE4C30)
  {
    sub_21878E05C(255, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4C30);
  }

  return result;
}

unint64_t sub_21878E308()
{
  result = qword_280EA36E8;
  if (!qword_280EA36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA36E8);
  }

  return result;
}

void sub_21878E360(uint64_t a1)
{
  if (!qword_280EE42D0)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_21878E05C(255, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_21878E26C();
    sub_218703FA0(&qword_280E9B7F8, type metadata accessor for FollowingNotificationsViewController, &unk_219C17EB0);
    sub_21878E308();
    v2 = sub_219BE9794();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE42D0);
    }
  }
}

void sub_21878E4DC(uint64_t a1)
{
  if (!qword_280EE3C90)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_21878E05C(255, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_21878E26C();
    sub_218703FA0(&qword_280E9B7F8, type metadata accessor for FollowingNotificationsViewController, &unk_219C17EB0);
    v2 = sub_219BEA194();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE3C90);
    }
  }
}

void sub_21878E644(uint64_t a1)
{
  if (!qword_280EE3BB0)
  {
    sub_21878E05C(255, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingNotificationsLayoutBuilder();
    sub_21878E05C(255, &qword_280EE41E8, sub_21878E7CC, sub_21878E308, MEMORY[0x277D6E7B0]);
    sub_21878E26C();
    sub_218703FA0(&qword_280E9DA38, type metadata accessor for FollowingNotificationsLayoutBuilder, &unk_219C45200);
    sub_21878E824();
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3BB0);
    }
  }
}

unint64_t sub_21878E7CC()
{
  result = qword_280E98540;
  if (!qword_280E98540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98540);
  }

  return result;
}

unint64_t sub_21878E824()
{
  result = qword_280EE41F0;
  if (!qword_280EE41F0)
  {
    sub_21878E05C(255, &qword_280EE41E8, sub_21878E7CC, sub_21878E308, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE41F0);
  }

  return result;
}

void sub_21878E8C0(uint64_t a1)
{
  if (!qword_280EE4938)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_21878DE14(255);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_218703FA0(&qword_280EE4E80, sub_21878DE14, MEMORY[0x277D6DC88]);
    sub_218703FA0(&qword_280E9B7F8, type metadata accessor for FollowingNotificationsViewController, &unk_219C17EB0);
    v2 = sub_219BE8774();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE4938);
    }
  }
}

void sub_21878EA14(uint64_t a1)
{
  if (!qword_280EE3AC0)
  {
    sub_219BE9C54();
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_218703FA0(&qword_280E9B7F8, type metadata accessor for FollowingNotificationsViewController, &unk_219C17EB0);
    v2 = sub_219BEA544();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE3AC0);
    }
  }
}

void sub_21878EB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    v8 = v7;
    v9 = sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v6, MEMORY[0x277D6D8C8]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21878EBF4(uint64_t a1)
{
  if (!qword_280EE3AA0)
  {
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    type metadata accessor for FollowingNotificationsViewController(255);
    sub_21878E1E4(&unk_280EE53E8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C8]);
    sub_218703FA0(&qword_280E9B7F8, type metadata accessor for FollowingNotificationsViewController, &unk_219C17EB0);
    v2 = sub_219BEA564();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE3AA0);
    }
  }
}

void sub_21878ED24(uint64_t a1)
{
  if (!qword_280EE3FA0)
  {
    sub_21878DE14(255);
    v1 = MEMORY[0x277D6D8B8];
    sub_21878D854(255, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
    sub_218703FA0(&qword_280EE4E80, sub_21878DE14, MEMORY[0x277D6DC88]);
    sub_21878E1E4(&qword_280EE53F8, &qword_280EE53E0, v1, MEMORY[0x277D6D8C0]);
    v2 = sub_219BE9AD4();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE3FA0);
    }
  }
}

uint64_t sub_21878EE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v16 = sub_219BDF554();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE0204();
    result = sub_219BE1E24();
    if (result)
    {
      v12 = result;
      v13 = type metadata accessor for FollowingNotificationsTracker();
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      (*(v3 + 104))(v5, *MEMORY[0x277D2DB38], v16);

      sub_219BDF534();
      sub_218703FA0(&unk_280EE8750, MEMORY[0x277D2DB28], MEMORY[0x277D2DB20]);
      sub_219BDD1F4();

      result = (*(v7 + 8))(v9, v6);
      v15 = v17;
      v17[3] = v13;
      v15[4] = &off_282A46F70;
      *v15 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21878F0F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240, &protocolRef_FCNewsletterManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for NewsletterManagementRouteModelFactory();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    a2[3] = v8;
    a2[4] = &off_282A57910;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21878F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for FollowingNotificationsTracker();
  v27[3] = v9;
  v27[4] = &off_282A46F70;
  v27[0] = a3;
  v25 = v8;
  v26 = &off_282A57910;
  v24[0] = a4;
  type metadata accessor for FineGrainedNewslettersHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v10[6] = v9;
  v10[7] = &off_282A46F70;
  v10[11] = v8;
  v10[12] = &off_282A57910;
  v10[8] = v22;
  v10[2] = a1;
  v10[3] = v21;
  v10[13] = a2;
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v10;
}

void sub_21878F4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21878F524()
{
  if (!qword_280ED89F8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280ED89F8);
    }
  }
}

uint64_t sub_21878F598(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_observers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v16 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_21:
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v14 = a2;
    v15 = v3;
    v8 = 0;
    v3 = v6 & 0xC000000000000001;
    a2 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        MEMORY[0x21CECE0F0](v8, v6);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v3 = v15;
          v10 = v16;
          a2 = v14;
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v8;
      if (v9 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  *(v3 + v5) = v10;

  type metadata accessor for SportsOnboardingManagerObserverProxy();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v12 = swift_beginAccess();
  MEMORY[0x21CECC690](v12);
  if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

void *sub_21878F810@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for LocationSharingDetectionManager();
      v7 = swift_allocObject();
      sub_21876FF18(0, &qword_280EE7E18, sub_21878F9CC, &type metadata for LocationSharingDetectionManager.PresentationStatusEvent, MEMORY[0x277D6CAA0]);
      swift_allocObject();
      *(v7 + 64) = sub_219BE1D34();
      sub_2186CB1F0(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      result = sub_2186D5C5C(&unk_280EA90A8, type metadata accessor for LocationSharingDetectionManager, &unk_219CA0DC8);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21878F9CC()
{
  result = qword_280EA90D0;
  if (!qword_280EA90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA90D0);
  }

  return result;
}

unint64_t sub_21878FA20()
{
  result = qword_280EA90C0;
  if (!qword_280EA90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA90C0);
  }

  return result;
}

uint64_t sub_21878FA74(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21878FABC(uint64_t a1, uint64_t a2)
{
  result = sub_21878FA74(&qword_280EA90B8, a2, type metadata accessor for LocationSharingDetectionManager, &unk_219CA0D90);
  *(a1 + 8) = result;
  return result;
}

void *sub_21878FB30(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218783DA0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21878FBB4(result);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21878FBB4(void *a1)
{
  v15 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v15 puzzleTypes];
  if (!v2)
  {
    sub_219BF5924();
    v2 = sub_219BF5904();
  }

  v3 = sub_219BF5924();
  v4 = *(v1 + 16);
  v5 = sub_219BF53D4();
  [v4 setObject:v2 forKey:v5];

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62790);

  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x21CECC6D0](v3, MEMORY[0x277D837D0]);
    v13 = v12;

    v14 = sub_2186D1058(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2186C1000, v7, v8, "PuzzleTypeOfflineDatabaseSelector: updated supportedPuzzleTypes with [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }
}

void sub_21878FE58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2187603DC(0, &qword_280E90470, MEMORY[0x277D338C0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_21878FF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187603DC(0, &qword_280E90470, MEMORY[0x277D338C0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_218790034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218790094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187900F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_218790154(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280ED1608, &protocol descriptor for EngagementDonorType, 0);
  result = sub_219BE1E34();
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_219BE5264();
  sub_21875B940(0, &unk_280E8B950, qword_280EA3890, &protocol descriptor for EngagementTriggerDataProviderType, 1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C12A40;
  v6 = type metadata accessor for AppLaunchTriggerDataProvider();
  v7 = swift_allocObject();
  *(inited + 56) = v6;
  *(inited + 64) = &off_282A3D178;
  *(inited + 32) = v7;
  v8 = type metadata accessor for AudioDailyBriefingPlayedTriggerDataProvider();
  v9 = swift_allocObject();
  *(inited + 96) = v8;
  *(inited + 104) = &off_282A4EBB0;
  *(inited + 72) = v9;
  v10 = type metadata accessor for TabVisitedTriggerDataProvider();
  v11 = swift_allocObject();
  *(inited + 136) = v10;
  *(inited + 144) = &off_282A9D720;
  *(inited + 112) = v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &unk_280E8E5E0, 0x277D31350);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = type metadata accessor for ChannelVisitedTriggerDataProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(inited + 176) = v13;
  *(inited + 184) = &off_282A9D978;
  *(inited + 152) = v14;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = result;
  v16 = type metadata accessor for ArticleOpenedTriggerDataProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(inited + 216) = v16;
  *(inited + 224) = &off_282A92B00;
  *(inited + 192) = v17;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v18 = result;
    v19 = type metadata accessor for ChannelFollowedTriggerDataProvider();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(inited + 256) = v19;
    *(inited + 264) = &off_282A569B0;
    *(inited + 232) = v20;
    swift_beginAccess();
    sub_2187949E4(inited);
    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_21879055C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21875B940(0, &unk_280E8BA90, qword_280EC5440, &protocol descriptor for EngagementDonorProperty, 0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290, &protocol descriptor for NotificationServiceType, 1);
  result = sub_219BE1E34();
  if (!v58)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v52 = v7;
  v53 = v6;
  v54 = inited;
  v48 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  type metadata accessor for QueryNewsAppEngagementDonorProperty(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000023;
  *(v9 + 24) = 0x8000000219D13A60;
  sub_219BE5224();
  v10 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_bundleSubscriptionStatus;
  v11 = *MEMORY[0x277D2EB20];
  v12 = sub_219BE0B14();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_newsletterSubscription) = 0;
  v13 = MEMORY[0x277D84FA0];
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationCategoriesAllowlist) = MEMORY[0x277D84FA0];
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_authorizationStatus) = 0;
  v14 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_firstAppLaunchDate;
  v15 = sub_219BDBD34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v9 + v14, 1, 1, v15);
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userSegmentsSetIDs) = v13;
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingStatus) = 0;
  v50 = v15;
  v51 = v17;
  v49 = v18;
  v17(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_sportsOnboardingCompletedDate, 1, 1, v15);
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedSettings) = 0;
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_lastFetchedLocationSharingStatus) = 5;
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationSharingStatus) = 0;
  v19 = v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_recipeImportVersion;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_userInfo) = v53;
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_configurationManager) = v52;
  sub_218718690(v57, v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_notificationService);
  *(v9 + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationDetectionManager) = v8;
  [v8 addObserver_];
  __swift_destroy_boxed_opaque_existential_1(v57);
  v20 = v54;
  v54[4] = v9;
  v20[5] = &off_282A82B88;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = result;
  type metadata accessor for QueryNewsPlusAudioEngagementDonorProperty(0);
  swift_allocObject();
  v20[6] = sub_218791218(v21);
  v20[7] = &off_282A64C00;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E1D0, &protocolRef_FCLocalRegionManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E5E0, 0x277D31350);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  type metadata accessor for QueryLocalNewsEngagementDonorProperty(0);
  swift_allocObject();
  v24 = sub_218791588(v22, v23);
  swift_unknownObjectRelease();

  v20[8] = v24;
  v20[9] = &off_282A7F678;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  v28 = v57[0];
  if (!v57[0])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = v25;
  v52 = v57[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
  result = sub_219BE1E34();
  v29 = v55;
  if (!v55)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = v56;
  type metadata accessor for QueryNewsPlusEngagementDonorProperty(0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0xD000000000000024;
  *(v31 + 24) = 0x8000000219D13AB0;
  sub_219BE5224();
  v32 = v50;
  v33 = v51;
  v51(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastMagazineOpenDate, 1, 1, v50);
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_churnPropensityLevel) = 0;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs) = MEMORY[0x277D84F90];
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_trialEligibility) = 0;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingSetupStatus) = 0;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingEligible) = 2;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer) = 2;
  v33(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastPuzzlePlayedDate, 1, 1, v32);
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_tagController) = v53;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_configurationManager) = v26;
  *(v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_paidAccessChecker) = v27;
  v34 = (v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_offerManager);
  v35 = v52;
  *v34 = v28;
  v34[1] = v35;
  v36 = (v31 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingStatusManager);
  *v36 = v29;
  v36[1] = v30;
  v37 = v54;
  v54[10] = v31;
  *(v37 + 88) = &off_282A3C608;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0, MEMORY[0x277D317A0], 0);
  result = sub_219BE1E34();
  v38 = v55;
  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EACF68, &protocol descriptor for EngagementPropertyProviderType, 1);
  result = sub_219BE1E34();
  if (v58)
  {
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v41 = MEMORY[0x28223BE20](v40);
    v43 = (&v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43, v41);
    v45 = sub_218791A28(0x2D6E6F6973736573, 0xED0000726F6E6F64, v38, v39, *v43, v37);
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v57);
    v46 = v48;
    *v48 = v45;
    v46[1] = &off_282A3D138;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for QueryNewsAppEngagementDonorProperty(uint64_t a1)
{
  result = qword_280EE12E8;
  if (!qword_280EE12E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218790F4C(uint64_t a1)
{
  sub_219BE5244();
  if (v1 <= 0x3F)
  {
    sub_219BE0B14();
    if (v2 <= 0x3F)
    {
      sub_2186DCF58(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for QueryNewsPlusAudioEngagementDonorProperty(uint64_t a1)
{
  result = qword_280EE0F90;
  if (!qword_280EE0F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218791124(uint64_t a1)
{
  sub_219BE5244();
  if (v1 <= 0x3F)
  {
    sub_2186DCF58(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218791218(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000029;
  *(v1 + 24) = 0x8000000219C67FC0;
  sub_219BE5224();
  v3 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedDate;
  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromInConversationsDate, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromBusinessDate, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastDailyBriefingPlayedDate, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___inConversationsAudioTagID) = xmmword_219C14A10;
  *(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___businessAudioTagID) = xmmword_219C14A10;
  *(v1 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_configurationManager) = a1;
  return v1;
}

uint64_t sub_218791378(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8E250, &protocolRef_FCLocalAreasManager);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for LocalRegionManager();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for QueryLocalNewsEngagementDonorProperty(uint64_t a1)
{
  result = qword_280EE3170;
  if (!qword_280EE3170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187914BC(uint64_t a1)
{
  result = sub_219BE5244();
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

uint64_t sub_218791588(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = 0xD000000000000025;
  *(v3 + 24) = 0x8000000219C97260;
  sub_219BE5224();
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_localNewsRegions) = v6;
  *(v3 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_fetchedRegions) = 0;
  *(v3 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_locationRegionManager) = a1;
  *(v3 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_tagController) = a2;
  sub_219BE1F84();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v7 = a2;

  sub_219BE1F44();

  return v3;
}

uint64_t sub_2187916C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_locationRegionManager);
    v3 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_218792560;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218791EC0;
    aBlock[3] = &block_descriptor_152;
    v4 = _Block_copy(aBlock);

    [v2 fetchRegions_];
    _Block_release(v4);
  }

  return result;
}

uint64_t sub_2187917E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for QueryNewsPlusEngagementDonorProperty(uint64_t a1)
{
  result = qword_280EE1110;
  if (!qword_280EE1110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21879187C(uint64_t a1)
{
  sub_219BE5244();
  if (v1 <= 0x3F)
  {
    sub_2186DD1E8(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2187919B4(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_218791A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a2;
  v25 = a4;
  v9 = sub_219BDBD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EngagementDataController();
  v28 = &off_282A788E0;
  v26[0] = a5;
  type metadata accessor for EngagementDonor(0);
  v13 = swift_allocObject();
  v14 = (v13 + qword_280EDA960);
  *v14 = 0;
  v14[1] = 0;
  *(v13 + qword_280EDA968) = MEMORY[0x277D84F98];
  sub_219BDBD54();
  v15 = sub_219BDBD44();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v18 = (v13 + qword_280EDA958);
  *v18 = v15;
  v18[1] = v17;
  v19 = sub_219BE52E4();
  v20 = (v19 + qword_280EDA960);
  v21 = v25;
  *v20 = a3;
  v20[1] = v21;

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_218791F44(*v22, a6, v19);

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19;
}

uint64_t type metadata accessor for EngagementDonor(uint64_t a1)
{
  result = qword_280EDA948;
  if (!qword_280EDA948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218791C4C(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  _Block_copy(a2);
  v6 = [v5 mostFrequentLocation];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 24);
    v9 = swift_allocObject();
    v9[2] = sub_2196E1828;
    v9[3] = v4;
    v9[4] = v7;
    aBlock[4] = sub_2196E1864;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_29;
    v10 = _Block_copy(aBlock);

    v11 = v7;

    [v8 fetchLocalAreasProvider_];
    _Block_release(v10);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8E748, 0x277D310F0);
    v12 = sub_219BF5904();
    (a2)[2](a2, v12);
  }
}

uint64_t sub_218791E1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218791EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2186C6148(0, &qword_280E8E748, 0x277D310F0);
  v3 = sub_219BF5924();

  v2(v3);
}

uint64_t sub_218791F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE5244();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EngagementDataController();
  v62 = v9;
  v63 = &off_282A788E0;
  v61[0] = a1;
  v10 = *(a3 + qword_280EDA960);
  if (!v10)
  {

    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v11 = v9;
  swift_getObjectType();

  swift_unknownObjectRetain();
  if ((sub_219BE3964() & 1) == 0)
  {
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v53 = v8;
  v12 = a2;
  v13 = *(a2 + 16);
  v14 = qword_280EDA968;
  if (!v13)
  {
    goto LABEL_25;
  }

  v54 = v6;
  v51 = v11;
  v52 = v10;
  v15 = 0;
  v50 = v12;
  v55 = v12 + 32;
  v56 = a3;
  do
  {
    v58 = *(v55 + 16 * v15);
    ObjectType = swift_getObjectType();
    v18 = *(&v58 + 1);
    v19 = *(*(&v58 + 1) + 8);
    swift_unknownObjectRetain();
    v20 = v19(ObjectType, v18);
    v22 = v21;
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a3 + v14);
    v24 = v59;
    *(a3 + v14) = 0x8000000000000000;
    v26 = sub_21870F700(v20, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = 16 * v26;
        if (v25)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_219492600();
        v33 = 16 * v26;
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_218792F08(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_21870F700(v20, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
      v33 = 16 * v31;
      if (v30)
      {
LABEL_5:

        v16 = v59;
        *(v59[7] + v33) = v58;
        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }

    v16 = v59;
    v59[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v16[6] + v33);
    *v34 = v20;
    v34[1] = v22;
    *(v16[7] + v33) = v58;
    v35 = v16[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_28;
    }

    v16[2] = v37;
LABEL_6:
    ++v15;
    a3 = v56;
    *(v56 + v14) = v16;

    swift_endAccess();
    swift_unknownObjectRelease();
  }

  while (v13 != v15);
  v60[0] = MEMORY[0x277D84F90];
  sub_21879340C(0, v13, 0);
  v38 = v60[0];
  *&v58 = v57 + 32;
  v39 = (v50 + 40);
  v40 = v53;
  do
  {
    v41 = *v39;
    v42 = swift_getObjectType();
    v43 = *(v41 + 16);
    swift_unknownObjectRetain();
    v43(v42, v41);
    swift_unknownObjectRelease();
    v60[0] = v38;
    v45 = *(v38 + 16);
    v44 = *(v38 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_21879340C((v44 > 1), v45 + 1, 1);
      v38 = v60[0];
    }

    *(v38 + 16) = v45 + 1;
    (*(v57 + 32))(v38 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45, v40, v54);
    v39 += 2;
    --v13;
  }

  while (v13);
  a3 = v56;
  v11 = v51;
LABEL_25:
  sub_219BE52D4();
  v46 = *__swift_project_boxed_opaque_existential_1(v61, v62);
  v60[3] = v11;
  v60[4] = &off_282A788E0;
  v60[0] = v46;
  v47 = swift_beginAccess();
  v48 = *(a3 + v14);
  MEMORY[0x28223BE20](v47);
  *(&v50 - 2) = v60;

  sub_218793658(sub_21879363C, (&v50 - 4), v48);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v60);
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_218792490()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC3E4();
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_appConfiguration);
    if ([v2 respondsToSelector_])
    {
      [v2 smarterMessagingEnabled];
    }

    v3 = sub_219BDC8C4();

    if (v3)
    {
      LOBYTE(v1) = NFStoreDemoMode() ^ 1;
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    *(v0 + 16) = v1;
  }

  return v1 & 1;
}

char *sub_218792568(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = a2;
    v7 = 0;
    v5 = v19;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_219BF5414();
      v13 = v12;

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v19 + 16) = v15 + 1;
      v16 = v19 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_fetchedRegions) = v5;
  }
}

uint64_t sub_2187926FC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t block_destroy_helper_32(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

void sub_218792E8C(uint64_t a1)
{
  if (!qword_280E8D278)
  {
    sub_2186C709C(255, qword_280EC5440, &protocol descriptor for EngagementDonorProperty, 0);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D278);
    }
  }
}

uint64_t sub_218792F08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_218792E8C(0);
  v33 = v4;
  result = sub_219BF7594();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_2187931B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_218793218(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_2187931B4(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

void *sub_21879340C(void *a1, int64_t a2, char a3)
{
  result = sub_218793218(a1, a2, a3, *v3, &unk_280E8C020, MEMORY[0x277D31930], MEMORY[0x277D31930]);
  *v3 = result;
  return result;
}

uint64_t sub_21879345C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_configuration;
  v4 = sub_219BE5244();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2187934D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_configuration;
  v4 = sub_219BE5244();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21879354C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_configuration;
  v4 = sub_219BE5244();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2187935C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_configuration;
  v4 = sub_219BE5244();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_218793658(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      swift_unknownObjectRetain();
      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      result = swift_unknownObjectRelease();
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218793790(uint64_t *a1, void *a2)
{
  v4 = sub_219BE5244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(ObjectType, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  swift_unknownObjectRetain();
  sub_218793934(v7, sub_218794260, v11);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2187938FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218793934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = sub_219BED174();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE5244();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + 64);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v13 + 32))(v19 + v17, v15, v12);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_218793E50;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_137;
  v22 = _Block_copy(aBlock);

  sub_219BED1A4();
  v32 = MEMORY[0x277D84F90];
  sub_21874E210(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v23 = MEMORY[0x277D85198];
  sub_21874E848(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B2D8(&qword_280E8EFA0, &qword_280E8EFB0, v23);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v11, v8, v22);
  _Block_release(v22);
  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_218793D30()
{
  v1 = sub_219BE5244();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218793E0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_218793E50()
{
  v1 = *(sub_219BE5244() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218793EE4(v3, v0 + v2, v4);
}

uint64_t sub_218793EE4(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_21874E848(0, &qword_280EE60B0, MEMORY[0x277D31940], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_218718690(Strong + 16, v10);

    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_219BE5254();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = sub_219BE52A4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  a3(v6);
  return sub_2187942C0(v6);
}

uint64_t sub_21879405C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218794268(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE52A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187941FC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2187942C0(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(v11, ObjectType, a3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2187941FC(uint64_t a1, uint64_t a2)
{
  sub_218794268(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218794268(uint64_t a1)
{
  if (!qword_280EE60B0)
  {
    sub_219BE52A4();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE60B0);
    }
  }
}

uint64_t sub_2187942C0(uint64_t a1)
{
  sub_218794268(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21879431C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED174();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED1D4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EngagementEvent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v19 = *(v2 + 64);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_218A153EC(a1, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_21952C66C(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_21956C5D0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_14_2;
  v16 = _Block_copy(aBlock);

  sub_219BED1A4();
  v22 = MEMORY[0x277D84F90];
  sub_21874E210(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v17 = MEMORY[0x277D85198];
  sub_21874E848(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B2D8(&qword_280E8EFA0, &qword_280E8EFB0, v17);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}