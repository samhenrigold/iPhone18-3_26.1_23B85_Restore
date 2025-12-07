uint64_t sub_1E60787D4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000) != 0)
  {
    return MEMORY[0x1EEE377C0](a1 & 1, a2, a3);
  }

  else
  {
    return MEMORY[0x1EEE377C8](a1 & 1, (a1 >> 8) & 1, a2, a3);
  }
}

uint64_t sub_1E60787FC@<X0>(unsigned __int8 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = a1;
  v4 = sub_1E65E07B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v22[1] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v25 = v22 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v24 = v22 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v22 - v19;
  if (v3 > 1)
  {
    sub_1E65E0768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v5 + 8))(v10, v4);
    if (v23)
    {
      sub_1E65E0768();
    }

    else
    {
      sub_1E65E0778();
    }

    sub_1E65E0768();
    sub_1E65E0778();
    sub_1E65E0778();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v5 + 8))(v20, v4);
    if (v23)
    {
      sub_1E65E0768();
    }

    else
    {
      sub_1E65E0778();
    }

    sub_1E65E0778();
    sub_1E65E0768();
    sub_1E65E0778();
    sub_1E65E0778();
  }

  return sub_1E65E09E8();
}

uint64_t sub_1E6078BBC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AC8 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED0965D0);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071AA8 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096570;
    }

    else
    {
      if (qword_1ED071A90 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096528;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E6078E1C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AC0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED0965B8);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071AA0 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096558;
    }

    else
    {
      if (qword_1ED071A88 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096510;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E607907C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AB0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED096588);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071A98 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096540;
    }

    else
    {
      if (qword_1ED071A80 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED0964F8;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E60792DC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      v6 = *MEMORY[0x1E699DAA0];
      v7 = sub_1E65E0988();
      v8 = *(*(v7 - 8) + 104);

      return v8(a2, v6, v7);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    v3 = sub_1E65E0988();
    if (v9 > 1u)
    {
      v4 = MEMORY[0x1E699DAA0];
    }

    else
    {
      v4 = MEMORY[0x1E699DA98];
    }

    return (*(*(v3 - 8) + 104))(a2, *v4, v3);
  }

  return result;
}

uint64_t sub_1E6079494@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  v1 = sub_1E65E07B8();
  v160 = *(v1 - 8);
  v161 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v159 = v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65E3068();
  v163 = *(v3 - 8);
  v164 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v162 = v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E3168();
  v166 = *(v5 - 8);
  v167 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v168 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v158 = v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v155 = v137 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = v137 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v153 = v137 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v156 = v137 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v151 = v137 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v148 = v137 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v142 = v137 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v145 = v137 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v141 = v137 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v144 = v137 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v138 = v137 - v30;
  v165 = sub_1E65E05C8();
  v170 = *(v165 - 8);
  v31 = MEMORY[0x1EEE9AC00](v165);
  v154 = v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v152 = v137 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v150 = v137 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v140 = v137 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = v137 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = v137 - v42;
  v44 = sub_1E65E3088();
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v149 = v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v147 = v137 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v146 = v137 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v139 = v137 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v137[2] = v137 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v137[1] = v137 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F80, &unk_1E65EF100);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v143 = v137 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = v137 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = v137 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = v137 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = v137 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = v137 - v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  if (v171 <= 2u)
  {
    if (v171)
    {
      if (v171 == 1)
      {
        v73 = 1;
        (*(v163 + 56))(v70, 1, 1, v164);
        sub_1E65E0678();
        v74 = sub_1E65E06A8();
        if (*(v74 + 16))
        {
          v75 = sub_1E64290E4(0);
          v76 = v165;
          v77 = v141;
          if (v78)
          {
            (*(v170 + 16))(v141, *(v74 + 56) + *(v170 + 72) * v75, v165);
            v73 = 0;
          }
        }

        else
        {
          v76 = v165;
          v77 = v141;
        }

        v132 = v170;
        (*(v170 + 56))(v77, v73, 1, v76);
        v133 = v145;
        sub_1E607A874(v77, v145);
        if ((*(v132 + 48))(v133, 1, v76) == 1)
        {
          sub_1E65E0598();

          sub_1E607A8E4(v133);
        }

        else
        {

          (*(v132 + 32))(v41, v133, v76);
        }

        sub_1E65E05A8();
        sub_1E65E0588();
        sub_1E65E05B8();
        sub_1E65E3078();
        (*(v132 + 8))(v41, v76);
        (*(v166 + 104))(v168, *MEMORY[0x1E699EB48], v167);
      }

      else
      {
        v112 = 1;
        (*(v163 + 56))(v67, 1, 1, v164);
        sub_1E65E0678();
        v113 = sub_1E65E06A8();
        if (*(v113 + 16))
        {
          v114 = sub_1E64290E4(0);
          v115 = v165;
          v116 = v170;
          v117 = v142;
          v118 = v140;
          if (v119)
          {
            (*(v170 + 16))(v142, *(v113 + 56) + *(v170 + 72) * v114, v165);
            v112 = 0;
          }
        }

        else
        {
          v115 = v165;
          v116 = v170;
          v117 = v142;
          v118 = v140;
        }

        (*(v116 + 56))(v117, v112, 1, v115);
        v135 = v148;
        sub_1E607A874(v117, v148);
        if ((*(v116 + 48))(v135, 1, v115) == 1)
        {
          sub_1E65E0598();

          sub_1E607A8E4(v135);
        }

        else
        {

          (*(v116 + 32))(v118, v135, v115);
        }

        sub_1E65E05A8();
        sub_1E65E0588();
        sub_1E65E05B8();
        sub_1E65E3078();
        (*(v116 + 8))(v118, v115);
        (*(v166 + 104))(v168, *MEMORY[0x1E699EB48], v167);
      }
    }

    else
    {
      v93 = 1;
      (*(v163 + 56))(v72, 1, 1, v164);
      sub_1E65E0678();
      v94 = sub_1E65E06A8();
      if (*(v94 + 16))
      {
        v95 = sub_1E64290E4(0);
        v96 = v165;
        v97 = v170;
        v98 = v138;
        if (v99)
        {
          (*(v170 + 16))(v138, *(v94 + 56) + *(v170 + 72) * v95, v165);
          v93 = 0;
        }
      }

      else
      {
        v96 = v165;
        v97 = v170;
        v98 = v138;
      }

      (*(v97 + 56))(v98, v93, 1, v96);
      v130 = v144;
      sub_1E607A874(v98, v144);
      if ((*(v97 + 48))(v130, 1, v96) == 1)
      {
        sub_1E65E0598();

        sub_1E607A8E4(v130);
      }

      else
      {

        (*(v97 + 32))(v43, v130, v96);
      }

      sub_1E65E05A8();
      sub_1E65E0588();
      sub_1E65E05B8();
      sub_1E65E3078();
      (*(v97 + 8))(v43, v96);
      (*(v166 + 104))(v168, *MEMORY[0x1E699EB48], v167);
    }

    return sub_1E65E30E8();
  }

  if (v171 != 3)
  {
    v79 = v170;
    if (v171 == 4)
    {
      v80 = v159;
      sub_1E65E0668();
      sub_1E65E0798();
      sub_1E65E07A8();
      v81 = v162;
      sub_1E65E3038();
      (*(v160 + 8))(v80, v161);
      sub_1E65E3028();
      v82 = v61;
      sub_1E65E3038();
      v83 = v163;
      v84 = v81;
      v85 = v164;
      (*(v163 + 8))(v84, v164);
      v86 = 1;
      (*(v83 + 56))(v82, 0, 1, v85);
      sub_1E65E0678();
      v87 = sub_1E65E06A8();
      if (*(v87 + 16))
      {
        v88 = sub_1E64290E4(0);
        v89 = v165;
        v90 = v153;
        v91 = v152;
        if (v92)
        {
          (*(v79 + 16))(v153, *(v87 + 56) + *(v79 + 72) * v88, v165);
          v86 = 0;
        }
      }

      else
      {
        v89 = v165;
        v90 = v153;
        v91 = v152;
      }

      (*(v79 + 56))(v90, v86, 1, v89);
      v134 = v157;
      sub_1E607A874(v90, v157);
      if ((*(v79 + 48))(v134, 1, v89) != 1)
      {
LABEL_50:

        (*(v79 + 32))(v91, v134, v89);
        goto LABEL_51;
      }
    }

    else
    {
      v120 = v159;
      sub_1E65E0668();
      sub_1E65E0798();
      sub_1E65E07A8();
      v121 = v162;
      sub_1E65E3038();
      (*(v160 + 8))(v120, v161);
      sub_1E65E3028();
      sub_1E65E3048();
      sub_1E65E3058();
      v122 = v143;
      sub_1E65E3038();
      v124 = v163;
      v123 = v164;
      (*(v163 + 8))(v121, v164);
      v125 = 1;
      (*(v124 + 56))(v122, 0, 1, v123);
      sub_1E65E0678();
      v126 = sub_1E65E06A8();
      if (*(v126 + 16))
      {
        v127 = sub_1E64290E4(0);
        v89 = v165;
        v91 = v154;
        v128 = v155;
        if (v129)
        {
          (*(v79 + 16))(v155, *(v126 + 56) + *(v79 + 72) * v127, v165);
          v125 = 0;
        }
      }

      else
      {
        v89 = v165;
        v91 = v154;
        v128 = v155;
      }

      (*(v79 + 56))(v128, v125, 1, v89);
      v134 = v158;
      sub_1E607A874(v128, v158);
      if ((*(v79 + 48))(v134, 1, v89) != 1)
      {
        goto LABEL_50;
      }
    }

    sub_1E65E0598();

    sub_1E607A8E4(v134);
LABEL_51:
    sub_1E65E05A8();
    sub_1E65E0588();
    sub_1E65E05B8();
    sub_1E65E3078();
    (*(v79 + 8))(v91, v89);
    (*(v166 + 104))(v168, *MEMORY[0x1E699EB38], v167);
    return sub_1E65E30E8();
  }

  v100 = v159;
  sub_1E65E0668();
  sub_1E65E0798();
  sub_1E65E07A8();
  v101 = v162;
  sub_1E65E3038();
  (*(v160 + 8))(v100, v161);
  sub_1E65E3028();
  sub_1E65E3048();
  sub_1E65E3058();
  sub_1E65E3038();
  v103 = v163;
  v102 = v164;
  (*(v163 + 8))(v101, v164);
  v104 = 1;
  (*(v103 + 56))(v64, 0, 1, v102);
  sub_1E65E0678();
  v105 = sub_1E65E06A8();
  v106 = v170;
  if (*(v105 + 16))
  {
    v107 = sub_1E64290E4(0);
    v108 = v165;
    v109 = v151;
    v110 = v150;
    if (v111)
    {
      (*(v106 + 16))(v151, *(v105 + 56) + *(v106 + 72) * v107, v165);
      v104 = 0;
    }
  }

  else
  {
    v108 = v165;
    v109 = v151;
    v110 = v150;
  }

  (*(v106 + 56))(v109, v104, 1, v108);
  v131 = v156;
  sub_1E607A874(v109, v156);
  if ((*(v106 + 48))(v131, 1, v108) == 1)
  {
    sub_1E65E0598();

    sub_1E607A8E4(v131);
  }

  else
  {

    (*(v106 + 32))(v110, v131, v108);
  }

  sub_1E65E05A8();
  sub_1E65E0588();
  sub_1E65E05B8();
  sub_1E65E3078();
  (*(v106 + 8))(v110, v108);
  (*(v166 + 104))(v168, *MEMORY[0x1E699EB40], v167);
  return sub_1E65E30E8();
}

uint64_t sub_1E607A874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607A8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E607A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for PageMetricsClick(0);
  v7[7] = swift_task_alloc();
  v7[8] = type metadata accessor for PageMetricsRender(0);
  v7[9] = swift_task_alloc();
  v8 = sub_1E65DC638();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E607AAA0, 0, 0);
}

uint64_t sub_1E607AAA0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v2[1];
  v4 = v2[2];
  v5 = *(v2 + 40);
  v6 = *v2;
  if (v5 > 8)
  {
    goto LABEL_32;
  }

  if (((1 << v5) & 0xDC) != 0)
  {
LABEL_3:

    v7 = v1[1];

    return v7();
  }

  if (v5 != 5)
  {
    if (v5 == 8)
    {
      v38 = v2 + 3;
      v36 = v2[3];
      v37 = v38[1];
      if (!(v6 | v37 | v4 | v3 | v36))
      {
        goto LABEL_3;
      }

      v39 = v37 | v4 | v3 | v36;
      if (v6 == 1 && v39 == 0)
      {
        goto LABEL_3;
      }

      if (v6 != 2 || v39 != 0)
      {
        if ((v6 - 3) <= 2 && v39 == 0)
        {
          goto LABEL_3;
        }

        sub_1E65DC688();
        if ((sub_1E65DC828() & 1) == 0)
        {
          v43 = sub_1E65DC698();
          if (v46)
          {
            if (v46 != 1)
            {
              goto LABEL_3;
            }
          }

          else if (v45 != 2 || v43 != 1 || v44)
          {
            sub_1E5FED324(v43, v44, v45, 0);
            goto LABEL_3;
          }
        }

        v85 = (*(v1[4] + 16) + **(v1[4] + 16));
        v34 = swift_task_alloc();
        v1[23] = v34;
        *v34 = v1;
        v35 = sub_1E607BC14;
        goto LABEL_38;
      }

      v54 = v1[6];
      v53 = v1[7];
      v55 = v1[4];
      v56 = sub_1E65D9D78();
      (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
      v57 = v54[5];
      v58 = *MEMORY[0x1E69CBAA0];
      v59 = sub_1E65D8C68();
      (*(*(v59 - 8) + 104))(v53 + v57, v58, v59);
      v60 = v54[6];
      v61 = sub_1E65D74E8();
      (*(*(v61 - 8) + 56))(v53 + v60, 1, 1, v61);
      v62 = v54[8];
      v63 = sub_1E65DA208();
      (*(*(v63 - 8) + 56))(v53 + v62, 1, 1, v63);
      v64 = v54[14];
      v65 = *MEMORY[0x1E69CBCC8];
      v66 = sub_1E65D8F28();
      (*(*(v66 - 8) + 104))(v53 + v64, v65, v66);
      v67 = v54[15];
      v68 = sub_1E65D9908();
      (*(*(v68 - 8) + 56))(v53 + v67, 1, 1, v68);
      v69 = MEMORY[0x1E69E7CC0];
      v70 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v53 + v54[7]) = v69;
      v71 = (v53 + v54[9]);
      *v71 = 0;
      v71[1] = 0;
      v72 = (v53 + v54[10]);
      *v72 = 0;
      v72[1] = 0;
      *(v53 + v54[11]) = v70;
      v73 = (v53 + v54[12]);
      *v73 = 0;
      v73[1] = 0;
      *(v53 + v54[13]) = xmmword_1E65EF110;
      v86 = (*(v55 + 48) + **(v55 + 48));
      v74 = swift_task_alloc();
      v1[24] = v74;
      *v74 = v1;
      v74[1] = sub_1E607BDE4;
      v75 = v1[7];
      goto LABEL_52;
    }

LABEL_32:
    if (!*(v2 + 40))
    {
      goto LABEL_3;
    }

    sub_1E65DC688();
    if ((sub_1E65DC828() & 1) == 0)
    {
      v51 = v4 == 2 && v3 == 0;
      if (!v51 || v6 != 1)
      {
        goto LABEL_3;
      }
    }

    v47 = sub_1E65DC498();
    if (!v50)
    {
      sub_1E607C250(v47, v48, v49, 0);
      goto LABEL_3;
    }

    if (v50 != 255)
    {
      sub_1E607C250(v47, v48, v49, v50);
    }

    v85 = (*(v1[4] + 16) + **(v1[4] + 16));
    v34 = swift_task_alloc();
    v1[22] = v34;
    *v34 = v1;
    v35 = sub_1E607BA44;
    goto LABEL_38;
  }

  v9 = v1[16];
  v10 = v1[10];
  v11 = v1[11];
  sub_1E65DC6D8();
  v12 = sub_1E65DC5E8();
  v14 = v13;
  v15 = *(v11 + 8);
  v15(v9, v10);
  if (v14 & 1) != 0 || (v16 = v1[15], v17 = v1[10], sub_1E65DC6D8(), v18 = sub_1E65DC5F8(), v20 = v19, v15(v16, v17), (v20) || (v21 = v1[14], v22 = v1[10], sub_1E65DC6D8(), v23 = sub_1E65DC608(), v25 = v24, v15(v21, v22), (v25) || (v26 = v1[13], v27 = v1[10], sub_1E65DC6D8(), sub_1E65DC628(), v29 = v28, v15(v26, v27), (v29) || (v30 = v1[12], v31 = v1[10], sub_1E65DC6D8(), sub_1E65DC618(), v33 = v32, v15(v30, v31), (v33))
  {
    v85 = (*(v1[4] + 16) + **(v1[4] + 16));
    v34 = swift_task_alloc();
    v1[21] = v34;
    *v34 = v1;
    v35 = sub_1E607B874;
LABEL_38:
    v34[1] = v35;

    return v85();
  }

  v77 = v1[8];
  v76 = v1[9];
  v84 = v1[4];
  v78 = v77[11];
  v79 = sub_1E65D9D98();
  (*(*(v79 - 8) + 56))(v76 + v78, 1, 1, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F88, &qword_1E65EF128);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1E65EB9E0;
  sub_1E65D9D88();
  sub_1E65D9D88();
  *v76 = 2;
  *(v76 + 8) = v12;
  *(v76 + 16) = 0;
  *(v76 + 24) = 1;
  *(v76 + 32) = 0;
  *(v76 + 40) = 1;
  *(v76 + 48) = v18;
  *(v76 + 56) = 0;
  *(v76 + 64) = 1025;
  v81 = v76 + v77[12];
  *v81 = 0;
  *(v81 + 8) = 1;
  v82 = v76 + v77[13];
  *v82 = 0;
  *(v82 + 8) = 1;
  *(v76 + v77[14]) = v23;
  *(v76 + v77[15]) = v80;
  *(v76 + v77[16]) = 2;
  v86 = (*(v84 + 64) + **(v84 + 64));
  v83 = swift_task_alloc();
  v1[17] = v83;
  *v83 = v1;
  v83[1] = sub_1E607B4C0;
  v75 = v1[9];
LABEL_52:

  return v86(v75);
}

uint64_t sub_1E607B4C0()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E607BFC8, 0, 0);
  }

  else
  {
    v5 = (*(v2[4] + 16) + **(v2[4] + 16));
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = sub_1E607B690;

    return v5();
  }
}

uint64_t sub_1E607B690()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E607C0A0;
  }

  else
  {
    v2 = sub_1E607B7A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E607B7A4()
{
  sub_1E607C264(*(v0 + 72), type metadata accessor for PageMetricsRender);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E607B874()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E607BA44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E607BC14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E607BDE4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1E607C178;
  }

  else
  {
    v2 = sub_1E607BEF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E607BEF8()
{
  sub_1E607C264(*(v0 + 56), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E607BFC8()
{
  sub_1E607C264(*(v0 + 72), type metadata accessor for PageMetricsRender);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E607C0A0()
{
  sub_1E607C264(*(v0 + 72), type metadata accessor for PageMetricsRender);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E607C178()
{
  sub_1E607C264(*(v0 + 56), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E607C250(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1E5FED324(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1E607C264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1E607C2C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X8>)
{
  v165 = a5;
  v166 = a3;
  LODWORD(v164) = a2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F90, &qword_1E65EF130);
  MEMORY[0x1EEE9AC00](v161);
  v167 = &v160 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v160 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v160 - v12;
  v163 = sub_1E65D9AC8();
  v14 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  v168 = *(v171 - 8);
  v16 = MEMORY[0x1EEE9AC00](v171);
  v170 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v160 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C0, &qword_1E65ED018);
  v172 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v160 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v160 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v160 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v160 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v36 = &v160 - v35;
  if (a4 <= 3u)
  {
    v37 = v33;
    if (a4 > 1u)
    {
      if (a4 == 2)
      {
        v72 = a1 + *(type metadata accessor for AppState(0) + 336);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
        v73 = sub_1E65E4D48();
        MEMORY[0x1EEE9AC00](v73);
        *(&v160 - 2) = v72;
        v74 = sub_1E6403D6C(sub_1E607EB3C, (&v160 - 4), v73);

        v173 = v74;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
        sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
        sub_1E607EA38();
        v75 = sub_1E65E5E78();

        v76 = *(v75 + 16);
        if (v76)
        {
          v173 = MEMORY[0x1E69E7CC0];
          sub_1E601C264(0, v76, 0);
          v77 = v169;
          v78 = *(v168 + 80);
          v164 = v75;
          v79 = v75 + ((v78 + 32) & ~v78);
          v168 = *(v168 + 72);
          LODWORD(v167) = *MEMORY[0x1E699D9C8];
          v46 = v173;
          v80 = (v172 + 104);
          v166 = (v172 + 32);
          do
          {
            sub_1E607EA90(v79, v77);
            v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
            v82 = v170;
            sub_1E607EA90(v77, v170);
            v83 = *(v171 + 48);
            v84 = sub_1E65D9CC8();
            (*(*(v84 - 8) + 32))(v29, v82, v84);
            sub_1E5DFE50C(v77, &qword_1ED072160, &qword_1E65EA8C8);
            *&v29[v81] = MEMORY[0x1E69E7CD0];
            (*v80)(v29, v167, v37);
            v85 = sub_1E65D76A8();
            (*(*(v85 - 8) + 8))(v82 + v83, v85);
            v173 = v46;
            v87 = *(v46 + 16);
            v86 = *(v46 + 24);
            if (v87 >= v86 >> 1)
            {
              sub_1E601C264((v86 > 1), v87 + 1, 1);
              v46 = v173;
            }

            *(v46 + 16) = v87 + 1;
            (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v87, v29, v37);
            v79 += v168;
            --v76;
          }

          while (v76);
          goto LABEL_44;
        }
      }

      else
      {
        v128 = a1 + *(type metadata accessor for AppState(0) + 328);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
        v129 = sub_1E65E4D48();
        MEMORY[0x1EEE9AC00](v129);
        *(&v160 - 2) = v128;
        v130 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v129);

        v173 = v130;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
        sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
        sub_1E607EA38();
        v131 = sub_1E65E5E78();

        v132 = *(v131 + 16);
        if (v132)
        {
          v173 = MEMORY[0x1E69E7CC0];
          sub_1E601C264(0, v132, 0);
          v133 = v169;
          v134 = *(v168 + 80);
          v164 = v131;
          v135 = v131 + ((v134 + 32) & ~v134);
          v168 = *(v168 + 72);
          LODWORD(v167) = *MEMORY[0x1E699D9C8];
          v46 = v173;
          v136 = (v172 + 104);
          v166 = (v172 + 32);
          do
          {
            sub_1E607EA90(v135, v133);
            v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
            v138 = v170;
            sub_1E607EA90(v133, v170);
            v139 = *(v171 + 48);
            v140 = sub_1E65D9CC8();
            (*(*(v140 - 8) + 32))(v26, v138, v140);
            sub_1E5DFE50C(v133, &qword_1ED072160, &qword_1E65EA8C8);
            *&v26[v137] = MEMORY[0x1E69E7CD0];
            (*v136)(v26, v167, v37);
            v141 = sub_1E65D76A8();
            (*(*(v141 - 8) + 8))(v138 + v139, v141);
            v173 = v46;
            v143 = *(v46 + 16);
            v142 = *(v46 + 24);
            if (v143 >= v142 >> 1)
            {
              sub_1E601C264((v142 > 1), v143 + 1, 1);
              v46 = v173;
            }

            *(v46 + 16) = v143 + 1;
            (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v143, v26, v37);
            v135 += v168;
            --v132;
          }

          while (v132);
          goto LABEL_44;
        }
      }
    }

    else if (a4)
    {
      v112 = a1 + *(type metadata accessor for AppState(0) + 324);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v113 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v113);
      *(&v160 - 2) = v112;
      v114 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v113);

      v173 = v114;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
      sub_1E607EA38();
      v115 = sub_1E65E5E78();

      v116 = *(v115 + 16);
      if (v116)
      {
        v173 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v116, 0);
        v117 = v169;
        v118 = *(v168 + 80);
        v164 = v115;
        v119 = v115 + ((v118 + 32) & ~v118);
        v168 = *(v168 + 72);
        LODWORD(v167) = *MEMORY[0x1E699D9C8];
        v46 = v173;
        v120 = (v172 + 104);
        v166 = (v172 + 32);
        do
        {
          sub_1E607EA90(v119, v117);
          v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v122 = v170;
          sub_1E607EA90(v117, v170);
          v123 = *(v171 + 48);
          v124 = sub_1E65D9CC8();
          (*(*(v124 - 8) + 32))(v32, v122, v124);
          sub_1E5DFE50C(v117, &qword_1ED072160, &qword_1E65EA8C8);
          *&v32[v121] = MEMORY[0x1E69E7CD0];
          (*v120)(v32, v167, v37);
          v125 = sub_1E65D76A8();
          (*(*(v125 - 8) + 8))(v122 + v123, v125);
          v173 = v46;
          v127 = *(v46 + 16);
          v126 = *(v46 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_1E601C264((v126 > 1), v127 + 1, 1);
            v46 = v173;
          }

          *(v46 + 16) = v127 + 1;
          (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v127, v32, v37);
          v119 += v168;
          --v116;
        }

        while (v116);
        goto LABEL_44;
      }
    }

    else
    {
      v38 = a1 + *(type metadata accessor for AppState(0) + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v39 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v39);
      *(&v160 - 2) = v38;
      v40 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v39);

      v173 = v40;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
      sub_1E607EA38();
      v41 = sub_1E65E5E78();

      v42 = *(v41 + 16);
      if (v42)
      {
        v173 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v42, 0);
        v43 = v169;
        v44 = *(v168 + 80);
        v164 = v41;
        v45 = v41 + ((v44 + 32) & ~v44);
        v168 = *(v168 + 72);
        LODWORD(v167) = *MEMORY[0x1E699D9C8];
        v46 = v173;
        v47 = (v172 + 104);
        v166 = (v172 + 32);
        do
        {
          sub_1E607EA90(v45, v43);
          v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v49 = v170;
          sub_1E607EA90(v43, v170);
          v50 = *(v171 + 48);
          v51 = sub_1E65D9CC8();
          (*(*(v51 - 8) + 32))(v36, v49, v51);
          sub_1E5DFE50C(v43, &qword_1ED072160, &qword_1E65EA8C8);
          *&v36[v48] = MEMORY[0x1E69E7CD0];
          (*v47)(v36, v167, v37);
          v52 = sub_1E65D76A8();
          (*(*(v52 - 8) + 8))(v49 + v50, v52);
          v173 = v46;
          v54 = *(v46 + 16);
          v53 = *(v46 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1E601C264((v53 > 1), v54 + 1, 1);
            v46 = v173;
          }

          *(v46 + 16) = v54 + 1;
          (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v54, v36, v37);
          v45 += v168;
          --v42;
        }

        while (v42);
LABEL_44:

LABEL_49:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE8, &qword_1E65EF188);
        *v165 = v46;
        sub_1E65D7688();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF0, &qword_1E65EF190);
        return swift_storeEnumTagMultiPayload();
      }
    }

LABEL_48:

    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v55 = v33;
      v56 = a1 + *(type metadata accessor for AppState(0) + 332);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v57 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v57);
      *(&v160 - 2) = v56;
      v58 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v57);

      v173 = v58;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
      sub_1E607EA38();
      v59 = sub_1E65E5E78();

      v60 = *(v59 + 16);
      if (v60)
      {
        v173 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v60, 0);
        v61 = v169;
        v62 = *(v168 + 80);
        v164 = v59;
        v63 = v59 + ((v62 + 32) & ~v62);
        v168 = *(v168 + 72);
        LODWORD(v167) = *MEMORY[0x1E699D9C8];
        v46 = v173;
        v64 = (v172 + 104);
        v166 = (v172 + 32);
        do
        {
          sub_1E607EA90(v63, v61);
          v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v66 = v170;
          sub_1E607EA90(v61, v170);
          v67 = *(v171 + 48);
          v68 = sub_1E65D9CC8();
          (*(*(v68 - 8) + 32))(v23, v66, v68);
          sub_1E5DFE50C(v61, &qword_1ED072160, &qword_1E65EA8C8);
          *&v23[v65] = MEMORY[0x1E69E7CD0];
          (*v64)(v23, v167, v55);
          v69 = sub_1E65D76A8();
          (*(*(v69 - 8) + 8))(v66 + v67, v69);
          v173 = v46;
          v71 = *(v46 + 16);
          v70 = *(v46 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_1E601C264((v70 > 1), v71 + 1, 1);
            v46 = v173;
          }

          *(v46 + 16) = v71 + 1;
          (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v71, v23, v55);
          v63 += v168;
          --v60;
        }

        while (v60);
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    goto LABEL_30;
  }

  if (a4 != 6)
  {
LABEL_30:
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
    sub_1E65E4C98();
    sub_1E60EEE88(v13);
    sub_1E5DFE50C(v10, &qword_1ED072E78, &qword_1E65ECC50);
    v108 = v14;
    v109 = *(v14 + 48);
    v110 = v163;
    if (v109(v13, 1, v163) == 1)
    {
      v111 = v162;
      MEMORY[0x1E6941490]();
      if (v109(v13, 1, v110) != 1)
      {
        sub_1E5DFE50C(v13, &qword_1ED072198, &unk_1E660C690);
      }
    }

    else
    {
      v111 = v162;
      (*(v108 + 32))(v162, v13, v110);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
    v144 = v167;
    v145 = sub_1E65E4C98();
    MEMORY[0x1EEE9AC00](v145);
    *(&v160 - 4) = a1;
    *(&v160 - 24) = v164;
    v146 = v166;
    *(&v160 - 2) = v111;
    *(&v160 - 1) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FA0, &qword_1E65EF140);
    sub_1E607DF5C();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v144, &qword_1ED073F90, &qword_1E65EF130);
    return (*(v108 + 8))(v111, v110);
  }

  v88 = v34;
  v167 = v33;
  v89 = type metadata accessor for AppState(0);
  v90 = a1 + v89[80];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  v91 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v91);
  *(&v160 - 2) = v90;
  v92 = sub_1E6403D6C(sub_1E607EA00, (&v160 - 4), v91);

  v93 = a1 + v89[81];
  v94 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v94);
  *(&v160 - 2) = v93;
  v166 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v94);

  v95 = a1 + v89[82];
  v96 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v96);
  *(&v160 - 2) = v95;
  v97 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v96);

  v98 = a1 + v89[83];
  v99 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v99);
  *(&v160 - 2) = v98;
  v100 = sub_1E6403D6C(sub_1E607EB24, (&v160 - 4), v99);

  v101 = a1 + v89[84];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v102 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v102);
  *(&v160 - 2) = v101;
  v103 = sub_1E6403D6C(sub_1E607EA1C, (&v160 - 4), v102);

  v174 = v92;
  sub_1E5FA9E58(v166);
  sub_1E5FA9E58(v97);
  sub_1E5FA9E58(v100);
  sub_1E5FA9E58(v103);
  v173 = v174;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
  sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178, MEMORY[0x1E69E6328]);
  sub_1E607EA38();
  v104 = sub_1E65E5E78();

  v105 = *(v104 + 16);
  v106 = v105 - 12;
  if (v105 < 0xC)
  {
    v106 = 0;
  }

  v107 = v105 - v106;
  if (v105 == v106)
  {
    goto LABEL_48;
  }

  v166 = v88;
  v173 = MEMORY[0x1E69E7CC0];
  result = sub_1E601C264(0, v107 & ~(v107 >> 63), 0);
  if ((v107 & 0x8000000000000000) == 0)
  {
    v164 = v104 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    LODWORD(v163) = *MEMORY[0x1E699D9C8];
    v46 = v173;
    v148 = (v172 + 104);
    v162 = (v172 + 32);
    v149 = v105 - 1;
    v150 = v166;
    while (v107)
    {
      if (v149 == -1)
      {
        goto LABEL_60;
      }

      if (v149 >= *(v104 + 16))
      {
        goto LABEL_61;
      }

      v151 = v169;
      sub_1E607EA90(v164 + *(v168 + 72) * v149, v169);
      v152 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
      v153 = v170;
      sub_1E607EA90(v151, v170);
      v154 = *(v171 + 48);
      v155 = sub_1E65D9CC8();
      (*(*(v155 - 8) + 32))(v150, v153, v155);
      sub_1E5DFE50C(v151, &qword_1ED072160, &qword_1E65EA8C8);
      *(v150 + v152) = MEMORY[0x1E69E7CD0];
      v156 = v167;
      (*v148)(v150, v163, v167);
      v157 = sub_1E65D76A8();
      (*(*(v157 - 8) + 8))(v153 + v154, v157);
      v173 = v46;
      v159 = *(v46 + 16);
      v158 = *(v46 + 24);
      if (v159 >= v158 >> 1)
      {
        sub_1E601C264((v158 > 1), v159 + 1, 1);
        v46 = v173;
      }

      *(v46 + 16) = v159 + 1;
      result = (*(v172 + 32))(v46 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v159, v150, v156);
      --v149;
      if (!--v107)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E607DCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C0, &qword_1E65ED018);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  v15 = *a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v16 = sub_1E6403608(sub_1E607EB00, v34, v15);
  v17 = *(v16 + 2);
  if (v17)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E601C264(0, v17, 0);
    v18 = v39;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    v19 = *(v33 - 8);
    v20 = *(v19 + 16);
    v31 = v19 + 16;
    v32 = v20;
    v21 = *(v19 + 80);
    v26[1] = v16;
    v22 = &v16[(v21 + 32) & ~v21];
    v30 = *(v19 + 72);
    v29 = *MEMORY[0x1E699D9D0];
    v28 = v12 + 32;
    do
    {
      v32(v14, v22, v33);
      (*(v12 + 104))(v14, v29, v11);
      v39 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601C264((v23 > 1), v24 + 1, 1);
        v18 = v39;
      }

      *(v18 + 16) = v24 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v14, v11);
      v22 += v30;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *v27 = v18;
  return result;
}

unint64_t sub_1E607DF5C()
{
  result = qword_1ED073FA8;
  if (!qword_1ED073FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FA0, &qword_1E65EF140);
    sub_1E5FED46C(&qword_1ED073FB0, &qword_1ED0731C0, &qword_1E65ED018, MEMORY[0x1E699D9E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073FA8);
  }

  return result;
}

uint64_t sub_1E607E00C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a1;
  v23 = a4;
  v21 = a3;
  v20 = a2;
  v19 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v10);
  sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_1E65D77C8();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v16 = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);
  sub_1E6014C00(v14, v20, v21, v16, v23, v19);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1E607E2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF8, &qword_1E65EF198);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074000, &qword_1E65EF1A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074008, &qword_1E65EF1A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1E65DAEB8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v25 = *a1;
  v26 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EF554(v13);
  sub_1E5DFE50C(v6, &qword_1ED073FF8, &qword_1E65EF198);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E5DFE50C(v13, &qword_1ED074008, &qword_1E65EF1A8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    return (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    sub_1E65DAE48();
    v22 = v24;
    sub_1E65D9C88();
    sub_1E65DAE58();
    (*(v15 + 8))(v17, v14);
    return (*(*(v21 - 8) + 56))(v22, 0, 1, v21);
  }
}

uint64_t sub_1E607E644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074010, &qword_1E65EF1B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074018, &qword_1E65EF1B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074020, &qword_1E65EF1C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1E65DADD8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v25 = *a1;
  v26 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EF798(v13);
  sub_1E5DFE50C(v6, &qword_1ED074010, &qword_1E65EF1B0);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E5DFE50C(v13, &qword_1ED074020, &qword_1E65EF1C0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    return (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
    sub_1E65DADA8();
    sub_1E65DAD78();
    v22 = v24;
    sub_1E65D9C88();
    sub_1E65DAD88();
    (*(v15 + 8))(v17, v14);
    return (*(*(v21 - 8) + 56))(v22, 0, 1, v21);
  }
}

unint64_t sub_1E607EA38()
{
  result = qword_1ED073FD8;
  if (!qword_1ED073FD8)
  {
    sub_1E65D76A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073FD8);
  }

  return result;
}

uint64_t sub_1E607EA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607EB54(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, void *a7)
{
  v73 = a7;
  LODWORD(v68) = a6;
  v82 = a5;
  v60 = a4;
  v10 = type metadata accessor for SectionMetrics(0);
  v11 = *(v10 - 8);
  v66 = v10 - 8;
  v72 = v11;
  v71 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074030, &qword_1E65EF1C8);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v55 - v14;
  v15 = sub_1E65E0308();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E00D8();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppComposer(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074038, &qword_1E65EF1D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074040, &qword_1E65EF1D8);
  v69 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v64 = &v55 - v23;
  v62 = a1;
  v67 = *a1;
  sub_1E5DF650C(a3, v83);
  v24 = swift_allocObject();
  sub_1E5DF599C(v83, v24 + 16);
  v61 = type metadata accessor for AppComposer;
  v25 = a1;
  v26 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v26;
  sub_1E5E1D3B4(v25, v26, type metadata accessor for AppComposer);
  v27 = *(v20 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = v28;
  v78 = v28;
  v59 = v27 | 7;
  v63 = v28 + v21 + 1;
  v30 = v28 + v21;
  v56 = v30;
  v31 = swift_allocObject();
  v57 = type metadata accessor for AppComposer;
  sub_1E5E1DFE0(v26, v31 + v29, type metadata accessor for AppComposer);
  v58 = a2 & 1;
  *(v31 + v30) = a2 & 1;
  sub_1E65D9CC8();
  v32 = MEMORY[0x1E69CC888];
  sub_1E6082714(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6082714(&qword_1EE2D7030, v32, MEMORY[0x1E69CC890]);
  sub_1E6082714(&qword_1EE2D7028, v32, MEMORY[0x1E69CC898]);
  sub_1E65E0228();
  type metadata accessor for ArtworkDescriptor(0);
  sub_1E6082714(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E65DFDE8();
  v33 = v60;

  sub_1E65D8F18();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();

  sub_1E65E02F8();
  sub_1E65E00C8();
  v34 = v62;
  v35 = v55;
  v36 = v61;
  sub_1E5E1D3B4(v62, v55, v61);
  v37 = v56;
  v38 = swift_allocObject();
  v39 = v57;
  sub_1E5E1DFE0(v35, v38 + v78, v57);
  *(v38 + v37) = v68;
  *(v38 + v63) = v58;
  type metadata accessor for AppFeature(0);
  sub_1E6082714(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v68 = sub_1E5FED46C(&qword_1EE2D65E0, &qword_1ED074040, &qword_1E65EF1D8, MEMORY[0x1E699D5A0]);
  sub_1E65E4DF8();
  sub_1E5E1D3B4(v34, v35, v36);
  v40 = v73;
  v63 = *v73;
  v65 = v73[3];
  v66 = v73[5];
  v41 = v70;
  sub_1E5E1D3B4(v33, v70, type metadata accessor for SectionMetrics);
  v42 = (v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + *(v72 + 80) + 80) & ~*(v72 + 80);
  v44 = (v71 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_1E5E1DFE0(v35, v45 + v78, v39);
  v46 = (v45 + v42);
  v47 = v40[3];
  v46[2] = v40[2];
  v46[3] = v47;
  v46[4] = v40[4];
  v48 = v40[1];
  *v46 = *v40;
  v46[1] = v48;
  sub_1E5E1DFE0(v41, v45 + v43, type metadata accessor for SectionMetrics);
  *(v45 + v44) = v82;
  swift_unknownObjectRetain();

  v49 = v64;
  v50 = v80;
  v51 = v81;
  v52 = v79;
  v53 = sub_1E65E4F08();

  (*(v76 + 8))(v50, v77);
  (*(v74 + 8))(v51, v75);
  (*(v69 + 8))(v49, v52);
  return v53;
}

uint64_t sub_1E607F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = type metadata accessor for SectionMetrics(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v27 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED074048, &qword_1E65EF200);
  sub_1E5E1D3B4(a6, v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SectionMetrics);
  v19 = a5[7];
  v27[1] = a5[5];
  v27[2] = v19;
  v29 = a5[9];
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = (v12 + *(v30 + 80) + v20) & ~*(v30 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1E5FAB460(v14, v22 + v20, &qword_1ED074048, &qword_1E65EF200);
  sub_1E5E1DFE0(v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SectionMetrics);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = *(a5 + 3);
  v23[2] = *(a5 + 2);
  v23[3] = v24;
  v23[4] = *(a5 + 4);
  v25 = *(a5 + 1);
  *v23 = *a5;
  v23[1] = v25;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v17, &unk_1E65EF210, v22);
}

uint64_t sub_1E607F810@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E64D2DD0(a1, a2, a3);
  v6 = sub_1E65E4B98();
  v8 = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(a1, a2, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  return result;
}

uint64_t sub_1E607F8A4(uint64_t a1, uint64_t a2, char *a3, __int128 *a4)
{
  v6 = type metadata accessor for ContextMenu(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  sub_1E607FA94(v8);
  sub_1E61E66C8(v8, a3, a4, v12);
  sub_1E608275C(v8, type metadata accessor for ContextMenu);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v14 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v17[0] = v13;
  v17[1] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v12, v9, OpaqueTypeConformance2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E607FA94@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  sub_1E65DFE98();
  v2 = (a1 + *(type metadata accessor for ContextMenu(0) + 20));
  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
  *v2 = sub_1E65DFE78();
  v2[1] = v4;
  sub_1E6081F6C();
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  swift_storeEnumTagMultiPayload();
  sub_1E60820A8(&v3[*(State + 24)]);
  v6 = *(State + 28);
  v3[v6] = sub_1E65DFE58() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
  sub_1E65D7688();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E607FC10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for RouteSource(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for RouteDestination(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E607FCF8, 0, 0);
}

uint64_t sub_1E607FCF8(uint64_t a1)
{
  v2 = sub_1E65D9CA8();
  if (v4)
  {
    if (v2 <= 3u)
    {
      if (v2 > 1u)
      {
        if (v2 != 2)
        {
          v27 = *(v1 + 72);
          v28 = *(v1 + 40);
          v29 = *(v1 + 48);
          v30 = *(v1 + 24);
          v9 = v30[3];
          v10 = v30[4];
          __swift_project_boxed_opaque_existential_1(v30, v9);
          v31 = sub_1E65D9C98();
          v33 = v32;
          swift_storeEnumTagMultiPayload();
          *v27 = v31;
          v27[1] = v33;
          type metadata accessor for PlaylistType(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E5E1DFE0(v28, v27 + *(v29 + 20), type metadata accessor for RouteSource);
          *(v27 + *(v29 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v1 + 154));
          v34 = swift_task_alloc();
          *(v1 + 104) = v34;
          *v34 = v1;
          v34[1] = sub_1E6080394;
          v15 = *(v1 + 72);
          v16 = (v1 + 154);
          goto LABEL_16;
        }
      }

      else if (v2)
      {
        v19 = *(v1 + 80);
        v20 = *(v1 + 40);
        v21 = *(v1 + 48);
        v22 = *(v1 + 24);
        v9 = v22[3];
        v10 = v22[4];
        __swift_project_boxed_opaque_existential_1(v22, v9);
        v23 = sub_1E65D9C98();
        v25 = v24;
        swift_storeEnumTagMultiPayload();
        *v19 = v23;
        v19[1] = v25;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v20, v19 + *(v21 + 20), type metadata accessor for RouteSource);
        *(v19 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 155));
        v26 = swift_task_alloc();
        *(v1 + 88) = v26;
        *v26 = v1;
        v26[1] = sub_1E60801F0;
        v15 = *(v1 + 80);
        v16 = (v1 + 155);
        goto LABEL_16;
      }
    }

    else if (v2 - 5 >= 3)
    {
      if (v2 == 4)
      {
        v5 = *(v1 + 64);
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        v8 = *(v1 + 24);
        v9 = v8[3];
        v10 = v8[4];
        __swift_project_boxed_opaque_existential_1(v8, v9);
        v11 = sub_1E65D9C98();
        v13 = v12;
        swift_storeEnumTagMultiPayload();
        *v5 = v11;
        v5[1] = v13;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v6, v5 + *(v7 + 20), type metadata accessor for RouteSource);
        *(v5 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 153));
        v14 = swift_task_alloc();
        *(v1 + 120) = v14;
        *v14 = v1;
        v14[1] = sub_1E6080538;
        v15 = *(v1 + 64);
        v16 = (v1 + 153);
      }

      else
      {
        v36 = *(v1 + 48);
        v35 = *(v1 + 56);
        v37 = *(v1 + 40);
        v38 = *(v1 + 24);
        v9 = v38[3];
        v10 = v38[4];
        __swift_project_boxed_opaque_existential_1(v38, v9);
        v39 = sub_1E65D9C98();
        v41 = v40;
        swift_storeEnumTagMultiPayload();
        *v35 = v39;
        v35[1] = v41;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E5E1DFE0(v37, v35 + *(v36 + 20), type metadata accessor for RouteSource);
        *(v35 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 152));
        v42 = swift_task_alloc();
        *(v1 + 136) = v42;
        *v42 = v1;
        v42[1] = sub_1E60806DC;
        v15 = *(v1 + 56);
        v16 = (v1 + 152);
      }

LABEL_16:

      return RoutingContext.appendDestination(_:priority:)(v15, v16, v9, v10);
    }
  }

  else
  {
    sub_1E5FEE4CC(v2, v3, 0);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1E60801F0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1E608275C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080880, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6080394()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 112) = v0;

  sub_1E608275C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E608091C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6080538()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 128) = v0;

  sub_1E608275C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60809B8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E60806DC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 144) = v0;

  sub_1E608275C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080A54, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6080880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E608091C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60809B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6080A54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6080AF0(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA880;

  return sub_1E6080B90(a2 & 1);
}

uint64_t sub_1E6080B90(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 200) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6080BB4, 0, 0);
}

uint64_t sub_1E6080BB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 200);
  *(v0 + 64) = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v3 = sub_1E65E6058();
  if (v2)
  {
    *(v0 + 136) = v3;
    *(v0 + 144) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6080EBC;
  }

  else
  {
    *(v0 + 72) = v3;
    *(v0 + 80) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E6080CAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6080CAC()
{

  sub_1E5E20198(16, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6080D24()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[14] = *(v2 + 8);
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6080DD0, v4, v3);
}

uint64_t sub_1E6080DD0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6080E5C, 0, 0);
}

uint64_t sub_1E6080E5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6080EBC()
{

  sub_1E5E20198(17, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080F34, 0, 0);
}

uint64_t sub_1E6080F34()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[19] = v1;
  v0[20] = v2;
  v0[21] = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[22] = *(v2 + 8);
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[24] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6080FE0, v4, v3);
}

uint64_t sub_1E6080FE0()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];

  v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E60827D4, 0, 0);
}

uint64_t sub_1E608106C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v51) = a3;
  v4 = a2;
  v46 = a1;
  v55 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v44 - v8;
  v9 = sub_1E65D7848();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E05C8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074058, &qword_1E65EF218);
  MEMORY[0x1EEE9AC00](v45);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074060, &qword_1E65EF220);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v44 - v20;
  v21 = sub_1E65DFA98();
  v53 = *(v21 - 8);
  v54 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v52 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v44 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - v27;
  v29 = sub_1E634BE4C(v4);
  v44 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v30 = v61;
  v31 = sub_1E65E0678();
  type metadata accessor for AppComposer(0);
  sub_1E60930E0(v30, v31, 0, 0, 0, 0, v29, v28);
  v32 = v25;
  sub_1E60818B0(v28, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  sub_1E65E4C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074070, &qword_1E65EF230);
  sub_1E6082664();
  v33 = v58;
  sub_1E65E4DA8();
  v34 = v16;
  v35 = v47;
  sub_1E5DFE50C(v34, &qword_1ED074058, &qword_1E65EF218);
  sub_1E65E0668();
  type metadata accessor for ViewDescriptor(0);
  sub_1E6082714(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v51 = v28;
  v37 = v48;
  v36 = v49;
  sub_1E65E0648();
  sub_1E5DFD1CC(v33, v57, &qword_1ED074060, &qword_1E65EF220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v38 = v50;
  sub_1E65E4C98();
  sub_1E5E1F544(v36);
  sub_1E5DFE50C(v38, &qword_1ED071F78, &unk_1E65EA3F0);
  v39 = *(v35 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    sub_1E65D77C8();
    if (v39(v36, 1, v37) != 1)
    {
      sub_1E5DFE50C(v36, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v35 + 32))(v56, v36, v37);
  }

  v40 = v53;
  v41 = v54;
  (*(v53 + 16))(v52, v32, v54);
  v50 = type metadata accessor for ArtworkDescriptor(0);
  v49 = sub_1E65D9CC8();
  sub_1E6082714(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6082714(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v42 = MEMORY[0x1E69CC888];
  sub_1E6082714(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6082714(&qword_1EE2D7030, v42, MEMORY[0x1E69CC890]);
  sub_1E6082714(&qword_1EE2D7028, v42, MEMORY[0x1E69CC898]);
  sub_1E65DFC28();
  sub_1E5DFE50C(v58, &qword_1ED074060, &qword_1E65EF220);
  (*(v40 + 8))(v32, v41);
  return sub_1E5DFE50C(v51, &qword_1ED072650, &qword_1E65EB968);
}

uint64_t sub_1E60818B0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C8, &qword_1E65EDD58);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  sub_1E5DFD1CC(v35, &v31 - v15, &qword_1ED072650, &qword_1E65EB968);
  v17 = v36;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    goto LABEL_6;
  }

  v19 = v13;
  v35 = v4;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1E608275C(v16, type metadata accessor for ViewDescriptor);
    v17 = v36;
LABEL_6:
    v26 = MEMORY[0x1E699D4A8];
    goto LABEL_9;
  }

  v23 = v16;
  v24 = v19;
  sub_1E5FAB460(v23, v19, &qword_1ED072680, &qword_1E65EB990);
  sub_1E5DFD1CC(v24, v11, &qword_1ED072680, &qword_1E65EB990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v20 + 32))(v7, v11, v5);
    v25 = sub_1E65E0578();
    (*(v20 + 8))(v7, v5);
  }

  else
  {
    v27 = v35;
    (*(v21 + 32))(v35, v11, v22);
    v25 = sub_1E65E0558();
    (*(v21 + 8))(v27, v22);
  }

  sub_1E5DFE50C(v24, &qword_1ED072680, &qword_1E65EB990);
  v17 = v36;
  *v36 = v25;
  v26 = MEMORY[0x1E699D4B0];
LABEL_9:
  v28 = *v26;
  v29 = sub_1E65DFA98();
  return (*(*(v29 - 8) + 104))(v17, v28, v29);
}

uint64_t sub_1E6081C84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074078, &qword_1E65EF238);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v32 = sub_1E65D9CC8();
  result = MEMORY[0x1EEE9AC00](v32);
  v31 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*a1 + 16);
  if (v10)
  {
    v12 = *(v8 + 16);
    v11 = v8 + 16;
    v13 = *a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = *(v11 + 56);
    v28 = v12;
    v26 = (v11 + 16);
    v25 = *MEMORY[0x1E699D9C8];
    v23 = v4 + 32;
    v24 = (v4 + 104);
    v14 = MEMORY[0x1E69E7CC0];
    v29 = v11;
    v30 = v3;
    do
    {
      v15 = v31;
      v16 = v32;
      v28(v31, v13, v32);
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
      (*v26)(v6, v15, v16);
      *&v6[v17] = MEMORY[0x1E69E7CD0];
      (*v24)(v6, v25, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1E64F64AC(0, v14[2] + 1, 1, v14);
      }

      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1E64F64AC((v18 > 1), v19 + 1, 1, v14);
      }

      v14[2] = v19 + 1;
      v20 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19;
      v3 = v30;
      result = (*(v4 + 32))(v20, v6, v30);
      v13 += v27;
      --v10;
    }

    while (v10);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  *v22 = v14;
  return result;
}

uint64_t sub_1E6081F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  if (sub_1E65DFEC8() < 4u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140);
    sub_1E65DFE78();
    sub_1E65DFEA8();
    sub_1E65DFE88();
    sub_1E65DE758();
    sub_1E65D7688();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E60820A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v2 = 1 << sub_1E65DFE68();
  if ((v2 & 0x19F) != 0)
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = (v2 & 0x240) == 0;
  }

  v4 = (v2 & 0x19F) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
  *(a1 + 4) = BYTE4(v3);
  *a1 = v3;
  *(a1 + 5) = v4;
  sub_1E65D7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E608217C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E607FC10(a1, v1 + 16);
}

uint64_t sub_1E6082214()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6080AF0(v3, v4);
}

uint64_t sub_1E6082304@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = (v4 + *(v3 + 64));
  v6 = v5[1];
  v7 = *v5;

  return sub_1E608106C(v4, v7, v6, a1);
}

uint64_t sub_1E60823AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SectionMetrics(0) - 8);
  v11 = v3 + ((v9 + *(v10 + 80) + 80) & ~*(v10 + 80));

  return sub_1E607F4F4(a1, a2, a3, v3 + v8, (v3 + v9), v11);
}

uint64_t sub_1E60824D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SectionMetrics(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E61BD7BC(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E6082664()
{
  result = qword_1EE2D4858;
  if (!qword_1EE2D4858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074070, &qword_1E65EF230);
    sub_1E5FED46C(&qword_1EE2D6560, &qword_1ED074078, &qword_1E65EF238, MEMORY[0x1E699D9E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4858);
  }

  return result;
}

uint64_t sub_1E6082714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E608275C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6082800()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_1E60828B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E60835AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E60828E8(uint64_t a1)
{
  v2 = sub_1E60837AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082924(uint64_t a1)
{
  v2 = sub_1E60837AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082960(uint64_t a1)
{
  v2 = sub_1E6083800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E608299C(uint64_t a1)
{
  v2 = sub_1E6083800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E60829D8(uint64_t a1)
{
  v2 = sub_1E60839A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082A14(uint64_t a1)
{
  v2 = sub_1E60839A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082A50(uint64_t a1)
{
  v2 = sub_1E6083854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082A8C(uint64_t a1)
{
  v2 = sub_1E6083854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082AC8(uint64_t a1)
{
  v2 = sub_1E60838A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082B04(uint64_t a1)
{
  v2 = sub_1E60838A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082B40(uint64_t a1)
{
  v2 = sub_1E60838FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082B7C(uint64_t a1)
{
  v2 = sub_1E60838FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082BB8(uint64_t a1)
{
  v2 = sub_1E6083950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6082BF4(uint64_t a1)
{
  v2 = sub_1E6083950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6082C68@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10Blackbeard12AppSizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_1E6082C94@<D0>(double *a1@<X8>)
{
  result = dbl_1E65EF9D8[*v1];
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall AppSizeClass.shouldOffsetForCarousel(containerSize:)(CGSize containerSize)
{
  v2 = v1 >= 2u && containerSize.width > containerSize.height;
  if (v1 - 3 >= 3)
  {
    return v2;
  }

  else
  {
    return containerSize.width > containerSize.height;
  }
}

uint64_t sub_1E6082D00@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  result = _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(a2);
  *a1 = result;
  return result;
}

BOOL sub_1E6082D28(double a1, double a2)
{
  v3 = *v2;
  v4 = v3 - 3;
  v5 = v3 >= 2 && a1 > a2;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t AppSizeClass.encode(to:)(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074080, &qword_1E65EF250);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074088, &qword_1E65EF258);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074090, &qword_1E65EF260);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074098, &qword_1E65EF268);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740A0, &qword_1E65EF270);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740A8, &qword_1E65EF278);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740B0, &qword_1E65EF280);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60837AC();
  sub_1E65E6DA8();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_1E60838A8();
      v24 = v34;
      v25 = v43;
      sub_1E65E6B18();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_1E6083854();
      v24 = v37;
      v25 = v43;
      sub_1E65E6B18();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_1E6083800();
      v24 = v40;
      v25 = v43;
      sub_1E65E6B18();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_1E6083950();
      v22 = v43;
      sub_1E65E6B18();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_1E60838FC();
    v25 = v43;
    sub_1E65E6B18();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_1E60839A4();
    v25 = v43;
    sub_1E65E6B18();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

uint64_t sub_1E60833EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E60839F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E6083434()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E770](qword_1E65EFA08[v1]);
  return sub_1E65E6D78();
}

uint64_t sub_1E60834BC(uint64_t a1)
{
  v2 = *v1;
  sub_1E65E6D28();
  MEMORY[0x1E694E770](qword_1E65EFA08[v2]);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard12AppSizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 460.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 1366.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (a1 == 1194.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E60835AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1E60837AC()
{
  result = qword_1EE2DB3A8[0];
  if (!qword_1EE2DB3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB3A8);
  }

  return result;
}

unint64_t sub_1E6083800()
{
  result = qword_1ED0740B8;
  if (!qword_1ED0740B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740B8);
  }

  return result;
}

unint64_t sub_1E6083854()
{
  result = qword_1ED0740C0;
  if (!qword_1ED0740C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740C0);
  }

  return result;
}

unint64_t sub_1E60838A8()
{
  result = qword_1ED0740C8;
  if (!qword_1ED0740C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740C8);
  }

  return result;
}

unint64_t sub_1E60838FC()
{
  result = qword_1ED0740D0;
  if (!qword_1ED0740D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740D0);
  }

  return result;
}

unint64_t sub_1E6083950()
{
  result = qword_1EE2DB380;
  if (!qword_1EE2DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB380);
  }

  return result;
}

unint64_t sub_1E60839A4()
{
  result = qword_1ED0740D8;
  if (!qword_1ED0740D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740D8);
  }

  return result;
}

uint64_t sub_1E60839F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740E8, &qword_1E65EF9A0);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740F0, &qword_1E65EF9A8);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0740F8, &qword_1E65EF9B0);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074100, &qword_1E65EF9B8);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074108, &qword_1E65EF9C0);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074110, &qword_1E65EF9C8);
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074118, &qword_1E65EF9D0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E60837AC();
  v21 = v56;
  sub_1E65E6D98();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_1E65E6AF8();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_1E5FBE3E8();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_1E6083854();
            sub_1E65E6A68();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_1E6083800();
            v38 = v52;
            sub_1E65E6A68();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_1E60838A8();
        sub_1E65E6A68();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_1E6083950();
          v23 = v40;
          sub_1E65E6A68();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_1E60838FC();
          sub_1E65E6A68();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_1E60839A4();
        sub_1E65E6A68();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v17;
    }

    v33 = sub_1E65E68F8();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v35 = &type metadata for AppSizeClass;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v17;
}

uint64_t getEnumTagSinglePayload for ArtworkContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E6084394()
{
  result = qword_1ED0740E0;
  if (!qword_1ED0740E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0740E0);
  }

  return result;
}

unint64_t sub_1E60843EC()
{
  result = qword_1EE2DB330;
  if (!qword_1EE2DB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB330);
  }

  return result;
}

unint64_t sub_1E6084444()
{
  result = qword_1EE2DB338;
  if (!qword_1EE2DB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB338);
  }

  return result;
}

unint64_t sub_1E608449C()
{
  result = qword_1EE2DB370;
  if (!qword_1EE2DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB370);
  }

  return result;
}

unint64_t sub_1E60844F4()
{
  result = qword_1EE2DB378;
  if (!qword_1EE2DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB378);
  }

  return result;
}

unint64_t sub_1E608454C()
{
  result = qword_1EE2DB350;
  if (!qword_1EE2DB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB350);
  }

  return result;
}

unint64_t sub_1E60845A4()
{
  result = qword_1EE2DB358;
  if (!qword_1EE2DB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB358);
  }

  return result;
}

unint64_t sub_1E60845FC()
{
  result = qword_1EE2DB360;
  if (!qword_1EE2DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB360);
  }

  return result;
}

unint64_t sub_1E6084654()
{
  result = qword_1EE2DB368;
  if (!qword_1EE2DB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB368);
  }

  return result;
}

unint64_t sub_1E60846AC()
{
  result = qword_1EE2DB388;
  if (!qword_1EE2DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB388);
  }

  return result;
}

unint64_t sub_1E6084704()
{
  result = qword_1EE2DB390;
  if (!qword_1EE2DB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB390);
  }

  return result;
}

unint64_t sub_1E608475C()
{
  result = qword_1EE2DB340;
  if (!qword_1EE2DB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB340);
  }

  return result;
}

unint64_t sub_1E60847B4()
{
  result = qword_1EE2DB348;
  if (!qword_1EE2DB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB348);
  }

  return result;
}

unint64_t sub_1E608480C()
{
  result = qword_1EE2DB398;
  if (!qword_1EE2DB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB398);
  }

  return result;
}

unint64_t sub_1E6084864()
{
  result = qword_1EE2DB3A0;
  if (!qword_1EE2DB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB3A0);
  }

  return result;
}

uint64_t sub_1E60848C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E60848E4, 0, 0);
}

uint64_t sub_1E60848E4()
{
  v14 = v0;
  v1 = v0[2];
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[5] = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v0[2];
    v6 = sub_1E64F7254(v4, 0);
    v7 = *(sub_1E65D9CC8() - 8);
    v11 = sub_1E6259470(&v13, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v4, v5);
    v8 = v13;

    result = sub_1E5E24EE4(v8);
    if (v11 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v0[6] = v6;
  v12 = (v2 + *v2);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1E6084AD4;

  return v12(33, v6);
}

uint64_t sub_1E6084AD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1E6084CD8;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1E6084C0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6084C0C()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_1E64040DC(sub_1E6084DD0, v2, v1);

  v4 = sub_1E600AD24(v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1E6084CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6084D44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E6259E84(a1, a2, a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_1E6084DEC(uint64_t a1)
{
  v49 = sub_1E65DADD8();
  v3 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return result;
  }

  v37[1] = v1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1E601C2A4(0, v6, 0);
  v50 = v55;
  v8 = a1 + 56;
  result = sub_1E65E6748();
  v9 = result;
  v10 = 0;
  v42 = (v3 + 8);
  v43 = v3 + 16;
  v38 = a1 + 64;
  v39 = v6;
  v44 = a1;
  v40 = v3;
  v41 = a1 + 56;
  v48 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_31;
    }

    v45 = v10;
    v46 = *(a1 + 36);
    v47 = 1 << v9;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * v9, v49);
    v14 = sub_1E65DAD78();
    v16 = v15;
    v18 = v17;
    v54 = 1;
    v51 = v14;
    v52 = v15;
    v19 = v17 & 1;
    v53 = v17 & 1;
    sub_1E6018A94();
    sub_1E6018AE8();
    if (sub_1E65D7FF8())
    {
      v20 = 2;
      goto LABEL_12;
    }

    v54 = 8;
    v51 = v14;
    v52 = v16;
    v53 = v19;
    if (sub_1E65D7FF8())
    {
      v20 = 0;
LABEL_12:
      v21 = v48;
      sub_1E5FEE4CC(v14, v16, v19);
LABEL_13:
      v22 = sub_1E65DADA8();
      v24 = v23;
      goto LABEL_14;
    }

    v54 = 4;
    v51 = v14;
    v52 = v16;
    v53 = v18 & 1;
    v36 = sub_1E65D7FF8();
    sub_1E5FEE4CC(v14, v16, v18 & 1);
    if (v36)
    {
      v20 = 1;
      v21 = v48;
      goto LABEL_13;
    }

    v22 = 0;
    v24 = 0;
    v20 = -1;
    v21 = v48;
LABEL_14:
    result = (*v42)(v21, v49);
    v25 = v50;
    v55 = v50;
    v27 = *(v50 + 16);
    v26 = *(v50 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1E601C2A4((v26 > 1), v27 + 1, 1);
      v25 = v55;
    }

    *(v25 + 16) = v27 + 1;
    v28 = v25 + 24 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v24;
    *(v28 + 48) = v20;
    a1 = v44;
    v11 = 1 << *(v44 + 32);
    if (v9 >= v11)
    {
      goto LABEL_32;
    }

    v8 = v41;
    v29 = *(v41 + 8 * v13);
    if ((v29 & v47) == 0)
    {
      goto LABEL_33;
    }

    v50 = v25;
    if (v46 != *(v44 + 36))
    {
      goto LABEL_34;
    }

    v30 = v29 & (-2 << (v9 & 0x3F));
    if (v30)
    {
      v11 = __clz(__rbit64(v30)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v5 = v48;
      v12 = v39;
    }

    else
    {
      v31 = v13 << 6;
      v32 = v13 + 1;
      v12 = v39;
      v33 = (v38 + 8 * v13);
      v5 = v48;
      while (v32 < (v11 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_1E5F87098(v9, v46, 0);
          v11 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v9, v46, 0);
    }

LABEL_4:
    v10 = v45 + 1;
    v9 = v11;
    v3 = v40;
    if (v45 + 1 == v12)
    {
      return v50;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E608521C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - v8;
  sub_1E5E20198(7, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074120, &qword_1E65EFA78);
  result = swift_dynamicCast();
  if (result)
  {
    v12[0] = a1;
    v12[1] = a2;
    v13 = a3;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1E608537C@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v56 = type metadata accessor for RemoteBrowsingService();
  Description = v56[-1].Description;
  MEMORY[0x1EEE9AC00](v56);
  v55 = v2;
  v57 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v41 - v4;
  v5 = type metadata accessor for BookmarkService();
  v6 = v5[-1].Description;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v7;
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v11 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v12 = type metadata accessor for AppEnvironment(0);
  v13 = *(v12 + 44);
  v52 = v13;
  v46 = *(v12 + 100);
  swift_getKeyPath();
  v14 = v6[2];
  v50 = (v6 + 2);
  v51 = v14;
  v15 = v11 + v13;
  v16 = v11;
  v41 = v11;
  v14(v9, v15, v5);
  v47 = v5;
  v17 = *(v6 + 80);
  v49 = v8;
  v18 = swift_allocObject();
  v19 = v6[4];
  v48 = (v6 + 4);
  v53 = v19;
  v19(v18 + ((v17 + 16) & ~v17), v9, v5);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074120, &qword_1E65EFA78);
  swift_allocObject();

  v21 = sub_1E65E4E68();
  v45 = v21;
  v22 = v59;
  v59[3] = v20;
  v22[4] = &off_1F5FAA810;
  *v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65EB9E0;
  v24 = sub_1E65E60A8();
  v25 = *(v24 - 8);
  v42 = *(v25 + 56);
  v43 = v25 + 56;
  v44 = v9;
  v26 = v54;
  v42(v54, 1, 1, v24);
  v28 = v57;
  v27 = Description;
  v29 = v56;
  Description[2](v57, v16 + v46, v56);
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = (v55 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (v27)[4]((v32 + v30), v28, v29);
  v33 = v45;
  *(v32 + v31) = v45;
  v34 = v33;
  swift_retain_n();
  *(v23 + 32) = sub_1E6059EAC(0, 0, v26, &unk_1E65EFA88, v32);
  v42(v26, 1, 1, v24);
  v35 = v44;
  v36 = v47;
  v51(v44, v41 + v52, v47);
  v37 = (v17 + 32) & ~v17;
  v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v53(v39 + v37, v35, v36);
  *(v39 + v38) = v34;
  result = sub_1E6059EAC(0, 0, v26, &unk_1E65EFA98, v39);
  *(v23 + 40) = result;
  v59[5] = v23;
  return result;
}

uint64_t sub_1E60858D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 49) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6085908, 0, 0);
}

uint64_t sub_1E6085908()
{
  v1 = *(v0 + 49);
  v2 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  *(v0 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074150, &qword_1E65EFAF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 0x207010408uLL >> (8 * v1);
  v5 = sub_1E5F9B84C(inited);
  *(v0 + 96) = v5;
  swift_setDeallocating();
  v8 = (v2 + *v2);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1E6085A6C;

  return v8(v5);
}

uint64_t sub_1E6085A6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E6085C78;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_1E6085BA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6085BA4()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 49);
  sub_1E600B01C(v3, v2, *(v0 + 49));
  v6 = sub_1E608B580(v1, v3, v2, v5);
  sub_1E6001C2C(v3, v2, v5);
  v7 = *(v6 + 16);

  *v4 = v7 != 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6085C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6085CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6085E50, 0, 0);
}

uint64_t sub_1E6085E50()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6085F4C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6085F4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6086064, 0, 0);
}

uint64_t sub_1E6086064()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6086140;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6086140()
{

  return MEMORY[0x1EEE6DFA0](sub_1E608623C, 0, 0);
}

uint64_t sub_1E608623C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E608638C, v6, v5);
  }
}

uint64_t sub_1E608638C()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E60863FC, 0, 0);
}

uint64_t sub_1E60863FC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6086140;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E60864BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65D8C08();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074128, &qword_1E65EFAA0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074138, &qword_1E65EFAB0);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6086684, 0, 0);
}

uint64_t sub_1E6086684()
{
  v1 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[14] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E6086780;
  v4 = v0[10];

  return v6(v4);
}

uint64_t sub_1E6086780()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6086898, 0, 0);
}

uint64_t sub_1E6086898()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v0[16] = 0;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1E6086978;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6086978()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6086A74, 0, 0);
}

uint64_t sub_1E6086A74()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    (*(v3 + 32))(v0[6], v1, v2);
    v7 = sub_1E65D8BF8();
    v8 = sub_1E6084DEC(v7);
    v0[18] = v8;

    v9 = sub_1E65D8BE8();
    v0[19] = sub_1E6084DEC(v9);
    v0[20] = v6;

    sub_1E5FA9E80(v10);
    v0[21] = sub_1E600AEC8(v8);

    sub_1E65E6058();
    v0[22] = sub_1E65E6048();
    v12 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6086C54, v12, v11);
  }
}

uint64_t sub_1E6086C54()
{

  *(v0 + 184) = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E6086CC8, 0, 0);
}

uint64_t sub_1E6086CC8()
{
  v1 = v0[21];
  v2 = sub_1E60872AC(v0[23]);

  v3 = sub_1E608A3B0(v2, v1, sub_1E608A58C, sub_1E608A58C);

  v4 = -1;
  v5 = -1 << v3[32];
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 7);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v0[24] = v9;
  while (v6)
  {
LABEL_5:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(v3 + 6) + 24 * (v10 | (v8 << 6));
    v12 = *(v11 + 16);
    if (v12 != 255)
    {
      v34 = *v11;
      v32 = *(v11 + 8);
      sub_1E600B01C(*v11, v32, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E64F64F4(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_1E64F64F4((v14 > 1), v15 + 1, 1, v9);
        v16 = v15 + 1;
        v9 = v18;
      }

      *(v9 + 2) = v16;
      v17 = &v9[24 * v15];
      *(v17 + 4) = v34;
      *(v17 + 5) = v32;
      v17[48] = v12;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v13 + 56];
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_5;
    }
  }

  if (qword_1EE2D7790 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
LABEL_17:
  v19 = sub_1E65E3B68();
  __swift_project_value_buffer(v19, qword_1EE2EA2A0);

  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6338();
  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[18];
  v23 = v0[19];
  if (v22)
  {
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    v26 = *(v24 + 16);

    *(v25 + 4) = v26;

    *(v25 + 12) = 2048;
    v27 = *(v23 + 16);

    *(v25 + 14) = v27;

    *(v25 + 22) = 2048;
    *(v25 + 24) = *(v9 + 2);

    _os_log_impl(&dword_1E5DE9000, v20, v21, "Bookmarks Changed, inserted %ld, deleted: %ld, total affected: %ld", v25, 0x20u);
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v28 = v0[3];
  v29 = swift_task_alloc();
  v0[25] = v29;
  *(v29 + 16) = v9;
  *(v29 + 24) = v28;
  v30 = swift_task_alloc();
  v0[26] = v30;
  *v30 = v0;
  v30[1] = sub_1E60870B0;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E60870B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E60871E4, 0, 0);
}

uint64_t sub_1E60871E4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v0[16] = v0[20];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1E6086978;
  v2 = v0[11];
  v3 = v0[7];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E60872AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074148, &qword_1E65EFAF0);
    v1 = sub_1E65E6888();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 56;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = *(a1 + 48) + 24 * (__clz(__rbit64(v4)) | (v8 << 6));
    sub_1E600B01C(*v12, *(v12 + 8), *(v12 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
    swift_dynamicCast();
    sub_1E65E6D28();
    if (v24 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v24 <= 1u)
      {
        v13 = v24 != 0;
      }

      else if (v24 == 2)
      {
        v13 = 2;
      }

      else if (v24 == 3)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      MEMORY[0x1E694E740](v13);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
    v14 = -1 << *(v1 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_36;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 24 * v9;
    *v10 = v22;
    *(v10 + 8) = v23;
    *(v10 + 16) = v24;
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1E6087584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6087630, 0, 0);
}

uint64_t sub_1E6087630()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1E65E60A8();
    v4 = *(v3 - 8);
    v27 = *(v4 + 56);
    v26 = (v4 + 48);
    v25 = (v4 + 8);
    v5 = (v1 + 48);
    v28 = v3;
    do
    {
      v31 = v2;
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 88);
      v11 = *(v5 - 2);
      v12 = *(v5 - 1);
      v29 = v5;
      v13 = *v5;
      v27(v8, 1, 1, v3);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 56) = v13;
      sub_1E5DF4C84(v8, v9);
      LODWORD(v9) = (*v26)(v9, 1, v3);
      sub_1E600B01C(v11, v12, v13);
      v30 = v12;
      v15 = v12;
      v16 = v13;
      sub_1E600B01C(v11, v15, v13);

      v17 = *(v0 + 96);
      if (v9 == 1)
      {
        sub_1E5DFE50C(*(v0 + 96), &unk_1ED0735B0, &qword_1E65EA000);
      }

      else
      {
        sub_1E65E6098();
        (*v25)(v17, v3);
      }

      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1E65E5FC8();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = **(v0 + 72);
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1E65EFAD0;
      *(v22 + 24) = v14;

      if (v20 | v18)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v6 = 0;
      }

      v5 = v29 + 24;
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v21;
      swift_task_create();

      sub_1E6001C2C(v11, v30, v16);
      sub_1E5DFE50C(v7, &unk_1ED0735B0, &qword_1E65EA000);
      v2 = v31 - 1;
      v3 = v28;
    }

    while (v31 != 1);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E608795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6087A30, 0, 0);
}

uint64_t sub_1E6087A30()
{
  v1 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  *(v0 + 88) = sub_1E65E6058();
  *(v0 + 96) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6087AD8, v3, v2);
}

uint64_t sub_1E6087AD8()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6087B54, 0, 0);
}

uint64_t sub_1E6087B54(uint64_t a1)
{
  *(v1 + 104) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6087BE0, v3, v2);
}

uint64_t sub_1E6087BE0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_1E65E4E18();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6087C78(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for BookmarkService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60858D8(a1, a2, v2 + v7);
}

uint64_t sub_1E6087D5C(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6085CE4(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_3Tm_4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1E6087F5C(uint64_t a1)
{
  Description = type metadata accessor for BookmarkService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60864BC(a1, v6, v7, v1 + v5, v8);
}

unint64_t *sub_1E608807C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a6;
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E600B01C(a4, a5, v6);
    v12 = sub_1E608B308(v11, a2, a3, a4, a5);

    sub_1E6001C2C(a4, a5, v6);
    sub_1E6001C2C(a4, a5, v6);
    return v12;
  }

  return result;
}

void *sub_1E608814C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1E60881E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D9CC8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741B8, &qword_1E65EFB28);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1EE2D7028, MEMORY[0x1E69CC888], MEMORY[0x1E69CC898]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E608850C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D7B58();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6088834(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65DADD8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6088B5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074148, &qword_1E65EFAF0);
  result = sub_1E65E6888();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *(v16 + 8);
    v33 = *v16;
    v18 = *(v16 + 16);
    sub_1E65E6D28();
    if (v18 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v18 <= 1)
      {
        if (v18)
        {
          MEMORY[0x1E694E740](1);
          v19 = v33;
          v20 = v17;
          v21 = 1;
        }

        else
        {
          MEMORY[0x1E694E740](0);
          v19 = v33;
          v20 = v17;
          v21 = 0;
        }
      }

      else if (v18 == 2)
      {
        MEMORY[0x1E694E740](2);
        v19 = v33;
        v20 = v17;
        v21 = 2;
      }

      else if (v18 == 3)
      {
        MEMORY[0x1E694E740](3);
        v19 = v33;
        v20 = v17;
        v21 = 3;
      }

      else
      {
        MEMORY[0x1E694E740](4);
        v19 = v33;
        v20 = v17;
        v21 = 4;
      }

      sub_1E600B01C(v19, v20, v21);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_39;
        }
      }

      goto LABEL_43;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_39:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 24 * v25;
    *v30 = v33;
    *(v30 + 8) = v17;
    *(v30 + 16) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_44;
    }

    v4 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E6088E5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B760, &qword_1E65EA440);
  result = sub_1E65E6888();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1E65E6D28();

    sub_1E65E5D78();
    result = sub_1E65E6D78();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6089080(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072028, &qword_1E65EA490);
  result = sub_1E65E6888();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = v16[1];
    v28 = *v16;
    sub_1E65E6D28();
    if (v17 > 2)
    {
      if (v17 != 3 && v17 != 4 && v17 != 5)
      {
LABEL_25:
        sub_1E5E05374(v28, v17);
        MEMORY[0x1E694D7C0](v28, v17);
      }
    }

    else if (v17 > 2)
    {
      goto LABEL_25;
    }

    sub_1E65E5D78();

    result = sub_1E65E6D78();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_40;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v9 + 48) + 16 * v21);
    *v26 = v28;
    v26[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_41;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E60893A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D8838();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741A8, &qword_1E65EFB20);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED0741B0, MEMORY[0x1E69CB5B8], MEMORY[0x1E69CB5C0]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E60896C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D96F8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074188, &qword_1E65EFB10);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED074190, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E60899F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D9D28();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074198, &qword_1E65EFB18);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6089D18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65DA488();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074168, &qword_1E65EFB00);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B9C8(&qword_1ED074170, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E608A040(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074178, &qword_1E65EFB08);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E608B964();
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1E608A340(uint64_t a1, uint64_t a2)
{

  return sub_1E608A3B0(a1, a2, sub_1E608AC24, sub_1E608AC24);
}

void *sub_1E608A3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_1E608814C(v15, v10, a2, a1, a4);

    MEMORY[0x1E694F1C0](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_1E608A58C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v57 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_54;
  }

  v60 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v4 = a3 + 56;
  v54 = v11;
  v55 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v12 = __clz(__rbit64(v10));
      v58 = (v10 - 1) & v10;
    }

    else
    {
      v13 = v6;
      do
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_108;
        }

        if (v6 >= v11)
        {
LABEL_106:

          return sub_1E6088B5C(v57, a2, v60, v5);
        }

        v14 = *(v7 + 8 * v6);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v58 = (v14 - 1) & v14;
    }

    v15 = *(a4 + 48) + 24 * (v12 | (v6 << 6));
    v65 = *v15;
    v63 = *(v15 + 8);
    v16 = *(v15 + 16);
    sub_1E65E6D28();
    if (v16 == 255)
    {
      sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if (v16 <= 1)
      {
        if (v16)
        {
          MEMORY[0x1E694E740](1);
          v17 = v65;
          v18 = v63;
          v19 = 1;
        }

        else
        {
          MEMORY[0x1E694E740](0);
          v17 = v65;
          v18 = v63;
          v19 = 0;
        }
      }

      else if (v16 == 2)
      {
        MEMORY[0x1E694E740](2);
        v17 = v65;
        v18 = v63;
        v19 = 2;
      }

      else if (v16 == 3)
      {
        MEMORY[0x1E694E740](3);
        v17 = v65;
        v18 = v63;
        v19 = 3;
      }

      else
      {
        MEMORY[0x1E694E740](4);
        v17 = v65;
        v18 = v63;
        v19 = 4;
      }

      sub_1E600B01C(v17, v18, v19);
      sub_1E65E5D78();
    }

    result = sub_1E65E6D78();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v4 + 8 * (v21 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    result = sub_1E600B034(v65, v63, v16);
    v5 = a3;
    v11 = v54;
    v7 = v55;
    v10 = v58;
  }

  v24 = ~v20;
  v25 = *(a3 + 48);
  while (1)
  {
    v26 = v25 + 24 * v21;
    v27 = *(v26 + 16);
    if (v27 == 255)
    {
      if (v16 == 255)
      {
        goto LABEL_51;
      }

      goto LABEL_29;
    }

    if (v16 == 255)
    {
      goto LABEL_29;
    }

    result = *v26;
    if (*(v26 + 16) <= 1u)
    {
      break;
    }

    if (v27 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_45;
      }
    }

    else if (v27 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_45;
      }
    }

    else if (v16 == 4)
    {
      goto LABEL_45;
    }

LABEL_29:
    v21 = (v21 + 1) & v24;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((*(v4 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!*(v26 + 16))
  {
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (v16 != 1)
  {
    goto LABEL_29;
  }

LABEL_45:
  if (result != v65 || *(v26 + 8) != v63)
  {
    result = sub_1E65E6C18();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  result = sub_1E600B034(v65, v63, v27);
LABEL_51:
  v7 = v55;
  v57[v22] |= v23;
  v10 = v58;
  v29 = __OFADD__(v60++, 1);
  v5 = a3;
  v11 = v54;
  if (!v29)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_54:
  v30 = 0;
  v56 = v5 + 56;
  v31 = 1 << *(v5 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v5 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v4 + 56;
  v59 = v34;
  v60 = 0;
  while (2)
  {
    if (v33)
    {
      v36 = __clz(__rbit64(v33));
      v66 = (v33 - 1) & v33;
LABEL_66:
      v64 = v36 | (v30 << 6);
      v39 = *(v5 + 48) + 24 * v64;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      sub_1E65E6D28();
      if (v42 == 255)
      {
        sub_1E65E6D48();
      }

      else
      {
        sub_1E65E6D48();
        if (v42 <= 1)
        {
          if (v42)
          {
            MEMORY[0x1E694E740](1);
            v43 = v40;
            v44 = v41;
            v45 = 1;
          }

          else
          {
            MEMORY[0x1E694E740](0);
            v43 = v40;
            v44 = v41;
            v45 = 0;
          }
        }

        else if (v42 == 2)
        {
          MEMORY[0x1E694E740](2);
          v43 = v40;
          v44 = v41;
          v45 = 2;
        }

        else if (v42 == 3)
        {
          MEMORY[0x1E694E740](3);
          v43 = v40;
          v44 = v41;
          v45 = 3;
        }

        else
        {
          MEMORY[0x1E694E740](4);
          v43 = v40;
          v44 = v41;
          v45 = 4;
        }

        sub_1E600B01C(v43, v44, v45);
        sub_1E65E5D78();
      }

      result = sub_1E65E6D78();
      v46 = -1 << *(v4 + 32);
      v47 = result & ~v46;
      if (((*(v35 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
LABEL_58:
        result = sub_1E600B034(v40, v41, v42);
        v4 = a4;
        v5 = a3;
        v34 = v59;
        v33 = v66;
        continue;
      }

      v48 = ~v46;
      v49 = *(a4 + 48);
LABEL_82:
      v50 = v49 + 24 * v47;
      v51 = *(v50 + 16);
      if (v51 == 255)
      {
        if (v42 == 255)
        {
          goto LABEL_103;
        }
      }

      else if (v42 != 255)
      {
        result = *v50;
        if (*(v50 + 16) <= 1u)
        {
          if (*(v50 + 16))
          {
            if (v42 == 1)
            {
LABEL_97:
              v52 = result == v40 && *(v50 + 8) == v41;
              if (v52 || (result = sub_1E65E6C18(), (result & 1) != 0))
              {
                result = sub_1E600B034(v40, v41, v51);
LABEL_103:
                v5 = a3;
                *(v57 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
                v4 = a4;
                v29 = __OFADD__(v60++, 1);
                v34 = v59;
                v33 = v66;
                if (v29)
                {
                  __break(1u);
                  goto LABEL_106;
                }

                continue;
              }
            }
          }

          else if (!v42)
          {
            goto LABEL_97;
          }
        }

        else if (v51 == 2)
        {
          if (v42 == 2)
          {
            goto LABEL_97;
          }
        }

        else if (v51 == 3)
        {
          if (v42 == 3)
          {
            goto LABEL_97;
          }
        }

        else if (v42 == 4)
        {
          goto LABEL_97;
        }
      }

      v47 = (v47 + 1) & v48;
      if (((*(v35 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_82;
    }

    break;
  }

  v37 = v30;
  while (1)
  {
    v30 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v30 >= v34)
    {
      goto LABEL_106;
    }

    v38 = *(v56 + 8 * v30);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v66 = (v38 - 1) & v38;
      goto LABEL_66;
    }
  }

LABEL_108:
  __break(1u);
  return result;
}

unint64_t *sub_1E608AC24(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1E65E6D28();

      sub_1E65E5D78();
      v26 = sub_1E65E6D78();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1E6088E5C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1E65E6D28();

      sub_1E65E5D78();
      v39 = sub_1E65E6D78();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1E65E6C18() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E608B000(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 0xFF)
  {
    return sub_1E65E6D48();
  }

  sub_1E65E6D48();
  if (a4 <= 1u)
  {
    v5 = a4 != 0;
  }

  else if (a4 == 2)
  {
    v5 = 2;
  }

  else if (a4 == 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  MEMORY[0x1E694E740](v5);

  return sub_1E65E5D78();
}

uint64_t sub_1E608B0C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6087584(a1, a2, v7, v6);
}

uint64_t sub_1E608B178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E608795C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E608B250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v4);
}

uint64_t sub_1E608B308(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v35 = a5;
  v36 = a4;
  v29 = a1;
  v6 = sub_1E65DADD8();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v33 = v8;
  v34 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v8 + 16;
  v30 = 0;
  v31 = (v8 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v11 << 6);
    (*(v33 + 16))(v10, *(v34 + 48) + *(v33 + 72) * v23, v6);
    if (sub_1E65DADA8() == v36 && v24 == v35)
    {

      result = (*v31)(v10, v6);
      goto LABEL_15;
    }

    v19 = sub_1E65E6C18();

    result = (*v31)(v10, v6);
    if (v19)
    {
LABEL_15:
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_18:
        v26 = v34;

        return sub_1E6088834(v29, v28, v30, v26);
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E608B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = *MEMORY[0x1E69E9840];
  v40 = sub_1E65DADD8();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v13 = v11 & 0x3F;
  v33 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v33;
  v41 = a2;
  v39 = a3;
  v15 = sub_1E600B01C(a2, a3, a4);
  if (v13 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v31 = a4;
    v32 = v5;
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](v15);
    v34 = v30 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v14);
    v16 = 0;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v5 = (v17 + 63) >> 6;
    v37 = v10 + 16;
    v38 = v10;
    v35 = 0;
    v36 = (v10 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_13:
      v10 = v20 | (v16 << 6);
      a4 = a1;
      (*(v38 + 16))(v12, *(a1 + 48) + *(v38 + 72) * v10, v40);
      if (sub_1E65DADA8() == v41 && v23 == v39)
      {

        (*v36)(v12, v40);
        goto LABEL_16;
      }

      v14 = sub_1E65E6C18();

      (*v36)(v12, v40);
      if (v14)
      {
LABEL_16:
        *&v34[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_19:
          v25 = sub_1E6088834(v34, v33, v35, a1);
          sub_1E6001C2C(v41, v39, v31);
          return v25;
        }
      }
    }

    v21 = v16;
    while (1)
    {
      v16 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v16 >= v5)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 56 + 8 * v16);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = v41;
  v29 = v39;
  sub_1E600B01C(v41, v39, a4);
  v25 = sub_1E608807C(v27, v33, a1, v28, v29, a4);

  MEMORY[0x1E694F1C0](v27, -1, -1);
  sub_1E6001C2C(v28, v29, a4);
  return v25;
}

unint64_t sub_1E608B964()
{
  result = qword_1ED074180;
  if (!qword_1ED074180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072920, &qword_1E65EC040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074180);
  }

  return result;
}

uint64_t sub_1E608B9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E608BA10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C0, &qword_1E65EFB30);
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1E65DB928();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DC108();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v0, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1E5E1FA80(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1E65DB918();
  sub_1E65DC0F8();
  type metadata accessor for AppFeature(0);
  sub_1E608C470(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E608C470(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0], MEMORY[0x1E699D3B8]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v14 = sub_1E65E4F08();
  (*(v16 + 8))(v3, v17);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_1E608BD88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E608BE28, 0, 0);
}

uint64_t sub_1E608BE28()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E608BF44;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E608BF44()
{

  return MEMORY[0x1EEE6DFA0](sub_1E608C05C, 0, 0);
}

uint64_t sub_1E608C05C()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D0, &qword_1E65EFB58);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4498, &qword_1ED0741D0, &qword_1E65EFB58, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65DC008();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E608C19C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E608BD88(a1, v1 + v5);
}

uint64_t sub_1E608C298()
{
  sub_1E65DBFF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E608C2F8(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DC068();
  v7 = type metadata accessor for AppState(0);
  v8 = a1 + v7[14];

  *(v8 + 8) = v6;
  v9 = sub_1E65DC048();
  v10 = a1 + v7[15];

  *(v10 + 8) = v9;
  v11 = sub_1E65DC078();
  v12 = a1 + v7[16];

  *(v12 + 8) = v11;
  v13 = sub_1E65DC088();
  v14 = a1 + v7[17];

  *(v14 + 8) = v13;
  sub_1E65DC038();
  v15 = a1 + v7[19];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  return (*(v3 + 40))(v15 + *(v16 + 28), v5, v2);
}

uint64_t sub_1E608C470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E608C4C4(uint64_t a1)
{
  sub_1E65E0DC8();
  v2 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](1313426720, 0xE400000000000000);
  return v2;
}

uint64_t sub_1E608C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E608C5F4, v6, v5);
}

uint64_t sub_1E608C5F4()
{

  type metadata accessor for AppComposer(0);
  swift_getObjectType();
  sub_1E65DB6B8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E608C678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a2;
  v130 = a1;
  v127 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v125 = *(v4 - 8);
  v126 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v113 = &v100 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v100 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v100 - v11;
  v12 = sub_1E65D76F8();
  v121 = *(v12 - 8);
  v122 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v112 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v117 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v129 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v100 - v21;
  v22 = sub_1E65D7848();
  v118 = *(v22 - 8);
  v119 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v110 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v100 - v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  MEMORY[0x1EEE9AC00](v114);
  v27 = &v100 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v29 = &v100 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v30 = MEMORY[0x1EEE9AC00](v104);
  v105 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v108 = &v100 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v107 = &v100 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v120 = &v100 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v103 = &v100 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v102 = &v100 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v100 - v42;
  v44 = type metadata accessor for AppState(0);
  sub_1E65DE488();
  v45 = v134;
  v46 = v135;
  v47 = v136;
  v131 = v134;
  v132 = v135;
  v133 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v45, v46, v47);
  v124 = v43;
  v48 = v115;
  sub_1E65E4C98();
  (*(v116 + 8))(v29, v48);
  v116 = v3;
  sub_1E5DFD1CC(v3, v27, &qword_1ED073950, &unk_1E65F4360);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = *v27;
  v50 = *(v27 + 1);
  v52 = v27[16];
  if (EnumCaseMultiPayload == 1)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0);
    sub_1E6053A2C(&v27[*(v53 + 48)], v120);
    v134 = v51;
    v135 = v50;
    v136 = v52;
    sub_1E600B01C(v51, v50, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v54 = v130;
    v55 = v117;
    sub_1E65E4C98();
    v56 = v129;
    sub_1E5E1F544(v129);
    sub_1E5DFE50C(v55, &qword_1ED071F78, &unk_1E65EA3F0);
    v57 = v118;
    v58 = *(v118 + 48);
    v59 = v56;
    v60 = v119;
    if (v58(v59, 1, v119) == 1)
    {
      sub_1E65D77C8();
      v61 = v58(v129, 1, v60);
      v62 = v112;
      if (v61 != 1)
      {
        sub_1E5DFE50C(v129, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v57 + 32))(v110, v129, v60);
      v62 = v112;
    }

    (*(v121 + 16))(v62, v123, v122);
    v72 = *(v54 + *(v44 + 192) + 64);
    if (*(v72 + 16))
    {
      v73 = sub_1E6416FB4(v51, v50, v52);
      v75 = v74;
      sub_1E6001C2C(v51, v50, v52);
      if (v75)
      {
        v76 = *(v72 + 56);
        v77 = v125;
        v78 = v76 + *(v125 + 72) * v73;
        v79 = v101;
        v80 = v126;
        (*(v125 + 16))(v101, v78, v126);
        (*(v77 + 32))(v113, v79, v80);
        goto LABEL_18;
      }
    }

    else
    {
      sub_1E6001C2C(v51, v50, v52);
    }

    (*(v125 + 104))(v113, *MEMORY[0x1E699CB70], v126);
LABEL_18:
    sub_1E608D314(v54, v107);
    v90 = v124;
    v91 = v105;
    sub_1E5DFD1CC(v124, v105, &unk_1ED077CC0, &unk_1E65F2610);
    v92 = swift_getEnumCaseMultiPayload();
    v93 = v120;
    v94 = v120;
    if (v92 <= 2)
    {
      if (v92)
      {
        if (v92 != 1)
        {
          sub_1E5DFE50C(v91, &unk_1ED077CC0, &unk_1E65F2610);
          v94 = v93;
          goto LABEL_27;
        }

        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
        v96 = sub_1E65D76A8();
        (*(*(v96 - 8) + 8))(v91 + v95, v96);
      }

      v94 = v90;
    }

LABEL_27:
    sub_1E5DFD1CC(v94, v108, &unk_1ED077CC0, &unk_1E65F2610);
    sub_1E604BABC();
    sub_1E65DE7C8();
    sub_1E5DFE50C(v93, &unk_1ED077CC0, &unk_1E65F2610);
    v98 = v90;
    return sub_1E5DFE50C(v98, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v134 = *v27;
  v135 = v50;
  v136 = v52;
  sub_1E600B01C(v51, v50, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v63 = v130;
  v64 = v117;
  sub_1E65E4C98();
  v65 = v128;
  sub_1E5E1F544(v128);
  sub_1E5DFE50C(v64, &qword_1ED071F78, &unk_1E65EA3F0);
  v66 = v118;
  v67 = *(v118 + 48);
  v68 = v65;
  v69 = v119;
  if (v67(v68, 1, v119) == 1)
  {
    sub_1E65D77C8();
    v70 = v67(v128, 1, v69);
    v71 = v109;
    if (v70 != 1)
    {
      sub_1E5DFE50C(v128, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v66 + 32))(v106, v128, v69);
    v71 = v109;
  }

  (*(v121 + 16))(v71, v123, v122);
  v81 = *(v63 + *(v44 + 192) + 64);
  if (!*(v81 + 16))
  {
    sub_1E6001C2C(v51, v50, v52);
    goto LABEL_24;
  }

  v82 = sub_1E6416FB4(v51, v50, v52);
  v84 = v83;
  sub_1E6001C2C(v51, v50, v52);
  if ((v84 & 1) == 0)
  {
LABEL_24:
    (*(v125 + 104))(v111, *MEMORY[0x1E699CB70], v126);
    goto LABEL_25;
  }

  v85 = *(v81 + 56);
  v86 = v125;
  v87 = v85 + *(v125 + 72) * v82;
  v88 = v100;
  v89 = v126;
  (*(v125 + 16))(v100, v87, v126);
  (*(v86 + 32))(v111, v88, v89);
LABEL_25:
  sub_1E608D314(v63, v102);
  v97 = v124;
  sub_1E5DFD1CC(v124, v103, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E604BABC();
  sub_1E65DE7C8();
  v98 = v97;
  return sub_1E5DFE50C(v98, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E608D314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v22 - v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v17 = v29;
  v16 = v30;
  if (v31 == 2)
  {
    v22 = type metadata accessor for AppState(0);
    v27 = v17;
    v28 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    sub_1E65E4D78();
    sub_1E6001C2C(v17, v16, 2u);
    sub_1E65E4C98();
    (*(v7 + 8))(v9, v6);
    sub_1E65E4DA8();
    sub_1E5DFE50C(v5, &qword_1ED0741E0, &qword_1E65EFC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v3, &qword_1ED0741D8, &unk_1E6606270);
    sub_1E608D85C(v13, v15, v25);
    sub_1E5DFE50C(v13, &unk_1ED077CC0, &unk_1E65F2610);
    v18 = v15;
    v19 = &unk_1ED077CC0;
    v20 = &unk_1E65F2610;
  }

  else
  {
    sub_1E6001C2C(v29, v30, v31);
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    sub_1E65E4C98();
    sub_1E65E4DA8();
    v19 = &qword_1ED0741D8;
    v20 = &unk_1E6606270;
    v18 = v3;
  }

  return sub_1E5DFE50C(v18, v19, v20);
}

uint64_t sub_1E608D72C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65DA128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DA888();
  sub_1E65DA108();
  (*(v3 + 8))(v5, v2);
  v7[15] = 0;
  sub_1E608DB34();
  sub_1E608DB88();
  LOBYTE(v2) = sub_1E65E6228();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1E608D85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E65D76A8();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1E5DFD1CC(a1, &v25 - v13, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v23 = v14;
LABEL_14:
      sub_1E5DFE50C(v23, &unk_1ED077CC0, &unk_1E65F2610);
      return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
    }

    v16 = *v14;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
    (*(v26 + 8))(&v14[*(v17 + 48)], v6);
  }

  else
  {
    v16 = *v14;
  }

  sub_1E5DFD1CC(a2, v12, &unk_1ED077CC0, &unk_1E65F2610);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 2)
  {
    if (!v18)
    {
      *a3 = v16 & *v12;
      return swift_storeEnumTagMultiPayload();
    }

    if (v18 == 1)
    {
      v19 = *v12;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      v21 = *(v26 + 32);
      v21(v8, &v12[*(v20 + 48)], v6);
      v22 = *(v20 + 48);
      *a3 = v16 & v19;
      v21(&a3[v22], v8, v6);
      return swift_storeEnumTagMultiPayload();
    }

    v23 = v12;
    goto LABEL_14;
  }

  return sub_1E5DFD1CC(a1, a3, &unk_1ED077CC0, &unk_1E65F2610);
}

unint64_t sub_1E608DB34()
{
  result = qword_1ED0741F8;
  if (!qword_1ED0741F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0741F8);
  }

  return result;
}

unint64_t sub_1E608DB88()
{
  result = qword_1ED074200;
  if (!qword_1ED074200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074200);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E608DBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E608DC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1E608DCB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E608DCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E608DD40(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1E608DD78(uint64_t a1)
{
  sub_1E608E000(v1, v6);
  if (v8)
  {
    v4[0] = v6[0];
    v4[1] = v6[1];
    v5 = v7;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    return sub_1E6009FC0(v4);
  }

  else
  {
    v3 = *&v6[0];
    MEMORY[0x1E694E740](0);
    return MEMORY[0x1E694E740](v3);
  }
}

uint64_t sub_1E608DE08()
{
  sub_1E65E6D28();
  sub_1E608E000(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v1);
  }

  return sub_1E65E6D78();
}

uint64_t sub_1E608DEB0(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E608E000(v1, v6);
  if (v8)
  {
    v4[0] = v6[0];
    v4[1] = v6[1];
    v5 = v7;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v4);
  }

  else
  {
    v2 = *&v6[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v2);
  }

  return sub_1E65E6D78();
}

unint64_t sub_1E608DF54()
{
  result = qword_1EE2D85B8;
  if (!qword_1EE2D85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D85B8);
  }

  return result;
}

unint64_t sub_1E608DFAC()
{
  result = qword_1ED074208;
  if (!qword_1ED074208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074208);
  }

  return result;
}

uint64_t sub_1E608E038(uint64_t a1, uint64_t a2)
{
  sub_1E608E000(a1, v8);
  sub_1E608E000(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_1E608E000(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_1E608E114(v8);
    v3 = 0;
    return v3 & 1;
  }

  sub_1E608E000(v8, v7);
  if (v11 != 1)
  {
    sub_1E6009FC0(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x1E694E230](v7, v5);
  sub_1E6009FC0(v5);
  sub_1E6009FC0(v7);
LABEL_6:
  sub_1E608E17C(v8);
  return v3 & 1;
}

uint64_t sub_1E608E114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074210, &qword_1E65EFDF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppDataItemResolver(uint64_t a1)
{
  result = qword_1EE2D9998;
  if (!qword_1EE2D9998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E608E220(uint64_t a1)
{
  sub_1E608E2BC(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DEC91C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppEnvironment(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E608E2BC(uint64_t a1)
{
  if (!qword_1EE2D5150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074218, &qword_1E65EFE18);
    v1 = sub_1E65E3B08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D5150);
    }
  }
}

uint64_t sub_1E608E33C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1E6417254(a2), (v9 & 1) != 0))
  {
    sub_1E608E474(*(v5 + 56) + 48 * v8, v16);
    if (v17)
    {
      return sub_1E5DF599C(v16, a4);
    }

    else
    {
      v11 = *&v16[0];
      v12 = *(a3 + 8);
      v13 = type metadata accessor for AppDataItemResolver(0);
      v11(v12, a3 + *(v13 + 24));
      sub_1E608E000(a2, v15);
      sub_1E5DF650C(a4, v14);
      v14[40] = 1;
      sub_1E64078D0(v14, v15);
    }
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

void sub_1E608E4AC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  sub_1E608EBB8(a1 + 32, &v49);
  v47 = v49;
  v48[0] = v50[0];
  *(v48 + 9) = *(v50 + 9);
  v45 = v51;
  v46[0] = v52[0];
  *(v46 + 9) = *(v52 + 9);
  v7 = *a3;
  v8 = sub_1E6417254(&v47);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_1E641B10C(v13, a2 & 1);
    v8 = sub_1E6417254(&v47);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = sub_1E65E6C68();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_1E6424340();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();

    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E608EC28(&v45);
      sub_1E608E17C(&v47);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = (v19[6] + 48 * v8);
  v21 = v47;
  v22 = v48[0];
  *(v20 + 25) = *(v48 + 9);
  *v20 = v21;
  v20[1] = v22;
  v23 = (v19[7] + 48 * v8);
  v24 = v45;
  v25 = v46[0];
  *(v23 + 25) = *(v46 + 9);
  *v23 = v24;
  v23[1] = v25;
  v26 = v19[2];
  v12 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v12)
  {
    v19[2] = v27;
    if (v4 != 1)
    {
      v14 = a1 + 128;
      v28 = 1;
      while (v28 < *(a1 + 16))
      {
        sub_1E608EBB8(v14, &v49);
        v47 = v49;
        v48[0] = v50[0];
        *(v48 + 9) = *(v50 + 9);
        v45 = v51;
        v46[0] = v52[0];
        *(v46 + 9) = *(v52 + 9);
        v29 = *a3;
        v30 = sub_1E6417254(&v47);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v12 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v12)
        {
          goto LABEL_22;
        }

        a2 = v31;
        if (v29[3] < v34)
        {
          sub_1E641B10C(v34, 1);
          v30 = sub_1E6417254(&v47);
          if ((a2 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v37 = (v36[6] + 48 * v30);
        v38 = v47;
        v39 = v48[0];
        *(v37 + 25) = *(v48 + 9);
        *v37 = v38;
        v37[1] = v39;
        v40 = (v36[7] + 48 * v30);
        v41 = v45;
        v42 = v46[0];
        *(v40 + 25) = *(v46 + 9);
        *v40 = v41;
        v40[1] = v42;
        v43 = v36[2];
        v12 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v28;
        v36[2] = v44;
        v14 += 96;
        if (v4 == v28)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E608E898(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (result + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1E64F6354(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E608E9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1E601C1B4(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      sub_1E608EB5C(v4, &v15);
      v19 = v15;
      *v20 = v16[0];
      *&v20[9] = *(v16 + 9);
      v5 = v17;
      v18 = 0;
      v21 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v14 = v17;
        sub_1E601C1B4((v6 > 1), v7 + 1, 1);
        v5 = v14;
        v2 = v21;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 96 * v7;
      v10 = *v20;
      v9 = *&v20[16];
      *(v8 + 32) = v19;
      *(v8 + 48) = v10;
      *(v8 + 64) = v9;
      *(v8 + 80) = v5;
      v11 = *&v16[0];
      *(v8 + 96) = v15;
      *(v8 + 112) = v11;
      *(v8 + 120) = v18;
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074220, &qword_1E65EFEA0);
    v12 = sub_1E65E6A28();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v15 = v12;
  sub_1E608E4AC(v2, 1, &v15);
  return v15;
}

uint64_t sub_1E608EBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731D0, &qword_1E65ED028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1E608EC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D7348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7338();
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v6 = sub_1E65D83C8();
  v87 = sub_1E63E9F24(v6, v7);
  sub_1E608F990();
  sub_1E65D7358();
  sub_1E65D83B8();
  v8 = v107;
  if (v107 >> 1 == 0xFFFFFFFF)
  {
    return (*(v3 + 32))(a1, v5, v2);
  }

  v81 = v3;
  v82 = v2;
  v9 = v103 | ((v104 | (v105 << 16)) << 32);
  v83 = a1;
  v78 = v97;
  v77 = v93;
  v80 = v88;
  v79 = v89;
  if (!(v107 >> 62))
  {
    v73 = v94 | ((v95 | (v96 << 16)) << 32);
    v74 = v98;
    v23 = v102 | (v9 << 8);
    v24 = 1 << *(v23 + 0x20);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *((v102 | (v9 << 8)) + 0x38);
    v76 = v87;
    sub_1E5F8710C(v87, v88, v89 & 1);
    v27 = (v24 + 63) >> 6;

    LODWORD(v75) = 0;
    v28 = 0;
    if (!v26)
    {
      goto LABEL_28;
    }

    do
    {
LABEL_26:
      while (1)
      {
        v29 = *(v23 + 48) + 24 * (__clz(__rbit64(v26)) | (v28 << 6));
        v30 = *(v29 + 16);
        v26 &= v26 - 1;
        v85 = *v29;
        v86 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
        result = sub_1E65D7FB8();
        if (v84 != 3)
        {
          break;
        }

        if (!v26)
        {
          goto LABEL_28;
        }
      }

      if (v84 == 1)
      {
        v32 = 0x10000;
      }

      else
      {
        v32 = 0x8000;
      }

      if (v84)
      {
        v33 = v32;
      }

      else
      {
        v33 = 2;
      }

      if ((v33 & v75) != 0)
      {
        v33 = 0;
      }

      LODWORD(v75) = v33 | v75;
    }

    while (v26);
    while (1)
    {
LABEL_28:
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v31 >= v27)
      {
        break;
      }

      v26 = *(v23 + 56 + 8 * v31);
      ++v28;
      if (v26)
      {
        v28 = v31;
        goto LABEL_26;
      }
    }

    v49 = v76;
    v50 = v80;
    *&v85 = v76;
    *(&v85 + 1) = v80;
    v45 = v79 & 1;
    v86 = v79 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    v51 = v84;
    if (v84 == 14)
    {
      sub_1E608F928(&v87);
      v47 = v49;
      v48 = v50;
LABEL_67:
      sub_1E5F87058(v47, v48, v45);
      v2 = v82;
      a1 = v83;
      v3 = v81;
    }

    else
    {
      sub_1E5F87058(v49, v50, v45);
      v58 = sub_1E60E5CE0(v51);
      LOBYTE(v85) = v77;
      BYTE7(v85) = BYTE6(v73);
      *(&v85 + 5) = WORD2(v73);
      *(&v85 + 1) = v73;
      *(&v85 + 1) = v78;
      v86 = v74 & 1;
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      v2 = v82;
      a1 = v83;
      v3 = v81;
      if (v84 == 2)
      {
        v60 = 0;
      }

      else
      {
        if (v84)
        {
          v64 = MEMORY[0x1E69DB8D8];
        }

        else
        {
          v64 = MEMORY[0x1E69DB8C8];
        }

        v60 = *v64;
      }

      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      LOBYTE(v85) = 0;
      v65 = sub_1E65E64B8();

      v66 = v65;
      *&v85 = sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      sub_1E608F928(&v87);
    }

    return (*(v3 + 32))(a1, v5, v2);
  }

  v10 = v106;
  v75 = v102;
  if (v107 >> 62 == 1)
  {
    v73 = v94 | ((v95 | (v96 << 16)) << 32);
    v74 = v98;
    v11 = v108;
    v12 = v108 + 56;
    v13 = 1 << *(v108 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v108 + 56);
    v76 = v87;
    sub_1E5F8710C(v87, v88, v89 & 1);

    v72 = 0;
    v17 = 0;
    if (!v15)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v18 = *(v11 + 48) + 24 * (__clz(__rbit64(v15)) | (v17 << 6));
        v19 = *(v18 + 16);
        v15 &= v15 - 1;
        v85 = *v18;
        v86 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
        result = sub_1E65D7FB8();
        if (v84 != 3)
        {
          break;
        }

        if (!v15)
        {
          goto LABEL_9;
        }
      }

      if (v84 == 1)
      {
        v21 = 0x10000;
      }

      else
      {
        v21 = 0x8000;
      }

      if (v84)
      {
        v22 = v21;
      }

      else
      {
        v22 = 2;
      }

      if ((v22 & v72) != 0)
      {
        v22 = 0;
      }

      v72 |= v22;
    }

    while (v15);
    while (1)
    {
LABEL_9:
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      if (v20 >= ((v13 + 63) >> 6))
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v17;
      if (v15)
      {
        v17 = v20;
        goto LABEL_7;
      }
    }

    v43 = v76;
    v44 = v80;
    *&v85 = v76;
    *(&v85 + 1) = v80;
    v45 = v79 & 1;
    v86 = v79 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    v46 = v84;
    if (v84 == 14)
    {
      sub_1E608F928(&v87);
      v47 = v43;
      v48 = v44;
      goto LABEL_67;
    }

    sub_1E5F87058(v43, v44, v45);
    v55 = sub_1E60E5CE0(v46);
    LOBYTE(v85) = v75;
    BYTE7(v85) = BYTE6(v9);
    *(&v85 + 5) = WORD2(v9);
    *(&v85 + 1) = v9;
    *(&v85 + 1) = v10;
    v86 = v8 & 1;
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
    sub_1E65D7FB8();
    a1 = v83;
    if (v84 == 2)
    {
      v57 = 0;
    }

    else
    {
      if (v84)
      {
        v61 = MEMORY[0x1E69DB8D8];
      }

      else
      {
        v61 = MEMORY[0x1E69DB8C8];
      }

      v57 = *v61;
    }

    LOBYTE(v85) = v77;
    BYTE7(v85) = BYTE6(v73);
    *(&v85 + 5) = WORD2(v73);
    *(&v85 + 1) = v73;
    *(&v85 + 1) = v78;
    v86 = v74 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
    sub_1E65D7FB8();
    v3 = v81;
    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    LOBYTE(v85) = 0;
    v62 = sub_1E65E64B8();

    v63 = v62;
    *&v85 = sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    sub_1E608F928(&v87);

    v2 = v82;
    return (*(v3 + 32))(a1, v5, v2);
  }

  v73 = v90 | ((v91 | (v92 << 16)) << 32);
  v34 = 1 << *(v106 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v106 + 56);
  v74 = v98 | ((v99 | ((v100 | (v101 << 16)) << 32)) << 8);
  sub_1E5F8710C(v97, v74, v102 & 1);

  LODWORD(v76) = 0;
  v37 = 0;
  if (!v36)
  {
    goto LABEL_47;
  }

  do
  {
LABEL_45:
    while (1)
    {
      v38 = *(v10 + 48) + 24 * (__clz(__rbit64(v36)) | (v37 << 6));
      v39 = *(v38 + 16);
      v36 &= v36 - 1;
      v85 = *v38;
      v86 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
      result = sub_1E65D7FB8();
      if (v84 != 3)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    if (v84 == 1)
    {
      v41 = 0x10000;
    }

    else
    {
      v41 = 0x8000;
    }

    if (v84)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2;
    }

    if ((v42 & v76) != 0)
    {
      v42 = 0;
    }

    LODWORD(v76) = v42 | v76;
  }

  while (v36);
LABEL_47:
  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v40 >= ((v34 + 63) >> 6))
    {

      v52 = v78;
      v53 = v74;
      *&v85 = v78;
      *(&v85 + 1) = v74;
      v45 = v75 & 1;
      v86 = v75 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      v54 = v84;
      if (v84 == 2)
      {
        sub_1E608F928(&v87);
        v47 = v52;
        v48 = v53;
        goto LABEL_67;
      }

      sub_1E5F87058(v52, v53, v45);
      *&v85 = v80;
      BYTE8(v85) = v79;
      HIBYTE(v85) = BYTE6(v73);
      *(&v85 + 13) = WORD2(v73);
      *(&v85 + 9) = v73;
      v86 = v77 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
      sub_1E65D7FB8();
      v3 = v81;
      v2 = v82;
      v67 = MEMORY[0x1E69DB8D8];
      if ((v54 & 1) == 0)
      {
        v67 = MEMORY[0x1E69DB8C8];
      }

      v68 = *v67;
      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      v69 = sub_1E65E64A8();

      v70 = v69;
      *&v85 = sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      sub_1E608F928(&v87);

      a1 = v83;
      return (*(v3 + 32))(a1, v5, v2);
    }

    v36 = *(v10 + 56 + 8 * v40);
    ++v37;
    if (v36)
    {
      v37 = v40;
      goto LABEL_45;
    }
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1E608F7E4(uint64_t a1)
{
  sub_1E65D83B8();
  if (v8 >> 1 != 0xFFFFFFFF)
  {
    v10 = v7[0];
    v11 = v7[1];
    v12 = v7[2];
    v13 = v7[3];
    v14 = v8;
    v15 = v9;
    sub_1E6394B4C();
    sub_1E608F928(v7);
  }

  sub_1E65D83C8();
  v1 = sub_1E65D83A8();
  v3 = v2;
  v5 = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074228, &qword_1E65EFEA8);
  sub_1E65D7FB8();
  sub_1E5F87058(v1, v3, v5);
  return sub_1E65DFCD8();
}

uint64_t sub_1E608F928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074230, &qword_1E65EFEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E608F990()
{
  result = qword_1ED074238;
  if (!qword_1ED074238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074238);
  }

  return result;
}

unint64_t sub_1E608F9E4()
{
  result = qword_1EE2D72B8;
  if (!qword_1EE2D72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72B8);
  }

  return result;
}

uint64_t sub_1E608FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 96) = a5;
  *(v8 + 40) = type metadata accessor for PageMetricsClick(0);
  *(v8 + 48) = swift_task_alloc();
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E608FAE0, 0, 0);
}

uint64_t sub_1E608FAE0()
{
  v1 = *(v0 + 96) >> 6;
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      v34 = *(v0 + 40);
      v33 = *(v0 + 48);
      v36 = *(v0 + 24);
      v35 = *(v0 + 32);
      v37 = *(v0 + 16);
      v38 = sub_1E65D9D78();
      (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
      v39 = v34[5];
      v40 = *MEMORY[0x1E69CB9F0];
      v41 = sub_1E65D8C68();
      (*(*(v41 - 8) + 104))(v33 + v39, v40, v41);
      v42 = v34[6];
      v43 = sub_1E65D74E8();
      (*(*(v43 - 8) + 56))(v33 + v42, 1, 1, v43);
      v44 = v34[8];
      v45 = sub_1E65DA208();
      (*(*(v45 - 8) + 56))(v33 + v44, 1, 1, v45);
      v46 = v34[14];
      v47 = *MEMORY[0x1E69CBCC8];
      v48 = sub_1E65D8F28();
      (*(*(v48 - 8) + 104))(v33 + v46, v47, v48);
      v49 = v34[15];
      v50 = *MEMORY[0x1E69CC498];
      v51 = sub_1E65D9908();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v33 + v49, v50, v51);
      (*(v52 + 56))(v33 + v49, 0, 1, v51);
      v53 = MEMORY[0x1E69E7CC0];
      v54 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v33 + v34[7]) = v53;
      v55 = (v33 + v34[9]);
      *v55 = 0;
      v55[1] = 0;
      v56 = (v33 + v34[10]);
      *v56 = 0;
      v56[1] = 0;
      *(v33 + v34[11]) = v54;
      v57 = (v33 + v34[12]);
      *v57 = 0;
      v57[1] = 0;
      v58 = (v33 + v34[13]);
      *v58 = v37;
      v58[1] = v36;
      v59 = *(v35 + 48);

      v61 = (v59 + *v59);
      v60 = swift_task_alloc();
      *(v0 + 80) = v60;
      *v60 = v0;
      v60[1] = sub_1E6090310;
      v32 = *(v0 + 48);
    }

    else
    {
      v4 = *(v0 + 56);
      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      v8 = *(v0 + 16);
      v7 = *(v0 + 24);
      v9 = sub_1E65D9D78();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = v6[5];
      v11 = *MEMORY[0x1E69CB9C8];
      v12 = sub_1E65D8C68();
      (*(*(v12 - 8) + 104))(v4 + v10, v11, v12);
      v13 = v6[6];
      v14 = sub_1E65D74E8();
      (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
      v15 = v6[8];
      v16 = sub_1E65DA208();
      (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
      v17 = v6[14];
      v18 = *MEMORY[0x1E69CBCC8];
      v19 = sub_1E65D8F28();
      (*(*(v19 - 8) + 104))(v4 + v17, v18, v19);
      v20 = v6[15];
      v21 = *MEMORY[0x1E69CC498];
      v22 = sub_1E65D9908();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v4 + v20, v21, v22);
      (*(v23 + 56))(v4 + v20, 0, 1, v22);
      v24 = MEMORY[0x1E69E7CC0];
      v25 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v4 + v6[7]) = v24;
      v26 = (v4 + v6[9]);
      *v26 = 0;
      v26[1] = 0;
      v27 = (v4 + v6[10]);
      *v27 = 0;
      v27[1] = 0;
      *(v4 + v6[11]) = v25;
      v28 = (v4 + v6[12]);
      *v28 = 0;
      v28[1] = 0;
      v29 = (v4 + v6[13]);
      *v29 = v8;
      v29[1] = v7;
      v30 = *(v5 + 48);

      v61 = (v30 + *v30);
      v31 = swift_task_alloc();
      *(v0 + 64) = v31;
      *v31 = v0;
      v31[1] = sub_1E6090188;
      v32 = *(v0 + 56);
    }

    return v61(v32);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1E6090188()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E6090498;
  }

  else
  {
    v2 = sub_1E609029C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E609029C()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6090310()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E6090518;
  }

  else
  {
    v2 = sub_1E6090424;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6090424()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6090498()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6090518()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6090598(uint64_t a1)
{
  v46 = sub_1E65DAEF8();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E2D18();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601C47C(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65DAED8();
      sub_1E65DAEE8();
      v21 = v41;
      sub_1E65E2D08();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601C47C((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}