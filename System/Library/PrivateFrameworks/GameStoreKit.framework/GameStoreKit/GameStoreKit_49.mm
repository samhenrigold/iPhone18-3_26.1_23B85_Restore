uint64_t sub_24EAF1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9ViewModelVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EAF1C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9ViewModelVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for EditorialComponentOverlayView(uint64_t a1)
{
  result = qword_27F2280C8;
  if (!qword_27F2280C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAF1DE4(uint64_t a1)
{
  _s9ViewModelVMa(319);
  if (v1 <= 0x3F)
  {
    sub_24EAF1E74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EAF1E74(uint64_t a1)
{
  if (!qword_27F222B10)
  {
    sub_24F9234D8();
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F222B10);
    }
  }
}

uint64_t sub_24EAF1EE8@<X0>(uint64_t a1@<X8>)
{
  v277 = a1;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280D8, &qword_24F981110);
  MEMORY[0x28223BE20](v244);
  v245 = v193 - v2;
  v214 = sub_24F9241F8();
  v201 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v200 = v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280E0, &qword_24F981118);
  v203 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v202 = v193 - v4;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280E8, &unk_24F981120);
  MEMORY[0x28223BE20](v211);
  v213 = v193 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v6 - 8);
  v199 = v193 - v7;
  v233 = sub_24F9234F8();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v198 = v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_24F925038();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280F0, &qword_24F981130);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = v193 - v10;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280F8, &qword_24F981138);
  MEMORY[0x28223BE20](v210);
  v197 = v193 - v11;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228100, &qword_24F981140);
  MEMORY[0x28223BE20](v243);
  v212 = v193 - v12;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228108, &qword_24F981148);
  v254 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v242 = v193 - v13;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228110, &qword_24F981150);
  MEMORY[0x28223BE20](v266);
  v256 = v193 - v14;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228118, &qword_24F981158);
  MEMORY[0x28223BE20](v264);
  v265 = v193 - v15;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228120, &qword_24F981160);
  MEMORY[0x28223BE20](v273);
  v267 = v193 - v16;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228128, &qword_24F981168);
  MEMORY[0x28223BE20](v204);
  v206 = v193 - v17;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228130, &qword_24F981170);
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v205 = v193 - v18;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228138, &qword_24F981178);
  MEMORY[0x28223BE20](v263);
  v252 = v193 - v19;
  v221 = type metadata accessor for IconRowView(0);
  MEMORY[0x28223BE20](v221);
  v259 = v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228140, &qword_24F981180);
  MEMORY[0x28223BE20](v240);
  v227 = v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v230 = v193 - v23;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228148, &unk_24F981188);
  MEMORY[0x28223BE20](v238);
  v239 = v193 - v24;
  v217 = sub_24F927538();
  MEMORY[0x28223BE20](v217);
  v216 = v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v26 - 8);
  v234 = v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v235 = v193 - v29;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228150, &qword_24F981198);
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v222 = v193 - v30;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228158, &qword_24F9811A0);
  MEMORY[0x28223BE20](v220);
  v226 = v193 - v31;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228160, &qword_24F9811A8);
  MEMORY[0x28223BE20](v225);
  v228 = v193 - v32;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228168, &qword_24F9811B0);
  MEMORY[0x28223BE20](v237);
  v229 = v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v231 = v193 - v35;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228170, &unk_24F9811B8);
  v251 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v236 = v193 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0, &unk_24F94A2B0);
  MEMORY[0x28223BE20](v37 - 8);
  v258 = v193 - v38;
  v248 = type metadata accessor for IconRowViewModel(0);
  v257 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v219 = v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v39;
  MEMORY[0x28223BE20](v40);
  v246 = v193 - v41;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228178, &qword_24F9811C8);
  MEMORY[0x28223BE20](v262);
  v247 = v193 - v42;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228180, &qword_24F9811D0);
  MEMORY[0x28223BE20](v275);
  v276 = v193 - v43;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228188, &qword_24F9811D8);
  MEMORY[0x28223BE20](v269);
  v271 = v193 - v44;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228190, &qword_24F9811E0);
  MEMORY[0x28223BE20](v268);
  v260 = v193 - v45;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228198, &qword_24F9811E8);
  MEMORY[0x28223BE20](v270);
  v261 = v193 - v46;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281A0, &qword_24F9811F0);
  MEMORY[0x28223BE20](v274);
  v272 = v193 - v47;
  v241 = type metadata accessor for LockupContentView(0);
  MEMORY[0x28223BE20](v241);
  v49 = (v193 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281A8, &qword_24F9811F8);
  MEMORY[0x28223BE20](v50);
  v52 = v193 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281B0, &qword_24F981200);
  MEMORY[0x28223BE20](v53);
  v55 = v193 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281B8, &qword_24F981208);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v59 = v193 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281C0, &unk_24F981210);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = v193 - v63;
  v65 = v1;
  v66 = *v1;
  if (v66 <= 1)
  {
    v263 = v55;
    v264 = v50;
    v265 = v59;
    v266 = v53;
    v267 = v52;
    v104 = v258;
    v105 = v259;
    v193[1] = v61;
    if (v66)
    {
      v128 = _s9ViewModelVMa(0);
      sub_24E60169C(&v1[*(v128 + 24)], v104, &qword_27F218CB0, &unk_24F94A2B0);
      if ((*(v257 + 48))(v104, 1, v248) == 1)
      {
        sub_24E601704(v104, &qword_27F218CB0, &unk_24F94A2B0);
        v129 = 1;
        v130 = v261;
        v131 = v260;
        v82 = v247;
        v132 = v253;
        v133 = v251;
      }

      else
      {
        v138 = v246;
        sub_24EAF6038(v104, v246, type metadata accessor for IconRowViewModel);
        v139 = type metadata accessor for EditorialComponentOverlayView(0);
        if (v1[*(v139 + 20)] == 1)
        {
          v140 = v139;
          v141 = v1;
          v142 = sub_24F9232F8();
          (*(*(v142 - 8) + 56))(v235, 1, 1, v142);
          if (v1[*(v140 + 28)] == 1 && (v143 = *&v1[*(v128 + 32)]) != 0)
          {
            *(&v288 + 1) = type metadata accessor for Action(0);
            *&v289 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
            *&v287 = v143;
          }

          else
          {
            *&v289 = 0;
            v287 = 0u;
            v288 = 0u;
          }

          v130 = v261;
          v157 = v226;
          v131 = v260;
          v158 = v138;
          v159 = v219;
          sub_24EAF6384(v158, v219, type metadata accessor for IconRowViewModel);
          v160 = (*(v257 + 80) + 16) & ~*(v257 + 80);
          v161 = swift_allocObject();
          sub_24EAF6038(v159, v161 + v160, type metadata accessor for IconRowViewModel);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282C0, &qword_24F9812A0);
          sub_24EAF6230();
          v162 = v222;
          sub_24F921788();
          v163 = &v157[*(v220 + 36)];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8, &unk_24F96B940);
          sub_24F924308();
          *v163 = swift_getKeyPath();
          (*(v223 + 32))(v157, v162, v224);
          if (v141[*(v140 + 24)] == 1)
          {
            sub_24F927458();
          }

          v164 = sub_24F9238D8();
          v165 = v239;
          v166 = v231;
          KeyPath = swift_getKeyPath();
          *&v287 = v164;
          v168 = sub_24F9238D8();
          v169 = v157;
          v170 = v228;
          sub_24E6009C8(v169, v228, &qword_27F228158, &qword_24F9811A0);
          v171 = (v170 + *(v225 + 36));
          *v171 = KeyPath;
          v171[1] = v168;
          sub_24F927628();
          sub_24F9242E8();
          v172 = v229;
          sub_24E6009C8(v170, v229, &qword_27F228160, &qword_24F9811A8);
          v173 = (v172 + *(v237 + 36));
          v174 = v292;
          v173[4] = v291;
          v173[5] = v174;
          v173[6] = v293;
          v175 = v288;
          *v173 = v287;
          v173[1] = v175;
          v176 = v290;
          v173[2] = v289;
          v173[3] = v176;
          sub_24E6009C8(v172, v166, &qword_27F228168, &qword_24F9811B0);
          sub_24E60169C(v166, v165, &qword_27F228168, &qword_24F9811B0);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5480();
          sub_24EAF56CC(&qword_27F228228, &qword_27F228140, &qword_24F981180);
          v156 = v236;
          sub_24F924E28();
          sub_24E601704(v166, &qword_27F228168, &qword_24F9811B0);
          v82 = v247;
          v138 = v246;
        }

        else
        {
          sub_24EAF6384(v138, v105, type metadata accessor for IconRowViewModel);
          *&v287 = 0x4044000000000000;
          sub_24E66ED98();
          sub_24F9237C8();
          *&v287 = 0x4051800000000000;
          sub_24F9237C8();
          sub_24F927628();
          sub_24F9242E8();
          v150 = v227;
          sub_24EAF6038(v105, v227, type metadata accessor for IconRowView);
          v151 = (v150 + *(v240 + 36));
          v152 = v292;
          v151[4] = v291;
          v151[5] = v152;
          v151[6] = v293;
          v153 = v288;
          *v151 = v287;
          v151[1] = v153;
          v154 = v290;
          v151[2] = v289;
          v151[3] = v154;
          v155 = v230;
          sub_24E6009C8(v150, v230, &qword_27F228140, &qword_24F981180);
          sub_24E60169C(v155, v239, &qword_27F228140, &qword_24F981180);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5480();
          sub_24EAF56CC(&qword_27F228228, &qword_27F228140, &qword_24F981180);
          v156 = v236;
          sub_24F924E28();
          sub_24E601704(v155, &qword_27F228140, &qword_24F981180);
          v130 = v261;
          v82 = v247;
          v131 = v260;
        }

        sub_24EAF63EC(v138, type metadata accessor for IconRowViewModel);
        sub_24E6009C8(v156, v82, &qword_27F228170, &unk_24F9811B8);
        v129 = 0;
        v132 = v253;
        v133 = v251;
      }

      (*(v133 + 56))(v82, v129, 1, v132);
      v134 = &qword_27F228178;
      v135 = &qword_24F9811C8;
      sub_24E60169C(v82, v131, &qword_27F228178, &qword_24F9811C8);
      swift_storeEnumTagMultiPayload();
      sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
      sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &qword_24F9811C8, sub_24EAF53D4);
      sub_24F924E28();
      v136 = &qword_27F228198;
      v137 = &qword_24F9811E8;
      sub_24E60169C(v130, v271, &qword_27F228198, &qword_24F9811E8);
    }

    else
    {
      v106 = *(v1 + 1);
      if (v106)
      {
        v259 = v64;
        v107 = type metadata accessor for EditorialComponentOverlayView(0);
        v108 = v1[*(v107 + 20)] == 1;
        v258 = v56;
        if (v108)
        {
          LOBYTE(v278) = v1[*(v107 + 24)];
          *&v287 = v106;
          sub_24E66C990();

          v109 = v263;
          sub_24F921D38();
          v110 = (v109 + *(v266 + 36));
          v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
          v112 = *MEMORY[0x277CDF3C0];
          v113 = sub_24F9234D8();
          (*(*(v113 - 8) + 104))(v110 + v111, v112, v113);
          *v110 = swift_getKeyPath();
          sub_24E60169C(v109, v267, &qword_27F2281B0, &qword_24F981200);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5274();
          sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView, &unk_24FA0C744);
          v149 = v265;
          sub_24F924E28();

          sub_24E601704(v109, &qword_27F2281B0, &qword_24F981200);
        }

        else
        {
          *&v287 = 0x4044000000000000;
          sub_24E66ED98();
          swift_retain_n();
          sub_24F9237C8();
          *&v287 = 0x404B000000000000;
          sub_24F9237C8();
          *&v287 = 0x4051800000000000;
          sub_24F9237C8();
          *&v287 = 0x4055800000000000;
          sub_24F9237C8();
          type metadata accessor for LockupViewModel(0);
          sub_24EAF633C(&qword_27F2282E0, type metadata accessor for LockupViewModel, &unk_24F997C58);
          *v49 = sub_24F923C28();
          v49[1] = v148;
          sub_24EAF6384(v49, v267, type metadata accessor for LockupContentView);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5274();
          sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView, &unk_24FA0C744);
          v149 = v265;
          sub_24F924E28();

          sub_24EAF63EC(v49, type metadata accessor for LockupContentView);
        }

        v82 = v259;
        sub_24E6009C8(v149, v259, &qword_27F2281B8, &qword_24F981208);
        (*(v57 + 56))(v82, 0, 1, v258);
      }

      else
      {
        v82 = v64;
        (*(v57 + 56))(v64, 1, 1, v56, v62);
      }

      v130 = v261;
      v134 = &qword_27F2281C0;
      v135 = &unk_24F981210;
      sub_24E60169C(v82, v260, &qword_27F2281C0, &unk_24F981210);
      swift_storeEnumTagMultiPayload();
      sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
      sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &qword_24F9811C8, sub_24EAF53D4);
      sub_24F924E28();
      v136 = &qword_27F228198;
      v137 = &qword_24F9811E8;
      sub_24E60169C(v130, v271, &qword_27F228198, &qword_24F9811E8);
    }
  }

  else if (v66 == 2)
  {
    v114 = _s9ViewModelVMa(0);
    v115 = *&v1[*(v114 + 32)];
    if (v115 && (v116 = v114, v117 = type metadata accessor for EditorialComponentOverlayView(0), v65[*(v117 + 28)] == 1) && (v118 = &v65[*(v116 + 28)], (v119 = *(v118 + 1)) != 0))
    {
      v120 = *v118;
      v121 = v117;
      v122 = sub_24F9232F8();
      (*(*(v122 - 8) + 56))(v234, 1, 1, v122);
      *(&v288 + 1) = type metadata accessor for Action(0);
      *&v289 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
      *&v287 = v115;
      v123 = swift_allocObject();
      *(v123 + 16) = v120;
      *(v123 + 24) = v119;
      swift_retain_n();

      v124 = v206;
      sub_24F921788();
      v125 = (v124 + *(v204 + 36));
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118, &qword_24F950C70);
      (*(v232 + 104))(v125 + *(v126 + 28), *MEMORY[0x277CDF420], v233);
      *v125 = swift_getKeyPath();
      v82 = v252;
      if (v65[*(v121 + 24)] == 1)
      {
        sub_24F927458();
      }

      v177 = sub_24F9238D8();
      v178 = swift_getKeyPath();
      *&v287 = v177;

      v179 = sub_24F9238D8();

      v180 = v205;
      sub_24E6009C8(v124, v205, &qword_27F228128, &qword_24F981168);
      v181 = v250;
      v182 = (v180 + *(v250 + 36));
      *v182 = v178;
      v182[1] = v179;
      sub_24E6009C8(v180, v82, &qword_27F228130, &qword_24F981170);
      (*(v249 + 56))(v82, 0, 1, v181);
    }

    else
    {
      v82 = v252;
      (*(v249 + 56))(v252, 1, 1, v250);
    }

    v134 = &qword_27F228138;
    v135 = &qword_24F981178;
    sub_24E60169C(v82, v265, &qword_27F228138, &qword_24F981178);
    swift_storeEnumTagMultiPayload();
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &qword_24F981150, sub_24EAF59C0);
    v130 = v267;
    sub_24F924E28();
    v136 = &qword_27F228120;
    v137 = &qword_24F981160;
    sub_24E60169C(v130, v271, &qword_27F228120, &qword_24F981160);
  }

  else
  {
    if (v66 != 3)
    {
      swift_storeEnumTagMultiPayload();
      sub_24EAF5048();
      return sub_24F924E28();
    }

    v67 = _s9ViewModelVMa(0);
    v68 = &v1[*(v67 + 28)];
    v69 = *(v68 + 1);
    if (v69)
    {
      v70 = v67;
      v71 = *v68;
      v72 = sub_24F9249A8();
      *&v287 = v71;
      *(&v287 + 1) = v69;
      sub_24E600AEC();

      v73 = sub_24F925E18();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v80 = sub_24F926DF8();

      v77 &= 1u;
      sub_24E5FD138(v73, v75, v77);

      sub_24E600B40(v73, v75, v77);

      v286 = 0;
      v285 = v77;
      *&v287 = v72;
      *(&v287 + 1) = 0x4010000000000000;
      LOBYTE(v288) = 0;
      *(&v288 + 1) = v73;
      *&v289 = v75;
      BYTE8(v289) = v77;
      *&v290 = v79;
      *(&v290 + 1) = v80;
      LOBYTE(v291) = 0;
      v81 = *&v65[*(v70 + 32)];
      v82 = v256;
      if (v81 && (v83 = type metadata accessor for EditorialComponentOverlayView(0), v65[*(v83 + 28)] == 1))
      {
        v84 = v65[*(v83 + 20)];
        v85 = sub_24F9232F8();
        (*(*(v85 - 8) + 56))(v234, 1, 1, v85);
        v268 = v81;
        v283 = type metadata accessor for Action(0);
        v284 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
        v282 = v81;
        v86 = swift_allocObject();
        v87 = v290;
        *(v86 + 48) = v289;
        *(v86 + 64) = v87;
        *(v86 + 80) = v291;
        v88 = v288;
        *(v86 + 16) = v287;
        *(v86 + 32) = v88;
        swift_retain_n();
        sub_24E60169C(&v287, &v278, &qword_27F228298, &unk_24F981220);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298, &unk_24F981220);
        sub_24EAF5CE4();
        if (v84 == 1)
        {
          v89 = v207;
          sub_24F921788();
          v90 = v194;
          sub_24F925028();
          v91 = sub_24E602068(&qword_27F228280, &qword_27F2280F0, &qword_24F981130, MEMORY[0x277D7EB00]);
          sub_24EAF633C(&qword_27F228288, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
          v92 = v197;
          v93 = v209;
          v94 = v196;
          sub_24F926178();
          (*(v195 + 8))(v90, v94);
          (*(v208 + 8))(v89, v93);
          v95 = v232;
          v96 = v198;
          v97 = v233;
          (*(v232 + 104))(v198, *MEMORY[0x277CDF440], v233);
          v98 = sub_24F923E98();
          v99 = v199;
          (*(*(v98 - 8) + 56))(v199, 1, 1, v98);
          v100 = sub_24F5B3DA0(v96, v99);
          sub_24E601704(v99, &qword_27F2140C0, &qword_24F93C240);
          (*(v95 + 8))(v96, v97);
          v101 = v92 + *(v210 + 36);
          *v101 = -v100;
          *(v101 + 8) = 0;
          sub_24E60169C(v92, v213, &qword_27F2280F8, &qword_24F981138);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5B98();
          v102 = sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
          v278 = v93;
          v279 = v214;
          v280 = v91;
          v281 = v102;
          swift_getOpaqueTypeConformance2();
          v103 = v212;
          sub_24F924E28();
          sub_24E601704(v92, &qword_27F2280F8, &qword_24F981138);
        }

        else
        {
          v183 = v207;
          sub_24F921788();
          v184 = v200;
          sub_24F9241E8();
          v185 = sub_24E602068(&qword_27F228280, &qword_27F2280F0, &qword_24F981130, MEMORY[0x277D7EB00]);
          v186 = sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
          v187 = v202;
          v188 = v209;
          v189 = v214;
          sub_24F926178();
          (*(v201 + 8))(v184, v189);
          (*(v208 + 8))(v183, v188);
          v190 = v203;
          v191 = v215;
          (*(v203 + 16))(v213, v187, v215);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5B98();
          v278 = v188;
          v279 = v189;
          v280 = v185;
          v281 = v186;
          swift_getOpaqueTypeConformance2();
          v103 = v212;
          sub_24F924E28();
          (*(v190 + 8))(v187, v191);
        }

        sub_24E60169C(v103, v245, &qword_27F228100, &qword_24F981140);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298, &unk_24F981220);
        sub_24EAF5A4C();
        sub_24EAF5CE4();
        v147 = v242;
        sub_24F924E28();

        sub_24E601704(&v287, &qword_27F228298, &unk_24F981220);
        sub_24E601704(v103, &qword_27F228100, &qword_24F981140);
      }

      else
      {
        v144 = v290;
        v145 = v245;
        *(v245 + 32) = v289;
        *(v145 + 48) = v144;
        *(v145 + 64) = v291;
        v146 = v288;
        *v145 = v287;
        *(v145 + 16) = v146;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298, &unk_24F981220);
        sub_24EAF5A4C();
        sub_24EAF5CE4();
        v147 = v242;
        sub_24F924E28();
      }

      sub_24E6009C8(v147, v82, &qword_27F228108, &qword_24F981148);
      (*(v254 + 56))(v82, 0, 1, v255);
    }

    else
    {
      v82 = v256;
      (*(v254 + 56))(v256, 1, 1, v255);
    }

    v134 = &qword_27F228110;
    v135 = &qword_24F981150;
    sub_24E60169C(v82, v265, &qword_27F228110, &qword_24F981150);
    swift_storeEnumTagMultiPayload();
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &qword_24F981150, sub_24EAF59C0);
    v130 = v267;
    sub_24F924E28();
    v136 = &qword_27F228120;
    v137 = &qword_24F981160;
    sub_24E60169C(v130, v271, &qword_27F228120, &qword_24F981160);
  }

  swift_storeEnumTagMultiPayload();
  sub_24EAF50D4();
  sub_24EAF5774();
  v192 = v272;
  sub_24F924E28();
  sub_24E601704(v130, v136, v137);
  sub_24E60169C(v192, v276, &qword_27F2281A0, &qword_24F9811F0);
  swift_storeEnumTagMultiPayload();
  sub_24EAF5048();
  sub_24F924E28();
  sub_24E601704(v192, &qword_27F2281A0, &qword_24F9811F0);
  return sub_24E601704(v82, v134, v135);
}

uint64_t sub_24EAF4EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EAF6384(a1, a2, type metadata accessor for IconRowViewModel);
  type metadata accessor for IconRowView(0);
  sub_24E66ED98();
  sub_24F9237C8();
  sub_24F9237C8();
  v3 = sub_24F9257F8();
  sub_24F923318();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282D8, &qword_24F9812A8) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_24F925868();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282C0, &qword_24F9812A0);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

unint64_t sub_24EAF5048()
{
  result = qword_27F2281C8;
  if (!qword_27F2281C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281A0, &qword_24F9811F0);
    sub_24EAF50D4();
    sub_24EAF5774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281C8);
  }

  return result;
}

unint64_t sub_24EAF50D4()
{
  result = qword_27F2281D0;
  if (!qword_27F2281D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228198, &qword_24F9811E8);
    sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
    sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &qword_24F9811C8, sub_24EAF53D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281D0);
  }

  return result;
}

unint64_t sub_24EAF51B8()
{
  result = qword_27F2281E0;
  if (!qword_27F2281E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281B8, &qword_24F981208);
    sub_24EAF5274();
    sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView, &unk_24FA0C744);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281E0);
  }

  return result;
}

unint64_t sub_24EAF5274()
{
  result = qword_27F2281E8;
  if (!qword_27F2281E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281B0, &qword_24F981200);
    sub_24E66C990();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281E8);
  }

  return result;
}

uint64_t sub_24EAF5358(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF53D4()
{
  result = qword_27F228200;
  if (!qword_27F228200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228170, &unk_24F9811B8);
    sub_24EAF5480();
    sub_24EAF56CC(&qword_27F228228, &qword_27F228140, &qword_24F981180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228200);
  }

  return result;
}

unint64_t sub_24EAF5480()
{
  result = qword_27F228208;
  if (!qword_27F228208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228168, &qword_24F9811B0);
    sub_24EAF5538(&qword_27F228210, &qword_27F228160, &qword_24F9811A8, sub_24EAF55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228208);
  }

  return result;
}

uint64_t sub_24EAF5538(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF55E8()
{
  result = qword_27F228218;
  if (!qword_27F228218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228158, &qword_24F9811A0);
    sub_24E602068(&qword_27F228220, &qword_27F228150, &qword_24F981198, MEMORY[0x277D7EB00]);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8, &unk_24F96B940, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228218);
  }

  return result;
}

uint64_t sub_24EAF56CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24EAF633C(&qword_27F228230, type metadata accessor for IconRowView, &unk_24F979F24);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF5774()
{
  result = qword_27F228238;
  if (!qword_27F228238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228120, &qword_24F981160);
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &qword_24F981150, sub_24EAF59C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228238);
  }

  return result;
}

unint64_t sub_24EAF582C()
{
  result = qword_27F228240;
  if (!qword_27F228240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228138, &qword_24F981178);
    sub_24EAF5538(&qword_27F228248, &qword_27F228130, &qword_24F981170, sub_24EAF58DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228240);
  }

  return result;
}

unint64_t sub_24EAF58DC()
{
  result = qword_27F228250;
  if (!qword_27F228250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228128, &qword_24F981168);
    sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    sub_24E602068(&qword_27F236280, &qword_27F217118, &qword_24F950C70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228250);
  }

  return result;
}

unint64_t sub_24EAF59C0()
{
  result = qword_27F228268;
  if (!qword_27F228268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228108, &qword_24F981148);
    sub_24EAF5A4C();
    sub_24EAF5CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228268);
  }

  return result;
}

unint64_t sub_24EAF5A4C()
{
  result = qword_27F228270;
  if (!qword_27F228270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228100, &qword_24F981140);
    sub_24EAF5B98();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F0, &qword_24F981130);
    sub_24F9241F8();
    sub_24E602068(&qword_27F228280, &qword_27F2280F0, &qword_24F981130, MEMORY[0x277D7EB00]);
    sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228270);
  }

  return result;
}

unint64_t sub_24EAF5B98()
{
  result = qword_27F228278;
  if (!qword_27F228278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F8, &qword_24F981138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F0, &qword_24F981130);
    sub_24F925038();
    sub_24E602068(&qword_27F228280, &qword_27F2280F0, &qword_24F981130, MEMORY[0x277D7EB00]);
    sub_24EAF633C(&qword_27F228288, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228278);
  }

  return result;
}

unint64_t sub_24EAF5CE4()
{
  result = qword_27F228290;
  if (!qword_27F228290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228298, &unk_24F981220);
    sub_24E602068(&qword_27F2282A0, &qword_27F2282A8, &unk_24F9B5DD0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8, &qword_24F981230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228290);
  }

  return result;
}

uint64_t objectdestroyTm_25()
{
  sub_24E600B40(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24EAF5E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24E60169C(v8, v7, &qword_27F228298, &unk_24F981220);
}

uint64_t sub_24EAF5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_24EAF5FE8()
{

  return swift_deallocObject();
}

uint64_t sub_24EAF6038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAF60A0()
{
  v1 = (type metadata accessor for IconRowViewModel(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v4(v2 + v1[7], v3);

  return swift_deallocObject();
}

uint64_t sub_24EAF61C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconRowViewModel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EAF4EE8(v4, a1);
}

unint64_t sub_24EAF6230()
{
  result = qword_27F2282C8;
  if (!qword_27F2282C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282C0, &qword_24F9812A0);
    sub_24EAF56CC(&qword_27F2282D0, &qword_27F2282D8, &qword_24F9812A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2282C8);
  }

  return result;
}

uint64_t sub_24EAF633C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAF6384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAF63EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAF64B4()
{
  result = qword_27F2282E8;
  if (!qword_27F2282E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282F0, &unk_24F981310);
    sub_24EAF5048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2282E8);
  }

  return result;
}

uint64_t AdvertRotationStrategy.init(areAdsPersonalized:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for AdvertRotationStrategy(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = a1;
  a2[1] = 0;
  return result;
}

uint64_t type metadata accessor for AdvertRotationStrategy(uint64_t a1)
{
  result = qword_27F228310;
  if (!qword_27F228310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall AdvertRotationStrategy.userDidInteractedWithAd()()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    *(v0 + 1) = 1;
  }
}

uint64_t AdvertRotationStrategy.advertWasOnScreen(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AdvertRotationStrategy(0) + 24);
  sub_24E601704(v5, &qword_27F228300, &qword_24F98FAC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
  v7 = *(v6 + 48);
  v8 = sub_24F91F648();
  v9 = *(*(v8 - 8) + 16);
  v9(v5, a1, v8);
  v9(v5 + v7, a2, v8);
  v10 = *(*(v6 - 8) + 56);

  return v10(v5, 0, 1, v6);
}

uint64_t AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(char a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300, &qword_24F98FAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  if ((a1 & 1) == 0)
  {
    if (qword_27F2105A0 == -1)
    {
LABEL_6:
      v17 = sub_24F92AAE8();
      __swift_project_value_buffer(v17, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      v18 = type metadata accessor for AdvertRotationStrategy(0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308, &qword_24F981328);
      v32[0] = v18;
      sub_24F928438();
      sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A588();
LABEL_7:

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  if (*v4 != (a2 & 1))
  {
    if (qword_27F2105A0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (v4[1])
  {
    if (qword_27F2105A0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v20 = v14;
  v21 = type metadata accessor for AdvertRotationStrategy(0);
  sub_24EAF72EC(&v4[*(v21 + 24)], v11);
  if ((*(v13 + 48))(v11, 1, v20) == 1)
  {
    sub_24E601704(v11, &qword_27F228300, &qword_24F98FAC0);
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v22 = sub_24F92AAE8();
    __swift_project_value_buffer(v22, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308, &qword_24F981328);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();
    goto LABEL_7;
  }

  sub_24EAF735C(v11, v16);
  sub_24F91F558();
  if (v23 <= a4)
  {
    v25 = v23;
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    v31[1] = __swift_project_value_buffer(v26, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308, &qword_24F981328);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F9283A8();
    v27 = MEMORY[0x277D839F8];
    v33 = MEMORY[0x277D839F8];
    *v32 = v25;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v33 = v27;
    *v32 = a4;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_25;
  }

  sub_24F91F558();
  if (v24 <= a3)
  {
    v28 = v24;
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v29 = sub_24F92AAE8();
    __swift_project_value_buffer(v29, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308, &qword_24F981328);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F9283A8();
    v30 = MEMORY[0x277D839F8];
    v33 = MEMORY[0x277D839F8];
    *v32 = v28;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v33 = v30;
    *v32 = a3;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0, &unk_24F945320);
LABEL_25:
    sub_24F92A588();

    sub_24E601704(v16, &qword_27F2282F8, &qword_24F981320);
    return 0;
  }

  sub_24E601704(v16, &qword_27F2282F8, &qword_24F981320);
  return 1;
}

uint64_t sub_24EAF72EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300, &qword_24F98FAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAF735C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8, &qword_24F981320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAF73E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300, &qword_24F98FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24EAF74B0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300, &qword_24F98FAC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAF755C(uint64_t a1)
{
  sub_24EAF75D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24EAF75D8(uint64_t a1)
{
  if (!qword_27F228320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282F8, &qword_24F981320);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F228320);
    }
  }
}

void ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(void, void, void, void, __n128), uint64_t a5)
{
  v6 = v5;
  v70 = a2;
  v11 = sub_24F927D88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F927DC8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927E38();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v77 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v64 - v18;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  aBlock = v20;
  v83 = v19;
  v21 = Artwork.URLTemplate.isSystemImage.getter();
  v75 = v12;
  v76 = v11;
  if (!v21)
  {
    goto LABEL_18;
  }

  v64 = a3;
  v65 = v5;
  v66 = a1;
  v67 = a5;
  v68 = a4;
  v22 = sub_24E60B4B0(MEMORY[0x277D84F90]);
  v23 = v22;
  v24 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  if (v27)
  {
    while (1)
    {
      v30 = v29;
LABEL_10:
      v31 = __clz(__rbit64(v27)) | (v30 << 6);
      v32 = *(*(v23 + 48) + v31);
      v27 &= v27 - 1;
      v33 = (*(v23 + 56) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      aBlock = v20;
      v83 = v19;
      *&v88[0] = qword_24F9816A0[v32];
      *(&v88[0] + 1) = 0xE300000000000000;
      v80 = v34;
      v81 = v35;
      sub_24E600AEC();

      v20 = sub_24F92C568();
      v37 = v36;

      v19 = v37;
      if (!v27)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_10;
    }
  }

  v38 = v69;
  sub_24F91F488();

  v39 = sub_24F91F4A8();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_24E601704(v38, &qword_27F228530, &unk_24F93C6E0);
    a4 = v68;
    a5 = v67;
    a1 = v66;
    v6 = v65;
    a3 = v64;
    goto LABEL_18;
  }

  v41 = sub_24F91F438();
  v43 = v42;
  (*(v40 + 8))(v38, v39);
  a4 = v68;
  a5 = v67;
  a1 = v66;
  v6 = v65;
  a3 = v64;
  if (v43)
  {
    v44 = sub_24F92B098();
    v45 = [objc_opt_self() _systemImageNamed_];

    if (!v45)
    {
      if (a4)
      {
        v61 = *(a1 + 24);
        aBlock = *(a1 + 16);
        v83 = v61;
        sub_24EAFE1A0();
        v62 = swift_allocError();
        *v63 = v41;
        *(v63 + 8) = v43;
        *(v63 + 16) = 2;

        (a4)(0, 0, &aBlock, v62);
      }

      goto LABEL_22;
    }

    if (a4)
    {
      v46 = *(a1 + 24);
      aBlock = *(a1 + 16);
      v83 = v46;
      v47 = v45;

      (a4)(v45, 0, &aBlock, 0);

LABEL_22:

      return;
    }
  }

  else
  {
LABEL_18:
    v48 = swift_allocObject();
    swift_weakInit();
    sub_24E65E064(a3, v88);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = a1;
    *(v49 + 32) = a4;
    *(v49 + 40) = a5;
    v50 = v88[1];
    *(v49 + 48) = v88[0];
    *(v49 + 64) = v50;
    *(v49 + 80) = v89;
    v51 = *(v6 + 32);
    v52 = a5;
    v53 = v77;
    v54 = v78;
    *v77 = v51;
    v55 = v79;
    (*(v54 + 104))(v53, *MEMORY[0x277D851F0], v79);

    sub_24E5FCA4C(a4, v52);
    v69 = v51;
    LOBYTE(v51) = sub_24F927E68();
    (*(v54 + 8))(v53, v55);
    if (v51)
    {
      v56 = swift_allocObject();
      *(v56 + 16) = v6;
      *(v56 + 24) = a1;
      *(v56 + 32) = sub_24EAFDCAC;
      *(v56 + 40) = v49;
      *(v56 + 48) = a4;
      *(v56 + 56) = v52;
      *(v56 + 64) = v70 & 1;
      v86 = sub_24EAFDCBC;
      v87 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = sub_24EAF8248;
      v85 = &block_descriptor_47;
      v57 = _Block_copy(&aBlock);

      sub_24E5FCA4C(a4, v52);

      v58 = v71;
      sub_24F927DA8();
      v80 = MEMORY[0x277D84F90];
      sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v59 = v73;
      v60 = v76;
      sub_24F92C6A8();
      MEMORY[0x2530518B0](0, v58, v59, v57);
      _Block_release(v57);

      (*(v75 + 8))(v59, v60);
      (*(v72 + 8))(v58, v74);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }
}

double ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(uint64_t a1, char a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 32);
  sub_24E65864C(a1, v20);
  v12 = swift_allocObject();
  v13 = v20[1];
  *(v12 + 24) = v20[0];
  *(v12 + 16) = v2;
  *(v12 + 40) = v13;
  *(v12 + 56) = v21;
  *(v12 + 64) = a2;
  aBlock[4] = sub_24EAFE234;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_12_2;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);

  return result;
}

double sub_24EAF8248(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_24EAF8298()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00]([v1 hash]);
  return sub_24F92D0B8();
}

uint64_t sub_24EAF8324()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00]([v1 hash]);
  return sub_24F92D0B8();
}

unint64_t ArtworkLoader.FetchError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v5 = v0[1];
      sub_24F92C888();

      v7 = 0xD000000000000018;
      MEMORY[0x253050C20](v1, v5);
      return v7;
    }

    sub_24F92C888();

    v3 = 0xD000000000000013;
  }

  else
  {
    sub_24F92C888();

    v3 = 0xD000000000000019;
  }

  v7 = v3;
  v4 = sub_24F2A24AC(v2);
  MEMORY[0x253050C20](v4);

  return v7;
}

uint64_t ArtworkLoader.__allocating_init(parent:)(void *a1)
{
  swift_allocObject();
  v2 = sub_24EAFE244(a1);

  return v2;
}

uint64_t ArtworkLoader.init(parent:)(void *a1)
{
  v1 = sub_24EAFE244(a1);

  return v1;
}

void sub_24EAF8550()
{
  v2 = [objc_opt_self() defaultCenter];
  v1 = *(v0 + 16);
  [v2 addObserver:v0 selector:sel_resourceLoaderDidBeginLoading name:@"ASKResourceLoaderDidBeginLoadingNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidIdle name:@"ASKResourceLoaderDidIdleNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidLoadAllForReason_ name:@"ASKResourceLoaderDidLoadAllForReasonNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidBeginLoadingForReason_ name:@"ASKResourceLoaderDidBeginLoadingForReasonNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidFinishLoadingForReason_ name:@"ASKResourceLoaderDidFinishLoadingForReasonNotification" object:v1];
}

void *ArtworkLoader.__allocating_init(queue:cacheLimit:renderIntent:urlSession:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_24EAFE4EC(a1, a2, a3, a4);

  return v8;
}

void *ArtworkLoader.init(queue:cacheLimit:renderIntent:urlSession:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24EAFE4EC(a1, a2, a3, a4);

  return v6;
}

void *ArtworkLoader.__allocating_init(cacheLimit:renderIntent:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v7 = sub_24F92B098();
  [v6 setName_];

  swift_allocObject();
  v8 = sub_24EAFE4EC(v6, a1, a2, a3);

  return v8;
}

id *ArtworkLoader.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_24E883630((v0 + 12));
  swift_weakDestroy();

  return v0;
}

uint64_t ArtworkLoader.__deallocating_deinit()
{
  ArtworkLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t ArtworkLoader.register(resourceLoader:)(uint64_t a1)
{
  v2 = v1;
  v4 = [swift_getObjCClassFromMetadata() supportedScheme];
  v5 = sub_24F92B0D8();
  v7 = v6;

  swift_beginAccess();
  if (*(*(v2 + 80) + 16) && (sub_24E76D644(v5, v7), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27F2105D8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228330, &qword_24F9813A0);
    v12[0] = a1;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v13 = MEMORY[0x277D837D0];
    v12[0] = v5;
    v12[1] = v7;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_24E81EB70(a1, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v2 + 80) = v14;
    return swift_endAccess();
  }
}

void sub_24EAF8BA8(uint64_t a1, __n128 a2)
{
  v4 = sub_24F927E38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_24F927E68();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v11 = *(v2 + 16);
  sub_24F2A1CF8();
  v13 = [v11 cachedResourcesForCacheKey_];
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_24F92B5A8();

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = v14 + 32;
      while (v16 < *(v14 + 16))
      {
        sub_24E643A9C(v19, v28);
        sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
        if (!swift_dynamicCast() || ((v20 = v27, [v27 size], v22 = v21, v24 = v23, v20, v22 == v17) ? (v25 = v24 == v18) : (v25 = 0), !v25))
        {
          ++v16;
          v19 += 32;
          if (v15 != v16)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_13:
  }
}

void sub_24EAF8DF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v88 = a7;
  v13 = sub_24F92A078();
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24F92A088();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  sub_24F2A1CF8();
  v89 = v16;
  v18 = [v16 cachedResourcesForCacheKey_];
  v19 = swift_unknownObjectRelease();
  if (v18)
  {
    v76 = v13;
    v77 = a4;
    v78 = a3;
    v79 = a5;
    v80 = a6;
    v20 = sub_24F92B5A8();

    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    v81 = a2;
    v23 = *(v20 + 16);
    v24 = v20 + 32;
    v82 = v20;

    v25 = 0;
    v26 = 0;
    v27 = 1.79769313e308;
    while (1)
    {
      if (v26 == v23)
      {
        aBlock = 0u;
        v94 = 0u;
        v26 = v23;
      }

      else
      {
        if (v26 >= v23)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        sub_24E643A9C(v24 + 32 * v26, &aBlock);
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_46;
        }
      }

      v97[0] = aBlock;
      v97[1] = v94;
      if (!*(&v94 + 1))
      {
        break;
      }

      sub_24E612B0C(v97, v92);
      sub_24E643A9C(v92, v90);
      sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v91 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v92);
      v29 = v91;
      if (v91)
      {
        [v91 size];
        if (v30 == v21 && v31 == v22)
        {

          v49 = *(a1 + 72);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v51 = v49 == 5 || v49 == 3;
            v52 = v83;
            *v83 = v51;
            v53 = v84;
            v54 = v85;
            (*(v84 + 104))(v52, *MEMORY[0x277D22298], v85);
            v55 = v29;
            sub_24F92A0D8();
            (*(v53 + 8))(v52, v54);
            v56 = v86;
            *v86 = v51;
            v57 = v87;
            v58 = v76;
            (*(v87 + 104))(v56, *MEMORY[0x277D22288], v76);
            sub_24F92A0C8();

            (*(v57 + 8))(v56, v58);
          }

          else
          {
            v59 = v29;
          }

          v60 = v80;
          v61 = v79;
          v62 = [v89 notificationQueue];
          v63 = swift_allocObject();
          v63[2] = v61;
          v63[3] = v60;
          v64 = v81;
          v63[4] = v29;
          v63[5] = v64;
          v95 = sub_24EAFEFB0;
          v96 = v63;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v94 = sub_24EAF8248;
          *(&v94 + 1) = &block_descriptor_82_0;
          v65 = _Block_copy(&aBlock);
          v66 = v29;
          sub_24E5FCA4C(v61, v60);

          [v62 addOperationWithBlock_];
          _Block_release(v65);

          return;
        }

        v33 = vabdd_f64(v30, v21);
        if (vabdd_f64(v30 / v31, v21 / v22) < 0.01 && v33 < v27)
        {

          v27 = v33;
          v25 = v29;
        }

        else
        {
        }
      }
    }

    v36 = v78;
    if (v25 && (v88 & 1) != 0)
    {
      v37 = *(a1 + 72);
      swift_beginAccess();
      v38 = v25;
      if (swift_weakLoadStrong())
      {
        v40 = v37 == 5 || v37 == 3;
        v41 = v83;
        *v83 = v40;
        v42 = v84;
        v43 = v85;
        (*(v84 + 104))(v41, *MEMORY[0x277D22298], v85);
        v44 = v25;
        sub_24F92A0D8();
        (*(v42 + 8))(v41, v43);
        v45 = v86;
        *v86 = v40;
        v46 = v87;
        v47 = v76;
        (*(v87 + 104))(v45, *MEMORY[0x277D22288], v76);
        sub_24F92A0C8();

        v48 = v45;
        v25 = v38;
        (*(v46 + 8))(v48, v47);
      }

      else
      {
        v67 = v25;
      }

      v68 = v80;
      v69 = v79;
      v70 = [v89 notificationQueue];
      v71 = swift_allocObject();
      v71[2] = v69;
      v71[3] = v68;
      v72 = v81;
      v71[4] = v25;
      v71[5] = v72;
      v95 = sub_24EAFF15C;
      v96 = v71;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v94 = sub_24EAF8248;
      *(&v94 + 1) = &block_descriptor_76_0;
      v73 = _Block_copy(&aBlock);
      sub_24E5FCA4C(v69, v68);

      v74 = v38;
      v25 = v38;

      [v70 addOperationWithBlock_];
      _Block_release(v73);
    }

    v36(v35);
  }

  else
  {
    a3(v19);
  }
}

void (*sub_24EAF95F8(void (*result)(uint64_t, uint64_t, void *, void), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, void *, void)
{
  if (result)
  {
    v5 = result;
    v6 = *(a4 + 24);
    v7[0] = *(a4 + 16);
    v7[1] = v6;

    v5(a3, 1, v7, 0);
  }

  return result;
}

id sub_24EAF9664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = sub_24F91E968();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v35 = v22;
  v21(v20, a2, v18);
  if ([objc_opt_self() alwaysSendCacheBuster])
  {
    sub_24F91E928();
    if ((*(v7 + 48))(v12, 1, v6))
    {
      sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
      v23 = 1;
    }

    else
    {
      (*(v7 + 16))(v9, v12, v6);
      sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
      sub_24F91F498();
      (*(v7 + 8))(v9, v6);
      v23 = 0;
    }

    (*(v7 + 56))(v15, v23, 1, v6);
    sub_24F91E938();
    sub_24F91E8C8();
  }

  v24 = [objc_allocWithZone(ASKImageDataConsumer) initWithSize:*(a1 + 72) == 3 scale:*(v3 + 64) isLayeredImage:*(a1 + 32) renderIntent:{*(a1 + 40), *(a1 + 64)}];
  v25 = sub_24EAFDCD8(v20, v24, v3);
  v26 = objc_allocWithZone(ASKImageRequest);
  v27 = v25;
  v28 = v24;

  v29 = sub_24F91E8E8();
  v30 = [v26 initWithURLRequest:v29 loadOperation:v27 dataConsumer:v28 delegate:v3];

  v31 = v30;
  sub_24F2A1CF8();
  [v31 setCacheKey_];
  swift_unknownObjectRelease();
  [v31 setRequestKey_];

  swift_unknownObjectRelease();
  (*(v17 + 8))(v20, v35);
  return v31;
}

void ArtworkLoader.fetchArtworkFromCache(using:closestMatch:completionHandler:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a2;
  v9 = sub_24F927D88();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v26 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F927DC8();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927E38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = *(v5 + 32);
  *v16 = v18;
  (*(v14 + 104))(v16, *MEMORY[0x277D851F0], v13);

  sub_24E5FCA4C(a3, a4);

  v23 = v18;
  LOBYTE(v18) = sub_24F927E68();
  (*(v14 + 8))(v16, v13);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = a1;
    *(v19 + 32) = sub_24EAFE918;
    *(v19 + 40) = v17;
    *(v19 + 48) = a3;
    *(v19 + 56) = a4;
    *(v19 + 64) = v24 & 1;
    aBlock[4] = sub_24EAFF118;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_22_0;
    v20 = _Block_copy(aBlock);

    sub_24E5FCA4C(a3, a4);

    sub_24F927DA8();
    v30 = MEMORY[0x277D84F90];
    sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v21 = v26;
    v22 = v29;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v12, v21, v20);
    _Block_release(v20);

    (*(v28 + 8))(v21, v22);
    (*(v25 + 8))(v12, v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_24EAF9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 16) notificationQueue];
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = sub_24EAFF160;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24EAF8248;
  v10[3] = &block_descriptor_70;
  v9 = _Block_copy(v10);
  sub_24E5FCA4C(a2, a3);

  [v7 addOperationWithBlock_];
  _Block_release(v9);
}

double sub_24EAF9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v57 = a4;
  v58 = a3;
  v8 = sub_24F91E968();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F6B8();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_24F91F4A8();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(a2 + 24);
    *&aBlock = *(a2 + 16);
    *(&aBlock + 1) = v23;
    if (!Artwork.URLTemplate.isSystemImage.getter() && (*(a2 + 32) <= 0.0 || *(a2 + 40) <= 0.0))
    {
      v25 = [*(v22 + 16) notificationQueue];
      v30 = swift_allocObject();
      v27 = v57;
      v28 = v58;
      v30[2] = v58;
      v30[3] = v27;
      v30[4] = a2;
      v65 = sub_24EAFEFD0;
      v66 = v30;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v29 = &block_descriptor_88;
      goto LABEL_8;
    }

    sub_24F2A197C();
    v24 = v56;
    if ((*(v56 + 48))(v13, 1, v14) == 1)
    {
      sub_24E601704(v13, &qword_27F228530, &unk_24F93C6E0);
      v25 = [*(v22 + 16) notificationQueue];
      v26 = swift_allocObject();
      v27 = v57;
      v28 = v58;
      v26[2] = v58;
      v26[3] = v27;
      v26[4] = a2;
      v65 = sub_24EAFF03C;
      v66 = v26;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v29 = &block_descriptor_94;
LABEL_8:
      *&v64 = sub_24EAF8248;
      *(&v64 + 1) = v29;
      v31 = _Block_copy(&aBlock);
      sub_24E5FCA4C(v28, v27);

      [v25 addOperationWithBlock_];
      _Block_release(v31);

      return result;
    }

    (*(v24 + 32))(v19, v13, v14);
    v32 = sub_24F2A1F6C();
    if (v58)
    {
      sub_24E65E064(a5, &v60);
      if (*(&v61 + 1))
      {
        aBlock = v60;
        v64 = v61;
        v65 = v62;
        v33 = v57;
      }

      else
      {
        v33 = v57;

        sub_24F91F6A8();
        sub_24EAFF060(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_24F92C7F8();
        if (*(&v61 + 1))
        {
          sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
        }
      }

      v34 = swift_allocObject();
      v35 = v58;
      *(v34 + 16) = v58;
      *(v34 + 24) = v33;
      swift_beginAccess();
      sub_24E5FCA4C(v35, v33);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v22 + 40);
      *(v22 + 40) = 0x8000000000000000;
      sub_24E81EDFC(v32, sub_24EAFF128, v34, &aBlock, isUniquelyReferenced_nonNull_native);
      *(v22 + 40) = v59;
      swift_endAccess();
      swift_beginAccess();
      v37 = *(v22 + 56);
      v38 = *(v37 + 16);
      swift_unknownObjectRetain();
      if (v38 && (v39 = sub_24E76E37C(v32), (v40 & 1) != 0) && (v41 = *(*(v37 + 56) + 24 * v39), , , v41))
      {

        swift_endAccess();
        sub_24E9036C4(v41);
        sub_24E65864C(&aBlock, &v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_24E616714(0, *(v41 + 16) + 1, 1, v41);
        }

        v43 = *(v41 + 16);
        v42 = *(v41 + 24);
        if (v43 >= v42 >> 1)
        {
          v41 = sub_24E616714((v42 > 1), v43 + 1, 1, v41);
        }

        *(v41 + 16) = v43 + 1;
        v44 = v41 + 40 * v43;
        v45 = v60;
        v46 = v61;
        *(v44 + 64) = v62;
        *(v44 + 32) = v45;
        *(v44 + 48) = v46;
      }

      else
      {
        sub_24E9036C4(0);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_24F93DE60;
        sub_24E65864C(&aBlock, v41 + 32);
      }

      v47 = *(a2 + 16);
      v48 = *(a2 + 24);
      swift_beginAccess();

      v49 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v22 + 56);
      *(v22 + 56) = 0x8000000000000000;
      sub_24E81ECA0(v41, v47, v48, v32, v49);
      swift_unknownObjectRelease();
      *(v22 + 56) = v59;
      swift_endAccess();
      sub_24E824448(v58, v57);
      sub_24E6585F8(&aBlock);
    }

    v50 = v56;
    (*(v56 + 16))(v16, v19, v14);
    v51 = v53;
    sub_24F91E918();
    v52 = sub_24EAF9664(a2, v51);
    (*(v54 + 8))(v51, v55);
    [*(v22 + 16) loadResourceWithRequest:v52 reason:*(v22 + 72)];
    swift_unknownObjectRelease();

    (*(v50 + 8))(v19, v14);
  }

  return result;
}

void sub_24EAFA820(void (*a1)(void, void, void *, void *), uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    sub_24EAFE1A0();
    v9[0] = 0;
    v9[1] = 0;
    v7 = swift_allocError();
    *v8 = a3;
    *(v8 + 8) = 0;
    *(v8 + 16) = a4;

    a1(0, 0, v9, v7);
  }
}

uint64_t ArtworkLoader.prefetchArtwork(using:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F941C80;
  *(v2 + 32) = a1;

  ArtworkLoader.prefetchArtwork(using:)(v2);
}

Swift::Void __swiftcall ArtworkLoader.prefetchArtwork(using:)(Swift::OpaquePointer using)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = v1[4];
  v10 = swift_allocObject();
  v10[2]._rawValue = using._rawValue;
  v10[3]._rawValue = v1;
  aBlock[4] = sub_24EAFE9D4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_28_2;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  v14 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v13);
}

void sub_24EAFAC04(__n128 a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v42 = sub_24F91E968();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  if (v16 >> 62)
  {
    v35 = v16;
    v36 = sub_24F92C738();
    v16 = v35;
    v20 = v36;
    if (!v36)
    {
      return;
    }
  }

  else
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return;
    }
  }

  if (v20 >= 1)
  {
    v21 = 0;
    v22 = (v11 + 48);
    v48 = (v11 + 32);
    v49 = v16 & 0xC000000000000001;
    v47 = (v11 + 8);
    v38 = (v3 + 8);
    v39 = (v11 + 16);
    v50 = v16;
    v43 = v19;
    while (1)
    {
      if (v49)
      {
        v23 = MEMORY[0x253052270](v21, v17);
      }

      else
      {
        v23 = *(v16 + 8 * v21 + 32);
      }

      sub_24F91F488();
      v24 = *v22;
      if ((*v22)(v9, 1, v10) == 1)
      {
        sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        (*v48)(v19, v9, v10);
        v25 = sub_24F91F478();
        if (v26)
        {
          if (v25 == 0x6D696D6574737973 && v26 == 0xEB00000000656761)
          {

            (*v47)(v19, v10);
            goto LABEL_21;
          }

          v27 = sub_24F92CE08();

          (*v47)(v19, v10);
          if (v27)
          {
            goto LABEL_21;
          }
        }

        else
        {
          (*v47)(v19, v10);
        }
      }

      if (*(v23 + 32) <= 0.0 || *(v23 + 40) <= 0.0)
      {

        goto LABEL_6;
      }

LABEL_21:
      v28 = v46;
      sub_24F2A197C();
      if (v24(v28, 1, v10) != 1)
      {
        v29 = v44;
        v30.n128_f64[0] = (*v48)(v44, v28, v10);
        v31 = v45;
        sub_24EAF8BA8(v23, v30);
        if (v32)
        {
          (*v47)(v29, v10);
        }

        else
        {
          (*v39)(v40, v29, v10);
          v33 = v41;
          sub_24F91E918();
          v34 = sub_24EAF9664(v23, v33);
          [*(v31 + 16) prefetchResourceWithRequest_];

          (*v38)(v33, v42);
          (*v47)(v29, v10);
        }

        v16 = v50;
        v19 = v43;
        goto LABEL_7;
      }

      sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);
LABEL_6:
      v16 = v50;
LABEL_7:
      if (v20 == ++v21)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v28 = a5;
  v29 = a2;
  v30 = a1;
  v7 = *v5;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927E38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v15 = sub_24F92BEF8();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_24F927E68();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v32 = sub_24F92AFE8();
    sub_24F92C7F8();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v6[6];
    v6[6] = 0x8000000000000000;
    sub_24E81DA0C(v18, v20, v33, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v33);
    v6[6] = v31;
    swift_endAccess();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v25 = v28;
    v24[2] = v27;
    v24[3] = v25;
    v24[4] = v23;
    v24[5] = v22;
    v24[6] = v18;
    v24[7] = v20;
    v24[8] = v7;
    v32 = sub_24F92AFE8();
    sub_24F92C7F8();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v30, v29 & 1, v33, sub_24EAFEA5C, v24);

    return sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24EAFB558(uint64_t a1, char a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_24F927E38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v19 = sub_24F92BEF8();
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v20 = sub_24F927E68();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v30 = sub_24F92AFE8();
      sub_24F92C7F8();
      swift_beginAccess();
      v23 = *(v22 + 48);
      if (!*(v23 + 16) || (v24 = sub_24E76D934(v31), (v25 & 1) == 0))
      {
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_24E6585F8(v31);

        return;
      }

      v26 = (*(v23 + 56) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      swift_endAccess();

      sub_24E6585F8(v31);

      if (v28 == a8 && v27 == a9)
      {

LABEL_11:
        (*(a12 + 40))(a1, (a2 & 1) == 0, a11);
        goto LABEL_12;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    swift_unknownObjectRelease();
  }
}

void sub_24EAFB804(void *a1, void *a2, void *a3, __n128 a4)
{
  v5 = v4;
  v9 = sub_24F927E38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + 32);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_24F927E68();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = [a1 requestKey];
    swift_beginAccess();
    sub_24E98F96C(v16, &aBlock);
    swift_endAccess();
    if (aBlock)
    {
      v43 = a2;
      v44 = a3;
      v40 = v47;
      v41 = v46;
      v17 = *(aBlock + 16);
      v42 = v16;
      if (v17)
      {
        v18 = aBlock + 32;
        v19 = MEMORY[0x277D84F90];
        do
        {
          sub_24E65864C(v18, &aBlock);
          swift_beginAccess();
          v20 = *(v5 + 40);
          if (*(v20 + 16) && (v21 = sub_24E76D934(&aBlock), (v22 & 1) != 0))
          {
            v23 = *(v20 + 56) + 24 * v21;
            v24 = *v23;
            v25 = *(v23 + 8);
            v26 = *(v23 + 16);
            v27 = swift_allocObject();
            *(v27 + 16) = v25;
            *(v27 + 24) = v26;
            swift_endAccess();
            swift_unknownObjectRetain();

            LOBYTE(v25) = [v24 isEqual_];
            swift_unknownObjectRelease();
            sub_24E6585F8(&aBlock);
            swift_unknownObjectRelease();
            if (v25)
            {
              v28 = swift_allocObject();
              *(v28 + 16) = sub_24EAFEF0C;
              *(v28 + 24) = v27;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_24E6186B0(0, v19[2] + 1, 1, v19);
              }

              v30 = v19[2];
              v29 = v19[3];
              if (v30 >= v29 >> 1)
              {
                v19 = sub_24E6186B0((v29 > 1), v30 + 1, 1, v19);
              }

              v19[2] = v30 + 1;
              v31 = &v19[2 * v30];
              v31[4] = sub_24EAFEF54;
              v31[5] = v28;
            }

            else
            {
            }
          }

          else
          {
            swift_endAccess();
            sub_24E6585F8(&aBlock);
          }

          v18 += 40;
          --v17;
        }

        while (v17);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      v32 = [*(v5 + 16) notificationQueue];
      v33 = swift_allocObject();
      v35 = v43;
      v34 = v44;
      v33[2] = v19;
      v33[3] = v35;
      v36 = v40;
      v33[4] = v41;
      v33[5] = v36;
      v33[6] = v34;
      v49 = sub_24EAFEEFC;
      v50 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_24EAF8248;
      v48 = &block_descriptor_58;
      v37 = _Block_copy(&aBlock);
      v38 = v35;
      v39 = v34;

      [v32 addOperationWithBlock_];
      _Block_release(v37);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EAFBC4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v10 = result + 40;
    do
    {
      v11 = *(v10 - 8);
      v15[0] = a3;
      v15[1] = a4;
      v14 = a2;
      v13 = 0;
      v12 = a5;

      v11(&v14, &v13, v15, &v12);

      v10 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

void ArtworkLoader.imageRequest(_:didFailWithError:)(void *a1, void *a2)
{
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v5 = [a1 urlRequest];
  v10 = sub_24F91E968();
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24F91E908();

  sub_24F928438();
  sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v10 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  sub_24EAFB804(a1, 0, a2, v7);
}

uint64_t sub_24EAFC070(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v6 = sub_24E76D934(a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 40);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B1B8C();
  }

  sub_24E6585F8(*(v10 + 48) + 40 * v8);
  v11 = *(*(v10 + 56) + 24 * v8);
  sub_24EB54AE8(v8, v10);
  *(a1 + 40) = v10;
  swift_endAccess();

  if (a3)
  {
    [*(a1 + 16) setDidGoOffScreenForRequestWithKey_];
  }

  return swift_unknownObjectRelease();
}

uint64_t ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)(uint64_t a1, char a2, __n128 a3)
{
  v5[5] = sub_24F92AFE8();
  sub_24F92C7F8();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v5, a2);
  return sub_24E6585F8(v5);
}

double ArtworkLoader.isOccluded.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return sub_24EAFC244();
}

double sub_24EAFC244()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 88);
  v12 = *(v0 + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0;
  aBlock[4] = sub_24EAFEE80;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_52;
  v10 = _Block_copy(aBlock);

  sub_24F927DA8();
  v14 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);

  return result;
}

double (*ArtworkLoader.isOccluded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EAFC56C;
}

double sub_24EAFC56C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EAFC244();
  }

  return result;
}

Swift::Void __swiftcall ArtworkLoader.discardInMemoryCache()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 32);
  aBlock[4] = sub_24EAFEA94;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_38_0;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v11 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

id sub_24EAFC840(uint64_t a1)
{
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = *(a1 + 16);

  return [v3 removeAllCachedResources];
}

uint64_t ArtworkLoader.assetObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ArtworkLoader.assetObserver.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EAFCB28;
}

uint64_t ArtworkLoader.pageRenderMetrics.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  swift_beginAccess();
  *(v1 + 120) = MEMORY[0x277D84FA0];
}

uint64_t (*ArtworkLoader.pageRenderMetrics.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_24EAFCD98;
}

void sub_24EAFCD98(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (qword_27F2105D8 != -1)
    {
      swift_once();
    }

    v4 = v3[4];
    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    swift_beginAccess();
    *(v4 + 120) = MEMORY[0x277D84FA0];
  }

  free(v3);
}

double sub_24EAFD200(uint64_t a1, __n128 a2)
{
  v2 = sub_24F92A088();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_24F91EB48();
    if (v7)
    {
      v8 = v7;
      v13[1] = sub_24F92B0D8();
      v13[2] = v9;
      sub_24F92C7F8();
      if (*(v8 + 16) && (v10 = sub_24E76D934(v14), (v11 & 1) != 0))
      {
        sub_24E643A9C(*(v8 + 56) + 32 * v10, &v15);
        sub_24E6585F8(v14);

        if (*(&v16 + 1))
        {
          if (swift_dynamicCast())
          {
            v12 = v14[0];
            swift_beginAccess();
            sub_24ED7EC80(&v15, v12);
            swift_endAccess();
            *v5 = sub_24EAFED38();
            (*(v3 + 104))(v5, *MEMORY[0x277D22298], v2);
            sub_24F92A0D8();

            (*(v3 + 8))(v5, v2);
          }

          else
          {
          }

          return result;
        }
      }

      else
      {

        sub_24E6585F8(v14);
        v15 = 0u;
        v16 = 0u;
      }
    }

    else
    {

      v15 = 0u;
      v16 = 0u;
    }

    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

void sub_24EAFD48C(uint64_t a1)
{
  v1 = sub_24F92A078();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v5 = sub_24F91EB48();
  if (!v5)
  {

    v14 = 0u;
    v15 = 0u;
    goto LABEL_13;
  }

  v6 = v5;
  v12[1] = sub_24F92B0D8();
  v12[2] = v7;
  sub_24F92C7F8();
  if (!*(v6 + 16) || (v8 = sub_24E76D934(v13), (v9 & 1) == 0))
  {

    sub_24E6585F8(v13);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  sub_24E643A9C(*(v6 + 56) + 32 * v8, &v14);
  sub_24E6585F8(v13);

  if (!*(&v15 + 1))
  {
LABEL_11:

LABEL_13:
    sub_24E601704(&v14, &qword_27F2129B0, &unk_24F945320);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return;
  }

  v10 = v13[0];
  swift_beginAccess();
  if (sub_24F4D95E4())
  {
    *v4 = sub_24EAFED38();
    (*(v2 + 104))(v4, *MEMORY[0x277D22288], v1);
    sub_24F92A0C8();
    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    sub_24F7A5B4C(v10);
    swift_endAccess();
    goto LABEL_9;
  }

  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v11 = sub_24F92AAE8();
  __swift_project_value_buffer(v11, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();
}

uint64_t sub_24EAFD850(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EAFD9D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24EAFDA38(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EAFF158;
}

void sub_24EAFDACC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 104) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_24EAFDB8C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ArtworkLoader.pageRenderMetrics.modify(v2);
  return sub_24E622878;
}

uint64_t sub_24EAFDC14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EAFDC4C()
{

  if (v0[4])
  {
  }

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24EAFDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = sub_24F92AAE8();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v35 = a1;
  sub_24F91E928();
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  v31 = *(v14 + 48);
  if (v31(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    v15 = sub_24F91F478();
    v17 = v16;
    (*(v14 + 8))(v12, v13);
    if (v17)
    {
      v18 = v32;
      swift_beginAccess();
      if (*(*(v18 + 80) + 16))
      {
        sub_24E76D644(v15, v17);
        if (v19)
        {
          swift_endAccess();

          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          goto LABEL_14;
        }
      }

      swift_endAccess();
    }
  }

  v30 = a2;
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_27F39C488);
  (*(v34 + 16))(v33, v21, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  sub_24F91E928();
  if (v31(v9, 1, v13) == 1)
  {
    sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    *(&v37 + 1) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v14 + 32))(boxed_opaque_existential_1, v9, v13);
  }

  sub_24F928438();
  sub_24E601704(&v36, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v23 = v33;
  sub_24F92A5A8();

  (*(v34 + 8))(v23, v5);
  ObjCClassFromMetadata = ASKLoadImageResourceOperation;
  a2 = v30;
LABEL_14:
  v24 = *(v32 + 24);
  v25 = objc_allocWithZone(ObjCClassFromMetadata);
  v26 = v24;
  v27 = sub_24F91E8E8();
  v28 = [v25 initWithURLRequest:v27 URLSession:v26 dataConsumer:a2];

  return v28;
}

unint64_t sub_24EAFE1A0()
{
  result = qword_27F228328;
  if (!qword_27F228328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228328);
  }

  return result;
}

uint64_t sub_24EAFE1F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24EAFE244(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_24E60D1E4(MEMORY[0x277D84F90]);
  v5 = MEMORY[0x277D84F98];
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = sub_24E60D324(v3);
  *(v1 + 72) = 5;
  *(v1 + 104) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v1 + 120) = MEMORY[0x277D84FA0];
  v6 = a1[4];
  *(v1 + 32) = v6;
  v7 = a1[3];
  *(v1 + 24) = v7;
  v8 = a1[2];
  v9 = objc_allocWithZone(ASKResourceLoader);
  v10 = v6;
  v11 = v7;
  *(v1 + 16) = [v9 initWithParentResourceLoader_];
  *(v1 + 88) = 1;
  *(v1 + 64) = a1[8];
  swift_beginAccess();
  *(v1 + 80) = a1[10];

  sub_24EAF8550();
  return v1;
}

uint64_t sub_24EAFE350()
{
  v0 = sub_24E69A5C4(0, &qword_27F2283A8, off_279686800);
  v1 = [swift_getObjCClassFromMetadata() supportedScheme];
  v2 = sub_24F92B0D8();
  v4 = v3;

  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v0, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = v5;
  v8 = sub_24E69A5C4(0, &qword_27F2283B0, off_279686808);
  v9 = [swift_getObjCClassFromMetadata() supportedScheme];
  v10 = sub_24F92B0D8();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v8, v10, v12, v13);

  v14 = sub_24E69A5C4(0, &qword_27F2283B8, off_279686810);
  v15 = [swift_getObjCClassFromMetadata() supportedScheme];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v14, v16, v18, v19);

  return v7;
}

void *sub_24EAFE4EC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v6 = sub_24F92BEE8();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24F927DC8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_24E60D1E4(MEMORY[0x277D84F90]);
  v13 = MEMORY[0x277D84F98];
  v4[5] = v12;
  v4[6] = v13;
  v4[7] = sub_24E60D324(v11);
  v4[9] = 5;
  v4[13] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v4[15] = MEMORY[0x277D84FA0];
  v27 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v34 = v11;
  sub_24EAFF060(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v28 + 104))(v8, *MEMORY[0x277D85260], v29);
  v14 = sub_24F92BF38();
  v15 = v30;
  v4[3] = v30;
  v4[4] = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v17 = v15;
  v18 = [v16 init];
  [v18 setMaxConcurrentOperationCount_];
  [v18 setUnderlyingQueue_];
  v19 = sub_24F92B098();
  [v18 setName_];

  v20 = objc_opt_self();
  v21 = v31;
  v22 = v18;
  v23 = [v20 mainQueue];
  v24 = objc_allocWithZone(ASKResourceLoader);
  v25 = [v24 initWithRequestQueue:v21 accessQueue:v22 notificationQueue:v23 cacheLimit:v32];

  v5[2] = v25;
  *(v5 + 88) = 0;
  v5[8] = v33;
  v5[10] = sub_24EAFE350();
  sub_24EAF8550();

  return v5;
}

uint64_t sub_24EAFE8C8()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EAFE994()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFE9DC()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EAFEA14()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFEAA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

double sub_24EAFEAE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
  return sub_24EAFC244();
}

uint64_t sub_24EAFEB30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 104);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EAFEB80(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EAFEBD8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t sub_24EAFECE4()
{
  result = qword_27F228398;
  if (!qword_27F228398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228398);
  }

  return result;
}

BOOL sub_24EAFED38()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_13;
  }

  v1 = v0;
  sub_24F92B0D8();
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v6), (v3 & 1) == 0))
  {

    sub_24E6585F8(v6);
LABEL_13:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_14;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v7);
  sub_24E6585F8(v6);

  if (!*(&v8 + 1))
  {
LABEL_14:
    sub_24E601704(&v7, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v6[0] == 5 || v6[0] == 3;
}

uint64_t sub_24EAFEE48()
{

  return swift_deallocObject();
}

id sub_24EAFEE80()
{
  if (*(v0 + 16))
  {
    v1 = &selRef_enterBackground;
  }

  else
  {
    v1 = &selRef_enterForeground;
  }

  return [*(*(v0 + 24) + 16) *v1];
}

uint64_t sub_24EAFEEAC()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFEF0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v9 = a1;
  v8 = a2;
  v7 = a4;
  return v5(&v9, &v8, a3, &v7);
}

uint64_t objectdestroy_72Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_66Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EAFF060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAFF164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v47 - v7;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = &v47 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  if ((sub_24F928328() & 1) == 0)
  {
    v48 = v8;
    v49 = v9;
    v50 = a2;
    v52 = a3;
    sub_24F928398();
    sub_24EB02020();
    sub_24F928208();
    v27 = *(v12 + 8);
    v25 = (v12 + 8);
    v26 = v27;
    v27(v19, v11);
    v28 = v57;
    v29 = v11;
    v30 = a1;
    sub_24F928398();
    sub_24EB02074();
    sub_24F928208();
    v51 = v29;
    v27(v19, v29);
    v22 = v57;
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        if (v28 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        goto LABEL_26;
      }

      v31 = v50;
      if (v28)
      {
        v40 = v53;
        sub_24F928398();
        v21 = JSONObject.appStoreColor.getter();
        (*(v49 + 8))(v31, v48);
        v41 = v51;
        v26(v30, v51);
        result = v26(v40, v41);
        v23 = 0uLL;
        if (v21)
        {
          v24 = 0x2000;
          goto LABEL_26;
        }
      }

      else
      {
        type metadata accessor for Artwork(0);
        sub_24F928398();
        v32 = v48;
        v33 = v49;
        (*(v49 + 16))(v55, v31, v48);
        sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        sub_24F929548();
        (*(v33 + 8))(v31, v32);
        result = v26(v30, v51);
        v21 = v57;
        v23 = 0uLL;
        if (v57)
        {
          v24 = 0;
LABEL_26:
          a3 = v52;
          goto LABEL_27;
        }
      }

      v22 = 0;
LABEL_25:
      v24 = 0x8000;
      goto LABEL_26;
    }

    if (v28 > 5)
    {
      if (v28 == 6)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        v21 = 3;
        goto LABEL_26;
      }

      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v51;
    }

    else
    {
      if (v28 != 4)
      {
        sub_24F928398();
        v43 = v49;
        v42 = v50;
        v44 = v48;
        (*(v49 + 16))(v55, v50, v48);
        sub_24EB020C8();
        sub_24F929548();
        (*(v43 + 8))(v42, v44);
        result = v26(v30, v51);
        if (v60 != 255)
        {
          v23 = v59;
          v45 = v60 | (v22 << 8);
          v21 = v57;
          v22 = v58;
          v24 = v45 | 0x6000;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      sub_24F928398();
      v34 = v54;
      sub_24F9282B8();
      v35 = v51;
      v26(v14, v51);
      v36 = sub_24F92AC28();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v34, 1, v36) != 1)
      {
        sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
        v55 = v25;
        v21 = sub_24F92ABB8();
        (*(v37 + 8))(v34, v36);
        sub_24F928398();
        sub_24EB0211C();
        sub_24F928208();
        v26(v19, v35);
        v46 = v57;
        sub_24F928398();
        sub_24F928208();
        (*(v49 + 8))(v50, v48);
        v26(v30, v35);
        result = v26(v19, v35);
        v22 = v46 | (v22 << 16) | (v56 << 8);
        v23 = 0uLL;
        v24 = 0x4000;
        goto LABEL_26;
      }

      sub_24E601704(v34, &qword_27F2213B0, &qword_24F965EC0);
      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v35;
    }

    result = v26(v38, v39);
LABEL_23:
    v21 = 0;
    v22 = 0;
    v23 = 0uLL;
    goto LABEL_25;
  }

  (*(v9 + 8))(a2, v8);
  result = (*(v12 + 8))(a1, v11);
  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0x8000;
LABEL_27:
  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24;
  return result;
}

GameStoreKit::ShelfBackgroundStyle_optional __swiftcall ShelfBackgroundStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ShelfBackgroundStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_24EAFFAC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x6974616D6F747561;
    v3 = 0xE900000000000063;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802658148;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24EAFFBCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802658148;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EAFFC24()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAFFCC0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAFFD48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::ShelfBackgroundGradientLocation_optional __swiftcall ShelfBackgroundGradientLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ShelfBackgroundGradientLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696461654C706F74;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 6)
  {
    v3 = 0x676E696461656CLL;
  }

  v4 = 0x72546D6F74746F62;
  if (v1 != 4)
  {
    v4 = 0x6D6F74746F62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C69617254706F74;
  if (v1 != 2)
  {
    v5 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v2 = 7368564;
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

void sub_24EAFFF88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x696461654C706F74;
  v5 = 0xED0000676E696461;
  v6 = 0x654C6D6F74746F62;
  if (v2 != 6)
  {
    v6 = 0x676E696461656CLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEE00676E696C6961;
  v8 = 0x72546D6F74746F62;
  if (v2 != 4)
  {
    v8 = 0x6D6F74746F62;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000676E69;
  v10 = 0x6C69617254706F74;
  if (v2 != 2)
  {
    v10 = 0x676E696C69617274;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 7368564;
    v3 = 0xE300000000000000;
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

uint64_t sub_24EB000C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB00194(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EB0024C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EB00314@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EB01FD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24EB00344(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x726F6C6F43656E6FLL;
  v4 = 0xEA0000000000726FLL;
  v5 = 0x6C6F436565726874;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F4372756F66;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F436F7774;
    v2 = 0xE800000000000000;
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

uint64_t ShelfBackgroundMaterialGradientColors.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v97 = sub_24F928388();
  v4 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v86 - v7;
  MEMORY[0x28223BE20](v8);
  v92 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v94 = &v86 - v11;
  MEMORY[0x28223BE20](v12);
  v90 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v86 - v30;
  sub_24F928398();
  sub_24EB00F64();
  v32 = v95;
  sub_24F928218();
  if (!v32)
  {
    v87 = v16;
    v88 = v22;
    v37 = v94;
    v95 = 0;
    v38 = v31;
    v39 = v97;
    v40 = *(v4 + 8);
    v40(v38);
    v41 = v98;
    if (v98 > 1u)
    {
      if (v98 != 2)
      {
        v65 = a1;
        sub_24F928398();
        v66 = JSONObject.appStoreColor.getter();
        v67 = v37;
        v53 = v40;
        v49 = v66;
        (v40)(v67, v39);
        if (v49)
        {
          v68 = v92;
          sub_24F928398();
          v69 = JSONObject.appStoreColor.getter();
          (v40)(v68, v39);
          if (v69)
          {
            v92 = v69;
            v70 = v91;
            sub_24F928398();
            v71 = v65;
            v52 = JSONObject.appStoreColor.getter();
            v53(v70, v39);
            if (v52)
            {
              v72 = v89;
              v94 = v71;
              sub_24F928398();
              v51 = JSONObject.appStoreColor.getter();
              v53(v72, v39);
              if (v51)
              {
                v50 = v92;
                goto LABEL_17;
              }

              v49 = v52;
              v65 = v94;
            }

            else
            {

              v49 = v92;
              v65 = v71;
            }
          }
        }

        v83 = sub_24F92AC38();
        sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        *v84 = 0x73726F6C6F63;
        v84[1] = 0xE600000000000000;
        v84[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v83 - 8) + 104))(v84, *MEMORY[0x277D22530], v83);
        swift_willThrow();
        v85 = sub_24F9285B8();
        (*(*(v85 - 8) + 8))(v96, v85);
        return (v53)(v65, v39);
      }

      v54 = a1;
      sub_24F928398();
      v55 = JSONObject.appStoreColor.getter();
      v56 = v19;
      v57 = v40;
      v49 = v55;
      (v40)(v56, v39);
      if (v49)
      {
        v58 = v87;
        sub_24F928398();
        v50 = JSONObject.appStoreColor.getter();
        v57(v58, v39);
        v86 = v57;
        if (v50)
        {
          v59 = v90;
          v94 = a1;
          sub_24F928398();
          v51 = JSONObject.appStoreColor.getter();
          v57(v59, v39);
          if (v51)
          {
            v52 = 0;
            v53 = v86;
            v39 = v97;
LABEL_17:
            v63 = sub_24F9285B8();
            (*(*(v63 - 8) + 8))(v96, v63);
            result = (v53)(v94, v39);
            v64 = v93;
            *v93 = v49;
            v64[1] = v50;
            v64[2] = v51;
            v64[3] = v52;
            *(v64 + 32) = v41;
            return result;
          }

          v76 = v94;

          v49 = v50;
        }

        else
        {
          v76 = a1;
        }

        v57 = v86;
        v39 = v97;
        v54 = v76;
      }

      v80 = sub_24F92AC38();
      sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v81 = 0x73726F6C6F63;
      v81[1] = 0xE600000000000000;
      v81[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
      (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277D22530], v80);
      swift_willThrow();
      v82 = sub_24F9285B8();
      (*(*(v82 - 8) + 8))(v96, v82);
      return (v57)(v54, v39);
    }

    if (!v98)
    {
      v42 = v28;
      v43 = a1;
      sub_24F928398();
      v44 = JSONObject.appStoreColor.getter();
      v45 = v42;
      v46 = v39;
      v47 = v39;
      v48 = v40;
      v49 = v44;
      (v40)(v45, v47);
      if (!v49)
      {
        v73 = sub_24F92AC38();
        sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        *v74 = 0x726F6C6F63;
        v74[1] = 0xE500000000000000;
        v74[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D22530], v73);
        swift_willThrow();
        v75 = sub_24F9285B8();
        (*(*(v75 - 8) + 8))(v96, v75);
        return (v40)(v43, v46);
      }

      v94 = a1;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = v48;
      goto LABEL_16;
    }

    sub_24F928398();
    v60 = v40;
    v49 = JSONObject.appStoreColor.getter();
    (v40)(v25, v39);
    if (v49)
    {
      v61 = v88;
      sub_24F928398();
      v50 = JSONObject.appStoreColor.getter();
      v62 = v61;
      v46 = v39;
      v60(v62, v39);
      v53 = v60;
      if (v50)
      {
        v94 = a1;
        v51 = 0;
        v52 = 0;
LABEL_16:
        v39 = v46;
        goto LABEL_17;
      }
    }

    v77 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v78 = 0x73726F6C6F63;
    v78[1] = 0xE600000000000000;
    v78[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    v79 = sub_24F9285B8();
    (*(*(v79 - 8) + 8))(v96, v79);
    return (v60)(a1, v39);
  }

  v33 = sub_24F9285B8();
  (*(*(v33 - 8) + 8))(v96, v33);
  v34 = *(v4 + 8);
  v35 = v97;
  v34(a1, v97);
  return (v34)(v31, v35);
}

unint64_t sub_24EB00F64()
{
  result = qword_27F2283C0;
  if (!qword_27F2283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283C0);
  }

  return result;
}

uint64_t ShelfBackgroundMaterialGradientColors.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      MEMORY[0x253052A00](2);
    }

    else
    {
      MEMORY[0x253052A00](3);
      sub_24F92C418();
    }

    sub_24F92C418();
    sub_24F92C418();
  }

  else if (*(v1 + 32))
  {
    MEMORY[0x253052A00](1);
    sub_24F92C418();
  }

  else
  {
    MEMORY[0x253052A00](0);
  }

  return sub_24F92C418();
}

uint64_t ShelfBackgroundMaterialGradientColors.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_24F92D068();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x253052A00](2);
    }

    else
    {
      MEMORY[0x253052A00](3);
      sub_24F92C418();
    }

    sub_24F92C418();
    sub_24F92C418();
  }

  else if (v1)
  {
    MEMORY[0x253052A00](1);
    sub_24F92C418();
  }

  else
  {
    MEMORY[0x253052A00](0);
  }

  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24EB011C8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24F92D068();
  ShelfBackgroundMaterialGradientColors.hash(into:)(v4);
  return sub_24F92D0B8();
}

uint64_t sub_24EB01220()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24F92D068();
  ShelfBackgroundMaterialGradientColors.hash(into:)(v4);
  return sub_24F92D0B8();
}

id sub_24EB01274@<X0>(uint64_t *a2@<X8>)
{
  result = JSONObject.appStoreColor.getter();
  *a2 = result;
  return result;
}

unint64_t sub_24EB012E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EB01F88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24EB01310(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B726F77747261;
  v5 = 0xED00006563696F68;
  v6 = 0x4373726F74696465;
  if (v2 != 6)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E656964617267;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000024FA42360;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB0000000079616CLL;
  v10 = 0x7265764F6B726164;
  if (v2 != 2)
  {
    v10 = 0x7463617265746E69;
    v9 = 0xEB00000000657669;
  }

  if (*v1)
  {
    v4 = 0x726F6C6F63;
    v3 = 0xE500000000000000;
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

uint64_t _s12GameStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = v4;
  v14[3] = v5;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
      sub_24E951F4C(v8, v7, v9, v10, 2u);
      sub_24E951F4C(v3, v2, v4, v5, 2u);
      if (sub_24F92C408() & 1) != 0 && (sub_24F92C408())
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_18;
      }

      sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
      sub_24E951F4C(v8, v7, v9, v10, 3u);
      sub_24E951F4C(v3, v2, v4, v5, 3u);
      if (sub_24F92C408() & 1) != 0 && (sub_24F92C408() & 1) != 0 && (sub_24F92C408())
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    if (v11 != 1)
    {
      goto LABEL_18;
    }

    sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
    sub_24E951F4C(v8, v7, v9, v10, 1u);
    sub_24E951F4C(v3, v2, v4, v5, 1u);
    if (sub_24F92C408())
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v11)
  {
LABEL_18:
    sub_24E951F4C(v8, v7, v9, v10, v11);
    sub_24E951F4C(v3, v2, v4, v5, v6);
    goto LABEL_19;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  sub_24E951F4C(v8, v7, v9, v10, 0);
  sub_24E951F4C(v3, v2, v4, v5, 0);
LABEL_12:
  v12 = sub_24F92C408();
LABEL_20:
  sub_24E601704(v14, &qword_27F2283F0, &qword_24F981CC8);
  return v12 & 1;
}

uint64_t _s12GameStoreKit15ShelfBackgroundO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v39[0] = v3;
  v39[1] = v2;
  v39[2] = v5;
  v39[3] = v4;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = v10;
  v12 = v6 >> 13;
  v45 = v11;
  if (v6 >> 13 <= 1)
  {
    if (v12)
    {
      if ((v11 & 0xE000) != 0x2000)
      {
        goto LABEL_73;
      }

      v22 = v7;
      v23 = v9;
      v24 = v11;
      v25 = v10;
      sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
      sub_24E951F10(v22, v8, v23, v25, v24);
      sub_24E951F10(v3, v2, v5, v4, v6);
      if ((sub_24F92C408() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 >= 0x2000)
      {
        goto LABEL_73;
      }

      v19 = v7;
      sub_24E951F10(v7, v8, v9, v10, v11);
      sub_24E951F10(v3, v2, v5, v4, v6);
      if ((_s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v3, v19) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (v2 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }

      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_44;
  }

  if (v12 == 2)
  {
    if ((v11 & 0xE000) != 0x4000)
    {
      goto LABEL_73;
    }

    v20 = v7;
    sub_24E951F10(v7, v8, v9, v10, v11);
    sub_24E951F10(v3, v2, v5, v4, v6);
    if ((sub_24EA16B68(v3, v20) & 1) == 0 || (sub_24F0CA580(v2, v8) & 1) == 0 || (sub_24F0CA580(BYTE1(v2), BYTE1(v8)) & 1) == 0)
    {
      goto LABEL_74;
    }

    if (BYTE2(v2))
    {
      if (BYTE2(v2) == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (BYTE2(v2) == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
    }

    v26 = BYTE2(v8);
    if (!BYTE2(v8))
    {
LABEL_67:
      v28 = 0xE400000000000000;
      if (v21 != 1802658148)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

LABEL_44:
    if (v26 == 1)
    {
      v27 = 0x746867696CLL;
    }

    else
    {
      v27 = 0x6974616D6F747561;
    }

    if (v26 == 1)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE900000000000063;
    }

    if (v21 != v27)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v12 != 3)
  {
    if (!(v5 | v2 | v3 | v4) && v6 == 0x8000)
    {
      if ((v11 & 0xE000) == 0x8000 && !(v9 | v8 | v7 | v10) && v11 == 0x8000)
      {
        goto LABEL_88;
      }

      goto LABEL_73;
    }

    v29 = v5 | v2 | v4;
    if (v6 == 0x8000 && v3 == 1 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v6 == 0x8000 && v3 == 2 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 2)
      {
        goto LABEL_73;
      }
    }

    else if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 3)
    {
      goto LABEL_73;
    }

    if (!(v9 | v8 | v10))
    {
LABEL_88:
      v30 = 1;
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  if ((v11 & 0xE000) != 0x6000)
  {
LABEL_73:
    sub_24E951F10(v7, v8, v9, v10, v11);
    sub_24E951F10(v3, v2, v5, v4, v6);
    goto LABEL_74;
  }

  v37[0] = v3;
  v37[1] = v2;
  v37[2] = v5;
  v37[3] = v4;
  v38 = v6;
  v35[0] = v7;
  v35[1] = v8;
  v35[2] = v9;
  v35[3] = v10;
  v36 = v11;
  v13 = v8;
  v14 = v11;
  sub_24E951F10(v7, v13, v9, v10, v11);
  sub_24E951F10(v3, v2, v5, v4, v6);
  if (_s12GameStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(v37, v35))
  {
    v15 = (v6 >> 8) & 0x1F;
    v16 = (v14 >> 8) & 0x1F;
    if (v15)
    {
      if (v15 == 1)
      {
        v17 = 0x746867696CLL;
      }

      else
      {
        v17 = 0x6974616D6F747561;
      }

      if (v15 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v17 = 1802658148;
    }

    v32 = 0xE500000000000000;
    v33 = 0x746867696CLL;
    if (v16 != 1)
    {
      v33 = 0x6974616D6F747561;
      v32 = 0xE900000000000063;
    }

    if (v16)
    {
      v34 = v33;
    }

    else
    {
      v34 = 1802658148;
    }

    if (v16)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    if (v17 != v34)
    {
      goto LABEL_89;
    }

LABEL_86:
    if (v18 == v28)
    {

      goto LABEL_88;
    }

LABEL_89:
    v30 = sub_24F92CE08();

    goto LABEL_75;
  }

LABEL_74:
  v30 = 0;
LABEL_75:
  sub_24E601704(v39, &qword_27F2283E8, &qword_24F981CC0);
  return v30 & 1;
}

unint64_t sub_24EB01C04()
{
  result = qword_27F2283C8;
  if (!qword_27F2283C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283C8);
  }

  return result;
}

unint64_t sub_24EB01C5C()
{
  result = qword_27F2283D0;
  if (!qword_27F2283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283D0);
  }

  return result;
}

unint64_t sub_24EB01CB4()
{
  result = qword_27F2283D8;
  if (!qword_27F2283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283D8);
  }

  return result;
}

uint64_t sub_24EB01D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24EB01D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit15ShelfBackgroundO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 13;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_24EB01E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFC && *(a1 + 34))
  {
    return (*a1 + 4092);
  }

  v3 = ((*(a1 + 32) >> 13) | (8 * ((*(a1 + 32) >> 4) & 0x1C0 | (*(a1 + 32) >> 2)))) ^ 0xFFF;
  if (v3 >= 0xFFB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24EB01E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 4092;
    *(result + 8) = 0;
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x1FF) - (a2 << 9);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (16 * v3) & 0xFC00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_24EB01EE0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 32) = *(result + 32) & 0x303 | (a2 << 13);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x8000;
  }

  return result;
}

unint64_t sub_24EB01F34()
{
  result = qword_27F2283E0;
  if (!qword_27F2283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283E0);
  }

  return result;
}

unint64_t sub_24EB01F88(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24EB01FD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24EB02020()
{
  result = qword_27F2283F8;
  if (!qword_27F2283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283F8);
  }

  return result;
}

unint64_t sub_24EB02074()
{
  result = qword_27F228400;
  if (!qword_27F228400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228400);
  }

  return result;
}

unint64_t sub_24EB020C8()
{
  result = qword_27F228408;
  if (!qword_27F228408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228408);
  }

  return result;
}

unint64_t sub_24EB0211C()
{
  result = qword_27F228410;
  if (!qword_27F228410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228410);
  }

  return result;
}

unint64_t sub_24EB0218C()
{
  result = qword_27F228418;
  if (!qword_27F228418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228418);
  }

  return result;
}

uint64_t ResolveAllError.hashValue.getter()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

double resolveAll<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v40 = a2;
  v7 = sub_24F927D88();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92C4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v14, 1, 1, a5);
  sub_24F92A9F8();
  v17 = sub_24F92B648();
  v18 = sub_24EB03004(v14, v17, v11);
  (*(v12 + 8))(v14, v11);
  *(v16 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F90];
  v50 = a1;
  v20 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](&aBlock, v20, WitnessTable);
  v49 = aBlock;
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v44)
  {
    v22 = aBlock;
    do
    {

      dispatch_group_enter(v15);
      sub_24F92B758();
      v23 = swift_allocObject();
      v23[2] = a5;
      v23[3] = v16;
      v23[4] = v22;
      v23[5] = v15;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v15;
      v25 = v15;

      sub_24ED90514(&aBlock);
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_24F92CAD8();
      v22 = aBlock;
    }

    while (v44);
  }

  v26 = swift_allocObject();
  v27 = v34;
  v28 = v35;
  v26[2] = a5;
  v26[3] = v27;
  v26[4] = v28;
  v26[5] = v16;
  v26[6] = v19;
  v47 = sub_24EB03150;
  v48 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_24EAF8248;
  v46 = &block_descriptor_48;
  v29 = _Block_copy(&aBlock);

  v30 = v36;
  sub_24F927DA8();
  v50 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  v31 = v39;
  v32 = v42;
  sub_24F92C6A8();
  sub_24F92BE68();
  _Block_release(v29);

  (*(v41 + 8))(v31, v32);
  (*(v37 + 8))(v30, v38);

  return result;
}

uint64_t sub_24EB027EC()
{

  return swift_deallocObject();
}

uint64_t sub_24EB02828(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8);
}

uint64_t resolveAllSequentially<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v23[2] = a4;
  v24 = a3;
  v7 = sub_24F92C4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v10, 1, 1, a5);
  sub_24F92A9F8();
  v13 = sub_24F92B648();
  v14 = sub_24EB03004(v10, v13, v7);
  (*(v8 + 8))(v10, v7);
  *(v12 + 16) = v14;
  v23[1] = v12 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v28 = a1;
  v16 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](&v25, v16, WitnessTable);
  v27 = v25;
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v26)
  {
    v18 = v25;
    do
    {

      v19 = objc_autoreleasePoolPush();
      sub_24EB02BD8(v11, a1, v18, v12, v15, a5);
      objc_autoreleasePoolPop(v19);
      sub_24F92BE58();
      sub_24F92CAD8();
      v18 = v25;
    }

    while (v26);
  }

  swift_beginAccess();
  v20 = *(v12 + 16);
  swift_beginAccess();
  v21 = *(v15 + 16);

  (v24)(v20, v21);
}

uint64_t sub_24EB02BD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch_group_enter(a1);
  sub_24F92A9F8();
  sub_24F92B758();
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a4;
  v11[4] = a3;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a1;
  v13 = a1;

  sub_24ED90514(v15);
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_24EB02D18(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = sub_24F92C4A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *(a5 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a5, v12);
  (*(v15 + 56))(v14, 0, 1, a5);
  swift_beginAccess();
  sub_24F92B6E8();
  sub_24F92B5F8();
  v16 = *(a2 + 16);
  sub_24EB02FB0(a3, v16, v10);
  (*(v11 + 40))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a3, v14, v10);
  swift_endAccess();
  dispatch_group_leave(a4);
}

void sub_24EB02ECC(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E617130(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24E617130((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;
  *(a2 + 16) = v6;
  swift_endAccess();
  v10 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_24EB02FB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24EB03004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F92B608();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_24F92B6E8();
    return v8;
  }

  return result;
}

uint64_t sub_24EB03108()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EB031BC()
{
  result = qword_27F228420;
  if (!qword_27F228420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228420);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t PageEnvironment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923E98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PageEnvironment(uint64_t a1)
{
  result = qword_27F228428;
  if (!qword_27F228428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageEnvironment.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageEnvironment(0) + 28);
  v4 = sub_24F923F78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_24EB03470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

double PageGridProvider.bottomPadding(for:surroundedBy:containerSize:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

uint64_t sub_24EB035C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB03630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB03698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0;
}

uint64_t PageGridProvider.shouldAddDividerBelow(shelf:surroundedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0;
}

double PageGridProvider.dividerPadding(shelf:surroundedBy:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

uint64_t PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  v24 = sub_24F923E98();
  v12 = *(v24 - 8);
  *&v13 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DynamicTypeSize.init(contentSizeCategory:)([a1 preferredContentSizeCategory], v15);
  v23 = sub_24F92BF68();
  v16 = [a1 verticalSizeClass];
  v17 = [a1 layoutDirection];

  if (v17 + 1 > 2)
  {
    v18 = MEMORY[0x277CDFA88];
  }

  else
  {
    v18 = qword_27968C8F8[v17 + 1];
  }

  (*(v6 + 104))(v8, *v18, v5);
  v19 = *(v6 + 32);
  v19(v11, v8, v5);
  (*(v12 + 32))(a3, v15, v24);
  v20 = type metadata accessor for PageEnvironment(0);
  *(a3 + v20[5]) = v23 & 1;
  *(a3 + v20[6]) = v16 == 1;
  result = v19(a3 + v20[7], v11, v5);
  *(a3 + v20[8]) = v25 & 1;
  return result;
}

uint64_t DynamicTypeSize.init(contentSizeCategory:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  if (v4 == sub_24F92B0D8() && v6 == v7)
  {
    goto LABEL_29;
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
LABEL_6:

LABEL_30:
    v16 = MEMORY[0x277CDF9D8];
    goto LABEL_31;
  }

  v10 = sub_24F92B0D8();
  v12 = v11;
  if (v10 == sub_24F92B0D8() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {

LABEL_14:
    v16 = MEMORY[0x277CDF9F8];
    goto LABEL_31;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {

LABEL_20:
    v16 = MEMORY[0x277CDF9E0];
    goto LABEL_31;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {

    goto LABEL_20;
  }

  v22 = sub_24F92B0D8();
  v24 = v23;
  if (v22 == sub_24F92B0D8() && v24 == v25)
  {

LABEL_26:
    v16 = MEMORY[0x277CDF9E8];
    goto LABEL_31;
  }

  v26 = sub_24F92CE08();

  if (v26)
  {

    goto LABEL_26;
  }

  v27 = sub_24F92B0D8();
  v29 = v28;
  if (v27 == sub_24F92B0D8() && v29 == v30)
  {
LABEL_29:

    goto LABEL_30;
  }

  v35 = sub_24F92CE08();

  if (v35)
  {
    goto LABEL_6;
  }

  v36 = sub_24F92B0D8();
  v38 = v37;
  if (v36 == sub_24F92B0D8() && v38 == v39)
  {

LABEL_40:
    v16 = MEMORY[0x277CDF9F0];
    goto LABEL_31;
  }

  v40 = sub_24F92CE08();

  if (v40)
  {

    goto LABEL_40;
  }

  v41 = sub_24F92B0D8();
  v43 = v42;
  if (v41 == sub_24F92B0D8() && v43 == v44)
  {

LABEL_46:
    v16 = MEMORY[0x277CDFA00];
    goto LABEL_31;
  }

  v45 = sub_24F92CE08();

  if (v45)
  {

    goto LABEL_46;
  }

  v46 = sub_24F92B0D8();
  v48 = v47;
  if (v46 == sub_24F92B0D8() && v48 == v49)
  {

LABEL_52:
    v16 = MEMORY[0x277CDFA10];
    goto LABEL_31;
  }

  v50 = sub_24F92CE08();

  if (v50)
  {

    goto LABEL_52;
  }

  v51 = sub_24F92B0D8();
  v53 = v52;
  if (v51 == sub_24F92B0D8() && v53 == v54)
  {

LABEL_58:
    v16 = MEMORY[0x277CDF988];
    goto LABEL_31;
  }

  v55 = sub_24F92CE08();

  if (v55)
  {

    goto LABEL_58;
  }

  v56 = sub_24F92B0D8();
  v58 = v57;
  if (v56 == sub_24F92B0D8() && v58 == v59)
  {

LABEL_64:
    v16 = MEMORY[0x277CDF998];
    goto LABEL_31;
  }

  v60 = sub_24F92CE08();

  if (v60)
  {

    goto LABEL_64;
  }

  v61 = sub_24F92B0D8();
  v63 = v62;
  if (v61 == sub_24F92B0D8() && v63 == v64)
  {

LABEL_70:
    v16 = MEMORY[0x277CDF9A8];
    goto LABEL_31;
  }

  v65 = sub_24F92CE08();

  if (v65)
  {

    goto LABEL_70;
  }

  v66 = sub_24F92B0D8();
  v68 = v67;
  if (v66 == sub_24F92B0D8() && v68 == v69)
  {

LABEL_76:
    v16 = MEMORY[0x277CDF9B8];
    goto LABEL_31;
  }

  v70 = sub_24F92CE08();

  if (v70)
  {

    goto LABEL_76;
  }

  v71 = sub_24F92B0D8();
  v73 = v72;
  if (v71 == sub_24F92B0D8() && v73 == v74)
  {

    v16 = MEMORY[0x277CDF9D0];
  }

  else
  {
    v75 = sub_24F92CE08();

    v16 = MEMORY[0x277CDF9D8];
    if (v75)
    {
      v16 = MEMORY[0x277CDF9D0];
    }
  }

LABEL_31:
  v31 = *v16;
  v32 = sub_24F923E98();
  v33 = *(*(v32 - 8) + 104);

  return v33(a2, v31, v32);
}

uint64_t LayoutDirection.init(layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F923F78();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 + 1) > 2)
  {
    v6 = MEMORY[0x277CDFA88];
  }

  else
  {
    v6 = qword_27968C8F8[a1 + 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_24EB04340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EB04484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F923E98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24EB045A4(uint64_t a1)
{
  result = sub_24F923E98();
  if (v2 <= 0x3F)
  {
    result = sub_24F923F78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

GameStoreKit::AdPlacementType_optional __swiftcall AdPlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdPlacementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614C686372616573;
  v3 = 0x7961646F74;
  v4 = 0x50746375646F7270;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6552686372616573;
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

unint64_t sub_24EB047E0()
{
  result = qword_27F228438;
  if (!qword_27F228438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228438);
  }

  return result;
}

uint64_t sub_24EB04834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB0493C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EB04A30()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB04B40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E69646ELL;
  v4 = 0x614C686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xEF4C414D59656761;
  v8 = 0x50746375646F7270;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x800000024FA41CD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6552686372616573;
    v3 = 0xED000073746C7573;
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

uint64_t LargeHeroBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *LargeHeroBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v94 = a2;
  v86 = *v2;
  v99 = sub_24F9285B8();
  v93 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v85 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v85 - v9;
  v101 = sub_24F91F6B8();
  v97 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  v23 = v2;
  v2[16] = 0;
  v89 = v2 + 16;
  sub_24F928398();
  v24 = sub_24F928348();
  v107 = v12;
  v95 = v7;
  v96 = v13;
  v98 = a1;
  if (v25)
  {
    v102 = v24;
    v103 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v28 = v27;
    (*(v97 + 8))(v11, v101);
    v102 = v26;
    v103 = v28;
    v7 = v95;
  }

  sub_24F92C7F8();
  v101 = *(v13 + 8);
  v101(v22, v12);
  v29 = v105;
  *(v23 + 17) = v104;
  *(v23 + 19) = v29;
  v23[21] = v106;
  sub_24F929608();
  sub_24F928398();
  v30 = v94;
  v31 = *(v93 + 16);
  v97 = v93 + 16;
  v32 = v7;
  v33 = v99;
  v31(v32, v94, v99);
  v34 = v19;
  v35 = v91;
  sub_24F929548();
  v90 = v23;
  v85 = OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics;
  v36 = v35;
  v37 = v34;
  sub_24E65E0D4(v36, v23 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics);
  v38 = v100;
  v31(v100, v30, v33);
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v92 = v31;
  v31(v95, v38, v33);
  sub_24EB06168(&qword_27F225B08, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  sub_24F929548();
  v39 = v104;
  if (v104)
  {
    v40 = v90;
    v90[4] = v104;
    v91 = v39;

    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v42;
    v44 = v96 + 8;
    v45 = v34;
    v46 = v107;
    v47 = v101;
    v101(v45, v107);
    v40[2] = v41;
    v40[3] = v43;
    v48 = v87;
    sub_24F928398();
    sub_24F928398();
    sub_24E9619AC();
    sub_24F928208();
    v47(v37, v46);
    LOBYTE(v43) = v104;
    v49 = v88;
    sub_24F928398();
    LOBYTE(v41) = sub_24F928278();
    v96 = v44;
    v101 = v47;
    v47(v49, v46);
    v47(v48, v46);
    *(v40 + 40) = v43;
    *(v40 + 41) = v41 & 1;
    v50 = type metadata accessor for Artwork(0);
    sub_24F928398();
    v51 = v95;
    v52 = v99;
    v53 = v92;
    v92(v95, v100, v99);
    v86 = sub_24EB06168(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v88 = v50;
    sub_24F929548();
    v40[6] = v104;
    v54 = type metadata accessor for Video(0);
    sub_24F928398();
    v55 = v51;
    v56 = v51;
    v57 = v100;
    v53(v56, v100, v52);
    v58 = v55;
    v85 = sub_24EB06168(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    v87 = v54;
    sub_24F929548();
    v40[7] = v104;
    sub_24F928398();
    v59 = JSONObject.appStoreColor.getter();
    v101(v37, v107);
    v40[8] = v59;
    type metadata accessor for Lockup(0);
    sub_24F928398();
    v60 = v99;
    v53(v58, v57, v99);
    sub_24EB06168(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    sub_24F929548();
    v40[9] = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
    sub_24F928398();
    v53(v58, v57, v60);
    sub_24E705AFC();
    sub_24F929548();
    v40[10] = v104;
    type metadata accessor for Action(0);
    sub_24F928398();
    v61 = static Action.tryToMakeInstance(byDeserializing:using:)(v37, v57);
    v101(v37, v107);
    swift_beginAccess();
    v40[16] = v61;

    sub_24F928398();
    v53(v58, v57, v99);
    sub_24E951DC0();
    sub_24F929548();
    v62 = v102 | ((WORD2(v102) | (BYTE6(v102) << 16)) << 32);
    if (v102 == 2)
    {
      if (qword_27F2110F8 != -1)
      {
        swift_once();
      }

      LOBYTE(v62) = dword_27F23E728;
      LOBYTE(v63) = BYTE1(dword_27F23E728);
      LOBYTE(v64) = BYTE2(dword_27F23E728);
      LOBYTE(v65) = HIBYTE(dword_27F23E728);
      LOBYTE(v66) = byte_27F23E72C;
      LOBYTE(v67) = byte_27F23E72D;
      LOBYTE(v68) = byte_27F23E72E;
    }

    else
    {
      v63 = (v62 >> 8) & 1;
      v64 = (v62 >> 16) & 1;
      v65 = (v62 >> 24) & 1;
      v66 = HIDWORD(v62) & 1;
      v67 = (v62 >> 40) & 1;
      v68 = HIWORD(v62) & 1;
    }

    *(v40 + 88) = v62 & 1;
    *(v40 + 89) = v63;
    *(v40 + 90) = v64;
    *(v40 + 91) = v65;
    *(v40 + 92) = v66;
    *(v40 + 93) = v67;
    *(v40 + 94) = v68;
    v73 = v98;
    sub_24F928398();
    v74 = sub_24F928278();
    v101(v37, v107);
    *(v40 + 95) = v74;
    sub_24F928398();
    v75 = v95;
    v76 = v99;
    v77 = v100;
    v78 = v92;
    v92(v95, v100, v99);
    sub_24F929548();
    v40[12] = v102;
    sub_24F928398();
    v78(v75, v77, v76);
    sub_24F929548();
    v40[13] = v102;
    sub_24F928398();
    v79 = JSONObject.appStoreColor.getter();
    v80 = v107;
    v81 = v101;
    v101(v37, v107);
    v40[14] = v79;
    sub_24F928398();
    LOBYTE(v79) = sub_24F928278();
    v81(v37, v80);
    *(v40 + 120) = v79;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v82 = v100;
    v92(v75, v100, v76);
    sub_24EB06168(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
    sub_24F929548();

    v83 = *(v93 + 8);
    v83(v94, v76);
    v81(v73, v107);
    v83(v82, v76);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_flowPreviewActionsConfiguration) = v102;
  }

  else
  {
    v69 = sub_24F92AC38();
    sub_24EB06168(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v70 = 0x736C6961746564;
    v70[1] = 0xE700000000000000;
    v70[2] = v86;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D22530], v69);
    swift_willThrow();
    v71 = *(v93 + 8);
    v72 = v99;
    v71(v94, v99);
    v101(v98, v107);
    v71(v100, v72);
    v40 = v90;

    sub_24E6585F8((v40 + 17));
    sub_24EB05BC8(v40 + v85);
    type metadata accessor for LargeHeroBreakout(0);
    swift_deallocPartialClassInstance();
  }

  return v40;
}

uint64_t sub_24EB05BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LargeHeroBreakout(uint64_t a1)
{
  result = qword_27F228448;
  if (!qword_27F228448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LargeHeroBreakout.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void LargeHeroBreakout.detailsDisplayProperties.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 41);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

void *LargeHeroBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void LargeHeroBreakout.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[89];
  v3 = v1[90];
  v4 = v1[91];
  v5 = v1[92];
  v6 = v1[93];
  v7 = v1[94];
  *a1 = v1[88];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *LargeHeroBreakout.rtlBackgroundColor.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

double sub_24EB05D94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;

  return result;
}

double sub_24EB05E2C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;

  return result;
}

uint64_t LargeHeroBreakout.deinit()
{

  sub_24E6585F8(v0 + 136);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics);

  return v0;
}

uint64_t LargeHeroBreakout.__deallocating_deinit()
{
  LargeHeroBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_24EB06004@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for LargeHeroBreakout(0);
  v7 = swift_allocObject();
  result = LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24EB060C8(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 89);
  v3 = *(*v1 + 90);
  v4 = *(*v1 + 91);
  v5 = *(*v1 + 92);
  v6 = *(*v1 + 93);
  v7 = *(*v1 + 94);
  *a1 = *(*v1 + 88);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_24EB06168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB061B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_24EB06208(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void ItemLayoutContext.indexPath.getter()
{
  type metadata accessor for ItemLayoutContext(0);
  type metadata accessor for ShelfLayoutContext(0);

  JUMPOUT(0x253045380);
}

double ItemLayoutContext.id.getter()
{
  type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  return result;
}

uint64_t ItemLayoutContext.typedModel<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

void *ItemLayoutContext.subscript.getter()
{
  type metadata accessor for ItemLayoutContext(0);

  return swift_getAtKeyPath();
}

uint64_t type metadata accessor for ItemLayoutContext(uint64_t a1)
{
  result = qword_27F228478;
  if (!qword_27F228478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemLayoutContext.MetadataKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ItemLayoutContext.MetadataKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t ItemLayoutContext.MetadataKey.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EB067A4()
{
  sub_24F92D068();
  ItemLayoutContext.MetadataKey.hash(into:)(v1);
  return sub_24F92D0B8();
}

GameStoreKit::ItemLayoutContext::Metadata __swiftcall ItemLayoutContext.Metadata.init()()
{
  v1 = v0;
  result.contents._rawValue = sub_24E60D43C(MEMORY[0x277D84F90]);
  v1->contents._rawValue = result.contents._rawValue;
  return result;
}

uint64_t ItemLayoutContext.Metadata.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if (*(v6 + 16) && (v7 = sub_24E76D644(*a1, a1[1]), (v8 & 1) != 0))
  {
    sub_24E615E00(*(v6 + 56) + 40 * v7, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223240, &qword_24F96E1B8);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_24EB068EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *a2;
  v9[1] = a2[1];
  v9[2] = v6;
  v9[0] = v7;

  ItemLayoutContext.Metadata.subscript.getter(v9, v5, a4);
}

uint64_t sub_24EB06964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;

  return sub_24EB07508(a1, v9, v5, v6);
}

uint64_t ItemLayoutContext.Metadata.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_24EB07508(a1, a2, a3, a4);
  v6 = sub_24F92C4A8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*ItemLayoutContext.Metadata.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2, __n128 a3)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_24F92C4A8();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v18 = a2[1];
  v11[6] = v15;
  v11[7] = v17;
  v11[8] = v18;
  v19 = *v4;
  v21[1] = v18;
  v21[2] = v19;
  v21[0] = v17;
  swift_bridgeObjectRetain_n();
  ItemLayoutContext.Metadata.subscript.getter(v21, a3, v16);

  return sub_24EB06B98;
}

void sub_24EB06B98(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = (*a1)[7];
  v4 = (*a1)[8];
  v6 = (*a1)[5];
  v7 = (*a1)[6];
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    (*(v9 + 16))((*a1)[5], v7, v8, a3);
    v13 = v5;
    v14 = v4;
    sub_24EB07508(v6, &v13, v11, v10);
    v12 = *(v9 + 8);
    v12(v6, v8);
    v12(v7, v8);
  }

  else
  {
    v13 = (*a1)[7];
    v14 = v4;
    sub_24EB07508(v7, &v13, v11, v10);
    (*(v9 + 8))(v7, v8);
  }

  free(v7);
  free(v6);

  free(v3);
}

uint64_t ItemLayoutContext.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemLayoutContext(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ItemLayoutContext.metadata.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ItemLayoutContext(0) + 24));

  return result;
}

uint64_t sub_24EB06DBC(uint64_t (*a1)(char *, void *, void, uint64_t, uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - v4;
  v6 = type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  sub_24F92AD68();
  v7 = v1 + *(v6 + 32);
  v12[0] = *(v7 + *(type metadata accessor for ShelfLayoutContext(0) + 36));

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  v9 = sub_24EB076A4();
  return a1(v5, v12, MEMORY[0x277D84A98], v8, v9);
}

uint64_t ItemLayoutContext.componentLayoutOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ItemLayoutContext(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ItemLayoutContext.parentShelfLayoutContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ItemLayoutContext(0) + 32);

  return sub_24EB07708(v3, a1);
}

uint64_t ItemLayoutContext.withUpdatedLayoutOptions(_:)@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext(0);
  v14 = *(v2 + v6[7]);
  v7 = *v2;
  v8 = v6[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v8, v9);
  v10 = *(v2 + v6[6]);

  a1(&v13, &v14);
  v11 = v13;
  result = sub_24EB07708(v3 + v6[8], &a2[v6[8]]);
  *a2 = v7;
  *&a2[v6[6]] = v10;
  *&a2[v6[7]] = v11;
  return result;
}

uint64_t ItemLayoutContext.typedModel<A>(is:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_24EB07340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(char *, void *, void, uint64_t, uint64_t), uint64_t (*a7)(char *, uint64_t))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25[-1] - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25[-1] - v17;
  v19 = type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  sub_24F92AD68();
  v20 = v7 + *(v19 + 32);
  v25[0] = *(v20 + *(type metadata accessor for ShelfLayoutContext(0) + 36));

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  v22 = sub_24EB076A4();
  a6(v15, v25, MEMORY[0x277D84A98], v21, v22);
  return a7(v18, a2);
}

uint64_t sub_24EB07508(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F92C4A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *a2;
  v14 = a2[1];
  (*(v9 + 16))(&v18 - v11, a1, v8, v10);
  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = a3;
    v20 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v15 + 32))(boxed_opaque_existential_1, v12, a3);
  }

  return sub_24E989D08(&v18, v13, v14);
}

unint64_t sub_24EB076A4()
{
  result = qword_27F228460;
  if (!qword_27F228460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A6C0, &qword_24F9A56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228460);
  }

  return result;
}

uint64_t sub_24EB07708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_24EB0779C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EB077BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for ShelfLayoutContext(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24EB07904(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for ShelfLayoutContext(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24EB07A38(uint64_t a1)
{
  sub_24EB07AE4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShelfLayoutContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EB07AE4(uint64_t a1)
{
  if (!qword_27F228488[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23A6A0, &unk_24F9549D0);
    v1 = sub_24F928A68();
    if (!v2)
    {
      atomic_store(v1, qword_27F228488);
    }
  }
}

uint64_t sub_24EB07B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t LargeHeroBreakoutLayout.DetailsVerticalPostion.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v5;
  v6 = a1[12];
  v7 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v7;
  v8 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v8;
  v9 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v9;
  v10 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v10;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *a2;
  v13 = a2[1];
  *(a5 + 192) = v6;
  *(a5 + 208) = v12;
  *(a5 + 224) = v13;
  v14 = *(a3 + 16);
  *(a5 + 248) = *a3;
  *(a5 + 240) = *(a2 + 4);
  *(a5 + 264) = v14;
  *(a5 + 280) = *(a3 + 32);
  return sub_24E612C80(a4, a5 + 288);
}

uint64_t LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v19 = *a3;
  v20 = *a5;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 40) = 0u;
  v21 = a7 + 40;
  sub_24E612C80(a1, a7);
  sub_24EA63A70(a2, v21);
  *(a7 + 80) = v19;
  v22 = a4[1];
  *(a7 + 88) = *a4;
  *(a7 + 104) = v22;
  *(a7 + 113) = *(a4 + 25);
  *(a7 + 129) = v20;
  *(a7 + 136) = a8;
  *(a7 + 144) = a9;
  *(a7 + 152) = a10;
  *(a7 + 160) = a11;

  return sub_24E612C80(a6, a7 + 168);
}

uint64_t LargeHeroBreakoutLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

void LargeHeroBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

uint64_t LargeHeroBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 168));

  return sub_24E612C80(a1, v1 + 168);
}

__n128 LargeHeroBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_24EB080BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double static LargeHeroBreakoutLayout.estimatedMeasurements(fitting:using:in:)(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 21, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t LargeHeroBreakoutLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v5 + 208, v40, &qword_27F229780, &unk_24F965BB0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_24E601704(v40, &qword_27F229780, &unk_24F965BB0);
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  sub_24F92C1C8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_24E60169C(v5 + 248, &v38, &unk_27F22B200, &unk_24F9674C0);
  if (v39)
  {
    sub_24E612C80(&v38, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if (sub_24F9221E8())
    {
      sub_24E60169C(v5 + 40, &v36, &qword_27F22F780, &qword_24F968620);
      if (v37)
      {
        sub_24E612C80(&v36, &v38);
        v24 = v39;
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        sub_24E8ED7D8(v24);
        v25 = sub_24F9223A8();
        (*(v13 + 8))(v15, v12);
        if (v25 >= v21)
        {
          v25 = v21;
        }

        __swift_destroy_boxed_opaque_existential_1(&v38);
      }

      else
      {
        sub_24E601704(&v36, &qword_27F22F780, &qword_24F968620);
        v25 = v21;
      }

      *&v34[2] = v25;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      sub_24F922288();
      v34[1] = v26;
      v34[0] = v27;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v42.origin.x = v17;
      v42.origin.y = v19;
      v42.size.width = v21;
      v42.size.height = v23;
      CGRectGetMinX(v42);
      v43.origin.x = v17;
      v43.origin.y = v19;
      v43.size.width = v21;
      v43.size.height = v23;
      CGRectGetMinY(v43);
      __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
      sub_24F9223C8();
      sub_24F92C1D8();
      sub_24F922228();
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_24E601704(&v38, &unk_27F22B200, &unk_24F9674C0);
  }

  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  Width = CGRectGetWidth(v44);
  sub_24E9D43B0(a1, Width);
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  CGRectGetHeight(v45);
  __swift_project_boxed_opaque_existential_1((v6 + 288), *(v6 + 312));
  sub_24F922288();
  if (*(v6 + 80))
  {
    v29 = v17;
    v30 = v19;
    v31 = v21;
    v32 = v23;
    if (*(v6 + 80) == 1)
    {
      CGRectGetMaxX(*&v29);
    }

    else
    {
      CGRectGetMidX(*&v29);
    }
  }

  else
  {
    v46.origin.x = v17;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    CGRectGetMinX(v46);
  }

  if (*(v6 + 129) == 1)
  {
    v47.origin.x = v17;
    v47.origin.y = v19;
    v47.size.width = v21;
    v47.size.height = v23;
    CGRectGetMaxY(v47);
  }

  else
  {
    CGRectGetMidY(v35);
  }

  __swift_project_boxed_opaque_existential_1((v6 + 288), *(v6 + 312));
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

unint64_t sub_24EB087E8()
{
  result = qword_27F228510;
  if (!qword_27F228510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228510);
  }

  return result;
}

uint64_t sub_24EB08840(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EB08B60();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24EB088B0()
{
  result = qword_27F228518;
  if (!qword_27F228518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228518);
  }

  return result;
}

double sub_24EB08904(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 21, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return a3;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_24EB08A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EB08ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EB08B60()
{
  result = qword_27F228520;
  if (!qword_27F228520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228520);
  }

  return result;
}

uint64_t ErrorPresenter.ReasonForNoInternet.localizedReason.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (!*v0)
    {
      v4._countAndFlagsBits = 0x5F434952454E4547;
      v4._object = 0xED0000524F525245;
      v5._countAndFlagsBits = 0;
      v5._object = 0xE000000000000000;
      return localizedString(_:comment:)(v4, v5)._countAndFlagsBits;
    }

    v7 = 0x800000024FA52EC0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (v1 == 2)
    {
      v2 = "CELLULAR_DATA_DEVICE_ERROR";
      v3 = 0xD000000000000013;
    }

    else if (v1 == 3)
    {
      v2 = "CELLULAR_DATA_APP_ERROR";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v2 = "rk";
      v3 = 0xD000000000000017;
    }

    v7 = v2 | 0x8000000000000000;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  return localizedStringReferencingWiFi(_:comment:)(*&v3, v8)._countAndFlagsBits;
}

uint64_t ErrorPresenter.ReasonForNoInternet.solutionSensitiveURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *v1;
  if ((v9 - 3) < 2)
  {
    v10 = [objc_opt_self() settingsURL];
    if (v10)
    {
      v11 = v10;
      sub_24F91F428();

      v12 = sub_24F91F4A8();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    }

    else
    {
      v19 = sub_24F91F4A8();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    }

    v20 = v5;
    return sub_24E911D90(v20, a1);
  }

  if (v9 == 2)
  {
    v13 = [objc_opt_self() settingsURL];
    if (v13)
    {
      v14 = v13;
      sub_24F91F428();

      v15 = sub_24F91F4A8();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    }

    else
    {
      v21 = sub_24F91F4A8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    }

    v20 = v8;
    return sub_24E911D90(v20, a1);
  }

  v16 = sub_24F91F4A8();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t ErrorPresenter.ReasonForNoInternet.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

char *ErrorPresenter.init(networkInquiry:airplaneModeInquiry:cellularDataInquiry:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error] = 0;
  sub_24E615E00(a1, &v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry]);
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_airplaneModeInquiry] = a2;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_cellularDataInquiry] = a3;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v10 = a2;
  v20 = a3;
  v11 = objc_msgSendSuper2(&v23, sel_init);
  [v10 setDelegate_];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_24E74EC40();
  v15 = sub_24F92BEF8();
  v21[3] = v14;
  v21[4] = MEMORY[0x277D225C0];
  v21[0] = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v13 + 40);

  v17(v22, v21, sub_24EB0930C, v16, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  sub_24EA043F8(v22, v11 + v18);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_24EB091E0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EB09218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ErrorPresenter.update()();
    v4 = *&v3[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 24];
    v5 = *&v3[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry], v4);
    if ((*(v5 + 8))(v4, v5))
    {
      v6 = &v3[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }
  }
}

id ErrorPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_24E615E00(v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall ErrorPresenter.update()()
{
  v1 = sub_24F927D88();
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_24F92BF48();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_24EB09CC8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_24EB098A4(uint64_t a1)
{
  v2 = sub_24F927D88();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 24);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry), v9);
  if ((*(v10 + 8))(v9, v10))
  {
    v11 = 0;
  }

  else if ([*(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_airplaneModeInquiry) isEnabled])
  {
    v11 = 2;
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_cellularDataInquiry);
    if ([v12 isSupported] && !objc_msgSend(v12, sel_isEnabledForDevice))
    {
      v11 = 3;
    }

    else if ([v12 isSupported] && (v13 = v8[3], v14 = v8[4], __swift_project_boxed_opaque_existential_1(v8, v13), (*(v14 + 16))(aBlock, v13, v14), LOBYTE(aBlock[0]) == 3) && !objc_msgSend(v12, sel_isEnabledForBundle))
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }
  }

  sub_24E74EC40();
  v15 = sub_24F92BEF8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v11;
  aBlock[4] = sub_24EB0AD50;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_21;
  v18 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v18);
  _Block_release(v18);

  (*(v21 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_24EB09C90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EB09CE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_24EB09D48(&v5);
  }
}

uint64_t sub_24EB09D48(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ErrorPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ErrorPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

void sub_24EB09F58(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ErrorPresenter.reasonForNoInternet.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ErrorPresenter.message.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _s12GameStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(v2);

  return v4;
}

uint64_t ErrorPresenter.settingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if ((v10 - 3) >= 2)
  {
    if (v10 != 2)
    {
      v17 = sub_24F91F4A8();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    v14 = [objc_opt_self() settingsURL];
    if (v14)
    {
      v15 = v14;
      sub_24F91F428();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v21 = sub_24F91F4A8();
    (*(*(v21 - 8) + 56))(v8, v16, 1, v21);
    v20 = v8;
  }

  else
  {
    v11 = [objc_opt_self() settingsURL];
    if (v11)
    {
      v12 = v11;
      sub_24F91F428();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v19 = sub_24F91F4A8();
    (*(*(v19 - 8) + 56))(v5, v13, 1, v19);
    v20 = v5;
  }

  return sub_24E911D90(v20, a1);
}

void *ErrorPresenter.error.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ErrorPresenter.error.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t (*ErrorPresenter.error.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EB0A4C4;
}

uint64_t sub_24EB0A4C4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24) + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id ErrorPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _s12GameStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(void *a1)
{
  v1 = a1;
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  result = 0;
  if (IsAnyOf)
  {
    v10 = v1;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      swift_getErrorValue();
      v12 = v1;
      v13 = sub_24F92CFE8();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_24E615CF4(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_24E615CF4((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v19 = sub_24F91F268();
      v20 = [v19 userInfo];

      v21 = sub_24F92AE38();
      v22 = sub_24F92B0D8();
      if (!*(v21 + 16))
      {

        goto LABEL_13;
      }

      v24 = sub_24E76D644(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        break;
      }

      sub_24E643A9C(*(v21 + 56) + 32 * v24, &v31);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v1 = v30;
    }

LABEL_13:

LABEL_14:
    v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
    v27 = sub_24F92AF68();
    v29 = v28;

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_24F92C888();

    v31 = 0x6C616E7265746E49;
    v32 = 0xEF0A3A796C6E4F20;
    MEMORY[0x253050C20](v27, v29);

    return v31;
  }

  return result;
}

unint64_t sub_24EB0A9F4()
{
  result = qword_27F228578;
  if (!qword_27F228578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228578);
  }

  return result;
}

uint64_t sub_24EB0AA48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EB0AAA4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EB0AB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_24EB0AB98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

void sub_24EB0ABF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ErrorPresenter.error.setter(v1);
}

uint64_t sub_24EB0ACB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F48, &qword_24F974820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB0AD18()
{

  return swift_deallocObject();
}

char *sub_24EB0AD64(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v16, a3 + 32, a2);
  while (!v3)
  {
    if (*(&v17 + 1))
    {
      v13 = v16;
      v14 = v17;
      v15 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E616FEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_24E616FEC((v9 > 1), v10 + 1, 1, v6);
      }

      *(v6 + 2) = v10 + 1;
      v11 = &v6[40 * v10];
      *(v11 + 8) = v15;
      *(v11 + 2) = v13;
      *(v11 + 3) = v14;
    }

    else
    {
      sub_24E601704(&v16, &qword_27F228658, &qword_24F9C31B0);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v16, v7, v8);
  }

  return v6;
}

void *sub_24EB0AEC0(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v12, a3 + 32, a2);
  while (!v3)
  {
    if (v13)
    {
      sub_24E612C80(&v12, v14);
      sub_24E612C80(v14, &v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E61710C(0, v6[2] + 1, 1, v6);
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_24E61710C((v9 > 1), v10 + 1, 1, v6);
      }

      v6[2] = v10 + 1;
      sub_24E612C80(&v12, &v6[5 * v10 + 4]);
    }

    else
    {
      sub_24E601704(&v12, &qword_27F2171D0, &unk_24F980290);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v12, v7, v8);
  }

  return v6;
}

void *sub_24EB0B01C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v16 = *(v5 - 1);
    v17 = v8;

    v18(&v14, &v16);
    if (v3)
    {
      break;
    }

    v9 = v14;
    if (v14)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E6182C4(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_24E6182C4((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      v7[4] = v9;
      *(v7 + 40) = v10 & 1;
    }

    v5 += 16;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_24EB0B16C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a3 + 32;
  v17 = (v12 + 48);
  v26 = v12;
  v30 = (v12 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = v9;
  v28 = a1;
  v25 = (v12 + 48);
  while (1)
  {
    a1(v16, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_24E601704(v8, &unk_27F23A690, &qword_24F982880);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v9);
      v20(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E619734(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_24E619734((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v9 = v27;
      v20(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v31, v27);
      a1 = v28;
      v17 = v25;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

char *sub_24EB0B440(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a3 + 32;
  v17 = (v12 + 48);
  v26 = v12;
  v30 = (v12 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = v9;
  v28 = a1;
  v25 = (v12 + 48);
  while (1)
  {
    a1(v16, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_24E601704(v8, &qword_27F228650, &qword_24F9B0470);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v9);
      v20(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E619758(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_24E619758((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v9 = v27;
      v20(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v31, v27);
      a1 = v28;
      v17 = v25;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void sub_24EB0B714(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_24EB0B828(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 16)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;

      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_24EB0B8C4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t ImpressionsCalculator.__allocating_init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_allocObject();
  v6 = sub_24EB0E424(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ImpressionsCalculator.__allocating_init(configurationTrackerPairs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImpressionsCalculator.init(configurationTrackerPairs:)(a1, v3);
  return v2;
}

uint64_t ImpressionsCalculator.init(configurationTrackerPairs:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v44 = sub_24F929B38();
  v38 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228610, &qword_24F982800);
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = MEMORY[0x277D84F90];
  *(v2 + 24) = sub_24E60A0C8(MEMORY[0x277D84F90]);
  v13 = &unk_27F228000;
  v14 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  v15 = sub_24F929598();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v36 = v16 + 56;
  v37 = v17;
  v17((v3 + v14), 1, 1, v15);
  v18 = v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  v19 = *(a1 + 16);
  if (v19)
  {
    v33 = v15;
    v34 = v11;
    v35 = v3;
    v45 = v12;
    sub_24F4586BC(0, v19, 0);
    v40 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v41 = v6;
    v20 = v45;
    result = sub_24F929BC8();
    v22 = 0;
    v38 += 2;
    v39 = result;
    while (v22 < *(a1 + 16))
    {
      v23 = v19;
      v24 = a1;
      sub_24EB0E690(v40 + *(v41 + 72) * v22, v8);
      v25 = v8[*(v42 + 64)];
      (*v38)(v43, v8, v44);
      swift_unknownObjectRetain();
      v26 = sub_24F929B48();
      result = sub_24E601704(v8, &qword_27F228610, &qword_24F982800);
      v45 = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_24F4586BC((v27 > 1), v28 + 1, 1);
        v20 = v45;
      }

      ++v22;
      *(v20 + 16) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v19 = v23;
      a1 = v24;
      if (v23 == v22)
      {

        v11 = v34;
        v3 = v35;
        v13 = &unk_27F228000;
        v15 = v33;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_9:
    *(v3 + 16) = v20;
    v37(v11, 1, 1, v15);
    v30 = v13[196];
    swift_beginAccess();
    sub_24EB0E700(v11, v3 + v30);
    swift_endAccess();
    *(v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount) = sub_24E60A2B0(MEMORY[0x277D84F90]);
    v31 = [objc_opt_self() defaultCenter];
    [v31 addObserver:v3 selector:sel_applicationDidEnterBackgroundWithNote_ name:*MEMORY[0x277D76660] object:0];
    [v31 addObserver:v3 selector:sel_applicationWillEnterForegroundWithNote_ name:*MEMORY[0x277D76758] object:0];

    return v3;
  }

  return result;
}

uint64_t ImpressionsCalculator.init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_24EB0E424(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_24EB0BF18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  *(v2 + 24) = sub_24E60A0C8(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  v9 = sub_24F929598();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v2 + v8, 1, 1, v9);
  v12 = v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  *(v2 + 16) = a1;
  (*(v10 + 16))(v7, a2, v9);
  v11(v7, 0, 1, v9);
  v13 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  sub_24EB0E700(v7, v2 + v13);
  swift_endAccess();
  v14 = sub_24E60A2B0(MEMORY[0x277D84F90]);
  (*(v10 + 8))(a2, v9);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount) = v14;
  return v2;
}

uint64_t ImpressionsCalculator.isVisible.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0;
  }

  v1 = sub_24F929BA8();

  return v1 & 1;
}

void sub_24EB0C144(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*(*a1 + 16) + 16))
  {

    v3 = sub_24F929BA8();
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
}

void ImpressionsCalculator.isVisible.setter(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v5 += 16;

      sub_24F929BB8();

      if (v3 == v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void (*ImpressionsCalculator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(*(v1 + 16) + 16))
  {

    v3 = sub_24F929BA8();
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3 & 1;
  return sub_24EB0C2B0;
}

double ImpressionsCalculator.viewBounds.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0.0;
  }

  sub_24F929AF8();
  v2 = v1;

  return v2;
}

void sub_24EB0C35C(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(*(*a1 + 16) + 16))
  {

    sub_24F929AF8();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
  }

  *a2 = v4;
  *(a2 + 1) = v6;
  *(a2 + 2) = v8;
  *(a2 + 3) = v10;
}

void ImpressionsCalculator.viewBounds.setter(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  v7 = v4 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      if (*v9 != 1 || (*(v7 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v8;
      sub_24F929B08();

      v9 += 16;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void (*ImpressionsCalculator.viewBounds.modify(double **a1))(unint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  *(v3 + 88) = v5;
  if (*(v5 + 16))
  {

    sub_24F929AF8();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
  v4[2] = v11;
  v4[3] = v13;
  return sub_24EB0C5EC;
}

void sub_24EB0C5EC(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *((*a1)[11] + 16);
  v4 = (*a1)[10] + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  if (a2)
  {
    swift_beginAccess();
    if (v3)
    {
      v5 = 0;
      v6 = (v2[11] + 40);
      while (v5 < *(v2[11] + 16))
      {
        if (*v6 & 1) == 0 || (*(v4 + 32))
        {
        }

        else
        {

          sub_24F92C208();
        }

        ++v5;
        sub_24F929B08();

        v6 += 16;
        if (v3 == v5)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }
  }

  else
  {
    swift_beginAccess();
    if (v3)
    {
      v7 = 0;
      v8 = (v2[11] + 40);
      while (v7 < *(v2[11] + 16))
      {
        if (*v8 != 1 || (*(v4 + 32) & 1) != 0)
        {
        }

        else
        {

          sub_24F92C208();
        }

        ++v7;
        sub_24F929B08();

        v8 += 16;
        if (v3 == v7)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_18:

  free(v2);
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ImpressionsCalculator.addElement(_:at:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v38 = a1;
  v11 = sub_24F929598();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v37 = sub_24F929608();
  v18 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v22 = (*(v12 + 48))(v5 + v21, 1, v11);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v23 = sub_24F929588();
    v24 = v25;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v23, v24, v20);

  sub_24F9295B8();
  sub_24F9295B8();
  v26 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  v27 = *(v6 + v26);
  if (*(v27 + 16) && (v28 = sub_24E76DDAC(v14), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  v31 = *(v12 + 8);
  result = v31(v14, v11);
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v6 + v26);
    *(v6 + v26) = 0x8000000000000000;
    sub_24E81E0B0(v30 + 1, v17, isUniquelyReferenced_nonNull_native);
    v31(v17, v11);
    *(v6 + v26) = v39;
    v34 = swift_endAccess();
    MEMORY[0x28223BE20](v34);
    *(&v36 - 6) = v20;
    *(&v36 - 5) = a2;
    *(&v36 - 4) = a3;
    *(&v36 - 3) = a4;
    *(&v36 - 2) = a5;
    sub_24EB0B828(sub_24EB0E770, (&v36 - 8), v35);
    return (*(v18 + 8))(v20, v37);
  }

  return result;
}