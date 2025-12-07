uint64_t sub_1E64D1B48@<X0>(uint64_t a1@<X8>)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A690, &qword_1E6607060);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v100 - v2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074520, &qword_1E65F0C80);
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v100 - v3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074518, &qword_1E65F0C78);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074510, &qword_1E65F0C70);
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A698, &qword_1E6607068);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100 - v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6A0, &qword_1E6607070);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744C0, &qword_1E65F0C20);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - v12;
  v14 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v123 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v122);
  v19 = &v100 - v18;
  v114 = sub_1E65E4548();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074500, &qword_1E65F0C60);
  MEMORY[0x1EEE9AC00](v115);
  v23 = &v100 - v22;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744D0, &qword_1E65F0C30);
  MEMORY[0x1EEE9AC00](v128);
  v108 = &v100 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6A8, &qword_1E6607078);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v100 - v25;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744C8, &qword_1E65F0C28);
  MEMORY[0x1EEE9AC00](v125);
  v112 = &v100 - v26;
  if ((sub_1E637E938() & 1) == 0)
  {
    if ((sub_1E637E938() & 1) == 0 && (sub_1E637E938() & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_1E60C164C();
      return sub_1E65E4138();
    }

    v116 = v13;
    v117 = v5;
    v118 = v11;
    v119 = v7;
    v120 = v9;
    v121 = a1;
    sub_1E65E4B48();
    sub_1E65E4A18();
    v67 = sub_1E65E46C8();
    v69 = v68;
    v71 = v70;
    LODWORD(v129) = sub_1E65E41D8();
    v72 = sub_1E65E4648();
    v74 = v73;
    v76 = v75;
    sub_1E6012728(v67, v69, v71 & 1);

    sub_1E65E4558();
    sub_1E65E44B8();

    v77 = sub_1E65E4668();
    v79 = v78;
    LOBYTE(v67) = v80;
    v82 = v81;

    sub_1E6012728(v72, v74, v76 & 1);

    v129 = v77;
    v130 = v79;
    v83 = v67 & 1;
    LOBYTE(v131) = v67 & 1;
    v132 = v82;
    v84 = *MEMORY[0x1E697E728];
    v85 = sub_1E65E3DD8();
    (*(*(v85 - 8) + 104))(v19, v84, v85);
    sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1E65E5B98();
    if (result)
    {
      sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
      v86 = v101;
      sub_1E65E4848();
      sub_1E5DFE50C(v19, &unk_1ED0776B0, &unk_1E65EDE50);
      sub_1E6012728(v77, v79, v83);

      v87 = v103;
      v88 = &v103[*(v100 + 36)];
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073840, &qword_1E65EDBA0) + 28);
      v90 = *MEMORY[0x1E69816E0];
      v91 = sub_1E65E4A28();
      (*(*(v91 - 8) + 104))(v88 + v89, v90, v91);
      *v88 = swift_getKeyPath();
      (*(v102 + 32))(v87, v86, v104);
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.435294118 alpha:1.0];
      v92 = sub_1E65E4968();
      v93 = v106;
      sub_1E5FAB460(v87, v106, &qword_1ED074520, &qword_1E65F0C80);
      v94 = v93 + *(v105 + 36);
      *v94 = v92;
      *(v94 + 8) = xmmword_1E6606FF0;
      *(v94 + 24) = 0x4000000000000000;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v96 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      v129 = sub_1E65E5D48();
      v130 = v97;
      sub_1E60C1F28();
      sub_1E5F9AEA8();
      v63 = v107;
      sub_1E65E4868();

      sub_1E5DFE50C(v93, &qword_1ED074518, &qword_1E65F0C78);
      v65 = &qword_1ED074510;
      v66 = &qword_1E65F0C70;
      sub_1E5DFD1CC(v63, v127, &qword_1ED074510, &qword_1E65F0C70);
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v116 = v13;
  v117 = v5;
  v118 = v11;
  v119 = v7;
  v120 = v9;
  v121 = a1;
  sub_1E65E49F8();
  v27 = sub_1E65E46C8();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074508, &qword_1E65F0C68) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073840, &qword_1E65EDBA0) + 28);
  v36 = *MEMORY[0x1E69816E0];
  v37 = sub_1E65E4A28();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v23 = v27;
  *(v23 + 1) = v29;
  v23[16] = v31 & 1;
  *(v23 + 3) = v33;
  sub_1E65E4568();
  sub_1E65E44B8();

  v38 = v113;
  v39 = v114;
  (*(v113 + 104))(v21, *MEMORY[0x1E6980EA8], v114);
  v40 = sub_1E65E4578();

  (*(v38 + 8))(v21, v39);
  KeyPath = swift_getKeyPath();
  v42 = &v23[*(v115 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = *MEMORY[0x1E697E728];
  v44 = sub_1E65E3DD8();
  (*(*(v44 - 8) + 104))(v19, v43, v44);
  sub_1E64D5E48(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1E60C1B8C();
  sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
  v46 = v108;
  sub_1E65E4848();
  sub_1E5DFE50C(v19, &unk_1ED0776B0, &unk_1E65EDE50);
  sub_1E5DFE50C(v23, &qword_1ED074500, &qword_1E65F0C60);
  v47 = sub_1E65E49A8();
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744F8, &qword_1E65F0C58) + 36)) = v47;
  LOBYTE(v47) = sub_1E65E4438();
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744F0, &qword_1E65F0C50) + 36);
  *v48 = v47;
  *(v48 + 8) = xmmword_1E6607000;
  *(v48 + 24) = xmmword_1E6607010;
  *(v48 + 40) = 0;
  v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744E8, &qword_1E65F0C48) + 36);
  sub_1E65E4B38();
  v50 = sub_1E65E4438();
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)) = v50;
  v51 = swift_getKeyPath();
  v52 = (v46 + *(v128 + 36));
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074470, &qword_1E65F0BD8) + 28);
  v54 = *MEMORY[0x1E697DBB8];
  v55 = sub_1E65E3C28();
  (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
  *v52 = v51;
  sub_1E65E4B58();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744D8, &qword_1E65F0C38);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0744E0, &qword_1E65F0C40);
  v57 = sub_1E60C183C();
  v58 = sub_1E60C1CFC();
  v99 = sub_1E60C1DB4();
  v59 = v109;
  sub_1E65E4928();
  sub_1E5DFE50C(v46, &qword_1ED0744D0, &qword_1E65F0C30);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  v60 = swift_getObjCClassFromMetadata();
  v61 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v137 = sub_1E65E5D48();
  v138 = v62;
  v129 = v128;
  v130 = MEMORY[0x1E6981CD8];
  v131 = v122;
  v132 = v56;
  v133 = v57;
  v134 = MEMORY[0x1E6981CD0];
  v135 = v58;
  v136 = v99;
  swift_getOpaqueTypeConformance2();
  sub_1E5F9AEA8();
  v63 = v112;
  v64 = v111;
  sub_1E65E4868();

  (*(v110 + 8))(v59, v64);
  v65 = &qword_1ED0744C8;
  v66 = &qword_1E65F0C28;
  sub_1E5DFD1CC(v63, v127, &qword_1ED0744C8, &qword_1E65F0C28);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_1E60C16D8();
  sub_1E60C1E6C();
  v98 = v116;
  sub_1E65E4138();
  sub_1E5DFD1CC(v98, v120, &qword_1ED0744C0, &qword_1E65F0C20);
  swift_storeEnumTagMultiPayload();
  sub_1E60C164C();
  sub_1E65E4138();
  sub_1E5DFE50C(v98, &qword_1ED0744C0, &qword_1E65F0C20);
  return sub_1E5DFE50C(v63, v65, v66);
}

uint64_t sub_1E64D2DD0@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v247 = a2;
  v252 = a3;
  v253 = a1;
  v205 = type metadata accessor for WorkoutPlanArtworkViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v205);
  v172 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077398, &qword_1E65F9C58);
  MEMORY[0x1EEE9AC00](v201);
  v203 = &v169 - v4;
  v204 = sub_1E65E55C8();
  v174 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v173 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1E65D9388();
  v196 = *(v197 - 8);
  v6 = MEMORY[0x1EEE9AC00](v197);
  v171 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v200 = &v169 - v8;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A0, &unk_1E65FA5B0);
  v9 = MEMORY[0x1EEE9AC00](v239);
  v202 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v169 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v194 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v233 = &v169 - v15;
  v234 = sub_1E65D76F8();
  v206 = *(v234 - 8);
  v16 = MEMORY[0x1EEE9AC00](v234);
  v170 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v198 = &v169 - v18;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6D8, &qword_1E6607160);
  MEMORY[0x1EEE9AC00](v236);
  v237 = &v169 - v19;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778D0, &qword_1E65EBC20);
  MEMORY[0x1EEE9AC00](v251);
  v238 = &v169 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v189 = &v169 - v22;
  v187 = sub_1E65DB288();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v184 = &v169 - v25;
  v192 = sub_1E65DB048();
  v191 = *(v192 - 8);
  v26 = MEMORY[0x1EEE9AC00](v192);
  v190 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v223 = &v169 - v28;
  v235 = sub_1E65DB118();
  v195 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v193 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v181 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v228 = &v169 - v33;
  v229 = sub_1E65DB268();
  v226 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v225 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6E0, &qword_1E6607168);
  MEMORY[0x1EEE9AC00](v227);
  v230 = (&v169 - v35);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072798, &qword_1E65EBC18);
  MEMORY[0x1EEE9AC00](v246);
  v232 = &v169 - v36;
  v224 = sub_1E65DB748();
  v222 = *(v224 - 8);
  v37 = *(v222 + 64);
  v38 = MEMORY[0x1EEE9AC00](v224);
  v215 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v216 = &v169 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v211 = &v169 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v213 = &v169 - v43;
  v231 = sub_1E65DAFB8();
  v183 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v182 = &v169 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v219 = *(v220 - 8);
  v45 = *(v219 + 64);
  v46 = MEMORY[0x1EEE9AC00](v220);
  v180 = &v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v218 = &v169 - v47;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6E8, &qword_1E6607170);
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v169 - v48;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6F0, &qword_1E6607178);
  MEMORY[0x1EEE9AC00](v242);
  v244 = &v169 - v49;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A6F8, &qword_1E6607180);
  MEMORY[0x1EEE9AC00](v212);
  v217 = (&v169 - v50);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778B0, &qword_1E65EBC10);
  MEMORY[0x1EEE9AC00](v243);
  v221 = &v169 - v51;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778A0, &unk_1E65FA580);
  MEMORY[0x1EEE9AC00](v248);
  v245 = &v169 - v52;
  v209 = type metadata accessor for AppComposer(0);
  v240 = *(v209 - 8);
  v53 = *(v240 + 64);
  v54 = MEMORY[0x1EEE9AC00](v209);
  v55 = &v169 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v241 = &v169 - v56;
  v210 = sub_1E65DBDF8();
  v177 = *(v210 - 8);
  v57 = *(v177 + 64);
  v58 = MEMORY[0x1EEE9AC00](v210);
  v175 = &v169 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v207 = &v169 - v59;
  v208 = sub_1E65DBB28();
  v176 = *(v208 - 8);
  v60 = *(v176 + 64);
  v61 = MEMORY[0x1EEE9AC00](v208);
  v62 = &v169 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v169 - v63;
  v214 = sub_1E65DB9C8();
  v179 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v178 = &v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v169 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64D5E90(v253, v68, type metadata accessor for ArtworkContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v105 = *(v68 + 1);
      v253 = *v68;
      v239 = v105;
      sub_1E65DAE38();
      sub_1E65DAE38();
      sub_1E65DBB08();
      v133 = v247;
      v134 = v241;
      sub_1E64D5E90(v247, v241, type metadata accessor for AppComposer);
      v135 = *(v240 + 80);
      v136 = (v135 + 16) & ~v135;
      v240 = v136;
      v237 = v136 + v53;
      v238 = (v135 | 7);
      v137 = swift_allocObject();
      sub_1E5E1FA80(v134, v137 + v136);
      v138 = v207;
      sub_1E65DBDE8();
      sub_1E64D5E90(v133, v134, type metadata accessor for AppComposer);
      v139 = v177;
      v140 = v175;
      (*(v177 + 16))(v175, v138, v210);
      v141 = v176;
      (*(v176 + 16))(v62, v64, v208);
      v142 = (v237 + *(v139 + 80)) & ~*(v139 + 80);
      v143 = (v57 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
      v144 = (*(v141 + 80) + v143 + 16) & ~*(v141 + 80);
      v145 = swift_allocObject();
      sub_1E5E1FA80(v134, v145 + v240);
      v146 = v210;
      (*(v139 + 32))(v145 + v142, v140, v210);
      v147 = (v145 + v143);
      v148 = v239;
      *v147 = v253;
      v147[1] = v148;
      v149 = v208;
      (*(v141 + 32))(v145 + v144, v62, v208);
      v150 = v178;
      sub_1E65DB9B8();
      (*(v139 + 8))(v207, v146);
      (*(v141 + 8))(v64, v149);
      v151 = v179;
      v152 = v214;
      (*(v179 + 16))(v217, v150, v214);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E64D5E48(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
      v153 = v221;
      sub_1E65E4138();
      sub_1E5DFD1CC(v153, v244, &unk_1ED0778B0, &qword_1E65EBC10);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB550();
      sub_1E5FEB638();
      v154 = v245;
      sub_1E65E4138();
      sub_1E5DFE50C(v153, &unk_1ED0778B0, &qword_1E65EBC10);
      sub_1E5DFD1CC(v154, v250, &unk_1ED0778A0, &unk_1E65FA580);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB4C4();
      sub_1E5FEB7A4();
      sub_1E65E4138();
      sub_1E5DFE50C(v154, &unk_1ED0778A0, &unk_1E65FA580);
      return (*(v151 + 8))(v150, v152);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v70 = v219;
      v71 = *(v219 + 32);
      v241 = v219 + 32;
      v253 = v71;
      v72 = v218;
      v73 = v68;
      v74 = v220;
      v71(v218, v73, v220);
      v75 = v222;
      v76 = v213;
      v77 = v224;
      (*(v222 + 104))(v213, *MEMORY[0x1E69CD5B8], v224);
      sub_1E64D5E90(v247, v55, type metadata accessor for AppComposer);
      (*(v75 + 16))(v211, v76, v77);
      v78 = v180;
      (*(v70 + 16))(v180, v72, v74);
      v79 = (*(v240 + 80) + 16) & ~*(v240 + 80);
      v80 = (v53 + *(v75 + 80) + v79) & ~*(v75 + 80);
      v81 = (v37 + *(v70 + 80) + v80) & ~*(v70 + 80);
      v82 = swift_allocObject();
      sub_1E5E1FA80(v55, v82 + v79);
      (*(v75 + 32))(v82 + v80, v211, v77);
      v83 = v220;
      v253(v82 + v81, v78, v220);
      v84 = v182;
      sub_1E65DAFA8();
      (*(v75 + 8))(v213, v77);
      v85 = v183;
      v86 = v231;
      (*(v183 + 16))(v230, v84, v231);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778C0, &unk_1E65FA5A0);
      sub_1E64D5E48(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8], MEMORY[0x1E699CFB0]);
      sub_1E5FEB6F4();
      v87 = v232;
      sub_1E65E4138();
      sub_1E5DFD1CC(v87, v244, &qword_1ED072798, &qword_1E65EBC18);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB550();
      sub_1E5FEB638();
      v88 = v245;
      sub_1E65E4138();
      sub_1E5DFE50C(v87, &qword_1ED072798, &qword_1E65EBC18);
      sub_1E5DFD1CC(v88, v250, &unk_1ED0778A0, &unk_1E65FA580);
      swift_storeEnumTagMultiPayload();
      sub_1E5FEB4C4();
      sub_1E5FEB7A4();
      sub_1E65E4138();
      sub_1E5DFE50C(v88, &unk_1ED0778A0, &unk_1E65FA580);
      (*(v85 + 8))(v84, v86);
      return (*(v219 + 8))(v218, v83);
    }

    v123 = *v68;
    v124 = *(v68 + 1);
    sub_1E6049490();
    v125 = sub_1E63E9F24(v123, v124);
    if (v125)
    {
      v126 = v125;
      v254 = sub_1E65E4968();
      v255 = 256;
      v256 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
      sub_1E65E4138();
    }

    else
    {
      v162 = [objc_opt_self() tertiarySystemFillColor];
      v254 = sub_1E65E4968();
      v255 = 256;
      v256 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
      sub_1E65E4138();
    }

    v163 = v257;
    v164 = v258;
    v165 = v259;
    v166 = v230;
    *v230 = v257;
    *(v166 + 4) = v164;
    *(v166 + 10) = v165;
    swift_storeEnumTagMultiPayload();
    j__swift_retain(v163);
    j__swift_retain(v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778C0, &unk_1E65FA5A0);
    sub_1E64D5E48(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8], MEMORY[0x1E699CFB0]);
    sub_1E5FEB6F4();
    v167 = v232;
    sub_1E65E4138();
    sub_1E5DFD1CC(v167, v244, &qword_1ED072798, &qword_1E65EBC18);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB550();
    sub_1E5FEB638();
    v168 = v245;
    sub_1E65E4138();
    sub_1E5DFE50C(v167, &qword_1ED072798, &qword_1E65EBC18);
    sub_1E5DFD1CC(v168, v250, &unk_1ED0778A0, &unk_1E65FA580);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();
    j__swift_release(v163);
    j__swift_release(v163);
    v132 = v168;
    return sub_1E5DFE50C(v132, &unk_1ED0778A0, &unk_1E65FA580);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    (*(v226 + 32))(v225, v68, v229);
    v107 = v228;
    sub_1E5FAB460(&v68[v106], v228, &qword_1ED073548, &qword_1E65ED508);
    sub_1E65DB238();
    sub_1E5DFD1CC(v107, v181, &qword_1ED073548, &qword_1E65ED508);
    (*(v186 + 104))(v185, *MEMORY[0x1E699D140], v187);
    sub_1E65DB228();
    v108 = v223;
    sub_1E65DB018();
    v109 = v222;
    v110 = v216;
    v111 = v224;
    (*(v222 + 104))(v216, *MEMORY[0x1E69CD5B8], v224);
    sub_1E64D5E90(v247, v241, type metadata accessor for AppComposer);
    (*(v109 + 16))(v215, v110, v111);
    v112 = v191;
    v113 = v190;
    v114 = v192;
    (*(v191 + 16))(v190, v108, v192);
    v115 = (*(v240 + 80) + 16) & ~*(v240 + 80);
    v116 = (v53 + *(v109 + 80) + v115) & ~*(v109 + 80);
    v117 = (v37 + *(v112 + 80) + v116) & ~*(v112 + 80);
    v118 = swift_allocObject();
    sub_1E5E1FA80(v241, v118 + v115);
    (*(v109 + 32))(v118 + v116, v215, v111);
    (*(v112 + 32))(v118 + v117, v113, v114);
    v119 = v193;
    sub_1E65DB108();
    (*(v109 + 8))(v216, v111);
    (*(v112 + 8))(v223, v114);
    v120 = v195;
    v121 = v235;
    (*(v195 + 16))(v237, v119, v235);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D6DA0, MEMORY[0x1E699D070], MEMORY[0x1E699D068]);
    sub_1E5FEB860();
    v122 = v238;
    sub_1E65E4138();
    sub_1E5DFD1CC(v122, v250, &unk_1ED0778D0, &qword_1E65EBC20);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();
    sub_1E5DFE50C(v122, &unk_1ED0778D0, &qword_1E65EBC20);
    (*(v120 + 8))(v119, v121);
    sub_1E5DFE50C(v228, &qword_1ED073548, &qword_1E65ED508);
    return (*(v226 + 8))(v225, v229);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v127 = [objc_opt_self() tertiarySystemFillColor];
    v128 = sub_1E65E4968();
    v129 = v217;
    *v217 = v128;
    *(v129 + 4) = 256;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
    sub_1E64D5E48(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    v130 = v221;
    sub_1E65E4138();
    sub_1E5DFD1CC(v130, v244, &unk_1ED0778B0, &qword_1E65EBC10);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB550();
    sub_1E5FEB638();
    v131 = v245;
    sub_1E65E4138();
    sub_1E5DFE50C(v130, &unk_1ED0778B0, &qword_1E65EBC10);
    sub_1E5DFD1CC(v131, v250, &unk_1ED0778A0, &unk_1E65FA580);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    sub_1E65E4138();

    v132 = v131;
    return sub_1E5DFE50C(v132, &unk_1ED0778A0, &unk_1E65FA580);
  }

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
  v91 = *(v90 + 48);
  v92 = *&v68[*(v90 + 64)];
  v93 = v206;
  v94 = v198;
  v95 = v234;
  (*(v206 + 32))(v198, v68, v234);
  v96 = &v68[v91];
  v97 = v233;
  sub_1E5FAB460(v96, v233, &qword_1ED075D78, &qword_1E65F38F8);
  v98 = v97;
  v99 = v194;
  sub_1E5DFD1CC(v98, v194, &qword_1ED075D78, &qword_1E65F38F8);
  v100 = v196;
  v101 = v197;
  if ((*(v196 + 48))(v99, 1, v197) == 1)
  {
    sub_1E5DFE50C(v99, &qword_1ED075D78, &qword_1E65F38F8);
    v102 = v172;
    (*(v93 + 16))(v172, v94, v95);
    *(v102 + *(v205 + 20)) = v92;
    sub_1E64D5E90(v102, v203, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8], MEMORY[0x1E69CD8A0]);
    sub_1E64D5E48(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable, &unk_1E65FEEF4);
    v103 = v202;
    sub_1E65E4138();
    sub_1E627F9AC(v102);
    v104 = v93;
  }

  else
  {
    v155 = v200;
    (*(v100 + 32))(v200, v99, v101);
    (*(v93 + 16))(v170, v94, v95);
    (*(v100 + 16))(v171, v155, v101);
    sub_1E65E53A8();
    swift_allocObject();
    sub_1E65E5398();

    v156 = v173;
    sub_1E65E55B8();
    v157 = v174;
    v158 = v204;
    (*(v174 + 16))(v203, v156, v204);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5E48(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8], MEMORY[0x1E69CD8A0]);
    sub_1E64D5E48(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable, &unk_1E65FEEF4);
    v103 = v202;
    sub_1E65E4138();

    (*(v157 + 8))(v156, v158);
    (*(v100 + 8))(v200, v101);
    v104 = v206;
  }

  v159 = v94;
  v160 = v199;
  sub_1E5FAB460(v103, v199, &qword_1ED0727A0, &unk_1E65FA5B0);
  sub_1E5DFD1CC(v160, v237, &qword_1ED0727A0, &unk_1E65FA5B0);
  swift_storeEnumTagMultiPayload();
  sub_1E64D5E48(&qword_1EE2D6DA0, MEMORY[0x1E699D070], MEMORY[0x1E699D068]);
  sub_1E5FEB860();
  v161 = v238;
  sub_1E65E4138();
  sub_1E5DFD1CC(v161, v250, &unk_1ED0778D0, &qword_1E65EBC20);
  swift_storeEnumTagMultiPayload();
  sub_1E5FEB4C4();
  sub_1E5FEB7A4();
  sub_1E65E4138();
  sub_1E5DFE50C(v161, &unk_1ED0778D0, &qword_1E65EBC20);
  sub_1E5DFE50C(v160, &qword_1ED0727A0, &unk_1E65FA5B0);
  sub_1E5DFE50C(v233, &qword_1ED075D78, &qword_1E65F38F8);
  return (*(v104 + 8))(v159, v234);
}

uint64_t sub_1E64D54B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A650, &qword_1E6607020);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A658, &qword_1E6607028);
  v7 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A660, &qword_1E6607030);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A668, &qword_1E6607038);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v44 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A670, &qword_1E6607040);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A678, &qword_1E6607048);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v56 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v44 - v23;
  v24 = type metadata accessor for ArtworkDescriptor(0);
  if (*(a1 + v24[7]) == 1)
  {
    v50 = v20;
    if (*(*(a1 + v24[5]) + 16))
    {
      v25 = *(a1 + v24[8] + 8);
      v44 = *(a1 + v24[8]);
      v45 = v25;
      v26 = (a1 + v24[6]);
      v27 = v26[2];
      v46 = v26[3];
      v47 = v19;
      v49 = v6;
      v29 = *v26;
      v28 = v26[1];
      *v17 = sub_1E65E3F58();
      *(v17 + 1) = 0;
      v17[16] = 0;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A680, &qword_1E6607050) + 44);
      v48 = v4;
      v31 = &v17[v30];
      sub_1E64D0790(v44, v45, v15);
      v32 = sub_1E65E4438();
      v33 = &v15[*(v11 + 36)];
      *v33 = v32;
      *(v33 + 1) = v29;
      *(v33 + 2) = v28;
      v34 = v46;
      *(v33 + 3) = v27;
      *(v33 + 4) = v34;
      v33[40] = 0;
      sub_1E64D1B48(v10);
      v35 = sub_1E65E4438();
      v36 = &v10[*(v51 + 36)];
      *v36 = v35;
      *(v36 + 1) = v29;
      *(v36 + 2) = v28;
      *(v36 + 3) = v27;
      *(v36 + 4) = v34;
      v36[40] = 0;
      v37 = v53;
      sub_1E5DFD1CC(v15, v53, &qword_1ED07A660, &qword_1E6607030);
      v38 = v54;
      sub_1E5DFD1CC(v10, v54, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFD1CC(v37, v31, &qword_1ED07A660, &qword_1E6607030);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A688, &qword_1E6607058);
      v40 = v31 + *(v39 + 48);
      *v40 = 0;
      *(v40 + 8) = 1;
      sub_1E5DFD1CC(v38, v31 + *(v39 + 64), &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v10, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v15, &qword_1ED07A660, &qword_1E6607030);
      v6 = v49;
      sub_1E5DFE50C(v38, &qword_1ED07A658, &qword_1E6607028);
      sub_1E5DFE50C(v37, &qword_1ED07A660, &qword_1E6607030);
      sub_1E5DFD1CC(v17, v47, &qword_1ED07A668, &qword_1E6607038);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038, MEMORY[0x1E69817F8]);
      v41 = v56;
      sub_1E65E4138();
      sub_1E5DFE50C(v17, &qword_1ED07A668, &qword_1E6607038);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038, MEMORY[0x1E69817F8]);
      v41 = v56;
      sub_1E65E4138();
    }

    v43 = v57;
    sub_1E5FAB460(v41, v57, &qword_1ED07A678, &qword_1E6607048);
    sub_1E5DFD1CC(v43, v6, &qword_1ED07A678, &qword_1E6607048);
    swift_storeEnumTagMultiPayload();
    sub_1E64D5B08();
    sub_1E65E4138();
    return sub_1E5DFE50C(v43, &qword_1ED07A678, &qword_1E6607048);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E64D5B08();
    return sub_1E65E4138();
  }
}

unint64_t sub_1E64D5B08()
{
  result = qword_1EE2D4CD0;
  if (!qword_1EE2D4CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07A678, &qword_1E6607048);
    sub_1E5FED46C(&qword_1EE2D4B78, &qword_1ED07A668, &qword_1E6607038, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CD0);
  }

  return result;
}

uint64_t sub_1E64D5BC0(uint64_t a1)
{
  v2 = sub_1E65E3C28();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E65E3E98();
}

uint64_t sub_1E64D5D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v11 = *(sub_1E65E3E18() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E65E3FA8();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #4.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074478, &qword_1E6600DF0) + 36)] = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

uint64_t sub_1E64D5E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E64D5E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64D5EF8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DB748() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65DB048() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1E64453F8((v0 + v2), v0 + v5, v8);
}

uint64_t sub_1E64D6024()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DB748() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1E6187214((v0 + v2), v0 + v5, v8);
}

uint64_t sub_1E64D6158@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - v11);
  sub_1E5DFD1CC(v2, &v24 - v11, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v12;
  v14 = v12[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v12 + *(v16 + 48), v9);
  if (!sub_1E636E32C() || (v17 = *(State + 24), sub_1E5DFD1CC(&v9[v17], v6, &unk_1ED077CD0, &unk_1E65F42F0), v18 = swift_getEnumCaseMultiPayload(), v18 > 2))
  {
LABEL_9:
    sub_1E648AC30(v9);
LABEL_10:
    *a1 = v15;
    a1[1] = v14;
    goto LABEL_11;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v20 = sub_1E65D76A8();
      (*(*(v20 - 8) + 8))(&v6[v19], v20);
      goto LABEL_7;
    }

    sub_1E5DFE50C(v6, &unk_1ED077CD0, &unk_1E65F42F0);
    goto LABEL_9;
  }

LABEL_7:
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
  *a1 = v15;
  a1[1] = v14;
  sub_1E5DFD1CC(v9, v21, &qword_1ED0737C8, &unk_1E6605140);
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState(0);
  sub_1E5DFD1CC(&v9[v17], &v21[*(started + 20)], &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v9);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6444@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - v11);
  sub_1E5DFD1CC(v2, &v24 - v11, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v12;
  v14 = v12[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v12 + *(v16 + 48), v9);
  v17 = *(State + 20);
  sub_1E5DFD1CC(&v9[v17], v6, &unk_1ED077CC0, &unk_1E65F2610);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 2)
  {
    goto LABEL_9;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      sub_1E5DFE50C(v6, &unk_1ED077CC0, &unk_1E65F2610);
      goto LABEL_9;
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v20 = sub_1E65D76A8();
    (*(*(v20 - 8) + 8))(&v6[v19], v20);
  }

  if (!sub_1E636E32C())
  {
LABEL_9:
    sub_1E648AC30(v9);
LABEL_10:
    *a1 = v15;
    a1[1] = v14;
    goto LABEL_11;
  }

  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
  *a1 = v15;
  a1[1] = v14;
  sub_1E5DFD1CC(v9, v21, &qword_1ED0737C8, &unk_1E6605140);
  v22 = type metadata accessor for StackButtonLoadState(0);
  sub_1E5DFD1CC(&v9[v17], &v21[*(v22 + 20)], &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E648AC30(v9);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  sub_1E5DFD1CC(v2, &v32 - v12, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v13;
  v15 = v13[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v13 + *(v17 + 48), v10);
  v18 = *(State + 28);
  sub_1E5DFD1CC(&v10[v18], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 2)
  {
    goto LABEL_14;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      v28 = &unk_1ED077CC0;
      v29 = &unk_1E65F2610;
      v30 = v7;
LABEL_13:
      sub_1E5DFE50C(v30, v28, v29);
      goto LABEL_14;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v21 = sub_1E65D76A8();
    (*(*(v21 - 8) + 8))(&v7[v20], v21);
  }

  v22 = *(State + 24);
  sub_1E5DFD1CC(&v10[v22], v33, &unk_1ED077CD0, &unk_1E65F42F0);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
LABEL_14:
    sub_1E648AC30(v10);
LABEL_15:
    *a1 = v16;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v25 = sub_1E65D76A8();
      (*(*(v25 - 8) + 8))(v33 + v24, v25);
      goto LABEL_10;
    }

    v28 = &unk_1ED077CD0;
    v29 = &unk_1E65F42F0;
    v30 = v33;
    goto LABEL_13;
  }

LABEL_10:
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v10[v18], v26, &unk_1ED077CC0, &unk_1E65F2610);
  v27 = type metadata accessor for DynamicLibraryActionLoadState(0);
  sub_1E5DFD1CC(&v10[v22], v26 + *(v27 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  sub_1E5DFD1CC(v2, &v17 - v8, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = v9[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v9 + *(v13 + 48), v6);
  v14 = *(State + 32);
  if (!sub_1E636E05C())
  {
    sub_1E648AC30(v6);
LABEL_5:
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v6[v14], a1 + v15, &unk_1ED077A70, &qword_1E65F2620);
  sub_1E648AC30(v6);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6CF4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E64D6D58@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  sub_1E5DFD1CC(v2, &v16 - v8, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = v9[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v9 + *(v13 + 48), v6);
  if (!sub_1E636E32C())
  {
    sub_1E648AC30(v6);
LABEL_5:
    *a1 = v12;
    a1[1] = v11;
    goto LABEL_6;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
  *a1 = v12;
  a1[1] = v11;
  sub_1E5DFD1CC(v6, a1 + v14, &qword_1ED0737C8, &unk_1E6605140);
  sub_1E648AC30(v6);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D6F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  State = type metadata accessor for WorkoutContextMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  sub_1E5DFD1CC(v2, &v32 - v12, &qword_1ED073B60, &unk_1E65EE020);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v13;
  v15 = v13[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
  sub_1E64D6CF4(v13 + *(v17 + 48), v10);
  v18 = *(State + 28);
  sub_1E5DFD1CC(&v10[v18], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 2)
  {
    goto LABEL_14;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      v28 = &unk_1ED077CC0;
      v29 = &unk_1E65F2610;
      v30 = v7;
LABEL_13:
      sub_1E5DFE50C(v30, v28, v29);
      goto LABEL_14;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v21 = sub_1E65D76A8();
    (*(*(v21 - 8) + 8))(&v7[v20], v21);
  }

  v22 = *(State + 24);
  sub_1E5DFD1CC(&v10[v22], v33, &unk_1ED077CD0, &unk_1E65F42F0);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
LABEL_14:
    sub_1E648AC30(v10);
LABEL_15:
    *a1 = v16;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v25 = sub_1E65D76A8();
      (*(*(v25 - 8) + 8))(v33 + v24, v25);
      goto LABEL_10;
    }

    v28 = &unk_1ED077CD0;
    v29 = &unk_1E65F42F0;
    v30 = v33;
    goto LABEL_13;
  }

LABEL_10:
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v10[v18], v26, &unk_1ED077CC0, &unk_1E65F2610);
  v27 = type metadata accessor for RemoveLibraryActionLoadState(0);
  sub_1E5DFD1CC(&v10[v22], v26 + *(v27 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E648AC30(v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64D7304(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A700, &qword_1E6607188);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - v3;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = sub_1E65DC5C8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65DC558();
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1E5E1DEAC(a1, v10);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1E5E1FA80(v10, v17 + v16);
  sub_1E5E1DEAC(a1, v8);
  v18 = swift_allocObject();
  sub_1E5E1FA80(v8, v18 + v16);
  sub_1E65DC5B8();
  sub_1E65DC548();
  sub_1E5E1DEAC(a1, v10);
  v19 = swift_allocObject();
  sub_1E5E1FA80(v10, v19 + v16);
  type metadata accessor for AppFeature(0);
  sub_1E64D7ED8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E64D7ED8(&qword_1ED07A708, MEMORY[0x1E699E0E0], MEMORY[0x1E699E0D8]);
  v20 = v27;
  v21 = v25;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v22 = sub_1E65E4F08();
  (*(v28 + 8))(v20, v29);
  (*(v26 + 8))(v15, v21);
  return v22;
}

uint64_t sub_1E64D772C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  *(v2 + 24) = type metadata accessor for ToastAction(0);
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D77C4, 0, 0);
}

uint64_t sub_1E64D77C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = v2 + *(type metadata accessor for AppComposer(0) + 20);
  v5 = *(v4 + *(type metadata accessor for AppEnvironment(0) + 128));
  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1E64D7904;
  v7 = *(v0 + 32);

  return v9(v7);
}

uint64_t sub_1E64D7904()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1E64D7F20(v1, type metadata accessor for ToastAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E64D7A30(char a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E64D772C(a1, v1 + v5);
}

uint64_t sub_1E64D7B08(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppAction(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D7B9C, 0, 0);
}

uint64_t sub_1E64D7B9C()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = **(v0 + 16);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64D7C54, v3, v2);
}

uint64_t sub_1E64D7C54()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E64D7F20(v1, type metadata accessor for AppAction);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E64D7CE8()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E64D7B08(v0 + v3);
}

uint64_t sub_1E64D7DB4()
{
  v0 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v0 - 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  return sub_1E65DC4C8();
}

uint64_t sub_1E64D7E58()
{
  type metadata accessor for AppComposer(0);

  return sub_1E64D7DB4();
}

uint64_t sub_1E64D7ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E64D7F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64D7F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - v6;
  sub_1E5E20198(27, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  result = swift_dynamicCast();
  if (result)
  {
    v10[0] = a1;
    v10[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E64D80D0@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for SessionService();
  Description = v2[-1].Description;
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = v3;
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArchivedSessionService();
  v60 = v4[-1].Description;
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = v5;
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for RemoteBrowsingService();
  v6 = v56[-1].Description;
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v48 - v9;
  v10 = type metadata accessor for CatalogService();
  v11 = v10[-1].Description;
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v16 = v15[8];
  v17 = v15[12];
  v52 = v15[25];
  v53 = v16;
  v54 = v15[28];
  swift_getKeyPath();
  (v11[2])(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v17, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (v11[4])(v19 + v18, &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  swift_allocObject();

  v21 = sub_1E65E4E68();
  v22 = v68;
  v68[3] = v20;
  v22[4] = &off_1F5FAA810;
  *v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1E65EA8E0;
  v66 = sub_1E65E60A8();
  v67 = *(*(v66 - 8) + 56);
  v23 = v57;
  v67(v57, 1, 1, v66);
  v24 = v6[2];
  v25 = v14;
  v50 = v14;
  v26 = v14 + v52;
  v27 = v55;
  v28 = v56;
  v24(v55, v26, v56);
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (v6[4])(v30 + v29, v27, v28);
  v49 = v21;
  *(v30 + ((v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  swift_retain_n();
  v31 = sub_1E6059EAC(0, 0, v23, &unk_1E6607210, v30);
  v32 = v51;
  *(v51 + 32) = v31;
  v67(v23, 1, 1, v66);
  v34 = v59;
  v33 = v60;
  v35 = v61;
  v60[2](v59, v25 + v53, v61);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = (v58 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (v33)[4]((v38 + v36), v34, v35);
  v39 = v49;
  *(v38 + v37) = v49;
  v40 = v39;

  *(v32 + 40) = sub_1E6059EAC(0, 0, v23, &unk_1E6607220, v38);
  v67(v23, 1, 1, v66);
  v42 = v63;
  v41 = Description;
  v43 = v65;
  Description[2](v63, v50 + v54, v65);
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (v41)[4]((v46 + v44), v42, v43);
  *(v46 + v45) = v40;
  result = sub_1E6059EAC(0, 0, v23, &unk_1E6607230, v46);
  *(v32 + 48) = result;
  v68[5] = v32;
  return result;
}

uint64_t sub_1E64D87E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E64D8808, 0, 0);
}

uint64_t sub_1E64D8808()
{
  v1 = CatalogService.queryCachedCatalogWorkoutDetail.getter();
  v0[6] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E64D8908;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_1E64D8908()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E64D8A88;
  }

  else
  {
    v2 = sub_1E60EBEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64D8A1C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E64D8A88()
{

  v1 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[9] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E64D8B90;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_1E64D8B90()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E64D8CA4;
  }

  else
  {
    v2 = sub_1E64D8A1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64D8CA4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E64D8D10(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E64D87E0(a1, a2, v2 + v7);
}

uint64_t sub_1E64D8DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_1E64D8F60, 0, 0);
}

uint64_t sub_1E64D8F60()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E64D905C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E64D905C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64D9174, 0, 0);
}

uint64_t sub_1E64D9174()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E64D9250;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E64D9250()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64D934C, 0, 0);
}

uint64_t sub_1E64D934C()
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

    return MEMORY[0x1EEE6DFA0](sub_1E64D949C, v6, v5);
  }
}

uint64_t sub_1E64D949C()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E64D950C, 0, 0);
}

uint64_t sub_1E64D950C()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E64D9250;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E64D95CC(uint64_t a1)
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

  return sub_1E64D8DF4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64D96EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64D9820, 0, 0);
}

uint64_t sub_1E64D9820()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E64D991C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E64D991C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E64D9A4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64D9A4C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E64D9B28;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E64D9B28()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64D9C24, 0, 0);
}

uint64_t sub_1E64D9C24()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_1E65E6058();
    v0[16] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64D9D24, v3, v2);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E64D9D24()
{

  *(v0 + 136) = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E64D9D98, 0, 0);
}

uint64_t sub_1E64D9D98()
{
  v1 = v0[4];
  v2 = sub_1E608A340(v0[17], v0[15]);
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1E64D9EA4;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E64D9EA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64D9FD8, 0, 0);
}

uint64_t sub_1E64D9FD8()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E64D9B28;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E64DA080(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64D96EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64DA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DA24C, 0, 0);
}

uint64_t sub_1E64DA24C()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v31 = *(v0 + 80);

  v10 = 0;
  v29 = v8;
  v30 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = (*(v31 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = v16[1];
    v32 = *v16;
    v33 = *(v0 + 96);
    v18 = sub_1E65E60A8();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v32;
    v20[6] = v17;
    sub_1E5DF4C84(v14, v33);
    LODWORD(v14) = (*(v19 + 48))(v33, 1, v18);
    swift_bridgeObjectRetain_n();

    v22 = *(v0 + 96);
    if (v14 == 1)
    {
      sub_1E5DFE50C(*(v0 + 96), &unk_1ED0735B0, &qword_1E65EA000);
      if (*v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v19 + 8))(v22, v18);
      if (*v21)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_1E65E5FC8();
        v25 = v24;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v23 = 0;
    v25 = 0;
LABEL_16:
    v26 = **(v0 + 72);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1E6607250;
    *(v27 + 24) = v20;

    if (v25 | v23)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v23;
      *(v0 + 40) = v25;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v26;
    swift_task_create();

    result = sub_1E5DFE50C(v12, &unk_1ED0735B0, &qword_1E65EA000);
    v8 = v29;
    v3 = v30;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E64DA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8704, 0, 0);
}

uint64_t sub_1E64DA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A8, &qword_1E65EA980);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DA80C, 0, 0);
}

uint64_t sub_1E64DA80C()
{
  v1 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E64DA908;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E64DA908()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FAE0A4;
  }

  else
  {
    v2 = sub_1E64DAA38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DAA38()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E64DAB14;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E64DAB14()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64DAC10, 0, 0);
}

uint64_t sub_1E64DAC10()
{
  v1 = v0[4];
  v2 = sub_1E65D9AC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64DAD60, v6, v5);
  }
}

uint64_t sub_1E64DAD60()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E64DADD0, 0, 0);
}

uint64_t sub_1E64DADD0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072198, &unk_1E660C690);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E64DAB14;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_15(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1E64DAF70(uint64_t a1)
{
  Description = type metadata accessor for SessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64DA6A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64DB090(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E64DA1A0(a1, a2, v7, v6);
}

uint64_t sub_1E64DB144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64DA5D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E64DB20C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for AppComposer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  sub_1E65E5148();
  v14 = sub_1E65E5138();
  sub_1E5E1DEAC(v2, v13);
  v15 = *(v4 + 80);
  v16 = ((v15 + 32) & ~v15) + v5;
  v43 = (v15 + 32) & ~v15;
  v41 = v16;
  v17 = swift_allocObject();
  v40 = &unk_1E66072C0;
  *(v17 + 16) = &unk_1E66072C0;
  *(v17 + 24) = 0;
  sub_1E5E1FA80(v13, v17 + ((v15 + 32) & ~v15));
  *(v17 + v16) = 0;
  v18 = v17 + (v16 & 0xFFFFFFFFFFFFFFF8);
  v39 = sub_1E6172524;
  *(v18 + 8) = sub_1E6172524;
  *(v18 + 16) = 0;
  v19 = (v17 + (((v16 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = MEMORY[0x1E69AB380];
  *v19 = v14;
  v19[1] = v20;
  v21 = v14;
  v22 = v46;
  v23 = v11;
  sub_1E5E1DEAC(v46, v11);
  v24 = (v15 + 48) & ~v15;
  v25 = v24 + v5;
  v26 = (v24 + v5) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  v27[2] = v40;
  v27[3] = 0;
  v27[4] = v21;
  v27[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v23, v27 + v24);
  *(v27 + v25) = 0;
  v29 = v27 + v26;
  v30 = v39;
  *(v29 + 1) = v39;
  *(v29 + 2) = 0;
  v31 = v22;
  v32 = v44;
  sub_1E5E1DEAC(v31, v44);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = 0;
  v33[4] = v21;
  v33[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v32, v33 + v24);
  v34 = v33 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = v30;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = v45;
  sub_1E5E1DEAC(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = 0;
  sub_1E5E1FA80(v35, v36 + v43);
  result = swift_retain_n();
  v38 = v42;
  *v42 = v21;
  v38[1] = MEMORY[0x1E69AB380];
  v38[2] = &unk_1E65EB918;
  v38[3] = v17;
  v38[4] = &unk_1E65FA770;
  v38[5] = v27;
  v38[6] = &unk_1E65EB920;
  v38[7] = v33;
  v38[8] = &unk_1E65FA780;
  v38[9] = v36;
  return result;
}

uint64_t sub_1E64DB568(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DB6AC, 0, 0);
}

uint64_t sub_1E64DB6AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *MEMORY[0x1E69CBD30];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1E65D7A28();
  v12 = sub_1E65D7A38();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E64DB910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65D7848();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_1E65D8F28();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = sub_1E65D7218();
  v6[12] = swift_task_alloc();
  v9 = sub_1E65D72D8();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for PageMetricsClick(0);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v10 = sub_1E65D7968();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v11 = sub_1E65E1BA8();
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v12 = sub_1E65E19C8();
  v6[37] = v12;
  v6[38] = *(v12 - 8);
  v6[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64DBC9C, 0, 0);
}

uint64_t sub_1E64DBC9C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699E980])
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[31];
    v8 = v0[32];
    v9 = v0[30];
    v10 = v0[26];
    v247 = v0[25];
    v11 = v0[24];
    v12 = v0[16];
    v222 = v0[14];
    v225 = v0[13];
    v219 = v0[15];
    v233 = v0[10];
    v231 = v0[9];
    v234 = v0[8];
    v250 = v0[7];
    v254 = v0[6];
    v258 = v0[5];
    v260 = v0[4];
    (*(v0[38] + 96))(v5, v0[37]);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v8 + 32))(v6, v5, v7);
    (*(v10 + 32))(v9, v5 + v13, v247);
    v14 = sub_1E65D9D78();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = v12[5];
    v16 = *MEMORY[0x1E69CBA70];
    v17 = sub_1E65D8C68();
    (*(*(v17 - 8) + 104))(v11 + v15, v16, v17);
    v18 = v12[6];
    v19 = sub_1E65D74E8();
    (*(*(v19 - 8) + 56))(v11 + v18, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v240 = swift_allocObject();
    *(v240 + 16) = xmmword_1E65EB9E0;
    MEMORY[0x1E6949580]();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v222 + 8))(v219, v225);
    sub_1E617FBC8();
    sub_1E65E5E48();
    v227 = *MEMORY[0x1E69CBC98];
    v232 = *(v231 + 104);
    v232(v233);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v254 + 8))(v250, v258);
    (v232)(v233, *MEMORY[0x1E69CBCB0], v234);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v20 = v12[8];
    v21 = sub_1E65DA208();
    v22 = (*(*(v21 - 8) + 56))(v11 + v20, 1, 1, v21);
    v23 = MEMORY[0x1E6949580](v22);
    v25 = v24;
    (v232)(v11 + v12[14], v227, v234);
    v26 = v12[15];
    v27 = sub_1E65D9908();
    (*(*(v27 - 8) + 56))(v11 + v26, 1, 1, v27);
    v28 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v11 + v12[7]) = v240;
    v29 = (v11 + v12[9]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (v11 + v12[10]);
    *v30 = 0;
    v30[1] = 0;
    *(v11 + v12[11]) = v28;
    v31 = (v11 + v12[12]);
    *v31 = 0;
    v31[1] = 0;
    v32 = (v11 + v12[13]);
    *v32 = v23;
    v32[1] = v25;
    v261 = (*(v260 + 48) + **(v260 + 48));
    v33 = swift_task_alloc();
    v0[40] = v33;
    *v33 = v0;
    v33[1] = sub_1E64DE16C;
    v34 = v0[24];
LABEL_9:

    return v261(v34);
  }

  if (v4 == *MEMORY[0x1E699E988])
  {
    v35 = v0[39];
    v36 = v0[35];
    v38 = v0[31];
    v37 = v0[32];
    v217 = v0[29];
    v39 = v0[25];
    v40 = v0[26];
    v41 = v0[23];
    v42 = v0[16];
    v241 = v0[14];
    v244 = v0[13];
    v235 = v0[15];
    v251 = v0[10];
    v255 = v0[8];
    v259 = v0[4];
    v262 = v0[9];
    (*(v0[38] + 96))(v35, v0[37]);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v37 + 32))(v36, v35, v38);
    (*(v40 + 32))(v217, v35 + v43, v39);
    v44 = sub_1E65D9D78();
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    v45 = v42[5];
    v46 = *MEMORY[0x1E69CBA68];
    v47 = sub_1E65D8C68();
    (*(*(v47 - 8) + 104))(v41 + v45, v46, v47);
    v48 = v42[6];
    v49 = sub_1E65D74E8();
    (*(*(v49 - 8) + 56))(v41 + v48, 1, 1, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v228 = swift_allocObject();
    *(v228 + 16) = xmmword_1E65EA670;
    MEMORY[0x1E6949580]();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v241 + 8))(v235, v244);
    sub_1E617FBC8();
    sub_1E65E5E48();
    v50 = *MEMORY[0x1E69CBC98];
    v51 = *(v262 + 104);
    v51(v251, v50, v255);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v52 = v42[8];
    v53 = sub_1E65DA208();
    v54 = (*(*(v53 - 8) + 56))(v41 + v52, 1, 1, v53);
    v55 = MEMORY[0x1E6949580](v54);
    v57 = v56;
    v51(v41 + v42[14], v50, v255);
    v58 = v42[15];
    v59 = sub_1E65D9908();
    (*(*(v59 - 8) + 56))(v41 + v58, 1, 1, v59);
    v60 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v41 + v42[7]) = v228;
    v61 = (v41 + v42[9]);
    *v61 = 0;
    v61[1] = 0;
    v62 = (v41 + v42[10]);
    *v62 = 0;
    v62[1] = 0;
    *(v41 + v42[11]) = v60;
    v63 = (v41 + v42[12]);
    *v63 = 0;
    v63[1] = 0;
    v64 = (v41 + v42[13]);
    *v64 = v55;
    v64[1] = v57;
    v261 = (*(v259 + 48) + **(v259 + 48));
    v65 = swift_task_alloc();
    v0[42] = v65;
    *v65 = v0;
    v65[1] = sub_1E64DE434;
    v34 = v0[23];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E990])
  {
    v66 = v0[39];
    v67 = v0[34];
    v68 = v0[31];
    v69 = v0[32];
    v70 = v0[28];
    v71 = v0[26];
    v236 = v0[25];
    v72 = v0[22];
    v73 = v0[16];
    v226 = v0[14];
    v229 = v0[13];
    v220 = v0[15];
    v215 = v0[10];
    v263 = v0[9];
    v242 = v0[7];
    v245 = v0[6];
    v248 = v0[5];
    v252 = v0[4];
    v256 = v0[8];
    (*(v0[38] + 96))(v66, v0[37]);
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v69 + 32))(v67, v66, v68);
    (*(v71 + 32))(v70, v66 + v74, v236);
    v75 = sub_1E65D9D78();
    (*(*(v75 - 8) + 56))(v72, 1, 1, v75);
    v76 = v73[5];
    v77 = *MEMORY[0x1E69CBAA0];
    v78 = sub_1E65D8C68();
    (*(*(v78 - 8) + 104))(v72 + v76, v77, v78);
    v79 = v73[6];
    v80 = sub_1E65D74E8();
    (*(*(v80 - 8) + 56))(v72 + v79, 1, 1, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v237 = swift_allocObject();
    *(v237 + 16) = xmmword_1E65EA8E0;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v223 = *MEMORY[0x1E69CBCC8];
    v213 = *(v263 + 104);
    v213(v215);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v81 = sub_1E65D8678();
    MEMORY[0x1E6949580](v81);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v226 + 8))(v220, v229);
    sub_1E617FBC8();
    sub_1E65E5E48();
    (v213)(v215, *MEMORY[0x1E69CBC98], v256);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v245 + 8))(v242, v248);
    (v213)(v215, *MEMORY[0x1E69CBCB0], v256);
    v82 = MEMORY[0x1E69E7CC0];
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v83 = v73[8];
    v84 = sub_1E65DA208();
    (*(*(v84 - 8) + 56))(v72 + v83, 1, 1, v84);
    (v213)(v72 + v73[14], v223, v256);
    v85 = v73[15];
    v86 = sub_1E65D9908();
    (*(*(v86 - 8) + 56))(v72 + v85, 1, 1, v86);
    v87 = sub_1E6427784(v82);
    *(v72 + v73[7]) = v237;
    v88 = (v72 + v73[9]);
    *v88 = 0;
    v88[1] = 0;
    v89 = (v72 + v73[10]);
    *v89 = 0;
    v89[1] = 0;
    *(v72 + v73[11]) = v87;
    v90 = (v72 + v73[12]);
    *v90 = 0;
    v90[1] = 0;
    *(v72 + v73[13]) = xmmword_1E6607280;
    v261 = (*(v252 + 48) + **(v252 + 48));
    v91 = swift_task_alloc();
    v0[44] = v91;
    *v91 = v0;
    v91[1] = sub_1E64DE6FC;
    v34 = v0[22];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E9A8])
  {
    v92 = v0[39];
    v93 = v0[32];
    v94 = v0[33];
    v95 = v0[31];
    v96 = v0[27];
    v97 = v0[25];
    v98 = v0[26];
    v99 = v0[17];
    v257 = v0[16];
    v221 = v0[14];
    v224 = v0[13];
    v218 = v0[15];
    v214 = v0[10];
    v264 = v0[9];
    v253 = v0[8];
    v238 = v0[7];
    v239 = v0[6];
    v243 = v0[5];
    v246 = v0[4];
    (*(v0[38] + 96))(v92, v0[37]);
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v93 + 32))(v94, v92, v95);
    (*(v98 + 32))(v96, v92 + v100, v97);
    v101 = *MEMORY[0x1E69CC900];
    v102 = sub_1E65D9D78();
    v103 = *(v102 - 8);
    (*(v103 + 104))(v99, v101, v102);
    (*(v103 + 56))(v99, 0, 1, v102);
    v104 = v257[5];
    v105 = *MEMORY[0x1E69CBAA0];
    v106 = sub_1E65D8C68();
    (*(*(v106 - 8) + 104))(v99 + v104, v105, v106);
    v107 = v257[6];
    v108 = sub_1E65D74E8();
    (*(*(v108 - 8) + 56))(v99 + v107, 1, 1, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v230 = swift_allocObject();
    *(v230 + 16) = xmmword_1E65EA8E0;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v216 = *MEMORY[0x1E69CBCC8];
    v249 = *(v264 + 104);
    v249(v214);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v109 = sub_1E65D8678();
    MEMORY[0x1E6949580](v109);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65D7948();
    sub_1E65E1B88();
    sub_1E65D71F8();
    (*(v221 + 8))(v218, v224);
    sub_1E617FBC8();
    sub_1E65E5E48();
    (v249)(v214, *MEMORY[0x1E69CBC98], v253);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65D7958();
    sub_1E65E1A78();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E1A88();
    (*(v239 + 8))(v238, v243);
    (v249)(v214, *MEMORY[0x1E69CBCB0], v253);
    v110 = MEMORY[0x1E69E7CC0];
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v111 = v257[8];
    v112 = sub_1E65DA208();
    (*(*(v112 - 8) + 56))(v99 + v111, 1, 1, v112);
    (v249)(v99 + v257[14], v216, v253);
    v113 = v257[15];
    v114 = sub_1E65D9908();
    (*(*(v114 - 8) + 56))(v99 + v113, 1, 1, v114);
    v115 = sub_1E6427784(v110);
    *(v99 + v257[7]) = v230;
    v116 = (v99 + v257[9]);
    *v116 = 0;
    v116[1] = 0;
    v117 = (v99 + v257[10]);
    *v117 = 0;
    v117[1] = 0;
    *(v99 + v257[11]) = v115;
    v118 = (v99 + v257[12]);
    *v118 = 0;
    v118[1] = 0;
    *(v99 + v257[13]) = xmmword_1E6607280;
    v261 = (*(v246 + 48) + **(v246 + 48));
    v119 = swift_task_alloc();
    v0[54] = v119;
    *v119 = v0;
    v119[1] = sub_1E64DF3E4;
    v34 = v0[17];
    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x1E699E9A0])
  {
    v121 = v0[39];
    v122 = v0[31];
    v123 = v0[32];
    (*(v0[38] + 96))(v121, v0[37]);
    (*(v123 + 8))(v121, v122);
  }

  else
  {
    if (v4 == *MEMORY[0x1E699E970])
    {
      v125 = v0[21];
      v126 = v0[16];
      v127 = v0[8];
      v128 = v0[9];
      v129 = v0[4];
      v130 = sub_1E65D9D78();
      (*(*(v130 - 8) + 56))(v125, 1, 1, v130);
      v131 = v126[5];
      v132 = *MEMORY[0x1E69CBA30];
      v133 = sub_1E65D8C68();
      (*(*(v133 - 8) + 104))(v125 + v131, v132, v133);
      v134 = v126[6];
      v135 = sub_1E65D74E8();
      (*(*(v135 - 8) + 56))(v125 + v134, 1, 1, v135);
      v136 = v126[8];
      v137 = sub_1E65DA208();
      (*(*(v137 - 8) + 56))(v125 + v136, 1, 1, v137);
      (*(v128 + 104))(v125 + v126[14], *MEMORY[0x1E69CBCC8], v127);
      v138 = v126[15];
      v139 = sub_1E65D9908();
      (*(*(v139 - 8) + 56))(v125 + v138, 1, 1, v139);
      v140 = MEMORY[0x1E69E7CC0];
      v141 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v125 + v126[7]) = v140;
      v142 = (v125 + v126[9]);
      *v142 = 0;
      v142[1] = 0;
      v143 = (v125 + v126[10]);
      *v143 = 0;
      v143[1] = 0;
      *(v125 + v126[11]) = v141;
      v144 = (v125 + v126[12]);
      *v144 = 0;
      v144[1] = 0;
      *(v125 + v126[13]) = xmmword_1E6607260;
      v261 = (*(v129 + 48) + **(v129 + 48));
      v145 = swift_task_alloc();
      v0[46] = v145;
      *v145 = v0;
      v145[1] = sub_1E64DE9C4;
      v34 = v0[21];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E978])
    {
      v146 = v0[20];
      v147 = v0[16];
      v148 = v0[8];
      v149 = v0[9];
      v150 = v0[4];
      v151 = sub_1E65D9D78();
      (*(*(v151 - 8) + 56))(v146, 1, 1, v151);
      v152 = v147[5];
      v153 = *MEMORY[0x1E69CB9F8];
      v154 = sub_1E65D8C68();
      (*(*(v154 - 8) + 104))(v146 + v152, v153, v154);
      v155 = v147[6];
      v156 = sub_1E65D74E8();
      (*(*(v156 - 8) + 56))(v146 + v155, 1, 1, v156);
      v157 = v147[8];
      v158 = sub_1E65DA208();
      (*(*(v158 - 8) + 56))(v146 + v157, 1, 1, v158);
      (*(v149 + 104))(v146 + v147[14], *MEMORY[0x1E69CBCC8], v148);
      v159 = v147[15];
      v160 = sub_1E65D9908();
      (*(*(v160 - 8) + 56))(v146 + v159, 1, 1, v160);
      v161 = MEMORY[0x1E69E7CC0];
      v162 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v146 + v147[7]) = v161;
      v163 = (v146 + v147[9]);
      *v163 = 0;
      v163[1] = 0;
      v164 = (v146 + v147[10]);
      *v164 = 0;
      v164[1] = 0;
      *(v146 + v147[11]) = v162;
      v165 = (v146 + v147[12]);
      *v165 = 0;
      v165[1] = 0;
      *(v146 + v147[13]) = xmmword_1E6607270;
      v261 = (*(v150 + 48) + **(v150 + 48));
      v166 = swift_task_alloc();
      v0[48] = v166;
      *v166 = v0;
      v166[1] = sub_1E64DEC4C;
      v34 = v0[20];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E9B8])
    {
      v167 = v0[19];
      v168 = v0[16];
      v169 = v0[8];
      v170 = v0[9];
      v171 = v0[4];
      v172 = *MEMORY[0x1E69CC900];
      v173 = sub_1E65D9D78();
      v174 = *(v173 - 8);
      (*(v174 + 104))(v167, v172, v173);
      (*(v174 + 56))(v167, 0, 1, v173);
      v175 = v168[5];
      v176 = *MEMORY[0x1E69CBA30];
      v177 = sub_1E65D8C68();
      (*(*(v177 - 8) + 104))(v167 + v175, v176, v177);
      v178 = v168[6];
      v179 = sub_1E65D74E8();
      (*(*(v179 - 8) + 56))(v167 + v178, 1, 1, v179);
      v180 = v168[8];
      v181 = sub_1E65DA208();
      (*(*(v181 - 8) + 56))(v167 + v180, 1, 1, v181);
      (*(v170 + 104))(v167 + v168[14], *MEMORY[0x1E69CBCC8], v169);
      v182 = v168[15];
      v183 = sub_1E65D9908();
      (*(*(v183 - 8) + 56))(v167 + v182, 1, 1, v183);
      v184 = MEMORY[0x1E69E7CC0];
      v185 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v167 + v168[7]) = v184;
      v186 = (v167 + v168[9]);
      *v186 = 0;
      v186[1] = 0;
      v187 = (v167 + v168[10]);
      *v187 = 0;
      v187[1] = 0;
      *(v167 + v168[11]) = v185;
      v188 = (v167 + v168[12]);
      *v188 = 0;
      v188[1] = 0;
      *(v167 + v168[13]) = xmmword_1E6607260;
      v261 = (*(v171 + 48) + **(v171 + 48));
      v189 = swift_task_alloc();
      v0[50] = v189;
      *v189 = v0;
      v189[1] = sub_1E64DEED4;
      v34 = v0[19];
      goto LABEL_9;
    }

    if (v4 == *MEMORY[0x1E699E9B0])
    {
      v190 = v0[18];
      v191 = v0[16];
      v192 = v0[8];
      v193 = v0[9];
      v194 = v0[4];
      v195 = *MEMORY[0x1E69CC900];
      v196 = sub_1E65D9D78();
      v197 = *(v196 - 8);
      (*(v197 + 104))(v190, v195, v196);
      (*(v197 + 56))(v190, 0, 1, v196);
      v198 = v191[5];
      v199 = *MEMORY[0x1E69CBA90];
      v200 = sub_1E65D8C68();
      (*(*(v200 - 8) + 104))(v190 + v198, v199, v200);
      v201 = v191[6];
      v202 = sub_1E65D74E8();
      (*(*(v202 - 8) + 56))(v190 + v201, 1, 1, v202);
      v203 = v191[8];
      v204 = sub_1E65DA208();
      (*(*(v204 - 8) + 56))(v190 + v203, 1, 1, v204);
      (*(v193 + 104))(v190 + v191[14], *MEMORY[0x1E69CBCC8], v192);
      v205 = v191[15];
      v206 = sub_1E65D9908();
      (*(*(v206 - 8) + 56))(v190 + v205, 1, 1, v206);
      v207 = MEMORY[0x1E69E7CC0];
      v208 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v190 + v191[7]) = v207;
      v209 = (v190 + v191[9]);
      *v209 = 0;
      v209[1] = 0;
      v210 = (v190 + v191[10]);
      *v210 = 0;
      v210[1] = 0;
      *(v190 + v191[11]) = v208;
      v211 = (v190 + v191[12]);
      *v211 = 0;
      v211[1] = 0;
      *(v190 + v191[13]) = xmmword_1E65F4AB0;
      v261 = (*(v194 + 48) + **(v194 + 48));
      v212 = swift_task_alloc();
      v0[52] = v212;
      *v212 = v0;
      v212[1] = sub_1E64DF15C;
      v34 = v0[18];
      goto LABEL_9;
    }

    if (v4 != *MEMORY[0x1E699E998])
    {
      (*(v0[38] + 8))(v0[39], v0[37]);
    }
  }

  v124 = v0[1];

  return v124();
}

uint64_t sub_1E64DE16C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1E64DF6AC;
  }

  else
  {
    v2 = sub_1E64DE280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DE280()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[24]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DE434()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1E64DF868;
  }

  else
  {
    v2 = sub_1E64DE548;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DE548()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[23]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DE6FC()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1E64DFA24;
  }

  else
  {
    v2 = sub_1E64DE810;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DE810()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DE9C4()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1E64DFBE0;
  }

  else
  {
    v2 = sub_1E64DEAD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DEAD8()
{
  sub_1E5FC0990(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DEC4C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1E64DFD5C;
  }

  else
  {
    v2 = sub_1E64DED60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DED60()
{
  sub_1E5FC0990(*(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DEED4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1E64DFED8;
  }

  else
  {
    v2 = sub_1E64DEFE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DEFE8()
{
  sub_1E5FC0990(*(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DF15C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1E64E0054;
  }

  else
  {
    v2 = sub_1E64DF270;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DF270()
{
  sub_1E5FC0990(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DF3E4()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1E64E01D0;
  }

  else
  {
    v2 = sub_1E64DF4F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64DF4F8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_1E5FC0990(v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DF6AC()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[24]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DF868()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[23]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DFA24()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_1E5FC0990(v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64DFBE0()
{
  sub_1E5FC0990(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DFD5C()
{
  sub_1E5FC0990(*(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64DFED8()
{
  sub_1E5FC0990(*(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64E0054()
{
  sub_1E5FC0990(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64E01D0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_1E5FC0990(v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64E038C(uint64_t a1)
{
  v3 = sub_1E65D9F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601BF04(0, v7, 0);
    v48 = v50;
    v9 = a1 + 64;
    result = sub_1E65E6748();
    v10 = 0;
    v49 = v4 + 16;
    v38 = a1;
    v39 = v4;
    v11 = (v4 + 8);
    v37 = a1 + 72;
    v40 = v7;
    v41 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v9 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_30;
      }

      v16 = *(a1 + 36);
      v17 = *(*(a1 + 56) + 8 * result);
      v18 = *(v17 + 16);
      v47 = v10;
      if (v18)
      {
        v43 = 1 << result;
        v44 = result >> 6;
        v45 = v16;
        v46 = result;
        v19 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v20 = *(v39 + 72);
        v21 = *(v39 + 16);
        v42 = v17;

        v22 = 0;
        while (1)
        {
          v21(v6, v19, v3);
          v23 = sub_1E65D9F28();
          result = (*v11)(v6, v3);
          v24 = __OFADD__(v22, v23);
          v22 += v23;
          if (v24)
          {
            break;
          }

          v19 += v20;
          if (!--v18)
          {

            a1 = v38;
            result = v46;
            v10 = v47;
            v14 = v44;
            v16 = v45;
            v15 = v43;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v22 = 0;
LABEL_14:
      v25 = v48;
      v50 = v48;
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        v45 = v16;
        v46 = result;
        v35 = v10;
        v43 = v15;
        v44 = v14;
        sub_1E601BF04((v26 > 1), v27 + 1, 1);
        v15 = v43;
        v14 = v44;
        v16 = v45;
        result = v46;
        v10 = v35;
        v25 = v50;
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 8 * v27 + 32) = v22;
      v12 = 1 << *(a1 + 32);
      if (result >= v12)
      {
        goto LABEL_31;
      }

      v9 = v41;
      v28 = *(v41 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_32;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v29 = v28 & (-2 << (result & 0x3F));
      v48 = v25;
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | result & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v37 + 8 * v14);
        v13 = v40;
        while (v31 < (v12 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E5F87098(result, v16, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_25;
          }
        }

        sub_1E5F87098(result, v16, 0);
LABEL_25:
        v10 = v47;
      }

      ++v10;
      result = v12;
      if (v10 == v13)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

int64_t sub_1E64E0704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E64E07B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E65D96F8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  if (v18)
  {
    v39 = a2;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = v13[9];
    v26 = *(a1 + 48) + v25 * v20;
    v27 = v13[2];
    v40 = v13;
    v41 = v27;
    v42 = v13 + 2;
    v43 = v25;
    v27(v12, v26, v4);
    v29 = v40 + 4;
    v28 = v40[4];
    v28(v46, v12, v4);
    v45 = a1;

    if (v21)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v31 >= v22)
      {

        v37 = v39;
        v28(v39, v46, v4);
        return (v40[7])(v37, 0, 1, v4);
      }

      v21 = *(v15 + 8 * v31);
      ++v19;
      if (v21)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v33 = v44;
          v41(v44, *(v45 + 48) + (v32 | (v31 << 6)) * v43, v4);
          v28(v9, v33, v4);
          sub_1E64E8AD8(&qword_1ED07A728, MEMORY[0x1E69CC278], MEMORY[0x1E69CC288]);
          v34 = v46;
          v35 = sub_1E65E5B78();
          v36 = *(v29 - 3);
          if (v35)
          {
            v36(v34, v4);
            result = (v28)(v34, v9, v4);
            v19 = v31;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v36)(v9, v4);
            v19 = v31;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (v22 - 1 != v18)
    {
      v19 = v18 + 1;
      v24 = *(a1 + 64 + 8 * v18);
      v23 -= 64;
      ++v18;
      if (v24)
      {
        v39 = a2;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) - v23;
        goto LABEL_9;
      }
    }

    v38 = v13[7];

    return v38(a2, 1, 1, v4);
  }

  return result;
}

int64_t sub_1E64E0B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E64E0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E64E0D04(a1, a2, a3);
}

uint64_t sub_1E64E0D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_1E65E2CF8();
  v4[17] = swift_task_alloc();
  sub_1E65D76F8();
  v4[18] = swift_task_alloc();
  v5 = sub_1E65D7908();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = sub_1E65D76A8();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_1E65D7848();
  v4[27] = swift_task_alloc();
  sub_1E65E5C28();
  v4[28] = swift_task_alloc();
  sub_1E65E5C08();
  v4[29] = swift_task_alloc();
  v7 = sub_1E65D9388();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_1E65D72D8();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v9 = sub_1E65D9D28();
  v4[45] = v9;
  v4[46] = *(v9 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v10 = sub_1E65D82F8();
  v4[52] = v10;
  v4[53] = *(v10 - 8);
  v4[54] = swift_task_alloc();
  v11 = sub_1E65DA488();
  v4[55] = v11;
  v4[56] = *(v11 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E121C, 0, 0);
}

uint64_t sub_1E64E121C()
{
  *(v0 + 36) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 480) = type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  *(v0 + 488) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 496) = v3;
  *v3 = v0;
  v3[1] = sub_1E64E1338;

  return v5();
}

uint64_t sub_1E64E1338(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = sub_1E64E31EC;
  }

  else
  {
    *(v4 + 512) = a1;
    v5 = sub_1E64E1460;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E64E1460()
{
  v1 = v0[64];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[55];
  v5 = v0[56];
  v7 = v0[14];
  v6 = v0[15];

  v8 = sub_1E64E863C(v1, v7, v6);

  sub_1E6059E80(v8, v2);

  sub_1E5DFD1CC(v2, v3, &qword_1ED07A720, &qword_1E6607338);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v9 = v0[59];
    sub_1E5DFE50C(v0[58], &qword_1ED07A720, &qword_1E6607338);
    sub_1E65E2508();
    sub_1E5DFE50C(v9, &qword_1ED07A720, &qword_1E6607338);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[56] + 32))(v0[57], v0[58], v0[55]);
    v12 = ConfigurationService.queryConfiguration.getter();
    v0[65] = v13;
    v16 = (v12 + *v12);
    v14 = swift_task_alloc();
    v0[66] = v14;
    *v14 = v0;
    v14[1] = sub_1E64E1808;
    v15 = v0[54];

    return v16(v15);
  }
}

uint64_t sub_1E64E1808()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1E64E33C8;
  }

  else
  {
    v2 = sub_1E64E193C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64E193C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v0[68] = sub_1E65D8298();
  (*(v2 + 8))(v1, v3);
  v4 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[69] = v5;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[70] = v6;
  *v6 = v0;
  v6[1] = sub_1E64E1A7C;

  return v8();
}

uint64_t sub_1E64E1A7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 568) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {

    v4 = sub_1E64E35D4;
  }

  else
  {
    v4 = sub_1E64E1BA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64E1BA8()
{
  v207 = v0;
  v2 = v0;
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[68];
  v6 = v0[16];

  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  v169 = v3;
  v171 = sub_1E6409A24(v8, sub_1E621767C, v9, v4);

  v175 = *(v5 + 16);
  v178 = v5;
  if (!v175)
  {
LABEL_28:
    v48 = v2[57];

    v49 = swift_task_alloc();
    *(v49 + 16) = v48;
    v50 = v169;
    sub_1E64072B8(sub_1E64E8ABC, v49, v7);

    sub_1E65D72C8();
    v20 = v7[2];
    v203 = v2;
    v12 = v7;
    if (v20)
    {
      v51 = v2[46];
      v53 = *(v51 + 16);
      v52 = v51 + 16;
      v1 = (v52 - 8);
      v54 = v2[57];
      v55 = v2[47];
      v56 = v2[40];
      v18 = (*(v52 + 64) + 32) & ~*(v52 + 64);
      v197 = v53;
      v199 = *(v52 + 56);
      v53(v55, v12 + v18, v2[45]);
      sub_1E64E6B08(v56, v55, v54, v171);
      if (!v169)
      {
        goto LABEL_34;
      }

      v57 = (v52 - 8);
      v58 = v2[47];
      v59 = v2[45];
      v60 = v2[40];
      v61 = v2[37];
      v204 = v2[38];

      (*v57)(v58, v59);
      v62 = *(v204 + 8);

      return v62(v60, v61);
    }

LABEL_39:
    v70 = v2[40];
    v69 = v2[41];
    v72 = v2[37];
    v71 = v2[38];

    (*(v71 + 32))(v69, v70, v72);
    sub_1E65DA408();
    if (v73)
    {
      v74 = v2[59];
      v76 = v2[56];
      v75 = v2[57];
      v77 = v2[55];
      v78 = v2[41];
      v79 = v2[37];
      v80 = v2[38];

      sub_1E65E2508();
      (*(v80 + 8))(v78, v79);
      sub_1E5DFE50C(v74, &qword_1ED07A720, &qword_1E6607338);
      (*(v76 + 8))(v75, v77);
      goto LABEL_41;
    }

    v82 = sub_1E65DA478();
    v83 = v82;
    v84 = *(v82 + 16);
    if (v84)
    {
      v85 = sub_1E64F73F0(*(v82 + 16), 0);
      v200 = sub_1E62599D0(v206, v85 + 32, v84, v83);
      v86 = v206[0];

      result = sub_1E5E24EE4(v86);
      if (v200 != v84)
      {
        goto LABEL_100;
      }
    }

    else
    {

      v85 = MEMORY[0x1E69E7CC0];
    }

    v87 = MEMORY[0x1E69E7CC0];
    v206[0] = v85;
    sub_1E64E7770(v206);
    if (v50)
    {
    }

    v88 = v206[0];
    v89 = *(v206[0] + 2);
    if (v89)
    {
      v206[0] = v87;
      sub_1E601D1A0(0, v89, 0);
      v2 = v203;
      v90 = v206[0];
      v91 = *(v206[0] + 2);
      v92 = 32;
      do
      {
        v93 = v88[v92];
        v206[0] = v90;
        v94 = *(v90 + 3);
        if (v91 >= v94 >> 1)
        {
          sub_1E601D1A0((v94 > 1), v91 + 1, 1);
          v90 = v206[0];
        }

        *(v90 + 2) = v91 + 1;
        v90[v91 + 32] = v93;
        ++v92;
        ++v91;
        --v89;
      }

      while (v89);
    }

    else
    {

      v2 = v203;
    }

    v96 = v2[35];
    v95 = v2[36];
    v97 = v2[30];
    v98 = v2[31];
    sub_1E65DA468();
    sub_1E5DFD1CC(v95, v96, &qword_1ED075D78, &qword_1E65F38F8);
    v99 = *(v98 + 48);
    if (v99(v96, 1, v97) == 1)
    {
      v100 = v2[59];
      v101 = v2[56];
      v198 = v2[55];
      v201 = v2[57];
      v102 = v2[41];
      v104 = v2[37];
      v103 = v2[38];
      v106 = v2[35];
      v105 = v2[36];

      sub_1E5DFE50C(v106, &qword_1ED075D78, &qword_1E65F38F8);
      v2 = v203;
      sub_1E65E2508();
      sub_1E5DFE50C(v105, &qword_1ED075D78, &qword_1E65F38F8);
      (*(v103 + 8))(v102, v104);
      sub_1E5DFE50C(v100, &qword_1ED07A720, &qword_1E6607338);
      (*(v101 + 8))(v201, v198);
      goto LABEL_41;
    }

    v107 = v2[34];
    v108 = v2[30];
    (*(v2[31] + 32))(v2[32], v2[35], v108);
    sub_1E65DA468();
    v109 = v99(v107, 1, v108);
    v110 = v2[34];
    if (v109 == 1)
    {
      sub_1E5DFE50C(v2[34], &qword_1ED075D78, &qword_1E65F38F8);
      v203 = 0;
      v12 = 0;
    }

    else
    {
      v111 = v2[30];
      v112 = v2[31];
      v113 = sub_1E65D9368();
      (*(v112 + 8))(v110, v111);
      v12 = sub_1E64E038C(v113);
      v203 = 0;
    }

    v114 = v2[33];
    v115 = v2[30];
    sub_1E65DA468();
    v116 = v99(v114, 1, v115);
    v117 = v2[33];
    if (v116 == 1)
    {
      sub_1E5DFE50C(v2[33], &qword_1ED075D78, &qword_1E65F38F8);
      v8 = 0;
    }

    else
    {
      v118 = v2[30];
      v119 = v2[31];
      v120 = sub_1E65D9368();
      (*(v119 + 8))(v117, v118);
      v8 = *(v120 + 16);
    }

    if (!v12)
    {
      v122 = 0;
      goto LABEL_76;
    }

    v13 = *(v12 + 16);
    if (v13)
    {
      v7 = *(v12 + 32);
      v10 = v13 - 1;
      if (v13 != 1)
      {
        if (v13 < 5)
        {
          v121 = 1;
          v122 = *(v12 + 32);
LABEL_84:
          v146 = v13 - v121;
          v147 = (v12 + 8 * v121 + 32);
          do
          {
            v149 = *v147++;
            v148 = v149;
            if (*&v149 < *&v122)
            {
              v122 = v148;
            }

            --v146;
          }

          while (v146);
LABEL_88:
          if (v13 >= 5)
          {
            v150 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v151 = vdupq_n_s64(v7);
            v152 = (v12 + 56);
            v153 = v10 & 0xFFFFFFFFFFFFFFFCLL;
            v154 = v151;
            do
            {
              v151 = vbslq_s8(vcgtq_s64(v151, v152[-1]), v151, v152[-1]);
              v154 = vbslq_s8(vcgtq_s64(v154, *v152), v154, *v152);
              v152 += 2;
              v153 -= 4;
            }

            while (v153);
            v155 = vbslq_s8(vcgtq_s64(v151, v154), v151, v154);
            v156 = vextq_s8(v155, v155, 8uLL).u64[0];
            v7 = vbsl_s8(vcgtd_s64(v155.i64[0], v156), *v155.i8, v156);
            if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_97;
            }
          }

          else
          {
            v150 = 1;
          }

          v157 = v13 - v150;
          v158 = (v12 + 8 * v150 + 32);
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (v7 <= v160)
            {
              v7 = v159;
            }

            --v157;
          }

          while (v157);
LABEL_97:

          if (*&v122 != v7)
          {
            sub_1E65E5BF8();
            sub_1E65E5BE8();
            v2[8] = v8;
            v123 = v2;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            v2[9] = v122;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            v2[10] = v7;
            sub_1E65E5BC8();
            sub_1E65E5BE8();
            sub_1E65E5C18();
            type metadata accessor for LocalizationBundle();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v162 = [objc_opt_self() bundleForClass_];
            swift_getKeyPath();
            sub_1E65E4EC8();

            sub_1E65E5D48();
            goto LABEL_77;
          }

LABEL_76:
          sub_1E65E5BF8();
          sub_1E65E5BE8();
          v2[11] = v8;
          v123 = v2;
          sub_1E65E5BC8();
          sub_1E65E5BE8();
          v2[12] = v122;
          sub_1E65E5BC8();
          sub_1E65E5BE8();
          sub_1E65E5C18();
          type metadata accessor for LocalizationBundle();
          v124 = swift_getObjCClassFromMetadata();
          v125 = [objc_opt_self() bundleForClass_];
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E5D48();
          v7 = v122;
LABEL_77:
          sub_1E65DA458();
          sub_1E65D7688();
          sub_1E65DA478();
          sub_1E65D7858();
          v126 = v203;
          sub_1E65D75E8();
          v196 = v123[57];
          v190 = v123[59];
          v192 = v123[55];
          v202 = v123[56];
          v205 = v123[41];
          if (v126)
          {
            v127 = v123[38];
            v185 = v123[36];
            v187 = v123[37];
            v128 = v123[31];
            v179 = v123[30];
            v182 = v123[32];
            v176 = v123[25];
            v130 = v123[22];
            v129 = v123[23];
            v132 = v123[20];
            v131 = v123[21];
            v133 = v123[19];

            (*(v132 + 8))(v131, v133);
            (*(v129 + 8))(v176, v130);
            (*(v128 + 8))(v182, v179);
            sub_1E5DFE50C(v185, &qword_1ED075D78, &qword_1E65F38F8);
            (*(v127 + 8))(v205, v187);
            sub_1E5DFE50C(v190, &qword_1ED07A720, &qword_1E6607338);
            (*(v202 + 8))(v196, v192);

            v81 = v123[1];
            goto LABEL_42;
          }

          v134 = v123[38];
          v183 = v123[37];
          v166 = v123[32];
          v167 = v123[31];
          v168 = v123[30];
          v170 = v123[36];
          v177 = v123[39];
          v180 = v123[26];
          v135 = v123[23];
          v136 = v123[21];
          v172 = v123[22];
          v174 = v123[24];
          v137 = v123[19];
          v138 = v123[20];
          v164 = v123[17];
          v163 = v123[25];

          (*(v138 + 8))(v136, v137);
          v165 = *(v135 + 8);
          v165(v163, v172);
          (*(v134 + 16))(v177, v205, v183);
          (*(v135 + 16))(v174, v180, v172);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FA0, &qword_1E65ECDF8);
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_1E65EB9E0;
          *(v139 + 32) = v122;
          *(v139 + 40) = v7;

          sub_1E65DA418();
          sub_1E65DA428();

          sub_1E61DADA0(v164);
          sub_1E65E2518();
          v165(v180, v172);
          (*(v167 + 8))(v166, v168);
          sub_1E5DFE50C(v170, &qword_1ED075D78, &qword_1E65F38F8);
          (*(v134 + 8))(v205, v183);
          sub_1E5DFE50C(v190, &qword_1ED07A720, &qword_1E6607338);
          (*(v202 + 8))(v196, v192);
          v2 = v123;
LABEL_41:

          v81 = v2[1];
LABEL_42:

          return v81();
        }

LABEL_81:
        v121 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v140 = vdupq_n_s64(v7);
        v141 = (v12 + 56);
        v142 = v10 & 0xFFFFFFFFFFFFFFFCLL;
        v143 = v140;
        do
        {
          v140 = vbslq_s8(vcgtq_s64(v140, v141[-1]), v141[-1], v140);
          v143 = vbslq_s8(vcgtq_s64(v143, *v141), *v141, v143);
          v141 += 2;
          v142 -= 4;
        }

        while (v142);
        v144 = vbslq_s8(vcgtq_s64(v143, v140), v140, v143);
        v145 = vextq_s8(v144, v144, 8uLL).u64[0];
        v122 = vbsl_s8(vcgtd_s64(v145, v144.i64[0]), *v144.i8, v145);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_88;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v7 = 0;
    }

    v122 = v7;
    goto LABEL_76;
  }

  v10 = 0;
  v11 = v2[46];
  v173 = v2[68] + 32;
  v12 = v2[71] + 56;
  v193 = v2[71];
  v194 = (v11 + 32);
  v189 = (v11 + 8);
  v188 = (v11 + 56);
  v191 = v11;
  v186 = (v11 + 48);
  while (1)
  {
    v13 = *(v178 + 16);
    if (v10 >= v13)
    {
      __break(1u);
      goto LABEL_81;
    }

    v14 = v173 + 24 * v10;
    v181 = v10 + 1;
    v184 = v7;
    v15 = -1 << *(v193 + 32);
    v16 = -v15 < 64 ? ~(-1 << -v15) : -1;
    v17 = v16 & *(v193 + 56);
    v199 = *(v14 + 8);
    v203 = *v14;
    LODWORD(v197) = *(v14 + 16);
    sub_1E5F8710C(*v14, v199, *(v14 + 16));
    v18 = (63 - v15) >> 6;

    v19 = 0;
    if (!v17)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_14:
      v22 = v2[49];
      v21 = v2[50];
      v23 = v2[45];
      (*(v191 + 16))(v21, *(v193 + 48) + *(v191 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v23);
      v24 = *(v191 + 32);
      v24(v22, v21, v23);
      v25 = sub_1E65D9D08();
      v27 = v26;
      v2[2] = v25;
      v2[3] = v26;
      v1 = (v28 & 1);
      *(v2 + 32) = v28 & 1;
      v2[5] = v203;
      v2[6] = v199;
      *(v2 + 56) = v197;
      sub_1E6217698();
      sub_1E6069558();
      LOBYTE(v23) = sub_1E65D7FD8();
      sub_1E5F87058(v25, v27, v1);
      if (v23)
      {
        break;
      }

      v17 &= v17 - 1;
      (*v189)(v2[49], v2[45]);
      v19 = v20;
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    v45 = v2[49];
    v46 = v2[45];
    v47 = v2[43];
    sub_1E5F87058(v203, v199, v197);

    v24(v47, v45, v46);
    v29 = 0;
LABEL_18:
    v30 = v2[45];
    v32 = v2[42];
    v31 = v2[43];
    v33 = *v188;
    (*v188)(v31, v29, 1, v30);
    sub_1E5FAB460(v31, v32, &qword_1ED076B98, &qword_1E65F78F8);
    v34 = *v186;
    v7 = v184;
    if ((*v186)(v32, 1, v30) == 1)
    {
      sub_1E5DFE50C(v2[42], &qword_1ED076B98, &qword_1E65F78F8);
      v35 = 1;
    }

    else
    {
      v36 = v2[48];
      v38 = v2[44];
      v37 = v2[45];
      v1 = v194;
      v39 = *v194;
      (*v194)(v36, v2[42], v37);
      v39(v38, v36, v37);
      v35 = 0;
    }

    v8 = v2[44];
    v40 = v2[45];
    v33(v8, v35, 1, v40);
    if (v34(v8, 1, v40) == 1)
    {
      sub_1E5DFE50C(v2[44], &qword_1ED076B98, &qword_1E65F78F8);
    }

    else
    {
      v41 = *v194;
      (*v194)(v2[51], v2[44], v2[45]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E64F6B78(0, v184[2] + 1, 1, v184);
      }

      v8 = v7[2];
      v42 = v7[3];
      if (v8 >= v42 >> 1)
      {
        v7 = sub_1E64F6B78((v42 > 1), v8 + 1, 1, v7);
      }

      v43 = v2[51];
      v44 = v2[45];
      v7[2] = v8 + 1;
      v41(v7 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v8, v43, v44);
    }

    v10 = v181;
    if (v181 == v175)
    {
      goto LABEL_28;
    }
  }

LABEL_11:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      sub_1E5F87058(v203, v199, v197);

      v29 = 1;
      goto LABEL_18;
    }

    v17 = *(v12 + 8 * v20);
    ++v19;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  v195 = *v1;
  result = (*v1)(v2[47], v2[45]);
  if (v20 == 1)
  {
LABEL_38:
    v50 = 0;
    v2 = v203;
    goto LABEL_39;
  }

  v64 = v12 + v199 + v18;
  v65 = 1;
  while (v65 < *(v12 + 16))
  {
    v66 = v203[57];
    v67 = v203[47];
    v68 = v203[40];
    v197(v67, v64, v203[45]);
    sub_1E64E6B08(v68, v67, v66, v171);
    ++v65;
    result = (v195)(v203[47], v203[45]);
    v64 += v199;
    if (v20 == v65)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1E64E31EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64E33C8()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_1E5DFE50C(v0[59], &qword_1ED07A720, &qword_1E6607338);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64E35D4()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_1E5DFE50C(v0[59], &qword_1ED07A720, &qword_1E6607338);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64E37E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E64E3890(a1, a2, a3);
}

uint64_t sub_1E64E3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65D7EB8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1E65E2928();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_1E65D7BC8();
  v4[13] = swift_task_alloc();
  sub_1E65D76F8();
  v4[14] = swift_task_alloc();
  v7 = sub_1E65D7998();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_1E65D7908();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_1E65D76A8();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = sub_1E65DA488();
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E3BE0, 0, 0);
}

uint64_t sub_1E64E3BE0()
{
  *(v0 + 328) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 332) = *(type metadata accessor for AppEnvironment(0) + 144);
  v1 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  *(v0 + 256) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_1E64E3CFC;

  return v5();
}

uint64_t sub_1E64E3CFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_1E64E451C;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_1E64E3E24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E64E3E24()
{
  v54 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[31];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[3];
  v7 = v0[4];

  v9 = sub_1E64E863C(v1, v8, v7);

  sub_1E6059E80(v9, v3);

  sub_1E5DFD1CC(v3, v4, &qword_1ED07A720, &qword_1E6607338);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v10 = v0[31];
    sub_1E5DFE50C(v0[30], &qword_1ED07A720, &qword_1E6607338);
    v11 = sub_1E65D8B88();
    sub_1E64E8AD8(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69CB8F0], v11);
    swift_willThrow();
LABEL_5:
    sub_1E5DFE50C(v10, &qword_1ED07A720, &qword_1E6607338);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v21 = sub_1E65E3B68();
    __swift_project_value_buffer(v21, qword_1EE2EA2A0);
    v22 = v12;
    v23 = sub_1E65E3B48();
    v24 = sub_1E65E6328();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53 = v26;
      *v25 = 136446210;
      v0[2] = v12;
      v27 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v28 = sub_1E65E5CE8();
      v30 = sub_1E5DFD4B0(v28, v29, &v53);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1E5DE9000, v23, v24, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E694F1C0](v26, -1, -1);
      MEMORY[0x1E694F1C0](v25, -1, -1);
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }

  (*(v0[28] + 32))(v0[29], v0[30], v0[27]);
  sub_1E65D7688();
  sub_1E65DA478();
  sub_1E65D7858();
  sub_1E65D75E8();
  v14 = v0[23];
  v51 = v0[22];
  v15 = v0[21];
  if (v2)
  {
    v10 = v0[31];
    v16 = v0[28];
    v47 = v0[29];
    v49 = v2;
    v17 = v0[27];
    v18 = v0[25];
    v20 = v0[18];
    v19 = v0[19];

    (*(v19 + 8))(v15, v20);
    (*(v14 + 8))(v18, v51);
    v12 = v49;
    (*(v16 + 8))(v47, v17);
    goto LABEL_5;
  }

  v33 = v0[25];
  v45 = v0[26];
  v34 = v0[24];
  v35 = v0[19];
  v36 = v0[18];
  v37 = v0[11];
  v48 = v0[10];
  v50 = v0[12];
  v46 = v0[5];

  (*(v35 + 8))(v15, v36);
  v38 = *(v14 + 8);
  v0[36] = v38;
  v0[37] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v33, v51);
  sub_1E65DA418();
  (*(v14 + 16))(v34, v45, v51);
  sub_1E65D7858();
  sub_1E65D7B78();
  (*(v37 + 16))(v50, v46, v48);
  v39 = (*(v37 + 88))(v50, v48);
  if (v39 == *MEMORY[0x1E699F478] || v39 == *MEMORY[0x1E699F480])
  {
    sub_1E65D7988();
    v40 = WorkoutPlanService.repeatWorkoutPlan.getter();
    v0[38] = v41;
    v52 = (v40 + *v40);
    v42 = swift_task_alloc();
    v0[39] = v42;
    *v42 = v0;
    v42[1] = sub_1E64E4784;
    v43 = v0[17];
    v44 = v0[9];

    return v52(v44, v43);
  }

  else
  {

    return sub_1E65E6C08();
  }
}

uint64_t sub_1E64E451C()
{
  v15 = v0;

  v1 = v0[34];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E64E4784()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_1E64E4A50;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = sub_1E64E48DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64E48DC()
{
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_1E5DFE50C(v2, &qword_1ED07A720, &qword_1E6607338);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E64E4A50()
{
  v22 = v0;
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_1E5DFE50C(v2, &qword_1ED07A720, &qword_1E6607338);
  v8 = v0[40];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v9 = sub_1E65E3B68();
  __swift_project_value_buffer(v9, qword_1EE2EA2A0);
  v10 = v8;
  v11 = sub_1E65E3B48();
  v12 = sub_1E65E6328();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v0[2] = v8;
    v15 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1E5DE9000, v11, v12, "[PreviousPlanLockupComposer] Plan repetition failed with error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E64E4D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E4DB8, 0, 0);
}

uint64_t sub_1E64E4DB8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E64E4ED4;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E64E4ED4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64E4FEC, 0, 0);
}

uint64_t sub_1E64E4FEC()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C20, &qword_1E65F7A10);
  v1[4] = sub_1E5FED46C(&qword_1ED076C28, &qword_1ED076C20, &qword_1E65F7A10, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1ED076C30, &qword_1ED076C18, &qword_1E65F7A00, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E64E5128(void *a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = a2;
  v41 = a4;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A710, &qword_1E66072C8);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = v38 - v12;
  v13 = sub_1E65E24F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E24C8();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v19 = *a1;
  v42 = v18;
  v43 = v19;
  (*(v14 + 16))(v16, v40, v13);
  sub_1E65E24B8();
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(a1, v38[0]);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v40 = type metadata accessor for AppComposer;
  sub_1E63B8F5C(v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for AppComposer);
  v23 = (v22 + v21);
  v24 = a3;
  *v23 = a3;
  v25 = v41;
  v23[1] = v41;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  type metadata accessor for AppFeature(0);
  sub_1E64E8AD8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v38[1] = sub_1E64E8AD8(&qword_1ED07A718, MEMORY[0x1E699F310], MEMORY[0x1E699F308]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  v27 = v38[0];
  sub_1E5E1DEAC(v39, v38[0]);
  v41 = a5[9];
  v28 = swift_allocObject();
  sub_1E63B8F5C(v27, v28 + v20, v40);
  v29 = (v28 + v21);
  v30 = *(a5 + 3);
  v29[2] = *(a5 + 2);
  v29[3] = v30;
  v29[4] = *(a5 + 4);
  v31 = *(a5 + 1);
  *v29 = *a5;
  v29[1] = v31;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1E64E69D0;
  *(v32 + 24) = v28;

  v33 = v42;
  v35 = v47;
  v34 = v48;
  v36 = sub_1E65E4F08();

  (*(v45 + 8))(v34, v46);
  (*(v44 + 8))(v33, v35);
  return v36;
}

uint64_t sub_1E64E564C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v93 = a2;
  v94 = a3;
  v87 = a1;
  v92 = a4;
  v4 = sub_1E65E2498();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v70 - v7;
  v8 = sub_1E65E24D8();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v70 - v15;
  v84 = sub_1E65D7848();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v79 = *(v19 - 8);
  v80 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v86 = &v70 - v23;
  v78 = sub_1E65DA2A8();
  v72 = *(v78 - 8);
  v24 = MEMORY[0x1EEE9AC00](v78);
  v71 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v70 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v70 - v35;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EE7BC(v36);
  sub_1E5DFE50C(v29, &qword_1ED071E58, &qword_1E65EA150);
  (*(v31 + 8))(v33, v30);
  v37 = type metadata accessor for BrowsingIdentity(0);
  v38 = 1;
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    if ((*(*(v39 - 8) + 48))(v36, 1, v39) != 1)
    {
      v40 = v72;
      v41 = v70;
      v42 = v78;
      (*(v72 + 32))(v70, &v36[*(v39 + 48)], v78);
      v43 = v71;
      sub_1E65DA298();
      sub_1E64E8AD8(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
      v38 = sub_1E65E6718();
      v44 = *(v40 + 8);
      v44(v43, v42);
      v44(v41, v42);
      sub_1E64E82C0(v36, type metadata accessor for RemoteParticipantScope);
    }
  }

  LODWORD(v78) = v38;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v45 = v80;
  sub_1E65E4C98();
  (*(v79 + 8))(v21, v45);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v18, &qword_1ED072958, &qword_1E65EC0F0);
  v46 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v47 = v87;
  v48 = v83;
  sub_1E65E4C98();
  v49 = v85;
  sub_1E5E1F544(v85);
  sub_1E5DFE50C(v48, &qword_1ED071F78, &unk_1E65EA3F0);
  v50 = v82;
  v51 = *(v82 + 48);
  v52 = v84;
  if (v51(v49, 1, v84) == 1)
  {
    sub_1E65D77C8();
    v53 = v51(v49, 1, v52);
    v55 = v93;
    v54 = v94;
    v56 = v91;
    if (v53 != 1)
    {
      sub_1E5DFE50C(v49, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v50 + 32))(v88, v49, v52);
    v55 = v93;
    v54 = v94;
    v56 = v91;
  }

  v57 = *(v47 + *(v46 + 232) + 8);
  if (*(v57 + 16) && (v58 = sub_1E6215038(v55, v54), (v59 & 1) != 0))
  {
    v61 = v76;
    v60 = v77;
    v62 = v74;
    (*(v76 + 16))(v74, *(v57 + 56) + *(v76 + 72) * v58, v77);
    v63 = v73;
    sub_1E65E2468();
    (*(v61 + 8))(v62, v60);
    (*(v89 + 32))(v56, v63, v90);
    if (!*(v57 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    (*(v89 + 104))(v56, *MEMORY[0x1E699F318], v90);
    if (!*(v57 + 16))
    {
      goto LABEL_15;
    }
  }

  v64 = sub_1E6215038(v55, v54);
  if (v65)
  {
    v66 = v75;
    v67 = v76;
    v68 = v77;
    (*(v76 + 16))(v75, *(v57 + 56) + *(v76 + 72) * v64, v77);
    sub_1E65E2488();
    (*(v67 + 8))(v66, v68);
  }

LABEL_15:

  return sub_1E65E2478();
}

uint64_t sub_1E64E60F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079348, &qword_1E66014B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1E65E2498();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for AppState(0);

  return sub_1E64095F4(v9, a3, a4);
}

uint64_t sub_1E64E6224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for AppComposer(0);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E24A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v28 - v15;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a1, v10);
  sub_1E5E1DEAC(a3, v9);
  v18 = a4[3];
  v28[0] = *a4;
  v28[1] = v18;
  v19 = a4[7];
  v28[2] = a4[5];
  v28[3] = v19;
  v28[4] = a4[9];
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + *(v29 + 80) + v20) & ~*(v29 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v13, v10);
  sub_1E63B8F5C(v9, v23 + v21, type metadata accessor for AppComposer);
  v24 = (v23 + v22);
  v25 = *(a4 + 3);
  v24[2] = *(a4 + 2);
  v24[3] = v25;
  v24[4] = *(a4 + 4);
  v26 = *(a4 + 1);
  *v24 = *a4;
  v24[1] = v26;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v16, &unk_1E66072D0, v23);
}

uint64_t sub_1E64E652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v41 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
  v18 = *(v17 + 48);
  v19 = sub_1E65D76F8();
  (*(*(v19 - 8) + 16))(v13, a1, v19);
  sub_1E5DFD1CC(a3, v10, &qword_1ED072B60, &unk_1E65FA490);
  v20 = sub_1E65E2CF8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    sub_1E5DFE50C(v10, &qword_1ED072B60, &unk_1E65FA490);
    v22 = 1;
  }

  else
  {
    sub_1E61DB264(&v13[v18]);
    (*(v21 + 8))(v10, v20);
    v22 = 0;
  }

  v23 = sub_1E65D9388();
  (*(*(v23 - 8) + 56))(&v13[v18], v22, 1, v23);
  *&v13[*(v17 + 64)] = v40;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v24 = sub_1E65DAE38();
  v25 = sub_1E65DAE38();
  v26 = sub_1E65E4B48();
  v27 = 4.0;
  if (v26)
  {
    v27 = 8.0;
  }

  v28 = 16.0;
  if (v26)
  {
    v28 = 18.0;
  }

  if (v24 == v25)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  if (v24 == v25)
  {
    v30 = 12.0;
  }

  else
  {
    v30 = 8.0;
  }

  sub_1E63B8F5C(v13, v16, type metadata accessor for ArtworkContent);
  *(v16 + v14[5]) = MEMORY[0x1E69E7CD0];
  v31 = (v16 + v14[6]);
  *v31 = 0.0;
  v31[1] = v29;
  v31[2] = v29;
  v31[3] = v30;
  *(v16 + v14[7]) = 1;
  v32 = (v16 + v14[8]);
  *v32 = 0;
  v32[1] = 0;
  v33 = v41;
  sub_1E64D2DD0(v16, a4, v41);
  v34 = sub_1E65E4B98();
  v36 = v35;
  v37 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v16, a4, v37);
  sub_1E64E82C0(v16, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v39 = (v37 + *(result + 36));
  *v39 = v34;
  v39[1] = v36;
  return result;
}

uint64_t sub_1E64E6918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1E64E564C(a1, v7, v8, a2);
}

uint64_t sub_1E64E69D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64E6224(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E64E6A7C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E65DA428();
  v4 = sub_1E65D9CD8();
  v6 = sub_1E637CA94(v4, v5, v3);

  if (v6)
  {
    result = sub_1E65D9D18();
  }

  else
  {
    result = 0;
    v8 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1E64E6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD8, &qword_1E65F7920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v76 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE0, &qword_1E65F7928);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE8, &qword_1E65F7930);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v76 - v13;
  v99 = sub_1E65D72A8();
  v87 = *(v99 - 8);
  v14 = MEMORY[0x1EEE9AC00](v99);
  v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v76 - v18;
  v20 = sub_1E65D72D8();
  v95 = *(v20 - 8);
  v96 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v85 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v76 - v25;
  v26 = sub_1E65DA428();
  v27 = sub_1E65D9CD8();
  v29 = sub_1E637CA94(v27, v28, v26);

  if (v29)
  {
    v31 = sub_1E65D9CD8();
    if (*(a4 + 16))
    {
      v33 = sub_1E6215038(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = (*(a4 + 56) + 16 * v33);
        v38 = *v36;
        v37 = v36[1];
        v39 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

        v82 = v38;
        v83 = v37;
        v40 = sub_1E65E5C48();
        [v39 initWithString_];

        swift_getKeyPath();
        v41 = sub_1E65D71D8();
        v42 = sub_1E64E8AD8(&qword_1ED076BF0, MEMORY[0x1E699D770], MEMORY[0x1E699D768]);
        sub_1E65D72F8();
        if (v4)
        {

          (*(v95 + 56))(v19, 1, 1, v96);
          return sub_1E5DFE50C(v19, &qword_1ED072D90, &qword_1E66040F0);
        }

        v79 = v42;
        v80 = v41;
        v81 = 0;
        v43 = v95;
        v44 = v96;
        (*(v95 + 56))(v19, 0, 1, v96);
        (*(v43 + 32))(v94, v19, v44);
        v45 = v92;
        sub_1E65D7208();
        v46 = v93;
        sub_1E65D72B8();
        if (v82 == 0x656D2E656C707061 && v83 == 0xEE00657461746964 || (sub_1E65E6C18() & 1) != 0)
        {
          sub_1E64E8AD8(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
          v47 = v99;
          result = sub_1E65E5B88();
          if (result)
          {
            v48 = v87;
            v49 = *(v87 + 16);
            v49(v12, v45, v47);
            v50 = v88;
            v49(&v12[*(v88 + 48)], v46, v47);
            sub_1E5DFD1CC(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v77 = *(v50 + 48);
            v51 = *(v48 + 32);
            v52 = v91;
            v51(v91, v10, v99);
            v53 = *(v48 + 8);
            v78 = v53;
            v87 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v53(&v10[v77], v99);
            sub_1E5FAB460(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v51(&v52[*(v89 + 36)], &v10[*(v50 + 48)], v99);
            v53(v10, v99);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v54 = v90;
            sub_1E65E0AE8();
            v55 = sub_1E65E0AF8();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930, MEMORY[0x1E69E66D8]);
            v56 = v52;
LABEL_15:
            v66 = v94;
            v67 = sub_1E65D7318();
            v68 = sub_1E65D7368();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
            sub_1E64E8AD8(&qword_1ED076C10, MEMORY[0x1E699D9A0], MEMORY[0x1E699D998]);
            sub_1E65D73D8();
            v68(v97, 0);

            v67(v98, 0);
            sub_1E5DFE50C(v56, &qword_1ED076BE8, &qword_1E65F7930);
            v69 = v84;
            sub_1E65D7228();
            v70 = v85;
            sub_1E65D7258();
            v71 = *(v95 + 8);
            v72 = v69;
            v73 = v96;
            v71(v72, v96);
            sub_1E65D7298();
            v71(v70, v73);
            v74 = v99;
            v75 = v78;
            v78(v93, v99);
            v75(v92, v74);
            return (v71)(v66, v73);
          }

          __break(1u);
        }

        else
        {
          sub_1E64E8AD8(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
          v57 = v99;
          result = sub_1E65E5B88();
          if (result)
          {
            v58 = v87;
            v59 = *(v87 + 16);
            v59(v12, v45, v57);
            v60 = v88;
            v59(&v12[*(v88 + 48)], v46, v57);
            sub_1E5DFD1CC(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v77 = *(v60 + 48);
            v61 = *(v58 + 32);
            v62 = v91;
            v61(v91, v10, v99);
            v63 = *(v58 + 8);
            v78 = v63;
            v87 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v63(&v10[v77], v99);
            sub_1E5FAB460(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v61(&v62[*(v89 + 36)], &v10[*(v60 + 48)], v99);
            v63(v10, v99);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v64 = v90;
            sub_1E65E0AE8();
            v65 = sub_1E65E0AF8();
            (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930, MEMORY[0x1E69E66D8]);
            v56 = v62;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

unint64_t *sub_1E64E76CC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1E64E8320(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1E64E7770(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E636B2BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E65E6BA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v16 = v1;
      v15 = v2;
      v8 = v2 + 33;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = sub_1E65DAD68();
          result = sub_1E65DAD68();
          if (v13 >= result)
          {
            break;
          }

          result = *v12;
          *v12 = *(v12 - 1);
          *--v12 = result;
        }

        while (!__CFADD__(v11++, 1));
        ++v8;
        --v9;
      }

      v1 = v16;
      v2 = v15;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E65E5F98();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1E64E78EC(v17, v19, v18, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1E64E78EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v9 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1E636AC44(v8);
      v8 = result;
    }

    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v8[16 * v80];
        v82 = *&v8[16 * v80 + 24];
        sub_1E64E7ED8((*a3 + v81), (*a3 + *&v8[16 * v80 + 16]), (*a3 + v82), v9);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E636AC44(v8);
        }

        if (v80 - 2 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v83 = &v8[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_1E636ABB8(v80 - 1);
        v80 = *(v8 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v87 = v5;
      v11 = v7;
      v12 = sub_1E65DAD68();
      result = sub_1E65DAD68();
      v13 = result;
      v90 = v6;
      v14 = v6 - 2;
      v85 = v7;
      while (v14 != v11)
      {
        v15 = sub_1E65DAD68();
        result = sub_1E65DAD68();
        ++v11;
        if (v12 < v13 == v15 >= result)
        {
          v16 = (v11 + 1);
          goto LABEL_11;
        }
      }

      v16 = v90;
LABEL_11:
      v5 = v87;
      if (v12 >= v13)
      {
        v10 = v16;
        v9 = v85;
      }

      else
      {
        v9 = v85;
        if (v16 < v85)
        {
          goto LABEL_121;
        }

        if (v85 < v16)
        {
          v17 = (v16 - 1);
          v18 = v85;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v19 = v18[v21];
              v18[v21] = v17[v21];
              v17[v21] = v19;
            }
          }

          while (++v18 < v17--);
        }

        v10 = v16;
      }
    }

    v22 = a3[1];
    if (v10 < v22)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_120;
      }

      if (v10 - v9 < a4)
      {
        v23 = &v9[a4];
        if (__OFADD__(v9, a4))
        {
          goto LABEL_122;
        }

        if (v23 >= v22)
        {
          v23 = a3[1];
        }

        if (v23 < v9)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v10 != v23)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v33 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1E636ADD0((v34 > 1), v35 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v36;
    v37 = &v8[16 * v35];
    *(v37 + 4) = v9;
    *(v37 + 5) = v10;
    v38 = *v89;
    if (!*v89)
    {
      goto LABEL_129;
    }

    v7 = v10;
    if (v35)
    {
      v5 = v33;
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_61:
          if (v43)
          {
            goto LABEL_108;
          }

          v56 = &v8[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_111;
          }

          v62 = &v8[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_115;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v66 = &v8[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_75:
        if (v61)
        {
          goto LABEL_110;
        }

        v69 = &v8[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v72 < v60)
        {
          goto LABEL_4;
        }

LABEL_82:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v9 = *&v8[16 * v77 + 32];
        v78 = *&v8[16 * v39 + 40];
        sub_1E64E7ED8(&v9[*a3], (*a3 + *&v8[16 * v39 + 32]), (*a3 + v78), v38);
        if (v5)
        {
        }

        if (v78 < v9)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E636AC44(v8);
        }

        if (v77 >= *(v8 + 2))
        {
          goto LABEL_105;
        }

        v79 = &v8[16 * v77];
        *(v79 + 4) = v9;
        *(v79 + 5) = v78;
        result = sub_1E636ABB8(v39);
        v36 = *(v8 + 2);
        if (v36 <= 1)
        {
          goto LABEL_4;
        }
      }

      v44 = &v8[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_106;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_107;
      }

      v51 = &v8[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_109;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_112;
      }

      if (v55 >= v47)
      {
        v73 = &v8[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_116;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v33;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v86 = v9;
  v88 = v5;
  v24 = *a3;
  v25 = (*a3 + v10);
  v26 = &v9[-v10];
  v91 = v23;
LABEL_33:
  v27 = v10;
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = sub_1E65DAD68();
    result = sub_1E65DAD68();
    if (v30 >= result)
    {
LABEL_32:
      v10 = v27 + 1;
      ++v25;
      --v26;
      if (v27 + 1 != v91)
      {
        goto LABEL_33;
      }

      v10 = v91;
      v9 = v86;
      v5 = v88;
      goto LABEL_40;
    }

    if (!v24)
    {
      break;
    }

    v31 = *v29;
    *v29 = *(v29 - 1);
    *--v29 = v31;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1E64E7ED8(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v22 = v6;
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        v17 = v10;
        while (1)
        {
          v18 = v4;
          v19 = v5 + 1;
          --v17;
          v6 = v15;
          v20 = sub_1E65DAD68();
          if (v20 < sub_1E65DAD68())
          {
            break;
          }

          if (v19 < v16 || v5 >= v16)
          {
            *v5 = *v17;
          }

          --v5;
          v16 = v17;
          v4 = v18;
          v15 = v6;
          if (v17 <= v18)
          {
            v10 = v17;
            v6 = v22;
            goto LABEL_40;
          }
        }

        if (v19 < v22 || v5 >= v22)
        {
          *v5 = *v6;
        }

        v4 = v18;
        v10 = v16;
      }

      while (v16 > v4 && v6 > v7);
      if (v6 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = sub_1E65DAD68();
        if (v11 >= sub_1E65DAD68())
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1E64E813C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E24A8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E61A6788(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E64E82C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64E8320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v40 = a5;
  v41 = a4;
  v32 = a1;
  v38 = sub_1E65D76F8();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E65DA488();
  result = MEMORY[0x1EEE9AC00](v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v39 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v35 = (v6 + 8);
  v36 = v10 + 16;
  v37 = v10;
  v33 = 0;
  v34 = (v10 + 8);
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_12:
    v25 = v22 | (v13 << 6);
    (*(v37 + 16))(v12, *(v39 + 48) + *(v37 + 72) * v25, v42);
    sub_1E65DA418();
    v26 = sub_1E65D76C8();
    v28 = v27;
    (*v35)(v8, v38);
    if (v26 == v41 && v28 == v40)
    {

      result = (*v34)(v12, v42);
      goto LABEL_15;
    }

    v21 = sub_1E65E6C18();

    result = (*v34)(v12, v42);
    if (v21)
    {
LABEL_15:
      *(v32 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_18:
        v30 = v39;

        return sub_1E6089D18(v32, v31, v33, v30);
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_18;
    }

    v24 = *(v15 + 8 * v13);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64E863C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v50 = *MEMORY[0x1E69E9840];
  v45 = sub_1E65D76F8();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DA488();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v37 = ((1 << v11) + 63) >> 6;
  v13 = 8 * v37;
  v47 = a3;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v36[0] = v36;
    v36[1] = v4;
    MEMORY[0x1EEE9AC00](v14);
    v38 = v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v39 = 0;
    v4 = 0;
    v46 = a1;
    v15 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    a1 = (v16 + 63) >> 6;
    v42 = (v7 + 8);
    v43 = v10 + 16;
    v41 = (v10 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v22 = v19 | (v4 << 6);
      v23 = *(v46 + 48);
      v24 = *(v10 + 72);
      v40 = v22;
      v25 = v23 + v24 * v22;
      v26 = v10;
      v27 = *(v10 + 16);
      v28 = v9;
      v27(v49, v25, v9);
      v29 = v44;
      sub_1E65DA418();
      v7 = sub_1E65D76C8();
      v13 = v30;
      (*v42)(v29, v45);
      if (v7 == v48 && v13 == v47)
      {

        v9 = v28;
        (*v41)(v49, v28);
        v10 = v26;
        goto LABEL_16;
      }

      v7 = sub_1E65E6C18();

      v9 = v28;
      (*v41)(v49, v28);
      v10 = v26;
      if (v7)
      {
LABEL_16:
        *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_19:
          v32 = sub_1E6089D18(v38, v37, v39, v46);

          return v32;
        }
      }
    }

    v20 = v4;
    while (1)
    {
      v4 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v4 >= a1)
      {
        goto LABEL_19;
      }

      v21 = *(v15 + 8 * v4);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
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

  v34 = swift_slowAlloc();
  v35 = v47;

  v32 = sub_1E64E76CC(v34, v37, a1, v48, v35);

  MEMORY[0x1E694F1C0](v34, -1, -1);

  return v32;
}

uint64_t sub_1E64E8AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E64E8B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for RouteSource(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for RouteDestination(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E8BE8, 0, 0);
}

uint64_t sub_1E64E8BE8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  v1[1] = v5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E613DBE4(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  v8 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  *(v0 + 88) = 0;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1E64E8D4C;
  v10 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 88), v8, v7);
}

uint64_t sub_1E64E8D4C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E64E8EF0;
  }

  else
  {
    v2 = sub_1E64E8E60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64E8E60()
{
  sub_1E613DBE4(*(v0 + 64), type metadata accessor for RouteDestination);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64E8EF0()
{
  sub_1E613DBE4(*(v0 + 64), type metadata accessor for RouteDestination);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64E8F80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = a2;
  v41 = a3;
  v9 = type metadata accessor for AppComposer(0);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A730, &qword_1E66073D8);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v38 - v13;
  v14 = sub_1E65DBEC8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1E65DBCD8();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = *a1;
  v43 = v19;
  v44 = v20;
  (*(v15 + 16))(v17, v40, v14);
  sub_1E65DBCC8();
  sub_1E5E1D5BC(a1, v11, type metadata accessor for AppComposer);
  v21 = *(v42 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v38 = a4;
  sub_1E5E1FA80(v11, v22 + ((v21 + 32) & ~v21));
  type metadata accessor for AppFeature(0);
  sub_1E64E9E70(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v42 = sub_1E64E9E70(&qword_1EE2D6BD0, MEMORY[0x1E699D270], MEMORY[0x1E699D268]);

  sub_1E65E4DE8();
  sub_1E5E1D5BC(v39, v11, type metadata accessor for AppComposer);
  v23 = a5[9];
  v39 = a5[7];
  v40 = v23;
  v24 = (v21 + 16) & ~v21;
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1E5E1FA80(v11, v26 + v24);
  v27 = (v26 + v25);
  v28 = *(a5 + 3);
  v27[2] = *(a5 + 2);
  v27[3] = v28;
  v27[4] = *(a5 + 4);
  v29 = *(a5 + 1);
  *v27 = *a5;
  v27[1] = v29;
  v30 = (v26 + ((v25 + 87) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v41;
  v30[1] = v31;

  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1E64E9EB8;
  *(v32 + 24) = v26;

  v33 = v43;
  v35 = v48;
  v34 = v49;
  v36 = sub_1E65E4F08();

  (*(v46 + 8))(v34, v47);
  (*(v45 + 8))(v33, v35);
  return v36;
}

uint64_t sub_1E64E9490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A48, &qword_1E65F76A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E65DBC28();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  type metadata accessor for AppComposer(0);

  sub_1E628E904(v9);
  v11[0] = a2;
  v11[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E65E4D78();
  return sub_1E65DBB38();
}

uint64_t sub_1E64E95FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65DBDF8();
  v9 = *(v47 - 8);
  v10 = MEMORY[0x1EEE9AC00](v47);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v48 = sub_1E65DBB28();
  v42 = *(v48 - 8);
  v15 = MEMORY[0x1EEE9AC00](v48);
  v39 = v16;
  v40 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  sub_1E65DAE38();
  sub_1E65DAE38();
  v46 = v18;
  sub_1E65DBB08();
  sub_1E5E1D5BC(a1, v8, type metadata accessor for AppComposer);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = v19 + v7;
  v21 = a1;
  v22 = v8;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v8, v23 + v19);
  v38 = v14;
  sub_1E65DBDE8();
  sub_1E5E1D5BC(v21, v8, type metadata accessor for AppComposer);
  (*(v9 + 16))(v12, v14, v47);
  v24 = v42;
  v25 = v40;
  (*(v42 + 16))(v40, v46, v48);
  v26 = (v20 + *(v9 + 80)) & ~*(v9 + 80);
  v27 = (v41 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v24 + 80) + v27 + 16) & ~*(v24 + 80);
  v29 = swift_allocObject();
  sub_1E5E1FA80(v22, v29 + v19);
  v30 = v29 + v26;
  v31 = v47;
  (*(v9 + 32))(v30, v12, v47);
  v32 = (v29 + v27);
  v33 = v44;
  *v32 = v43;
  v32[1] = v33;
  v34 = v25;
  v35 = v48;
  (*(v24 + 32))(v29 + v28, v34, v48);

  sub_1E65DB9B8();
  (*(v9 + 8))(v38, v31);
  return (*(v24 + 8))(v46, v35);
}

uint64_t sub_1E64E9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v32 = a1;
  v40 = a4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65DBEF8();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v37);
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = sub_1E65DBFB8();
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v31 - v18;
  (*(v19 + 104))();
  sub_1E5E1D5BC(a1, v8, type metadata accessor for AppComposer);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_1E5E1FA80(v8, v21 + v20);
  sub_1E65DBEE8();
  sub_1E5E1D5BC(v32, v8, type metadata accessor for AppComposer);
  v22 = v37;
  (*(v9 + 16))(v12, v14, v37);
  v23 = (v20 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v8, v24 + v20);
  (*(v9 + 32))(v24 + v23, v12, v22);
  v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;
  v28 = v33;
  v27 = v34;
  v29 = v35;
  (*(v33 + 16))(v36, v35, v34);

  sub_1E65DBC38();
  (*(v9 + 8))(v14, v22);
  return (*(v28 + 8))(v29, v27);
}

uint64_t sub_1E64E9DEC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E64E9490(a1, v4, v5, v6);
}

uint64_t sub_1E64E9E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E64E9EB8(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E639E360((v1 + v4), *a1, *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1E64E9F5C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C6C614777656976;
    v6 = 0x6E616C5077656976;
    if (a1 != 8)
    {
      v6 = 0x4174756F6B726F77;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726F577472617473;
    if (a1 != 5)
    {
      v7 = 0x6174614377656976;
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
    v1 = 0x6B6E616C62;
    v2 = 0xD000000000000015;
    v3 = 0x6564695679616C70;
    if (a1 != 3)
    {
      v3 = 0x6B72614D776F6873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x616C50646C697562;
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

uint64_t sub_1E64EA0D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8D0, &qword_1E66079F8);
  v135 = *(v2 - 8);
  v136 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v134 = &v103 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v129);
  v133 = &v103 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8D8, &qword_1E6607A00);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8E0, &qword_1E6607A08);
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v103 - v7;
  v103 = type metadata accessor for GalleryDescriptor(0);
  MEMORY[0x1EEE9AC00](v103);
  v143 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8E8, &qword_1E6607A10);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v103 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8F0, &qword_1E6607A18);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v103 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8F8, &qword_1E6607A20);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v103 - v11;
  v112 = sub_1E65E1518();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A900, &qword_1E6607A28);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v103 - v13;
  v142 = sub_1E65D74E8();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D72D8();
  v144 = *(v15 - 8);
  v145 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v137 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v103 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A908, &qword_1E6607A30);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v138 = &v103 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A910, &qword_1E6607A38);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A918, &qword_1E6607A40);
  v104 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  v26 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A920, &qword_1E6607A48);
  v30 = *(v29 - 8);
  v148 = v29;
  v149 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v103 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F2398();
  sub_1E65E6DA8();
  sub_1E64F0A10(v146, v28, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v48 = *v28;
          LOBYTE(v150) = 8;
          sub_1E64F2494();
          v49 = v126;
          v50 = v148;
          sub_1E65E6B18();
          LOBYTE(v150) = v48;
          sub_1E64F297C();
          v51 = v128;
          sub_1E65E6B78();
          (*(v127 + 8))(v49, v51);
          return (*(v149 + 8))(v32, v50);
        }

        else
        {
          v79 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
          v81 = *v79;
          v80 = v79[1];
          v82 = v133;
          sub_1E5FAB460(v28, v133, &qword_1ED073648, &qword_1E6607560);
          LOBYTE(v150) = 9;
          sub_1E64F23EC();
          v83 = v134;
          v84 = v148;
          sub_1E65E6B18();
          LOBYTE(v150) = 0;
          sub_1E64F28D8(&qword_1ED07A928, MEMORY[0x1E699CA90]);
          v85 = v136;
          v86 = v147;
          sub_1E65E6B78();
          if (v86)
          {
            sub_1E61B73EC(v81, v80);
            (*(v135 + 8))(v83, v85);
            sub_1E5DFE50C(v82, &qword_1ED073648, &qword_1E6607560);
            return (*(v149 + 8))(v32, v84);
          }

          else
          {
            v150 = v81;
            v151 = v80;
            v152 = 1;
            sub_1E64F2928();
            sub_1E65E6B78();
            (*(v135 + 8))(v83, v85);
            sub_1E5DFE50C(v82, &qword_1ED073648, &qword_1E6607560);
            (*(v149 + 8))(v32, v84);
            return sub_1E61B73EC(v81, v80);
          }
        }
      }

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
      v65 = v144;
      v66 = v145;
      v67 = v137;
      (*(v144 + 32))(v137, v28, v145);
      sub_1E64F0A78(&v28[v64], v143, type metadata accessor for GalleryDescriptor);
      LOBYTE(v150) = 7;
      sub_1E64F253C();
      v68 = v130;
      v52 = v148;
      sub_1E65E6B18();
      LOBYTE(v150) = 0;
      sub_1E5DF4934(&qword_1EE2D7290, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      v69 = v132;
      v70 = v147;
      sub_1E65E6B78();
      if (v70)
      {
        (*(v131 + 8))(v68, v69);
        sub_1E64F0AE0(v143, type metadata accessor for GalleryDescriptor);
        (*(v65 + 8))(v67, v66);
      }

      else
      {
        LOBYTE(v150) = 1;
        sub_1E5DF4934(&qword_1ED07A940, type metadata accessor for GalleryDescriptor, &protocol conformance descriptor for GalleryDescriptor);
        v94 = v143;
        sub_1E65E6B78();
        (*(v131 + 8))(v68, v69);
        sub_1E64F0AE0(v94, type metadata accessor for GalleryDescriptor);
        (*(v65 + 8))(v137, v66);
      }

      v71 = *(v149 + 8);
      v72 = v32;
      return v71(v72, v52);
    }

    if (EnumCaseMultiPayload == 5)
    {
      v53 = v28[16];
      LOBYTE(v150) = 5;
      sub_1E64F2638();
      v54 = v117;
      v52 = v148;
      sub_1E65E6B18();
      LOBYTE(v150) = 0;
      v55 = v120;
      v56 = v147;
      sub_1E65E6B48();

      if (!v56)
      {
        LOBYTE(v150) = v53;
        v152 = 1;
        sub_1E64F2A24();
        sub_1E65E6B78();
      }

      v98 = &v151;
    }

    else
    {
      v92 = v28[16];
      LOBYTE(v150) = 6;
      sub_1E64F2590();
      v54 = v121;
      v52 = v148;
      sub_1E65E6B18();
      LOBYTE(v150) = 0;
      v55 = v125;
      v93 = v147;
      sub_1E65E6B48();

      if (!v93)
      {
        LOBYTE(v150) = v92;
        v152 = 1;
        sub_1E64F29D0();
        sub_1E65E6B78();
      }

      v98 = &v153;
    }

    (*(*(v98 - 32) + 8))(v54, v55);
LABEL_39:
    v71 = *(v149 + 8);
    v72 = v32;
    return v71(v72, v52);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
      v58 = *&v28[v57[12]];
      v145 = *&v28[v57[16]];
      v146 = v58;
      v144 = *&v28[v57[20]];
      v59 = v138;
      sub_1E5FAB460(v28, v138, &qword_1ED073718, &qword_1E65ED978);
      LOBYTE(v150) = 2;
      sub_1E64F2788();
      v60 = v111;
      v61 = v148;
      sub_1E65E6B18();
      LOBYTE(v150) = 0;
      sub_1E65E20A8();
      sub_1E5DF4934(&qword_1ED07A950, MEMORY[0x1E699F1B8], MEMORY[0x1E699F1C0]);
      v62 = v116;
      v63 = v147;
      sub_1E65E6B38();
      if (v63)
      {

        (*(v115 + 8))(v60, v62);
        sub_1E5DFE50C(v59, &qword_1ED073718, &qword_1E65ED978);
      }

      else
      {
        LOBYTE(v150) = 1;
        sub_1E65E6B68();
        LOBYTE(v150) = 2;
        sub_1E65E6B28();

        LOBYTE(v150) = 3;
        sub_1E65E6B28();
        v102 = v138;

        (*(v115 + 8))(v60, v62);
        sub_1E5DFE50C(v102, &qword_1ED073718, &qword_1E65ED978);
      }

      return (*(v149 + 8))(v32, v61);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
      v35 = &v28[*(v34 + 48)];
      v37 = *v35;
      v36 = v35[1];
      v138 = v37;
      v143 = v36;
      v38 = *(v34 + 64);
      v40 = v144;
      v39 = v145;
      v41 = v139;
      (*(v144 + 32))(v139, v28, v145);
      v42 = v140;
      (*(v140 + 32))(v141, &v28[v38], v142);
      LOBYTE(v150) = 3;
      sub_1E64F2734();
      v43 = v118;
      v44 = v148;
      sub_1E65E6B18();
      LOBYTE(v150) = 0;
      sub_1E5DF4934(&qword_1EE2D7290, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      v146 = v32;
      v45 = v123;
      v46 = v147;
      sub_1E65E6B78();
      if (v46)
      {

        (*(v122 + 8))(v43, v45);
        (*(v42 + 8))(v141, v142);
        (*(v40 + 8))(v41, v39);
        return (*(v149 + 8))(v146, v44);
      }

      else
      {
        v95 = v44;
        LOBYTE(v150) = 1;
        v96 = v142;
        v97 = v43;
        sub_1E65E6B48();

        LOBYTE(v150) = 2;
        sub_1E5DF4934(&qword_1ED073F50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
        v99 = v141;
        sub_1E65E6B78();
        v101 = v139;
        v100 = v140;
        (*(v122 + 8))(v97, v45);
        (*(v100 + 8))(v99, v96);
        (*(v40 + 8))(v101, v145);
        return (*(v149 + 8))(v146, v95);
      }
    }

    else
    {
      v73 = v110;
      v74 = v108;
      v75 = v112;
      (*(v110 + 32))(v108, v28, v112);
      LOBYTE(v150) = 4;
      sub_1E64F26E0();
      v76 = v109;
      v77 = v148;
      sub_1E65E6B18();
      sub_1E5DF4934(&qword_1ED074C10, MEMORY[0x1E699E860], MEMORY[0x1E699E868]);
      v78 = v114;
      sub_1E65E6B78();
      (*(v113 + 8))(v76, v78);
      (*(v73 + 8))(v74, v75);
      return (*(v149 + 8))(v32, v77);
    }
  }

  if (!EnumCaseMultiPayload)
  {
    LOBYTE(v150) = 0;
    sub_1E64F2884();
    v52 = v148;
    sub_1E65E6B18();
    sub_1E65E6B48();

    (*(v104 + 8))(v25, v23);
    goto LABEL_39;
  }

  v87 = *v28;
  LOBYTE(v150) = 1;
  sub_1E64F27DC();
  v88 = v148;
  v89 = v105;
  sub_1E65E6B18();
  LOBYTE(v150) = v87;
  v152 = 0;
  sub_1E64F2A78();
  v90 = v107;
  v91 = v147;
  sub_1E65E6B78();
  if (!v91)
  {
    LOBYTE(v150) = 1;
    sub_1E65E6B28();
  }

  (*(v106 + 8))(v89, v90);
  return (*(v149 + 8))(v32, v88);
}

uint64_t sub_1E64EB8E8(uint64_t a1)
{
  v64 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v53 - v2;
  v59 = type metadata accessor for GalleryDescriptor(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E1518();
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E65D74E8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D72D8();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E20A8();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  v20 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64F0A10(v1, v22, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
        v41 = v61;
        v40 = v62;
        v42 = v63;
        (*(v62 + 32))(v61, v22, v63);
        v43 = v60;
        sub_1E64F0A78(&v22[v39], v60, type metadata accessor for GalleryDescriptor);
        MEMORY[0x1E694E740](7);
        sub_1E5DF4934(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E65E5B48();
        sub_1E65E5D78();
        sub_1E65E0018();
        sub_1E65DFB58();
        sub_1E65E5D78();

        sub_1E65E5B48();
        (*(v40 + 8))(v41, v42);
        return sub_1E64F0AE0(v43, type metadata accessor for GalleryDescriptor);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v32 = *v22;
        MEMORY[0x1E694E740](8);
        return MEMORY[0x1E694E740](v32);
      }

      v45 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
      v46 = *v45;
      v47 = v45[1];
      v48 = v58;
      sub_1E5FAB460(v22, v58, &qword_1ED073648, &qword_1E6607560);
      MEMORY[0x1E694E740](9);
      sub_1E65DE4A8();
      sub_1E65D8CC8();
      sub_1E61B73EC(v46, v47);
      sub_1E65E5D78();

      v49 = v48;
      v50 = &qword_1ED073648;
      v51 = &qword_1E6607560;
      return sub_1E5DFE50C(v49, v50, v51);
    }

    if (EnumCaseMultiPayload == 5)
    {
      MEMORY[0x1E694E740](5);
      sub_1E65E5D78();

      sub_1E65E1268();
    }

    else
    {
      MEMORY[0x1E694E740](6);
      sub_1E65E5D78();

      sub_1E65D94E8();
    }

LABEL_22:
    sub_1E65E5D78();
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      MEMORY[0x1E694E740](0);
      sub_1E65E5D78();
    }

    v52 = *(v22 + 2);
    MEMORY[0x1E694E740](1);
    sub_1E65E2328();
    if (!v52)
    {
      return sub_1E65E6D48();
    }

    sub_1E65E6D48();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
    v34 = *&v22[v33[12]];
    v35 = *&v22[v33[16] + 8];
    v36 = &v22[v33[20]];
    v37 = *(v36 + 1);
    v63 = *v36;
    sub_1E5FAB460(v22, v19, &qword_1ED073718, &qword_1E65ED978);
    MEMORY[0x1E694E740](2);
    sub_1E633EE38(v19, v17);
    v38 = v53;
    if ((*(v53 + 48))(v17, 1, v11) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      (*(v38 + 32))(v13, v17, v11);
      sub_1E65E6D48();
      sub_1E5DF4934(&qword_1ED07A7E0, MEMORY[0x1E699F1B8], MEMORY[0x1E699F1C8]);
      sub_1E65E5B48();
      (*(v38 + 8))(v13, v11);
    }

    MEMORY[0x1E694E740](v34);
    if (v35)
    {
      sub_1E65E6D48();
      sub_1E65E5D78();

      if (v37)
      {
LABEL_26:
        sub_1E65E6D48();
        sub_1E65E5D78();

LABEL_29:
        v50 = &qword_1ED073718;
        v51 = &qword_1E65ED978;
        v49 = v19;
        return sub_1E5DFE50C(v49, v50, v51);
      }
    }

    else
    {
      sub_1E65E6D48();
      if (v37)
      {
        goto LABEL_26;
      }
    }

    sub_1E65E6D48();
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
    v60 = *&v22[*(v24 + 48)];
    v25 = *(v24 + 64);
    v27 = v61;
    v26 = v62;
    v28 = v63;
    (*(v62 + 32))(v61, v22, v63);
    v29 = v55;
    v30 = v57;
    (*(v55 + 32))(v8, &v22[v25], v57);
    MEMORY[0x1E694E740](3);
    sub_1E5DF4934(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1E65E5B48();
    sub_1E65E5D78();

    sub_1E5DF4934(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E65E5B48();
    (*(v29 + 8))(v8, v30);
    return (*(v26 + 8))(v27, v28);
  }

  else
  {
    v44 = v54;
    (*(v54 + 32))(v6, v22, v4);
    MEMORY[0x1E694E740](4);
    sub_1E5DF4934(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
    sub_1E65E5B48();
    return (*(v44 + 8))(v6, v4);
  }
}

uint64_t sub_1E64EC3CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A800, &qword_1E66079A0);
  v158 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v166 = &v128 - v3;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A808, &qword_1E66079A8);
  v154 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v164 = &v128 - v4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A810, &qword_1E66079B0);
  v157 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v165 = &v128 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A818, &qword_1E66079B8);
  v152 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v171 = &v128 - v6;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A820, &qword_1E66079C0);
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v170 = &v128 - v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A828, &qword_1E66079C8);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v162 = &v128 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A830, &qword_1E66079D0);
  v151 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v163 = &v128 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A838, &qword_1E66079D8);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v169 = &v128 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A840, &qword_1E66079E0);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v161 = &v128 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A848, &qword_1E66079E8);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v160 = &v128 - v12;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A850, &qword_1E66079F0);
  v168 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v14 = &v128 - v13;
  v167 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v15 = MEMORY[0x1EEE9AC00](v167);
  v140 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v136 = &v128 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v159 = &v128 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v135 = (&v128 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = (&v128 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v137 = &v128 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v128 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v128 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v128 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v128 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v128 - v39;
  v41 = a1[3];
  v175 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1E64F2398();
  v173 = v14;
  v42 = v176;
  sub_1E65E6D98();
  if (v42)
  {
    goto LABEL_12;
  }

  v130 = v38;
  v129 = v35;
  v131 = v29;
  v132 = v32;
  v44 = v169;
  v43 = v170;
  v45 = v171;
  v176 = 0;
  v133 = v40;
  v46 = v172;
  v47 = v173;
  v48 = v174;
  v49 = sub_1E65E6AF8();
  v50 = (2 * *(v49 + 16)) | 1;
  v177 = v49;
  v178 = v49 + 32;
  v179 = 0;
  v180 = v50;
  v51 = sub_1E5FBE3F8();
  if (v51 == 10 || v179 != v180 >> 1)
  {
    v56 = sub_1E65E68F8();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v58 = v167;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    (*(v168 + 8))(v47, v48);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v59 = v175;
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v51 > 4u)
  {
    if (v51 <= 6u)
    {
      if (v51 == 5)
      {
        v182 = 5;
        sub_1E64F2638();
        v67 = v176;
        sub_1E65E6A68();
        if (v67)
        {
          goto LABEL_37;
        }

        v182 = 0;
        v68 = v147;
        v69 = sub_1E65E6AA8();
        v94 = v93;
        v176 = v69;
        v181 = 1;
        sub_1E64F268C();
        sub_1E65E6AD8();
        (*(v145 + 8))(v43, v68);
        (*(v168 + 8))(v47, v48);
        swift_unknownObjectRelease();
        v95 = v182;
        v96 = v134;
        *v134 = v176;
        v96[1] = v94;
        *(v96 + 16) = v95;
      }

      else
      {
        v182 = 6;
        sub_1E64F2590();
        v79 = v176;
        sub_1E65E6A68();
        if (v79)
        {
          goto LABEL_37;
        }

        v182 = 0;
        v80 = v149;
        v81 = sub_1E65E6AA8();
        v103 = v102;
        v176 = v81;
        v181 = 1;
        sub_1E64F25E4();
        sub_1E65E6AD8();
        (*(v152 + 8))(v45, v80);
        (*(v168 + 8))(v47, v48);
        swift_unknownObjectRelease();
        v115 = v182;
        v96 = v135;
        *v135 = v176;
        v96[1] = v103;
        *(v96 + 16) = v115;
      }

      swift_storeEnumTagMultiPayload();
      v92 = v96;
      goto LABEL_43;
    }

    if (v51 == 7)
    {
      v182 = 7;
      sub_1E64F253C();
      v72 = v176;
      sub_1E65E6A68();
      if (!v72)
      {
        sub_1E65D72D8();
        v182 = 0;
        sub_1E5DF4934(&qword_1ED0734A8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
        v73 = v155;
        sub_1E65E6AD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28);
        type metadata accessor for GalleryDescriptor(0);
        v182 = 1;
        sub_1E5DF4934(&qword_1ED07A888, type metadata accessor for GalleryDescriptor, &protocol conformance descriptor for GalleryDescriptor);
        v84 = v159;
        v85 = v165;
        sub_1E65E6AD8();
        (*(v157 + 8))(v85, v73);
        (*(v168 + 8))(v47, v48);
        swift_unknownObjectRelease();
LABEL_39:
        swift_storeEnumTagMultiPayload();
        v92 = v84;
        goto LABEL_43;
      }

LABEL_37:
      (*(v168 + 8))(v47, v48);
      goto LABEL_11;
    }

    if (v51 != 8)
    {
      v182 = 9;
      sub_1E64F23EC();
      v76 = v176;
      sub_1E65E6A68();
      if (v76)
      {
        (*(v168 + 8))(v47, v48);
        swift_unknownObjectRelease();
        v59 = v175;
        return __swift_destroy_boxed_opaque_existential_1(v59);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
      v182 = 0;
      sub_1E64F28D8(&qword_1ED07A860, MEMORY[0x1E699CA98]);
      v82 = v140;
      v83 = v156;
      sub_1E65E6AD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970);
      v182 = 1;
      sub_1E64F2440();
      v87 = v166;
      sub_1E65E6AD8();
      (*(v158 + 8))(v87, v83);
      (*(v168 + 8))(v47, v48);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v92 = v82;
      goto LABEL_43;
    }

    v182 = 8;
    sub_1E64F2494();
    v61 = v164;
    v62 = v176;
    sub_1E65E6A68();
    if (v62)
    {
      goto LABEL_37;
    }

    sub_1E64F24E8();
    v63 = v153;
    sub_1E65E6AD8();
    (*(v154 + 8))(v61, v63);
    (*(v168 + 8))(v47, v48);
    swift_unknownObjectRelease();
    v86 = v136;
    *v136 = v182;
LABEL_40:
    swift_storeEnumTagMultiPayload();
    v92 = v86;
    goto LABEL_43;
  }

  if (v51 > 1u)
  {
    v52 = v176;
    if (v51 == 2)
    {
      v182 = 2;
      sub_1E64F2788();
      sub_1E65E6A68();
      if (!v52)
      {
        sub_1E65E20A8();
        v182 = 0;
        sub_1E5DF4934(&qword_1ED07A8C0, MEMORY[0x1E699F1B8], MEMORY[0x1E699F1D8]);
        v70 = v148;
        sub_1E65E6A98();
        v71 = v168;
        v182 = 1;
        v104 = sub_1E65E6AC8();
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
        *&v132[v105[12]] = v104;
        v182 = 2;
        v106 = sub_1E65E6A88();
        v116 = v44;
        v117 = v47;
        v118 = v48;
        v119 = &v132[v105[16]];
        *v119 = v106;
        v119[1] = v120;
        v182 = 3;
        v121 = sub_1E65E6A88();
        v176 = v122;
        v123 = v121;
        v111 = v132;
        v124 = &v132[v105[20]];
        (*(v146 + 8))(v116, v70);
        (*(v71 + 8))(v117, v118);
        swift_unknownObjectRelease();
        v125 = v176;
        *v124 = v123;
        v124[1] = v125;
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v51 == 3)
    {
      v182 = 3;
      sub_1E64F2734();
      v53 = v163;
      sub_1E65E6A68();
      if (!v52)
      {
        sub_1E65D72D8();
        v182 = 0;
        sub_1E5DF4934(&qword_1ED0734A8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
        v54 = v150;
        sub_1E65E6AD8();
        v55 = v168;
        v182 = 1;
        v107 = sub_1E65E6AA8();
        v109 = v108;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
        v111 = v131;
        v112 = &v131[*(v110 + 48)];
        v176 = *(v110 + 64);
        *v112 = v107;
        v112[1] = v109;
        v171 = v109;
        sub_1E65D74E8();
        v182 = 2;
        sub_1E5DF4934(&qword_1ED073F38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        sub_1E65E6AD8();
        (*(v151 + 8))(v53, v54);
        (*(v55 + 8))(v173, v174);
        swift_unknownObjectRelease();
LABEL_42:
        swift_storeEnumTagMultiPayload();
        v92 = v111;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v182 = 4;
    sub_1E64F26E0();
    v74 = v162;
    sub_1E65E6A68();
    if (!v52)
    {
      sub_1E65E1518();
      sub_1E5DF4934(&qword_1ED074C08, MEMORY[0x1E699E860], MEMORY[0x1E699E878]);
      v84 = v137;
      v75 = v144;
      sub_1E65E6AD8();
      (*(v143 + 8))(v74, v75);
      (*(v168 + 8))(v47, v48);
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v64 = v176;
  if (v51)
  {
    v182 = 1;
    sub_1E64F27DC();
    v77 = v161;
    sub_1E65E6A68();
    if (v64)
    {
      goto LABEL_37;
    }

    v181 = 0;
    sub_1E64F2830();
    v78 = v142;
    sub_1E65E6AD8();
    v97 = v47;
    v98 = v48;
    v99 = v182;
    v181 = 1;
    v100 = sub_1E65E6A88();
    v101 = v77;
    v114 = v113;
    (*(v141 + 8))(v101, v78);
    (*(v168 + 8))(v97, v98);
    swift_unknownObjectRelease();
    v86 = v129;
    *v129 = v99;
    *(v86 + 1) = v100;
    *(v86 + 2) = v114;
    goto LABEL_40;
  }

  v182 = 0;
  sub_1E64F2884();
  v65 = v160;
  sub_1E65E6A68();
  if (v64)
  {
    goto LABEL_37;
  }

  v66 = v139;
  v88 = sub_1E65E6AA8();
  v90 = v89;
  (*(v138 + 8))(v65, v66);
  (*(v168 + 8))(v47, v48);
  swift_unknownObjectRelease();
  v91 = v130;
  *v130 = v88;
  v91[1] = v90;
  swift_storeEnumTagMultiPayload();
  v92 = v91;
LABEL_43:
  v126 = v133;
  sub_1E64F0A78(v92, v133, type metadata accessor for ActionButtonDescriptor.Kind);
  v127 = v175;
  sub_1E64F0A78(v126, v46, type metadata accessor for ActionButtonDescriptor.Kind);
  return __swift_destroy_boxed_opaque_existential_1(v127);
}

uint64_t sub_1E64EE090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7D8, &qword_1E6607968);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F09BC();
  sub_1E65E6DA8();
  v8[15] = 0;
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E65E6B78();
  if (!v1)
  {
    type metadata accessor for ActionButtonDescriptor(0);
    v8[14] = 1;
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    sub_1E5DF4934(&qword_1EE2D8EC0, type metadata accessor for ActionButtonDescriptor.Kind, &unk_1E66075D0);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E64EE290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65D76F8();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7C8, &qword_1E6607960);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ActionButtonDescriptor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F09BC();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1E5DF4934(&qword_1ED073B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v13 = v23;
  v14 = v25;
  sub_1E65E6AD8();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1E5DF4934(&qword_1ED07A7D0, type metadata accessor for ActionButtonDescriptor.Kind, &unk_1E66075F8);
  sub_1E65E6AD8();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1E64F0A78(v5, &v19[*(v18 + 20)], type metadata accessor for ActionButtonDescriptor.Kind);
  sub_1E64F0A10(v15, v20, type metadata accessor for ActionButtonDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E64F0AE0(v15, type metadata accessor for ActionButtonDescriptor);
}

uint64_t sub_1E64EE6A4(uint64_t a1)
{
  v2 = sub_1E64F2884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE6E0(uint64_t a1)
{
  v2 = sub_1E64F2884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE71C()
{
  v1 = 0x74616469646E6163;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6567616D69;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
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

uint64_t sub_1E64EE790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E64F37EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E64EE7B8(uint64_t a1)
{
  v2 = sub_1E64F2788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE7F4(uint64_t a1)
{
  v2 = sub_1E64F2788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE830()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_1E64EE86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EE94C(uint64_t a1)
{
  v2 = sub_1E64F27DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE988(uint64_t a1)
{
  v2 = sub_1E64F27DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE9CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E64F3958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E64EE9F4(uint64_t a1)
{
  v2 = sub_1E64F2398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEA30(uint64_t a1)
{
  v2 = sub_1E64F2398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEA6C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E696D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_1E64EEADC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E64F3CB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E64EEB04(uint64_t a1)
{
  v2 = sub_1E64F2734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEB40(uint64_t a1)
{
  v2 = sub_1E64F2734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEB98(uint64_t a1)
{
  v2 = sub_1E64F26E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEBD4(uint64_t a1)
{
  v2 = sub_1E64F26E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEC10()
{
  if (*v0)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E64EEC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E6618910 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E65E6C18();

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

uint64_t sub_1E64EED44(uint64_t a1)
{
  v2 = sub_1E64F2638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EED80(uint64_t a1)
{
  v2 = sub_1E64F2638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEDBC()
{
  if (*v0)
  {
    return 0x636E657265666572;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E64EEE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EEEF4(uint64_t a1)
{
  v2 = sub_1E64F2590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEF30(uint64_t a1)
{
  v2 = sub_1E64F2590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEF6C()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_1E64EEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EF09C(uint64_t a1)
{
  v2 = sub_1E64F253C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF0D8(uint64_t a1)
{
  v2 = sub_1E64F253C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E64EF1A4(uint64_t a1)
{
  v2 = sub_1E64F2494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF1E0(uint64_t a1)
{
  v2 = sub_1E64F2494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF21C()
{
  if (*v0)
  {
    return 0x437363697274656DLL;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1E64EF264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437363697274656DLL && a2 == 0xEE00747865746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EF348(uint64_t a1)
{
  v2 = sub_1E64F23EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF384(uint64_t a1)
{
  v2 = sub_1E64F23EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF3F0()
{
  sub_1E65E6D28();
  sub_1E64EB8E8(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF434(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E64EB8E8(v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF470()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0x4B747865746E6F63;
  }
}

uint64_t sub_1E64EF4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B747865746E6F63 && a2 == 0xEA00000000007965;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EF58C(uint64_t a1)
{
  v2 = sub_1E64F09BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF5C8(uint64_t a1)
{
  v2 = sub_1E64F09BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF634()
{
  sub_1E65E6D28();
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E65E5B48();
  sub_1E64EB8E8(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF6D8(uint64_t a1)
{
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E65E5B48();
  return sub_1E64EB8E8(a1);
}

uint64_t sub_1E64EF764(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E65E5B48();
  sub_1E64EB8E8(v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF804(uint64_t a1, uint64_t a2)
{
  if ((sub_1E65D76D8() & 1) == 0)
  {
    return 0;
  }

  return sub_1E64E9F58();
}

uint64_t sub_1E64EF86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a2 + *(a1 + 20));
  *v2 = 0x323232323232;
  v2[1] = 0xE600000000000000;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  return sub_1E65D76E8();
}

uint64_t sub_1E64EF8EC()
{
  if (*v0)
  {
    return 0x6C6C616D73;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E64EF918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656772616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64EF9EC(uint64_t a1)
{
  v2 = sub_1E64EFE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFA28(uint64_t a1)
{
  v2 = sub_1E64EFE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EFA64(uint64_t a1)
{
  v2 = sub_1E64EFEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFAA0(uint64_t a1)
{
  v2 = sub_1E64EFEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EFADC(uint64_t a1)
{
  v2 = sub_1E64EFE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFB18(uint64_t a1)
{
  v2 = sub_1E64EFE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlanButtonPlacement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A738, &qword_1E66073F0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A740, &qword_1E66073F8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A748, &qword_1E6607400);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64EFE04();
  sub_1E65E6DA8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E64EFE58();
    v14 = v18;
    sub_1E65E6B18();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E64EFEAC();
    sub_1E65E6B18();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E64EFE04()
{
  result = qword_1ED07A750;
  if (!qword_1ED07A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A750);
  }

  return result;
}

unint64_t sub_1E64EFE58()
{
  result = qword_1ED07A758;
  if (!qword_1ED07A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A758);
  }

  return result;
}

unint64_t sub_1E64EFEAC()
{
  result = qword_1ED07A760;
  if (!qword_1ED07A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A760);
  }

  return result;
}

uint64_t ViewPlanButtonPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t ViewPlanButtonPlacement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A768, &qword_1E6607408);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A770, &qword_1E6607410);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A778, &unk_1E6607418);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64EFE04();
  v12 = v31;
  sub_1E65E6D98();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E65E6AF8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E5FBE3F0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E65E68F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v22 = &type metadata for ViewPlanButtonPlacement;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E64EFE58();
        sub_1E65E6A68();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E64EFEAC();
        sub_1E65E6A68();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1E64F0464()
{
  result = qword_1ED07A780;
  if (!qword_1ED07A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A780);
  }

  return result;
}

void sub_1E64F0520(uint64_t a1)
{
  if (!qword_1EE2D62A8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073718, &qword_1E65ED978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D62A8);
    }
  }
}

void sub_1E64F0650()
{
  if (!qword_1EE2D64F8)
  {
    v0 = sub_1E65E1518();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D64F8);
    }
  }
}

void sub_1E64F0698(uint64_t a1)
{
  if (!qword_1EE2D72A8)
  {
    sub_1E65D72D8();
    type metadata accessor for GalleryDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D72A8);
    }
  }
}

unint64_t sub_1E64F0758()
{
  result = qword_1ED07A790;
  if (!qword_1ED07A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A790);
  }

  return result;
}

unint64_t sub_1E64F07B0()
{
  result = qword_1ED07A798;
  if (!qword_1ED07A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A798);
  }

  return result;
}

unint64_t sub_1E64F0808()
{
  result = qword_1ED07A7A0;
  if (!qword_1ED07A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7A0);
  }

  return result;
}

unint64_t sub_1E64F0860()
{
  result = qword_1ED07A7A8;
  if (!qword_1ED07A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7A8);
  }

  return result;
}

unint64_t sub_1E64F08B8()
{
  result = qword_1ED07A7B0;
  if (!qword_1ED07A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7B0);
  }

  return result;
}

unint64_t sub_1E64F0910()
{
  result = qword_1ED07A7B8;
  if (!qword_1ED07A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7B8);
  }

  return result;
}

unint64_t sub_1E64F0968()
{
  result = qword_1ED07A7C0;
  if (!qword_1ED07A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7C0);
  }

  return result;
}

unint64_t sub_1E64F09BC()
{
  result = qword_1EE2D8FA8;
  if (!qword_1EE2D8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8FA8);
  }

  return result;
}

uint64_t sub_1E64F0A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64F0A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64F0AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64F0B40(char *a1, void *a2)
{
  v205 = a1;
  v206 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v191 = &v180 - v3;
  v180 = type metadata accessor for GalleryDescriptor(0);
  v4 = MEMORY[0x1EEE9AC00](v180);
  v190 = (&v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v192 = (&v180 - v6);
  v7 = sub_1E65E1518();
  v194 = *(v7 - 8);
  v195 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v184 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D74E8();
  v201 = *(v9 - 8);
  v202 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v189 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v200 = &v180 - v12;
  v13 = sub_1E65D72D8();
  v14 = *(v13 - 8);
  v203 = v13;
  v204 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v188 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v180 - v17;
  v18 = sub_1E65E20A8();
  v186 = *(v18 - 8);
  v187 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v182 = &v180 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7E8, &qword_1E6607990);
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v180 - v22;
  v23 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v199 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v196 = &v180 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v198 = &v180 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = (&v180 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v180 - v34);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v180 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v197 = &v180 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v180 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v180 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v180 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7F0, &qword_1E6607998);
  v50 = MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v180 - v51;
  v53 = &v180 + *(v50 + 56) - v51;
  sub_1E64F0A10(v205, &v180 - v51, type metadata accessor for ActionButtonDescriptor.Kind);
  v54 = v206;
  v206 = v53;
  sub_1E64F0A10(v54, v53, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v56 = v197;
          sub_1E64F0A10(v52, v197, type metadata accessor for ActionButtonDescriptor.Kind);
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
          v58 = *(v57 + 48);
          v60 = *(v56 + v58);
          v59 = *(v56 + v58 + 8);
          v61 = *(v57 + 64);
          v62 = v206;
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v205 = v52;
            v63 = *(v62 + v58 + 8);
            v195 = *(v62 + v58);
            v196 = v60;
            v198 = v63;
            v199 = v59;
            v65 = v203;
            v64 = v204;
            v66 = v193;
            (*(v204 + 32))(v193, v62, v203);
            v67 = v201;
            v68 = *(v201 + 32);
            v69 = v202;
            v68(v200, v56 + v61, v202);
            v70 = v189;
            v68(v189, v62 + v61, v69);
            v71 = sub_1E65D7288();
            v72 = *(v64 + 8);
            v73 = v65;
            v72(v56, v65);
            if (v71)
            {
              if (v196 == v195 && v199 == v198)
              {

                v75 = v201;
                v74 = v202;
                v76 = v200;
                v77 = v193;
LABEL_95:
                v81 = sub_1E65D7468();
                v172 = *(v75 + 8);
                v172(v70, v74);
                v172(v76, v74);
                v72(v77, v73);
                sub_1E64F0AE0(v205, type metadata accessor for ActionButtonDescriptor.Kind);
                return v81 & 1;
              }

              v171 = sub_1E65E6C18();

              v75 = v201;
              v74 = v202;
              v76 = v200;
              v77 = v193;
              if (v171)
              {
                goto LABEL_95;
              }

              v174 = *(v201 + 8);
              v174(v70, v202);
              v174(v76, v74);
              v72(v77, v73);
            }

            else
            {

              v165 = *(v67 + 8);
              v165(v70, v69);
              v165(v200, v69);
              v72(v66, v65);
            }

            goto LABEL_112;
          }

          (*(v201 + 8))(v56 + v61, v202);

          (*(v204 + 8))(v56, v203);
          goto LABEL_63;
        }

        sub_1E64F0A10(v52, v38, type metadata accessor for ActionButtonDescriptor.Kind);
        v125 = v206;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v127 = v194;
          v126 = v195;
          v128 = v184;
          (*(v194 + 32))(v184, v125, v195);
          v81 = MEMORY[0x1E6948EE0](v38, v128);
          v129 = *(v127 + 8);
          v129(v128, v126);
          v129(v38, v126);
          sub_1E64F0AE0(v52, type metadata accessor for ActionButtonDescriptor.Kind);
          return v81 & 1;
        }

        (*(v194 + 8))(v38, v195);
LABEL_63:
        sub_1E5DFE50C(v52, &qword_1ED07A7F0, &qword_1E6607998);
LABEL_64:
        v81 = 0;
        return v81 & 1;
      }

      v91 = v52;
      sub_1E64F0A10(v52, v43, type metadata accessor for ActionButtonDescriptor.Kind);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
      v93 = v92[12];
      v205 = *&v43[v93];
      v94 = v92[16];
      v96 = *&v43[v94];
      v95 = *&v43[v94 + 8];
      v97 = v92[20];
      v98 = *&v43[v97];
      v99 = *&v43[v97 + 8];
      v100 = v206;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_1E5DFE50C(v43, &qword_1ED073718, &qword_1E65ED978);
        v52 = v91;
        goto LABEL_63;
      }

      v101 = *(v100 + v93);
      v202 = v96;
      v203 = v101;
      v103 = *(v100 + v94);
      v102 = *(v100 + v94 + 8);
      v200 = v98;
      v201 = v103;
      v204 = v102;
      v104 = *(v100 + v97 + 8);
      v199 = *(v100 + v97);
      v105 = *(v183 + 48);
      v106 = v185;
      sub_1E5FAB460(v43, v185, &qword_1ED073718, &qword_1E65ED978);
      sub_1E5FAB460(v100, v106 + v105, &qword_1ED073718, &qword_1E65ED978);
      v108 = v186;
      v107 = v187;
      v109 = *(v186 + 48);
      if (v109(v106, 1, v187) == 1)
      {
        if (v109(v106 + v105, 1, v107) == 1)
        {
          sub_1E5DFE50C(v106, &qword_1ED073718, &qword_1E65ED978);
          v110 = v204;
LABEL_88:
          if (v205 == v203)
          {
            if (!v95)
            {
              if (v110)
              {

                goto LABEL_124;
              }

              goto LABEL_117;
            }

            if (v110)
            {
              if (v202 == v201 && v95 == v110)
              {

                goto LABEL_117;
              }

              v178 = sub_1E65E6C18();

              if (v178)
              {
LABEL_117:
                if (v99)
                {
                  if (v104)
                  {
                    if (v200 == v199 && v99 == v104)
                    {

LABEL_127:
                      v145 = v91;
                      goto LABEL_128;
                    }

                    v179 = sub_1E65E6C18();

                    if (v179)
                    {
                      goto LABEL_127;
                    }

LABEL_125:
                    sub_1E64F0AE0(v91, type metadata accessor for ActionButtonDescriptor.Kind);
                    goto LABEL_64;
                  }
                }

                else if (!v104)
                {
                  goto LABEL_127;
                }

LABEL_124:

                goto LABEL_125;
              }
            }

            else
            {
            }

            goto LABEL_124;
          }

LABEL_98:

          goto LABEL_124;
        }
      }

      else
      {
        v206 = v104;
        v155 = v182;
        sub_1E633EE38(v106, v182);
        if (v109(v106 + v105, 1, v107) != 1)
        {
          v167 = v106 + v105;
          v168 = v181;
          (*(v108 + 32))(v181, v167, v107);
          sub_1E5DF4934(&qword_1ED07A7F8, MEMORY[0x1E699F1B8], MEMORY[0x1E699F1D0]);
          v169 = sub_1E65E5B98();
          v170 = *(v108 + 8);
          v170(v168, v107);
          v170(v155, v107);
          sub_1E5DFE50C(v106, &qword_1ED073718, &qword_1E65ED978);
          v104 = v206;
          v110 = v204;
          if ((v169 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_88;
        }

        (*(v108 + 8))(v155, v107);
      }

      sub_1E5DFE50C(v106, &qword_1ED07A7E8, &qword_1E6607990);
      goto LABEL_125;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1E64F0A10(v52, v48, type metadata accessor for ActionButtonDescriptor.Kind);
      v83 = *v48;
      v82 = v48[1];
      v84 = v206;
      if (!swift_getEnumCaseMultiPayload())
      {
        v85 = *v84;
        v86 = v84[1];
        if (v83 == v85 && v82 == v86)
        {
        }

        else
        {
          v166 = sub_1E65E6C18();

          if ((v166 & 1) == 0)
          {
            sub_1E64F0AE0(v52, type metadata accessor for ActionButtonDescriptor.Kind);
            goto LABEL_64;
          }
        }

        v145 = v52;
LABEL_128:
        sub_1E64F0AE0(v145, type metadata accessor for ActionButtonDescriptor.Kind);
        v81 = 1;
        return v81 & 1;
      }

LABEL_52:

      goto LABEL_63;
    }

    sub_1E64F0A10(v52, v46, type metadata accessor for ActionButtonDescriptor.Kind);
    v147 = *(v46 + 1);
    v146 = *(v46 + 2);
    v148 = v206;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_52;
    }

    v149 = v52;
    v151 = v148[1];
    v150 = v148[2];
    if (sub_1E65E2318())
    {
      if (v146)
      {
        if (v150)
        {
          if (v147 == v151 && v146 == v150)
          {

LABEL_106:
            v145 = v149;
            goto LABEL_128;
          }

          v175 = sub_1E65E6C18();

          if (v175)
          {
            goto LABEL_106;
          }

LABEL_82:
          sub_1E64F0AE0(v149, type metadata accessor for ActionButtonDescriptor.Kind);
          goto LABEL_64;
        }
      }

      else if (!v150)
      {
        goto LABEL_106;
      }
    }

    else
    {
    }

    goto LABEL_82;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v87 = v206;
    if (EnumCaseMultiPayload == 5)
    {
      sub_1E64F0A10(v52, v35, type metadata accessor for ActionButtonDescriptor.Kind);
      v89 = *v35;
      v88 = v35[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_52;
      }

      v90 = v52;
      if (v89 == *v87 && v88 == v87[1])
      {
      }

      else
      {
        v156 = sub_1E65E6C18();

        if ((v156 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v157 = sub_1E65E1268();
      v159 = v158;
      v160 = sub_1E65E1268();
    }

    else
    {
      sub_1E64F0A10(v52, v32, type metadata accessor for ActionButtonDescriptor.Kind);
      v153 = *v32;
      v152 = v32[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_52;
      }

      v90 = v52;
      if (v153 == *v87 && v152 == v87[1])
      {
      }

      else
      {
        v162 = sub_1E65E6C18();

        if ((v162 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v157 = sub_1E65D94E8();
      v159 = v163;
      v160 = sub_1E65D94E8();
    }

    if (v157 == v160 && v159 == v161)
    {

LABEL_76:
      v145 = v90;
      goto LABEL_128;
    }

    v164 = sub_1E65E6C18();

    if (v164)
    {
      goto LABEL_76;
    }

LABEL_77:
    sub_1E64F0AE0(v90, type metadata accessor for ActionButtonDescriptor.Kind);
    goto LABEL_64;
  }

  v78 = v206;
  if (EnumCaseMultiPayload == 7)
  {
    v111 = v198;
    sub_1E64F0A10(v52, v198, type metadata accessor for ActionButtonDescriptor.Kind);
    v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      sub_1E64F0AE0(v111 + v112, type metadata accessor for GalleryDescriptor);
      (*(v204 + 8))(v111, v203);
      goto LABEL_63;
    }

    v205 = v52;
    v114 = v203;
    v113 = v204;
    v115 = v188;
    (*(v204 + 32))(v188, v78, v203);
    v116 = v78;
    v117 = v192;
    sub_1E64F0A78(v111 + v112, v192, type metadata accessor for GalleryDescriptor);
    v118 = v190;
    sub_1E64F0A78(&v116[v112], v190, type metadata accessor for GalleryDescriptor);
    v119 = sub_1E65D7288();
    v120 = *(v113 + 8);
    v120(v111, v114);
    if (v119 & 1) != 0 && (*v117 == *v118 && v117[1] == v118[1] || (sub_1E65E6C18()) && (sub_1E65E0008())
    {
      v121 = sub_1E65DFB58();
      v123 = v122;
      if (v121 == sub_1E65DFB58() && v123 == v124)
      {

        goto LABEL_108;
      }

      v176 = sub_1E65E6C18();

      if (v176)
      {
LABEL_108:
        v177 = sub_1E65D7288();
        v120(v115, v114);
        if (v177)
        {
          sub_1E64F0AE0(v118, type metadata accessor for GalleryDescriptor);
          sub_1E64F0AE0(v117, type metadata accessor for GalleryDescriptor);
          v145 = v205;
          goto LABEL_128;
        }

        goto LABEL_111;
      }
    }

    v120(v115, v114);
LABEL_111:
    sub_1E64F0AE0(v118, type metadata accessor for GalleryDescriptor);
    sub_1E64F0AE0(v117, type metadata accessor for GalleryDescriptor);
    goto LABEL_112;
  }

  if (EnumCaseMultiPayload != 8)
  {
    v130 = v199;
    sub_1E64F0A10(v52, v199, type metadata accessor for ActionButtonDescriptor.Kind);
    v131 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48);
    v133 = *(v130 + v131);
    v132 = *(v130 + v131 + 8);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      sub_1E61B73EC(v133, v132);
      sub_1E5DFE50C(v130, &qword_1ED073648, &qword_1E6607560);
      goto LABEL_63;
    }

    v205 = v52;
    v134 = *&v78[v131];
    v135 = *&v78[v131 + 8];
    v136 = v191;
    sub_1E5FAB460(v78, v191, &qword_1ED073648, &qword_1E6607560);
    type metadata accessor for WorkoutActionsMenuLoadState(0);
    sub_1E5DF4934(&qword_1EE2D8298, type metadata accessor for WorkoutActionsMenuLoadState, &protocol conformance descriptor for WorkoutActionsMenuLoadState);
    v137 = v136;
    sub_1E5DF4934(&qword_1EE2D82B0, type metadata accessor for WorkoutActionsMenuLoadState, &protocol conformance descriptor for WorkoutActionsMenuLoadState);
    sub_1E5DF4934(&qword_1EE2D82A8, type metadata accessor for WorkoutActionsMenuLoadState, &protocol conformance descriptor for WorkoutActionsMenuLoadState);
    v138 = sub_1E65DE498();
    sub_1E5DFE50C(v130, &qword_1ED073648, &qword_1E6607560);
    if (v138)
    {
      v139 = sub_1E65D8CC8();
      v141 = v140;
      sub_1E61B73EC(v133, v132);
      v142 = sub_1E65D8CC8();
      v144 = v143;
      sub_1E61B73EC(v134, v135);
      if (v139 == v142 && v141 == v144)
      {

        sub_1E5DFE50C(v137, &qword_1ED073648, &qword_1E6607560);
        v145 = v205;
        goto LABEL_128;
      }

      v173 = sub_1E65E6C18();

      sub_1E5DFE50C(v137, &qword_1ED073648, &qword_1E6607560);
      v145 = v205;
      if (v173)
      {
        goto LABEL_128;
      }
    }

    else
    {
      sub_1E5DFE50C(v136, &qword_1ED073648, &qword_1E6607560);
      sub_1E61B73EC(v133, v132);
      sub_1E61B73EC(v134, v135);
    }

LABEL_112:
    sub_1E64F0AE0(v205, type metadata accessor for ActionButtonDescriptor.Kind);
    goto LABEL_64;
  }

  v79 = v196;
  sub_1E64F0A10(v52, v196, type metadata accessor for ActionButtonDescriptor.Kind);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    goto LABEL_63;
  }

  v80 = *v79 ^ *v78;
  sub_1E64F0AE0(v52, type metadata accessor for ActionButtonDescriptor.Kind);
  v81 = v80 ^ 1;
  return v81 & 1;
}