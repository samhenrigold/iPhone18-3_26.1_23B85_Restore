uint64_t sub_1D6076AA0(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 56) & 4) == 0)
  {
    v8 = *(a1 + 368);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 376);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D6076C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CoverIssueViewLayout;
    v8[1] = &type metadata for CoverIssueViewLayout.Attributes;
    v8[2] = sub_1D5EF9538();
    v8[3] = sub_1D5EF958C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6076CF4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6076C70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6076D50(uint64_t a1)
{
  if (!qword_1EDF02400)
  {
    sub_1D6076DC4(255, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02400);
    }
  }
}

void sub_1D6076DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EF9538();
    v7 = a3(a1, &type metadata for CoverIssueViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for WebEmbedDatastoreProperty(uint64_t a1)
{
  result = qword_1EDF0BB58;
  if (!qword_1EDF0BB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6076ED0(uint64_t a1)
{
  result = type metadata accessor for WebEmbedDataSourceCacheEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D6076F4C()
{
  result = qword_1EDF326B8;
  if (!qword_1EDF326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326B8);
  }

  return result;
}

unint64_t sub_1D6076FA0()
{
  result = qword_1EDF32698;
  if (!qword_1EDF32698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32698);
  }

  return result;
}

uint64_t FormatItemKind.encode(to:)(void *a1)
{
  v182 = a1;
  sub_1D5CB85B4(0, &qword_1EDF027E8, sub_1D5CB861C, &type metadata for FormatItemKind.CodingKeys, MEMORY[0x1E69E6F58]);
  v2 = v1;
  v179 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v180 = &v179 - v4;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v179 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](&v179 - v17, v18);
  MEMORY[0x1EEE9AC00](v20, &v179 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v179 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v179 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v179 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v179 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v179 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v179 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v179 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v64 = &v179 - v63;
  switch(v181[1])
  {
    case 0:
      v65 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v66 = v65[3];
      v67 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v66);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
      (*(*(v68 - 8) + 16))(v64, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v70 = v183;
      sub_1D5D2BEC4(v64, sub_1D60789E8, 0, v66, v67);
      v71 = v64;
      if (v70)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v64);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 1:
      v126 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v127 = v126[3];
      v128 = v126[4];
      __swift_project_boxed_opaque_existential_1(v126, v127);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD98);
      (*(*(v129 - 8) + 16))(v52, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v131 = v183;
      sub_1D5D2BEC4(v52, sub_1D6078A04, 0, v127, v128);
      v71 = v52;
      if (v131)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v52);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 2:
      v102 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v103 = v102[3];
      v104 = v102[4];
      __swift_project_boxed_opaque_existential_1(v102, v103);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD30);
      (*(*(v105 - 8) + 16))(v48, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = v183;
      sub_1D5D2BEC4(v48, sub_1D6078A20, 0, v103, v104);
      v71 = v48;
      if (v107)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v48);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 3:
      v114 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v115 = v114[3];
      v116 = v114[4];
      __swift_project_boxed_opaque_existential_1(v114, v115);
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD18);
      (*(*(v117 - 8) + 16))(v44, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v119 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078A3C, 0, v115, v116);
      if (!v119)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 4:
      v84 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v85 = v84[3];
      v86 = v84[4];
      __swift_project_boxed_opaque_existential_1(v84, v85);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD98);
      (*(*(v87 - 8) + 16))(v40, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v89 = v183;
      sub_1D5D2BEC4(v40, sub_1D6078A58, 0, v85, v86);
      v71 = v40;
      if (v89)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v40);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 5:
      v132 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v133 = v132[3];
      v134 = v132[4];
      __swift_project_boxed_opaque_existential_1(v132, v133);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v135 = sub_1D725BD1C();
      v136 = __swift_project_value_buffer(v135, qword_1EDFFCDE0);
      (*(*(v135 - 8) + 16))(v36, v136, v135);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v137 = v183;
      sub_1D5D2BEC4(v36, sub_1D6078A74, 0, v133, v134);
      v71 = v36;
      if (v137)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v36);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 6:
      v145 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v146 = v145[3];
      v147 = v145[4];
      __swift_project_boxed_opaque_existential_1(v145, v146);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v148 = sub_1D725BD1C();
      v149 = __swift_project_value_buffer(v148, qword_1EDFFCDE0);
      (*(*(v148 - 8) + 16))(v32, v149, v148);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v150 = v183;
      sub_1D5D2BEC4(v32, sub_1D6078A90, 0, v146, v147);
      if (v150)
      {
        sub_1D6079974(v32);
        return __swift_destroy_boxed_opaque_existential_1(v184);
      }

      sub_1D6079974(v32);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 7:
      v120 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v121 = v120[3];
      v122 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v121);
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD80);
      (*(*(v123 - 8) + 16))(v28, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v125 = v183;
      sub_1D5D2BEC4(v28, sub_1D6078AAC, 0, v121, v122);
      v71 = v28;
      if (v125)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v28);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 8:
      v44 = v59;
      v158 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v159 = v158[3];
      v160 = v158[4];
      __swift_project_boxed_opaque_existential_1(v158, v159);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v161 = sub_1D725BD1C();
      v162 = __swift_project_value_buffer(v161, qword_1EDFFCD68);
      (*(*(v161 - 8) + 16))(v44, v162, v161);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v163 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078AC8, 0, v159, v160);
      if (v163)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    case 9:
      v44 = v58;
      v96 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v97 = v96[3];
      v98 = v96[4];
      __swift_project_boxed_opaque_existential_1(v96, v97);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD68);
      (*(*(v99 - 8) + 16))(v44, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v101 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078AE4, 0, v97, v98);
      if (!v101)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 10:
      v44 = v57;
      v152 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v153 = v152[3];
      v154 = v152[4];
      __swift_project_boxed_opaque_existential_1(v152, v153);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v155 = sub_1D725BD1C();
      v156 = __swift_project_value_buffer(v155, qword_1EDFFCD68);
      (*(*(v155 - 8) + 16))(v44, v156, v155);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v157 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B00, 0, v153, v154);
      if (!v157)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 11:
      v44 = v56;
      v78 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v79 = v78[3];
      v80 = v78[4];
      __swift_project_boxed_opaque_existential_1(v78, v79);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD68);
      (*(*(v81 - 8) + 16))(v44, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B1C, 0, v79, v80);
      if (!v83)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 12:
      v44 = v55;
      v90 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v91 = v90[3];
      v92 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v91);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD68);
      (*(*(v93 - 8) + 16))(v44, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v95 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B38, 0, v91, v92);
      if (!v95)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 13:
      v44 = v14;
      v138 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v139 = v138[3];
      v140 = v138[4];
      __swift_project_boxed_opaque_existential_1(v138, v139);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD68);
      (*(*(v141 - 8) + 16))(v14, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v14;
      v144 = v183;
      sub_1D5D2BEC4(v143, sub_1D6078B54, 0, v139, v140);
      if (!v144)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 14:
      v44 = v62;
      v72 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v73 = v72[3];
      v74 = v72[4];
      __swift_project_boxed_opaque_existential_1(v72, v73);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCE80);
      (*(*(v75 - 8) + 16))(v44, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v77 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B70, 0, v73, v74);
      if (!v77)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 15:
      v44 = v61;
      v108 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v109 = v108[3];
      v110 = v108[4];
      __swift_project_boxed_opaque_existential_1(v108, v109);
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCE50);
      (*(*(v111 - 8) + 16))(v44, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v113 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B8C, 0, v109, v110);
      if (v113)
      {
LABEL_65:
        v71 = v44;
LABEL_66:
        sub_1D6079974(v71);
      }

      else
      {
LABEL_72:
        sub_1D6079974(v44);
        __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
LABEL_73:
        sub_1D726473C();
      }

      return __swift_destroy_boxed_opaque_existential_1(v184);
    default:
      v164 = v60;
      v165 = v2;
      v166 = *v181;
      v167 = v182;
      v168 = v181[1];
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D5CB861C();
      v169 = v168;

      sub_1D7264B5C();
      v170 = v167[3];
      v171 = v167[4];
      __swift_project_boxed_opaque_existential_1(v167, v170);
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v172 = sub_1D725BD1C();
      v173 = __swift_project_value_buffer(v172, qword_1EDFFCDC8);
      (*(*(v172 - 8) + 16))(v164, v173, v172);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v174 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v179 - 2) = v166;
      *(&v179 - 1) = v169;
      v176 = v183;
      sub_1D5D2BEC4(v164, sub_1D607996C, (&v179 - 4), v170, v171);
      if (v176)
      {
        sub_1D5CBA0FC(v166, v169);
        sub_1D6079974(v164);
        return (*(v179 + 8))(v180, v165);
      }

      else
      {
        sub_1D6079974(v164);
        LOBYTE(v184[0]) = 0;
        sub_1D60799D0();
        v177 = v180;
        sub_1D726443C();
        v178 = v179;
        v184[0] = v166;
        v184[1] = v169;
        v186 = 1;
        sub_1D6079A24();
        sub_1D726443C();
        sub_1D5CBA0FC(v166, v169);
        return (*(v178 + 8))(v177, v165);
      }
  }
}

unint64_t sub_1D6078BA8(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

void sub_1D6078C38(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6078C98(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6078CFC(uint64_t a1)
{
  v2 = sub_1D5CB861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6078D38(uint64_t a1)
{
  v2 = sub_1D5CB861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6078D74()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6078DD8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D6078E24(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D6078F50(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6078FD8(uint64_t a1)
{
  v2 = sub_1D6079C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6079014(uint64_t a1)
{
  v2 = sub_1D6079C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6079050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D5CB85B4(0, &qword_1EDF19C50, sub_1D6079C70, &type metadata for FormatItemKind.Object.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6079C70();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D6079200(void *a1)
{
  sub_1D5CB85B4(0, &qword_1EDF027E0, sub_1D6079C70, &type metadata for FormatItemKind.Object.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6079C70();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FormatItemKind.hashValue.getter()
{
  v3 = *v0;
  sub_1D7264A0C();
  FormatItemKind.hash(into:)(v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D60793B8()
{
  v3 = *v0;
  sub_1D7264A0C();
  FormatItemKind.hash(into:)(v2);
  return sub_1D7264A5C();
}

uint64_t FormatItemKind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x656C6369747261;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x6575737369;
      break;
    case 2uLL:
      v3 = 0x6465626D45626577;
      break;
    case 3uLL:
      v3 = 0x6172546F69647561;
      break;
    case 4uLL:
      v3 = 6775156;
      break;
    case 5uLL:
      v3 = 0x65726F6373;
      break;
    case 6uLL:
      v3 = 0x676E69646E617473;
      break;
    case 7uLL:
      v3 = 0x74656B63617262;
      break;
    case 8uLL:
      v3 = 0x65726F6353786F62;
      break;
    case 9uLL:
      v3 = 0x726F6353656E696CLL;
      break;
    case 0xAuLL:
      v3 = 0x65527972756A6E69;
      break;
    case 0xBuLL:
      v3 = 0x6579616C5079656BLL;
      break;
    case 0xCuLL:
      v3 = 0x656C7A7A7570;
      break;
    case 0xDuLL:
      v3 = 0x7954656C7A7A7570;
      break;
    case 0xEuLL:
      v3 = 0x7453656C7A7A7570;
      break;
    case 0xFuLL:
      v3 = 0x657069636572;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1D5CBA110(v1, v2);
  return v3;
}

uint64_t static FormatItemKind.< infix(_:_:)()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D60796B4()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6079758()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6079810()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D60798C8()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6079974(uint64_t a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D60799D0()
{
  result = qword_1EDF11B90;
  if (!qword_1EDF11B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B90);
  }

  return result;
}

unint64_t sub_1D6079A24()
{
  result = qword_1EDF11B88;
  if (!qword_1EDF11B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B88);
  }

  return result;
}

unint64_t sub_1D6079A78(uint64_t a1)
{
  result = sub_1D6079AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6079AA0()
{
  result = qword_1EC883048;
  if (!qword_1EC883048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883048);
  }

  return result;
}

unint64_t sub_1D6079AF4(void *a1)
{
  a1[1] = sub_1D5B4CCC0();
  a1[2] = sub_1D5B4C410();
  result = sub_1D5B4CB84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6079B70()
{
  result = qword_1EC883050;
  if (!qword_1EC883050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883050);
  }

  return result;
}

unint64_t sub_1D6079BC8()
{
  result = qword_1EC883058;
  if (!qword_1EC883058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883058);
  }

  return result;
}

unint64_t sub_1D6079C1C()
{
  result = qword_1EDF326C0;
  if (!qword_1EDF326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326C0);
  }

  return result;
}

unint64_t sub_1D6079C70()
{
  result = qword_1EDF326B0;
  if (!qword_1EDF326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326B0);
  }

  return result;
}

unint64_t sub_1D6079CD8()
{
  result = qword_1EC883060;
  if (!qword_1EC883060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883060);
  }

  return result;
}

unint64_t sub_1D6079D30()
{
  result = qword_1EDF326A0;
  if (!qword_1EDF326A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326A0);
  }

  return result;
}

unint64_t sub_1D6079D88()
{
  result = qword_1EDF326A8;
  if (!qword_1EDF326A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326A8);
  }

  return result;
}

id SharingArticleTextActivityItemSource.__allocating_init(headline:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D6079EEC(v4);
  v6 = &v3[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
  *v6 = v5;
  *(v6 + 1) = v7;
  v10.receiver = v3;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id SharingArticleTextActivityItemSource.init(headline:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D6079EEC(v4);
  v6 = &v1[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
  *v6 = v5;
  *(v6 + 1) = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id sub_1D6079EEC(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D726207C();

    v5 = [a1 sourceName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D726207C();
      v9 = v8;

      MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
      MEMORY[0x1DA6F9910](v7, v9);

      return v4;
    }
  }

  result = [a1 title];
  if (result || (result = [a1 sourceName]) != 0)
  {
    v11 = result;
    v12 = sub_1D726207C();

    return v12;
  }

  return result;
}

uint64_t SharingArticleTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

void SharingArticleTextActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

LABEL_17:
    v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
    v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v24;
    *(a2 + 8) = v23;

    return;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      v13 = sub_1D726207C();
      v15 = v14;
      if (v13 == sub_1D726207C() && v15 == v16)
      {
        goto LABEL_14;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
LABEL_15:
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return;
      }

      v19 = sub_1D726207C();
      v21 = v20;
      if (v19 == sub_1D726207C() && v21 == v22)
      {
LABEL_14:

        goto LABEL_15;
      }

      v47 = sub_1D72646CC();

      if (v47)
      {
        goto LABEL_15;
      }

      v48 = sub_1D726207C();
      v50 = v49;
      if (v48 == sub_1D726207C() && v50 == v51)
      {
        goto LABEL_39;
      }

      v52 = sub_1D72646CC();

      if (v52)
      {
        goto LABEL_44;
      }

      v53 = sub_1D726207C();
      v55 = v54;
      if (v53 == sub_1D726207C() && v55 == v56)
      {
LABEL_39:

LABEL_44:
        *(a2 + 24) = MEMORY[0x1E69E6158];
        *a2 = 0;
        *(a2 + 8) = 0xE000000000000000;
        return;
      }

      v57 = sub_1D72646CC();

      if (v57)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }
  }

  v25 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v59 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
  v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27 == 0xE000000000000000;
  }

  if (!v28 && (sub_1D72646CC() & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v25;
    sub_1D6D76D20(v26, v27, 0x2D656C6369747261, 0xED0000656C746974, isUniquelyReferenced_nonNull_native);
    v59 = v25;
  }

  v30 = OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline;
  v31 = [*(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline) shortExcerpt];
  if (v31)
  {

    v32 = [*(v2 + v30) shortExcerpt];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1D726207C();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    sub_1D6D60518(v34, v36, 0x2D656C6369747261, 0xEF7972616D6D7573);
  }

  v37 = objc_opt_self();
  v38 = sub_1D7261D2C();

  v58 = 0;
  v39 = [v37 archivedDataWithRootObject:v38 requiringSecureCoding:1 error:&v58];

  v40 = v58;
  if (v39)
  {
    v41 = sub_1D725867C();
    v43 = v42;

    v44 = MEMORY[0x1E6969080];
  }

  else
  {
    v45 = v40;
    v46 = sub_1D725829C();

    swift_willThrow();
    v41 = 0;
    v43 = 0;
    v44 = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v41;
  *(a2 + 8) = v43;
  *(a2 + 24) = v44;
}

Swift::String __swiftcall SharingArticleTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SharingArticleTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D607A9A8(uint64_t a1)
{
  v2 = 0xD00000000000001DLL;
  v3 = sub_1D726203C();
  v4 = v3;
  if (a1)
  {
    v5 = sub_1D726207C();
    v7 = v6;
    if (v5 == sub_1D726207C() && v7 == v8)
    {

      return v2;
    }

    v10 = sub_1D72646CC();

    if (v10)
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

id _s8NewsFeed36SharingArticleTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline;
  result = [*(v0 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline) sourceName];
  if (result)
  {
    v3 = result;
    sub_1D726207C();

    v4 = sub_1D726213C();

    v5 = [*(v0 + v1) title];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D726207C();
      v9 = v8;

      MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v7, v9);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

__n128 sub_1D607AC1C(char **a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6;
  v8 = *a1;
  sub_1D5F58038(v3, v4, v5, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D5D095A0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D5D095A0((v9 > 1), v10 + 1, 1, v8);
  }

  *&v18 = v3;
  *(&v18 + 1) = v4;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  *&v20 = 0;
  WORD4(v20) = 0;
  BYTE10(v20) = 1;
  sub_1D5FD8134(&v18);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[128 * v10];
  v12 = v18;
  v13 = v19;
  v14 = v21;
  *(v11 + 4) = v20;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  result = v22;
  v16 = v23;
  v17 = v24[0];
  *(v11 + 137) = *(v24 + 9);
  *(v11 + 7) = v16;
  *(v11 + 8) = v17;
  *(v11 + 6) = result;
  *a1 = v8;
  return result;
}

void sub_1D607AD58()
{
  if (*(v0 + 24) >= 3u)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    v4 = *v0;
    v8[0] = v4;
    v8[1] = v3;
    v8[2] = v2;
    v9 = 10;
    sub_1D5F58038(v4, v3, v2, 3);
    v5 = sub_1D703E0C8(v8, &v9);
    if (!v1)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v3;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }
}

uint64_t _s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v37[0] = *a1;
  v37[1] = v3;
  v37[2] = v5;
  v38 = v6;
  v39 = v8;
  v40 = v7;
  v41 = v9;
  v42 = v10;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v10 == 2)
      {
        v33 = v4;
        v34 = v3;
        v35 = v5;
        v36 = BYTE2(v5);
        v29 = v8;
        v30 = v7;
        v32 = BYTE2(v9);
        v31 = v9;
        v11 = _s8NewsFeed18FormatGroupBindingV4FontO2eeoiySbAE_AEtFZ_0(&v33, &v29, a3);
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    if (v10 != 3)
    {
      v18 = v9;
      v19 = v10;

      LOBYTE(v10) = v19;
      v9 = v18;
      goto LABEL_21;
    }

    if (v4 != v8 || v3 != v7)
    {
      v14 = v9;
      v15 = sub_1D72646CC();
      v9 = v14;
      if ((v15 & 1) == 0)
      {
        sub_1D5F58038(v8, v7, v14, 3);
        v20 = v4;
        v21 = v3;
        v9 = v5;
        LOBYTE(v10) = 3;
        goto LABEL_22;
      }
    }

    v16 = v9;
    sub_1D5F58038(v8, v7, v9, 3);
    sub_1D5F58038(v4, v3, v5, 3);
    sub_1D5F58038(v8, v7, v16, 3);
    sub_1D5F58038(v4, v3, v5, 3);
    v17 = sub_1D6341C50(v5, v16);
    sub_1D5D281E8(v37, sub_1D607B85C);
    sub_1D5F57FEC(v8, v7, v16, 3);
    sub_1D5F57FEC(v4, v3, v5, 3);
    if ((v17 & 1) == 0)
    {
LABEL_24:
      v12 = 0;
      return v12 & 1;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    a3.n128_u64[0] = v4;
    if (*&v4 != *&v8)
    {
LABEL_23:
      sub_1D5D281E8(v37, sub_1D607B85C);
      goto LABEL_24;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      v13 = v9 & 0xFF00;
      sub_1D5D281E8(v37, sub_1D607B85C);
      if (v13 != 3072)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((v9 & 0xFF00) == 0xC00)
      {
        goto LABEL_23;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9)
        {
          goto LABEL_23;
        }

        a3.n128_u64[0] = v3;
        if (*&v3 != *&v7)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v33) = BYTE1(v5);
      LOBYTE(v29) = BYTE1(v9);
      v23 = FormatFontScalingStyle.rawValue.getter(a3);
      v25 = v24;
      if (v23 == FormatFontScalingStyle.rawValue.getter(v26) && v25 == v27)
      {

        sub_1D5D281E8(v37, sub_1D607B85C);
        v12 = 1;
        return v12 & 1;
      }

      v28 = sub_1D72646CC();

      sub_1D5D281E8(v37, sub_1D607B85C);
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v12 = 1;
    return v12 & 1;
  }

  if (v10)
  {
LABEL_21:
    v20 = v8;
    v21 = v7;
LABEL_22:
    sub_1D5F58038(v20, v21, v9, v10);
    goto LABEL_23;
  }

  v33 = v4;
  v34 = v3;
  v35 = v5;
  v36 = BYTE2(v5);
  v29 = v8;
  v30 = v7;
  v31 = v9;
  v32 = BYTE2(v9);
  v11 = _s8NewsFeed16FormatTagBindingV4FontO2eeoiySbAE_AEtFZ_0(&v33, &v29, a3);
LABEL_8:
  v12 = v11;
  sub_1D5D281E8(v37, sub_1D607B85C);
  return v12 & 1;
}

void sub_1D607B228(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  if (*(v1 + 24) >= 3u)
  {
    v36 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v37[0] = *v1;
    v37[1] = v19;
    v37[2] = v18;
    v38 = 10;

    v21 = sub_1D703E0C8(v37, &v38);
    if (!v3)
    {
      v35 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v36 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D281E8(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v27 = v20;
          v27[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v37[0] = v9[2];
        v23 = v35;

        FormatOptionValue.type.getter(v24, &v38);
        if ((sub_1D6183C84(v38, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v29 = v28;
          v31 = *v9;
          v30 = v9[1];
          v37[0] = v9[2];

          FormatOptionValue.type.getter(v32, &v38);
          v33 = v38;
          *v29 = v31;
          *(v29 + 8) = v30;
          *(v29 + 16) = v33;
          *(v29 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v25 = type metadata accessor for FormatOption;
          v26 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v36 + 56))(v17, v22, 1, v5);
      v25 = sub_1D5E04C00;
      v26 = v17;
LABEL_11:
      sub_1D5D281E8(v26, v25);
    }
  }
}

unint64_t sub_1D607B5F8(uint64_t a1)
{
  result = sub_1D607B620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607B620()
{
  result = qword_1EC883080;
  if (!qword_1EC883080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883080);
  }

  return result;
}

unint64_t sub_1D607B674(void *a1)
{
  a1[1] = sub_1D607B6AC();
  a1[2] = sub_1D607B700();
  result = sub_1D607B754();
  a1[3] = result;
  return result;
}

unint64_t sub_1D607B6AC()
{
  result = qword_1EDF10D08;
  if (!qword_1EDF10D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D08);
  }

  return result;
}

unint64_t sub_1D607B700()
{
  result = qword_1EDF10D10;
  if (!qword_1EDF10D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D10);
  }

  return result;
}

unint64_t sub_1D607B754()
{
  result = qword_1EC883088;
  if (!qword_1EC883088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883088);
  }

  return result;
}

uint64_t sub_1D607B7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D607B7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1D607B85C()
{
  if (!qword_1EC883090)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883090);
    }
  }
}

NewsFeed::FormatPatternAnchor_optional __swiftcall FormatPatternAnchor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatPatternAnchor.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 6)
  {
    v3 = 0x69526D6F74746F62;
  }

  v4 = 0x7466654C706F74;
  if (v1 != 4)
  {
    v4 = 0x7468676952706F74;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1952867692;
  if (v1 != 2)
  {
    v5 = 0x7468676972;
  }

  if (*v0)
  {
    v2 = 0x6D6F74746F62;
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

unint64_t sub_1D607BA14()
{
  result = qword_1EDF0FAF0;
  if (!qword_1EDF0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAF0);
  }

  return result;
}

void sub_1D607BA90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xEA00000000007466;
  v6 = 0x654C6D6F74746F62;
  if (v2 != 6)
  {
    v6 = 0x69526D6F74746F62;
    v5 = 0xEB00000000746867;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7466654C706F74;
  if (v2 != 4)
  {
    v8 = 0x7468676952706F74;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1952867692;
  if (v2 != 2)
  {
    v10 = 0x7468676972;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D6F74746F62;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D607BB84(uint64_t a1)
{
  *(a1 + 8) = sub_1D607BBB4();
  result = sub_1D607BC08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D607BBB4()
{
  result = qword_1EC883098;
  if (!qword_1EC883098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883098);
  }

  return result;
}

unint64_t sub_1D607BC08()
{
  result = qword_1EDF0FAE8;
  if (!qword_1EDF0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAE8);
  }

  return result;
}

unint64_t sub_1D607BC5C(uint64_t a1)
{
  result = sub_1D607BC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607BC84()
{
  result = qword_1EDF0FAD8;
  if (!qword_1EDF0FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAD8);
  }

  return result;
}

unint64_t sub_1D607BCD8(void *a1)
{
  a1[1] = sub_1D607BD10();
  a1[2] = sub_1D607BD64();
  result = sub_1D607BA14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D607BD10()
{
  result = qword_1EDF0FAE0;
  if (!qword_1EDF0FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAE0);
  }

  return result;
}

unint64_t sub_1D607BD64()
{
  result = qword_1EDF0FAF8;
  if (!qword_1EDF0FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAF8);
  }

  return result;
}

uint64_t FormatFlexBoxNodeLayout.display.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
}

double sub_1D607BE90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.display.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.direction.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
}

double sub_1D607BFF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.direction.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.wrap.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
}

double sub_1D607C150(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.wrap.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.justifyContent.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3;
}

double sub_1D607C2B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.justifyContent.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.alignContent.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v3;
}

double sub_1D607C410(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 80) = v2;
  *(v4 + 88) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.alignContent.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.alignItems.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3;
}

double sub_1D607C570(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.alignItems.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.rowGap.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1D607C6D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *a2 = v4;
  a2[1] = v5;
}

double sub_1D607C724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 112) = v2;
  *(v4 + 120) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.rowGap.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 112) = *a1;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.columnGap.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1D607C898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  *a2 = v4;
  a2[1] = v5;
}

double sub_1D607C8EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 128) = v2;
  *(v4 + 136) = v3;

  return result;
}

double FormatFlexBoxNodeLayout.columnGap.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 128) = *a1;

  return result;
}

uint64_t FormatFlexBoxNodeLayout.integral.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_1D5E04CC4(v3, v4, v5);
}

uint64_t sub_1D607CA70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  v6 = *(v3 + 160);
  v7 = *(v3 + 168);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1D5E04CC4(v4, v5, v6);
}

double sub_1D607CAD4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 144);
  v8 = *(v6 + 152);
  v9 = *(v6 + 160);
  sub_1D5E04CC4(v2, v3, v4);
  *(v6 + 144) = v2;
  *(v6 + 152) = v3;
  *(v6 + 160) = v4;
  *(v6 + 168) = v5;

  sub_1D5D2F2C4(v7, v8, v9);

  return result;
}

double FormatFlexBoxNodeLayout.integral.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  swift_beginAccess();
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 168) = v5;
  sub_1D5D2F2C4(v6, v7, v8);

  return result;
}

uint64_t FormatFlexBoxNodeLayout.__allocating_init(display:direction:wrap:justifyContent:alignContent:alignItems:rowGap:columnGap:integral:)(char *a1, char *a2, char *a3, char *a4, char *a5, char *a6, _OWORD *a7, _OWORD *a8, uint64_t *a9)
{
  v15 = swift_allocObject();
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *a2;
  v19 = *(a2 + 1);
  v20 = *a3;
  v21 = *(a3 + 1);
  v28 = v20;
  v29 = *a4;
  v22 = *(a4 + 1);
  v23 = *a5;
  v24 = *(a5 + 1);
  v30 = v23;
  v31 = *a6;
  v25 = *(a6 + 1);
  v33 = a9[1];
  v34 = *a9;
  v32 = *(a9 + 16);
  v26 = a9[3];
  swift_beginAccess();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  swift_beginAccess();
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  swift_beginAccess();
  *(v15 + 48) = v28;
  *(v15 + 56) = v21;
  swift_beginAccess();
  *(v15 + 64) = v29;
  *(v15 + 72) = v22;
  swift_beginAccess();
  *(v15 + 80) = v30;
  *(v15 + 88) = v24;
  swift_beginAccess();
  *(v15 + 96) = v31;
  *(v15 + 104) = v25;
  swift_beginAccess();
  *(v15 + 112) = *a7;
  swift_beginAccess();
  *(v15 + 128) = *a8;
  swift_beginAccess();
  *(v15 + 144) = v34;
  *(v15 + 152) = v33;
  *(v15 + 160) = v32;
  *(v15 + 168) = v26;
  return v15;
}

uint64_t FormatFlexBoxNodeLayout.init(display:direction:wrap:justifyContent:alignContent:alignItems:rowGap:columnGap:integral:)(char *a1, char *a2, char *a3, char *a4, char *a5, char *a6, _OWORD *a7, _OWORD *a8, uint64_t *a9)
{
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *a4;
  v17 = *(a4 + 1);
  v18 = *a5;
  v22 = *a6;
  v20 = *(a5 + 1);
  v21 = *(a6 + 1);
  v25 = a9[1];
  v26 = *a9;
  v24 = *(a9 + 16);
  v23 = a9[3];
  swift_beginAccess();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  swift_beginAccess();
  *(v9 + 32) = v12;
  *(v9 + 40) = v13;
  swift_beginAccess();
  *(v9 + 48) = v14;
  *(v9 + 56) = v15;
  swift_beginAccess();
  *(v9 + 64) = v16;
  *(v9 + 72) = v17;
  swift_beginAccess();
  *(v9 + 80) = v18;
  *(v9 + 88) = v20;
  swift_beginAccess();
  *(v9 + 96) = v22;
  *(v9 + 104) = v21;
  swift_beginAccess();
  *(v9 + 112) = *a7;
  swift_beginAccess();
  *(v9 + 128) = *a8;
  swift_beginAccess();
  *(v9 + 144) = v26;
  *(v9 + 152) = v25;
  *(v9 + 160) = v24;
  *(v9 + 168) = v23;
  return v9;
}

uint64_t sub_1D607CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a1;
  v103 = sub_1D725A12C();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v5);
  v99 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v100 = &v83 - v9;
  v10 = sub_1D725A26C();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v96 = &v83 - v15;
  v16 = sub_1D725A1AC();
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v91 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v92 = &v83 - v21;
  v22 = sub_1D7259B9C();
  v89 = *(v22 - 8);
  v90 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v88 = &v83 - v27;
  v86 = sub_1D725A0BC();
  v28 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v29);
  v84 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v85 = &v83 - v33;
  v34 = sub_1D7259F8C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v83 - v41;
  sub_1D7259DEC();
  swift_beginAccess();
  v43 = *(v3 + 16);
  v44 = *(v3 + 24);

  sub_1D5F9F5B4(v43, v44, v119);

  v45 = MEMORY[0x1E69D7190];
  if (!v119[0])
  {
    v45 = MEMORY[0x1E69D7188];
  }

  (*(v35 + 104))(v38, *v45, v34);
  (*(v35 + 32))(v42, v38, v34);
  sub_1D7259DBC();
  swift_beginAccess();

  v46 = v104;
  sub_1D5FBB060();

  v47 = v84;
  v48 = v86;
  (*(v28 + 104))(v84, **(&unk_1E84CDBF0 + v118[0]), v86);
  (*(v28 + 32))(v85, v47, v48);
  sub_1D7259DDC();
  swift_beginAccess();
  v49 = *(v3 + 56);
  v50 = *(v3 + 48);

  sub_1D5F9F37C(v50, v49, v117);

  v52 = v89;
  v51 = v90;
  v53 = v87;
  (*(v89 + 104))(v87, **(&unk_1E84CDC68 + v117[0]), v90);
  (*(v52 + 32))(v88, v53, v51);
  sub_1D7259D9C();
  swift_beginAccess();
  v54 = *(v3 + 88);
  v55 = *(v3 + 80);

  sub_1D5F9F364(v55, v54, v116);

  v57 = v93;
  v56 = v94;
  v58 = v91;
  (*(v93 + 104))(v91, **(&unk_1E84CDC10 + v116[0]), v94);
  (*(v57 + 32))(v92, v58, v56);
  sub_1D7259D6C();
  swift_beginAccess();
  v59 = *(v3 + 72);
  v60 = *(v3 + 64);

  sub_1D5F9F34C(v60, v59, v115);

  v62 = v97;
  v61 = v98;
  v63 = v95;
  (*(v97 + 104))(v95, **(&unk_1E84CDC80 + v115[0]), v98);
  (*(v62 + 32))(v96, v63, v61);
  sub_1D7259D7C();
  swift_beginAccess();

  sub_1D5FBB060();

  v64 = v101;
  v65 = v99;
  v66 = v103;
  (*(v101 + 104))(v99, **(&unk_1E84CDC48 + v114[0]), v103);
  (*(v64 + 32))(v100, v65, v66);
  v103 = a2;
  sub_1D7259D5C();
  swift_beginAccess();

  sub_1D5FBB05C();

  v67 = v113[0];
  v109[0] = v46;
  v68 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v69 = v68();
  v70 = v102;
  sub_1D5E02AFC(v69, v67);

  if (v70)
  {
    v74 = sub_1D7259DFC();
    return (*(*(v74 - 8) + 8))(v103, v74);
  }

  else
  {
    sub_1D7259DAC();
    swift_beginAccess();

    v71 = v104;
    sub_1D5FBB05C();

    v72 = v109[0];
    v110 = v71;
    v73 = v68();
    sub_1D5E02AFC(v73, v72);

    sub_1D7259DCC();
    swift_beginAccess();
    v75 = *(v3 + 144);
    v76 = *(v3 + 152);
    v77 = *(v3 + 160);
    v78 = *(v3 + 168);
    sub_1D5E04CC4(v75, v76, v77);

    sub_1D5F9F0B4(v75, v76, v77, v78, &v110);
    sub_1D5D2F2C4(v75, v76, v77);

    v79 = v110;
    v80 = v111;
    v81 = v112;
    v106 = v110;
    v107 = v111;
    v108 = v112;
    sub_1D725A7EC();
    FormatBoolean.value(contextLayoutOptions:)(v105);

    sub_1D5D2F2C4(v79, v80, v81);
    return sub_1D7259D8C();
  }
}

uint64_t FormatFlexBoxNodeLayout.deinit()
{

  sub_1D5D2F2C4(*(v0 + 144), *(v0 + 152), *(v0 + 160));

  return v0;
}

uint64_t FormatFlexBoxNodeLayout.__deallocating_deinit()
{
  FormatFlexBoxNodeLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D607DB74(uint64_t a1)
{
  result = sub_1D607DC68(&qword_1EC8830A0, &protocol conformance descriptor for FormatFlexBoxNodeLayout);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D607DBDC(void *a1)
{
  a1[1] = sub_1D607DC68(&qword_1EDF27568, &protocol conformance descriptor for FormatFlexBoxNodeLayout);
  a1[2] = sub_1D607DC68(&qword_1EDF0D508, &protocol conformance descriptor for FormatFlexBoxNodeLayout);
  result = sub_1D607DC68(&qword_1EC8830A8, &protocol conformance descriptor for FormatFlexBoxNodeLayout);
  a1[3] = result;
  return result;
}

uint64_t sub_1D607DC68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFlexBoxNodeLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D607DCA8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6664E38(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void PuzzleHistoryInfo.asDictionary.getter()
{
  v1 = v0;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1E69E7CC8];
  sub_1D5B76E3C(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1D725889C();
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        v26 = MEMORY[0x1E69E6530];
        *&v25 = v12;
        sub_1D5B7C390(&v25, v24);
        v13 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v13;
        sub_1D5BAFB24(v24, 0xD000000000000012, 0x80000001D73C7FA0, isUniquelyReferenced_nonNull_native);
        (*(v7 + 8))(v10, v6);
        v11 = v23;
        v27 = v23;
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v5);
  v11 = MEMORY[0x1E69E7CC8];
LABEL_7:
  v15 = type metadata accessor for PuzzleHistoryInfo(0);
  v16 = v1 + *(v15 + 20);
  if (*(v16 + 8))
  {
    sub_1D607E0F0(0xD000000000000011, 0x80000001D73C7F80, &v25);
    sub_1D5EBD03C(&v25);
  }

  else
  {
    v17 = *v16;
    v26 = MEMORY[0x1E69E6530];
    *&v25 = v17;
    sub_1D5B7C390(&v25, v24);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v11;
    sub_1D5BAFB24(v24, 0xD000000000000011, 0x80000001D73C7F80, v18);
    v27 = v23;
  }

  v19 = v1 + *(v15 + 24);
  if (*(v19 + 8))
  {
    sub_1D607E0F0(0x726F635374736562, 0xE900000000000065, &v25);
    sub_1D5EBD03C(&v25);
  }

  else
  {
    v20 = *v19;
    v26 = MEMORY[0x1E69E6530];
    *&v25 = v20;
    sub_1D5B7C390(&v25, v24);
    v21 = v27;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v21;
    sub_1D5BAFB24(v24, 0x726F635374736562, 0xE900000000000065, v22);
  }
}

uint64_t type metadata accessor for PuzzleHistoryInfo(uint64_t a1)
{
  result = qword_1EC8830B0;
  if (!qword_1EC8830B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D607E0F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D5C06BE0();
      v10 = v13;
    }

    sub_1D5B7C390((*(v10 + 56) + 32 * v8), a3);
    sub_1D67135D8(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607E1D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D7DE64();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1D6713938(v6, v8, v10);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D607E284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D7E384();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = sub_1D725891C();
    v20 = *(v12 - 8);
    v13.n128_f64[0] = (*(v20 + 32))(a3, v11 + *(v20 + 72) * v8, v12);
    sub_1D6713AE8(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = sub_1D725891C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D607E49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1D5B69D90(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    sub_1D607F0BC(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1D607E620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D801A8();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D6713788(v6, v8, v10);
  *v3 = v8;
  return v9;
}

double sub_1D607E6CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D80514();
      v10 = v16;
    }

    v11 = *(v10 + 56) + 104 * v8;
    v12 = *(v11 + 80);
    *(a3 + 64) = *(v11 + 64);
    *(a3 + 80) = v12;
    *(a3 + 96) = *(v11 + 96);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    v14 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v14;
    sub_1D6713DE8(v8, v10, v14);
    *v4 = v10;
  }

  else
  {
    *(a3 + 96) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D607E840@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D6D62B40(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D8285C();
      v9 = v12;
    }

    sub_1D5F42574(*(v9 + 48) + 40 * v7);
    sub_1D5B7C390((*(v9 + 56) + 32 * v7), a2);
    sub_1D67147F0(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607E8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D82E2C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D6716D80();
  *v3 = v8;
  return v9;
}

uint64_t sub_1D607E9BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5C5E034(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D82FEC();
    v8 = v12;
  }

  v9 = v5;
  v10 = *(*(v8 + 56) + 8 * v5);
  sub_1D6714994(v9, v8, v7);
  *v2 = v8;
  return v10;
}

double sub_1D607EB94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    *&v17[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86324();
      v10 = *&v17[0];
    }

    memmove(a3, (*(v10 + 56) + (v8 << 7)), 0x80uLL);
    sub_1D6715300(v8, v10, v11);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_1D607F0A4(v17);
    v13 = v21;
    a3[4] = v20;
    a3[5] = v13;
    v14 = v23;
    a3[6] = v22;
    a3[7] = v14;
    v15 = v17[1];
    *a3 = v17[0];
    a3[1] = v15;
    result = *&v18;
    v16 = v19;
    a3[2] = v18;
    a3[3] = v16;
  }

  return result;
}

double sub_1D607EC64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v7 = sub_1D6D63460(a1, a2, a3 & 1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v14 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86750();
      v11 = v14;
    }

    sub_1D607F09C(*(*(v11 + 48) + 24 * v9), *(*(v11 + 48) + 24 * v9 + 8));
    sub_1D5B7C390((*(v11 + 56) + 32 * v9), a4);
    sub_1D67154B0(v9, v11, v12);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1D607ED14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86934();
      v10 = v13;
    }

    sub_1D5B63F14((*(v10 + 56) + 40 * v8), a3);
    sub_1D67156D0(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D607EE00@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = sub_1D5B7C598(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = sub_1D7263FCC();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607EF3C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = a2(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

void sub_1D607F008(uint64_t a1)
{
  sub_1D5B5B2A0(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF3C7C0, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1D607F0A4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D607F0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D607F15C(uint64_t a1)
{
  result = sub_1D607F184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607F184()
{
  result = qword_1EC8830C0;
  if (!qword_1EC8830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8830C0);
  }

  return result;
}

void sub_1D607F1D8()
{
  if (!qword_1EDF1B3C0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B3C0);
    }
  }
}

uint64_t sub_1D607F228(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D607F1D8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D607F294()
{
  result = qword_1EDF125C8;
  if (!qword_1EDF125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF125C8);
  }

  return result;
}

void sub_1D607F370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = v5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v53 = *(a1 + 16);
  v55 = *(a1 + 24);
  v56 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *a3;
  v12 = *(a3 + 8);
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v17 = *(a3 + 32);
  v16 = *(a3 + 40);
  v18 = *(a3 + 48);
  v57 = *(a3 + 56);
  v19 = *a5;
  v20 = [*a1 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  v24.value._countAndFlagsBits = v21;
  v24.value._object = v23;
  ArticleThumbnailView.prepareForReuse(identifier:)(v24);
  v25 = v18;

  [a2 setFrame_];
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
    *&v60 = v19;
    v26 = v19;
    sub_1D6D4BBDC(a2, v18, &v60, v16);
  }

  if ((v11 & 1) == 0)
  {
    v58[0] = v9;
    goto LABEL_8;
  }

  v27 = a4;
  if (!sub_1D5E46CD0(1, a4) || UIAccessibilityIsReduceMotionEnabled())
  {
    v58[0] = v56;
LABEL_8:
    *&v60 = v13;
    *(&v60 + 1) = v12;
    v61 = v15;
    v62 = *&v14;
    v63 = v17;
    v64 = v16;
    v65 = v18;
    v66 = v57;
    v59 = v19;
    sub_1D607F8F0(v58, a2, &v60, &v59);
    return;
  }

  sub_1D5B68374(v6 + 152, &v60);
  v28 = v63;
  v51 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v62);
  v29 = [v9 identifier];
  v50 = sub_1D726207C();
  v52 = v25;
  v31 = v30;

  v32 = type metadata accessor for LayeredMediaLoader();
  v33 = swift_allocObject();
  v34 = type metadata accessor for LayeredMediaParser();
  v35 = swift_allocObject();
  v35[2] = v50;
  v35[3] = v31;
  v35[4] = v53;
  v35[5] = v55;
  v33[5] = v34;
  v33[6] = &protocol witness table for LayeredMediaParser;
  v33[2] = v35;
  v58[3] = v32;
  v58[4] = &protocol witness table for LayeredMediaLoader;
  v58[0] = v33;
  if (sub_1D5E46CD0(0, v27))
  {
    v36 = &unk_1F5111360;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = v28;
  v38 = *(v28 + 8);

  v38(v58, v36, v51, v37);

  __swift_destroy_boxed_opaque_existential_1(v58);
  v39 = __swift_destroy_boxed_opaque_existential_1(&v60);
  MEMORY[0x1EEE9AC00](v39, v40);
  type metadata accessor for LayeredMediaView(0);
  sub_1D725BDCC();
  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = v9;
  *(v41 + 32) = v10;
  *(v41 + 40) = v53;
  *(v41 + 48) = v55;
  *(v41 + 56) = v19;
  *(v41 + 64) = v6;
  *(v41 + 72) = v13;
  *(v41 + 80) = v12;
  *(v41 + 88) = v15;
  *(v41 + 96) = v14;
  *(v41 + 104) = v17;
  *(v41 + 112) = v16;
  *(v41 + 120) = v52;
  *(v41 + 128) = v57;
  v54 = v19;
  v42 = a2;
  swift_unknownObjectRetain();

  v43 = sub_1D725B92C();
  sub_1D725BA7C();

  v44 = sub_1D725B92C();
  sub_1D725BACC();

  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v45 = sub_1D726308C();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v56;
  *(v47 + 32) = v42;
  *(v47 + 40) = v13;
  *(v47 + 48) = v12;
  *(v47 + 56) = v15;
  *(v47 + 64) = v14;
  *(v47 + 72) = v17;
  *(v47 + 80) = v16;
  *(v47 + 88) = v52;
  *(v47 + 96) = v57;
  *(v47 + 104) = v19;
  v48 = v54;
  v49 = v42;
  swift_unknownObjectRetain();
  sub_1D725BB6C();
}

void sub_1D607F8F0(void **a1, char *a2, _OWORD *a3, void **a4)
{
  sub_1D6081298(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ImageRequestOptions(0);
  MEMORY[0x1EEE9AC00](v84, v13);
  v15 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v77 - v18;
  v20 = *a1;
  v21 = a3[1];
  v92[0] = *a3;
  v92[1] = v21;
  v93[0] = a3[2];
  *(v93 + 9) = *(a3 + 41);
  v22 = *a4;
  v23 = [swift_unknownObjectRetain() identifier];
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8];
  if (v27)
  {
    if (v24 == *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier] && v27 == v26)
    {

      goto LABEL_13;
    }

    v29 = sub_1D72646CC();

    if (v29)
    {
LABEL_13:
      v79 = v15;
      v80 = v12;
      v30 = v4;
      v81 = v19;
      v83 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView];
      sub_1D725FBBC();
      v82 = a2;
      v31 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
      v32 = [v31 subviews];
      sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
      v33 = sub_1D726267C();

      if (v33 >> 62)
      {
        v34 = sub_1D7263BFC();
        if (!v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_22;
        }
      }

      if (v34 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v34; ++i)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1DA6FB460](i, v33);
        }

        else
        {
          v36 = *(v33 + 8 * i + 32);
        }

        v37 = v36;
        [v36 removeFromSuperview];
      }

LABEL_22:

      [v31 setHidden_];
      v38 = v83;
      [v83 setHidden_];
      v39 = v82;
      v40 = *&v82[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView];
      *&v82[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView] = 0;

      if (v22)
      {
        v41 = __swift_project_boxed_opaque_existential_1(v30 + 7, v30[10]);
        v42 = *(*v41 + 16);
        v43 = *(*v41 + 24);
        v44 = *(*v41 + 32);
        v78 = *(*v41 + 40);
        v45 = swift_allocObject();
        v45[2] = v22;
        v45[3] = v42;
        v45[4] = v43;
        v46 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v87 = sub_1D60814F4;
        v88 = v45;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v86 = sub_1D6E0CD34;
        *(&v86 + 1) = &block_descriptor_44;
        v47 = _Block_copy(&aBlock);
        v48 = v22;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v78;
        v53 = v49;
        v54 = v50;
        v55 = [v46 initWithDynamicProvider_];
        _Block_release(v47);

        [v38 setBackgroundColor_];

        v39 = v82;
      }

      v56 = [objc_opt_self() mainScreen];
      [v56 scale];
      v58 = v57;

      v59 = [v39 traitCollection];
      v60 = *(v84 + 24);
      v61 = sub_1D725CB5C();
      v62 = *(*(v61 - 8) + 56);
      v63 = v81 + v60;
      v64 = v81;
      v62(v63, 1, 1, v61);
      *v64 = v58;
      v64[1] = v59;
      v65 = v79;
      sub_1D60812F0(v64, v79);
      v66 = v80;
      v62(v80, 1, 1, v61);
      v87 = 0;
      v86 = 0u;
      aBlock = 0u;
      v67 = sub_1D6EB4CF8(v20, v92, v65, v66, &aBlock);
      v68 = v67;
      if (v67)
      {
        v69 = type metadata accessor for ThumbnailProcessorRequest(0);
        v67 = sub_1D60814A4(qword_1EDF23E18, type metadata accessor for ThumbnailProcessorRequest, &protocol conformance descriptor for ThumbnailProcessorRequest);
      }

      else
      {
        v69 = 0;
        *&v86 = 0;
        *(&aBlock + 1) = 0;
      }

      *&aBlock = v68;
      *(&v86 + 1) = v69;
      v87 = v67;
      sub_1D6081354(&aBlock, &v89, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
      if (v90)
      {
        sub_1D5B63F14(&v89, v91);
        __swift_project_boxed_opaque_existential_1(v30 + 12, v30[15]);
        v70 = sub_1D725D0BC();
        if (!v70)
        {
          sub_1D725FBBC();
          v72 = [objc_opt_self() areAnimationsEnabled];
          v73 = swift_allocObject();
          swift_weakInit();
          v74 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v75 = swift_allocObject();
          *(v75 + 16) = v74;
          *(v75 + 24) = v73;
          *(v75 + 32) = 0;
          *(v75 + 40) = 0;
          *(v75 + 48) = v72;

          sub_1D725FB6C();

          __swift_destroy_boxed_opaque_existential_1(v91);
          sub_1D6081448(v64);

LABEL_33:
          sub_1D60813D8(&aBlock, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          v76 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
          if (v39[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion])
          {
            sub_1D725CF4C();
            sub_1D725CF3C();
            sub_1D60814A4(&qword_1EC8830C8, type metadata accessor for ArticleThumbnailView, &protocol conformance descriptor for ArticleThumbnailView);
            sub_1D725CF2C();

            v39[v76] = 0;
          }

          return;
        }

        v71 = v70;
        sub_1D725FBBC();

        __swift_destroy_boxed_opaque_existential_1(v91);
      }

      else
      {
        sub_1D60813D8(&v89, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        sub_1D725FBBC();
      }

      sub_1D6081448(v64);
      goto LABEL_33;
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

double sub_1D60801B8(uint64_t a1, uint64_t a2, void *a3, char *a4, _OWORD *a5, void *a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v15 = a3;
    v11 = a5[1];
    v13[0] = *a5;
    v13[1] = v11;
    v14[0] = a5[2];
    *(v14 + 9) = *(a5 + 41);
    v12 = a6;
    sub_1D607F8F0(&v15, a4, v13, &v12);
  }

  return result;
}

uint64_t sub_1D608026C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E62F8];
  sub_1D5C3973C(0, &qword_1EDF3C8E8, &type metadata for LayeredMediaLayer, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v4 = sub_1D725B92C();
  sub_1D5C3973C(0, &qword_1EDF04C00, &type metadata for LayeredMediaLayerRenderable, v3);
  sub_1D725BA8C();

  v5 = sub_1D725A95C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = a2;
  *(v6 + 24) = v7;
  type metadata accessor for LayeredMediaView(0);

  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D60803E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  sub_1D5C3973C(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6080488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, double *a12)
{
  v18 = a11;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = [a6 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  v24 = *&a5[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8];
  if (!v24 || (v21 == *&a5[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier] ? (v25 = v24 == v23) : (v25 = 0), !v25 && (sub_1D72646CC() & 1) == 0))
  {
    v38 = a10;

    v39 = a5;
LABEL_23:

    return;
  }

  v80 = a10;

  v79 = a5;
  v26 = a5;

  v78 = a4;

  v27 = [a9 superview];
  v81 = v26;
  v28 = *&v26[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
  if (v27)
  {
    v29 = v27;
    sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
    v30 = v28;
    v31 = sub_1D726370C();

    if (v31)
    {
LABEL_20:
      if (a10)
      {
        v42 = __swift_project_boxed_opaque_existential_1((v18 + 56), *(v18 + 80));
        v43 = *(*v42 + 16);
        v44 = *(*v42 + 24);
        v45 = *(*v42 + 32);
        v77 = *(*v42 + 40);
        v46 = swift_allocObject();
        v46[2] = v80;
        v46[3] = v43;
        v46[4] = v44;
        v47 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v86 = sub_1D5E46A8C;
        v87 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v83 = 1107296256;
        v84 = sub_1D6E0CD34;
        v85 = &block_descriptor_18;
        v48 = _Block_copy(&aBlock);
        v49 = v80;
        v50 = v43;
        v51 = v44;
        v52 = v45;
        v53 = v77;
        v54 = v50;
        v55 = v51;
        v56 = [v47 initWithDynamicProvider_];
        _Block_release(v48);

        [a9 setBackgroundColor_];
      }

      [a9 setClipsToBounds_];
      sub_1D726327C();
      [a9 setFrame_];
      v57 = objc_opt_self();
      v58 = [v57 mainScreen];
      [v58 nativeBounds];
      v60 = v59;
      v62 = v61;

      [v81 bounds];
      v64 = v63;
      v66 = v65;
      v67 = [v57 mainScreen];
      [v67 scale];
      v69 = v68;

      aBlock = v60;
      v83 = v62;
      v84 = v64;
      v85 = v66;
      v86 = v69;
      v70 = [a9 setAlpha_];
      MEMORY[0x1EEE9AC00](v70, v71);
      sub_1D725BDCC();
      v72 = swift_allocObject();
      v72[2] = a9;
      v72[3] = sub_1D5DF743C;
      v72[4] = v19;

      v73 = a9;
      v74 = sub_1D725B92C();
      type metadata accessor for ArticleThumbnailViewRenderer();
      sub_1D725BAAC();

      v75 = swift_allocObject();
      *(v75 + 16) = a3;
      *(v75 + 24) = v78;

      v76 = sub_1D725B92C();
      sub_1D725BACC();

      sub_1D7041968();

      a5 = v79;
      v38 = v80;
      goto LABEL_23;
    }
  }

  v32 = [v28 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
  v33 = sub_1D726267C();

  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_11;
    }

LABEL_19:

    [v28 addSubview_];
    [v28 setHidden_];
    [*&v81[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView] setHidden_];
    v40 = *&v81[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView];
    *&v81[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView] = a9;

    v41 = a9;
    v18 = a11;
    goto LABEL_20;
  }

  v34 = sub_1D7263BFC();
  if (!v34)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v34 >= 1)
  {
    for (i = 0; i != v34; ++i)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA6FB460](i, v33);
      }

      else
      {
        v36 = *(v33 + 8 * i + 32);
      }

      v37 = v36;
      [v36 removeFromSuperview];
    }

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1D6080B50(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1D725CFDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v11;
  v20 = *(a3 + 32);
  swift_beginAccess();
  sub_1D6081354(a1 + 16, &v16, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  if (v17)
  {
    sub_1D5B63F14(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D725CFBC();
    v12 = sub_1D725E62C();
    (*(v7 + 8))(v10, v6);
    v13 = v12 ^ 1;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1D60813D8(&v16, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
    v13 = 0;
  }

  return LayeredMediaViewRenderer.render(view:options:forceAsync:)(a2, v19, v13 & 1);
}

id sub_1D6080D10(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = sub_1D725CFDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D6081354(a2 + 16, &v22, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  if (v23)
  {
    sub_1D5B63F14(&v22, aBlock);
    v24 = v7;
    __swift_project_boxed_opaque_existential_1(aBlock, v19);
    sub_1D725CFCC();
    v12 = sub_1D725E62C();
    (*(v8 + 8))(v11, v24);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((v12 & 1) == 0)
    {
      return [a3 setAlpha_];
    }
  }

  else
  {
    sub_1D60813D8(&v22, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v20 = sub_1D5E46C18;
  v21 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  v19 = &block_descriptor_25_0;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  [v14 animateWithDuration:v16 animations:0.15];
  _Block_release(v16);
  return a4();
}

double sub_1D6080FB0(uint64_t a1)
{
  if (qword_1EDF11618 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDFFC608;
  v2 = sub_1D7262EBC();
  sub_1D5B678C8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D725C30C("Failed to display thumbnail with error %{public}@", 49, 2, &dword_1D5B42000, v1, v2, v3);

  return result;
}

uint64_t sub_1D6081108()
{
  sub_1D60813D8((v0 + 2), &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return swift_deallocClassInstance();
}

void sub_1D6081298(uint64_t a1)
{
  if (!qword_1EDF3B7E8)
  {
    sub_1D725CB5C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B7E8);
    }
  }
}

uint64_t sub_1D60812F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRequestOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6081354(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5B678C8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D60813D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B678C8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6081448(uint64_t a1)
{
  v2 = type metadata accessor for ImageRequestOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60814A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6081500(uint64_t a1, uint64_t a2)
{
  sub_1D6084754(0);
  v5 = v4;
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v57 = &v53 - v18;
  sub_1D6085198(0);
  v62 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v56 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v54 = a2;
  v55 = &v53 - v28;
  v64 = a1;
  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = *(a2 + 16);
  }

  v68 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  v60 = v30;
  v61 = v29;
  if (v31)
  {
    v33 = 0;
    v58 = v54 + 32;
    while (v29 != v33)
    {
      v34 = v59;
      result = sub_1D5BE3FA8(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v33, v59, sub_1D6084754);
      if (v30 == v33)
      {
        goto LABEL_21;
      }

      v65 = v33 + 1;
      v35 = *(v58 + 8 * v33);
      v36 = *(v62 + 48);
      sub_1D5BDA9D4(v34, v22, sub_1D6084754);
      *&v22[v36] = v35;
      v37 = *&v22[*(v5 + 48)];
      v38 = v22[*(v5 + 64)];
      sub_1D5BE3FA8(v22, v15, type metadata accessor for DebugGroupLayoutKey);
      *&v15[*(v5 + 48)] = v37;
      v15[*(v5 + 64)] = v38;
      v39 = v31;
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);

      v67 = v11[*(v5 + 64)];
      sub_1D5C3978C(0, &qword_1EC883140, &type metadata for DebugPersonalizationInspectionGroupProvider.Kind);
      swift_allocObject();
      sub_1D725BB1C();
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);
      v40 = *&v11[*(v5 + 48)];

      sub_1D6C76CB4(v40, v35);
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D6C6DDB0();

      v41 = sub_1D725B92C();
      sub_1D725B91C();

      v31 = v39;
      sub_1D6085238(v15, sub_1D6084754);
      sub_1D6085238(v22, sub_1D6085198);
      sub_1D7263E9C();
      sub_1D7263EDC();
      v30 = v60;
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v33 = v65;
      v42 = v39 == v65;
      v29 = v61;
      if (v42)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_10:
    if (v29 <= v30)
    {
      return v68;
    }

    v43 = v55;
    v58 = v54 + 32;
    while (v31 < v29)
    {
      result = sub_1D5BE3FA8(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v31, v57, sub_1D6084754);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_23;
      }

      if (v30 == v31)
      {
        sub_1D6085238(v57, sub_1D6084754);
        return v68;
      }

      if (v31 >= v30)
      {
        goto LABEL_24;
      }

      v59 = v31 + 1;
      v44 = *(v58 + 8 * v31);
      v65 = v31;
      v45 = v62;
      v46 = *(v62 + 48);
      v47 = v56;
      sub_1D5BDA9D4(v57, v56, sub_1D6084754);
      *(v47 + v46) = v44;
      sub_1D5BDA9D4(v47, v43, sub_1D6085198);
      v48 = *(v43 + *(v5 + 48));
      LOBYTE(v46) = *(v43 + *(v5 + 64));
      v49 = *(v43 + *(v45 + 48));
      sub_1D5BE3FA8(v43, v15, type metadata accessor for DebugGroupLayoutKey);
      *&v15[*(v5 + 48)] = v48;
      v15[*(v5 + 64)] = v46;
      v29 = v61;
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);

      v66 = v11[*(v5 + 64)];
      sub_1D5C3978C(0, &qword_1EC883140, &type metadata for DebugPersonalizationInspectionGroupProvider.Kind);
      swift_allocObject();
      sub_1D725BB1C();
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);
      v50 = *&v11[*(v5 + 48)];

      sub_1D6C76CB4(v50, v49);
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D6C6DDB0();

      v51 = sub_1D725B92C();
      sub_1D725B91C();

      v52 = v65;
      sub_1D6085238(v15, sub_1D6084754);
      sub_1D6085238(v43, sub_1D6085198);
      sub_1D7263E9C();
      sub_1D7263EDC();
      v30 = v60;
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v31 = v52 + 1;
      if (v59 == v29)
      {
        return v68;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t DebugPersonalizationInspectionGroupProvider.__allocating_init(cloudContext:debugPersonalizationGroupLayoutKeyProvider:feedPersonalizer:headlineService:inventory:tagService:webEmbedDataSourceService:history:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D5B63F14(a2, v16 + 24);
  *(v16 + 64) = a3;
  type metadata accessor for DebugInspectHeadlineService();
  v17 = swift_allocObject();
  sub_1D5B63F14(a4, v17 + 16);
  *(v16 + 72) = v17;
  v18 = *(a5 + 16);
  *(v16 + 80) = *a5;
  *(v16 + 96) = v18;
  *(v16 + 112) = *(a5 + 32);
  *(v16 + 128) = *(a5 + 48);
  sub_1D5B63F14(a6, v16 + 136);
  sub_1D5B63F14(a7, v16 + 176);
  sub_1D5B63F14(a8, v16 + 216);
  return v16;
}

uint64_t DebugPersonalizationInspectionGroupProvider.init(cloudContext:debugPersonalizationGroupLayoutKeyProvider:feedPersonalizer:headlineService:inventory:tagService:webEmbedDataSourceService:history:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  *(v8 + 16) = a1;
  sub_1D5B63F14(a2, v8 + 24);
  *(v8 + 64) = a3;
  type metadata accessor for DebugInspectHeadlineService();
  v15 = swift_allocObject();
  sub_1D5B63F14(a4, v15 + 16);
  *(v8 + 72) = v15;
  v16 = *(a5 + 16);
  *(v8 + 80) = *a5;
  *(v8 + 96) = v16;
  *(v8 + 112) = *(a5 + 32);
  *(v8 + 128) = *(a5 + 48);
  sub_1D5B63F14(a6, v8 + 136);
  sub_1D5B63F14(a7, v8 + 176);
  sub_1D5B63F14(a8, v8 + 216);
  return v8;
}

uint64_t sub_1D6081E1C()
{
  if (*v0)
  {
    return 0x2D666F2D74736562;
  }

  else
  {
    return 0x756F792D726F66;
  }
}

uint64_t DebugPersonalizationInspectionGroupProvider.inspectionGroups()()
{
  v1[61] = v0;
  v2 = sub_1D725895C();
  v1[62] = v2;
  v1[63] = *(v2 - 8);
  v1[64] = swift_task_alloc();
  v3 = type metadata accessor for DebugGroupLayoutKey(0);
  v1[65] = v3;
  v1[66] = *(v3 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  sub_1D6084754(0);
  v1[69] = v4;
  v1[70] = *(v4 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1D60847D0(0, qword_1EDF403D0, type metadata accessor for GroupLayoutContext, MEMORY[0x1E69E6720]);
  v1[75] = swift_task_alloc();
  v6 = type metadata accessor for GroupLayoutContext(0);
  v1[76] = v6;
  v1[77] = *(v6 - 8);
  v1[78] = swift_task_alloc();
  sub_1D60847D0(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v5);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  sub_1D60847D0(0, &qword_1EC8830D8, sub_1D6084834, v5);
  v1[81] = swift_task_alloc();
  sub_1D6084834(0);
  v1[82] = v7;
  v1[83] = *(v7 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  sub_1D60847D0(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, v5);
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v1[88] = v8;
  v1[89] = *(v8 - 8);
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6082294, 0, 0);
}

uint64_t sub_1D6082294()
{
  v1 = *(v0 + 488);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = (v4 & 0xFFFFFFFFFFFFFF8);
    if (v4 >> 62)
    {
LABEL_86:
      v7 = sub_1D7263BFC();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = (*(v0 + 712) + 48);
    if (!v7)
    {
      v136 = MEMORY[0x1E69E7CC0];
      goto LABEL_34;
    }

    v8 = 0;
    v9 = *(v0 + 728);
    v136 = MEMORY[0x1E69E7CC0];
    v139 = v5 & 0xC000000000000001;
    v127 = v5;
    v129 = v7;
    v132 = v6;
    while (2)
    {
      v10 = v8;
      while (1)
      {
        if (v139)
        {
          v12 = MEMORY[0x1DA6FB460](v10, v5);
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v10 >= v6[2])
          {
            goto LABEL_82;
          }

          v12 = *(v5 + 8 * v10 + 32);

          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }
        }

        v13 = *(v0 + 704);
        v14 = *(v0 + 696);
        sub_1D60849C0(v12 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v14, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
        if ((*v143)(v14, 1, v13) == 1)
        {
          v11 = *(v0 + 696);

          sub_1D5BD55AC(v11, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
          v6 = v132;
          goto LABEL_8;
        }

        sub_1D5BDA9D4(*(v0 + 696), *(v0 + 728), type metadata accessor for GroupLayoutBindingContext);
        v15 = v9[4];
        v16 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v15);
        v17 = *((*(v16 + 16))(v15, v16) + 16);

        if (!v17)
        {
          v24 = *(v0 + 728);

          sub_1D6085238(v24, type metadata accessor for GroupLayoutBindingContext);
          v6 = v132;
          goto LABEL_8;
        }

        v18 = v9[4];
        v19 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v18);
        (*(v19 + 88))(v18, v19);
        v20 = sub_1D726230C();

        v21 = *(v0 + 728);
        if (v20)
        {
          break;
        }

        v22 = v9[4];
        v23 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v22);
        (*(v23 + 88))(v22, v23);
        LOBYTE(v22) = sub_1D726230C();

        sub_1D6085238(v21, type metadata accessor for GroupLayoutBindingContext);
        if (v22)
        {
          goto LABEL_22;
        }

        v5 = v127;
        v6 = v132;
LABEL_8:
        ++v10;
        if (v8 == v129)
        {
          goto LABEL_34;
        }
      }

      sub_1D6085238(*(v0 + 728), type metadata accessor for GroupLayoutBindingContext);
LABEL_22:
      v6 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_1D6991BE4(0, v136[2] + 1, 1, v136);
      }

      v26 = v136[2];
      v25 = v136[3];
      if (v26 >= v25 >> 1)
      {
        v136 = sub_1D6991BE4((v25 > 1), v26 + 1, 1, v136);
      }

      v136[2] = v26 + 1;
      v27 = &v136[2 * v26];
      v27[4] = v12;
      *(v27 + 40) = (v20 ^ 1) & 1;
      v5 = v127;
      if (v8 != v129)
      {
        continue;
      }

      break;
    }

LABEL_34:

    v33 = v136;
    v6 = MEMORY[0x1E69E7CC0];
    v133 = v136[2];
    if (v133)
    {
      v34 = 0;
      v35 = *(v0 + 664);
      v121 = *(v0 + 640);
      v122 = *(v0 + 656);
      v36 = *(v0 + 528);
      v120 = (*(v0 + 616) + 48);
      v130 = (v36 + 56);
      v128 = (v36 + 48);
      v123 = v35;
      v125 = (v35 + 48);
      v126 = (v35 + 56);
      v37 = v136 + 5;
      v114 = *(v0 + 520);
      v115 = *(v0 + 608);
      v38 = qword_1EDF3ECD8;
      do
      {
        if (v34 >= v33[2])
        {
          goto LABEL_83;
        }

        v39 = *(v37 - 1);
        v140 = *v37;
        sub_1D608489C(v39 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, v0 + 312);
        if (*(v0 + 336))
        {
          v40 = *(v0 + 704);
          v41 = *(v0 + 688);
          sub_1D5B63F14((v0 + 312), v0 + 272);
          sub_1D60849C0(v39 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v41, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
          if ((*v143)(v41, 1, v40) == 1)
          {
            v42 = *(v0 + 688);
            __swift_destroy_boxed_opaque_existential_1((v0 + 272));
            v43 = type metadata accessor for GroupLayoutBindingContext;
          }

          else
          {
            v44 = *(v0 + 608);
            v45 = *(v0 + 600);
            sub_1D5BDA9D4(*(v0 + 688), *(v0 + 720), type metadata accessor for GroupLayoutBindingContext);
            v38 = qword_1EDF403D0;
            sub_1D60849C0(v39 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, v45, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
            v46 = (*v120)(v45, 1, v44);
            v47 = *(v0 + 720);
            if (v46 != 1)
            {
              v56 = *(v0 + 640);
              v57 = *(v0 + 624);
              v117 = v56;
              v118 = *(v0 + 520);
              sub_1D5BDA9D4(*(v0 + 600), v57, type metadata accessor for GroupLayoutContext);
              sub_1D5B68374(v0 + 272, (v121 + 2));
              sub_1D5BE3FA8(v47, v56 + *(v114 + 24), type metadata accessor for GroupLayoutBindingContext);

              sub_1D7259EAC();
              v116 = v47;
              v58 = v56 + *(v114 + 28);
              sub_1D7259F4C();
              v59 = v115[5];
              v60 = sub_1D7259CFC();
              (*(*(v60 - 8) + 16))(&v58[v59], v57 + v59, v60);
              v119 = v6;
              v61 = *(v57 + v115[10]);
              sub_1D5BE3FA8(v57 + v115[6], &v58[v115[6]], type metadata accessor for FeedLayoutSolverOptions);
              v62 = *(v57 + v115[7]);
              v63 = *(v57 + v115[8]);
              v64 = *(v57 + v115[9]);
              v65 = *(v57 + v115[11]);
              v66 = *(v57 + v115[12]);
              *&v58[v115[10]] = v61;
              *&v58[v115[7]] = v62;
              *&v58[v115[8]] = v63;
              v58[v115[9]] = v64;
              v58[v115[11]] = v65;
              *&v58[v115[12]] = v66;
              v67 = v121[5];
              v68 = v121[6];
              __swift_project_boxed_opaque_existential_1(v121 + 2, v67);
              v6 = v119;

              v69 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(v67, v68);
              v71 = v70;

              sub_1D6085238(v57, type metadata accessor for GroupLayoutContext);
              sub_1D6085238(v116, type metadata accessor for GroupLayoutBindingContext);
              __swift_destroy_boxed_opaque_existential_1((v0 + 272));
              *v117 = v69;
              v121[1] = v71;
              (*v130)(v117, 0, 1, v118);
              goto LABEL_47;
            }

            v42 = *(v0 + 600);
            sub_1D6085238(*(v0 + 720), type metadata accessor for GroupLayoutBindingContext);
            __swift_destroy_boxed_opaque_existential_1((v0 + 272));
            v43 = type metadata accessor for GroupLayoutContext;
          }

          sub_1D5BD55AC(v42, v38, v43);
        }

        else
        {
          sub_1D5BFB704(v0 + 312, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
        }

        (*v130)(*(v0 + 640), 1, 1, *(v0 + 520));
LABEL_47:
        v48 = *(v0 + 632);
        v49 = *(v0 + 520);
        sub_1D608492C(*(v0 + 640), v48);
        v50 = 1;
        if ((*v128)(v48, 1, v49) != 1)
        {
          v51 = *(v0 + 648);
          v52 = *(v122 + 48);
          sub_1D5BDA9D4(*(v0 + 632), v51, type metadata accessor for DebugGroupLayoutKey);
          v50 = 0;
          *(v51 + v52) = v140;
        }

        v5 = *(v0 + 656);
        v53 = *(v0 + 648);
        (*v126)(v53, v50, 1, v5);
        if ((*v125)(v53, 1, v5) == 1)
        {
          sub_1D5BD55AC(*(v0 + 648), &qword_1EC8830D8, sub_1D6084834);
          v33 = v136;
        }

        else
        {
          sub_1D5BDA9D4(*(v0 + 648), *(v0 + 680), sub_1D6084834);
          v33 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D69919AC(0, v6[2] + 1, 1, v6);
          }

          v5 = v6[2];
          v54 = v6[3];
          if (v5 >= v54 >> 1)
          {
            v6 = sub_1D69919AC((v54 > 1), v5 + 1, 1, v6);
          }

          v55 = *(v0 + 680);
          v6[2] = v5 + 1;
          sub_1D5BDA9D4(v55, v6 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v5, sub_1D6084834);
        }

        v38 = qword_1EDF3ECD8;
        ++v34;
        v37 += 16;
      }

      while (v133 != v34);
    }

    v72 = v6[2];
    if (v72)
    {
      v73 = *(v0 + 664);
      v137 = *(v0 + 560);
      v141 = *(v0 + 656);
      v134 = *(v0 + 552);
      v147 = MEMORY[0x1E69E7CC0];
      sub_1D6998868(0, v72, 0);
      v74 = 0;
      v75 = v147;
      v145 = v73;
      v131 = v6 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      while (v74 < v6[2])
      {
        v76 = v6;
        v77 = *(v0 + 672);
        v78 = *(v0 + 592);
        v79 = *(v0 + 488);
        sub_1D5BE3FA8(&v131[*(v145 + 72) * v74], v77, sub_1D6084834);
        v5 = *(v134 + 48);
        v80 = *(v134 + 64);
        *(v78 + v5) = sub_1D60841C8(v78, v77, *(v77 + *(v141 + 48)), v79);
        *(v78 + v80) = v81 & 1;
        sub_1D6085238(v77, sub_1D6084834);
        v83 = *(v147 + 16);
        v82 = *(v147 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1D6998868((v82 > 1), v83 + 1, 1);
        }

        v84 = *(v0 + 592);
        ++v74;
        *(v147 + 16) = v83 + 1;
        sub_1D5BDA9D4(v84, v147 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v83, sub_1D6084754);
        v6 = v76;
        if (v72 == v74)
        {

          goto LABEL_64;
        }
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_64:
    *(v0 + 736) = v75;
    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    *(v0 + 744) = qword_1EC9BAD28;
    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    *(v0 + 752) = v85;
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1D7273AE0;
    v87 = *(v75 + 16);
    v88 = MEMORY[0x1E69E65A8];
    *(v86 + 56) = MEMORY[0x1E69E6530];
    *(v86 + 64) = v88;
    *(v86 + 32) = v87;
    sub_1D7262EDC();
    sub_1D725C30C("Gathered %lu personalization inspection groups", v113);

    v89 = MEMORY[0x1E69E7CC0];
    if (v87)
    {
      v90 = *(v0 + 560);
      v138 = *(v0 + 528);
      v142 = *(v0 + 552);
      v148 = MEMORY[0x1E69E7CC0];
      sub_1D6998818(0, v87, 0);
      v5 = v148;
      v91 = v75 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v135 = *(v90 + 72);
      v124 = v0;
      do
      {
        v146 = v87;
        v92 = *(v0 + 584);
        v93 = *(v0 + 576);
        v94 = *(v0 + 568);
        v95 = *(v0 + 544);
        sub_1D5BE3FA8(v91, v92, sub_1D6084754);
        sub_1D5BE3FA8(v92, v93, sub_1D6084754);
        v96 = *(v142 + 48);
        v97 = *(v93 + v96);
        v98 = v5;
        v99 = *(v142 + 64);
        v100 = *(v93 + v99);
        sub_1D5BDA9D4(v93, v94, type metadata accessor for DebugGroupLayoutKey);
        *(v94 + v96) = v97;
        *(v94 + v99) = v100;
        v5 = v98;
        sub_1D5BE3FA8(v94, v95, type metadata accessor for DebugGroupLayoutKey);
        sub_1D6085238(v94, sub_1D6084754);
        sub_1D6085238(v92, sub_1D6084754);
        v102 = *(v98 + 16);
        v101 = *(v98 + 24);
        v6 = (v102 + 1);
        if (v102 >= v101 >> 1)
        {
          sub_1D6998818((v101 > 1), v102 + 1, 1);
          v5 = v98;
        }

        v0 = v124;
        v103 = *(v124 + 544);
        *(v5 + 16) = v6;
        sub_1D5BDA9D4(v103, v5 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v102, type metadata accessor for DebugGroupLayoutKey);
        v91 += v135;
        v87 = v146 - 1;
      }

      while (v146 != 1);
      v89 = MEMORY[0x1E69E7CC0];
      v104 = *(v5 + 16);
      if (v104)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v104 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v104)
      {
LABEL_72:
        v105 = v0;
        v106 = *(v0 + 528);
        v149 = v89;

        sub_1D7263ECC();
        v107 = 0;
        v108 = v5 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        while (v107 < *(v5 + 16))
        {
          v109 = *(v105 + 536);
          v0 = v107 + 1;
          sub_1D5BE3FA8(v108 + *(v106 + 72) * v107, v109, type metadata accessor for DebugGroupLayoutKey);
          sub_1D68D8814(v109);
          sub_1D6085238(v109, type metadata accessor for DebugGroupLayoutKey);
          sub_1D7263E9C();
          v6 = *(v149 + 16);
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          v107 = v0;
          if (v104 == v0)
          {

            v110 = v149;
            v0 = v105;
            goto LABEL_78;
          }
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v110 = MEMORY[0x1E69E7CC0];
LABEL_78:
    sub_1D5C3978C(0, &qword_1EC8830F0, &type metadata for DebugInspectHeadlineCandidateFetch);
    *(v0 + 464) = v110;
    v111 = sub_1D725B92C();
    sub_1D6084A40(0);
    sub_1D6084AA8();
    *(v0 + 760) = sub_1D725BA3C();

    v112 = swift_task_alloc();
    *(v0 + 768) = v112;
    *v112 = v0;
    v112[1] = sub_1D60834C8;

    return MEMORY[0x1EEE44EE0](v0 + 456);
  }

  else
  {
    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC9BAD28;
    v29 = sub_1D7262EBC();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D725C30C("Failed to get personalization inspection groups due to missing group layout key provider", 88, 2, &dword_1D5B42000, v28, v29, MEMORY[0x1E69E7CC0]);
    v144 = sub_1D605C2D8(v30);

    v31 = *(v0 + 8);

    return v31(v144);
  }
}

uint64_t sub_1D60834C8()
{
  *(*v1 + 776) = v0;

  if (v0)
  {

    v2 = sub_1D6083D48;
  }

  else
  {
    v2 = sub_1D608360C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D608360C()
{
  v1 = v0[57];
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D69987C8(0, v2, 0);
    v3 = v13;
    v4 = *(v13 + 16);
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v13 + 24);

      if (v4 >= v7 >> 1)
      {
        sub_1D69987C8((v7 > 1), v4 + 1, 1);
      }

      *(v13 + 16) = v4 + 1;
      *(v13 + 8 * v4 + 32) = v6;
      v5 += 24;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[92];
  sub_1D6084B00(0);
  v9 = sub_1D6081500(v8, v3);

  v0[60] = v9;
  v10 = sub_1D725B92C();
  sub_1D60847D0(0, &qword_1EC883118, sub_1D6084B00, MEMORY[0x1E69E62F8]);
  sub_1D6084B94();
  v0[98] = sub_1D725BA3C();

  v11 = swift_task_alloc();
  v0[99] = v11;
  *v11 = v0;
  v11[1] = sub_1D6083824;

  return MEMORY[0x1EEE44EE0](v0 + 56);
}

uint64_t sub_1D6083824()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_1D6083F84;
  }

  else
  {

    v2 = sub_1D6083940;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6083940()
{
  v35 = v0;
  result = *(v0 + 448);
  v32 = *(result + 16);
  if (v32)
  {
    v2 = 0;
    v3 = result + 32;
    v30 = (*(v0 + 504) + 8);
    v4 = MEMORY[0x1E69E7CC8];
    v31 = *(v0 + 448);
    while (v2 < *(result + 16))
    {
      v5 = *(v0 + 512);
      v6 = *(v0 + 496);
      v7 = *(v3 + 16);
      *(v0 + 16) = *v3;
      *(v0 + 32) = v7;
      v9 = *(v3 + 48);
      v8 = *(v3 + 64);
      v10 = *(v3 + 32);
      *(v0 + 96) = *(v3 + 80);
      *(v0 + 64) = v9;
      *(v0 + 80) = v8;
      *(v0 + 48) = v10;
      ++v2;
      v33 = 0;
      v34 = 0xE000000000000000;
      if (*(v0 + 16))
      {
        v11 = 0x2D666F2D74736562;
      }

      else
      {
        v11 = 0x756F792D726F66;
      }

      if (*(v0 + 16))
      {
        v12 = 0xEE00656C646E7562;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      sub_1D5BE3FA8(v0 + 16, v0 + 104, sub_1D6084B34);
      MEMORY[0x1DA6F9910](v11, v12);

      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      sub_1D725894C();
      v13 = sub_1D725893C();
      v15 = v14;
      (*v30)(v5, v6);
      MEMORY[0x1DA6F9910](v13, v15);

      v17 = v33;
      v16 = v34;
      *(v0 + 376) = &type metadata for DebugInspection;
      *(v0 + 384) = sub_1D6084C1C();
      v18 = swift_allocObject();
      *(v0 + 352) = v18;
      v19 = *(v0 + 40);
      v20 = *(v0 + 72);
      v18[3] = *(v0 + 56);
      v18[4] = v20;
      v18[5] = *(v0 + 88);
      v18[1] = *(v0 + 24);
      v18[2] = v19;
      sub_1D5B63F14((v0 + 352), v0 + 392);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      v22 = *(v0 + 416);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 392, v22);
      v24 = *(v22 - 8);
      v25 = swift_task_alloc();
      (*(v24 + 16))(v25, v23, v22);
      *(v0 + 192) = *v25;
      v26 = v25[4];
      v28 = v25[1];
      v27 = v25[2];
      *(v0 + 240) = v25[3];
      *(v0 + 256) = v26;
      *(v0 + 208) = v28;
      *(v0 + 224) = v27;
      sub_1D6084C70((v0 + 192), v17, v16, isUniquelyReferenced_nonNull_native, &v33);
      __swift_destroy_boxed_opaque_existential_1((v0 + 392));

      result = v31;
      v4 = v33;
      v3 += 88;
      if (v32 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_13:

    v29 = *(v0 + 8);

    return v29(v4);
  }

  return result;
}

uint64_t sub_1D6083D48()
{
  v1 = v0[97];
  v2 = v0[93];
  v3 = sub_1D7262EBC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v0[59] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v5 = v0[54];
  v6 = v0[55];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1D725C30C("Failed to get personalization inspection groups with error=%@", 61, 2, &dword_1D5B42000, v2, v3, v4);

  v9 = sub_1D605C2D8(MEMORY[0x1E69E7CC0]);

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6083F84()
{

  v1 = v0[100];
  v2 = v0[93];
  v3 = sub_1D7262EBC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v0[59] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v5 = v0[54];
  v6 = v0[55];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1D725C30C("Failed to get personalization inspection groups with error=%@", 61, 2, &dword_1D5B42000, v2, v3, v4);

  v9 = sub_1D605C2D8(MEMORY[0x1E69E7CC0]);

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D60841C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D6084834(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - v22;
  sub_1D5BE3FA8(a2, &v45 - v22, type metadata accessor for DebugGroupLayoutKey);
  v47 = v9;
  v23[*(v9 + 48)] = a3 & 1;
  sub_1D5BE3FA8(v23, v19, sub_1D6084834);
  sub_1D5BDA9D4(v19, a1, type metadata accessor for DebugGroupLayoutKey);
  v24 = *(a4 + 16);
  v25 = *(a4 + 64);
  sub_1D5B68374(a4 + 136, v54);
  sub_1D5B68374(a4 + 176, v53);
  sub_1D5BE3FA8(v23, v15, sub_1D6084834);
  sub_1D5B68374(a4 + 216, v52);
  type metadata accessor for DebugInspector();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  sub_1D5B68374(v54, v26 + 40);
  sub_1D5B68374(v53, v26 + 128);
  v27 = *(type metadata accessor for DebugGroupLayoutKey(0) + 24);
  v45 = v15;
  v28 = &v15[v27];
  v30 = *&v15[v27 + 32];
  v29 = *&v15[v27 + 40];
  __swift_project_boxed_opaque_existential_1(v28 + 1, v30);
  v31 = *(v29 + 16);
  v32 = v24;
  swift_unknownObjectRetain();
  *(v26 + 80) = v31(v30, v29);
  v33 = *(v28 + 4);
  v34 = *(v28 + 5);
  __swift_project_boxed_opaque_existential_1(v28 + 1, v33);
  (*(v34 + 64))(v48, v33, v34);
  sub_1D68160C0(v48, v51);
  v35 = v51[1];
  *(v26 + 96) = v51[0];
  *(v26 + 112) = v35;
  v36 = *(v28 + 4);
  v37 = *(v28 + 5);
  __swift_project_boxed_opaque_existential_1(v28 + 1, v36);
  (*(v37 + 64))(v48, v36, v37);
  v38 = v49;
  if (!v49)
  {
    sub_1D5BFB704(v48, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
LABEL_6:
    v41 = MEMORY[0x1E69E7CD0];
    goto LABEL_7;
  }

  v39 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v40 = (*(v39 + 32))(v38, v39);
  if (!v40)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_6;
  }

  v41 = *(v40 + 32);

  __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_7:
  *(v26 + 88) = v41;
  sub_1D5B68374(v52, v26 + 168);
  sub_1D6C6DDB0();
  v42 = sub_1D725B92C();
  sub_1D725BB2C();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1D6085238(v45, type metadata accessor for DebugGroupLayoutKey);
  v43 = v46;
  sub_1D5BDA9D4(v23, v46, sub_1D6084834);
  sub_1D6085238(v43, type metadata accessor for DebugGroupLayoutKey);
  return v26;
}

uint64_t DebugPersonalizationInspectionGroupProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  sub_1D6084EA8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  return v0;
}

uint64_t DebugPersonalizationInspectionGroupProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  sub_1D6084EA8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  return swift_deallocClassInstance();
}

uint64_t sub_1D60846C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6036AEC;

  return DebugPersonalizationInspectionGroupProvider.inspectionGroups()();
}

void sub_1D6084754(uint64_t a1)
{
  if (!qword_1EC8830D0)
  {
    type metadata accessor for DebugGroupLayoutKey(255);
    type metadata accessor for DebugInspector();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8830D0);
    }
  }
}

void sub_1D60847D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6084834(uint64_t a1)
{
  if (!qword_1EC8830E0)
  {
    type metadata accessor for DebugGroupLayoutKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8830E0);
    }
  }
}

uint64_t sub_1D608489C(uint64_t a1, uint64_t a2)
{
  sub_1D5F572B0(0, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D608492C(uint64_t a1, uint64_t a2)
{
  sub_1D60847D0(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60849C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D60847D0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6084A40(uint64_t a1)
{
  if (!qword_1EC8830F8)
  {
    sub_1D5C3978C(255, &qword_1EC8830F0, &type metadata for DebugInspectHeadlineCandidateFetch);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8830F8);
    }
  }
}

unint64_t sub_1D6084AA8()
{
  result = qword_1EC883100;
  if (!qword_1EC883100)
  {
    sub_1D6084A40(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883100);
  }

  return result;
}

void sub_1D6084B34()
{
  if (!qword_1EC883110)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883110);
    }
  }
}

unint64_t sub_1D6084B94()
{
  result = qword_1EC883120;
  if (!qword_1EC883120)
  {
    sub_1D60847D0(255, &qword_1EC883118, sub_1D6084B00, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883120);
  }

  return result;
}

unint64_t sub_1D6084C1C()
{
  result = qword_1EC892190;
  if (!qword_1EC892190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892190);
  }

  return result;
}

uint64_t sub_1D6084C70(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v35 = &type metadata for DebugInspection;
  v36 = sub_1D6084C1C();
  v10 = swift_allocObject();
  *&v34 = v10;
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  v10[5] = a1[4];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  v13 = *a5;
  v15 = sub_1D5B69D90(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_1D5B63F14(&v34, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_1D6D81954();
    goto LABEL_7;
  }

  sub_1D6D6C854(v18, a4 & 1);
  v24 = sub_1D5B69D90(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v34, &type metadata for DebugInspection);
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = v29[3];
  v37[2] = v29[2];
  v37[3] = v31;
  v37[4] = v29[4];
  v32 = v29[1];
  v37[0] = *v29;
  v37[1] = v32;
  sub_1D60850BC(v15, a2, a3, v37, v21);
  __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t dispatch thunk of DebugPersonalizationInspectionGroupProviderType.inspectionGroups()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6036AEC;

  return v7(a1, a2);
}

unint64_t sub_1D6085068()
{
  result = qword_1EC883128;
  if (!qword_1EC883128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883128);
  }

  return result;
}

uint64_t sub_1D60850BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  v19 = &type metadata for DebugInspection;
  v20 = sub_1D6084C1C();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = a4[3];
  v10[3] = a4[2];
  v10[4] = v11;
  v10[5] = a4[4];
  v12 = a4[1];
  v10[1] = *a4;
  v10[2] = v12;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1D5B63F14(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_1D6085198(uint64_t a1)
{
  if (!qword_1EC883130)
  {
    sub_1D6084754(255);
    sub_1D60847D0(255, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883130);
    }
  }
}

uint64_t sub_1D6085238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D6085298(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v115 = a6;
  v123 = a7;
  v121 = a5;
  v114 = a1;
  v13 = type metadata accessor for FormatViewBackground.Mica(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v113 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatViewBackground.SplitBackground(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v112 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60863A8(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v117 = (&v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v116 = (&v111 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v119 = &v111 - v31;
  sub_1D6086400(0);
  v120 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1D726344C();
  [a3 setUserInteractionEnabled_];
  v36 = *(a2 + 24);
  v37 = &a3[OBJC_IVAR____TtC8NewsFeed10FormatView_identifier];
  *v37 = *(a2 + 16);
  *(v37 + 1) = v36;

  v38 = *(a2 + 96);
  v118 = v28;
  if (v38)
  {
    v39 = *(v38 + 185);
  }

  else
  {
    v39 = 0;
  }

  [a3 setAccessibilityIgnoresInvertColors_];
  v40 = *(a2 + 136);
  v41 = *(a2 + 144);
  [a3 setIsAccessibilityElement_];
  [a3 setAccessibilityElementsHidden_];
  if (v41 > 0xFD)
  {
    goto LABEL_10;
  }

  if ((v41 & 0x80) != 0)
  {
    if (!(v40 | v41 & 0x7F))
    {
      goto LABEL_10;
    }

    v42 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v42 = &selRef_setIsAccessibilityElement_;
  }

  [a3 *v42];
LABEL_10:
  v124 = v35;
  v43 = a8;
  if (v38)
  {
    v44 = *(v38 + 80);
    v45 = *(v38 + 88);
    v46 = *(v38 + 96);
    sub_1D5ED34B0(v44, v45, v46);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = -2;
  }

  v47 = [a3 layer];
  [a3 bounds];
  *&v137 = v44;
  *(&v137 + 1) = v45;
  LOBYTE(v138) = v46;
  sub_1D6E549E4(v47, &v137, v48, v49, v50, v51);

  sub_1D5ED348C(v44, v45, v46);
  if (sub_1D7261A3C())
  {
    [a3 setOverrideUserInterfaceStyle_];
    *&v139 = 0;
    v137 = 0u;
    v138 = 0u;
    sub_1D72634CC();
  }

  v122 = a9;
  v52 = a4;
  if (v38)
  {
    v53 = *(v38 + 64);
    sub_1D5D04BD4(v53);
  }

  else
  {
    v53 = 0xF000000000000007;
  }

  v54 = v43;
  v55 = v121;
  v56 = *(v120 + 48);
  v57 = v124;
  *v124 = v53;
  sub_1D608678C(v55, v57 + v56, sub_1D60863A8);
  v58 = *v57;
  if ((~*v57 & 0xF000000000000007) == 0)
  {
    sub_1D726349C();
LABEL_44:
    v69 = sub_1D60863A8;
    v68 = v57 + v56;
    goto LABEL_45;
  }

  v59 = v58 >> 61;
  if ((v58 >> 61) <= 3)
  {
    if (v59 <= 1)
    {
      if (!v59)
      {
        *&v137 = *(v58 + 16);

        v61 = FormatColor.color.getter(v60);
        sub_1D726349C();

        v62 = v58;
LABEL_56:
        sub_1D5C8500C(v62);
        v69 = sub_1D60863A8;
        v68 = v124 + v56;
        goto LABEL_45;
      }

      v82 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v82;
      v83 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v140 = v83;
      v84 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v84;
      v85 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v85;
      sub_1D6086694(&v137, v125);
      sub_1D71E3D28(a3, &v126, v52);
      sub_1D60866F0(&v137);
LABEL_43:
      sub_1D5C8500C(v58);
      goto LABEL_44;
    }

    if (v59 == 2)
    {
      v70 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v141 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v142 = v70;
      v71 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v143 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v144 = v71;
      v72 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v72;
      v73 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v140 = v73;
      v74 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v130 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v131 = v74;
      v75 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v132 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v133 = v75;
      v76 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v76;
      v77 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v77;
      sub_1D60865E4(&v137, v125);
      sub_1D69F9B10(a3, &v126, v52);
      sub_1D6086640(&v137);
      goto LABEL_43;
    }

    v91 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if ((*((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 7u) <= 1)
    {
      v92 = v58;
      v106 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if ((v91 & 7) == 0)
      {
LABEL_55:
        *&v137 = v106;
        v107.n128_f64[0] = sub_1D6086744(v91);
        v108 = FormatColor.color.getter(v107);
        sub_1D726349C();
        sub_1D6086768(v91);

        v62 = v92;
        goto LABEL_56;
      }
    }

    else
    {
      v92 = v58;
    }

    v106 = v91 & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_55;
  }

  if (v59 > 5)
  {
    if (v59 != 6)
    {
      v93 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v144 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v145 = v93;
      v146 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v147 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
      v94 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v140 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v141 = v94;
      v95 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v142 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v143 = v95;
      v96 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v96;
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v97 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v134 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v135 = v97;
      v136 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
      v98 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v130 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v131 = v98;
      v99 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v132 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v133 = v99;
      v100 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v100;
      v101 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v101;
      sub_1D60864C0(&v137, v125);
      sub_1D700C2C4(a3, &v126, v52);
      sub_1D60113F8(&v137);
      goto LABEL_43;
    }

    sub_1D5C8500C(*v57);
    v78 = type metadata accessor for FormatViewBackground(0);
    if ((*(*(v78 - 8) + 48))(v57 + v56, 1, v78) != 1)
    {
      v79 = v117;
      sub_1D608678C(v57 + v56, v117, sub_1D60863A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v80 = v79;
        v81 = v113;
        sub_1D608651C(v80, v113, type metadata accessor for FormatViewBackground.Mica);
        sub_1D6086028(v114, a3, v52, v81, v115, v123, v54, v122);
        sub_1D6086584(v81, type metadata accessor for FormatViewBackground.Mica);
        goto LABEL_44;
      }

LABEL_37:
      sub_1D6086584(v79, type metadata accessor for FormatViewBackground);
    }
  }

  else
  {
    v63 = *v57;
    if (v59 == 4)
    {
      sub_1D5C8500C(v63);
      v64 = v57 + v56;
      v65 = v119;
      sub_1D608651C(v64, v119, sub_1D60863A8);
      v66 = v118;
      sub_1D608678C(v65, v118, sub_1D60863A8);
      v67 = type metadata accessor for FormatViewBackground(0);
      if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
      {
        sub_1D6086584(v65, sub_1D60863A8);
        v68 = v66;
        v69 = sub_1D60863A8;
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        v105 = v112;
        sub_1D608651C(v66, v112, type metadata accessor for FormatViewBackground.SplitBackground);
        sub_1D7199CC0(a3, v105, v52, a2);
        sub_1D6086584(v105, type metadata accessor for FormatViewBackground.SplitBackground);
        v69 = sub_1D60863A8;
        v68 = v65;
      }

      else
      {
        sub_1D6086584(v65, sub_1D60863A8);
        v69 = type metadata accessor for FormatViewBackground;
        v68 = v66;
      }

LABEL_45:
      sub_1D6086584(v68, v69);
      if (v38)
      {
        goto LABEL_46;
      }

LABEL_39:
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = -2;
      goto LABEL_47;
    }

    sub_1D5C8500C(v63);
    v86 = type metadata accessor for FormatViewBackground(0);
    if ((*(*(v86 - 8) + 48))(v57 + v56, 1, v86) != 1)
    {
      v79 = v116;
      sub_1D608678C(v57 + v56, v116, sub_1D60863A8);
      if (!swift_getEnumCaseMultiPayload())
      {
        v109 = v57;
        v110 = v79[1];
        *&v137 = *v79;
        *(&v137 + 1) = v110;
        sub_1D6085D84(v114, a3, v52, &v137, v115, v123, v54, v122);

        v69 = sub_1D60863A8;
        v68 = v109 + v56;
        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

  sub_1D6086584(v57 + v56, sub_1D60863A8);
  sub_1D726349C();
  if (!v38)
  {
    goto LABEL_39;
  }

LABEL_46:
  v89 = *(v38 + 72);
  v87 = *(v38 + 80);
  v88 = *(v38 + 88);
  v90 = *(v38 + 96);

  sub_1D5ED34B0(v87, v88, v90);
LABEL_47:
  v102 = [a3 layer];
  *&v137 = v87;
  *(&v137 + 1) = v88;
  LOBYTE(v138) = v90;
  sub_1D6D111F4(v102, v123, v89, &v137, v54, v122);

  sub_1D5ED348C(v87, v88, v90);
  if (v38)
  {
  }

  else
  {
    v103 = 0;
  }

  *&v137 = v103;
  sub_1D613DC18(a3, &v137, v52);

  return result;
}

void sub_1D6085D84(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *a4;
  v34 = a4[1];
  v17 = [objc_opt_self() clearColor];
  sub_1D726349C();

  if (*(a3 + 16))
  {
    v18 = sub_1D6D62820(3);
    if (v19)
    {
      v20 = *(a3 + 56) + 16 * v18;
      if (*(v20 + 8) == 3)
      {
        v21 = *v20;
        [a2 frame];
        sub_1D726344C();
        [v21 bounds];
        sub_1D726344C();
        v22 = [v21 layer];
        v33 = a7;
        v23 = [a2 layer];
        [v23 cornerRadius];
        v25 = v24;

        [v22 setCornerRadius_];
        v26 = [v21 layer];

        v27 = [a2 layer];
        v32 = a6;
        v28 = [v27 maskedCorners];

        [v26 setMaskedCorners_];
        v29 = [v21 layer];

        v30 = [a2 layer];
        v31 = [v30 cornerCurve];

        [v29 setCornerCurve_];
        sub_1D726348C();
        __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
        v36 = v16;

        sub_1D68B5E88(a1, v21, &v36, v34, a3, a5, v32, v33, a8);
      }
    }
  }
}

void sub_1D6086028(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a8;
  v40 = a1;
  v41 = a5;
  v15 = type metadata accessor for FormatViewBackground.Mica(0);
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = [objc_opt_self() clearColor];
  sub_1D726349C();

  if (*(a3 + 16))
  {
    v19 = sub_1D6D62820(4);
    if (v20)
    {
      v21 = *(a3 + 56) + 16 * v19;
      if (*(v21 + 8) == 4)
      {
        v22 = *v21;
        [a2 frame];
        sub_1D726344C();
        v37 = a7;
        v23 = [v22 layer];
        v24 = [a2 layer];
        [v24 cornerRadius];
        v26 = v25;

        [v23 setCornerRadius_];
        v27 = [v22 layer];

        v28 = [a2 layer];
        v36 = a6;
        v29 = [v28 maskedCorners];

        [v27 setMaskedCorners_];
        v30 = [v22 layer];

        v31 = [a2 layer];
        v32 = [v31 cornerCurve];

        [v30 setCornerCurve_];
        sub_1D726348C();
        __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
        v42 = *a4;
        sub_1D608678C(a4, &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatViewBackground.Mica);
        v33 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v34 = swift_allocObject();
        sub_1D608651C(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatViewBackground.Mica);

        sub_1D69DEEB8(v40, v22, &v42, v41, v36, sub_1D60867F4, v34, v37, v39);
      }
    }
  }
}

void sub_1D60863A8(uint64_t a1)
{
  if (!qword_1EDF2A668[0])
  {
    type metadata accessor for FormatViewBackground(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDF2A668);
    }
  }
}

void sub_1D6086400(uint64_t a1)
{
  if (!qword_1EDF308F0)
  {
    sub_1D6086470();
    sub_1D60863A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF308F0);
    }
  }
}

void sub_1D6086470()
{
  if (!qword_1EDF308F8)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF308F8);
    }
  }
}

uint64_t sub_1D608651C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6086584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D6086744(unint64_t a1)
{
  if ((a1 & 7) <= 4)
  {
  }

  return result;
}

double sub_1D6086768(unint64_t a1)
{
  if ((a1 & 7) <= 4)
  {
  }

  return result;
}

uint64_t sub_1D608678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

NewsFeed::GeoLocation __swiftcall GeoLocation.init(latitude:longitude:)(Swift::Double latitude, Swift::Double longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1D60868A4()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

void sub_1D60868E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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
}

uint64_t sub_1D60869C8(uint64_t a1)
{
  v2 = sub_1D6086BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6086A04(uint64_t a1)
{
  v2 = sub_1D6086BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeoLocation.encode(to:)(void *a1)
{
  sub_1D6086F38(0, &qword_1EC883148, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6086BB4();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726441C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6086BB4()
{
  result = qword_1EDF126E0;
  if (!qword_1EDF126E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126E0);
  }

  return result;
}

uint64_t GeoLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6FC0E0](*&v3);
}

uint64_t GeoLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6FC0E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v4);
  return sub_1D7264A5C();
}

uint64_t GeoLocation.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_1D6086F38(0, &qword_1EDF03B30, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6086BB4();
  sub_1D7264B0C();
  if (!v2)
  {
    v18 = 0;
    sub_1D72642DC();
    v12 = v11;
    v17 = 1;
    sub_1D72642DC();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 1) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6086EC4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D7264A0C();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1DA6FC0E0](*&v5);
  return sub_1D7264A5C();
}

void sub_1D6086F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6086BB4();
    v7 = a3(a1, &type metadata for GeoLocation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

NewsFeed::GeoLocation __swiftcall GeoLocation.init(from:)(CLLocation from)
{
  isa = from.super.isa;
  v3 = v1;
  [(objc_class *)from.super.isa coordinate];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t GeoLocation.identifier.getter()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

unint64_t sub_1D6087084()
{
  result = qword_1EC883150;
  if (!qword_1EC883150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883150);
  }

  return result;
}

uint64_t sub_1D60870D8()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

unint64_t sub_1D6087184()
{
  result = qword_1EC883158;
  if (!qword_1EC883158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883158);
  }

  return result;
}

unint64_t sub_1D60871DC()
{
  result = qword_1EDF126D0;
  if (!qword_1EDF126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126D0);
  }

  return result;
}

unint64_t sub_1D6087234()
{
  result = qword_1EDF126D8;
  if (!qword_1EDF126D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126D8);
  }

  return result;
}

uint64_t sub_1D6087288(uint64_t a1)
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

double sub_1D6087354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + v6[15]);
  v12 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  sub_1D5F423D0(v11 + v12, v10);
  v13 = (*(v6[11] + 40))(v10, v6[10]);
  sub_1D6088900(v10, type metadata accessor for FormatPluginData);
  v17 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D6088BCC(0, v15);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC, MEMORY[0x1E69D7A50]);

  sub_1D725D8DC();

  return result;
}

double sub_1D6087548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v3 + v6[15]);
  v8 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  sub_1D6088B10(a1, v7 + v8);
  swift_endAccess();
  v9 = v6[11];
  v10 = v6[10];
  (*(v9 + 48))(a1, a2, v10, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  sub_1D6088BCC(0, v13);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC, MEMORY[0x1E69D7A50]);

  sub_1D725D8DC();

  return result;
}

uint64_t sub_1D6087718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725D85C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69D7A38], v4, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1D725D8EC();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1D6087860(__n128 a1)
{
  v2 = v1;
  sub_1D5ECF374(0, a1);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6088960(0, &qword_1EDF0B838, type metadata accessor for FormatAutoscrollPivotPoint);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for FormatAutoscrollPivotPoint(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + *(*v1 + 120)) + OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  result = type metadata accessor for FormatPluginData(0);
  if ((*(v18 + *(result + 48)) & 1) == 0)
  {
    v26 = v17;
    __swift_project_boxed_opaque_existential_1((v2 + *(*v2 + 136)), *(v2 + *(*v2 + 136) + 24));
    v27 = v4;
    sub_1D725D8BC();
    v28 = v29;
    sub_1D6087E88(0, v20);
    sub_1D5B85E70(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
    sub_1D725E03C();

    sub_1D6A2C2E4(v8, v12);
    (*(v5 + 8))(v8, v27);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      return sub_1D6088A34(v12, &qword_1EDF0B838, type metadata accessor for FormatAutoscrollPivotPoint);
    }

    else
    {
      v22 = v26;
      sub_1D6087F9C(v12, v26, v21);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_1D6088174(v22, Strong, v24);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      return sub_1D6088900(v22, type metadata accessor for FormatAutoscrollPivotPoint);
    }
  }

  return result;
}

char *sub_1D6087BC4()
{
  v1 = *v0;
  sub_1D5B87E10((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_1D6087CA0()
{
  sub_1D6087BC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6087D10(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

double sub_1D6087D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        v13 = swift_allocObject();
        v13[2] = v11;
        v13[3] = a7;
        v13[4] = v12;
        swift_unknownObjectRetain_n();

        sub_1D725BFFC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D6087EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v9[0] = type metadata accessor for FormatSectionDescriptor(255);
    v9[1] = type metadata accessor for FormatModel(255);
    v9[2] = sub_1D5B85E70(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    v9[3] = sub_1D5B85E70(&qword_1EDF128E0, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6087F9C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FormatAutoscrollPivotPoint(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D6088000(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  (*(v2 + 56))(a1, v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_1D6088BCC(0, v6);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC, MEMORY[0x1E69D7A50]);

  sub_1D725D8DC();

  return result;
}

id sub_1D6088174(uint64_t a1, void *a2, __n128 a3)
{
  v80 = a1;
  sub_1D5ECF374(0, a3);
  v83 = v4;
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v82 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7258DBC();
  v85 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v84 = &v73 - v20;
  v21 = sub_1D725E23C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E51C();
  v26 = sub_1D725E05C();

  v27 = [v26 collectionViewLayout];

  [v27 collectionViewContentSize];
  v29 = v28;

  result = [a2 view];
  if (result)
  {
    v31 = result;
    [result bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v88.origin.x = v33;
    v88.origin.y = v35;
    v88.size.width = v37;
    v88.size.height = v39;
    Width = CGRectGetWidth(v88);
    sub_1D725E18C();
    sub_1D7262E2C();
    v42 = Width - v41;
    if (Width - v41 >= v29)
    {
      return (*(v22 + 8))(v25, v21);
    }

    else
    {
      v74 = v22;
      v75 = v21;
      v44 = v84;
      v43 = v85;
      (*(v85 + 16))(v84, v80, v7);
      (*(v43 + 56))(v44, 0, 1, v7);
      sub_1D60889B4(v44, v17);
      v79 = *(v43 + 48);
      v80 = v43 + 48;
      if (v79(v17, 1, v7) == 1)
      {
LABEL_8:
        v71 = MEMORY[0x1E6969C28];
        sub_1D6088A34(v84, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
        (*(v74 + 8))(v25, v75);
        return sub_1D6088A34(v17, &qword_1EDF3C370, v71);
      }

      else
      {
        v45 = *(v85 + 32);
        v76 = v77 + 1;
        v85 += 32;
        v77 = (v85 - 24);
        v78 = v45;
        v46 = v81;
        while (1)
        {
          v78(v10, v17, v7);
          sub_1D725E51C();
          v47 = sub_1D725E05C();

          v48 = sub_1D7258D4C();
          v49 = [v47 layoutAttributesForItemAtIndexPath_];

          if (!v49)
          {
            break;
          }

          [v49 frame];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;

          v89.origin.x = v51;
          v89.origin.y = v53;
          v89.size.width = v55;
          v89.size.height = v57;
          MinX = CGRectGetMinX(v89);
          sub_1D725E18C();
          v60 = MinX - v59;
          sub_1D725E16C();
          v62 = v60 - v61;
          sub_1D725E18C();
          if (v42 + v62 + v63 <= v29)
          {
            sub_1D725E51C();
            v72 = sub_1D725E05C();

            [v72 setContentOffset_];

            break;
          }

          sub_1D725E53C();
          v86 = v87;
          sub_1D6087E88(0, v64);
          sub_1D5B85E70(&unk_1EDF171E0, sub_1D6087E88, MEMORY[0x1E69D7A78]);
          v65 = v7;
          v66 = v82;
          sub_1D725E03C();

          sub_1D725E51C();
          v67 = sub_1D725E05C();

          sub_1D5B85E70(&qword_1EC883160, sub_1D5ECF374, MEMORY[0x1E69D8800]);
          v68 = v83;
          sub_1D725EFAC();

          v69 = v66;
          v7 = v65;
          (*v76)(v69, v68);
          (*v77)(v10, v65);
          v70 = v84;
          sub_1D6088A34(v84, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
          sub_1D6088A90(v46, v70);
          sub_1D60889B4(v70, v17);
          if (v79(v17, 1, v65) == 1)
          {
            goto LABEL_8;
          }
        }

        (*v77)(v10, v7);
        sub_1D6088A34(v84, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
        return (*(v74 + 8))(v25, v75);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6088900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6088960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D60889B4(uint64_t a1, uint64_t a2)
{
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6088A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6088960(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6088A90(uint64_t a1, uint64_t a2)
{
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6088B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm_0()
{

  return swift_deallocObject();
}

double sub_1D6088CA4@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *v2;
  v16 = 10;
  v17 = 0xE100000000000000;
  sub_1D6089234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D60892F0(v13);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA6F9910](v7, v9);

  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  v10 = v16;
  v11 = v17;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](v10, v11);
  swift_endAccess();

  a2[3] = v4;
  a2[4] = &off_1F512FCE0;
  *a2 = v2;

  return result;
}

double sub_1D6088DF0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v10 = *v5;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || a1 == a3 && a2 == a4 || (sub_1D72646CC() & 1) != 0)
  {
    swift_beginAccess();
    MEMORY[0x1DA6F9910](a3, a4);
    swift_endAccess();
  }

  else
  {

    MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
    MEMORY[0x1DA6F9910](a3, a4);
    swift_beginAccess();
    MEMORY[0x1DA6F9910](a1, a2);
    swift_endAccess();
  }

  a5[3] = v10;
  a5[4] = &off_1F512FCE0;
  *a5 = v6;

  return result;
}

uint64_t sub_1D6088F54()
{

  return swift_deallocClassInstance();
}

void sub_1D6088FB0(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  swift_beginAccess();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *a1 = v2;
}

double sub_1D6089024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_endAccess();
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;

  return result;
}

double sub_1D60890A4@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = *v3;
  MEMORY[0x1DA6F9910]();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_beginAccess();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_endAccess();

  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;

  return result;
}

double sub_1D60891A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](a1, a2);
  swift_endAccess();
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;

  return result;
}

uint64_t sub_1D6089234(uint64_t a1, uint64_t a2)
{
  sub_1D6089298(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6089298(uint64_t a1)
{
  if (!qword_1EC884F40)
  {
    sub_1D5EB8714();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884F40);
    }
  }
}

uint64_t sub_1D60892F0(uint64_t a1)
{
  sub_1D6089298(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedGroupTopicClusteringRequestTagContent.count.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    return *(v1 + 16);
  }

  if (v1 >> 62)
  {
    return sub_1D7263BFC();
  }

  return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void sub_1D60893C0()
{
  if (!*(v0 + 24))
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    v4 = *v0;
    v8[0] = v4;
    v8[1] = v3;
    v8[2] = v2;
    v9 = 6;
    sub_1D5D27950(v4, v3, v2, 0);
    v5 = sub_1D703E0C8(v8, &v9);
    if (!v1)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v3;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }
}

BOOL _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v9 == 3)
      {
        sub_1D5D28C84(*a1, v3, v4, 3);
        sub_1D5D28C84(v6, v7, v8, 3);
        return ((v6 ^ v2) & 1) == 0;
      }

      goto LABEL_24;
    }

    if (v5 != 4)
    {
      if (v9 == 5)
      {
        sub_1D5D28C84(*a1, v3, v4, 5);
        v10 = v6;
        v11 = v7;
        v12 = v8;
        v13 = 5;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v9 != 4)
    {
LABEL_24:
      sub_1D5D27950(v6, v7, v8, v9);
      sub_1D5D28C84(v2, v3, v4, v5);
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
LABEL_25:
      sub_1D5D28C84(v16, v17, v18, v19);
      return 0;
    }

    v14 = *a2;
    sub_1D5D28C84(*a1, v3, v4, 4);
    sub_1D5D28C84(v6, v7, v8, 4);
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        if ((v14 & 0xC0) == 0x40 && ((v6 ^ v2) & 1) == 0)
        {
          return 1;
        }
      }

      else if ((v14 & 0xC0) == 0x80)
      {
        return 1;
      }
    }

    else if (v14 < 0x40 && (v6 & 0x3F) == v2)
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24))
    {
      if (v5 == 1)
      {
        if (v9 == 1)
        {
          sub_1D5D28C84(*a1, v3, v4, 1);
          v10 = v6;
          v11 = v7;
          v12 = v8;
          v13 = 1;
LABEL_22:
          sub_1D5D28C84(v10, v11, v12, v13);
          return 1;
        }
      }

      else if (v9 == 2)
      {
        sub_1D5D28C84(*a1, v3, v4, 2);
        sub_1D5D28C84(v6, v7, v8, 2);
        return v6 == v2;
      }

      goto LABEL_24;
    }

    if (*(a2 + 24))
    {

      goto LABEL_24;
    }

    v20 = v2 == v6 && v3 == v7;
    if (!v20 && (sub_1D72646CC() & 1) == 0)
    {
      sub_1D5D27950(v2, v3, v4, 0);
      sub_1D5D27950(v6, v7, v8, 0);
      sub_1D5D28C84(v2, v3, v4, 0);
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = 0;
      goto LABEL_25;
    }

    sub_1D5D27950(v6, v7, v8, 0);
    sub_1D5D27950(v2, v3, v4, 0);
    sub_1D5D27950(v2, v3, v4, 0);
    sub_1D5D27950(v6, v7, v8, 0);
    v21 = sub_1D6341C50(v4, v8);
    sub_1D5D28C84(v2, v3, v4, 0);
    sub_1D5D28C84(v6, v7, v8, 0);
    sub_1D5D28C84(v6, v7, v8, 0);
    sub_1D5D28C84(v2, v3, v4, 0);
    if (v21)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1D6089844(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  if (!*(v1 + 24))
  {
    v36 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v37[0] = *v1;
    v37[1] = v19;
    v37[2] = v18;
    v38 = 6;

    v21 = sub_1D703E0C8(v37, &v38);
    if (!v3)
    {
      v35 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v36 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D280B8(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v27 = v20;
          v27[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v37[0] = v9[2];
        v23 = v35;

        FormatOptionValue.type.getter(v24, &v38);
        if ((sub_1D6183C84(v38, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v29 = v28;
          v31 = *v9;
          v30 = v9[1];
          v37[0] = v9[2];

          FormatOptionValue.type.getter(v32, &v38);
          v33 = v38;
          *v29 = v31;
          *(v29 + 8) = v30;
          *(v29 + 16) = v33;
          *(v29 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v25 = type metadata accessor for FormatOption;
          v26 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v36 + 56))(v17, v22, 1, v5);
      v25 = sub_1D5E04C00;
      v26 = v17;
LABEL_11:
      sub_1D5D280B8(v26, v25);
    }
  }
}

unint64_t sub_1D6089C10(uint64_t a1)
{
  result = sub_1D6089C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6089C38()
{
  result = qword_1EC883168;
  if (!qword_1EC883168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883168);
  }

  return result;
}

unint64_t sub_1D6089C8C(void *a1)
{
  a1[1] = sub_1D5CA38E4();
  a1[2] = sub_1D6089CC4();
  result = sub_1D6089D18();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6089CC4()
{
  result = qword_1EDF11090;
  if (!qword_1EDF11090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11090);
  }

  return result;
}

unint64_t sub_1D6089D18()
{
  result = qword_1EC883170;
  if (!qword_1EC883170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883170);
  }

  return result;
}

id sub_1D6089D88(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = a4 - a2;
  if (v8 >= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 3.14159265;
  }

  v10 = 3.14159265 - (v9 + atan((a5 - a3) / v8));
  v11 = __sincos_stret(v10 + 0.785398163);
  v12 = __sincos_stret(v10 + -0.785398163);
  [a1 moveToPoint_];
  [a1 addLineToPoint_];
  [a1 moveToPoint_];

  return [a1 addLineToPoint_];
}

id sub_1D6089EA4(double a1, double a2, double a3, double a4, double a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v9 moveToPoint_];
  [v9 addLineToPoint_];
  if (a2 == a4)
  {
    sub_1D726351C();
    [v9 moveToPoint_];
    sub_1D726351C();
    [v9 addLineToPoint_];
    sub_1D726351C();
    [v9 moveToPoint_];
    sub_1D726351C();
  }

  else
  {
    sub_1D726350C();
    [v9 moveToPoint_];
    sub_1D726350C();
    [v9 addLineToPoint_];
    sub_1D726350C();
    [v9 moveToPoint_];
    sub_1D726350C();
  }

  [v9 addLineToPoint_];
  return v9;
}

NewsFeed::GroupLayoutPriority_optional __swiftcall GroupLayoutPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GroupLayoutPriority.description.getter()
{
  v1 = 1701736270;
  v2 = 1751607624;
  if (*v0 != 2)
  {
    v2 = 0x756F72636964754CLL;
  }

  if (*v0)
  {
    v1 = 7827276;
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

unint64_t sub_1D608A110()
{
  result = qword_1EDF2B990;
  if (!qword_1EDF2B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B990);
  }

  return result;
}

uint64_t sub_1D608A164()
{
  v1 = 1701736270;
  v2 = 1751607624;
  if (*v0 != 2)
  {
    v2 = 0x756F72636964754CLL;
  }

  if (*v0)
  {
    v1 = 7827276;
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

uint64_t sub_1D608A1E0(void *a1)
{
  v3 = [*(v1 + 56) cachedSubscription];
  if (objc_getAssociatedObject(v3, v3 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
    goto LABEL_9;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v17;
  v5 = [v17 integerValue];
  if (v5 == -1)
  {

    goto LABEL_22;
  }

  v6 = v5;
LABEL_10:
  if (objc_getAssociatedObject(v3, ~v6))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v7 = v17;
      v8 = [v7 integerValue];

      if ((v8 ^ v6))
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D5EBD03C(&v20);
  }

  if (v6)
  {
LABEL_22:
    v15 = 1;
    return v15 & 1;
  }

LABEL_19:
  if (![a1 isPaid])
  {
    goto LABEL_22;
  }

  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v9);
  v11 = [a1 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  v15 = (*(*(v10 + 8) + 8))(v12, v14, v9);

  return v15 & 1;
}

uint64_t sub_1D608A430()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PuzzleAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAutomation.init(puzzle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  *a2 = v5;
  *(a2 + 8) = v4;
  v6 = *(a1 + 72);

  result = sub_1D5F2DF58(a1);
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1D608A554()
{
  if (*v0)
  {
    return 0x7453737365636361;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D608A59C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7453737365636361 && a2 == 0xEB00000000657461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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
}

uint64_t sub_1D608A684(uint64_t a1)
{
  v2 = sub_1D608A89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D608A6C0(uint64_t a1)
{
  v2 = sub_1D608A89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAutomation.encode(to:)(void *a1)
{
  sub_1D608AB48(0, &qword_1EC883178, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v15 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D608A89C();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    sub_1D608A8F0();
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D608A89C()
{
  result = qword_1EC883180;
  if (!qword_1EC883180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883180);
  }

  return result;
}

unint64_t sub_1D608A8F0()
{
  result = qword_1EC883188;
  if (!qword_1EC883188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883188);
  }

  return result;
}

void PuzzleAutomation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D608AB48(0, &qword_1EC883190, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D608A89C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    v17 = 1;
    sub_1D608ABAC();
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    v15 = v18;
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D608AB48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D608A89C();
    v7 = a3(a1, &type metadata for PuzzleAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D608ABAC()
{
  result = qword_1EC883198;
  if (!qword_1EC883198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883198);
  }

  return result;
}

unint64_t sub_1D608AC04()
{
  result = qword_1EC8831A0;
  if (!qword_1EC8831A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831A0);
  }

  return result;
}

unint64_t sub_1D608AC5C()
{
  result = qword_1EC8831A8;
  if (!qword_1EC8831A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831A8);
  }

  return result;
}

unint64_t sub_1D608AD18()
{
  result = qword_1EC8831B0;
  if (!qword_1EC8831B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831B0);
  }

  return result;
}

unint64_t sub_1D608AD70()
{
  result = qword_1EC8831B8;
  if (!qword_1EC8831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831B8);
  }

  return result;
}

unint64_t sub_1D608ADC8()
{
  result = qword_1EC8831C0;
  if (!qword_1EC8831C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831C0);
  }

  return result;
}

uint64_t FormatPropertyValue.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25[-1] - v9;
  sub_1D5B68374(a1, v25);
  FormatOptionValue.init(from:)(v25, &v26);
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = v2;
    sub_1D5C30408();
    sub_1D7264B0C();
    v24 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v21 = swift_allocError();
          *v22 = v20;
          *(v22 + 8) = v19;
          *(v22 + 16) = &unk_1F5111478;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          swift_willThrow();

          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D608B5B4();
    v25[0] = 0;
    v25[1] = 0;
    sub_1D726431C();
    a2 = v24;
    (*(v7 + 8))(v10, v6);

    v12 = 0xF000000000000007;
  }

  else
  {
    v12 = v26;
  }

  *a2 = v12;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPropertyValue.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v10 - v7;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    v10[0] = *v1;
    return FormatOptionValue.encode(to:)(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5C30408();
    sub_1D7264B5C();
    sub_1D608B608();
    v10[0] = 0;
    v10[1] = 0;
    sub_1D726443C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D608B288()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D608B304(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D608B35C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

uint64_t _s8NewsFeed19FormatPropertyValueO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v4 != 0xF000000000000007)
    {
      v7 = *a2;
      v8 = v2;
      sub_1D5CFCFAC(v3);
      sub_1D5CFCFAC(v2);
      sub_1D5CFCFAC(v2);
      sub_1D5CFCFAC(v3);
      v5 = static FormatOptionValue.== infix(_:_:)(&v8, &v7);
      sub_1D5C84FF4(v2);
      sub_1D5C84FF4(v3);
      sub_1D5C84FF4(v3);
      sub_1D5C84FF4(v2);
      return v5 & 1;
    }

    goto LABEL_5;
  }

  if (v4 != 0xF000000000000007)
  {
LABEL_5:
    sub_1D5CFCFAC(*a1);
    sub_1D5CFCFAC(v3);
    sub_1D5C84FF4(v2);
    sub_1D5C84FF4(v3);
    v5 = 0;
    return v5 & 1;
  }

  sub_1D5C84FF4(*a1);
  sub_1D5C84FF4(v3);
  v5 = 1;
  return v5 & 1;
}

unint64_t sub_1D608B5B4()
{
  result = qword_1EDF2C1C0;
  if (!qword_1EDF2C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1C0);
  }

  return result;
}

unint64_t sub_1D608B608()
{
  result = qword_1EDF0F9E8;
  if (!qword_1EDF0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F9E8);
  }

  return result;
}

unint64_t sub_1D608B65C(void *a1)
{
  a1[1] = sub_1D5EECC10();
  a1[2] = sub_1D5EECB58();
  result = sub_1D608B694();
  a1[3] = result;
  return result;
}

unint64_t sub_1D608B694()
{
  result = qword_1EC8831C8;
  if (!qword_1EC8831C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831C8);
  }

  return result;
}

uint64_t sub_1D608B6E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D608B738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D608B78C(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x72)
  {
    v3 = a2 - 115;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

unint64_t sub_1D608B7D0()
{
  result = qword_1EC8831D0;
  if (!qword_1EC8831D0)
  {
    sub_1D608B828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831D0);
  }

  return result;
}

void sub_1D608B828()
{
  if (!qword_1EC8831D8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8831D8);
    }
  }
}

unint64_t sub_1D608B87C()
{
  result = qword_1EC8831E0;
  if (!qword_1EC8831E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831E0);
  }

  return result;
}

unint64_t sub_1D608B8D0()
{
  result = qword_1EDF2C1C8;
  if (!qword_1EDF2C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1C8);
  }

  return result;
}

void sub_1D608B924(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for FormatArrangementResolver(0, a7, a8, a4);
  v16 = v15[14];
  type metadata accessor for FormatArrangementData(0, a7, a8, v17);
  *(a9 + v16) = sub_1D7261CEC();
  sub_1D609C804(a1, a9, type metadata accessor for FormatContent);
  v18 = v15[10];
  v20 = type metadata accessor for FormatArrangementResolverOptions(0, a7, a8, v19);
  v21 = *(v20 - 8);
  (*(v21 + 16))(a9 + v18, a3, v20);
  sub_1D5B68374(a4, a9 + v15[12]);
  v22 = (a9 + v15[13]);
  *v22 = a5;
  v22[1] = a6;
  type metadata accessor for FormatArrangementTemplate(255, a7, a8, v23);
  sub_1D72627FC();

  v24 = MEMORY[0x1E69E6328];
  swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = sub_1D72623BC();

  *(a9 + v15[9]) = v25;
  type metadata accessor for FormatContent(0);
  sub_1D5B59538(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D609C86C(&unk_1EDF1B0C0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, v24);
  sub_1D5B5990C(qword_1EDF0E300, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);

  v26 = sub_1D72623BC();

  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v21 + 8))(a3, v20);
  sub_1D609C8C4(a1, type metadata accessor for FormatContent);

  *(a9 + v15[11]) = v26;
}

uint64_t sub_1D608BC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = type metadata accessor for FormatArrangementResolverOptions(0, *(a1 + 16), *(a1 + 24), a3);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v3 + *(a1 + 40), v8);
  v12 = sub_1D725C42C();
  return (*(*(v12 - 8) + 32))(a2, v10, v12);
}

uint64_t FormatArrangementResolver.resolve(arrangement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 864) = v3;
  *(v4 + 856) = a3;
  *(v4 + 848) = a1;
  type metadata accessor for FormatContentPool(0);
  *(v4 + 872) = swift_task_alloc();
  v7 = sub_1D725891C();
  *(v4 + 880) = v7;
  *(v4 + 888) = *(v7 - 8);
  *(v4 + 896) = swift_task_alloc();
  sub_1D5B59538(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  *(v4 + 904) = swift_task_alloc();
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = type metadata accessor for FormatContent(0);
  *(v4 + 944) = swift_task_alloc();
  v8 = *(a3 + 16);
  *(v4 + 952) = v8;
  v9 = *(a3 + 24);
  *(v4 + 960) = v9;
  v11 = type metadata accessor for FormatArrangementCuration(0, v8, v9, v10);
  *(v4 + 968) = v11;
  v12 = *(v11 - 8);
  *(v4 + 976) = v12;
  *(v4 + 984) = *(v12 + 64);
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  v14 = type metadata accessor for FormatArrangementTemplateResult(0, v8, v9, v13);
  *(v4 + 1008) = v14;
  v15 = *(v14 - 8);
  *(v4 + 1016) = v15;
  *(v4 + 1024) = *(v15 + 64);
  *(v4 + 1032) = swift_task_alloc();
  v16 = sub_1D725C42C();
  *(v4 + 1040) = v16;
  *(v4 + 1048) = *(v16 - 8);
  *(v4 + 1056) = swift_task_alloc();
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = *a2;
  *(v4 + 1088) = *(a2 + 8);
  *(v4 + 1104) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D608C05C, 0, 0);
}

uint64_t sub_1D608C05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v273 = v4;
  v5 = v4;
  sub_1D608BC28(v5[107], v5[134], a4);

  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();

  v244 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v4 + 1104);
    v9 = *(v4 + 1096);
    v258 = *(v4 + 1080);
    v262 = *(v4 + 1072);
    v10 = *(v4 + 1048);
    v11 = *(v4 + 1040);
    v12 = *(v4 + 960);
    v13 = *(v4 + 952);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v269 = v15;
    *v14 = 136446210;
    v270 = v258;
    v271 = v9;
    v272 = v8;
    type metadata accessor for FormatArrangement(0, v13, v12, v16);
    v17 = sub_1D5F90834();
    v19 = v18;

    v20 = sub_1D5BC5100(v17, v19, &v269);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D5B42000, v6, v7, "Format arrangement start resolving arrangement %{public}s...", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v21 = v15;
    v5 = v244;
    MEMORY[0x1DA6FD500](v21, -1, -1);
    MEMORY[0x1DA6FD500](v14, -1, -1);

    v22 = *(v10 + 8);
    v22(v262, v11);
  }

  else
  {
    v23 = *(v4 + 1072);
    v24 = *(v4 + 1048);
    v25 = *(v4 + 1040);

    v22 = *(v24 + 8);
    v22(v23, v25);
  }

  v5[139] = v22;
  v26 = v5[138];
  v27 = v5[137];
  v263 = *(v5 + 135);
  v28 = v5[120];
  v29 = v5[119];
  v5[102] = sub_1D7261CFC();
  sub_1D69ABCB4(v5 + 2);
  v270 = v263;
  v271 = v27;
  v272 = v26;
  v5[140] = type metadata accessor for FormatArrangement(0, v29, v28, v30);
  v5[141] = sub_1D5B8EF70();
  type metadata accessor for FormatArrangementSlot(0, v29, v28, v31);

  if (sub_1D726279C())
  {
    v33 = sub_1D726277C();
    sub_1D726271C();
    if (v33)
    {
      v34 = v5[141];
      v35 = *(v34 + 32);
      v5[142] = v35;
      v36 = *(v34 + 40);
      v37 = *(v5 + 1);
      v38 = *(v5 + 2);
      v39 = *(v5 + 4);
      *(v5 + 8) = *(v5 + 3);
      *(v5 + 9) = v39;
      v40 = *(v5 + 2);
      v41 = *(v5 + 3);
      v42 = *(v5 + 1);
      *(v5 + 6) = v37;
      *(v5 + 7) = v40;
      *(v5 + 12) = v38;
      *(v5 + 13) = v41;
      v43 = *(v5 + 5);
      *(v5 + 14) = *(v5 + 4);
      *(v5 + 15) = v43;
      *(v5 + 809) = v36;
      v5[143] = 1;
      v44 = v5[120];
      v45 = v5[119];
      v5[100] = v35;
      *(v5 + 808) = v36;
      *(v5 + 10) = v43;
      *(v5 + 11) = v42;
      sub_1D5EB6610(v35, v36);
      v47 = type metadata accessor for FormatArrangementResolverContext(0, v45, v44, v46);
      v5[144] = v47;
      v48 = *(v47 - 8);
      v5[145] = v48;
      (*(v48 + 16))(v5 + 32, v5 + 12, v47);
      v49 = swift_task_alloc();
      v5[146] = v49;
      *v49 = v5;
      v49[1] = sub_1D608D824;
      v50 = v5[107];

      return sub_1D608F6DC((v5 + 100), v5 + 11, v50);
    }

    goto LABEL_158;
  }

  v52 = v5[133];
  v53 = v5[120];
  v54 = v5[119];
  v55 = v5[107];
  v56 = *(v5 + 4);
  *(v5 + 43) = *(v5 + 3);
  *(v5 + 44) = v56;
  *(v5 + 45) = *(v5 + 5);
  v57 = *(v5 + 2);
  *(v5 + 41) = *(v5 + 1);
  *(v5 + 42) = v57;
  v58 = type metadata accessor for FormatArrangementResolverContext(0, v54, v53, v32);
  (*(*(v58 - 8) + 8))(v5 + 82, v58);

  sub_1D608BC28(v55, v52, v59);

  v60 = sub_1D725C3FC();
  v61 = sub_1D7262EDC();

  if (os_log_type_enabled(v60, v61))
  {
    v264 = v5[139];
    v62 = v5[138];
    v63 = v5[137];
    v259 = *(v5 + 135);
    v64 = v5[133];
    v65 = v5[130];
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v269 = v67;
    *v66 = 136446210;
    v270 = v259;
    v271 = v63;
    v272 = v62;
    v68 = sub_1D5F90834();
    v70 = v69;

    v71 = sub_1D5BC5100(v68, v70, &v269);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_1D5B42000, v60, v61, "Format arrangement successfully resolved arrangement %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v72 = v67;
    v5 = v244;
    MEMORY[0x1DA6FD500](v72, -1, -1);
    MEMORY[0x1DA6FD500](v66, -1, -1);

    v264(v64, v65);
  }

  else
  {
    v73 = v5[139];
    v74 = v5[133];
    v75 = v5[130];

    v73(v74, v75);
  }

  v76 = MEMORY[0x1E69E7CC0];
  *&v270 = MEMORY[0x1E69E7CC0];
  v233 = v5[102];
  if (!sub_1D726279C())
  {
    goto LABEL_129;
  }

  v77 = 0;
  v242 = (v5 + 92);
  v78 = (v5 + 96);
  v227 = v5[129];
  v220 = v5[128];
  v222 = v5[123];
  v260 = v5[121];
  v229 = v5[127];
  v225 = *(v5[126] + 36);
  v247 = v5[122];
  v245 = (v247 + 8);
  v79 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v240 = MEMORY[0x1E69E7CC0];
  v243 = MEMORY[0x1E69E7CC0];
  v235 = MEMORY[0x1E69E7CC0];
  v81 = v233;
  v241 = (v5 + 96);
  while (1)
  {
    v76 = v5[126];
    v82 = sub_1D726277C();
    sub_1D726271C();
    if (v82)
    {
      (*(v229 + 16))(v5[129], v81 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v77, v5[126]);
      v83 = __OFADD__(v77, 1);
      v84 = v77 + 1;
      if (v83)
      {
        break;
      }

      goto LABEL_17;
    }

    v166 = v77;
    result = sub_1D7263DBC();
    if (v220 != 8)
    {
      goto LABEL_160;
    }

    v167 = v5[129];
    v168 = v5[126];
    v5[104] = result;
    v76 = result;
    (*(v229 + 16))(v167, v5 + 104, v168);
    swift_unknownObjectRelease();
    v84 = v77 + 1;
    if (__OFADD__(v166, 1))
    {
      break;
    }

LABEL_17:
    v231 = v84;
    v85 = v5[129];
    v86 = v5[126];
    v265 = v5[120];
    v87 = v5[119];
    v88 = *(v227 + v225);
    v89 = *(v229 + 8);

    v89(v85, v86);
    type metadata accessor for FormatArrangementComponentResult(0, v87, v265, v90);
    if (sub_1D726279C())
    {
      v91 = 0;
      v236 = v88 + 32;
      do
      {
        v92 = sub_1D726277C();
        sub_1D726271C();
        if ((v92 & 1) == 0)
        {
          goto LABEL_148;
        }

        v93 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          result = sub_1D7263DBC();
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          return result;
        }

        v94 = (v236 + 32 * v91);
        v95 = *v94;
        v96 = *(*v94 + 16);
        v97 = v243[2];
        v98 = v97 + v96;
        if (__OFADD__(v97, v96))
        {
          goto LABEL_150;
        }

        v99 = v94[1];
        v100 = *(v94 + 16);
        v238 = v94[3];
        v239 = v93;

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v243;
        if (!isUniquelyReferenced_nonNull_native || v98 > v243[3] >> 1)
        {
          if (v97 <= v98)
          {
            v103 = v97 + v96;
          }

          else
          {
            v103 = v97;
          }

          v102 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v103, 1, v243);
        }

        v243 = v102;
        if (*(v95 + 16))
        {
          v104 = (v102[3] >> 1) - v102[2];
          type metadata accessor for FormatContentSubgroup(0);
          if (v104 < v96)
          {
            goto LABEL_152;
          }

          swift_arrayInitWithCopy();

          v105 = v240;
          if (v96)
          {
            v106 = v243[2];
            v83 = __OFADD__(v106, v96);
            v107 = v106 + v96;
            if (v83)
            {
              goto LABEL_155;
            }

            v243[2] = v107;
          }
        }

        else
        {

          v105 = v240;
          if (v96)
          {
            goto LABEL_151;
          }
        }

        if (v100)
        {

          if (sub_1D726279C())
          {
            v108 = 0;
            v250 = v99;
            while (1)
            {
              v110 = sub_1D726277C();
              sub_1D726271C();
              if (v110)
              {
                (*(v247 + 16))(v5[125], v99 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v108, v5[121]);
                v83 = __OFADD__(v108, 1);
                v111 = v108 + 1;
                if (v83)
                {
                  goto LABEL_137;
                }
              }

              else
              {
                result = sub_1D7263DBC();
                if (v222 != 8)
                {
                  goto LABEL_159;
                }

                v152 = v5[125];
                v153 = v5[121];
                v5[105] = result;
                (*(v247 + 16))(v152, v5 + 105, v153);
                swift_unknownObjectRelease();
                v83 = __OFADD__(v108, 1);
                v111 = v108 + 1;
                if (v83)
                {
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
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  sub_1D7263DBC();
                  __break(1u);
                  goto LABEL_149;
                }
              }

              v266 = v79;
              v112 = v5[124];
              (*(v247 + 32))(v112, v5[125], v5[121]);
              v113 = *(v112 + *(v260 + 48));
              v114 = v113 >> 62;
              v115 = v113 >> 62 ? sub_1D7263BFC() : *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v116 = v80 >> 62;
              if (v80 >> 62)
              {
                v154 = sub_1D7263BFC();
                v118 = v154 + v115;
                if (__OFADD__(v154, v115))
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v117 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v118 = v117 + v115;
                if (__OFADD__(v117, v115))
                {
                  goto LABEL_138;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v116)
              {
                goto LABEL_53;
              }

LABEL_54:
              v80 = sub_1D7263DDC();
              v119 = v80 & 0xFFFFFFFFFFFFFF8;
              v120 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_55:
              v256 = v80;
              v121 = *(v119 + 16);
              if (v114)
              {
                v122 = sub_1D7263BFC();
                v254 = v111;
                if (v122)
                {
LABEL_57:
                  if (v120 - v121 < v115)
                  {
                    goto LABEL_142;
                  }

                  v123 = v119 + 8 * v121 + 32;
                  v252 = v115;
                  if (v114)
                  {
                    if (v122 < 1)
                    {
                      goto LABEL_146;
                    }

                    sub_1D5B9EE48(0);
                    sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48, MEMORY[0x1E69E6340]);
                    for (i = 0; i != v122; ++i)
                    {
                      v125 = sub_1D6D87760(v78, i, v113);
                      v127 = *v126;
                      swift_unknownObjectRetain();
                      (v125)(v78, 0);
                      *(v123 + 8 * i) = v127;
                    }
                  }

                  else
                  {
                    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
                    swift_arrayInitWithCopy();
                  }

                  v5 = v244;
                  v79 = v266;
                  if (v252 > 0)
                  {
                    v128 = *(v119 + 16);
                    v83 = __OFADD__(v128, v252);
                    v129 = v128 + v252;
                    if (v83)
                    {
                      goto LABEL_144;
                    }

                    *(v119 + 16) = v129;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                v122 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v254 = v111;
                if (v122)
                {
                  goto LABEL_57;
                }
              }

              v79 = v266;
              if (v115 > 0)
              {
                goto LABEL_139;
              }

LABEL_69:
              v130 = *(v5[124] + *(v260 + 52));
              v131 = v130 >> 62;
              if (v130 >> 62)
              {
                v132 = sub_1D7263BFC();
              }

              else
              {
                v132 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v133 = v79 >> 62;
              if (v79 >> 62)
              {
                v155 = sub_1D7263BFC();
                v135 = v155 + v132;
                if (__OFADD__(v155, v132))
                {
                  goto LABEL_140;
                }
              }

              else
              {
                v134 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v135 = v134 + v132;
                if (__OFADD__(v134, v132))
                {
                  goto LABEL_140;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v133)
                {
                  v136 = v79 & 0xFFFFFFFFFFFFFF8;
                  v137 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
                  if (v137 >= v135)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_79;
                }

LABEL_78:
                sub_1D7263BFC();
                goto LABEL_79;
              }

              if (v133)
              {
                goto LABEL_78;
              }

LABEL_79:
              v79 = sub_1D7263DDC();
              v136 = v79 & 0xFFFFFFFFFFFFFF8;
              v137 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_80:
              v138 = *(v136 + 16);
              if (v131)
              {
                v139 = sub_1D7263BFC();
                if (v139)
                {
LABEL_84:
                  if (v137 - v138 < v132)
                  {
                    goto LABEL_143;
                  }

                  v140 = v136 + 8 * v138 + 32;
                  if (v131)
                  {
                    if (v139 < 1)
                    {
                      goto LABEL_147;
                    }

                    v267 = v79;
                    sub_1D5E9D658(0);
                    sub_1D5B5990C(&qword_1EC8812C0, sub_1D5E9D658, MEMORY[0x1E69E6340]);
                    for (j = 0; j != v139; ++j)
                    {
                      v144 = sub_1D6D877E0(v242, j, v130);
                      v146 = *v145;
                      (v144)(v242, 0);
                      *(v140 + 8 * j) = v146;
                    }

                    v5 = v244;
                    v147 = v244[124];
                    v148 = v244[121];

                    (*v245)(v147, v148);
                    v79 = v267;
                    v78 = v241;
                  }

                  else
                  {
                    v141 = v5[124];
                    v142 = v5[121];
                    sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
                    swift_arrayInitWithCopy();
                    (*v245)(v141, v142);
                  }

                  v109 = v132 <= 0;
                  v149 = v132;
                  v108 = v254;
                  v80 = v256;
                  if (!v109)
                  {
                    v150 = *(v136 + 16);
                    v83 = __OFADD__(v150, v149);
                    v151 = v150 + v149;
                    if (v83)
                    {
                      goto LABEL_145;
                    }

                    *(v136 + 16) = v151;
                  }

                  goto LABEL_41;
                }
              }

              else
              {
                v139 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v139)
                {
                  goto LABEL_84;
                }
              }

              (*v245)(v5[124], v5[121]);

              v109 = v132 <= 0;
              v108 = v254;
              v80 = v256;
              if (!v109)
              {
                goto LABEL_141;
              }

LABEL_41:
              v99 = v250;
              if (v108 == sub_1D726279C())
              {
                goto LABEL_118;
              }
            }

            if (!v116)
            {
              v119 = v80 & 0xFFFFFFFFFFFFFF8;
              v120 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
              if (v120 >= v118)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }

LABEL_53:
            sub_1D7263BFC();
            goto LABEL_54;
          }

LABEL_118:
        }

        else
        {
          v156 = *(v99 + 16);
          v157 = *(v105 + 16);
          v158 = v157 + v156;
          if (__OFADD__(v157, v156))
          {
            goto LABEL_153;
          }

          v159 = swift_isUniquelyReferenced_nonNull_native();
          v160 = v240;
          if (!v159 || v158 > *(v240 + 24) >> 1)
          {
            if (v157 <= v158)
            {
              v161 = v157 + v156;
            }

            else
            {
              v161 = v157;
            }

            v160 = sub_1D6991D24(v159, v161, 1, v240);
          }

          v240 = v160;
          if (*(v99 + 16))
          {
            if ((*(v160 + 3) >> 1) - *(v160 + 2) < v156)
            {
              goto LABEL_156;
            }

            v162 = v160;
            swift_arrayInitWithCopy();

            if (v156)
            {
              v163 = *(v162 + 2);
              v83 = __OFADD__(v163, v156);
              v164 = v163 + v156;
              if (v83)
              {
                goto LABEL_157;
              }

              *(v162 + 2) = v164;
            }
          }

          else
          {

            if (v156)
            {
              goto LABEL_154;
            }
          }
        }

        if (v238)
        {
          v165 = swift_retain_n();
          MEMORY[0x1DA6F9CE0](v165);
          if (*((v270 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v270 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v235 = v270;
        }

        else
        {
        }

        v91 = v239;
      }

      while (v239 != sub_1D726279C());
    }

    v81 = v233;
    v77 = v231;
    if (v231 == sub_1D726279C())
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_129:
  v79 = v76;
  v80 = v76;
  v240 = v76;
  v243 = v76;
  v235 = v76;
LABEL_130:
  v257 = v80;
  v268 = v79;
  v169 = v5[117];
  v170 = v5[116];
  v246 = v5[114];
  v171 = v5[112];
  v172 = v5;
  v173 = v5[111];
  v174 = v172[110];
  v175 = v172[108];

  v176 = sub_1D72608BC();
  v177 = *(v176 - 8);
  v248 = *(v177 + 56);
  v248(v170, 1, 1, v176);
  v237 = *v175;
  v261 = *(v175 + 1);
  (*(v173 + 16))(v171, &v175[v169[5]], v174);
  v178 = v169[7];
  v179 = &v175[v169[6]];
  v232 = *v179;
  v255 = *(v179 + 1);
  v234 = *&v175[v178];
  v249 = *&v175[v178 + 8];
  v180 = v169[9];
  v181 = &v175[v169[8]];
  v226 = *v181;
  v251 = *(v181 + 1);
  v230 = *&v175[v180];
  v253 = *&v175[v180 + 8];
  v182 = &v175[v169[10]];
  v183 = *v182;
  v184 = *(v182 + 1);
  sub_1D609C5E8(v170, v246, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v185 = *(v177 + 48);
  v228 = v183;
  v218 = v176;
  v216 = v184;
  if (v185(v246, 1, v176) == 1)
  {
    v186 = v172[114];
    sub_1D606BE74(v172[108] + *(v172[117] + 44), v172[115]);
    LODWORD(v186) = v185(v186, 1, v176);

    v187 = v172;
    if (v186 != 1)
    {
      sub_1D5CF287C(v172[114], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }
  }

  else
  {
    v188 = v172[115];
    (*(v177 + 32))(v188, v172[114], v176);
    v248(v188, 0, 1, v176);

    v187 = v172;
  }

  v223 = v187[119];
  v224 = v187[120];
  v189 = v187[118];
  v190 = v187[117];
  v191 = v187[115];
  v217 = v187[113];
  v192 = v187[111];
  v193 = v187[108];
  v194 = *(v193 + v190[12]);
  v195 = *(v193 + v190[13]);
  v196 = *(v193 + v190[14]);
  v219 = v187[109];
  v197 = *(v193 + v190[15]);
  v198 = *(v193 + v190[16]);
  v199 = v187;
  v200 = *(v193 + v190[18]);
  v215 = *(v193 + v190[19]);
  v221 = v199[106];
  *v189 = v237;
  *(v189 + 1) = v261;
  (*(v192 + 32))(&v189[v169[5]]);
  v201 = &v189[v169[6]];
  *v201 = v232;
  *(v201 + 1) = v255;
  v202 = &v189[v169[7]];
  *v202 = v234;
  *(v202 + 1) = v249;
  v203 = &v189[v169[8]];
  *v203 = v226;
  *(v203 + 1) = v251;
  v204 = &v189[v169[9]];
  *v204 = v230;
  *(v204 + 1) = v253;
  v205 = &v189[v169[10]];
  *v205 = v228;
  *(v205 + 1) = v216;
  sub_1D609C5E8(v191, &v189[v190[11]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  *&v189[v190[12]] = v194;
  *&v189[v190[13]] = v195;
  *&v189[v190[14]] = v196;
  *&v189[v190[15]] = v197;
  *&v189[v190[16]] = v198;
  *&v189[v190[17]] = v243;
  *&v189[v190[18]] = v200;
  *&v189[v190[19]] = v215;
  v248(v217, 1, 1, v218);

  v206 = MEMORY[0x1E69E7CC0];
  v207 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v208 = sub_1D605A62C(v206);
  v209 = sub_1D605A5F8(v206);
  v210 = sub_1D605AD18(v206);
  v211 = sub_1D605B9BC(v206);
  v212 = sub_1D605B9F0(v206);
  v213 = sub_1D605ACB8(v206);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v257, v207, v206, v206, v208, v209, v206, v206, v219, v206, v268, v210, v240, v206, v211, v212, v206, v213, v217);
  sub_1D6DF4574(v189, v219, v235, v223, v224, v221);

  v214 = v244[1];

  return v214();
}

uint64_t sub_1D608D824(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = v1;

  if (v1)
  {
    v4 = *(v3 + 1160);
    v5 = *(v3 + 1152);

    v6 = *(v3 + 176);
    v7 = *(v3 + 192);
    v8 = *(v3 + 208);
    v9 = *(v3 + 240);
    *(v3 + 464) = *(v3 + 224);
    *(v3 + 480) = v9;
    *(v3 + 432) = v7;
    *(v3 + 448) = v8;
    *(v3 + 416) = v6;
    v10 = *(v4 + 8);
    v10(v3 + 416, v5);
    v11 = *(v3 + 64);
    *(v3 + 368) = *(v3 + 48);
    *(v3 + 384) = v11;
    *(v3 + 400) = *(v3 + 80);
    v12 = *(v3 + 32);
    *(v3 + 336) = *(v3 + 16);
    *(v3 + 352) = v12;
    v10(v3 + 336, v5);

    v13 = sub_1D608F370;
  }

  else
  {
    v14 = *(v3 + 1160);
    v15 = *(v3 + 1152);
    v16 = *(v3 + 176);
    v17 = *(v3 + 192);
    v18 = *(v3 + 240);
    *(v3 + 544) = *(v3 + 224);
    *(v3 + 560) = v18;
    v19 = *(v3 + 208);
    *(v3 + 512) = v17;
    *(v3 + 528) = v19;
    *(v3 + 496) = v16;
    v20 = *(v14 + 8);
    v21 = *(v3 + 1136);
    *(v3 + 1192) = v20;
    *(v3 + 1200) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22 = *(v3 + 809);
    v20(v3 + 496, v15);
    sub_1D5EB6624(v21, v22);
    v13 = sub_1D608DA10;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1D608DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v276 = v4;
  v5 = v4;
  v6 = *(v4 + 1184);
  sub_1D69ABCD4(*(v4 + 1176), *(v4 + 1152), a3, a4);
  v246 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = *(v4 + 1192);
    v9 = *(v4 + 1152);

    v10 = *(v5 + 4);
    *(v5 + 38) = *(v5 + 3);
    *(v5 + 39) = v10;
    *(v5 + 40) = *(v5 + 5);
    v11 = *(v5 + 2);
    *(v5 + 36) = *(v5 + 1);
    *(v5 + 37) = v11;
    v8(v5 + 72, v9);

    sub_1D608BC28(v5[107], v5[132], v12);

    v13 = v7;
    v14 = sub_1D725C3FC();
    v15 = sub_1D7262EBC();

    v266 = v7;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v5[138];
      v17 = v5[137];
      v256 = *(v5 + 135);
      v259 = v5[132];
      v262 = v5[139];
      v18 = v5[130];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v272 = v21;
      *v19 = 136446466;
      v273 = v256;
      v274 = v17;
      v275 = v16;
      v22 = sub_1D5F90834();
      v24 = v23;

      v25 = sub_1D5BC5100(v22, v24, &v272);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2114;
      v26 = v266;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_1D5B42000, v14, v15, "Format arrangement failed resolving arrangement %{public}s, error=%{public}@", v19, 0x16u);
      sub_1D609C8C4(v20, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1DA6FD500](v21, -1, -1);
      v28 = v19;
      v5 = v246;
      MEMORY[0x1DA6FD500](v28, -1, -1);

      v262(v259, v18);
    }

    else
    {
      v55 = v5[139];
      v56 = v5[132];
      v57 = v5[130];

      v55(v56, v57);
    }

    swift_willThrow();

    v58 = v5[1];
    goto LABEL_9;
  }

  v29 = *(v4 + 1144);
  v30 = *(v4 + 960);
  v31 = *(v4 + 952);
  *(v4 + 824) = *(v4 + 1176);
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72627AC();
  type metadata accessor for FormatArrangementSlot(0, v31, v30, v32);
  if (v29 != sub_1D726279C())
  {
    v60 = *(v4 + 1144);
    v61 = sub_1D726277C();
    sub_1D726271C();
    if (v61)
    {
      v62 = v5[141] + 16 * v60;
      result = *(v62 + 32);
      v5[142] = result;
      v63 = *(v62 + 40);
      *(v5 + 809) = v63;
      v5[143] = v60 + 1;
      if (!__OFADD__(v60, 1))
      {
        v64 = v5[120];
        v65 = v5[119];
        v5[100] = result;
        *(v5 + 808) = v63;
        v66 = *(v5 + 3);
        v67 = *(v5 + 4);
        *(v5 + 8) = v66;
        *(v5 + 9) = v67;
        v68 = *(v5 + 5);
        v70 = *(v5 + 1);
        v69 = *(v5 + 2);
        *(v5 + 6) = v70;
        *(v5 + 7) = v69;
        *(v5 + 14) = v67;
        *(v5 + 15) = v68;
        *(v5 + 12) = v69;
        *(v5 + 13) = v66;
        *(v5 + 10) = v68;
        *(v5 + 11) = v70;
        sub_1D5EB6610(result, v63);
        v72 = type metadata accessor for FormatArrangementResolverContext(0, v65, v64, v71);
        v5[144] = v72;
        v73 = *(v72 - 8);
        v5[145] = v73;
        (*(v73 + 16))(v5 + 32, v5 + 12, v72);
        v74 = swift_task_alloc();
        v5[146] = v74;
        *v74 = v5;
        v74[1] = sub_1D608D824;
        v75 = v5[107];

        return sub_1D608F6DC((v5 + 100), v5 + 11, v75);
      }

      goto LABEL_163;
    }

LABEL_162:
    result = sub_1D7263DBC();
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    return result;
  }

  v34 = *(v4 + 1064);
  v35 = *(v4 + 960);
  v36 = *(v4 + 952);
  v37 = *(v4 + 856);
  v38 = *(v4 + 64);
  *(v4 + 688) = *(v4 + 48);
  *(v4 + 704) = v38;
  *(v4 + 720) = *(v4 + 80);
  v39 = *(v4 + 32);
  *(v4 + 656) = *(v4 + 16);
  *(v4 + 672) = v39;
  v40 = type metadata accessor for FormatArrangementResolverContext(0, v36, v35, v33);
  (*(*(v40 - 8) + 8))(v4 + 656, v40);

  sub_1D608BC28(v37, v34, v41);

  v42 = sub_1D725C3FC();
  v43 = sub_1D7262EDC();

  if (os_log_type_enabled(v42, v43))
  {
    v267 = *(v4 + 1112);
    v44 = *(v4 + 1104);
    v45 = *(v4 + 1096);
    v263 = *(v4 + 1080);
    v46 = *(v4 + 1064);
    v47 = *(v4 + 1040);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v272 = v49;
    *v48 = 136446210;
    v273 = v263;
    v274 = v45;
    v275 = v44;
    v50 = sub_1D5F90834();
    v52 = v51;

    v53 = sub_1D5BC5100(v50, v52, &v272);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1D5B42000, v42, v43, "Format arrangement successfully resolved arrangement %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v54 = v49;
    v5 = v246;
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](v48, -1, -1);

    v267(v46, v47);
  }

  else
  {
    v76 = *(v4 + 1112);
    v77 = *(v4 + 1064);
    v78 = *(v4 + 1040);

    v76(v77, v78);
  }

  v79 = MEMORY[0x1E69E7CC0];
  *&v273 = MEMORY[0x1E69E7CC0];
  v235 = v5[102];
  if (!sub_1D726279C())
  {
    goto LABEL_135;
  }

  v80 = 0;
  v244 = (v5 + 92);
  v81 = (v5 + 96);
  v229 = v5[129];
  v222 = v5[128];
  v224 = v5[123];
  v264 = v5[121];
  v231 = v5[127];
  v227 = *(v5[126] + 36);
  v249 = v5[122];
  v247 = (v249 + 8);
  v82 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v242 = MEMORY[0x1E69E7CC0];
  v245 = MEMORY[0x1E69E7CC0];
  v237 = MEMORY[0x1E69E7CC0];
  v84 = v235;
  v243 = (v5 + 96);
  while (1)
  {
    v79 = v5[126];
    v85 = sub_1D726277C();
    sub_1D726271C();
    if (v85)
    {
      (*(v231 + 16))(v5[129], v84 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v80, v5[126]);
      v86 = __OFADD__(v80, 1);
      v87 = v80 + 1;
      if (v86)
      {
        break;
      }

      goto LABEL_23;
    }

    v169 = v80;
    result = sub_1D7263DBC();
    if (v222 != 8)
    {
      goto LABEL_165;
    }

    v170 = v5[129];
    v171 = v5[126];
    v5[104] = result;
    v79 = result;
    (*(v231 + 16))(v170, v5 + 104, v171);
    swift_unknownObjectRelease();
    v87 = v80 + 1;
    if (__OFADD__(v169, 1))
    {
      break;
    }

LABEL_23:
    v233 = v87;
    v88 = v5[129];
    v89 = v5[126];
    v268 = v5[120];
    v90 = v5[119];
    v91 = *(v229 + v227);
    v92 = *(v231 + 8);

    v92(v88, v89);
    type metadata accessor for FormatArrangementComponentResult(0, v90, v268, v93);
    if (sub_1D726279C())
    {
      v94 = 0;
      v238 = v91 + 32;
      while (1)
      {
        v95 = sub_1D726277C();
        sub_1D726271C();
        if ((v95 & 1) == 0)
        {
          goto LABEL_152;
        }

        v96 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        v97 = (v238 + 32 * v94);
        v98 = *v97;
        v99 = *(*v97 + 16);
        v100 = v245[2];
        v101 = v100 + v99;
        if (__OFADD__(v100, v99))
        {
          goto LABEL_154;
        }

        v102 = v97[1];
        v103 = *(v97 + 16);
        v240 = v97[3];
        v241 = v96;

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v245;
        if (!isUniquelyReferenced_nonNull_native || v101 > v245[3] >> 1)
        {
          if (v100 <= v101)
          {
            v106 = v100 + v99;
          }

          else
          {
            v106 = v100;
          }

          v105 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v106, 1, v245);
        }

        v245 = v105;
        if (*(v98 + 16))
        {
          v107 = (v105[3] >> 1) - v105[2];
          type metadata accessor for FormatContentSubgroup(0);
          if (v107 < v99)
          {
            goto LABEL_156;
          }

          swift_arrayInitWithCopy();

          v108 = v242;
          if (v99)
          {
            v109 = v245[2];
            v86 = __OFADD__(v109, v99);
            v110 = v109 + v99;
            if (v86)
            {
              goto LABEL_159;
            }

            v245[2] = v110;
          }
        }

        else
        {

          v108 = v242;
          if (v99)
          {
            goto LABEL_155;
          }
        }

        if (v103)
        {

          if (sub_1D726279C())
          {
            v111 = 0;
            v252 = v102;
            while (1)
            {
              v113 = sub_1D726277C();
              sub_1D726271C();
              if (v113)
              {
                (*(v249 + 16))(v5[125], v102 + ((*(v249 + 80) + 32) & ~*(v249 + 80)) + *(v249 + 72) * v111, v5[121]);
                v86 = __OFADD__(v111, 1);
                v114 = v111 + 1;
                if (v86)
                {
                  goto LABEL_141;
                }
              }

              else
              {
                result = sub_1D7263DBC();
                if (v224 != 8)
                {
                  goto LABEL_164;
                }

                v155 = v5[125];
                v156 = v5[121];
                v5[105] = result;
                (*(v249 + 16))(v155, v5 + 105, v156);
                swift_unknownObjectRelease();
                v86 = __OFADD__(v111, 1);
                v114 = v111 + 1;
                if (v86)
                {
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  sub_1D7263DBC();
                  __break(1u);
                  goto LABEL_153;
                }
              }

              v269 = v82;
              v115 = v5[124];
              (*(v249 + 32))(v115, v5[125], v5[121]);
              v116 = *(v115 + *(v264 + 48));
              v117 = v116 >> 62;
              v118 = v116 >> 62 ? sub_1D7263BFC() : *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v119 = v83 >> 62;
              if (v83 >> 62)
              {
                v157 = sub_1D7263BFC();
                v121 = v157 + v118;
                if (__OFADD__(v157, v118))
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v120 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v121 = v120 + v118;
                if (__OFADD__(v120, v118))
                {
                  goto LABEL_142;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v119)
              {
                goto LABEL_59;
              }

LABEL_60:
              v83 = sub_1D7263DDC();
              v122 = v83 & 0xFFFFFFFFFFFFFF8;
              v123 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_61:
              v260 = v83;
              v124 = *(v122 + 16);
              if (v117)
              {
                v125 = sub_1D7263BFC();
                v257 = v114;
                if (v125)
                {
LABEL_63:
                  if (v123 - v124 < v118)
                  {
                    goto LABEL_146;
                  }

                  v126 = v122 + 8 * v124 + 32;
                  v254 = v118;
                  if (v117)
                  {
                    if (v125 < 1)
                    {
                      goto LABEL_150;
                    }

                    sub_1D5B9EE48(0);
                    sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48, MEMORY[0x1E69E6340]);
                    for (i = 0; i != v125; ++i)
                    {
                      v128 = sub_1D6D87760(v81, i, v116);
                      v130 = *v129;
                      swift_unknownObjectRetain();
                      (v128)(v81, 0);
                      *(v126 + 8 * i) = v130;
                    }
                  }

                  else
                  {
                    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
                    swift_arrayInitWithCopy();
                  }

                  v5 = v246;
                  v82 = v269;
                  if (v254 > 0)
                  {
                    v131 = *(v122 + 16);
                    v86 = __OFADD__(v131, v254);
                    v132 = v131 + v254;
                    if (v86)
                    {
                      goto LABEL_148;
                    }

                    *(v122 + 16) = v132;
                  }

                  goto LABEL_75;
                }
              }

              else
              {
                v125 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v257 = v114;
                if (v125)
                {
                  goto LABEL_63;
                }
              }

              v82 = v269;
              if (v118 > 0)
              {
                goto LABEL_143;
              }

LABEL_75:
              v133 = *(v5[124] + *(v264 + 52));
              v134 = v133 >> 62;
              if (v133 >> 62)
              {
                v135 = sub_1D7263BFC();
              }

              else
              {
                v135 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v136 = v82 >> 62;
              if (v82 >> 62)
              {
                v158 = sub_1D7263BFC();
                v138 = v158 + v135;
                if (__OFADD__(v158, v135))
                {
                  goto LABEL_144;
                }
              }

              else
              {
                v137 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v138 = v137 + v135;
                if (__OFADD__(v137, v135))
                {
                  goto LABEL_144;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v136)
                {
                  v139 = v82 & 0xFFFFFFFFFFFFFF8;
                  v140 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
                  if (v140 >= v138)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_85;
                }

LABEL_84:
                sub_1D7263BFC();
                goto LABEL_85;
              }

              if (v136)
              {
                goto LABEL_84;
              }

LABEL_85:
              v82 = sub_1D7263DDC();
              v139 = v82 & 0xFFFFFFFFFFFFFF8;
              v140 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_86:
              v141 = *(v139 + 16);
              if (v134)
              {
                v142 = sub_1D7263BFC();
                if (v142)
                {
LABEL_90:
                  if (v140 - v141 < v135)
                  {
                    goto LABEL_147;
                  }

                  v143 = v139 + 8 * v141 + 32;
                  if (v134)
                  {
                    if (v142 < 1)
                    {
                      goto LABEL_151;
                    }

                    v270 = v82;
                    sub_1D5E9D658(0);
                    sub_1D5B5990C(&qword_1EC8812C0, sub_1D5E9D658, MEMORY[0x1E69E6340]);
                    for (j = 0; j != v142; ++j)
                    {
                      v147 = sub_1D6D877E0(v244, j, v133);
                      v149 = *v148;
                      (v147)(v244, 0);
                      *(v143 + 8 * j) = v149;
                    }

                    v5 = v246;
                    v150 = v246[124];
                    v151 = v246[121];

                    (*v247)(v150, v151);
                    v82 = v270;
                    v81 = v243;
                  }

                  else
                  {
                    v144 = v5[124];
                    v145 = v5[121];
                    sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
                    swift_arrayInitWithCopy();
                    (*v247)(v144, v145);
                  }

                  v112 = v135 <= 0;
                  v83 = v260;
                  v152 = v135;
                  v111 = v257;
                  if (!v112)
                  {
                    v153 = *(v139 + 16);
                    v86 = __OFADD__(v153, v152);
                    v154 = v153 + v152;
                    if (v86)
                    {
                      goto LABEL_149;
                    }

                    *(v139 + 16) = v154;
                  }

                  goto LABEL_47;
                }
              }

              else
              {
                v142 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v142)
                {
                  goto LABEL_90;
                }
              }

              (*v247)(v5[124], v5[121]);

              v112 = v135 <= 0;
              v83 = v260;
              v111 = v257;
              if (!v112)
              {
                goto LABEL_145;
              }

LABEL_47:
              v102 = v252;
              if (v111 == sub_1D726279C())
              {
                goto LABEL_124;
              }
            }

            if (!v119)
            {
              v122 = v83 & 0xFFFFFFFFFFFFFF8;
              v123 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
              if (v123 >= v121)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

LABEL_59:
            sub_1D7263BFC();
            goto LABEL_60;
          }

LABEL_124:
        }

        else
        {
          v159 = *(v102 + 16);
          v160 = *(v108 + 16);
          v161 = v160 + v159;
          if (__OFADD__(v160, v159))
          {
            goto LABEL_157;
          }

          v162 = swift_isUniquelyReferenced_nonNull_native();
          v163 = v242;
          if (!v162 || v161 > *(v242 + 24) >> 1)
          {
            if (v160 <= v161)
            {
              v164 = v160 + v159;
            }

            else
            {
              v164 = v160;
            }

            v163 = sub_1D6991D24(v162, v164, 1, v242);
          }

          v242 = v163;
          if (*(v102 + 16))
          {
            if ((*(v163 + 3) >> 1) - *(v163 + 2) < v159)
            {
              goto LABEL_160;
            }

            v165 = v163;
            swift_arrayInitWithCopy();

            if (v159)
            {
              v166 = *(v165 + 2);
              v86 = __OFADD__(v166, v159);
              v167 = v166 + v159;
              if (v86)
              {
                goto LABEL_161;
              }

              *(v165 + 2) = v167;
            }
          }

          else
          {

            if (v159)
            {
              goto LABEL_158;
            }
          }
        }

        if (v240)
        {
          v168 = swift_retain_n();
          MEMORY[0x1DA6F9CE0](v168);
          if (*((v273 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v237 = v273;
        }

        else
        {
        }

        v94 = v241;
        if (v241 == sub_1D726279C())
        {
          goto LABEL_20;
        }
      }

LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_20:

    v84 = v235;
    v80 = v233;
    if (v233 == sub_1D726279C())
    {
      goto LABEL_136;
    }
  }

  __break(1u);
LABEL_135:
  v82 = v79;
  v83 = v79;
  v242 = v79;
  v245 = v79;
  v237 = v79;
LABEL_136:
  v261 = v83;
  v271 = v82;
  v172 = v5[117];
  v173 = v5[116];
  v248 = v5[114];
  v174 = v5[112];
  v175 = v5;
  v176 = v5[111];
  v177 = v175[110];
  v178 = v175[108];

  v179 = sub_1D72608BC();
  v180 = *(v179 - 8);
  v250 = *(v180 + 56);
  v250(v173, 1, 1, v179);
  v239 = *v178;
  v265 = *(v178 + 1);
  (*(v176 + 16))(v174, &v178[v172[5]], v177);
  v181 = v172[7];
  v182 = &v178[v172[6]];
  v234 = *v182;
  v258 = *(v182 + 1);
  v236 = *&v178[v181];
  v251 = *&v178[v181 + 8];
  v183 = v172[9];
  v184 = &v178[v172[8]];
  v228 = *v184;
  v253 = *(v184 + 1);
  v232 = *&v178[v183];
  v255 = *&v178[v183 + 8];
  v185 = &v178[v172[10]];
  v186 = *v185;
  v187 = *(v185 + 1);
  sub_1D609C5E8(v173, v248, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v188 = *(v180 + 48);
  v230 = v186;
  v220 = v179;
  v218 = v187;
  if (v188(v248, 1, v179) == 1)
  {
    v189 = v175[114];
    sub_1D606BE74(v175[108] + *(v175[117] + 44), v175[115]);
    LODWORD(v189) = v188(v189, 1, v179);

    v190 = v175;
    if (v189 != 1)
    {
      sub_1D5CF287C(v175[114], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }
  }

  else
  {
    v191 = v175[115];
    (*(v180 + 32))(v191, v175[114], v179);
    v250(v191, 0, 1, v179);

    v190 = v175;
  }

  v225 = v190[119];
  v226 = v190[120];
  v192 = v190[118];
  v193 = v190[117];
  v194 = v190[115];
  v219 = v190[113];
  v195 = v190[111];
  v196 = v190[108];
  v197 = *(v196 + v193[12]);
  v198 = *(v196 + v193[13]);
  v199 = *(v196 + v193[14]);
  v221 = v190[109];
  v200 = *(v196 + v193[15]);
  v201 = *(v196 + v193[16]);
  v202 = v190;
  v203 = *(v196 + v193[18]);
  v217 = *(v196 + v193[19]);
  v223 = v202[106];
  *v192 = v239;
  *(v192 + 1) = v265;
  (*(v195 + 32))(&v192[v172[5]]);
  v204 = &v192[v172[6]];
  *v204 = v234;
  *(v204 + 1) = v258;
  v205 = &v192[v172[7]];
  *v205 = v236;
  *(v205 + 1) = v251;
  v206 = &v192[v172[8]];
  *v206 = v228;
  *(v206 + 1) = v253;
  v207 = &v192[v172[9]];
  *v207 = v232;
  *(v207 + 1) = v255;
  v208 = &v192[v172[10]];
  *v208 = v230;
  *(v208 + 1) = v218;
  sub_1D609C5E8(v194, &v192[v193[11]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  *&v192[v193[12]] = v197;
  *&v192[v193[13]] = v198;
  *&v192[v193[14]] = v199;
  *&v192[v193[15]] = v200;
  *&v192[v193[16]] = v201;
  *&v192[v193[17]] = v245;
  *&v192[v193[18]] = v203;
  *&v192[v193[19]] = v217;
  v250(v219, 1, 1, v220);

  v209 = MEMORY[0x1E69E7CC0];
  v210 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v211 = sub_1D605A62C(v209);
  v212 = sub_1D605A5F8(v209);
  v213 = sub_1D605AD18(v209);
  v214 = sub_1D605B9BC(v209);
  v215 = sub_1D605B9F0(v209);
  v216 = sub_1D605ACB8(v209);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v261, v210, v209, v209, v211, v212, v209, v209, v221, v209, v271, v213, v242, v209, v214, v215, v209, v216, v219);
  sub_1D6DF4574(v192, v221, v237, v225, v226, v223);

  v58 = v246[1];
LABEL_9:

  return v58();
}