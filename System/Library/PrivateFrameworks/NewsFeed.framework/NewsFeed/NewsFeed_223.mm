unint64_t sub_1D6F4C030()
{
  result = qword_1EC8989B8;
  if (!qword_1EC8989B8)
  {
    sub_1D6F4C088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989B8);
  }

  return result;
}

void sub_1D6F4C088()
{
  if (!qword_1EC8989C0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8989C0);
    }
  }
}

uint64_t sub_1D6F4C574@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1D7258F1C();
  v7 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v13;
  switch(a2)
  {
    case 1:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C38], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v112 = sub_1D7258EFC();
      v220 = v113;
      v221 = v112;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v114;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v115 = objc_opt_self();
      v116 = [v115 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v117 = [v115 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v118 = [v115 fahrenheit];
      sub_1D725790C();
      v41 = [v115 fahrenheit];
      goto LABEL_27;
    case 2:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984CC8], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v82 = sub_1D7258EFC();
      v220 = v83;
      v221 = v82;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v84;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v85 = objc_opt_self();
      v86 = [v85 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v87 = [v85 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v88 = [v85 fahrenheit];
      sub_1D725790C();
      v41 = [v85 fahrenheit];
      goto LABEL_27;
    case 3:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C70], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v97 = sub_1D7258EFC();
      v220 = v98;
      v221 = v97;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v99;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v100 = objc_opt_self();
      v101 = [v100 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v102 = [v100 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v103 = [v100 fahrenheit];
      sub_1D725790C();
      v104 = [v100 fahrenheit];
      goto LABEL_28;
    case 4:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984CD0], v9, v10);
      v42 = *a1;
      v43 = a1[1];
      v44 = sub_1D7258EFC();
      v220 = v45;
      v221 = v44;
      sub_1D5F59310(&v225);
      v219 = v225;
      v46 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v47;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v48 = objc_opt_self();
      v49 = [v48 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v50 = [v48 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v51 = [v48 fahrenheit];
      sub_1D725790C();
      v52 = [v48 fahrenheit];
      goto LABEL_33;
    case 5:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C80], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v135 = sub_1D7258EFC();
      v220 = v136;
      v221 = v135;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v137;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v138 = objc_opt_self();
      v139 = [v138 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v140 = [v138 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v141 = [v138 fahrenheit];
      sub_1D725790C();
      v142 = [v138 fahrenheit];
      goto LABEL_28;
    case 6:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C08], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v158 = sub_1D7258EFC();
      v220 = v159;
      v221 = v158;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v160;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v161 = objc_opt_self();
      v162 = [v161 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v163 = [v161 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v164 = [v161 fahrenheit];
      sub_1D725790C();
      v41 = [v161 fahrenheit];
      goto LABEL_27;
    case 7:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984CA0], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v105 = sub_1D7258EFC();
      v220 = v106;
      v221 = v105;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v107;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v108 = objc_opt_self();
      v109 = [v108 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v110 = [v108 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v111 = [v108 fahrenheit];
      sub_1D725790C();
      v41 = [v108 fahrenheit];
      goto LABEL_27;
    case 8:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984CC0], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v180 = sub_1D7258EFC();
      v220 = v181;
      v221 = v180;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v182;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v183 = objc_opt_self();
      v184 = [v183 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v185 = [v183 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v186 = [v183 fahrenheit];
      sub_1D725790C();
      v41 = [v183 fahrenheit];
      goto LABEL_27;
    case 9:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C50], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v60 = sub_1D7258EFC();
      v220 = v61;
      v221 = v60;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v62;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v63 = objc_opt_self();
      v64 = [v63 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v65 = [v63 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v66 = [v63 fahrenheit];
      sub_1D725790C();
      v41 = [v63 fahrenheit];
      goto LABEL_27;
    case 10:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984D20], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v173 = sub_1D7258EFC();
      v220 = v174;
      v221 = v173;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v175;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v176 = objc_opt_self();
      v177 = [v176 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v178 = [v176 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v179 = [v176 fahrenheit];
      sub_1D725790C();
      v41 = [v176 fahrenheit];
      goto LABEL_27;
    case 11:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984CD8], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v34 = sub_1D7258EFC();
      v220 = v35;
      v221 = v34;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v36;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v37 = objc_opt_self();
      v38 = [v37 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v39 = [v37 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v40 = [v37 fahrenheit];
      sub_1D725790C();
      v41 = [v37 fahrenheit];
      goto LABEL_27;
    case 12:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C88], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v53 = sub_1D7258EFC();
      v220 = v54;
      v221 = v53;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v55;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v56 = objc_opt_self();
      v57 = [v56 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v58 = [v56 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v59 = [v56 fahrenheit];
      sub_1D725790C();
      v41 = [v56 fahrenheit];
      goto LABEL_27;
    case 13:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984D10], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v151 = sub_1D7258EFC();
      v220 = v152;
      v221 = v151;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v153;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v154 = objc_opt_self();
      v155 = [v154 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v156 = [v154 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v157 = [v154 fahrenheit];
      sub_1D725790C();
      v41 = [v154 fahrenheit];
LABEL_27:
      v187 = v41;
      goto LABEL_28;
    case 14:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C68], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v26 = sub_1D7258EFC();
      v220 = v27;
      v221 = v26;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v28;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v29 = objc_opt_self();
      v30 = [v29 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v31 = [v29 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v32 = [v29 fahrenheit];
      sub_1D725790C();
      v33 = [v29 fahrenheit];
      goto LABEL_28;
    case 15:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C78], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v89 = sub_1D7258EFC();
      v220 = v90;
      v221 = v89;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v91;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v92 = objc_opt_self();
      v93 = [v92 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v94 = [v92 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v95 = [v92 fahrenheit];
      sub_1D725790C();
      v96 = [v92 fahrenheit];
      goto LABEL_28;
    case 16:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C90], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v17 = sub_1D7258EFC();
      v220 = v18;
      v221 = v17;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v20;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v21 = objc_opt_self();
      v22 = [v21 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v23 = [v21 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v24 = [v21 fahrenheit];
      sub_1D725790C();
      v25 = [v21 fahrenheit];
      goto LABEL_28;
    case 17:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C10], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v119 = sub_1D7258EFC();
      v220 = v120;
      v221 = v119;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v121;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v122 = objc_opt_self();
      v123 = [v122 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v124 = [v122 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v125 = [v122 fahrenheit];
      sub_1D725790C();
      v126 = [v122 fahrenheit];
      goto LABEL_28;
    case 18:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984D18], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v165 = sub_1D7258EFC();
      v220 = v166;
      v221 = v165;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v167;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v168 = objc_opt_self();
      v169 = [v168 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v170 = [v168 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v171 = [v168 fahrenheit];
      sub_1D725790C();
      v172 = [v168 fahrenheit];
      goto LABEL_28;
    case 19:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C00], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v197 = sub_1D7258EFC();
      v220 = v198;
      v221 = v197;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v199;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v200 = objc_opt_self();
      v201 = [v200 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v202 = [v200 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v203 = [v200 fahrenheit];
      sub_1D725790C();
      v204 = [v200 fahrenheit];
      goto LABEL_28;
    case 20:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C20], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v127 = sub_1D7258EFC();
      v220 = v128;
      v221 = v127;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v129;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v130 = objc_opt_self();
      v131 = [v130 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v132 = [v130 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v133 = [v130 fahrenheit];
      sub_1D725790C();
      v134 = [v130 fahrenheit];
      goto LABEL_28;
    case 21:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984D28], v9, v10);
      v15 = *a1;
      v16 = a1[1];
      v143 = sub_1D7258EFC();
      v220 = v144;
      v221 = v143;
      sub_1D5F59310(&v225);
      v219 = v225;
      v19 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v145;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v146 = objc_opt_self();
      v147 = [v146 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v148 = [v146 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v149 = [v146 fahrenheit];
      sub_1D725790C();
      v150 = [v146 fahrenheit];
LABEL_28:
      sub_1D725790C();
      result = (*(v7 + 8))(v12, v222);
      *a3 = v15;
      *(a3 + 8) = v16;
      *(a3 + 16) = v221;
      *(a3 + 24) = v220;
      *(a3 + 32) = v219;
      v188 = (a3 + *(v19 + 40));
      *v188 = v218;
      v188[1] = v217;
      *(a3 + *(v19 + 32)) = 0;
      return result;
    case 22:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C98], v9, v10);
      v42 = *a1;
      v43 = a1[1];
      v189 = sub_1D7258EFC();
      v220 = v190;
      v221 = v189;
      sub_1D5F59310(&v225);
      v219 = v225;
      v46 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v191;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v192 = objc_opt_self();
      v193 = [v192 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v194 = [v192 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v195 = [v192 fahrenheit];
      sub_1D725790C();
      v196 = [v192 fahrenheit];
      goto LABEL_33;
    case 23:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C38], v9, v10);
      v42 = *a1;
      v43 = a1[1];
      v205 = sub_1D7258EFC();
      v220 = v206;
      v221 = v205;
      sub_1D5F59310(&v225);
      v219 = v225;
      v46 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v207;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v208 = objc_opt_self();
      v209 = [v208 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v210 = [v208 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v211 = [v208 fahrenheit];
      sub_1D725790C();
      v74 = [v208 fahrenheit];
      goto LABEL_32;
    case 24:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C88], v9, v10);
      v42 = *a1;
      v43 = a1[1];
      v75 = sub_1D7258EFC();
      v220 = v76;
      v221 = v75;
      sub_1D5F59310(&v225);
      v219 = v225;
      v46 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v77;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v78 = objc_opt_self();
      v79 = [v78 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v80 = [v78 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v81 = [v78 fahrenheit];
      sub_1D725790C();
      v74 = [v78 fahrenheit];
      goto LABEL_32;
    case 25:
      (*(v7 + 104))(v12, *MEMORY[0x1E6984C60], v9, v10);
      v42 = *a1;
      v43 = a1[1];
      v67 = sub_1D7258EFC();
      v220 = v68;
      v221 = v67;
      sub_1D5F59310(&v225);
      v219 = v225;
      v46 = type metadata accessor for FeedWeather(0);
      sub_1D7258EDC();
      v223 = 0;
      v224 = 0xE000000000000000;
      sub_1D7263D4C();

      v223 = sub_1D7258F0C();
      v224 = v69;
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73F8B90);
      v217 = v224;
      v218 = v223;
      v70 = objc_opt_self();
      v71 = [v70 fahrenheit];
      sub_1D61D3F98();
      sub_1D725790C();
      v72 = [v70 fahrenheit];
      type metadata accessor for FeedWeather.Temperature(0);
      sub_1D725790C();
      v73 = [v70 fahrenheit];
      sub_1D725790C();
      v74 = [v70 fahrenheit];
LABEL_32:
      v212 = v74;
LABEL_33:
      sub_1D725790C();
      result = (*(v7 + 8))(v12, v222);
      *a3 = v42;
      *(a3 + 8) = v43;
      v213 = v220;
      *(a3 + 16) = v221;
      *(a3 + 24) = v213;
      *(a3 + 32) = v219;
      v214 = (a3 + *(v46 + 40));
      v215 = v217;
      *v214 = v218;
      v214[1] = v215;
      *(a3 + *(v46 + 32)) = 1;
      break;
    default:

      result = sub_1D60B1278(a1, a3);
      break;
  }

  return result;
}

uint64_t sub_1D6F4F04C(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6C43796C74726170;
      break;
    case 2:
      result = 0x7964756F6C63;
      break;
    case 3:
      result = 7630696;
      break;
    case 4:
      result = 0x646967697266;
      break;
    case 5:
      result = 2038063464;
      break;
    case 6:
      result = 1953723748;
      break;
    case 7:
      result = 6778726;
      break;
    case 8:
      result = 0x797A65657262;
      break;
    case 9:
      result = 0x6C616369706F7274;
      break;
    case 10:
      result = 0x6E61636972727568;
      break;
    case 11:
      result = 0x656C7A7A697264;
      break;
    case 12:
      result = 1852399986;
      break;
    case 13:
      result = 0x6961527976616568;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 1818845544;
      break;
    case 16:
      result = 2003791475;
      break;
    case 17:
      result = 0x53676E69776F6C62;
      break;
    case 18:
      result = 0x6F6E537976616568;
      break;
    case 19:
      result = 0x65776F68536E7573;
      break;
    case 20:
      result = 0x7272756C466E7573;
      break;
    case 21:
      result = 0x4D797265746E6977;
      break;
    case 22:
      v3 = 0x4E7261656C63;
      goto LABEL_25;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      v3 = 0x4E796E696172;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6769000000000000;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6F4F2F8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6F4F04C(*a1);
  v5 = v4;
  if (v3 == sub_1D6F4F04C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6F4F380()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6F4F04C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F4F3E4(uint64_t a1)
{
  sub_1D6F4F04C(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F4F438(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6F4F04C(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6F4F498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F4F65C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6F4F4C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6F4F04C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6F4F4F4(uint64_t a1)
{
  v2 = sub_1D6A14D5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6F4F548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6A14D5C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6F4F5A4(uint64_t a1)
{
  v2 = sub_1D6A14D5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D6F4F608()
{
  result = qword_1EC8989C8;
  if (!qword_1EC8989C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989C8);
  }

  return result;
}

unint64_t sub_1D6F4F65C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

id sub_1D6F4F700(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  sub_1D5C3C480();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E69B5370]);

  v8 = sub_1D726265C();

  v9 = [v7 initWithContext:v5 issueIDs:v8];

  return v9;
}

id sub_1D6F4F7B4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = objc_allocWithZone(MEMORY[0x1E69B5370]);
  v4 = sub_1D726265C();
  v5 = [v3 initWithContext:v2 issueIDs:v4];

  return v5;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D6F4F868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D6F4F8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D6F4F938@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66EE6F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D6F4F980(void *a1)
{
  a1[1] = sub_1D665898C();
  a1[2] = sub_1D6658F60();
  result = sub_1D6F4F9B8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F4F9B8()
{
  result = qword_1EC8989D0;
  if (!qword_1EC8989D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989D0);
  }

  return result;
}

unint64_t sub_1D6F4FA0C(uint64_t a1)
{
  result = sub_1D6F4FA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F4FA34()
{
  result = qword_1EC8989D8;
  if (!qword_1EC8989D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989D8);
  }

  return result;
}

BOOL _s8NewsFeed18FormatGroupBindingV8DateTimeO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v4 == 3)
    {
      if ((v3 & 0xE0) != 0x60)
      {
        return 0;
      }
    }

    else if (v4 == 4)
    {
      if ((v3 & 0xE0) != 0x80)
      {
        return 0;
      }
    }

    else if ((v3 & 0xE0) != 0xA0)
    {
      return 0;
    }

    return ((v3 ^ v2) & 0x1F) == 0;
  }

  if (!v4)
  {
    return v3 < 0x20;
  }

  if (v4 != 1)
  {
    if ((v3 & 0xE0) == 0x40)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if ((v3 & 0xE0) == 0x20)
  {
    return ((v3 ^ v2) & 0x1F) == 0;
  }

  return 0;
}

unint64_t sub_1D6F4FB70(uint64_t a1)
{
  result = sub_1D6F4FB98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F4FB98()
{
  result = qword_1EC8989E0;
  if (!qword_1EC8989E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989E0);
  }

  return result;
}

unint64_t sub_1D6F4FBEC(void *a1)
{
  a1[1] = sub_1D6685E00();
  a1[2] = sub_1D66FF134();
  result = sub_1D6F4FC24();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F4FC24()
{
  result = qword_1EC8989E8;
  if (!qword_1EC8989E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989E8);
  }

  return result;
}

uint64_t _s8DateTimeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1B)
  {
    goto LABEL_17;
  }

  if (a2 + 229 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 229) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 229;
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

      return (*a1 | (v4 << 8)) - 229;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 229;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s8DateTimeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 229 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 229) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1B)
  {
    v4 = 0;
  }

  if (a2 > 0x1A)
  {
    v5 = ((a2 - 27) >> 8) + 1;
    *result = a2 - 27;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1D6F4FDF4(uint64_t a1)
{
  v46 = type metadata accessor for FormatInspectionItem(0);
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8(0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v37 - v10;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v38 = v2;
    v40 = (v2 + 48);
    v41 = (v2 + 56);
    v13 = (a1 + 40);
    v39 = xmmword_1D72E27B0;
    do
    {
      v15 = *v13;
      if (*v13 < 0)
      {
        v16 = *(v13 - 1);
        sub_1D6DB242C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
        v17 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v18 = swift_allocObject() + v17;

        v19 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = sub_1D5EE763C((v15 & 0x7FFFFFFFFFFFFFFFLL));
        v21 = v46;
        v22 = (v18 + *(v46 + 24));
        *v22 = v20;
        v22[1] = v23;
        v24 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
        *v18 = v39;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v25 = v18 + *(v21 + 28);
        *v25 = 0;
        *(v25 + 8) = 0;
        *(v25 + 16) = -1;
        (*v41)(v18, 0, 1, v21);
        v26 = v42;
        sub_1D6795424(v18, v42);
        v27 = v26;
        v28 = v43;
        sub_1D5CAD784(v27, v43, sub_1D5EA74B8);
        if ((*v40)(v28, 1, v21) == 1)
        {
          sub_1D6180C78(v28);
          v29 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1D5CAD784(v28, v45, type metadata accessor for FormatInspectionItem);
          v29 = MEMORY[0x1E69E7CC0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D698BAE0(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
          }

          v31 = v29[2];
          v30 = v29[3];
          if (v31 >= v30 >> 1)
          {
            v29 = sub_1D698BAE0((v30 > 1), v31 + 1, 1, v29);
          }

          v29[2] = v31 + 1;
          sub_1D5CAD784(v45, v29 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for FormatInspectionItem);
        }

        swift_setDeallocating();
        sub_1D6180C78(v18);
        swift_deallocClassInstance();
        v32 = swift_allocObject();
        sub_1D6F502FC(v16, v15);
        v32[2] = 0x726F727245;
        v32[3] = 0xE500000000000000;
        v32[4] = 0;
        v32[5] = 0;
        v32[6] = v29;
        v48 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D699039C(0, v12[2] + 1, 1, v12);
        }

        v34 = v12[2];
        v33 = v12[3];
        if (v34 >= v33 >> 1)
        {
          v12 = sub_1D699039C((v33 > 1), v34 + 1, 1, v12);
        }

        v12[2] = v34 + 1;
        v14 = &v12[5 * v34];
        v14[4] = v32;
        *(v14 + 5) = v48;
        v14[7] = &type metadata for FormatInspectionGroup;
        v14[8] = &off_1F518B2C0;
      }

      v13 += 2;
      --v11;
    }

    while (v11);
  }

  v35 = sub_1D7073500(v12);

  return v35;
}

void sub_1D6F502FC(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1D6F50354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6F503CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D6F50438(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t NoopBundleSessionManager.cachedSession.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BundleSession(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D6F50500()
{
  sub_1D6019CD8();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6F505AC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BundleSession(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void __swiftcall PuzzleComponentAccessoryViewEvent.init(identifier:item:target:)(NewsFeed::PuzzleComponentAccessoryViewEvent *__return_ptr retstr, Swift::String identifier, Swift::String item, NewsFeed::PuzzleComponentEventTarget target)
{
  v4 = *target;
  retstr->identifier = identifier;
  retstr->item = item;
  retstr->target = v4;
}

uint64_t PuzzleComponentAccessoryViewEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleComponentAccessoryViewEvent.item.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleComponentEventTarget.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t PuzzleComponentAccessoryViewEvent.scriptEventDetail.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D5C0BFF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 25705;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x64695F6D657469;
  *(inited + 120) = v6;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v7 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_1D6F508C0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D5C0BFF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 25705;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x64695F6D657469;
  *(inited + 120) = v6;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v7 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_1D6F509A4()
{
  result = qword_1EC8989F0;
  if (!qword_1EC8989F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989F0);
  }

  return result;
}

uint64_t sub_1D6F50A18(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1D72593CC();
      v5 = sub_1D726276C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1D72593CC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_1D6F50B74(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1D5B49474(0, &qword_1EDF27C08, &protocol descriptor for HeadlineViewStylerType);
      v4 = sub_1D726276C();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1D5B68374(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(v3);
    return v4;
  }

  return result;
}

uint64_t FeedGroupBundleArticleQuotas.merge(explicitSlotBundleArticleQuotas:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D72593CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - v21;
  if (!a1)
  {
    return sub_1D6F5363C(v3, a2, type metadata accessor for FeedGroupBundleArticleQuotas);
  }

  v31 = a2;
  sub_1D6F52A8C(v3, a1);
  v24 = v23;
  v30 = v25;
  v26 = *v3;
  (*(v7 + 16))(v22, v3 + *(v11 + 24), v6);
  (*(v7 + 56))(v22, 0, 1, v6);
  *v14 = v26;
  v14[1] = v24;
  sub_1D6C07A34(v22, v18);
  v27 = *(v7 + 48);
  if (v27(v18, 1, v6) == 1)
  {

    sub_1D72593BC();
    if (v27(v18, 1, v6) != 1)
    {
      sub_1D6F5309C(v18);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v18, v6);
  }

  (*(v7 + 32))(v14 + *(v11 + 24), v10, v6);
  v29 = sub_1D6F51648(v30, v24, v22);

  sub_1D6F5309C(v22);
  *(v14 + *(v11 + 28)) = v29;
  return sub_1D6EC87DC(v14, v31);
}

uint64_t sub_1D6F50F38()
{
  v0 = sub_1D72593CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v31 - v7;
  v8 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v31 - v22;
  __swift_allocate_value_buffer(v8, qword_1EDF13580);
  v32 = __swift_project_value_buffer(v8, qword_1EDF13580);
  (*(v1 + 56))(v23, 1, 1, v0);
  v24 = MEMORY[0x1E69E7CC0];
  *v11 = 0;
  *(v11 + 1) = v24;
  sub_1D6C07A34(v23, v19);
  v25 = *(v1 + 48);
  v26 = v25(v19, 1, v0);
  v33 = v4;
  if (v26 == 1)
  {
    sub_1D72593BC();
    if (v25(v19, 1, v0) != 1)
    {
      sub_1D6F5309C(v19);
    }
  }

  else
  {
    (*(v1 + 32))(v34, v19, v0);
  }

  v27 = *(v1 + 32);
  v27(&v11[*(v8 + 24)], v34, v0);
  sub_1D6C07A34(v23, v15);
  if (v25(v15, 1, v0) == 1)
  {
    v28 = v33;
    sub_1D72593BC();
    if (v25(v15, 1, v0) != 1)
    {
      sub_1D6F5309C(v15);
    }
  }

  else
  {
    v29 = v33;
    v27(v33, v15, v0);
    v28 = v29;
  }

  (*(v1 + 8))(v28, v0);
  sub_1D6F5309C(v23);
  *&v11[*(v8 + 28)] = MEMORY[0x1E69E7CC0];
  return sub_1D6EC87DC(v11, v32);
}

uint64_t FeedGroupBundleArticleQuotas.init(defaultRatio:slottedRatios:defaultRatioDepthTransform:slottedRatiosDepthTransforms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = sub_1D72593CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a5;
  v19 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v19 = a1;
  }

  *(a4 + 8) = v19;
  sub_1D6C07A34(a2, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {

    sub_1D72593BC();
    if (v20(v13, 1, v14) != 1)
    {
      sub_1D6F5309C(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  v21 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  (*(v15 + 32))(a4 + *(v21 + 24), v18, v14);
  v22 = sub_1D6F51648(a3, a1, a2);

  result = sub_1D6F5309C(a2);
  *(a4 + *(v21 + 28)) = v22;
  return result;
}

uint64_t static FeedGroupBundleArticleQuotas.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF13578 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF13580);
  return sub_1D6F5363C(v3, a1, type metadata accessor for FeedGroupBundleArticleQuotas);
}

uint64_t FeedGroupBundleArticleQuotas.defaultRatioDepthTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupBundleArticleQuotas(0) + 24);
  v4 = sub_1D72593CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupBundleArticleQuotas.slottedRatiosDepthTransforms.getter()
{
  type metadata accessor for FeedGroupBundleArticleQuotas(0);
}

uint64_t sub_1D6F51648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v35 - v12;
  v14 = sub_1D72593CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](a1, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v35 - v22;
  if (v21)
  {
    if (a2)
    {
      v24 = *(a2 + 16);
    }

    else
    {
      v24 = 0;
    }

    v27 = *(v21 + 16);
    if (v24 == v27)
    {
    }

    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    sub_1D5C384A0(0);
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E6530];
    *(v29 + 16) = xmmword_1D7270C10;
    v31 = MEMORY[0x1E69E65A8];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v27;
    if (a2)
    {
      v32 = *(a2 + 16);
    }

    else
    {
      v32 = 0;
    }

    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v32;
    sub_1D7262EDC();
    sub_1D725C30C("Provided slottedRatiosDepthTransforms whos count %ld doesn't match slottedRatios count %ld. Using identity function for all slotted ratios", v35[0], v35[1]);

    sub_1D6C07A34(a3, v9);
    v34 = *(v15 + 48);
    if (v34(v9, 1, v14) == 1)
    {
      sub_1D72593BC();
      if (v34(v9, 1, v14) != 1)
      {
        sub_1D6F5309C(v9);
      }

      if (a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      (*(v15 + 32))(v18, v9, v14);
      if (a2)
      {
LABEL_24:
        v26 = *(a2 + 16);
LABEL_27:
        v33 = v18;
        return sub_1D6F50A18(v33, v26);
      }
    }

    v26 = 0;
    goto LABEL_27;
  }

  sub_1D6C07A34(a3, v13);
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    sub_1D72593BC();
    if (v25(v13, 1, v14) != 1)
    {
      sub_1D6F5309C(v13);
    }

    if (a2)
    {
      goto LABEL_8;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  (*(v15 + 32))(v23, v13, v14);
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v26 = *(a2 + 16);
LABEL_18:
  v33 = v23;
  return sub_1D6F50A18(v33, v26);
}

uint64_t FeedGroupBundleArticleQuotas.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1D72593CC();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  MEMORY[0x1EEE9AC00](v54, v7);
  v53 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  sub_1D6F53168(0, &qword_1EDF03B88, MEMORY[0x1E69E6F48]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v46 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F53114();
  v23 = v57;
  sub_1D7264B0C();
  if (v23)
  {
    v32 = a1;
  }

  else
  {
    v50 = v12;
    v57 = v16;
    v24 = v19;
    v25 = v55;
    v26 = v56;
    v27 = v54;
    sub_1D5CEE4F4();
    v58 = 1;
    sub_1D6F531CC(&qword_1EDF1AEF8, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
    v28 = v22;
    sub_1D726427C();
    if (v59)
    {
      v29 = v59;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v59) = 0;
    sub_1D72642DC();
    v49 = v29;
    v31 = v30;
    LOBYTE(v59) = 2;
    sub_1D5BABCD8(&qword_1EDF188B8, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34C0]);
    sub_1D726427C();
    sub_1D5CEE5A8(0, &qword_1EDF1B5E8, MEMORY[0x1E69E62F8]);
    v58 = 3;
    sub_1D6F5322C(&qword_1EDF053C0, &qword_1EDF188B8, MEMORY[0x1E69E34C0], MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v47 = v28;
    v48 = v18;
    v46 = v59;
    v34 = v53;
    *v53 = v31;
    v35 = v50;
    v34[1] = v49;
    sub_1D6C07A34(v57, v35);
    v36 = *(v26 + 48);
    if (v36(v35, 1, v25) == 1)
    {

      v37 = v51;
      sub_1D72593BC();
      v38 = v36(v35, 1, v25) == 1;
      v39 = v56;
      v40 = v35;
      v41 = a1;
      if (!v38)
      {
        sub_1D6F5309C(v40);
      }
    }

    else
    {
      v42 = *(v26 + 32);
      v39 = v26;
      v37 = v51;
      v42(v51, v35, v25);

      v41 = a1;
    }

    v43 = v53;
    (*(v39 + 32))(v53 + *(v27 + 24), v37, v25);
    v44 = v57;
    v45 = sub_1D6F51648(v46, v49, v57);

    sub_1D6F5309C(v44);
    (*(v24 + 8))(v47, v48);
    *(v43 + *(v27 + 28)) = v45;
    sub_1D6EC87DC(v43, v52);
    v32 = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t FeedGroupBundleArticleQuotas.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D72593CC();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F53168(0, &qword_1EDF02890, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F53114();
  sub_1D7264B5C();
  LOBYTE(v25) = 0;
  v14 = v23;
  sub_1D726441C();
  if (v14)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v16 = v22;
  v23 = v10;
  if (*(*(v2 + 8) + 16))
  {
    v25 = *(v2 + 8);
    v24 = 1;
    sub_1D5CEE4F4();
    sub_1D6F531CC(&unk_1EDF04A78, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v17 = v16;
    v21 = v9;
  }

  else
  {
    v21 = v9;
    v17 = v22;
  }

  v22 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  sub_1D72593BC();
  sub_1D5BABCD8(&unk_1EDF188C0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34B8]);
  v18 = sub_1D7261FBC();
  (*(v17 + 8))(v7, v4);
  if (v18)
  {
    v19 = v23;
    v20 = v21;
  }

  else
  {
    LOBYTE(v25) = 2;
    sub_1D5BABCD8(&qword_1EDF188D0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34B0]);
    v20 = v21;
    sub_1D726443C();
    v19 = v23;
  }

  if (*(*(v2 + *(v22 + 28)) + 16))
  {
    v25 = *(v2 + *(v22 + 28));
    v24 = 3;
    sub_1D5CEE5A8(0, &qword_1EDF1B5E8, MEMORY[0x1E69E62F8]);
    sub_1D6F5322C(&qword_1EDF053C8, &qword_1EDF188D0, MEMORY[0x1E69E34B0], MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v19 + 8))(v13, v20);
}

uint64_t sub_1D6F52454()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F52530(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F525F8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6F526D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F535F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6F52700(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006F697461;
  v3 = 0x52746C7561666564;
  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001D73B86C0;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x80000001D73B86E0;
  }

  if (*v1)
  {
    v3 = 0x52646574746F6C73;
    v2 = 0xED0000736F697461;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D6F52798()
{
  v1 = 0x52746C7561666564;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x52646574746F6C73;
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

unint64_t sub_1D6F5282C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6F535F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6F52854(uint64_t a1)
{
  v2 = sub_1D6F53114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F52890(uint64_t a1)
{
  v2 = sub_1D6F53114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F52904()
{
  v0 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF13578 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  v5 = __swift_project_value_buffer(v2, qword_1EDF13580);
  sub_1D6F5363C(v5, v4, type metadata accessor for FeedGroupBundleArticleQuotas);
  sub_1D5E3A6E0(0);
  v6 = swift_allocObject();
  result = sub_1D6EC87DC(v4, v6 + *(*v6 + 112));
  *(v6 + *(*v6 + 120)) = MEMORY[0x1E69E7CC0];
  qword_1EDF13F18 = v6;
  return result;
}

double static FeedGroupKnobsRuleValue<>.zero.getter()
{
  if (qword_1EDF13F10 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1D6F52A8C(unint64_t *a1, uint64_t a2)
{
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v64 - v6;
  v75 = sub_1D72593CC();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v72 = &v64 - v12;
  v64 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0);
  v13 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v64 - v19);
  v21 = a1[1];
  v78 = v21;
  v69 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  v70 = a1;
  v77 = *(a1 + *(v69 + 28));
  v22 = *(a2 + 16);
  v65 = v13;
  v66 = a2;
  v71 = v77;
  if (v22)
  {
    *&v68 = v7;
    v76 = MEMORY[0x1E69E7CC0];
    v67 = v21;

    sub_1D69973A8(0, v22, 0);
    v23 = v76;
    v24 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v25 = *(v13 + 72);
    v26 = v22;
    do
    {
      sub_1D6F5363C(v24, v20, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
      v27 = *v20;
      sub_1D6F536A4(v20);
      v76 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69973A8((v28 > 1), v29 + 1, 1);
        v23 = v76;
      }

      *(v23 + 16) = v29 + 1;
      *(v23 + 8 * v29 + 32) = v27;
      v24 += v25;
      --v26;
    }

    while (v26);
    v21 = v67;
    v7 = v68;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1D71F5B98(v23);
  v32 = v31;

  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v35 = __OFADD__(v30, 1);
    v34 = v30 + 1;
    if (v35)
    {
      goto LABEL_45;
    }
  }

  v36 = *(v21 + 16);
  v37 = v34 - v36;
  v38 = v75;
  v39 = v70;
  if (__OFSUB__(v34, v36))
  {
    goto LABEL_43;
  }

  if (v37 < 1)
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    *&v33 = *v70;
    v68 = v33;
    v40 = sub_1D726276C();
    *(v40 + 16) = v37;
    v41 = (v40 + 32);
    if (v37 > 3)
    {
      v42 = v37 & 0x7FFFFFFFFFFFFFFCLL;
      v41 += v37 & 0x7FFFFFFFFFFFFFFCLL;
      v43 = v68;
      v44 = vdupq_lane_s64(v68, 0);
      v45 = (v40 + 48);
      v46 = v37 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v45[-1] = v44;
        *v45 = v44;
        v45 += 2;
        v46 -= 4;
      }

      while (v46);
      if (v37 == v42)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v42 = 0;
      v43 = v68;
    }

    v47 = v42 + v36 - v34;
    do
    {
      *v41++ = v43;
    }

    while (!__CFADD__(v47++, 1));
  }

LABEL_22:
  sub_1D6987DE8(v40);
  v49 = v72;
  v50 = *(v73 + 16);
  v69 = *(v69 + 24);
  v67 = v50;
  *&v68 = v73 + 16;
  v50(v72, v39 + v69, v38);
  v51 = v71[2];
  v35 = __OFSUB__(v34, v51);
  v52 = v34 - v51;
  if (v35)
  {
    goto LABEL_44;
  }

  v53 = sub_1D6F50A18(v49, v52 & ~(v52 >> 63));
  sub_1D6987DA0(v53);
  if (!v22)
  {
    return;
  }

  v54 = *(v64 + 24);
  v55 = v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v71 = *(v65 + 72);
  v72 = v54;
  v56 = (v73 + 48);
  v57 = (v73 + 32);
  while (1)
  {
    sub_1D6F5363C(v55, v16, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    v58 = *v16;
    v59 = *(v16 + 8);
    v60 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    if ((v58 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

LABEL_27:
    if (v58 >= *(v60 + 2))
    {
      goto LABEL_41;
    }

    *&v60[8 * v58 + 32] = v59;
    v78 = v60;
    sub_1D6C07A34(&v72[v16], v7);
    sub_1D6F536A4(v16);
    v61 = *v56;
    v62 = v75;
    if ((*v56)(v7, 1, v75) == 1)
    {
      v67(v74, v70 + v69, v62);
      if (v61(v7, 1, v62) != 1)
      {
        sub_1D6F5309C(v7);
      }
    }

    else
    {
      (*v57)(v74, v7, v62);
    }

    v63 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1D5EC3BB4(v63);
    }

    if (v58 >= v63[2])
    {
      goto LABEL_42;
    }

    (*(v73 + 40))(v63 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v58, v74, v75);
    v77 = v63;
    v55 += v71;
    if (!--v22)
    {
      return;
    }
  }

  v60 = sub_1D5EC3BC8(v60);
  if ((v58 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1D6F5309C(uint64_t a1)
{
  sub_1D5CEE5A8(0, &qword_1EDF188B0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6F53114()
{
  result = qword_1EDF135A8[0];
  if (!qword_1EDF135A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF135A8);
  }

  return result;
}

void sub_1D6F53168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F53114();
    v7 = a3(a1, &type metadata for FeedGroupBundleArticleQuotas.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6F531CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CEE4F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6F5322C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CEE5A8(255, &qword_1EDF1B5E8, MEMORY[0x1E69E62F8]);
    sub_1D5BABCD8(a2, MEMORY[0x1E69E34A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FeedGroupBundleArticleQuotas.xavierQuotas.getter()
{
  v1 = sub_1D72593CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  (*(v2 + 16))(v5, v0 + *(v6 + 24), v1);

  return sub_1D725941C();
}

uint64_t _s8NewsFeed0B24GroupBundleArticleQuotasV2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v3 = result;
  v4 = *(result + 8);
  v5 = *(a2 + 8);
  v6 = *(v4 + 16);
  if (v6 != *(v5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_11:
    v10 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (MEMORY[0x1DA6F0A40](v3 + *(v10 + 24), a2 + *(v10 + 24)))
    {
      v11 = *(v10 + 28);
      v12 = *(v3 + v11);
      v13 = *(a2 + v11);

      return sub_1D635E718(v12, v13);
    }

    return 0;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D6F534EC()
{
  result = qword_1EC8989F8;
  if (!qword_1EC8989F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8989F8);
  }

  return result;
}

unint64_t sub_1D6F53544()
{
  result = qword_1EDF13598;
  if (!qword_1EDF13598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13598);
  }

  return result;
}

unint64_t sub_1D6F5359C()
{
  result = qword_1EDF135A0;
  if (!qword_1EDF135A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF135A0);
  }

  return result;
}

unint64_t sub_1D6F535F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6F5363C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F536A4(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatServiceGroupContext.isSponsorshipEligible.getter()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v12, v0 + *(v1 + 136), sizeof(v12));
  if (sub_1D60486AC(v12) == 1 || !v12[33])
  {
    v10 = 0;
  }

  else
  {
    v8 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, *(v2 + 80), *(v2 + 88), v7);

    sub_1D6F53868(v8, v9, v6);
    v10 = sub_1D5E35D24(v6);

    sub_1D5CECA60(v6, type metadata accessor for FeedContext);
  }

  return v10 & 1;
}

double sub_1D6F53868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext(0, *(a1 + 16), *(a1 + 24), a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v4, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v16, v7);
    sub_1D6F570D0(&v11[*(v7 + 36)], a3, type metadata accessor for FeedContext);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_1D6F570D0(*v16 + *(**v16 + 176), a3, type metadata accessor for FeedContext);
  }

  return result;
}

double sub_1D6F53AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v5, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v18, v9);
    (*(v8 + 128))(v7, v8);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v8 + 128))(v7, v8);
  }

  return result;
}

uint64_t FormatServiceGroupContext.__allocating_init(emitterCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = swift_allocObject();
  FormatServiceGroupContext.init(emitterCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t *FormatServiceGroupContext.init(emitterCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = *v7;
  v13 = *a7;
  v14 = *(a7 + 8);
  v20 = *(a7 + 9);
  *(v7 + *(*v7 + 112)) = a1;
  type metadata accessor for FormatServiceGroupContext.CursorContainer(0, *(v12 + 80), *(v12 + 88), a4);
  swift_storeEnumTagMultiPayload();
  memcpy(v7 + *(*v7 + 136), a2, 0x110uLL);
  v7[4] = a3;
  v15 = *(*v7 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v7 + v15, a4, AssociatedTypeWitness);
  v17 = (v7 + *(*v7 + 128));
  *v17 = a5;
  v17[1] = a6;
  if (v20)
  {
    v18 = (a1 + *(*a1 + 184));
    v13 = *v18;
    if (*(v18 + 8) == 1)
    {
      v13 = v13 != 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  v7[2] = v13;
  *(v7 + 24) = v14 & 1;
  return v7;
}

uint64_t FormatServiceGroupContext.__allocating_init(initialCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  FormatServiceGroupContext.init(initialCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

char *FormatServiceGroupContext.init(initialCursor:rules:feedDescriptor:kind:subtype:cachePolicy:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = *v7;
  v27 = *a7;
  v26 = *(a7 + 8);
  v29 = *(a7 + 9);
  v13 = *(*v7 + 112);
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  v16 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext(0, v14, v15, a4);
  v17 = *(v16 - 8);
  v32 = a1;
  (*(v17 + 16))(&v8[v13], a1, v16);
  type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v14, v15, v18);
  swift_storeEnumTagMultiPayload();
  memcpy(&v8[*(*v8 + 136)], a2, 0x110uLL);
  *(v8 + 4) = a3;
  v19 = *(*v8 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(&v8[v19], a4, AssociatedTypeWitness);
  v22 = &v8[*(*v8 + 128)];
  *v22 = a5;
  *(v22 + 1) = a6;
  if (v29)
  {
    (*(v15 + 72))(&v33, v14, v15);
    (*(v21 + 8))(a4, AssociatedTypeWitness);
    (*(v17 + 8))(v32, v16);
    v23 = v33;
    if (v33)
    {
      if (v33 == 1)
      {
        v23 = 1;
        v24 = 1;
      }

      else
      {
        v24 = 0;
        v23 = 0x4122750000000000;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    (*(v21 + 8))(a4, AssociatedTypeWitness);
    (*(v17 + 8))(v32, v16);
    v23 = v27;
    v24 = v26;
  }

  *(v8 + 2) = v23;
  v8[24] = v24 & 1;
  return v8;
}

Swift::Int __swiftcall FormatServiceGroupContext.countPriorGroups(kind:)(Swift::String kind)
{
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  v5 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v3, v4, v1);
  sub_1D6F544BC(v5);
  type metadata accessor for FeedCursorGroup(0, v3, v4, v6);
  v7 = sub_1D726269C();

  return v7;
}

uint64_t sub_1D6F544BC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FeedCursorGroup(0, *(a1 + 16), *(a1 + 24), v7);
    v8 = sub_1D726275C();
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v8 = *(*v6 + *(**v6 + 136));
  }

  return v8;
}

uint64_t sub_1D6F545F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v17[0] = a2;
  *(&v17[0] + 1) = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v17 - v11;
  type metadata accessor for FeedCursorGroup(0, a4, a5, v13);
  v14 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v14();
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if (v17[1] == v17[0])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D72646CC();
  }

  return v15 & 1;
}

Swift::Bool __swiftcall FormatServiceGroupContext.isPriorEmittedGroup(kind:)(Swift::String kind)
{
  v31 = kind;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v27 = &v26 - v6;
  v7 = swift_checkMetadataState();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v12 = type metadata accessor for FeedCursorGroup(255, v3, v2, v11);
  v13 = sub_1D726393C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - v16;
  v19 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v3, v2, v18);
  v34 = sub_1D6F544BC(v19);
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D7261F0C();

  v20 = *(v12 - 8);
  if ((*(v20 + 48))(v17, 1, v12) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v21 = 0;
  }

  else
  {
    v22 = v26;
    (*(v26 + 16))(v10, &v17[*(v12 + 36)], v7);
    (*(v20 + 8))(v17, v12);
    v23 = v27;
    (*(AssociatedConformanceWitness + 64))(v7, AssociatedConformanceWitness);
    (*(v22 + 8))(v10, v7);
    v24 = v30;
    swift_getAssociatedConformanceWitness();
    sub_1D726257C();
    (*(v29 + 8))(v23, v24);
    if (v32 == v31._countAndFlagsBits && v33 == v31._object)
    {

      v21 = 1;
    }

    else
    {
      v21 = sub_1D72646CC();
    }
  }

  return v21 & 1;
}

uint64_t FormatServiceGroupContext.selectors(content:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v45, v1 + v4[17], 0x110uLL);
  if (sub_1D60486AC(v45) == 1 || !v45[3])
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v10 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v4[10], v4[11], v9);

    sub_1D6F53868(v10, v11, v8);
    v12 = sub_1D5F1AAD8(v8);

    sub_1D5CECA60(v8, type metadata accessor for FeedContext);
  }

  v13 = *(*v1 + 112);
  v14 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v4[10], v4[11], v9);
  v41[1] = v13;
  sub_1D6F53868(v14, v15, v8);
  v16 = *&v8[*(v5 + 40)];

  sub_1D5CECA60(v8, type metadata accessor for FeedContext);
  v17 = sub_1D5D6021C(v12, v16);
  v42 = 0x696B2D70756F7267;
  v43 = 0xEB000000002D646ELL;
  v44 = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  MEMORY[0x1DA6F9910](v41[2], v41[3]);

  sub_1D5B860D0(&v42, v42, v43);

  v21 = (v2 + *(*v2 + 128));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1D7263D4C();

    v42 = 0xD000000000000013;
    v43 = 0x80000001D73F8D00;
    MEMORY[0x1DA6F9910](v23, v22);
    sub_1D5B860D0(&v42, v42, v43);
  }

  v24 = v2[4];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D6F55250(0x7365642D64656566, 0xEF726F7470697263);
    sub_1D5B886D0(v26);
    v27 = [v25 alternativeFeedDescriptor];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1D6F55250(0xD000000000000013, 0x80000001D73F8CE0);
      sub_1D5B886D0(v29);
    }

    v30 = (a1 + *(type metadata accessor for FormatContent(0) + 24));
    v31 = v30[1];
    if (v31)
    {
      v32 = *v30;
      v33 = [objc_msgSend(v25 backingTag)];
      swift_unknownObjectRelease();
      v34 = sub_1D726207C();
      v36 = v35;

      if (v32 == v34 && v31 == v36)
      {

LABEL_15:
        sub_1D5B860D0(&v42, 0xD000000000000025, 0x80000001D73F8CB0);

        goto LABEL_17;
      }

      v37 = sub_1D72646CC();

      if (v37)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  sub_1D6F53AF4(v14, v18, v19, v20);
  v38 = FeedKind.selector.getter();
  if (v39)
  {
    sub_1D5B860D0(&v42, v38, v39);
  }

  return v44;
}

uint64_t sub_1D6F55250(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = MEMORY[0x1E69E7CD0];
  v17 = a1;

  MEMORY[0x1DA6F9910](0x2D6769666E6F632DLL, 0xE800000000000000);
  v5 = FCFeedDescriptorConfiguration.description.getter([v2 feedConfiguration]);
  MEMORY[0x1DA6F9910](v5);

  sub_1D5B860D0(&v17, v17, v18);

  v17 = a1;
  v18 = a2;

  MEMORY[0x1DA6F9910](0x2D64692D6761742DLL, 0xE800000000000000);
  v6 = [objc_msgSend(v2 backingTag)];
  swift_unknownObjectRelease();
  v7 = sub_1D726207C();
  v9 = v8;

  MEMORY[0x1DA6F9910](v7, v9);

  sub_1D5B860D0(&v17, v17, v18);

  v10 = [v2 backingChannel];
  if (v10)
  {
    v11 = v10;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1D7263D4C();

    v17 = a1;
    v18 = a2;
    MEMORY[0x1DA6F9910](0x6C656E6E6168632DLL, 0xEC0000002D64692DLL);
    v12 = [v11 identifier];
    v13 = sub_1D726207C();
    v15 = v14;

    MEMORY[0x1DA6F9910](v13, v15);

    sub_1D5B860D0(&v17, v17, v18);
    swift_unknownObjectRelease();
  }

  return v19;
}

uint64_t FormatServiceGroupContext.contentOverlaySubgroups(content:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v158 = type metadata accessor for FormatContentOverlaySlot(0);
  v143 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v5);
  v153 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F5674C(0, &qword_1EDF3B848, MEMORY[0x1E69E9250], MEMORY[0x1E69E9288]);
  v152 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v151 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v118 - v13;
  sub_1D6C1CDEC(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v134 = &v118 - v21;
  v128 = type metadata accessor for FormatContentOverlaySubgroup(0);
  v139 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v22);
  v140 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for FormatContentSubgroup(0);
  v123 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v24);
  v131 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v129 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v141 = &v118 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v127 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v122 = &v118 - v41;
  v42 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = &v118 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v176, v1 + *(v3 + 136), 0x110uLL);
  if (sub_1D60486AC(v176) == 1 || !v176[30])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v130 = v29;
  v47 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, *(v4 + 80), *(v4 + 88), v46);

  sub_1D6F53868(v47, v48, v45);
  sub_1D5E35A64(v45, &v175);

  sub_1D5CECA60(v45, type metadata accessor for FeedContext);
  v49 = v175;
  if (!*(v175 + 16) || (v50 = *(a1 + *(type metadata accessor for FormatContent(0) + 68)), (v51 = *(v50 + 16)) == 0))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v133 = v14;
  v175 = MEMORY[0x1E69E7CC0];
  v119 = v51;
  result = sub_1D69975AC(0, v51, 0);
  v53 = 0;
  v126 = v175;
  v54 = *(v49 + 16);
  v137 = v49;
  v138 = v54;
  v118 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v120 = v50 + v118;
  v121 = v50;
  v164 = (v8 + 8);
  v56 = v152;
  v55 = v153;
  v57 = v151;
  v157 = v18;
  while (1)
  {
    if (v53 >= *(v121 + 16))
    {
      goto LABEL_62;
    }

    v124 = *(v123 + 72);
    v125 = v53;
    v58 = v127;
    sub_1D6F570D0(v120 + v124 * v53, v127, type metadata accessor for FormatContentSubgroup);
    sub_1D6F570D0(v58, v141, type metadata accessor for FormatContentSubgroup);
    if (v138)
    {
      break;
    }

LABEL_53:
    sub_1D5CECA60(v127, type metadata accessor for FormatContentSubgroup);
    v112 = v122;
    sub_1D6F56838(v141, v122);
    v113 = v126;
    v175 = v126;
    v115 = *(v126 + 16);
    v114 = *(v126 + 24);
    if (v115 >= v114 >> 1)
    {
      sub_1D69975AC((v114 > 1), v115 + 1, 1);
      v112 = v122;
      v113 = v175;
    }

    v116 = v125 + 1;
    *(v113 + 16) = v115 + 1;
    v126 = v113;
    v117 = v112;
    v53 = v116;
    result = sub_1D6F56838(v117, v113 + v118 + v115 * v124);
    v49 = v137;
    if (v53 == v119)
    {
      goto LABEL_60;
    }
  }

  v144 = type metadata accessor for FormatRegex(0);
  v59 = *(v144 + 20);
  v135 = v49 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v136 = v59;

  v60 = 0;
  v61 = v140;
  while (1)
  {
    if (v60 >= *(v49 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v62 = *(v139 + 72);
    v142 = v60;
    sub_1D6F570D0(v135 + v62 * v60, v61, type metadata accessor for FormatContentOverlaySubgroup);
    v63 = sub_1D6F567B0();
    v64 = v133;
    v165 = v63;
    sub_1D725C15C();
    v65 = v134;
    sub_1D726236C();
    sub_1D725C17C();
    v163 = *v164;
    v163(v64, v56);

    sub_1D6C1CE84(0);
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    v162 = v66;
    v159 = v68;
    v160 = v67 + 48;
    v69 = v65;
    if ((v68)(v65, 1) != 1)
    {
      break;
    }

    v61 = v140;
    sub_1D5CECA60(v140, type metadata accessor for FormatContentOverlaySubgroup);
    v49 = v137;
    result = sub_1D5CECA60(v69, sub_1D6C1CDEC);
LABEL_9:
    v60 = v142 + 1;
    if (v142 + 1 == v138)
    {

      goto LABEL_53;
    }
  }

  sub_1D5CECA60(v65, sub_1D6C1CDEC);
  v70 = v130;
  sub_1D6F570D0(v141, v130, type metadata accessor for FormatContentSubgroup);
  sub_1D6F570D0(v70, v131, type metadata accessor for FormatContentSubgroup);
  v71 = *(v70 + *(v132 + 32));
  v72 = *(v71 + 16);
  if (!v72)
  {
    v61 = v140;
    sub_1D5CECA60(v140, type metadata accessor for FormatContentOverlaySubgroup);
    sub_1D5CECA60(v70, type metadata accessor for FormatContentSubgroup);
    v108 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v109 = v131;
    v110 = *(v132 + 32);

    *(v109 + v110) = v108;
    v111 = v129;
    sub_1D6F56838(v109, v129);
    result = sub_1D6F5689C(v111, v141);
    v49 = v137;
    goto LABEL_9;
  }

  v174 = MEMORY[0x1E69E7CC0];
  v148 = v72;
  sub_1D69975FC(0, v72, 0);
  v73 = 0;
  v74 = v174;
  v145 = *(v140 + *(v128 + 20));
  v170 = *(v145 + 16);
  v146 = v71 + 32;
  v147 = v71;
  v161 = v67 + 56;
  while (2)
  {
    if (v73 < *(v147 + 16))
    {
      v149 = v74;
      v150 = v73;
      v75 = (v146 + 48 * v73);
      v77 = *v75;
      v76 = v75[1];
      v78 = v75[3];
      v155 = v75[2];
      v156 = v78;
      v80 = v75[4];
      v79 = v75[5];
      v172 = v76;
      v173 = v79;
      v154 = v80;
      if (!v170)
      {

        v99 = v156;

        v98 = v99;
LABEL_46:
        v100 = v148;
        v74 = v149;
        v174 = v149;
        v102 = *(v149 + 16);
        v101 = *(v149 + 24);
        v103 = v150;
        if (v102 >= v101 >> 1)
        {
          v156 = v98;
          v171 = v77;
          sub_1D69975FC((v101 > 1), v102 + 1, 1);
          v98 = v156;
          v77 = v171;
          v103 = v150;
          v100 = v148;
          v74 = v174;
        }

        v73 = v103 + 1;
        *(v74 + 16) = v102 + 1;
        v104 = (v74 + 48 * v102);
        v105 = v172;
        v104[4] = v77;
        v104[5] = v105;
        v106 = v154;
        v104[6] = v155;
        v104[7] = v98;
        v107 = v173;
        v104[8] = v106;
        v104[9] = v107;
        if (v73 == v100)
        {
          v61 = v140;
          v108 = v74;
          sub_1D5CECA60(v140, type metadata accessor for FormatContentOverlaySubgroup);
          sub_1D5CECA60(v130, type metadata accessor for FormatContentSubgroup);
          goto LABEL_51;
        }

        continue;
      }

      v81 = *(v144 + 20);
      v168 = v145 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v169 = v81;
      v82 = *(v143 + 72);
      v83 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v83 = v77;
      }

      v171 = v77;
      v84 = 7;
      if (((v76 >> 60) & ((v77 & 0x800000000000000) == 0)) != 0)
      {
        v84 = 11;
      }

      v166 = v84 | (v83 << 16);
      v167 = v82;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v85 = v156;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v86 = 0;
      v87 = v85;
      while (2)
      {
        sub_1D6F570D0(v168 + v167 * v86, v55, type metadata accessor for FormatContentOverlaySlot);
        sub_1D725C15C();
        sub_1D726236C();
        sub_1D725C17C();
        v163(v57, v56);

        if (v159(v18, 1, v162) == 1)
        {
          sub_1D5CECA60(v18, sub_1D6C1CDEC);
          goto LABEL_23;
        }

        sub_1D5CECA60(v18, sub_1D6C1CDEC);
        v88 = *(v55 + *(v158 + 20));
        v89 = *(v88 + 16);
        if (!v89)
        {
          goto LABEL_43;
        }

        v90 = (v88 + 40);
LABEL_30:
        v92 = *(v90 - 1);
        v93 = *v90;
        if (*v90)
        {
          if (v93 == 1)
          {
            sub_1D5FBABE0(*(v90 - 1));
            sub_1D5FBABE0(v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v87 = sub_1D69954D0(0, *(v87 + 2) + 1, 1, v87);
            }

            v95 = *(v87 + 2);
            v94 = *(v87 + 3);
LABEL_36:
            if (v95 >= v94 >> 1)
            {
              v87 = sub_1D69954D0((v94 > 1), v95 + 1, 1, v87);
            }

            *(v87 + 2) = v95 + 1;
            *&v87[8 * v95 + 32] = v92;
          }

          else
          {
            v96 = *(v87 + 2);
            sub_1D5FBABE0(*(v90 - 1));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v96 >= *(v87 + 3) >> 1)
            {
              v87 = sub_1D69954D0(isUniquelyReferenced_nonNull_native, v96 + 1, 1, v87);
            }

            swift_arrayDestroy();
            v91 = *(v87 + 2);
            memmove(v87 + 40, v87 + 32, 8 * v91);
            *(v87 + 2) = v91 + 1;
            *(v87 + 4) = v92;
            sub_1D5FBABE0(v92);
          }

          v90 += 16;
          sub_1D66F42E4(v92, v93);
          if (!--v89)
          {
            v56 = v152;
            v55 = v153;
            v57 = v151;
LABEL_43:
            v18 = v157;
LABEL_23:
            ++v86;
            sub_1D5CECA60(v55, type metadata accessor for FormatContentOverlaySlot);
            if (v86 == v170)
            {

              v98 = v87;
              v77 = v171;
              goto LABEL_46;
            }

            continue;
          }

          goto LABEL_30;
        }

        break;
      }

      sub_1D5FBABE0(*(v90 - 1));

      sub_1D5FBABE0(v92);
      v87 = sub_1D69954D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v95 = *(v87 + 2);
      v94 = *(v87 + 3);
      goto LABEL_36;
    }

    break;
  }

  __break(1u);
LABEL_60:

  return v126;
}

id *FormatServiceGroupContext.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 14);
  v3 = v1[10];
  v4 = v1[11];
  v6 = type metadata accessor for FormatServiceGroupContext.CursorContainer(0, v3, v4, v5);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = *(*v0 + 15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7, AssociatedTypeWitness);

  memcpy(__dst, v0 + *(*v0 + 17), 0x110uLL);
  type metadata accessor for FeedGroupKnobsRules(255, v3, v4, v9);
  v10 = sub_1D726393C();
  (*(*(v10 - 8) + 8))(__dst, v10);
  return v0;
}

uint64_t FormatServiceGroupContext.__deallocating_deinit()
{
  FormatServiceGroupContext.deinit();

  return swift_deallocClassInstance();
}

void sub_1D6F5674C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6F567B0()
{
  result = qword_1EDF175D8;
  if (!qword_1EDF175D8)
  {
    sub_1D6F5674C(255, &qword_1EDF3B848, MEMORY[0x1E69E9250], MEMORY[0x1E69E9288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF175D8);
  }

  return result;
}

uint64_t sub_1D6F56838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSubgroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F5689C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSubgroup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F56978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FormatServiceGroupContext.CursorContainer(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D6F56B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for FeedGroupEmitterCursor(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6F56C10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D725891C() - 8);
  v7 = (*(v6 + 80) & 0xF8 ^ 0x1F8u) & (*(v6 + 80) + 8);
  v8 = *(*(a3 + 16) - 8);
  v9 = ((v7 + *(v8 + 80) + ((((((((v7 + ((((*(v6 + 64) + ((*(v6 + 80) + 8) & ~*(v6 + 80)) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = 8;
  if (v9 > 8)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 < 2)
    {
LABEL_25:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 255;
}

void sub_1D6F56E30(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D725891C() - 8);
  v9 = (*(v8 + 80) & 0xF8 ^ 0x1F8u) & (*(v8 + 80) + 8);
  v10 = ((v9 + *(*(*(a4 + 16) - 8) + 80) + ((((((((v9 + ((((*(v8 + 64) + ((*(v8 + 80) + 8) & ~*(v8 + 80)) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D6F570D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F57138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v30[-v21];
  v34 = a1;
  (*(v18 + 104))(&v30[-v21], *MEMORY[0x1E69D7460], v17, v20);
  sub_1D5BEADA4(0);
  sub_1D5BEACB8(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = (v26 + v25);
  *v27 = a5;
  v27[1] = a6;
  v27[2] = a7;
  v27[3] = a8;
  (*(v24 + 104))();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v28 = MEMORY[0x1E69D7150];
  sub_1D5C203B4(0, &qword_1EDF3C068, MEMORY[0x1E69D7150]);
  sub_1D5BEAD60(&qword_1EDF3C070, &qword_1EDF3C068, v28, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();

  return (*(v18 + 8))(v22, v17);
}

void sub_1D6F573F8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v100 = a4;
  v6 = type metadata accessor for HeadlineViewLayout.Context(0);
  v96 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v95 = v8;
  v94 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5BEACB8(0, &qword_1EDF3C130, MEMORY[0x1E69D6F98]);
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v89[-v11];
  v93 = sub_1D7261B9C();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v12);
  v91 = &v89[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v111 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v110 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v89[-v20];
  v113 = a1;
  v115 = a1;
  swift_getKeyPath();
  sub_1D725A18C();
  v23 = v22;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  v24 = round(v23 * 56.0 * 0.25);
  if (v114)
  {
    v25 = v24;
  }

  else
  {
    v25 = 14.0;
  }

  v26 = [*(a3 + *(v6 + 20) + 40) sourceChannel];
  v106 = v6;
  v109 = a3;
  if (v26)
  {
    v27 = [v26 theme];
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_opt_self() defaultMetrics];
  sub_1D5BEAE2C(v27, v28, v21, v25);

  swift_unknownObjectRelease();
  v29 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v31 = v30;
  v32 = sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v29, MEMORY[0x1E69D6F40]);
  v104 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v33 = *(v15 + 8);
  v34 = v111;
  v33(v21, v111);
  v115 = v113;
  v35 = v113;
  v36 = swift_allocObject();
  *(v36 + 16) = 0x4020000000000000;
  v37 = v110;
  *v110 = v36;
  v38 = *(v15 + 104);
  v90 = *MEMORY[0x1E69D7488];
  v38(v37);
  sub_1D7259A9C();
  v39 = v33(v37, v34);
  v101 = v89;
  v115 = v35;
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v109;
  v87 = v109;
  v43 = *MEMORY[0x1E69D7460];
  v105 = v15 + 104;
  v102 = v38;
  (v38)(v37, v43, v34, v41);
  v108 = v32;
  v88 = v32;
  v112 = v31;
  v86[1] = v86;
  v87 = v31;
  v86[0] = sub_1D6F583EC;
  sub_1D7259B2C();
  v103 = v15 + 8;
  v107 = v33;
  v33(v37, v34);
  v115 = v113;
  swift_getKeyPath();
  v44 = *(v42 + *(v106 + 28));
  if (*(v44 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v45 = sub_1D726308C(), v46 = v91, *v91 = v45, v47 = v92, v48 = v93, (*(v92 + 104))(v46, *MEMORY[0x1E69E8018], v93), v49 = sub_1D7261BBC(), (*(v47 + 8))(v46, v48), (v49))
  {
    v50 = swift_allocObject();
    v51 = *(v44 + *(*v44 + 136));
    *(v50 + 16) = v51;
    v53 = v110;
    v52 = v111;
    *v110 = v50;
    LODWORD(v101) = *MEMORY[0x1E69D7440];
    v102(v53);
    sub_1D5BEADA4(0);
    sub_1D5BEACB8(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v55 = v54;
    v56 = *(v54 - 8);
    v57 = v42;
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D7273AE0;
    v60 = type metadata accessor for HeadlineViewLayout.Options(0);
    v61 = v100;
    *(v59 + v58) = *&v100[*(v60 + 24)];
    v62 = v59 + v58;
    v63 = v57;
    (*(v56 + 104))(v62, *MEMORY[0x1E69D6FE0], v55);
    v64 = v51;
    sub_1D7259A7C();

    v107(v53, v52);
    if ((*v61 & 1) == 0)
    {
      goto LABEL_16;
    }

    v65 = *(v57 + *(v106 + 32));
    if (!v65)
    {
      goto LABEL_16;
    }

    if (*(v65 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v66 = sub_1D726308C(), v67 = v91, *v91 = v66, v68 = v92, v69 = v93, (*(v92 + 104))(v67, *MEMORY[0x1E69E8018], v93), v70 = sub_1D7261BBC(), (*(v68 + 8))(v67, v69), (v70))
    {
      v71 = *(v65 + *(*v65 + 136));
      v72 = v113;
      v115 = v113;
      v73 = swift_allocObject();
      *(v73 + 16) = 0x4014000000000000;
      *v53 = v73;
      v74 = v111;
      v75 = v102;
      (v102)(v53, v90, v111);
      v76 = v71;
      sub_1D7259A9C();
      v107(v53, v74);
      v115 = v72;
      swift_getKeyPath();
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *v53 = v77;
      (v75)(v53, v101, v74);
      v78 = v76;
      sub_1D7259A7C();

      v107(v53, v74);
LABEL_16:
      v115 = v113;
      v80 = v97;
      v79 = v98;
      v81 = v99;
      (*(v98 + 104))(v97, *MEMORY[0x1E69D6F90], v99);
      v82 = v94;
      sub_1D6F586BC(v63, v94);
      v83 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v84 = swift_allocObject();
      sub_1D5C165B8(v82, v84 + v83);
      sub_1D72599DC();

      (*(v79 + 8))(v80, v81);
      sub_1D6F586BC(v109, v82);
      v85 = swift_allocObject();
      sub_1D5C165B8(v82, v85 + v83);
      sub_1D725A5CC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D6F57FE8(uint64_t a1, uint64_t a2)
{
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v27 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 36));
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D73E8], v5);
    sub_1D5BEADA4(0);
    sub_1D5BEACB8(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    *(v24 + v23) = 1;
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D6FE0], v21);
    v25 = MEMORY[0x1E69D6F38];
    sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v25, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v26 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F583F4(uint64_t a1, uint64_t a2)
{
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v19 - v8);
  v22 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 0x4034000000000000;
  *v9 = v10;
  v21 = *MEMORY[0x1E69D7488];
  v20 = *(v6 + 104);
  v20(v9);
  v11 = MEMORY[0x1E69D6FA8];
  sub_1D5C203B4(0, &qword_1EDF3C100, MEMORY[0x1E69D6FA8]);
  v19[2] = v12;
  v19[1] = sub_1D5BEAD60(&qword_1EDF3C108, &qword_1EDF3C100, v11, MEMORY[0x1E69D6FB0]);
  sub_1D7259A9C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v22 = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = (a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 24));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  *(v14 + 16) = (*(v17 + 16))(v16, v17);
  *v9 = v14;
  (v20)(v9, v21, v5);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (v13)(v9, v5);
}

uint64_t sub_1D6F586BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F58738(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v27 - v7);
  v31 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0x4020000000000000;
  *v8 = v9;
  v10 = *MEMORY[0x1E69D7488];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  v12 = MEMORY[0x1E69D6FA8];
  sub_1D5C203B4(0, &qword_1EDF3C100, MEMORY[0x1E69D6FA8]);
  v27[1] = v13;
  v27[0] = sub_1D5BEAD60(&qword_1EDF3C108, &qword_1EDF3C100, v12, MEMORY[0x1E69D6FB0]);
  sub_1D7259A9C();
  v28 = *(v5 + 8);
  v14 = v4;
  v28(v8, v4);
  v31 = a1;
  v15 = swift_allocObject();
  v16 = (v29 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 24));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  *(v15 + 16) = (*(v18 + 16))(v17, v18);
  *v8 = v15;
  v11(v8, v10, v14);
  sub_1D5BEADA4(0);
  sub_1D5BEACB8(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7273AE0;
  v24 = *MEMORY[0x1E69D7050];
  sub_1D5BEACB8(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
  (*(*(v25 - 8) + 104))(v23 + v22, v24, v25);
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E69D7080], v20);
  v30 = v29;
  sub_1D72599EC();

  return (v28)(v8, v14);
}

uint64_t sub_1D6F58B2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D6F58BB0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  sub_1D5BEACB8(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v37 - v8);
  v38 = a1;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v12 = (a2 + *(v11 + 24));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v10 + 16) = (*(v14 + 16))(v13, v14);
  *v9 = v10;
  v15 = *MEMORY[0x1E69D7488];
  v37 = *(v6 + 104);
  v37(v9, v15, v5);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v16, MEMORY[0x1E69D6F40]);
  v20 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v42 = v19;
  v43 = v18;
  v39 = v20;
  sub_1D7259A7C();

  v21 = *(v6 + 8);
  v22 = v5;
  v21(v9, v5);
  v23 = v41 + *(v11 + 20);
  result = type metadata accessor for FeedHeadline(0);
  v25 = (v23 + *(result + 40));
  if (v25[1] != 1 || *v25 <= 1u)
  {
    v26 = v38;
    v44 = v38;
    v27 = swift_allocObject();
    *(v27 + 16) = 0x4010000000000000;
    *v9 = v27;
    v37(v9, *MEMORY[0x1E69D7480], v5);
    sub_1D7259A9C();
    v21(v9, v5);
    v44 = v26;
    swift_getKeyPath();
    v28 = v12[3];
    v29 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v28);
    (*(v29 + 24))(v28, v29);
    sub_1D5BEB9A0();
    sub_1D725A51C();
    sub_1D5BEADA4(0);
    sub_1D5BEACB8(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = *MEMORY[0x1E69D7070];
    sub_1D5BEACB8(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
    (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
    (*(v32 + 104))(v34 + v33, *MEMORY[0x1E69D7080], v31);
    sub_1D7259A7C();

    return (v21)(v9, v22);
  }

  return result;
}

char *sub_1D6F590D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_timeInMilliseconds] = 0;
  *&v3[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_totalTimeInMilliseconds] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_titleLabel;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_barView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  if (a3)
  {
    v9 = sub_1D726203C();
  }

  else
  {
    v9 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = v10;
  v12 = [v11 contentView];
  [v12 addSubview_];

  v13 = [v11 contentView];
  [v13 addSubview_];

  return v11;
}

id sub_1D6F59398()
{
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v46, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_totalTimeInMilliseconds;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_totalTimeInMilliseconds] > 0.0)
  {
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v47.origin.x = v5;
    v47.origin.y = v7;
    v47.size.width = v9;
    v47.size.height = v11;
    Width = CGRectGetWidth(v47);
    [v0 layoutMargins];
    v14 = Width - v13;
    [v0 layoutMargins];
    v16 = (v14 - v15) / *&v0[v2] * *&v0[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_timeInMilliseconds];
    v17 = *&v0[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_barView];
    [v0 layoutMargins];
    v19 = v18;
    v20 = [v0 contentView];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v48.origin.x = v22;
    v48.origin.y = v24;
    v48.size.width = v26;
    v48.size.height = v28;
    v49.origin.y = CGRectGetHeight(v48) + -8.0 + -10.0;
    v49.size.height = 10.0;
    v49.origin.x = v19;
    v49.size.width = v16;
    v50 = CGRectIntegral(v49);
    [v17 setFrame_];
    v29 = *&v0[OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_titleLabel];
    [v29 sizeToFit];
    [v0 layoutMargins];
    v31 = v30;
    v32 = [v0 contentView];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v51.origin.x = v34;
    v51.origin.y = v36;
    v51.size.width = v38;
    v51.size.height = v40;
    v41 = CGRectGetWidth(v51);
    [v0 layoutMargins];
    v43 = v41 - v42;
    [v0 layoutMargins];
    v45 = v43 - v44;
    [v29 bounds];
    v53.size.height = CGRectGetHeight(v52);
    v53.origin.y = 8.0;
    v53.origin.x = v31;
    v53.size.width = v45;
    v54 = CGRectIntegral(v53);
    return [v29 setFrame_];
  }

  return result;
}

double sub_1D6F596C0(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1D6F5A8E4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_1D7261D3C();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_1D5B74328(v7, v8);

  return result;
}

void sub_1D6F597C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D725828C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1D6F5987C()
{
  sub_1D5B54E18(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v30 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzle);
  v10 = sub_1D6F5A790(v9);
  v12 = v11;
  v13 = [objc_msgSend(v9 puzzleType)];
  swift_unknownObjectRelease();
  v14 = sub_1D726207C();
  v16 = v15;

  v30[0] = v10;
  v30[1] = v12;
  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  MEMORY[0x1DA6F9910](v14, v16);

  v17 = [v9 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [objc_opt_self() nss:v17 NewsURLForPuzzleID:?];

  if (v18)
  {
    sub_1D72584EC();

    v19 = sub_1D72585BC();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  }

  else
  {
    v19 = sub_1D72585BC();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  }

  v20 = sub_1D6F59C4C(v9);
  v21 = sub_1D6F59E44(v9);
  sub_1D5C00F80(v8, v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v22 = v20;
  v23 = v21;
  v24 = sub_1D726203C();

  sub_1D72585BC();
  v25 = *(v19 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v4, 1, v19) != 1)
  {
    v26 = sub_1D725844C();
    (*(v25 + 8))(v4, v19);
  }

  v27 = [objc_allocWithZone(NELinkMetadataSource) initWithTitle:v24 url:v26 imageProvider:v22 iconProvider:v23];

  v28 = [v27 linkMetadata];
  sub_1D5B6F4B0(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  return v28;
}

id sub_1D6F59C4C(uint64_t a1)
{
  v2 = sub_1D725C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1D726203C();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D6F5AA24;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_19_1;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  return v7;
}

id sub_1D6F59E44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725C2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1D726203C();

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D6F5A8DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_119;
  v12 = _Block_copy(aBlock);
  v13 = v2;
  swift_unknownObjectRetain();

  [v9 registerItemForTypeIdentifier:v10 loadHandler:v12];
  _Block_release(v12);

  return v9;
}

void sub_1D6F5A01C(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B54E18(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1D726294C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a6;
    v16[6] = a1;
    v16[7] = a2;
    swift_unknownObjectRetain();
    sub_1D5DEA510(a1, a2);
    sub_1D6BD1334(0, 0, v12, &unk_1D7376AF8, v16);
  }

  else if (a1)
  {
    a1(0, 0);
  }
}

uint64_t sub_1D6F5A19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D6F5A1C0, 0, 0);
}

uint64_t sub_1D6F5A1C0()
{
  sub_1D5C00F80(v0[7] + OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzleImageShareAttributeProvider, (v0 + 2), qword_1EDF1CE10, sub_1D6F5A9C0);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D671AFBC;
    v4 = v0[8];

    return v8(v4, v1, v2);
  }

  else
  {
    sub_1D5B6F4B0((v0 + 2), qword_1EDF1CE10, sub_1D6F5A9C0);
    v6 = v0[9];
    if (v6)
    {
      v6(0, 0);
    }

    v7 = v0[1];

    return v7();
  }
}

double sub_1D6F5A39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1D5B54E18(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18 - v12;
  v14 = sub_1D726294C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v15[7] = a2;
  v16 = a5;
  swift_unknownObjectRetain();
  sub_1D5DEA510(a1, a2);
  sub_1D6BD1334(0, 0, v13, &unk_1D7376AE8, v15);

  return result;
}

uint64_t sub_1D6F5A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D6F5A504, 0, 0);
}

uint64_t sub_1D6F5A504()
{
  sub_1D5C00F80(v0[7] + OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzleImageShareAttributeProvider, (v0 + 2), qword_1EDF1CE10, sub_1D6F5A9C0);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D671B3FC;
    v4 = v0[8];

    return v8(v4, v1, v2);
  }

  else
  {
    sub_1D5B6F4B0((v0 + 2), qword_1EDF1CE10, sub_1D6F5A9C0);
    v6 = v0[9];
    if (v6)
    {
      v6(0, 0);
    }

    v7 = v0[1];

    return v7();
  }
}

id sub_1D6F5A790(void *a1)
{
  v2 = [a1 publishDateString];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D726207C();
    v6 = v5;

    v7 = [a1 subtitle];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v12 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v13 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v13 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
          MEMORY[0x1DA6F9910](v9, v11);

          return v4;
        }
      }
    }
  }

  result = [a1 publishDateString];
  if (result)
  {
    v15 = result;
    v16 = sub_1D726207C();

    return v16;
  }

  return result;
}

uint64_t sub_1D6F5A8EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6F5A4E0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1D6F5A9C0()
{
  result = qword_1EDF3CFD0;
  if (!qword_1EDF3CFD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3CFD0);
  }

  return result;
}

uint64_t objectdestroy_7Tm_0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D6F5AA84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6F5A19C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t FormatTransformData.init(knobs:policies:consumedArticleIDs:consumedIssueIDs:headlineScoringContext:issueScoringContext:recipeScoringContext:clusteringRules:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = *a5;
  v15 = *a6;
  sub_1D5CEEC58(a1, a8);
  v16 = MEMORY[0x1E69E7CD0];
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v18 = type metadata accessor for FormatTransformData(0);
  v19 = v18;
  *(a8 + *(v18 + 20)) = v17;
  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = v16;
  }

  *(a8 + *(v18 + 24)) = v20;
  sub_1D5CEEE64(a1);
  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = v16;
  }

  *(a8 + v19[7]) = v21;
  *(a8 + v19[8]) = v14;
  *(a8 + v19[9]) = v15;
  v22 = a8 + v19[11];

  return sub_1D5CEEEDC(a7, v22);
}

uint64_t type metadata accessor for DebugInspectViewResult(uint64_t a1)
{
  result = qword_1EC898A30;
  if (!qword_1EC898A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6F5ACB0(uint64_t a1)
{
  sub_1D63327EC(319);
  if (v1 <= 0x3F)
  {
    sub_1D6332768(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

char *FormatContentSlot.Resolved.placeholders.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v22 - v8;
  v10 = *(v0 + 32);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  v22[0] = v13;
  v22[1] = v1;
  do
  {
    sub_1D5CEC8D8(v12, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() <= 8)
    {
      sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
    }

    else
    {
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = v4[16];
      sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D5D55EC4(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1D5D55EC4((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[24 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v16;
      v20[48] = v17;
      v13 = v22[0];
    }

    v12 += v13;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t FormatContentSlot.Resolved.init(slot:options:selectors:items:itemSelectors:itemOptions:itemAuxiliaries:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t FormatContentSlot.Resolved.slot.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6F5AFCC@<X0>(uint64_t *a1@<X8>)
{
  result = PuzzleStatistic.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6F5AFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6F5BF14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6F5B020(uint64_t a1)
{
  v2 = sub_1D5CB66D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F5B05C(uint64_t a1)
{
  v2 = sub_1D5CB66D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSlot.Resolved.encode(to:)(void *a1)
{
  sub_1D5CB665C(0, &qword_1EDF02710, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v21 = v1[3];
  v22 = v9;
  v10 = v1[4];
  v19 = v1[5];
  v20 = v10;
  v11 = v1[6];
  v17 = v1[7];
  v18 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB66D8();
  sub_1D7264B5C();
  LOBYTE(v25) = 0;
  v12 = v23;
  sub_1D72643FC();
  if (v12)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = v20;
  v14 = v21;
  v15 = v19;
  v25 = v22;
  v24 = 1;
  sub_1D5B5D0FC(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  sub_1D5CB5AE8(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v25 = v14;
  v24 = 2;
  sub_1D5B81B04();
  sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  sub_1D726443C();
  v25 = v13;
  v24 = 3;
  sub_1D5B5D0FC(0, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
  sub_1D5CB6A84(&qword_1EDF04C60, &unk_1EDF0B028, &protocol conformance descriptor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v25 = v15;
  v24 = 4;
  sub_1D5CB6BD4(0);
  sub_1D6F5BD54();
  sub_1D726443C();
  v25 = v18;
  v24 = 5;
  sub_1D5CB6CDC(0);
  sub_1D6F5BDF4();
  sub_1D726443C();
  v25 = v17;
  v24 = 6;
  sub_1D5CB6E2C();
  sub_1D5CB6E8C(&unk_1EDF05738, sub_1D5FD3218, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

void sub_1D6F5B500(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69D6A58];
  sub_1D6F5C294(0, &qword_1EDF05558, MEMORY[0x1E69D6A58]);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v47 - v6;
  v51 = sub_1D725B76C();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F5C174(0, &qword_1EDF05550, &qword_1EDF05558, v3);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v16 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v47 - v15;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v54 = v23;
  if (v22)
  {
    v49 = v21;
    v50 = a1;
    v24 = v20;
LABEL_11:
    v48 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v24 << 6);
    v29 = (*(v18 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = v51;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v28, v51, v16);
    v33 = v53;
    v34 = *(v53 + 48);
    *v17 = v30;
    *(v17 + 1) = v31;
    v35 = v10;
    v36 = v33;
    (*(v7 + 32))(&v17[v34], v35, v32);
    v37 = v52;
    (*(v52 + 56))(v17, 0, 1, v36);

    v38 = v48;
    v21 = v49;
    v27 = v24;
    v39 = v37;
    a1 = v50;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v21;
    v1[3] = v27;
    v1[4] = v38;
    v40 = v1[5];
    v41 = v54;
    sub_1D6F5C2FC(v17, v54, &qword_1EDF05550, &qword_1EDF05558, MEMORY[0x1E69D6A58]);
    v42 = 1;
    if ((*(v39 + 48))(v41, 1, v36) != 1)
    {
      v43 = MEMORY[0x1E69D6A58];
      v44 = v41;
      v45 = v47;
      sub_1D6F5C1CC(v44, v47, &qword_1EDF05558, MEMORY[0x1E69D6A58]);
      v40(v45);
      sub_1D6F5C238(v45, &qword_1EDF05558, v43);
      v42 = 0;
    }

    sub_1D6F5C36C(0, &qword_1EDF054C0, MEMORY[0x1E69D6A58]);
    (*(*(v46 - 8) + 56))(a1, v42, 1, v46);
  }

  else
  {
    v25 = (v21 + 64) >> 6;
    if (v25 <= v20 + 1)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = (v21 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v39 = v52;
        v36 = v53;
        (*(v52 + 56))(&v47 - v15, 1, 1, v53, v16);
        v38 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v24);
      ++v20;
      if (v22)
      {
        v49 = v21;
        v50 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1D6F5B930(uint64_t a1@<X8>)
{
  sub_1D6F5C294(0, &qword_1EDF05540, type metadata accessor for FeedClusteringOptions);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for FeedClusteringOptions(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F5C174(0, &qword_1EDF05538, &qword_1EDF05540, type metadata accessor for FeedClusteringOptions);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (&v44 - v17);
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v44 = v6;
  v49 = v23;
  if (v24)
  {
    v45 = a1;
    v25 = v22;
LABEL_11:
    v29 = (v24 - 1) & v24;
    v30 = __clz(__rbit64(v24)) | (v25 << 6);
    v31 = (*(v20 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    sub_1D5CEC8D8(*(v20 + 56) + *(v46 + 72) * v30, v10, type metadata accessor for FeedClusteringOptions);
    v34 = v48;
    v35 = *(v48 + 48);
    *v19 = v33;
    v19[1] = v32;
    v36 = v10;
    v37 = v34;
    sub_1D5D53BB8(v36, v19 + v35, type metadata accessor for FeedClusteringOptions);
    v38 = v47;
    (*(v47 + 56))(v19, 0, 1, v37);

    v28 = v25;
    v39 = v38;
    a1 = v45;
LABEL_12:
    *v1 = v20;
    v1[1] = v21;
    v1[2] = v49;
    v1[3] = v28;
    v1[4] = v29;
    v40 = v1[5];
    sub_1D6F5C2FC(v19, v14, &qword_1EDF05538, &qword_1EDF05540, type metadata accessor for FeedClusteringOptions);
    v41 = 1;
    if ((*(v39 + 48))(v14, 1, v37) != 1)
    {
      v42 = v44;
      sub_1D6F5C1CC(v14, v44, &qword_1EDF05540, type metadata accessor for FeedClusteringOptions);
      v40(v42);
      sub_1D6F5C238(v42, &qword_1EDF05540, type metadata accessor for FeedClusteringOptions);
      v41 = 0;
    }

    sub_1D6F5C36C(0, &qword_1EDF054B0, type metadata accessor for FeedClusteringOptions);
    (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v26 = (v23 + 64) >> 6;
    if (v26 <= v22 + 1)
    {
      v27 = v22 + 1;
    }

    else
    {
      v27 = (v23 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        v39 = v47;
        v37 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48, v18);
        v29 = 0;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v25);
      ++v22;
      if (v24)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1D6F5BD54()
{
  result = qword_1EDF056A8;
  if (!qword_1EDF056A8)
  {
    sub_1D5CB6BD4(255);
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056A8);
  }

  return result;
}

unint64_t sub_1D6F5BDF4()
{
  result = qword_1EDF056F8;
  if (!qword_1EDF056F8)
  {
    sub_1D5CB6CDC(255);
    sub_1D5CB5AE8(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056F8);
  }

  return result;
}

unint64_t sub_1D6F5BEC0()
{
  result = qword_1EC898A48;
  if (!qword_1EC898A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A48);
  }

  return result;
}

uint64_t sub_1D6F5BF14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C65536D657469 && a2 == 0xED000073726F7463 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974704F6D657469 && a2 == 0xEB00000000736E6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697875416D657469 && a2 == 0xEF7365697261696CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D6F5C174(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6F5C294(255, a3, a4);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6F5C1CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6F5C294(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6F5C238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F5C294(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6F5C294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6F5C2FC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1D6F5C174(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D6F5C36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

BOOL _s8NewsFeed23FormatGradientDirectionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

unint64_t sub_1D6F5C428(uint64_t a1)
{
  result = sub_1D6F5C450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F5C450()
{
  result = qword_1EC898A50;
  if (!qword_1EC898A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A50);
  }

  return result;
}

unint64_t sub_1D6F5C4A4(void *a1)
{
  a1[1] = sub_1D5C4CD8C();
  a1[2] = sub_1D668EA2C();
  result = sub_1D6F5C4DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F5C4DC()
{
  result = qword_1EC898A58;
  if (!qword_1EC898A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A58);
  }

  return result;
}

double FormatSourceMapNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1D6F5D78C(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v148 = (&v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v135 - v11;
  sub_1D6F5D78C(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, v5);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v147 = &v135 - v15;
  v152 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  MEMORY[0x1EEE9AC00](v152, v16);
  v154 = (&v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v150 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  v23 = v2[2];
  v22 = v2[3];
  v159 = v2[1];
  v160 = v22;
  v158 = v2[4];
  v24 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
  v156 = a1;
  v157 = v21;
  v153 = v12;
  v149 = v24;
  if (!v24)
  {
    v161 = 0;
    v37 = *(a1 + 16);
    if (v37)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v25 = *(v24 + 16);
  *&v171 = v21;
  v161 = sub_1D6E7C394();
  v27 = v26;
  *&v171 = v21;
  v28 = sub_1D6E7A824();
  v151 = a2;
  v29 = *(a2 + 24);
  type metadata accessor for FormatNodeDebugRecord();
  v30 = swift_allocObject();
  v31 = v30;
  *(v30 + 88) = 0;
  *(v30 + 96) = 1;
  *(v30 + 104) = 0;
  *(v30 + 112) = 0;
  *(v30 + 120) = 0;
  *(v30 + 128) = 1;
  if (!v23)
  {

    sub_1D5D25B88(*(v31 + 120), *(v31 + 128));
    swift_deallocPartialClassInstance();

    v161 = 0;
    a2 = v151;
    a1 = v156;
    v21 = v157;
    goto LABEL_14;
  }

  *(v30 + 16) = v161;
  *(v30 + 24) = v27;
  *(v30 + 40) = v28;
  *(v30 + 32) = v29;
  v32 = v160;
  *(v30 + 56) = v159;
  *(v30 + 64) = v23;
  v33 = v158;
  *(v30 + 72) = v32;
  *(v30 + 80) = v33;

  *(v31 + 48) = CACurrentMediaTime();
  *(v31 + 88) = 0;
  *(v31 + 96) = 1;
  swift_beginAccess();

  MEMORY[0x1DA6F9CE0](v34);
  v35 = *((*(v25 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = *((*(v25 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18);
  v161 = v31;
  if (v35 >= v36 >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();

  a2 = v151;
  a1 = v156;
  v21 = v157;
  v37 = *(v156 + 16);
  if (!v37)
  {
LABEL_10:
    if (v23)
    {
      v170 = 0;
      v168 = 0u;
      v169 = 0u;
      v178 = 0;
      v162 = v159;
      v163 = v23;
      v164 = v160;
      v165 = v158;
      swift_bridgeObjectRetain_n();

      v160 = sub_1D6E8E17C(&v162);

      swift_beginAccess();
      v178 = 1;
      v66 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
      v67 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
      v68 = *(a2 + 40);
      v147 = *(a2 + 32);

      v159 = v66;

      v158 = v67;

      v154 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], a2, &v178);
      v69 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v70 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
      v71 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
      v72 = v23;
      v73 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
      v74 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
      v75 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      v153 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
      LODWORD(v152) = v75;
      sub_1D62E312C(v69, v70, v71, v153, v73, v74, v75);
      v151 = sub_1D6BEC878(&v168, a2, &v178, v76);
      v78 = *(a2 + 96);
      v173 = *(a2 + 80);
      v174 = v78;
      v175 = *(a2 + 112);
      v176 = *(a2 + 128);
      v79 = *(a2 + 64);
      v171 = *(a2 + 48);
      v172 = v79;
      if (v178)
      {
        v145 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
        v143 = v69;
        v80 = *(a2 + 16);
        v146 = v72;
        v142 = v68;
        v81 = v150;
        v144 = v77;
        sub_1D5BF052C(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v150, type metadata accessor for GroupLayoutContext);
        sub_1D5B68374(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v167);
        type metadata accessor for FormatNodeBinderContext(0);
        a2 = swift_allocObject();
        v82 = v160;
        *(a2 + 16) = v80;
        *(a2 + 24) = v82;
        v83 = v174;
        *(a2 + 80) = v173;
        *(a2 + 96) = v83;
        *(a2 + 112) = v175;
        *(a2 + 128) = v176;
        v84 = v172;
        *(a2 + 48) = v171;
        *(a2 + 64) = v84;
        v85 = v159;
        *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v158;
        *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v85;
        sub_1D5BF052C(v81, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
        v86 = v142;
        *(a2 + 32) = v147;
        *(a2 + 40) = v86;
        *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v154;
        *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v149;
        sub_1D5B68374(v167, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
        v87 = a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
        *v87 = v143;
        *(v87 + 8) = v70;
        v88 = v153;
        *(v87 + 16) = v71;
        *(v87 + 24) = v88;
        *(v87 + 32) = v73;
        *(v87 + 40) = v74;
        *(v87 + 48) = v152;
        v89 = (a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
        v90 = v144;
        *v89 = v151;
        v89[1] = v90;

        sub_1D5CF6A5C(&v171, &v162);
        v91 = v145;

        __swift_destroy_boxed_opaque_existential_1(v167);
        sub_1D6F608A8(v81, type metadata accessor for GroupLayoutContext);
        sub_1D6F608A8(&v168, sub_1D630BB34);
        *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v91;
      }

      else
      {

        sub_1D62E31A0(v69, v70, v71, v153, v73, v74, v152);

        sub_1D6F608A8(&v168, sub_1D630BB34);
      }

      v122 = v148;
      v162 = v157;

      v123 = v155;
      FormatNode.bind(binder:context:)(v156, a2);
      if (!v123)
      {

        goto LABEL_35;
      }

      v124 = *(a2 + 24);
      v162 = v123;
      v125 = v123;
      sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      v126 = type metadata accessor for FormatLayoutError(0);
      v127 = swift_dynamicCast();
      v128 = *(*(v126 - 8) + 56);
      if (v127)
      {
        v128(v122, 0, 1, v126);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1D6F608A8(v122, type metadata accessor for FormatLayoutError);
        if (EnumCaseMultiPayload == 65)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v128(v122, 1, 1, v126);
        sub_1D6F606B8(v122, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
      }

      sub_1D5B574B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v132 = *(v124 + 48);
      v132[1] = v123;
      swift_storeEnumTagMultiPayload();

LABEL_40:
      swift_willThrow();

      goto LABEL_41;
    }

LABEL_14:

    *&v171 = v21;

    v92 = v155;
    FormatNode.bind(binder:context:)(a1, a2);
    if (!v92)
    {
      goto LABEL_35;
    }

LABEL_41:

    if (!v161)
    {
      return result;
    }

    goto LABEL_42;
  }

LABEL_6:
  if (!v23)
  {
    goto LABEL_14;
  }

  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v178 = 0;
  v162 = v159;
  v163 = v23;
  v164 = v160;
  v165 = v158;
  swift_bridgeObjectRetain_n();

  v148 = sub_1D6E8E17C(&v162);

  swift_beginAccess();
  v178 = 1;
  v38 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  v39 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  v40 = *(a2 + 40);
  v139 = *(a2 + 32);

  v145 = v38;

  v144 = v39;

  v143 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], a2, &v178);
  v42 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v41 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v44 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v45 = v23;
  v46 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v47 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v141 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v142 = v41;
  v177 = v47;
  sub_1D62E312C(v42, v41, v43, v44, v46, v141, v47);
  v140 = sub_1D6BEC878(&v168, a2, &v178, v48);
  v50 = *(a2 + 96);
  v173 = *(a2 + 80);
  v174 = v50;
  v175 = *(a2 + 112);
  v176 = *(a2 + 128);
  v51 = *(a2 + 64);
  v171 = *(a2 + 48);
  v172 = v51;
  v151 = v37;
  v146 = v45;
  if (v178)
  {
    v138 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
    v136 = *(a2 + 16);
    v52 = v136;
    v135 = v40;
    v53 = v150;
    v137 = v49;
    sub_1D5BF052C(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v150, type metadata accessor for GroupLayoutContext);
    sub_1D5B68374(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v167);
    type metadata accessor for FormatNodeBinderContext(0);
    a2 = swift_allocObject();
    v54 = v148;
    *(a2 + 16) = v52;
    *(a2 + 24) = v54;
    v55 = v174;
    *(a2 + 80) = v173;
    *(a2 + 96) = v55;
    *(a2 + 112) = v175;
    *(a2 + 128) = v176;
    v56 = v172;
    *(a2 + 48) = v171;
    *(a2 + 64) = v56;
    v57 = v145;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v144;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v57;
    v58 = v53;
    sub_1D5BF052C(v53, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v59 = v135;
    *(a2 + 32) = v139;
    *(a2 + 40) = v59;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v143;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v149;
    sub_1D5B68374(v167, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v60 = a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v61 = v141;
    v62 = v142;
    *v60 = v42;
    *(v60 + 8) = v62;
    *(v60 + 16) = v43;
    *(v60 + 24) = v44;
    *(v60 + 32) = v46;
    *(v60 + 40) = v61;
    *(v60 + 48) = v177;
    v63 = (a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v64 = v137;
    *v63 = v140;
    v63[1] = v64;
    sub_1D5CF6A5C(&v171, &v162);

    v65 = v138;

    v45 = v146;

    __swift_destroy_boxed_opaque_existential_1(v167);
    sub_1D6F608A8(v58, type metadata accessor for GroupLayoutContext);
    sub_1D6F608A8(&v168, sub_1D630BB34);
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v65;
  }

  else
  {

    sub_1D62E31A0(v42, v142, v43, v44, v46, v141, v177);

    sub_1D6F608A8(&v168, sub_1D630BB34);
  }

  v93 = v154;
  *(v154 + *(v152 + 24)) = a2;
  type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  swift_storeEnumTagMultiPayload();
  v94 = v157;
  v95 = v158;
  v97 = v159;
  v96 = v160;
  *v93 = v157;
  v93[1] = v97;
  v93[2] = v45;
  v93[3] = v96;
  v93[4] = v95;
  v98 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_lock;
  swift_retain_n();

  sub_1D725A76C();
  v99 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
  swift_beginAccess();
  sub_1D6F5D78C(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v149 = v100;
  v150 = v99;
  sub_1D725B8BC();
  swift_endAccess();
  v152 = v98;
  sub_1D725A77C();
  *&v168 = v159;
  *(&v168 + 1) = v45;
  *&v169 = v160;
  *(&v169 + 1) = v95;
  sub_1D6D2D914(&v168, 0, &v162);
  v101 = v163;
  if (v163)
  {
    v103 = v165;
    v102 = v166;
    v104 = v164;
    v105 = v162;
    sub_1D6D2C570(&v162);
    v106 = v104;
    v94 = v157;
    v107 = v102;
    v108 = v146;
    sub_1D6F5D9B8(v105, v101, v106, v103, v107);
  }

  else
  {
    v108 = v45;
  }

  v109 = v153;
  v162 = v94;
  v110 = v155;
  FormatNode.bind(binder:context:)(v156, a2);
  if (!v110)
  {

    sub_1D725A76C();
    swift_beginAccess();
    v117 = v147;
    sub_1D725B89C();
    swift_endAccess();
    sub_1D6F606B8(v117, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame);
    sub_1D725A77C();

    sub_1D6F608A8(v154, type metadata accessor for FormatDebuggerCallStackFrame);

LABEL_35:

    if (!v161)
    {
      return result;
    }

    if (*(v161 + 96) == 1)
    {
      v130 = CACurrentMediaTime();
      v131 = v161;
      *(v161 + 88) = v130;
      *(v131 + 96) = 0;
    }

    goto LABEL_44;
  }

  v111 = *(a2 + 24);
  v162 = v110;
  v112 = v110;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v113 = type metadata accessor for FormatLayoutError(0);
  v114 = swift_dynamicCast();
  v115 = *(*(v113 - 8) + 56);
  if (!v114)
  {
    v115(v109, 1, 1, v113);
    sub_1D6F606B8(v109, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
    goto LABEL_26;
  }

  v115(v109, 0, 1, v113);
  v116 = swift_getEnumCaseMultiPayload();
  sub_1D6F608A8(v109, type metadata accessor for FormatLayoutError);
  if (v116 != 65)
  {
LABEL_26:
    v162 = v159;
    v163 = v108;
    v164 = v160;
    v165 = v158;
    v166 = v110;

    v118 = v110;
    sub_1D6D2C570(&v162);
    v119 = v166;

    sub_1D6CC4E10(v119);
    sub_1D5B574B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v120 = *(v111 + 48);
    v120[1] = v110;
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();

  sub_1D6F608A8(v154, type metadata accessor for FormatDebuggerCallStackFrame);
  if (v161)
  {
LABEL_42:
    if (*(v161 + 96))
    {
      v133 = CACurrentMediaTime();
      v134 = v161;
      *(v161 + 88) = v133;
      *(v134 + 96) = 0;
    }

LABEL_44:
  }

  return result;
}

void sub_1D6F5D78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1D6F5D7F0(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (v4)
  {
    v5 = v1[1];
    v16 = *(v1 + 3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5EB99F0();
      v14 = swift_allocObject();
      swift_beginAccess();
      v15 = v7[2];
      v18[0] = v7[1];
      v18[1] = v15;
      v19[0] = v7[3];
      *(v19 + 14) = *(v7 + 62);
      memmove((v14 + 16), v7 + 1, 0x3EuLL);
      sub_1D5EB9AB0(v18, v17);

      *a1 = v14;
      v7 = v14;
    }

    swift_beginAccess();
    v8 = *(v7 + 3);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 3) = v8;
    if ((v9 & 1) == 0)
    {
      v8 = sub_1D698F85C(0, *(v8 + 2) + 1, 1, v8);
      *(v7 + 3) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1D698F85C((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[32 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v4;
    *(v12 + 3) = v16;
    *(v7 + 3) = v8;
    swift_endAccess();
  }

  *&v18[0] = v3;

  sub_1D6299090(a1);

  return result;
}

void sub_1D6F5D9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    sub_1D6CC4E10(a5);
  }
}

uint64_t sub_1D6F5D9FC(void *a1)
{
  sub_1D5C51A0C(0, &qword_1EC87F860, sub_1D5E19050, &type metadata for FormatSourceMapInnerNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v12 = v1[6];
  v15 = v1[7];
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19050();
  sub_1D7264B5C();
  if (*(v9 + 16))
  {
    sub_1D5E07388(v9, v7, 0);
    if (v2)
    {
      return (*(v21 + 8))(v7, v22);
    }
  }

  if (!*(v8 + 16))
  {
    v14 = v22;
LABEL_8:
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v16;
    v28 = v15;
    v29 = 2;
    sub_1D5EB1D80(v20, v19, v18, v17, v16, v15);
    sub_1D6659A24();
    sub_1D72643BC();
    sub_1D5EB2398(v23, v24, v25, v26, v27, v28);
    return (*(v21 + 8))(v7, v14);
  }

  v29 = 1;
  v23 = v8;
  sub_1D6F60764();
  sub_1D6F5D78C(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  sub_1D60AD304();
  v14 = v22;
  sub_1D72647EC();
  if (!v2)
  {
    goto LABEL_8;
  }

  return (*(v21 + 8))(v7, v14);
}

void sub_1D6F5DC8C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  sub_1D5C2E528(0);
  v36 = v3;
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C51A0C(0, &qword_1EC898A90, sub_1D5E19050, &type metadata for FormatSourceMapInnerNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19050();
  v16 = v39;
  sub_1D7264B0C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v10;
    v18 = v37;
    LOBYTE(v41[0]) = 0;
    v19 = v12;
    if (sub_1D726434C())
    {
      LOBYTE(v40[0]) = 0;
      sub_1D5B574B0(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      sub_1D726431C();
      v39 = sub_1D725A74C();
      (*(v18 + 8))(v17, v7);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CD0];
    }

    LOBYTE(v41[0]) = 1;
    v20 = a1;
    if (sub_1D726434C())
    {
      LOBYTE(v40[0]) = 1;
      sub_1D5B574B0(&qword_1EDF3BD80, sub_1D5C2E528, MEMORY[0x1E69D64C8]);
      v21 = v35;
      v22 = v36;
      sub_1D726431C();
      v23 = sub_1D725A74C();
      (*(v33 + 8))(v21, v22);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = v38;
    v48 = 2;
    sub_1D5C5C5C0();
    sub_1D726427C();
    (v24[1])(v15, v19);
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v38 = v20;
    v28 = v39;
    *&v40[0] = v39;
    *(&v40[0] + 1) = v23;
    v40[1] = v45;
    v40[2] = v46;
    v40[3] = v47;
    v29 = v40[0];
    v30 = v45;
    v31 = v47;
    v32 = v34;
    v34[2] = v46;
    v32[3] = v31;
    *v32 = v29;
    v32[1] = v30;
    sub_1D6F60634(v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v41[0] = v28;
    v41[1] = v23;
    v42 = v25;
    v43 = v26;
    v44 = v27;
    sub_1D6F6066C(v41);
  }
}

uint64_t sub_1D6F5E204()
{
  v1 = 0x736E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 2019912806;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D6F5E25C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6F60A20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6F5E284(uint64_t a1)
{
  v2 = sub_1D5E19050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F5E2C0(uint64_t a1)
{
  v2 = sub_1D5E19050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FormatSourceMapNode.encode(to:)(void *a1)
{
  sub_1D5C51A0C(0, &qword_1EDF026F0, sub_1D5C51A74, &type metadata for FormatSourceMapNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v11;
  *&v17 = v10;

  FormatNode.encode(to:)(a1);

  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264B4C();
    v13 = Dictionary<>.allowSourceMaps.getter(v12);

    if (v13)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5C51A74();
      sub_1D7264B5C();
      v17 = v15;
      v18 = v14;
      v16 = 0;
      sub_1D6C4F274();

      sub_1D72643BC();

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_1D6F5E544(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1885433183;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1885433183;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6F5E5BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F5E624(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F5E670(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6F5E6D4(char *a2@<X8>)
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

void sub_1D6F5E734(uint64_t *a1@<X8>)
{
  v2 = 1885433183;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1D6F5E75C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1885433183;
  }
}

void sub_1D6F5E780(char *a3@<X8>)
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

uint64_t sub_1D6F5E7E4(uint64_t a1)
{
  v2 = sub_1D5C51A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F5E820(uint64_t a1)
{
  v2 = sub_1D5C51A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSourceMapNode.identifier.getter()
{
  v0 = sub_1D6E7C394();

  return v0;
}

uint64_t sub_1D6F5E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v54 = type metadata accessor for FormatOption(0);
  v7 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[5] && (v11 = v2[7]) != 0)
  {
    v44 = v2[5];
    v45 = a1;
    v12 = v2[6];
    v14 = v2[8];
    v13 = v2[9];
    v15 = v2[10];
    v16 = v2[11];
    v17 = v2[12];
    v18 = *(v12 + 16);
    v46 = v13;
    v47 = a2;
    if (v18)
    {
      v42 = v11;
      v43 = v3;
      v40 = v15;
      v41 = v14;
      v38 = v17;
      v39 = v16;
      sub_1D5EB1D80(v11, v14, v13, v15, v16, v17);
      v48 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v18, 0);
      v19 = v12;
      v20 = v48;
      v21 = *(v7 + 80);
      v37[1] = v19;
      v22 = v19 + ((v21 + 32) & ~v21);
      v23 = *(v7 + 72);
      do
      {
        sub_1D5BF052C(v22, v10, type metadata accessor for FormatOption);
        v24 = swift_allocBox();
        sub_1D5D247E0(v10, v25);
        v48 = v20;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D5D24610((v26 > 1), v27 + 1, 1);
          v20 = v48;
        }

        *(v20 + 16) = v27 + 1;
        *(v20 + 8 * v27 + 32) = v24 | 0x5000000000000004;
        v22 += v23;
        --v18;
      }

      while (v18);

      v11 = v42;
      v4 = v43;
      v30 = v40;
      v14 = v41;
      v32 = v38;
      v31 = v39;
    }

    else
    {
      v30 = v15;
      v31 = v16;
      v32 = v17;
      sub_1D5EB1D80(v11, v14, v13, v15, v16, v17);
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6B0C068(v20);

    v34 = sub_1D6B0ACE8(v33, 0);

    v48 = v11;
    v49 = v14;
    v35 = v46;
    v50 = v46;
    v51 = v30;
    v52 = v31;
    v53 = v32;
    sub_1D68687FC(v34, v47);

    result = sub_1D5EB2398(v11, v14, v35, v30, v31, v32);
    if (!v4)
    {
      v36 = sub_1D7259B8C();
      return (*(*(v36 - 8) + 56))(v47, 0, 1, v36);
    }
  }

  else
  {
    v28 = sub_1D7259B8C();
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  return result;
}

uint64_t (*sub_1D6F5EBF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t (*a10)(void)))(void *a1)
{
  v74 = a1;
  v70 = a7;
  v77 = a2;
  v72 = a10;
  v85 = a9;
  v15 = MEMORY[0x1E69E6720];
  sub_1D6F5D78C(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v75 = &v67 - v18;
  sub_1D6F5D78C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v68 = &v67 - v21;
  v22 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = a4;
  v81 = a5;
  v78 = a4;
  v82 = a6;
  v83 = a7;
  v27 = a6;
  v28 = a5;

  v29 = sub_1D6B13CFC(&v80);

  v30 = *a8;
  v31 = (v26 + *(v23 + 32));
  sub_1D6324784(0);
  v33 = *(v32 + 48);
  *v31 = v29;
  sub_1D5C51A0C(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
  (*(*(v34 - 8) + 16))(v31 + v33, v77, v34);
  type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  swift_storeEnumTagMultiPayload();
  *v26 = v30;
  v26[1] = a4;
  v26[2] = v28;
  v26[3] = v27;
  v35 = v70;
  v26[4] = v70;
  v71 = v30;

  v76 = v29;

  sub_1D725A76C();
  swift_beginAccess();
  sub_1D6F5D78C(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v77 = v26;
  sub_1D725B8BC();
  swift_endAccess();
  sub_1D725A77C();
  v79[0] = v78;
  v79[1] = v28;
  v36 = v28;
  v69 = v27;
  v79[2] = v27;
  v79[3] = v35;
  v37 = v35;
  sub_1D6D2D914(v79, 1, &v80);
  v38 = v81;
  if (v81)
  {
    v39 = v35;
    v41 = v83;
    v40 = v84;
    v42 = v82;
    v43 = v80;
    sub_1D6D2C570(&v80);
    v44 = v42;
    v36 = v28;
    v45 = v41;
    v37 = v39;
    sub_1D6F5D9B8(v43, v38, v44, v45, v40);
  }

  v47 = v73;
  v46 = v74;
  v48 = v76;
  sub_1D6FE1D5C(v74, v76, v72, v71);
  v49 = v75;
  if (!v47)
  {
    v80 = v46;
    v56 = sub_1D7259B8C();
    v57 = v68;
    (*(*(v56 - 8) + 56))(v68, 1, 1, v56);
    sub_1D5EB563C(0);
    sub_1D5B574B0(&qword_1EDF3C118, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);
    v58 = v85;

    sub_1D7259ACC();

    sub_1D6F606B8(v57, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
    sub_1D6F608A8(v77, type metadata accessor for FormatDebuggerCallStackFrame);
    v59 = *(v48 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);

    v60 = swift_allocObject();
    v61 = v78;
    v60[2] = v59;
    v60[3] = v61;
    v62 = v69;
    v60[4] = v36;
    v60[5] = v62;
    v60[6] = v37;
    v60[7] = v58;

    return sub_1D6F60728;
  }

  v50 = *(v48 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v80 = v47;
  v51 = v47;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v52 = type metadata accessor for FormatLayoutError(0);
  v53 = swift_dynamicCast();
  v54 = *(*(v52 - 8) + 56);
  if (v53)
  {
    v54(v49, 0, 1, v52);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D6F608A8(v49, type metadata accessor for FormatLayoutError);
    if (EnumCaseMultiPayload == 65)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v54(v49, 1, 1, v52);
    sub_1D6F606B8(v49, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  v80 = v78;
  v81 = v36;
  v82 = v69;
  v83 = v37;
  v84 = v47;

  v64 = v47;
  sub_1D6D2C570(&v80);
  v65 = v84;

  sub_1D6CC4E10(v65);
  sub_1D5B574B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v66 = *(v50 + 48);
  v66[1] = v47;
  swift_storeEnumTagMultiPayload();

LABEL_10:
  swift_willThrow();

  return sub_1D6F608A8(v77, type metadata accessor for FormatDebuggerCallStackFrame);
}

uint64_t sub_1D6F5F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6F5D78C(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - v5;
  sub_1D725A76C();
  swift_beginAccess();
  sub_1D6F5D78C(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  sub_1D725B89C();
  swift_endAccess();
  sub_1D6F606B8(v6, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame);
  return sub_1D725A77C();
}

double sub_1D6F5F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t (*a9)(void))
{
  sub_1D6F5D78C(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - v17;
  v34 = a4;
  v35 = a6;
  v37[0] = a4;
  v37[1] = a5;
  v37[2] = a6;
  v37[3] = a7;
  v36 = a7;

  v19 = sub_1D6B13CFC(v37);

  v20 = v37[5];
  sub_1D6FE1D5C(a1, v19, a9, *a8);
  if (!v20)
  {
    v27 = *(v19 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);

    v28 = swift_allocObject();
    v30 = v34;
    v29 = v35;
    v28[2] = v27;
    v28[3] = v30;
    v28[4] = a5;
    v28[5] = v29;
    v28[6] = v36;
    v28[7] = 0;

    return result;
  }

  v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v37[0] = v20;
  v22 = v20;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v23 = type metadata accessor for FormatLayoutError(0);
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v25(v18, 0, 1, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D6F608A8(v18, type metadata accessor for FormatLayoutError);
    if (EnumCaseMultiPayload == 65)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25(v18, 1, 1, v23);
    sub_1D6F606B8(v18, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  sub_1D5B574B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v32 = *(v21 + 48);
  v32[1] = v20;
  swift_storeEnumTagMultiPayload();

LABEL_8:
  swift_willThrow();

  return result;
}

uint64_t sub_1D6F5F7AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  sub_1D6F5D78C(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29[-1] - v15;
  v29[0] = a1;
  v17 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v18 = type metadata accessor for FormatLayoutError(0);
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  if (v19)
  {
    v20(v16, 0, 1, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D6F608A8(v16, type metadata accessor for FormatLayoutError);
    if (EnumCaseMultiPayload == 65)
    {
      v22 = a1;
      goto LABEL_8;
    }
  }

  else
  {
    v20(v16, 1, 1, v18);
    sub_1D6F606B8(v16, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  }

  if (a7)
  {
    v29[0] = a3;
    v29[1] = a4;
    v29[2] = a5;
    v29[3] = a6;
    v30 = a1;
    v23 = a1;

    sub_1D6D2C570(v29);
    v24 = v30;

    sub_1D6CC4E10(v24);
  }

  sub_1D5B574B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  v22 = swift_allocError();
  *v25 = *(v28 + 48);
  v25[1] = a1;
  swift_storeEnumTagMultiPayload();

LABEL_8:
  v26 = a1;
  return v22;
}

uint64_t sub_1D6F5FA40()
{
  v0 = sub_1D6E7C394();

  return v0;
}

double sub_1D6F5FABC(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v8[6] = a2[6];
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  v9 = *v2;

  sub_1D5CF4F50(a1, v8);

  return result;
}

BOOL sub_1D6F5FB48(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v32 = a2[5];
  v33 = a2[6];
  v34 = a2[7];
  v35 = a2[4];
  if (sub_1D5BFC390(*a1, *a2) & 1) != 0 && (sub_1D633BCCC(v2, v9))
  {
    if (v4)
    {
      v39[0] = v4;
      v39[1] = v3;
      v39[2] = v6;
      v39[3] = v5;
      v12 = v8;
      v40 = v8;
      v41 = v7;
      v13 = v7;
      if (v11)
      {
        v36[0] = v11;
        v36[1] = v10;
        v36[2] = v35;
        v36[3] = v32;
        v37 = v33;
        v38 = v34;
        v30 = v5;
        sub_1D5EB1D80(v4, v3, v6, v5, v8, v7);
        sub_1D5EB1D80(v11, v10, v35, v32, v33, v34);
        sub_1D5EB1D80(v4, v3, v6, v5, v8, v7);
        v14 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v39, v36);
        v15 = v37;

        sub_1D5CBF568(v15);

        v16 = v40;

        sub_1D5CBF568(v16);

        sub_1D5EB2398(v4, v3, v6, v30, v8, v7);
        return (v14 & 1) != 0;
      }

      v24 = v4;
      v27 = v4;
      v25 = v5;
      v26 = v3;
      sub_1D5EB1D80(v27, v3, v6, v25, v8, v13);
      v31 = v10;
      v28 = v10;
      v21 = v34;
      v23 = v32;
      v22 = v33;
      sub_1D5EB1D80(0, v28, v35, v32, v33, v34);
      sub_1D5EB1D80(v24, v3, v6, v25, v12, v13);

      sub_1D5CBF568(v12);

      v18 = 0;
    }

    else
    {
      v29 = v3;
      v12 = v8;
      v13 = v7;
      sub_1D5EB1D80(0, v3, v6, v5, v8, v7);
      if (!v11)
      {
        sub_1D5EB1D80(0, v10, v35, v32, v33, v34);
        sub_1D5EB2398(0, v3, v6, v5, v8, v7);
        return 1;
      }

      v18 = v11;
      v19 = v11;
      v31 = v10;
      v20 = v10;
      v21 = v34;
      v23 = v32;
      v22 = v33;
      sub_1D5EB1D80(v19, v20, v35, v32, v33, v34);
      v24 = 0;
      v25 = v5;
      v26 = v29;
    }

    sub_1D5EB2398(v24, v26, v6, v25, v12, v13);
    sub_1D5EB2398(v18, v31, v35, v23, v22, v21);
  }

  return 0;
}

BOOL _s8NewsFeed19FormatSourceMapNodeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 7);
  *v42 = *(a1 + 5);
  *&v42[16] = v7;
  v8 = *(a1 + 11);
  *&v42[32] = *(a1 + 9);
  *&v42[48] = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 7);
  *v43 = *(a2 + 5);
  *&v43[16] = v14;
  v15 = *(a2 + 11);
  *&v43[32] = *(a2 + 9);
  *&v43[48] = v15;
  *v28 = v3;
  *&v24 = v9;

  LOBYTE(v3) = _s8NewsFeed10FormatNodeO2eeoiySbAC_ACtFZ_0(v28, &v24);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v11)
    {

      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:

    return 0;
  }

  if (v2 == v10 && v4 == v11)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v16 = sub_1D72646CC();
    swift_bridgeObjectRetain_n();
    if ((v16 & 1) == 0)
    {
LABEL_13:
      swift_bridgeObjectRelease_n();
      return 0;
    }
  }

  if (v5 != v12)
  {
    goto LABEL_13;
  }

  swift_bridgeObjectRelease_n();
  if (v6 != v13)
  {
    return 0;
  }

LABEL_15:
  v38 = *&v42[8];
  v39 = *&v42[24];
  v40 = *&v42[40];
  v17 = *v42;
  v18 = *v43;
  v41 = *&v42[56];
  v34 = *&v43[8];
  v35 = *&v43[24];
  v36 = *&v43[40];
  v37 = *&v43[56];
  if (!*v42)
  {
    if (!*v43)
    {
      *&v28[8] = *&v42[8];
      *&v28[24] = *&v42[24];
      *&v28[40] = *&v42[40];
      *v28 = 0;
      *&v28[56] = *&v42[56];
      sub_1D5BF052C(v42, &v24, sub_1D6F607F4);
      sub_1D5BF052C(v43, &v24, sub_1D6F607F4);
      sub_1D6F608A8(v28, sub_1D6F607F4);
      return 1;
    }

    sub_1D5BF052C(v42, v28, sub_1D6F607F4);
    sub_1D5BF052C(v43, v28, sub_1D6F607F4);
    goto LABEL_21;
  }

  *&v28[8] = *&v42[8];
  *&v28[24] = *&v42[24];
  *&v28[40] = *&v42[40];
  *v28 = *v42;
  *&v28[56] = *&v42[56];
  v24 = *v28;
  v25 = *&v28[16];
  v26 = *&v28[32];
  v27 = *&v28[48];
  if (!*v43)
  {
    *v23 = *v28;
    *&v23[16] = *&v28[16];
    *&v23[32] = *&v28[32];
    *&v23[48] = *&v28[48];
    sub_1D5BF052C(v42, v22, sub_1D6F607F4);
    sub_1D5BF052C(v43, v22, sub_1D6F607F4);
    sub_1D5BF052C(v28, v22, sub_1D6F607F4);
    sub_1D6F6066C(v23);
LABEL_21:
    *&v28[8] = v38;
    *&v28[24] = v39;
    *&v28[40] = v40;
    v30 = v34;
    *v28 = v17;
    *&v28[56] = v41;
    v29 = v18;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    sub_1D6F608A8(v28, sub_1D6F60844);
    return 0;
  }

  *&v23[8] = *&v43[8];
  *&v23[24] = *&v43[24];
  *&v23[40] = *&v43[40];
  *&v23[56] = *&v43[56];
  *v23 = *v43;
  sub_1D5BF052C(v42, v22, sub_1D6F607F4);
  sub_1D5BF052C(v43, v22, sub_1D6F607F4);
  sub_1D5BF052C(v28, v22, sub_1D6F607F4);
  v19 = sub_1D6F5FB48(&v24, v23);
  v21[0] = *v23;
  v21[1] = *&v23[16];
  v21[2] = *&v23[32];
  v21[3] = *&v23[48];
  sub_1D6F6066C(v21);
  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v22[3] = v27;
  sub_1D6F6066C(v22);
  *&v23[8] = v38;
  *&v23[24] = v39;
  *&v23[40] = v40;
  *v23 = v17;
  *&v23[56] = v41;
  sub_1D6F608A8(v23, sub_1D6F607F4);
  return v19;
}

unint64_t sub_1D6F6030C()
{
  result = qword_1EC898A60;
  if (!qword_1EC898A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A60);
  }

  return result;
}

unint64_t sub_1D6F603A0()
{
  result = qword_1EC898A68;
  if (!qword_1EC898A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A68);
  }

  return result;
}

unint64_t sub_1D6F603F4(uint64_t a1)
{
  result = sub_1D6F6041C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F6041C()
{
  result = qword_1EC898A70;
  if (!qword_1EC898A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A70);
  }

  return result;
}

unint64_t sub_1D6F604A4()
{
  result = qword_1EC898A78;
  if (!qword_1EC898A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A78);
  }

  return result;
}

uint64_t sub_1D6F60538(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F6058C()
{
  result = qword_1EC898A80;
  if (!qword_1EC898A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A80);
  }

  return result;
}

unint64_t sub_1D6F605E0()
{
  result = qword_1EC898A88;
  if (!qword_1EC898A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898A88);
  }

  return result;
}

uint64_t sub_1D6F606B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F5D78C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6F60764()
{
  result = qword_1EC87F870;
  if (!qword_1EC87F870)
  {
    sub_1D5C51A0C(255, &qword_1EC87F860, sub_1D5E19050, &type metadata for FormatSourceMapInnerNode.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F870);
  }

  return result;
}

void sub_1D6F607F4()
{
  if (!qword_1EC898A98)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898A98);
    }
  }
}

void sub_1D6F60844(uint64_t a1)
{
  if (!qword_1EC898AA0)
  {
    sub_1D6F607F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC898AA0);
    }
  }
}

uint64_t sub_1D6F608A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6F6091C()
{
  result = qword_1EC898AA8;
  if (!qword_1EC898AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AA8);
  }

  return result;
}

unint64_t sub_1D6F60974()
{
  result = qword_1EC898AB0;
  if (!qword_1EC898AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AB0);
  }

  return result;
}

unint64_t sub_1D6F609CC()
{
  result = qword_1EC898AB8;
  if (!qword_1EC898AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AB8);
  }

  return result;
}

uint64_t sub_1D6F60A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2019912806 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6F60B58(uint64_t a1)
{
  v3 = type metadata accessor for FormatScopedOption(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v27 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  v29 = v5;
  sub_1D69979F0(0, v8, 0);
  v9 = v35;
  v10 = v29 + 64;
  result = sub_1D7263B7C();
  v12 = result;
  v13 = v29;
  v14 = 0;
  v28 = v29 + 72;
  v30 = v8;
  v31 = v10;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(v13 + 36);
    sub_1D5D25108(v7);
    swift_storeEnumTagMultiPayload();
    v35 = v9;
    v17 = v7;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D69979F0((v18 > 1), v19 + 1, 1);
      v9 = v35;
    }

    *(v9 + 16) = v19 + 1;
    result = sub_1D5D5E67C(v17, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v19, type metadata accessor for FormatScopedOption);
    v15 = 1 << *(v13 + 32);
    if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v7 = v17;
    v10 = v31;
    v20 = *(v31 + 8 * v16);
    if ((v20 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v12 & 0x3F));
    if (v21)
    {
      v15 = __clz(__rbit64(v21)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v16 << 6;
      v23 = v16 + 1;
      v24 = (v28 + 8 * v16);
      while (v23 < (v15 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1D5C25E1C(v12, v34, 0);
          v13 = v29;
          v15 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v12, v34, 0);
      v13 = v29;
    }

LABEL_4:
    ++v14;
    v12 = v15;
    if (v14 == v30)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D6F60E58@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
      a1 &= 0xFFFFFFFFFFFFFFBuLL;
      break;
    default:
      break;
  }

  v12 = v2;
  v13 = v3;
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v4;
  v6 = *(a1 + 64);
  v10 = *(a1 + 48);
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return sub_1D5C8C900(v9, &v8);
}

uint64_t sub_1D6F60ECC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  type metadata accessor for FormatOption(0);
  v6 = swift_allocBox();
  result = sub_1D5D25664(a1, v7, type metadata accessor for FormatOption);
  switch(v5)
  {
    case 1uLL:
      v6 |= 4uLL;
      break;
    case 2uLL:
      v6 |= 0x1000000000000000uLL;
      break;
    case 3uLL:
      v9 = 0x1000000000000004;
      goto LABEL_25;
    case 4uLL:
      v6 |= 0x2000000000000000uLL;
      break;
    case 5uLL:
      v9 = 0x2000000000000004;
      goto LABEL_25;
    case 6uLL:
      v6 |= 0x3000000000000000uLL;
      break;
    case 7uLL:
      v9 = 0x3000000000000004;
      goto LABEL_25;
    case 8uLL:
      v6 |= 0x4000000000000000uLL;
      break;
    case 9uLL:
      v9 = 0x4000000000000004;
      goto LABEL_25;
    case 0xAuLL:
      v9 = 0x5000000000000000;
      goto LABEL_25;
    case 0xBuLL:
      v9 = 0x5000000000000004;
      goto LABEL_25;
    case 0xCuLL:
      v6 |= 0x6000000000000000uLL;
      break;
    case 0xDuLL:
      v9 = 0x6000000000000004;
      goto LABEL_25;
    case 0xEuLL:
      v6 |= 0x7000000000000000uLL;
      break;
    case 0xFuLL:
      v9 = 0x7000000000000004;
      goto LABEL_25;
    case 0x10uLL:
      v6 |= 0x8000000000000000;
      break;
    case 0x11uLL:
      v9 = 0x8000000000000004;
      goto LABEL_25;
    case 0x12uLL:
      v9 = 0x9000000000000000;
      goto LABEL_25;
    case 0x13uLL:
      v9 = 0x9000000000000004;
      goto LABEL_25;
    case 0x14uLL:
      v9 = 0xA000000000000000;
      goto LABEL_25;
    case 0x15uLL:
      v9 = 0xA000000000000004;
      goto LABEL_25;
    case 0x16uLL:
      v9 = 0xB000000000000000;
      goto LABEL_25;
    case 0x17uLL:
      v9 = 0xB000000000000004;
LABEL_25:
      v6 |= v9;
      break;
    default:
      break;
  }

  *a3 = v6;
  return result;
}

void *sub_1D6F6103C()
{
  sub_1D5D27F28(0, &qword_1EC898B00, type metadata accessor for FormatScopedOption);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v106 = &v101 - v3;
  v4 = type metadata accessor for FormatOption(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v102 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v105 = (&v101 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v112 = (&v101 - v12);
  v107 = type metadata accessor for FormatScopedOption(0);
  v13 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v14);
  v103 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v101 = &v101 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v101 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v111 = (&v101 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v101 - v28;
  v104 = v0;
  swift_beginAccess();

  v31 = sub_1D6F60B58(v30);

  v32 = v31;
  v33 = *(v31 + 16);
  v113 = v13;
  v110 = v33;
  if (v33)
  {
    v34 = 0;
    v109 = v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v35 = MEMORY[0x1E69E7CC8];
    v108 = v32;
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
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
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v36 = *(v13 + 72);
      sub_1D5D25664(v109 + v36 * v34, v29, type metadata accessor for FormatScopedOption);
      v37 = v111;
      sub_1D5D25664(v29, v111, type metadata accessor for FormatScopedOption);
      v38 = v112;
      sub_1D5D5E67C(v37, v112, type metadata accessor for FormatOption);
      v39 = *v38;
      v40 = v38[1];

      sub_1D5D2572C(v38, type metadata accessor for FormatOption);
      v41 = v29;
      v42 = v29;
      v43 = v22;
      sub_1D5D25664(v42, v22, type metadata accessor for FormatScopedOption);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v35;
      v46 = sub_1D5B69D90(v39, v40);
      v47 = v35[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_47;
      }

      v50 = v45;
      if (v35[3] >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D7F37C();
          if (v50)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D684C0(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_1D5B69D90(v39, v40);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_52;
        }

        v46 = v51;
        if (v50)
        {
LABEL_3:

          v35 = v114;
          v22 = v43;
          sub_1D6F6336C(v43, v114[7] + v46 * v36);
          v29 = v41;
          sub_1D5D2572C(v41, type metadata accessor for FormatScopedOption);
          goto LABEL_4;
        }
      }

      v35 = v114;
      v114[(v46 >> 6) + 8] |= 1 << v46;
      v53 = (v35[6] + 16 * v46);
      *v53 = v39;
      v53[1] = v40;
      v22 = v43;
      sub_1D5D5E67C(v43, v35[7] + v46 * v36, type metadata accessor for FormatScopedOption);
      v29 = v41;
      sub_1D5D2572C(v41, type metadata accessor for FormatScopedOption);
      v54 = v35[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_48;
      }

      v35[2] = v56;
LABEL_4:
      ++v34;
      v13 = v113;
      v32 = v108;
      if (v110 == v34)
      {
        goto LABEL_18;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC8];
LABEL_18:

  v57 = v104;
  swift_beginAccess();
  v58 = *(v57 + 24);
  v61 = *(v58 + 64);
  v60 = v58 + 64;
  v59 = v61;
  v62 = 1 << *(*(v57 + 24) + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v59;
  v65 = (v62 + 63) >> 6;
  v112 = (v13 + 56);

  v66 = 0;
  while (1)
  {
    v67 = v66;
    if (!v64)
    {
      break;
    }

LABEL_25:
    v64 &= v64 - 1;
    v68 = swift_projectBox();
    v69 = v105;
    sub_1D5D25664(v68, v105, type metadata accessor for FormatOption);
    v71 = *v69;
    v70 = v69[1];

    sub_1D5D2572C(v69, type metadata accessor for FormatOption);
    if (v35[2])
    {
      v72 = sub_1D5B69D90(v71, v70);
      v74 = v73;

      if (v74)
      {
        v13 = v113;
        v75 = v35[7] + *(v113 + 72) * v72;
        v76 = v106;
        sub_1D5D25664(v75, v106, type metadata accessor for FormatScopedOption);
        (*(v13 + 56))(v76, 0, 1, v107);
        sub_1D5D283C4(v76, &qword_1EC898B00, type metadata accessor for FormatScopedOption);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v77 = v106;
    (*v112)(v106, 1, 1, v107);
    v111 = type metadata accessor for FormatScopedOption;
    sub_1D5D283C4(v77, &qword_1EC898B00, type metadata accessor for FormatScopedOption);
    v78 = v102;
    sub_1D5D25108(v102);
    v79 = *v78;
    v80 = *(v78 + 8);

    sub_1D5D2572C(v78, type metadata accessor for FormatOption);
    v81 = v101;
    sub_1D5D25108(v101);
    swift_storeEnumTagMultiPayload();
    sub_1D5D5E67C(v81, v103, v111);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v35;
    v111 = v79;
    v83 = sub_1D5B69D90(v79, v80);
    v85 = v35[2];
    v86 = (v84 & 1) == 0;
    v55 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (v55)
    {
      goto LABEL_50;
    }

    v88 = v84;
    if (v35[3] >= v87)
    {
      if (v82)
      {
        goto LABEL_35;
      }

      v91 = v83;
      sub_1D6D7F37C();
      v83 = v91;
      v13 = v113;
      if (v88)
      {
        goto LABEL_36;
      }

LABEL_38:
      v35 = v114;
      v114[(v83 >> 6) + 8] |= 1 << v83;
      v92 = (v35[6] + 16 * v83);
      *v92 = v111;
      v92[1] = v80;
      sub_1D5D5E67C(v103, v35[7] + *(v13 + 72) * v83, type metadata accessor for FormatScopedOption);

      v93 = v35[2];
      v55 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v55)
      {
        goto LABEL_51;
      }

      v35[2] = v94;
    }

    else
    {
      sub_1D6D684C0(v87, v82);
      v83 = sub_1D5B69D90(v111, v80);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_52;
      }

LABEL_35:
      v13 = v113;
      if ((v88 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      v90 = v83;

      v35 = v114;
      sub_1D6F6336C(v103, v114[7] + *(v13 + 72) * v90);
LABEL_28:
    }
  }

  while (1)
  {
    v66 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v66 >= v65)
    {
      break;
    }

    v64 = *(v60 + 8 * v66);
    ++v67;
    if (v64)
    {
      goto LABEL_25;
    }
  }

  v95 = v35[2];
  if (v95)
  {
    v96 = sub_1D5E23F00(v35[2], 0);
    sub_1D5E257E8(&v114, v96 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v95, v35);
    v98 = v97;
    v99 = v114;

    sub_1D5B87E38(v99);
    if (v98 != v95)
    {
      goto LABEL_49;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v96;
}

uint64_t sub_1D6F619D8(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1 + 3;
  v92 = v2;
  v91 = v5;
  v94 = type metadata accessor for FormatOption(0);
  MEMORY[0x1EEE9AC00](v94, v6);
  v93 = (&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v96 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v95 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v88 - v22);
  swift_beginAccess();
  v24 = *(a1 + 16);
  if (!v24)
  {
    return 0;
  }

  v25 = *v4;
  v102 = a1 + 32;

  LODWORD(v97) = 0;
  v26 = 0;
  v101 = v24;
  v98 = v23;
LABEL_5:
  v103 = v25;
  do
  {
    if (v26 >= v24)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (__OFADD__(v26, 1))
    {
      goto LABEL_43;
    }

    v28 = *(v102 + 8 * v26);
    sub_1D5D25108(v23);
    v30 = *v23;
    v29 = v23[1];

    sub_1D5D2572C(v23, type metadata accessor for FormatOption);
    v31 = v25[2];
    v104 = v26 + 1;
    if (!v31)
    {

LABEL_24:
      v105 = v28;
      type metadata accessor for FormatOptionElement();
      swift_allocObject();

      v68 = sub_1D5D257B0(&v105);
      goto LABEL_27;
    }

    v32 = sub_1D5B69D90(v30, v29);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      goto LABEL_24;
    }

    v35 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
    if (v35 > 0x12)
    {
      v36 = 10;
    }

    else
    {
      v36 = qword_1D7377940[v35];
    }

    v37 = *(*(v25[7] + 8 * v32) + 16);
    v38 = (v37 >> 59) & 0x1E | (v37 >> 2) & 1;
    if (v38 > 0x12 || qword_1D7377940[v38] >= v36)
    {
      v54 = v95;
      sub_1D5D25108(v95);
      v55 = *(v54 + 16);

      sub_1D5D2572C(v54, type metadata accessor for FormatOption);
      v56 = v96;
      sub_1D5D25108(v96);
      v57 = *(v56 + 16);

      sub_1D5D2572C(v56, type metadata accessor for FormatOption);
      if (v57 >> 60 == 5 && (v55 & 0xF000000000000000) == 0x1000000000000000)
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v97 = *((v57 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v89 = *((v57 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v90 = v58;
        v59 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v88 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v60 = v93;
        sub_1D5D25108(v93);
        v61 = *v60;
        v62 = v60[1];

        sub_1D5D2572C(v60, type metadata accessor for FormatOption);
        v63 = swift_allocObject();
        v64 = v89;
        *(v63 + 16) = v88;
        *(v63 + 24) = v59;
        v65 = v90;
        *(v63 + 32) = v64;
        *(v63 + 40) = v65;
        *(v63 + 48) = v97;
        *v23 = v61;
        v23[1] = v62;
        v23[2] = v63 | 0x1000000000000000;
        v23[3] = 1;
        v66 = *(v94 + 28);
        v67 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v67 - 8) + 56))(v23 + v66, 1, 1, v67);
        sub_1D6F60ECC(v23, v28, &v105);

        sub_1D5D2572C(v23, type metadata accessor for FormatOption);

LABEL_22:

        type metadata accessor for FormatOptionElement();
        swift_allocObject();
      }

      else
      {

        v105 = v28;
        type metadata accessor for FormatOptionElement();
        swift_allocObject();
      }

      v68 = sub_1D5D257B0(&v105);

      v24 = v101;
      v25 = v103;
LABEL_27:
      sub_1D5D25108(v23);
      v70 = *v23;
      v69 = v23[1];

      sub_1D5D2572C(v23, type metadata accessor for FormatOption);

      v71 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v71;
      v73 = sub_1D5B69D90(v70, v69);
      v75 = *(v71 + 16);
      v76 = (v74 & 1) == 0;
      v77 = __OFADD__(v75, v76);
      v78 = v75 + v76;
      if (!v77)
      {
        v79 = v74;
        if (*(v71 + 24) >= v78)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = v73;
            sub_1D6D7D3D0();
            v73 = v84;
            v24 = v101;
            if ((v79 & 1) == 0)
            {
LABEL_33:
              v25 = v105;
              v105[(v73 >> 6) + 8] |= 1 << v73;
              v81 = (v25[6] + 16 * v73);
              *v81 = v70;
              v81[1] = v69;
              *(v25[7] + 8 * v73) = v68;

              v82 = v25[2];
              v77 = __OFADD__(v82, 1);
              v83 = v82 + 1;
              if (!v77)
              {
                v25[2] = v83;
LABEL_4:
                LODWORD(v97) = 1;
                v26 = v104;
                if (v104 != v24)
                {
                  goto LABEL_5;
                }

                goto LABEL_38;
              }

LABEL_45:
              __break(1u);
LABEL_46:
              result = sub_1D726493C();
              __break(1u);
              return result;
            }

LABEL_3:
            v27 = v73;

            v25 = v105;
            *(v105[7] + 8 * v27) = v68;

            goto LABEL_4;
          }
        }

        else
        {
          sub_1D5D25F98(v78, isUniquelyReferenced_nonNull_native);
          v73 = sub_1D5B69D90(v70, v69);
          if ((v79 & 1) != (v80 & 1))
          {
            goto LABEL_46;
          }
        }

        if ((v79 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_3;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v39 = v99;
    sub_1D5D25108(v99);
    v40 = *(v39 + 16);
    v41 = v40 & 0xFFFFFFFFFFFFFFFLL;

    sub_1D5D2572C(v39, type metadata accessor for FormatOption);
    v42 = v100;
    sub_1D5D25108(v100);
    v43 = *(v42 + 16);

    sub_1D5D2572C(v42, type metadata accessor for FormatOption);
    if (v43 >> 60 == 5 && (v40 & 0xF000000000000000) == 0x1000000000000000)
    {
      v45 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v44 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v89 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v90 = v44;
      v46 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v88 = *(v41 + 16);
      v47 = v93;
      sub_1D5D25108(v93);
      v48 = *v47;
      v49 = v47[1];

      v97 = type metadata accessor for FormatOption;
      sub_1D5D2572C(v47, type metadata accessor for FormatOption);
      v50 = swift_allocObject();
      v51 = v89;
      *(v50 + 16) = v88;
      *(v50 + 24) = v46;
      *(v50 + 32) = v51;
      *(v50 + 40) = v45;
      *(v50 + 48) = v90;
      v23 = v98;
      *v98 = v48;
      v23[1] = v49;
      v23[2] = v50 | 0x1000000000000000;
      v23[3] = 1;
      v52 = *(v94 + 28);
      v53 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v53 - 8) + 56))(v23 + v52, 1, 1, v53);
      sub_1D6F60ECC(v23, v37, &v105);

      sub_1D5D2572C(v23, v97);

      goto LABEL_22;
    }

    ++v26;
    v24 = v101;
    v25 = v103;
    v23 = v98;
  }

  while (v104 != v101);
  if (v97)
  {
LABEL_38:
    v85 = v92[2];
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v25;

    return v86;
  }

  return 0;
}

void sub_1D6F622E0(uint64_t a1)
{
  sub_1D5D27F28(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v29 = &v27 - v5;
  v28 = type metadata accessor for FormatOption(0);
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 16);
  v10 = sub_1D5EDE4F8(a1);
  v31 = a1;
  v32 = v10;

  sub_1D5B886D0(v10);
  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v6 + 56);
  v30 = *(v1 + 24);

  v18 = 0;
  while (v15)
  {
LABEL_10:
    while (1)
    {
      v15 &= v15 - 1;
      sub_1D5D25108(v9);
      v23 = *v9;
      v22 = v9[1];

      sub_1D5D2572C(v9, type metadata accessor for FormatOption);
      v24 = v27;
      swift_beginAccess();
      if (*(*(v24 + 16) + 16))
      {
        sub_1D5B69D90(v23, v22);
        if (v25)
        {
          break;
        }
      }

      swift_endAccess();

      v19 = v29;
      (*v17)(v29, 1, 1, v28);
      sub_1D5D283C4(v19, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v20 = sub_1D70EED8C(v31);
      sub_1D5B87D50(v20);
      sub_1D5B87D50(v20);

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();

    v26 = v29;
    sub_1D5D25108(v29);

    (*v17)(v26, 0, 1, v28);
    sub_1D5D283C4(v26, &qword_1EDF337F0, type metadata accessor for FormatOption);
  }

LABEL_6:
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v21);
    ++v18;
    if (v15)
    {
      v18 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D6F62694()
{
  if (*v0)
  {
    return 7364973;
  }

  else
  {
    return 0x656C626169726176;
  }
}

void sub_1D6F626CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C626169726176 && a2 == 0xE900000000000073;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7364973 && a2 == 0xE300000000000000)
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

uint64_t sub_1D6F627B0(uint64_t a1)
{
  v2 = sub_1D6F63114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F627EC(uint64_t a1)
{
  v2 = sub_1D6F63114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionCollection.deinit()
{

  return v0;
}

uint64_t FormatOptionCollection.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6F63168(0, &qword_1EC898AC0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F63114();
  sub_1D7264B5C();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  type metadata accessor for FormatVariableCollection();
  sub_1D6F631CC(&qword_1EC898AD0, type metadata accessor for FormatVariableCollection, &protocol conformance descriptor for FormatVariableCollection);
  sub_1D726443C();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[15] = 1;
    sub_1D5EDE950(0);
    sub_1D5EDE9B8();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatOptionCollection.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatOptionCollection.init(from:)(a1);
  return v2;
}

void *FormatOptionCollection.init(from:)(void *a1)
{
  sub_1D6F63168(0, &qword_1EC898AD8, MEMORY[0x1E69E6F48]);
  v12 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F63114();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    type metadata accessor for FormatVariableCollection();
    v13 = 0;
    sub_1D6F631CC(&qword_1EC898AE0, type metadata accessor for FormatVariableCollection, &protocol conformance descriptor for FormatVariableCollection);
    v10 = v12;
    sub_1D726431C();
    *(v1 + 16) = v14;
    sub_1D5EDE950(0);
    v13 = 1;
    sub_1D5EDECF4();
    sub_1D726431C();
    (*(v9 + 8))(v8, v10);
    *(v1 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_1D6F62D2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatOptionCollection.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1D6F62DA8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D5D27F28(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  FormatOptionCollection.subscript.getter(a1, a2, &v33 - v9);
  v11 = type metadata accessor for FormatOption(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_1D5D283C4(v10, &qword_1EDF337F0, type metadata accessor for FormatOption);
    goto LABEL_5;
  }

  v12 = *(v10 + 3);
  sub_1D5B71354(v12);
  sub_1D5D2572C(v10, type metadata accessor for FormatOption);
  if (!v12)
  {
    return;
  }

  if (v12 == 1)
  {
LABEL_5:
    v36[0] = a1;
    v36[1] = a2;
    v36[9] = 0x797274656D6F6567;
    v36[10] = 0xE800000000000000;
    sub_1D5BF4D9C();
    sub_1D7263ABC();
    return;
  }

  v33 = v3;
  v34 = v12;
  v13 = 0;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;
  v35 = a3;
  if (!v17)
  {
    goto LABEL_14;
  }

  do
  {
    while (1)
    {
LABEL_18:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(v12 + 48) + ((v13 << 10) | (16 * v22)));
      v25 = *v23;
      v24 = v23[1];
      v26 = *a3;
      if (!*(v26 + 16))
      {

        goto LABEL_12;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v27 = sub_1D7264A5C();
      v28 = -1 << *(v26 + 32);
      v29 = v27 & ~v28;
      if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        break;
      }

LABEL_12:

      a3 = v35;
      sub_1D5B860D0(v36, v25, v24);

      sub_1D6F62DA8(v25, v24, a3);
      v20 = v19;

      v12 = v34;
      if (v20)
      {

        return;
      }

      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v30 = ~v28;
    while (1)
    {
      v31 = (*(v26 + 48) + 16 * v29);
      v32 = *v31 == v25 && v31[1] == v24;
      if (v32 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = v34;
    a3 = v35;
  }

  while (v17);
LABEL_14:
  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v21);
    ++v13;
    if (v17)
    {
      v13 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
}

unint64_t sub_1D6F63114()
{
  result = qword_1EC898AC8;
  if (!qword_1EC898AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AC8);
  }

  return result;
}

void sub_1D6F63168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F63114();
    v7 = a3(a1, &type metadata for FormatOptionCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6F631CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6F63268()
{
  result = qword_1EC898AE8;
  if (!qword_1EC898AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AE8);
  }

  return result;
}

unint64_t sub_1D6F632C0()
{
  result = qword_1EC898AF0;
  if (!qword_1EC898AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AF0);
  }

  return result;
}

unint64_t sub_1D6F63318()
{
  result = qword_1EC898AF8;
  if (!qword_1EC898AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898AF8);
  }

  return result;
}

uint64_t sub_1D6F6336C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatScopedOption(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6F63428(uint64_t a1)
{
  result = sub_1D6F63450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F63450()
{
  result = qword_1EC898B08;
  if (!qword_1EC898B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B08);
  }

  return result;
}

unint64_t sub_1D6F634A4(void *a1)
{
  a1[1] = sub_1D61A7028();
  a1[2] = sub_1D61A70EC();
  result = sub_1D6F634DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F634DC()
{
  result = qword_1EC898B10;
  if (!qword_1EC898B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B10);
  }

  return result;
}

uint64_t sub_1D6F63570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1D725C7FC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D725C60C();
  v32 = *(v36 - 8);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v36, v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D72585BC();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v30 = sub_1D725C85C();
  v16 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v17);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1D725C86C();
  v20 = [a1 contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  sub_1D725848C();
  v21 = sub_1D725852C();
  v23 = v22;
  v24 = *(v8 + 8);
  v25 = v11;
  v26 = v31;
  v24(v25, v31);
  v24(v15, v26);
  *v19 = v21;
  v19[1] = v23;
  (*(v16 + 104))(v19, *MEMORY[0x1E69D6280], v30);
  v27 = MEMORY[0x1E69D61D0];
  sub_1D5B48894(0, &qword_1EDF023B0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  sub_1D725C5FC();
  v41 = v28;
  sub_1D5B64928(&qword_1EDF174D0, MEMORY[0x1E69D61D0], MEMORY[0x1E69D61E0]);
  sub_1D5B48894(0, &qword_1EDF05340, v27, MEMORY[0x1E69E62F8]);
  sub_1D5B64970(&qword_1EDF05338, &qword_1EDF05340, v27);
  sub_1D7263B6C();
  (*(v38 + 104))(v37, *MEMORY[0x1E69D6268], v39);
  result = sub_1D725C80C();
  *v40 = result;
  return result;
}

uint64_t sub_1D6F63A04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1D725C7FC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D725C60C();
  v32 = *(v36 - 8);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v36, v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D72585BC();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v30 = sub_1D725C85C();
  v16 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v17);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1D725C86C();
  v20 = [a1 contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  sub_1D725848C();
  v21 = sub_1D725852C();
  v23 = v22;
  v24 = *(v8 + 8);
  v25 = v11;
  v26 = v31;
  v24(v25, v31);
  v24(v15, v26);
  *v19 = v21;
  v19[1] = v23;
  (*(v16 + 104))(v19, *MEMORY[0x1E69D6280], v30);
  v27 = MEMORY[0x1E69D61D0];
  sub_1D5B48894(0, &qword_1EDF023B0, MEMORY[0x1E69D61D0], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  sub_1D725C5FC();
  v41 = v28;
  sub_1D5B64928(&qword_1EDF174D0, MEMORY[0x1E69D61D0], MEMORY[0x1E69D61E0]);
  sub_1D5B48894(0, &qword_1EDF05340, v27, MEMORY[0x1E69E62F8]);
  sub_1D5B64970(&qword_1EDF05338, &qword_1EDF05340, v27);
  sub_1D7263B6C();
  (*(v38 + 104))(v37, *MEMORY[0x1E69D6268], v39);
  result = sub_1D725C80C();
  *v40 = result;
  return result;
}

uint64_t DispatchQoS.QoSClass.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7261ACC();
  v5 = *(*(v4 - 8) + 104);
  if (a1 <= 16)
  {
    if (a1 == 9)
    {
      v6 = MEMORY[0x1E69E7F80];
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  switch(a1)
  {
    case 17:
      v6 = MEMORY[0x1E69E7FA0];
      break;
    case 25:
      v6 = MEMORY[0x1E69E7F88];
      break;
    case 33:
      v6 = MEMORY[0x1E69E7F90];
      break;
    default:
LABEL_8:
      v6 = MEMORY[0x1E69E7F98];
      break;
  }

LABEL_11:
  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1D6F63FC8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E63B0];
  if (v1[1])
  {
    sub_1D607E0F0(0x74615265766C6F73, 0xE900000000000065, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v4 = *v1;
    v34 = MEMORY[0x1E69E63B0];
    *&v33 = v4;
    sub_1D5B7C390(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x74615265766C6F73, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v35 = v2;
  }

  v6 = MEMORY[0x1E69E6530];
  if (v1[3])
  {
    sub_1D607E0F0(0x6C6F536C61746F74, 0xEB00000000646576, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v7 = v1[2];
    v34 = MEMORY[0x1E69E6530];
    *&v33 = v7;
    sub_1D5B7C390(&v33, v32);
    v8 = v35;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x6C6F536C61746F74, 0xEB00000000646576, v9);
    v35 = v8;
  }

  if (v1[5])
  {
    sub_1D607E0F0(0x5374636566726570, 0xED00006465766C6FLL, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v10 = v1[4];
    v34 = v6;
    *&v33 = v10;
    sub_1D5B7C390(&v33, v32);
    v11 = v35;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x5374636566726570, 0xED00006465766C6FLL, v12);
    v35 = v11;
  }

  if (v1[7])
  {
    sub_1D607E0F0(0x5474736574736166, 0xEB00000000656D69, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v13 = v1[6];
    v34 = v6;
    *&v33 = v13;
    sub_1D5B7C390(&v33, v32);
    v14 = v35;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x5474736574736166, 0xEB00000000656D69, v15);
    v35 = v14;
  }

  if (v1[9])
  {
    sub_1D607E0F0(0x5465676172657661, 0xEB00000000656D69, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v16 = v1[8];
    v34 = v3;
    *&v33 = v16;
    sub_1D5B7C390(&v33, v32);
    v17 = v35;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x5465676172657661, 0xEB00000000656D69, v18);
    v35 = v17;
  }

  if (v1[11])
  {
    sub_1D607E0F0(0x53747365676E6F6CLL, 0xED00006B61657274, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v19 = v1[10];
    v34 = v6;
    *&v33 = v19;
    sub_1D5B7C390(&v33, v32);
    v20 = v35;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x53747365676E6F6CLL, 0xED00006B61657274, v21);
    v35 = v20;
  }

  if (v1[13])
  {
    sub_1D607E0F0(0x53746E6572727563, 0xED00006B61657274, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v22 = v1[12];
    v34 = v6;
    *&v33 = v22;
    sub_1D5B7C390(&v33, v32);
    v23 = v35;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x53746E6572727563, 0xED00006B61657274, v24);
    v35 = v23;
  }

  if (v1[15])
  {
    sub_1D607E0F0(0x5374736568676968, 0xEC00000065726F63, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
  }

  else
  {
    v25 = v1[14];
    v34 = v6;
    *&v33 = v25;
    sub_1D5B7C390(&v33, v32);
    v26 = v35;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x5374736568676968, 0xEC00000065726F63, v27);
    v35 = v26;
  }

  if (v1[17])
  {
    sub_1D607E0F0(0x5365676172657661, 0xEC00000065726F63, &v33);
    sub_1D5CEB200(&v33, sub_1D5BE1404);
    return v35;
  }

  else
  {
    v29 = v1[16];
    v34 = v3;
    *&v33 = v29;
    sub_1D5B7C390(&v33, v32);
    v30 = v35;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v32, 0x5365676172657661, 0xEC00000065726F63, v31);
    return v30;
  }
}

uint64_t PuzzleStatsInfo.init(statistics:)(uint64_t a1)
{
  v2 = v1;
  v101 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v101, v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60441D0(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v99 = &v76 - v21;
  v100 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v100, v22);
  v103 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v102 = &v76 - v26;
  v104 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v104, v27);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v76 - v32;
  v34 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v39 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v40 = a1;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v41 = *(v40 + 16);
  if (!v41)
  {

    v98 = 0;
    v42 = 0;
    v65 = 0;
    v66 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 1;
    v67 = 1;
    v73 = 1;
    v74 = 1;
    v68 = 1;
    v69 = 1;
    v70 = 1;
    v71 = 1;
    v72 = 1;
    goto LABEL_36;
  }

  v76 = v18;
  v77 = v14;
  v78 = v10;
  v80 = v2;
  v98 = 0;
  v42 = 0;
  v91 = 0;
  v90 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v43 = *(v36 + 20);
  v44 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v79 = v40;
  v45 = v40 + v44;
  v46 = *(v37 + 72);
  v92 = 1;
  v89 = 1;
  v83 = 1;
  v82 = 1;
  v88 = 1;
  v87 = 1;
  v86 = 1;
  v85 = 1;
  v84 = 1;
  do
  {
    sub_1D6F66188(v45, v39, type metadata accessor for PuzzleStatistic);
    sub_1D6F66188(&v39[v43], v33, type metadata accessor for PuzzleStatisticCategory);
    sub_1D5CEB200(v39, type metadata accessor for PuzzleStatistic);
    sub_1D6F66188(v33, v29, type metadata accessor for PuzzleStatisticCategory);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
      v47 = v29;
LABEL_7:
      sub_1D5CEB200(v47, type metadata accessor for PuzzleStatisticCategory);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D6F66120(v29, v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      sub_1D6F654B0(&v109, v6, 0);
      v52 = v101;
      sub_1D6F654B0(&v109, &v6[*(v101 + 20)], 1);
      sub_1D6F654B0(&v109, &v6[*(v52 + 24)], 2);
      sub_1D5CEB200(v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v47 = v33;
      goto LABEL_7;
    }

    v49 = v102;
    sub_1D6F66120(v29, v102, type metadata accessor for PuzzleStatisticValue);
    sub_1D6F66188(v49, v103, type metadata accessor for PuzzleStatisticValue);
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 <= 3)
    {
      if (v50 > 1)
      {
        if (v50 == 2)
        {
          sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
          sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
          v86 = 0;
          v95 = *v103;
        }

        else
        {
          sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
          sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
          v96 = *v103;
          v87 = *(v103 + 8);
        }
      }

      else if (v50)
      {
        sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
        sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
        v85 = 0;
        v94 = *v103;
      }

      else
      {
        sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
        sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
        v93 = *v103;
        v84 = *(v103 + 8);
      }
    }

    else
    {
      v51 = v99;
      if (v50 <= 5)
      {
        if (v50 == 4)
        {
          sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
          sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
          v97 = *v103;
          v88 = *(v103 + 8);
        }

        else
        {
          sub_1D6F66120(v103, v99, sub_1D60441D0);
          v56 = v51;
          v57 = v76;
          sub_1D6F66188(v56, v76, sub_1D60441D0);
          v58 = type metadata accessor for PuzzleStreak(0);
          if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
          {
            v81 = v42;
            sub_1D5CEB200(v99, sub_1D60441D0);
            sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
            sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
            v42 = v81;
            sub_1D5CEB200(v57, sub_1D60441D0);
            v90 = 0;
            v82 = 1;
          }

          else
          {
            v90 = PuzzleStreak.days.getter();
            sub_1D5CEB200(v99, sub_1D60441D0);
            sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
            sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
            sub_1D5CEB200(v57, type metadata accessor for PuzzleStreak);
            v82 = 0;
          }
        }
      }

      else if (v50 == 6)
      {
        v81 = v42;
        v53 = v77;
        sub_1D6F66120(v103, v77, sub_1D60441D0);
        v54 = v78;
        sub_1D6F66188(v53, v78, sub_1D60441D0);
        v55 = type metadata accessor for PuzzleStreak(0);
        if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
        {
          sub_1D5CEB200(v53, sub_1D60441D0);
          sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
          sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
          sub_1D5CEB200(v54, sub_1D60441D0);
          v91 = 0;
          v83 = 1;
        }

        else
        {
          v91 = PuzzleStreak.days.getter();
          sub_1D5CEB200(v53, sub_1D60441D0);
          sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
          sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
          sub_1D5CEB200(v54, type metadata accessor for PuzzleStreak);
          v83 = 0;
        }

        v42 = v81;
      }

      else if (v50 == 7)
      {
        sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
        sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
        v42 = *v103;
        v89 = *(v103 + 8);
      }

      else
      {
        sub_1D5CEB200(v102, type metadata accessor for PuzzleStatisticValue);
        sub_1D5CEB200(v33, type metadata accessor for PuzzleStatisticCategory);
        v98 = *v103;
        v92 = *(v103 + 8);
      }
    }

LABEL_8:
    v45 += v46;
    --v41;
  }

  while (v41);

  v2 = v80;
  v60 = v96;
  v59 = v97;
  v62 = v94;
  v61 = v95;
  v63 = v93;
  v64 = v92;
  v65 = v91;
  v66 = v90;
  v67 = v89;
  v68 = v88;
  v69 = v87;
  v70 = v86;
  v71 = v85;
  v72 = v84;
  v73 = v83;
  v74 = v82;
LABEL_36:
  v108 = v74 & 1;
  v107 = v73 & 1;
  v106 = v67 & 1;
  v105 = v64 & 1;
  *(v2 + 16) = v63;
  *(v2 + 24) = v72 & 1;
  *(v2 + 32) = v62;
  *(v2 + 40) = v71 & 1;
  *(v2 + 48) = v61;
  *(v2 + 56) = v70 & 1;
  *(v2 + 64) = v60;
  *(v2 + 72) = v69 & 1;
  *(v2 + 80) = v59;
  *(v2 + 88) = v68 & 1;
  *(v2 + 96) = v66;
  *(v2 + 104) = v108;
  *(v2 + 112) = v65;
  *(v2 + 120) = v107;
  *(v2 + 128) = v42;
  *(v2 + 136) = v106;
  *(v2 + 144) = v98;
  *(v2 + 152) = v105;
  *(v2 + 160) = v109;
  return v2;
}