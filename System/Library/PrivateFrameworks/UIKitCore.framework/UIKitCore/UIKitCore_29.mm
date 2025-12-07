void sub_188E4530C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, uint64_t a14)
{
  v178 = a8;
  v188 = a7;
  v175 = a6;
  v174 = a5;
  v207 = a9;
  v185 = a14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0, &qword_18A64BD18);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v186 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v153 - v24;
  v195 = sub_18A4A3EB8();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v153 - v27;
  v184 = sub_18A4A3CD8();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v181 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v182 = &v153 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v173 = &v153 - v32;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  v170 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v172 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v180 = &v153 - v35;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  v169 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v153 - v36;
  v166 = sub_18A4A3E48();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v199 = &v153 - v39;
  v197 = sub_18A4A3E68();
  v196 = *(v197 - 8);
  v40 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v168 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v198 = &v153 - v42;
  v43 = sub_18A4A3CC8();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v200 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80, &unk_18A66CB20);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v153 - v47;
  v203 = sub_18A4A3BA8();
  v204 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v190 = &v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v189 = &v153 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v205 = &v153 - v53;
  v202 = sub_18A4A4088();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v206 = &v153 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = swift_allocObject();
  *(v55 + 16) = a3;
  v56 = a3;
  v57 = sub_18A4A33E8();
  LODWORD(a3) = [v57 containsObject_];

  if (!a3)
  {
    v161 = v40;
    v58 = v207;
    v191 = v56;
    v179 = v55;
    v162 = v44;
    v163 = v43;
    v59 = sub_18A4A33E8();
    [v59 addObject_];

    if (([a2 isHidden] & 1) != 0 || (objc_msgSend(a2, sel_alpha), _UIViewIsFullyTransparentGivenAlpha(v60)) || (v61 = objc_msgSend(a2, sel_layer), v160 = a2, v62 = v61, v63 = objc_msgSend(v61, sel_disableUpdateMask), v62, (v63 & 0x10) != 0))
    {
      (*(v162 + 56))(v58, 1, 1, v163);

      goto LABEL_10;
    }

    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(&v210, v211);
    v64 = v206;
    sub_18A4A3E88();
    __swift_destroy_boxed_opaque_existential_0Tm(&v210);
    v65 = sub_18A4A4028();
    v66 = v179;
    if (v65)
    {
      v214.origin.x = a10;
      v214.origin.y = a11;
      v214.size.width = a12;
      v214.size.height = a13;
      if (CGRectIsEmpty(v214))
      {
        (*(v201 + 8))(v64, v202);
        (*(v162 + 56))(v207, 1, 1, v163);
LABEL_50:

        return;
      }
    }

    sub_188DE55B8(a1, v48, a10, a11, a12, a13);
    v67 = v204;
    v68 = v203;
    v69 = (*(v204 + 48))(v48, 1, v203);
    v70 = v207;
    if (v69 == 1)
    {
      (*(v201 + 8))(v206, v202);
      sub_188A3F5FC(v48, &unk_1EA93EE80, &unk_18A66CB20);
      (*(v162 + 56))(v70, 1, 1, v163);
      goto LABEL_50;
    }

    v154 = a1;
    (*(v67 + 32))(v205, v48, v68);
    if (sub_18A4A3FC8())
    {
      v71 = v160;
      [v160 bounds];
      v158 = [(UIView *)v71 _convertRect:v191 toViewInSameWindow:v72, v73, v74, v75];
      v157 = v76;
      v156 = v77;
      v155 = v78;
    }

    else
    {
      v79 = *(MEMORY[0x1E695F050] + 8);
      v158 = *MEMORY[0x1E695F050];
      v157 = v79;
      v80 = *(MEMORY[0x1E695F050] + 24);
      v156 = *(MEMORY[0x1E695F050] + 16);
      v155 = v80;
    }

    v81 = v196;
    v82 = v198;
    if (sub_18A4A3FC8())
    {
      v83.n128_f64[0] = [(UIView *)v160 _convertRect:v191 toViewInSameWindow:a10, a11, a12, a13];
    }

    v159 = *(v67 + 16);
    v159(v189, v205, v68, v83);
    v84 = MEMORY[0x1E69E7CC0];
    sub_18A4A3738();
    v212 = v84;
    sub_18A4A3E98();
    v85 = v199;
    v86 = v197;
    if ((*(v81 + 48))(v199, 1, v197) == 1)
    {
      v87 = &unk_1EA9340C0;
      v88 = &qword_18A64BD38;
      v89 = v85;
    }

    else
    {
      v199 = *(v81 + 32);
      (v199)(v82, v85, v86);
      v90 = UIView._appIntentsIntelligenceProvider.getter(&v208);
      if (v209)
      {
        sub_188E4DA48(&v208, &v210);
        __swift_project_boxed_opaque_existential_0(&v210, v211);
        v91 = sub_18A4A41E8();
        if (v92 >> 60 != 15)
        {
          v93 = v92;
          v94 = v91;
          sub_188DBF7D8(v91, v92);
          v95 = v164;
          v189 = v94;
          sub_18A4A3E38();
          if (sub_18A4A3E58())
          {
            __swift_project_boxed_opaque_existential_0(&v210, v211);
            sub_18A4A41F8();
            sub_18A4A3E28();
          }

          v96 = v165;
          v97 = v180;
          v98 = v166;
          (*(v165 + 16))(v180, v95, v166);
          (*(v96 + 56))(v97, 0, 1, v98);
          sub_18A4A3848();
          sub_18A4A3978();
          v99 = sub_188DBF840(v189, v93);
          (*(v96 + 8))(v95, v98, v99);
          v66 = v179;
        }

        __swift_project_boxed_opaque_existential_0(&v210, v211);
        if (sub_18A4A4218())
        {
          v100 = v176;
          sub_18A4A3968();
          v101 = v180;
          v102 = v177;
          sub_18A4A3828();
          (*(v169 + 8))(v100, v102);
          v189 = "Element type\nExpected ";
          v103 = sub_18A4A6E88();
          v104 = v173;
          (*(*(v103 - 8) + 56))(v173, 1, 1, v103);
          sub_188E4DA78(&v210, &v208);
          v105 = v196 + 16;
          v106 = v168;
          v107 = v197;
          (*(v196 + 16))(v168, v198, v197);
          v108 = v172;
          sub_188A3F29C(v101, v172, &unk_1EA9340B0, &qword_18A64BD28);
          v109 = (*(v105 + 64) + 64) & ~*(v105 + 64);
          v110 = (v161 + *(v170 + 80) + v109) & ~*(v170 + 80);
          v111 = swift_allocObject();
          sub_188E4DA48(&v208, (v111 + 16));
          (v199)(v111 + v109, v106, v107);
          sub_188A3F704(v108, v111 + v110, &unk_1EA9340B0, &qword_18A64BD28);
          v112 = sub_18A4A3958();
          v68 = v203;
          sub_18A4A3818();
          sub_188A3F5FC(v104, &unk_1EA93C110, &qword_18A64BD20);
          v112(&v208, 0);
          v66 = v179;
          sub_188A3F5FC(v180, &unk_1EA9340B0, &qword_18A64BD28);
        }

        __swift_project_boxed_opaque_existential_0(&v210, v211);
        v113 = v160;
        [v160 bounds];
        sub_18A4A4108();
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v153 - 4) = v188;
        *(&v153 - 3) = v66;
        *(&v153 - 2) = v113;
        v115 = sub_18A4A75A8();

        sub_188DFA234(v115);
        (*(v196 + 8))(v198, v197);
        v116.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(&v210);
        v67 = v204;
        goto LABEL_32;
      }

      (*(v81 + 8))(v82, v86, v90);
      v87 = &qword_1EA934060;
      v88 = &qword_18A64BCD8;
      v89 = &v208;
    }

    sub_188A3F5FC(v89, v87, v88);
LABEL_32:
    v117 = v190;
    v159(v190, v205, v68, v116);
    v118 = (*(v67 + 88))(v117, v68);
    v119 = v163;
    v120 = v162;
    if (v118 == *MEMORY[0x1E69DBBE0])
    {
      (*(v67 + 96))(v117, v68);
      v121 = v183;
      v122 = v182;
      v123 = v184;
      (*(v183 + 32))(v182, v117, v184);
      (*(v121 + 16))(v181, v122, v123);
      v124 = objc_allocWithZone(sub_18A4A3498());
      v125 = sub_18A4A3488();
      [v160 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];

      (*(v121 + 8))(v122, v123);
    }

    else
    {
      v126 = (*(v67 + 8))(v117, v68);
      MEMORY[0x1EEE9AC00](v126);
      *(&v153 - 8) = v160;
      *(&v153 - 7) = a10;
      *(&v153 - 6) = a11;
      *(&v153 - 5) = a12;
      *(&v153 - 4) = a13;
      v127 = v188;
      *(&v153 - 3) = v154;
      *(&v153 - 2) = v127;
      *(&v153 - 1) = v66;
      v128 = sub_18A4A33D8();
      sub_188DFA234(v128);
    }

    v129 = v207;
    sub_18A4A3798();
    if (sub_18A4A4018())
    {
      v211 = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      *&v210 = v160;
      v130 = v160;
      [v130 _intelligenceBaseClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_188E4D924(&v210, ObjCClassMetadata);
      __swift_destroy_boxed_opaque_existential_0Tm(&v210);
      sub_18A4A3898();
      v132 = [(UIView *)v130 __viewDelegate];
      if (v132)
      {
        v133 = v132;
        v134 = sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);
        v211 = v134;
        *&v210 = v133;
        v135 = v133;
        sub_188E4D924(&v210, v134);
        __swift_destroy_boxed_opaque_existential_0Tm(&v210);
        sub_18A4A3948();
      }
    }

    if (sub_18A4A4048())
    {
      v136 = _UIGetAccessibilityLabelSafe(v160);
      if (v136)
      {
        v137 = v136;
        sub_18A4A7288();
      }

      sub_18A4A38B8();
    }

    v138 = v192;
    sub_18A4A3F88();
    v139 = v194;
    v140 = v193;
    v141 = v195;
    (*(v194 + 104))(v193, *MEMORY[0x1E69DBCB8], v195);
    v142 = sub_18A4A3EA8();
    v143 = *(v139 + 8);
    v143(v140, v141);
    v144 = v200;
    v143(v138, v141);
    if (v142)
    {
      v145 = [(UIView *)v160 __viewDelegate];
      if (v145)
      {
        v146 = v145;
        v147 = [v145 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }

      v148 = v186;
      sub_18A4A37C8();
      v149 = sub_18A4A3CF8();
      v150 = (*(*(v149 - 8) + 48))(v148, 1, v149);
      sub_188A3F5FC(v148, &unk_1EA9340A0, &qword_18A64BD18);
      if (v150 == 1)
      {
        v151 = [v160 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }
    }

    v152 = v206;
    if (sub_18A4A3FE8())
    {
      sub_18A4A3B88();
      (*(v120 + 8))(v144, v119);
      (*(v204 + 8))(v205, v203);
      (*(v201 + 8))(v152, v202);
    }

    else
    {
      (*(v204 + 8))(v205, v203);
      (*(v201 + 8))(v152, v202);
      (*(v120 + 32))(v129, v144, v119);
      (*(v120 + 56))(v129, 0, 1, v119);
    }

    goto LABEL_50;
  }

  (*(v44 + 56))(v207, 1, 1, v43);

LABEL_10:
}

uint64_t sub_188E46C04@<X0>(uint64_t a1@<X0>, double (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v9 = v8;
  v195 = a3;
  v194 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0, &qword_18A64BD18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v183 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v184 = &v157 - v19;
  v190 = sub_18A4A3EB8();
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v157 - v22;
  v182 = sub_18A4A3CD8();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v180 = &v157 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v175 = &v157 - v27;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  v173 = *(v170 - 8);
  v28 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v174 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v178 = &v157 - v30;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  v172 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v157 - v31;
  v169 = sub_18A4A3E48();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v185 = &v157 - v34;
  v193 = sub_18A4A3E68();
  v192 = *(v193 - 8);
  v35 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v171 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v191 = &v157 - v37;
  v38 = sub_18A4A3CC8();
  v203 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v197 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80, &unk_18A66CB20);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v157 - v41;
  v200 = sub_18A4A3BA8();
  v201 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v186 = &v157 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v157 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v196 = &v157 - v48;
  v199 = sub_18A4A4088();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v202 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18A4A33E8();
  v51 = [v50 containsObject_];

  if ((v51 & 1) == 0)
  {
    v166 = v38;
    v55 = sub_18A4A33E8();
    [v55 addObject_];

    if (([v9 isHidden] & 1) != 0 || (objc_msgSend(v9, sel_alpha), _UIViewIsFullyTransparentGivenAlpha(v56)) || (v57 = objc_msgSend(v9, sel_layer), v165 = v9, v58 = v57, v59 = objc_msgSend(v57, sel_disableUpdateMask), v58, (v59 & 0x10) != 0))
    {
      v52 = *(v203 + 56);
      v53 = a4;
      v54 = v166;
      goto LABEL_10;
    }

    v164 = a4;
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(&v206, v207);
    v60 = v202;
    sub_18A4A3E88();
    __swift_destroy_boxed_opaque_existential_0Tm(&v206);
    if (sub_18A4A4028())
    {
      v210.origin.x = a5;
      v210.origin.y = a6;
      v210.size.width = a7;
      v210.size.height = a8;
      if (CGRectIsEmpty(v210))
      {
        (*(v198 + 8))(v60, v199);
        v61 = *(v203 + 56);
        v62 = v164;
LABEL_15:
        v68 = 1;
        v69 = v166;
        return v61(v62, v68, 1, v69);
      }
    }

    sub_188DE55B8(a1, v42, a5, a6, a7, a8);
    v64 = v201;
    v65 = v200;
    v66 = (*(v201 + 48))(v42, 1, v200);
    v67 = v164;
    if (v66 == 1)
    {
      (*(v198 + 8))(v60, v199);
      sub_188A3F5FC(v42, &unk_1EA93EE80, &unk_18A66CB20);
      v61 = *(v203 + 56);
      v62 = v67;
      goto LABEL_15;
    }

    v158 = a1;
    v70 = v196;
    (*(v64 + 32))(v196, v42, v65);
    if (sub_18A4A3FC8())
    {
      v71 = v165;
      [v165 bounds];
      v72 = v71;
      v64 = v201;
      v162 = v194(v72);
      v161 = v73;
      v160 = v74;
      v159 = v75;
    }

    else
    {
      v76 = *(MEMORY[0x1E695F050] + 8);
      v162 = *MEMORY[0x1E695F050];
      v161 = v76;
      v77 = *(MEMORY[0x1E695F050] + 24);
      v160 = *(MEMORY[0x1E695F050] + 16);
      v159 = v77;
    }

    if (sub_18A4A3FC8())
    {
      v78.n128_f64[0] = (v194)(v165, a5, a6, a7, a8);
    }

    v163 = *(v64 + 16);
    v163(v46, v70, v65, v78);
    v79 = MEMORY[0x1E69E7CC0];
    sub_18A4A3738();
    v208 = v79;
    v80 = v185;
    sub_18A4A3E98();
    v81 = v80;
    v82 = v192;
    v83 = v80;
    v84 = v193;
    if ((*(v192 + 48))(v83, 1, v193) == 1)
    {
      v85 = &unk_1EA9340C0;
      v86 = &qword_18A64BD38;
      v87 = v81;
    }

    else
    {
      v88 = *(v82 + 32);
      v89 = v191;
      v185 = (v82 + 32);
      v162 = *&v88;
      v88(v191, v81, v84);
      v90 = UIView._appIntentsIntelligenceProvider.getter(&v204);
      if (v205)
      {
        sub_188E4DA48(&v204, &v206);
        __swift_project_boxed_opaque_existential_0(&v206, v207);
        v91 = sub_18A4A41E8();
        v93 = v197;
        if (v92 >> 60 != 15)
        {
          v94 = v92;
          v95 = v91;
          sub_188DBF7D8(v91, v92);
          v96 = v167;
          v161 = v95;
          sub_18A4A3E38();
          if (sub_18A4A3E58())
          {
            __swift_project_boxed_opaque_existential_0(&v206, v207);
            sub_18A4A41F8();
            sub_18A4A3E28();
          }

          v97 = v168;
          v98 = v96;
          v99 = v178;
          v100 = v169;
          (*(v168 + 16))(v178, v98, v169);
          (*(v97 + 56))(v99, 0, 1, v100);
          sub_18A4A3848();
          sub_18A4A3978();
          v101 = sub_188DBF840(v161, v94);
          v102 = v98;
          v93 = v197;
          (*(v97 + 8))(v102, v100, v101);
        }

        __swift_project_boxed_opaque_existential_0(&v206, v207);
        v103 = v191;
        if (sub_18A4A4218())
        {
          v104 = v176;
          sub_18A4A3968();
          v105 = v178;
          v106 = v177;
          sub_18A4A3828();
          (*(v172 + 8))(v104, v106);
          v176 = "Element type\nExpected ";
          v107 = sub_18A4A6E88();
          v108 = v175;
          (*(*(v107 - 8) + 56))(v175, 1, 1, v107);
          sub_188E4DA78(&v206, &v204);
          v109 = v192 + 16;
          v110 = v171;
          v111 = v193;
          (*(v192 + 16))(v171, v191, v193);
          v112 = v174;
          sub_188A3F29C(v105, v174, &unk_1EA9340B0, &qword_18A64BD28);
          v113 = (*(v109 + 64) + 64) & ~*(v109 + 64);
          v114 = (v35 + *(v173 + 80) + v113) & ~*(v173 + 80);
          v115 = swift_allocObject();
          sub_188E4DA48(&v204, (v115 + 16));
          (*&v162)(v115 + v113, v110, v111);
          sub_188A3F704(v112, v115 + v114, &unk_1EA9340B0, &qword_18A64BD28);
          v116 = sub_18A4A3958();
          sub_18A4A3818();
          v117 = v108;
          v103 = v191;
          sub_188A3F5FC(v117, &unk_1EA93C110, &qword_18A64BD20);
          v116(&v204, 0);
          v70 = v196;
          sub_188A3F5FC(v178, &unk_1EA9340B0, &qword_18A64BD28);
        }

        __swift_project_boxed_opaque_existential_0(&v206, v207);
        v118 = v165;
        [v165 bounds];
        sub_18A4A4108();
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v120 = v195;
        *(&v157 - 4) = v194;
        *(&v157 - 3) = v120;
        *(&v157 - 2) = v118;
        v121 = sub_18A4A75A8();

        sub_188DFA234(v121);
        (*(v192 + 8))(v103, v193);
        v122.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(&v206);
        v65 = v200;
        v64 = v201;
        goto LABEL_33;
      }

      (*(v82 + 8))(v89, v84, v90);
      v85 = &qword_1EA934060;
      v86 = &qword_18A64BCD8;
      v87 = &v204;
    }

    sub_188A3F5FC(v87, v85, v86);
    v93 = v197;
LABEL_33:
    v123 = v186;
    v163(v186, v70, v65, v122);
    v124 = (*(v64 + 88))(v123, v65);
    v125 = v166;
    if (v124 == *MEMORY[0x1E69DBBE0])
    {
      (*(v64 + 96))(v123, v65);
      v126 = v181;
      v127 = v180;
      v128 = v182;
      (*(v181 + 32))(v180, v123, v182);
      (*(v126 + 16))(v179, v127, v128);
      v129 = objc_allocWithZone(sub_18A4A3498());
      v130 = sub_18A4A3488();
      [v165 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];

      (*(v126 + 8))(v127, v128);
    }

    else
    {
      v131 = (*(v64 + 8))(v123, v65);
      MEMORY[0x1EEE9AC00](v131);
      *(&v157 - 8) = v165;
      *(&v157 - 7) = a5;
      *(&v157 - 6) = a6;
      *(&v157 - 5) = a7;
      *(&v157 - 4) = a8;
      v132 = v194;
      *(&v157 - 3) = v158;
      *(&v157 - 2) = v132;
      *(&v157 - 1) = v195;
      v133 = sub_18A4A33D8();
      sub_188DFA234(v133);
    }

    v134 = v164;
    sub_18A4A3798();
    if (sub_18A4A4018())
    {
      v207 = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      *&v206 = v165;
      v135 = v165;
      [v135 _intelligenceBaseClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_188E4D924(&v206, ObjCClassMetadata);
      __swift_destroy_boxed_opaque_existential_0Tm(&v206);
      sub_18A4A3898();
      v137 = [(UIView *)v135 __viewDelegate];
      if (v137)
      {
        v138 = v137;
        v139 = sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);
        v207 = v139;
        *&v206 = v138;
        v140 = v138;
        sub_188E4D924(&v206, v139);
        __swift_destroy_boxed_opaque_existential_0Tm(&v206);
        sub_18A4A3948();
      }
    }

    if (sub_18A4A4048())
    {
      v141 = _UIGetAccessibilityLabelSafe(v165);
      if (v141)
      {
        v142 = v141;
        sub_18A4A7288();
      }

      sub_18A4A38B8();
    }

    v143 = v187;
    sub_18A4A3F88();
    v144 = v189;
    v145 = v188;
    v146 = v190;
    (*(v189 + 104))(v188, *MEMORY[0x1E69DBCB8], v190);
    v147 = sub_18A4A3EA8();
    v148 = *(v144 + 8);
    v148(v145, v146);
    v148(v143, v146);
    if (v147)
    {
      v149 = [(UIView *)v165 __viewDelegate];
      if (v149)
      {
        v150 = v149;
        v151 = [v149 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }

      v152 = v183;
      sub_18A4A37C8();
      v153 = sub_18A4A3CF8();
      v154 = (*(*(v153 - 8) + 48))(v152, 1, v153);
      sub_188A3F5FC(v152, &unk_1EA9340A0, &qword_18A64BD18);
      if (v154 == 1)
      {
        v155 = [v165 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }
    }

    v156 = v202;
    if (sub_18A4A3FE8())
    {
      sub_18A4A3B88();
      (*(v203 + 8))(v93, v125);
      (*(v201 + 8))(v196, v200);
      return (*(v198 + 8))(v156, v199);
    }

    (*(v201 + 8))(v196, v200);
    (*(v198 + 8))(v156, v199);
    (*(v203 + 32))(v134, v93, v125);
    v61 = *(v203 + 56);
    v62 = v134;
    v68 = 0;
    v69 = v125;
    return v61(v62, v68, 1, v69);
  }

  v52 = *(v203 + 56);
  v53 = a4;
  v54 = v38;
LABEL_10:

  return v52(v53, 1, 1, v54);
}

void UIView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040, &qword_18A64BCC8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21[-1] - v11;
  v13 = sub_18A4A3CC8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4148();
  sub_18A4A4138();
  sub_18A4A4128();

  v21[3] = sub_18A4A3CD8();
  v21[4] = MEMORY[0x1E69DBC28];
  __swift_allocate_boxed_opaque_existential_0(v21);
  sub_18A4A3478();
  v17 = objc_allocWithZone(sub_18A4A3468());
  v18 = sub_18A4A3458();
  v19 = v5;
  sub_188E4530C(v18, v19, v19, &unk_1EFABDFF8, &unk_18A64BF70, sub_188E4DF20, sub_188E4DF80, v12, a2, a3, a4, a5, sub_188DE7DC8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_188A3F5FC(v12, &unk_1EA934040, &qword_18A64BCC8);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_18A4A4098();

    (*(v14 + 8))(v16, v13);
  }

  sub_18A4A4138();
  sub_18A4A4118();
}

uint64_t sub_188E48788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_188E487AC, 0, 0);
}

uint64_t sub_188E487AC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_188E4886C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x1EEE4BDC0](v7, v5, v6, v2, v3);
}

uint64_t sub_188E4886C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void (*UIView._appIntentsIntelligenceProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  *a1 = v3;
  *(v3 + 192) = v1;
  UIView._appIntentsIntelligenceProvider.getter(v3);
  return sub_188E489D8;
}

void sub_188E489D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 48, &qword_1EA934060, &qword_18A64BCD8);
    sub_188A3F29C(v2 + 48, v2 + 96, &qword_1EA934060, &qword_18A64BCD8);
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = __swift_project_boxed_opaque_existential_0((v2 + 96), *(v2 + 120));
      v6 = *(v4 - 8);
      v7 = MEMORY[0x1EEE9AC00](v5);
      v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = sub_18A4A86A8();
      (*(v6 + 8))(v9, v4);
      v3 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    }

    else
    {
      v10 = 0;
    }

    [*(v2 + 192) _setInternalAppIntentsIntelligenceProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 48, &qword_1EA934060, &qword_18A64BCD8);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 144, &qword_1EA934060, &qword_18A64BCD8);
    v12 = *(v2 + 168);
    if (v12)
    {
      v13 = __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_18A4A86A8();
      (*(v14 + 8))(v17, v12);
      v11 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 144));
    }

    else
    {
      v18 = 0;
    }

    [*(v2 + 192) _setInternalAppIntentsIntelligenceProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &qword_1EA934060, &qword_18A64BCD8);
  free(v2);
}

uint64_t sub_188E48DB4(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  sub_188A34624(0, a3, a4);
  if (a2 >> 62)
  {
    v6 = sub_18A4A8448();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v6;
    }

LABEL_10:
    sub_18A4A80E8();
    v8 = 0xD000000000000046;
    v7 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v6;
  }

  sub_18A4A80E8();
  v7 = 0x800000018A68B680;
  v8 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v8, v7);
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v11);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E48FB0(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  if (a2 >> 62)
  {
    v5 = sub_18A4A8448();
    if (swift_dynamicCastClass())
    {
      return v5;
    }

LABEL_10:
    sub_18A4A80E8();
    v7 = 0xD000000000000046;
    v6 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v5;
  }

  sub_18A4A80E8();
  v6 = 0x800000018A68B680;
  v7 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v7, v6);
  v9 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49160(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for GlassGroupLayerView(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for GlassGroupLayerView(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000003ALL, 0x800000018A68B7C0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49314(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMaterialDefinitionView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMaterialDefinitionView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A68B8F0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E494E8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIGenieAnimator.Vertex();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIGenieAnimator.Vertex();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000002DLL, 0x800000018A68B8C0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49688(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMagicMorphAnimation.Item();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMagicMorphAnimation.Item();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD00000000000002BLL, 0x800000018A68B970);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E498AC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for PlatterItemView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PlatterItemView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A68B800);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49B68(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIOrbitalColorView.SpokeLayer();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIOrbitalColorView.SpokeLayer();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000031, 0x800000018A68B9A0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49D5C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), void *a4)
{
  a3(0);
  if (a2 >> 62)
  {
    v6 = sub_18A4A8448();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v6;
    }

LABEL_10:
    sub_18A4A80E8();
    v8 = 0xD000000000000046;
    v7 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v6;
  }

  sub_18A4A80E8();
  v7 = 0x800000018A68B680;
  v8 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v8, v7);
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v11);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E49F3C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A68B9E0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A0E4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for _UIMagicMorphAnimation();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for _UIMagicMorphAnimation();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A68B7A0);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A2D4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for ScrollEdgeEffectView();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ScrollEdgeEffectView();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A68B910);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A488(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for NavigationBarLayout.InsertLayoutData();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for NavigationBarLayout.InsertLayoutData();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000037, 0x800000018A68B880);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A628(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for HostedViewWrapper();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for HostedViewWrapper();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000038, 0x800000018A68B840);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4A830(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v7 = sub_18A4A8448();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v7;
    }

LABEL_10:
    sub_18A4A80E8();
    v9 = 0xD000000000000046;
    v8 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v7;
  }

  sub_18A4A80E8();
  v8 = 0x800000018A68B680;
  v9 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v9, v8);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v11);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4AA14(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for ShadowLayer();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ShadowLayer();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A68B930);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4ABDC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    type metadata accessor for UIPromptSuggestionView(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for UIPromptSuggestionView(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A68BA40);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4ADD0(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v8 = sub_18A4A8448();
    a3(0);
    if (swift_dynamicCastUnknownClass())
    {
      return v8;
    }

LABEL_10:
    sub_18A4A80E8();
    v10 = 0xD000000000000046;
    v9 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastUnknownClass())
  {
    return v8;
  }

  sub_18A4A80E8();
  v9 = 0x800000018A68B680;
  v10 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v10, v9);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v12 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v12);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4B0FC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_18A4A8448();
    _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_18A4A80E8();
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_18A4A80E8();
  v3 = "ationsDebugDescription";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v4, v3 | 0x8000000000000000);
  MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A68BA00);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v6);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_188E4B314(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
    v8 = sub_18A4A8448();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    sub_18A4A80E8();
    v10 = 0xD000000000000046;
    v9 = 0x800000018A68B6D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  sub_18A4A80E8();
  v9 = 0x800000018A68B680;
  v10 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x18CFE22D0](v10, v9);
  MEMORY[0x18CFE22D0](a4, a5);
  MEMORY[0x18CFE22D0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v12 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v12);

  result = sub_18A4A83A8();
  __break(1u);
  return result;
}

char *sub_188E4B53C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934308, &qword_18A64BEF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4B6D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_188E4B7F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934120, &qword_18A64BDB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188E4B8F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934128, &unk_18A64D420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_188E4BA14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934248, &qword_18A64BE58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934250, &qword_18A64BE60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4BB80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934130, &unk_18A64D3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188E4BC84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934228, &qword_18A64BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_188E4BDD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342D0, &qword_18A64BED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4BEF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342C8, &qword_18A64BEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C030(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_188E4C13C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342A0, &qword_18A64BEB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_188E4C2A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934410, &qword_18A64BF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C3E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_188E4C538(void *result, int64_t a2, char a3, void *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934280, &unk_18A64BE90);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 < a4 || v11 + 4 >= &a4[4 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_188E4C668(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934338, &qword_18A64BF18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C774(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C280, &qword_18A64BE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4C8D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_188E4CA1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_188E4CB78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_188E4CD60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934310, &qword_18A64BF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188E4CEE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934070, &qword_18A64BCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_188E4CFEC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for _UITabButton, 0x754262615449555FLL, 0xEC0000006E6F7474);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D09C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1ED48DBD0, off_1E70E94E8);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D130(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4ADD0(a2, a3, type metadata accessor for CGColor, 0x52726F6C6F434743, 0xEA00000000006665);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D1DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, _s11GroupLayoutCMa, 0x79614C70756F7247, 0xEB0000000074756FLL);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D28C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48FC30, off_1E70EA170);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D320(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48D5A0, off_1E70EAD90);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D3B4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1EA931120, off_1E70EADD8);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D448(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA9342A8, off_1E70EAA68);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D4DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for _UITimeline.Action, 0x6E6F69746341, 0xE600000000000000);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_188E4D580;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D588(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48CFF0, 0x1E69977A0);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D61C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &unk_1EA92FD90, off_1E70EC298);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

void (*sub_188E4D6B0(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, _s4ItemCMa, 1835365449, 0xE400000000000000);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D750(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA930340, off_1E70E9380);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_188E4D7E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1EA930850, off_1E70EAEB8);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_188E4D878(uint64_t *result, unint64_t a2, unint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E4B314(a2, a3, type metadata accessor for InProcessAnimationManager.TickEntry, 0x72746E456B636954, 0xE900000000000079);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_188E4DF98;
  }

  __break(1u);
  return result;
}

char *sub_188E4D924(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_18A4A86A8();
  Class = object_getClass(v3);
  swift_unknownObjectRelease();
  if (!Class)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = MEMORY[0x1E69E7CC0];
  if (ObjCClassMetadata != a2)
  {
    do
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      class_getName(ObjCClassFromMetadata);
      v8 = sub_18A4A7398();
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_188C8D8B4(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_188C8D8B4((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (class_getSuperclass(ObjCClassFromMetadata) && swift_getObjCClassMetadata() != a2);
  }

  return v6;
}

_OWORD *sub_188E4DA48(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_188E4DA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_188E4DADC(uint64_t a1, double a2)
{
  v4 = v3;
  v6 = *(sub_18A4A3E68() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_188C48500;

  return sub_188E48788(a1, v2 + 16, v2 + v7, v2 + v10);
}

uint64_t objectdestroy_4Tm_1(double a1)
{
  v2 = sub_18A4A3E68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  (*(v3 + 8))(v1 + v5, v2, v11);
  v12 = sub_18A4A3E48();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v1 + v9, 1, v12))
  {
    (*(v13 + 8))(v1 + v9, v12);
  }

  return MEMORY[0x1EEE6BDD0](v1, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_188E4DDCC(uint64_t a1, double a2)
{
  v4 = v3;
  v6 = *(sub_18A4A3E68() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_188C482B4;

  return sub_188E48788(a1, v2 + 16, v2 + v7, v2 + v10);
}

void sub_188E4DF28(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(v2 + 16))(*(v2 + 32), *a1, a1[1], a1[2], a1[3]);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

double sub_188E4DFA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  swift_endAccess();
  return result;
}

double sub_188E4E0CC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, v2);
  sub_188E4DFA0(v4);
  sub_188BADB78();
  sub_18A4A4668();

  return result;
}

void sub_188E4E1BC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = a1;
  sub_188AF1874(&selRef_bounds, &selRef_setBounds_, a2, a3, a4, a5, v10, v9);
}

double sub_188E4E248@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  sub_188E4E2A4(v4, v13);

  result = *v13;
  v6 = v13[1];
  v7 = v13[2];
  v8 = v13[3];
  v9 = v13[4];
  v10 = v13[5];
  v11 = v13[6];
  v12 = v13[7];
  *a2 = v13[0];
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  return result;
}

double sub_188E4E2A4@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  v10[0].receiver = v2;
  v10[0].super_class = v4;
  [(objc_super *)v10 transform3D];
  v5 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  v6 = v16;
  *(a2 + 96) = v15;
  *(a2 + 112) = v6;
  v7 = v10[2];
  *a2 = v10[1];
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v9;
  return result;
}

void sub_188E4E344(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v10[0] = *a3;
  v10[1] = v3;
  v4 = a3[3];
  v10[2] = a3[2];
  v10[3] = v4;
  v5 = a3[5];
  v10[4] = a3[4];
  v10[5] = v5;
  v6 = a3[7];
  v10[6] = a3[6];
  v10[7] = v6;
  v9 = a1;
  sub_188E4E3B4(v10, v9, v7, v8);
}

void sub_188E4E3B4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_transform3D);
  v12.receiver = v4;
  v12.super_class = v6;
  v7 = a1[5];
  v11[4] = a1[4];
  v11[5] = v7;
  v8 = a1[7];
  v11[6] = a1[6];
  v11[7] = v8;
  v9 = a1[1];
  v11[0] = *a1;
  v11[1] = v9;
  v10 = a1[3];
  v11[2] = a1[2];
  v11[3] = v10;
  objc_msgSendSuper2(&v12, sel_setTransform3D_, v11);
  sub_188E4E480(v14);
}

void sub_188E4E480(_OWORD *a1)
{
  v2 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_18A4A46F8())
    {
      [v4 transform3D];
      v5 = a1[5];
      *&v9.m31 = a1[4];
      *&v9.m33 = v5;
      v6 = a1[7];
      *&v9.m41 = a1[6];
      *&v9.m43 = v6;
      v7 = a1[1];
      *&v9.m11 = *a1;
      *&v9.m13 = v7;
      v8 = a1[3];
      *&v9.m21 = a1[2];
      *&v9.m23 = v8;
      if (!CATransform3DEqualToTransform(&a, &v9))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

double sub_188E4E584@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  sub_188E4E5D0(v4, v8);

  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a2 = v8[0];
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

double sub_188E4E5D0@<D0>(uint64_t a1@<X3>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  v9.receiver = v2;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, sel_transform);
  result = *&v6;
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

void sub_188E4E660(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v7[0] = *a3;
  v7[1] = v3;
  v7[2] = a3[2];
  v6 = a1;
  sub_188E4E6C0(v7, v6, v4, v5);
}

void sub_188E4E6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, sel_transform);
  v13.receiver = v4;
  v13.super_class = v8;
  v9 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v9;
  v11 = v6;
  v12 = v7;
  objc_msgSendSuper2(&v13, sel_setTransform_, v10);
  sub_188E4E784(v15);
}

void sub_188E4E784(uint64_t a1)
{
  v1 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_18A4A46F8())
    {
      [v3 transform];
      if ((sub_18A4A7A08() & 1) == 0)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_188E4E868(void *a1)
{
  v1 = a1;
  v5 = sub_188E4E89C(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_188E4E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_clipsToBounds);
}

void sub_188E4E90C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  sub_188E4E960(v3, v6, v4, v5);
}

void sub_188E4E960(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UICoreHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_clipsToBounds);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_setClipsToBounds_, a1 & 1);
  sub_188E4EA0C(v7);
}

void sub_188E4EA0C(char a1)
{
  v2 = sub_188AF0DAC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_18A4A46F8())
    {
      if ([v4 clipsToBounds] != (a1 & 1))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_188E4EAE8()
{
  v4 = sub_188AF0DAC();
  if (sub_18A4A46F8())
  {
    v0 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    if (*&v4[v0] || (sub_18A4A6CD8(), (sub_18A4A53A8() & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0, &qword_18A651E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFA0;
      v2 = sub_18A4A5578();
      *(inited + 32) = v2;
      v3 = sub_18A4A5548();
      *(inited + 34) = v3;
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v2)
      {
        sub_18A4A5568();
      }

      sub_18A4A5568();
      if (sub_18A4A5568() != v3)
      {
        sub_18A4A5568();
      }

      swift_getObjectType();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_188E4EC7C(void *a1)
{
  v1 = a1;
  sub_188E4ECAC();

  return 1;
}

void sub_188E4ECCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_188E4F644(a3);
}

double sub_188E4ED38(double a1, double a2)
{
  v4 = sub_188AF0DAC();
  v5 = UIHostingViewBase._baselineOffsets(at:)(a1, a2);

  return v5;
}

double sub_188E4ED8C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4ED38(a2, a3);

  return v6;
}

double sub_188E4EDE0(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4EE34(a2, a3);

  return v6;
}

double sub_188E4EE34(double a1, double a2)
{
  v4 = sub_188AF0DAC();
  _s5UIKit17UIHostingViewBaseC19_layoutSizeThatFits_9fixedAxesSo6CGSizeVAG_So09_UILayoutJ0VtF_0(a1, a2);
  v6 = v5;

  return v6;
}

double sub_188E4EE88(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188E4EE34(a2, a3);

  return v6;
}

void sub_188E4EF50()
{
  v0 = sub_188AF0DAC();
  UIHostingViewBase._setNeedsUpdate()();
}

double sub_188E4EFE8@<D0>(uint64_t a1@<X8>)
{
  sub_18A4A53D8();
  v2 = sub_18A4A5C58();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_18A4A5DB8();
  sub_18A4A6C08();
  sub_18A4A45B8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  sub_188E4F8D0(v2, v4, v6 & 1);

  sub_188E4F8E0(v2, v4, v6 & 1);

  return result;
}

double sub_188E4F130@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_18A4A5438();
  v15 = 1;
  sub_188E4EFE8(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_188E4F7F8(&v16, v7);
  sub_188E4F868(v22);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

id sub_188E4F224()
{
  v0 = [objc_allocWithZone(UITextField) initWithFrame_];
  v1 = sub_18A4A7258();
  [v0 setPlaceholder_];

  return v0;
}

uint64_t sub_188E4F2A0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344E8, &qword_18A64C248);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344D8, &qword_18A64C240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9344F0, &qword_18A64C250);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA9344E0, &qword_1EA9344D8, &qword_18A64C240, &unk_18A674048);
    sub_18A4A5608();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_188E4F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344D8, &qword_18A64C240);
  sub_188A34360(&qword_1EA9344E0, &qword_1EA9344D8, &qword_18A64C240, &unk_18A674048);
  return sub_18A4A5618();
}

id sub_188E4F584(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UICoreHostingViewForUIKitTester();
  v6.receiver = v2;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc, v3);
}

void sub_188E4F644(uint64_t a1)
{
  v2 = sub_188AF0DAC();
  if (a1)
  {
    v6 = v2;
    if (sub_18A4A46F8())
    {
      v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
      swift_beginAccess();
      if (v6[v3])
      {
        v4 = sub_18A4A5588();
        sub_18A4A5568();
        sub_18A4A5568();
        if (sub_18A4A5568() != v4)
        {
          sub_18A4A5568();
        }

        sub_18A4A6CD8();
        if (sub_18A4A53A8())
        {
          v5 = sub_18A4A5578();
          sub_18A4A5568();
          if (sub_18A4A5568() != v5)
          {
            sub_18A4A5568();
          }
        }

        swift_getObjectType();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188E4F7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B8, &unk_18A64C1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188E4F868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B8, &unk_18A64C1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_188E4F8D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_188E4F8E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_188E4F90C(uint64_t a1)
{
  result = sub_188E4F934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188E4F934()
{
  result = qword_1EA9344D0;
  if (!qword_1EA9344D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9344D0);
  }

  return result;
}

uint64_t sub_188E4F990(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E4F9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_188E4FA28(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_188E4FB94(a2, &v15);
  v7 = v15;
  v8 = v16;
  if (a2)
  {
    v13 = v16;
    v14 = v15;
    v9 = [a1 customView];
    if (v9)
    {

      v8 = v13;
      v7 = v14;
      v10 = *&v13;
    }

    else
    {
      if ([a1 hasImage])
      {
        v11 = 0.0;
        if (*v3 == 1)
        {
          v8 = v13;
          if ((v3[3] & 1) == 0)
          {
            v11 = 5.0;
            if (v3[4] < 2u)
            {
              v11 = 4.0;
            }
          }
        }

        else
        {
          v8 = v13;
        }

        v12 = 6.0;
      }

      else
      {
        if (![a1 hasTitle])
        {
          v10 = dbl_18A64C350[v3[4]];
          v8 = v13;
          v7 = v14;
          goto LABEL_23;
        }

        v11 = 0.0;
        v8 = v13;
        if (*v3 == 1 && (v3[3] & 1) == 0)
        {
          v11 = 5.0;
          if (v3[4] < 2u)
          {
            v11 = 4.0;
          }
        }

        v12 = 16.0;
      }

      v10 = v12 - v11;
      v7 = v14;
    }
  }

  else
  {
    v10 = 0.0;
    if (*v3 == 1)
    {
      v10 = 12.0;
      if ((v3[3] & 1) == 0)
      {
        v10 = dbl_18A64C368[v3[4]];
      }
    }
  }

LABEL_23:
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = v10;
}

void sub_188E4FB94(char a1@<W1>, double *a2@<X8>)
{
  if (*v2 == 1)
  {
    v3 = v2[4];
    v4 = 5.0;
    if (v3 < 2)
    {
      v4 = 4.0;
    }

    v5 = 0.0;
    if ((v2[3] & 1) == 0)
    {
      v5 = v4;
    }

    v6 = dbl_18A64C380[v3] - (v5 + v5);
    if (a1)
    {
      v7 = 12.0;
      v8 = 16.0 - v5;
      v9 = 10.0 - v5;
      if (v2[3])
      {
        v10 = 12.0;
      }

      else
      {
        v10 = 6.0 - v5;
      }

      if (v2[3])
      {
        v11 = 12.0;
      }

      else
      {
        v11 = v8;
      }

      if ((v2[3] & 1) == 0)
      {
        v7 = v9;
      }
    }

    else
    {
      v10 = 12.0;
      v11 = 12.0;
      v7 = 12.0;
      if ((v2[3] & 1) == 0)
      {
        v10 = dbl_18A64C368[v3];
        v11 = v10;
        v7 = v10;
      }
    }

    *a2 = v10;
    a2[1] = v11;
    a2[2] = v7;
    a2[3] = v6;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

void sub_188E4FC48(void *a1, uint64_t a2)
{
  sub_188BAD9B4(a1);
  sub_188BADE8C(a1);
  if (_UIUseMiniHeightInLandscape(1u))
  {
    [a1 bounds];
    v5 = CGRectGetHeight(v15) < dbl_18A64C380[v2[4]];
  }

  else
  {
    v5 = 0;
  }

  v2[2] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 _barPlattersHidden];

  v2[3] = v7;

  sub_188E4FD18(a1, a2, v8, v9, v10, v11, v12, v13);
}

void sub_188E4FD18(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*v8 == 1)
  {
    if (*(v8 + 1))
    {
      [result _contentMargin];
      v11 = v10;
      [result directionalLayoutMargins];
      if (v11 <= v12)
      {
        v11 = v12;
      }

      [result _contentMargin];
      v14 = v13;
      [result directionalLayoutMargins];
      if (v14 > v15)
      {
        v15 = v14;
      }

      v16 = 0;
      v17 = 0;
    }

    else
    {
      sub_188E4FDF0(result, a2);
      v11 = v18;
    }

    *(v8 + 40) = v16;
    *(v8 + 48) = v11;
    *(v8 + 56) = v17;
    *(v8 + 64) = v15;
  }
}

void sub_188E4FDF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = [a1 traitCollection];
  v7 = sub_18A4A5C08();
  v8 = sub_18A4A5C08();
  v134 = &unk_1EFE7D0C8;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = v9;
    v11 = v5;
    v12 = [v10 _edgesRequiringContentMargin];
    v7 = sub_18A4A5C08();
    if (v12)
    {
      v13 = sub_18A4A5BD8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v13)
      {
        v7 = sub_18A4A5C08();
      }
    }

    if ((v12 & 2) != 0)
    {
      v14 = sub_18A4A5BF8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v14)
      {
        v7 = sub_18A4A5C08();
      }
    }

    if ((v12 & 4) != 0)
    {
      v15 = sub_18A4A5BE8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v15)
      {
        v7 = sub_18A4A5C08();
      }
    }

    if ((v12 & 8) != 0)
    {
      v16 = sub_18A4A5C18();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v16)
      {
        v7 = sub_18A4A5C08();
      }
    }

    v17 = [v10 _adjacentBarEdges];
    v8 = sub_18A4A5C08();
    if (v17)
    {
      v18 = sub_18A4A5BD8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v18)
      {
        v8 = sub_18A4A5C08();
      }
    }

    if ((v17 & 2) != 0)
    {
      v19 = sub_18A4A5BF8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v19)
      {
        v8 = sub_18A4A5C08();
      }
    }

    if ((v17 & 4) != 0)
    {
      v20 = sub_18A4A5BE8();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v20)
      {
        v8 = sub_18A4A5C08();
      }
    }

    if ((v17 & 8) != 0)
    {
      v21 = sub_18A4A5C18();
      sub_18A4A5C08();
      if (sub_18A4A5C08() != v21)
      {
        v8 = sub_18A4A5C08();
      }
    }

    swift_getKeyPath();
    v130 = a2;
    sub_188AF0C98();
    sub_18A4A2C08();

    v22 = *(a2 + 129);
  }

  else
  {
    v22 = 0;
  }

  v23 = [v6 userInterfaceIdiom];
  if (v23 == 5)
  {
    if ([v6 _barPlattersHidden])
    {
      goto LABEL_45;
    }

    type metadata accessor for _UIToolbarSettingsDomain();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v129.receiver = ObjCClassFromMetadata;
    v129.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v60 = objc_msgSendSuper2(&v129, sel_rootSettings);
    if (v60)
    {
      v61 = v60;
      type metadata accessor for _UIToolbarSpec();
      v62 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v63 = *&v62[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
      v128.receiver = ObjCClassFromMetadata;
      v128.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v64 = objc_msgSendSuper2(&v128, sel_rootSettings);
      if (!v64)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v65 = v64;
      v66 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v67 = *&v66[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides];
      v127.receiver = ObjCClassFromMetadata;
      v127.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v68 = objc_msgSendSuper2(&v127, sel_rootSettings);
      if (!v68)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v69 = v68;
      v70 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v71 = *&v70[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides];
      v130 = v63;
      v131 = v67;
      v133 = v71;
      [v5 _contentMargin];
      sub_188FEB69C(v7, v72);
      [v5 safeAreaInsets];
      v126.receiver = ObjCClassFromMetadata;
      v126.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v73 = objc_msgSendSuper2(&v126, sel_rootSettings);
      if (!v73)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v74 = v73;
      v75 = swift_dynamicCastClassUnconditional();

      v58 = *(v75 + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
      goto LABEL_52;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v23 == 1)
  {
    if ([v6 _barPlattersHidden])
    {
      goto LABEL_45;
    }

    type metadata accessor for _UIToolbarSettingsDomain();
    v41 = swift_getObjCClassFromMetadata();
    v125.receiver = v41;
    v125.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v42 = objc_msgSendSuper2(&v125, sel_rootSettings);
    if (v42)
    {
      v43 = v42;
      type metadata accessor for _UIToolbarSpec();
      v44 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v45 = *&v44[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
      v124.receiver = v41;
      v124.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v46 = objc_msgSendSuper2(&v124, sel_rootSettings);
      if (!v46)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v47 = v46;
      v48 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v49 = *&v48[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides];
      v123.receiver = v41;
      v123.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v50 = objc_msgSendSuper2(&v123, sel_rootSettings);
      if (!v50)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v51 = v50;
      v52 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v53 = *&v52[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides];
      v130 = v45;
      v131 = v49;
      v133 = v53;
      [v5 _contentMargin];
      sub_188FEB69C(v7, v54);
      [v5 safeAreaInsets];
      v122.receiver = v41;
      v122.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v55 = objc_msgSendSuper2(&v122, sel_rootSettings);
      if (!v55)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v56 = v55;
      v57 = swift_dynamicCastClassUnconditional();

      v58 = *(v57 + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
LABEL_52:

      return;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (v23)
  {
LABEL_45:
    sub_188E50C24(v3, v5, v6);
    goto LABEL_46;
  }

  if ((*(v3 + 2) & 1) == 0)
  {
    type metadata accessor for _UIToolbarSettingsDomain();
    v5 = swift_getObjCClassFromMetadata();
    v121.receiver = v5;
    v121.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
    v76 = objc_msgSendSuper2(&v121, sel_rootSettings);
    if (!v76)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v77 = v76;
    type metadata accessor for _UIToolbarSpec();
    v24 = &OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding;
    v78 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

    v29 = *&v78[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
    if (v22)
    {
      v117.receiver = v5;
      v117.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v79 = objc_msgSendSuper2(&v117, sel_rootSettings);
      if (!v79)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v80 = v79;
      v81 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v25 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard;
      v116.receiver = v5;
      v116.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v82 = objc_msgSendSuper2(&v116, sel_rootSettings);
      if (!v82)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v7 = v82;
      v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v115.receiver = v5;
      v115.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v83 = objc_msgSendSuper2(&v115, sel_rootSettings);
      if (!v83)
      {
        __break(1u);
LABEL_59:
        v113.receiver = v24;
        v113.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
        v84 = objc_msgSendSuper2(&v113, v25 + 3818);
        if (v84)
        {
          v85 = v84;
          v86 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

          v34 = *&v86[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides];
          v112.receiver = v24;
          v112.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
          v87 = objc_msgSendSuper2(&v112, v25 + 3818);
          if (v87)
          {
            v88 = v87;
            v89 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

            v38 = *&v89[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightBottom];
            v111.receiver = v24;
            v111.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
            v90 = objc_msgSendSuper2(&v111, sel_rootSettings);
            if (v90)
            {
              v40 = v90;
              v33 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides;
              goto LABEL_63;
            }

            goto LABEL_94;
          }

          goto LABEL_91;
        }

        goto LABEL_87;
      }
    }

    else
    {
      v120.receiver = v5;
      v120.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v101 = objc_msgSendSuper2(&v120, sel_rootSettings);
      if (!v101)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v102 = v101;
      v103 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v119.receiver = v5;
      v119.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v104 = objc_msgSendSuper2(&v119, sel_rootSettings);
      if (!v104)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v105 = v104;
      v106 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

      v118.receiver = v5;
      v118.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
      v83 = objc_msgSendSuper2(&v118, sel_rootSettings);
      if (!v83)
      {
LABEL_95:
        __break(1u);
        return;
      }
    }

    v107 = v83;

    v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
LABEL_46:

    return;
  }

  type metadata accessor for _UIToolbarSettingsDomain();
  v24 = swift_getObjCClassFromMetadata();
  v114.receiver = v24;
  v114.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v25 = &selRef_resetInputModeInMainThread;
  v26 = objc_msgSendSuper2(&v114, sel_rootSettings);
  if (!v26)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v27 = v26;
  type metadata accessor for _UIToolbarSpec();
  v28 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v29 = *&v28[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top];
  if (!v22)
  {
    goto LABEL_59;
  }

  v110.receiver = v24;
  v110.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v30 = objc_msgSendSuper2(&v110, &selRef_rtiInputViewInfo + 2);
  if (!v30)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v31 = v30;
  v32 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v33 = &OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard;
  v34 = *&v32[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard];

  v109.receiver = v24;
  v109.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v35 = objc_msgSendSuper2(&v109, sel_rootSettings);
  if (!v35)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v36 = v35;
  v37 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v38 = *&v37[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard];
  v108.receiver = v24;
  v108.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  v39 = objc_msgSendSuper2(&v108, sel_rootSettings);
  if (!v39)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v40 = v39;
LABEL_63:
  v91 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

  v92 = *&v91[*v33];
  v130 = v29;
  v131 = v34;
  v132 = v38;
  v133 = v92;
  if ([v6 _barPlattersHidden])
  {
    [v5 _contentMargin];
    v94 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934560, &qword_18A64C2B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    v96 = sub_18A4A5BF8();
    *(inited + 32) = v96;
    v97 = sub_18A4A5C18();
    *(inited + 33) = v97;
    v98 = sub_18A4A5C08();
    sub_18A4A5C08();
    if (sub_18A4A5C08() != v96)
    {
      v98 = sub_18A4A5C08();
    }

    sub_18A4A5C08();
    if (sub_18A4A5C08() != v97)
    {
      v98 = sub_18A4A5C08();
    }

    v99 = v94;
    v100 = v98;
  }

  else
  {
    sub_188FEB69C(v8, 10.0);
    [v5 _contentMargin];
    v100 = v7;
  }

  sub_188FEB69C(v100, v99);
}

id sub_188E50C24(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for _UIToolbarSettingsDomain();
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  result = objc_msgSendSuper2(&v8, sel_rootSettings);
  if (result)
  {
    v6 = result;
    type metadata accessor for _UIToolbarSpec();
    v7 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

    [a2 _contentMargin];
    [a2 _contentMargin];
    return [a3 _barPlattersHidden];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E50DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_188E50E10(v7, v9) & 1;
}

uint64_t sub_188E50E10(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || ((*(a1 + 2) ^ *(a2 + 2)) & 1) != 0 || ((*(a1 + 3) ^ *(a2 + 3)) & 1) != 0 || *(a1 + 4) != *(a2 + 4) || (sub_18A4A43B8() & 1) == 0)
  {
    return 0;
  }

  return sub_18A4A43B8();
}

unint64_t sub_188E50ED0()
{
  result = qword_1EA934570[0];
  if (!qword_1EA934570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA934570);
  }

  return result;
}

uint64_t sub_188E50F24(uint64_t a1)
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

BOOL sub_188E50FB8(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return v4 == v1;
    }
  }

  else
  {
    sub_188A553EC(v5);
  }

  return 0;
}

uint64_t sub_188E5107C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, &v1[*((v5 & v4) + 0x58)], v2, v3);
  return sub_18A4A72F8();
}

uint64_t sub_188E51200(uint64_t a1)
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

uint64_t sub_188E51294(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = *(*((*MEMORY[0x1E69E7D40] & v4) + 0x50) - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v9 = &v13 - v8;
  sub_188C85D28(a1, v15);
  if (!v16)
  {
    sub_188A553EC(v15);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  v10 = v14;
  (*(v7 + 16))(v9, v14 + *((*v14 & *v5) + 0x60), v6);
  v11 = sub_18A4A7248();

  (*(v7 + 8))(v9, v6);
  return v11 & 1;
}

uint64_t sub_188E514A0(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, &v1[*((v5 & v4) + 0x60)], v2, v3);
  return sub_18A4A72F8();
}

BOOL sub_188E51690(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v6);
  if (!v7)
  {
    sub_188A553EC(v6);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (v3)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v3;
    }

    goto LABEL_9;
  }

  if (v3)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_188E5179C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id sub_188E5183C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t sub_188E518AC()
{
  swift_unknownObjectWeakLoadStrong();
  sub_18A4A7D38();
  return sub_18A4A72F8();
}

id sub_188E51968()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188E51AF0(unint64_t a1, int64_t a2, int a3)
{
  LODWORD(v5) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v432 = &v420 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v443 = &v420 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v420 - v13;
  v15 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters;
  v16 = *(v3 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters);

  v17 = sub_188B49C6C(a1, v16);

  v18 = 0;
  v19 = 0;
  if (v17)
  {
    goto LABEL_256;
  }

  v420 = v14;
  *(v3 + v15) = a1;

  v20 = MEMORY[0x1E69E7CC0];
  v524 = sub_188E8D568(MEMORY[0x1E69E7CC0]);
  v429 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews;
  v21 = *(v3 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews);

  isUniquelyReferenced_nonNull_native = sub_188E8D8EC(v20);
  if (v21 >> 62)
  {
    goto LABEL_248;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  LODWORD(v457) = v5;
  v434 = a1;
  v456 = a2;
  v459 = v3;
  if (v23)
  {
    a2 = 0;
    v458 = v21 & 0xC000000000000001;
    v4 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v458)
      {
        v25 = sub_188E49A4C(a2, v21);
      }

      else
      {
        if (a2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_233;
        }

        v25 = *(v21 + 8 * a2 + 32);
      }

      v3 = v25;
      v26 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        v23 = sub_18A4A7F68();
        goto LABEL_4;
      }

      sub_188C46270(v25 + OBJC_IVAR____UINavigationBarPlatterView_id, &v514);
      a1 = v3;
      v3 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v506 = v3;
      v27 = sub_188C479E4(&v514);
      v29 = *(v3 + 16);
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_234;
      }

      LODWORD(v5) = v28;
      if (*(v3 + 24) < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v36 = v27;
      sub_188FA13A0();
      v27 = v36;
      isUniquelyReferenced_nonNull_native = v506;
      if (v5)
      {
LABEL_6:
        v24 = *(isUniquelyReferenced_nonNull_native + 56);
        v3 = *(v24 + 8 * v27);
        *(v24 + 8 * v27) = a1;

        sub_188C4D06C(&v514);
        goto LABEL_7;
      }

LABEL_18:
      *(isUniquelyReferenced_nonNull_native + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v3 = v27;
      sub_188C46270(&v514, *(isUniquelyReferenced_nonNull_native + 48) + 40 * v27);
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v3) = a1;

      sub_188C4D06C(&v514);
      v34 = *(isUniquelyReferenced_nonNull_native + 16);
      v31 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v31)
      {
        goto LABEL_242;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v35;
LABEL_7:
      ++a2;
      if (v26 == v23)
      {
        goto LABEL_23;
      }
    }

    sub_1890BB1FC(v32, isUniquelyReferenced_nonNull_native);
    v27 = sub_188C479E4(&v514);
    if ((v5 & 1) != (v33 & 1))
    {
      goto LABEL_262;
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v506;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_23:

  v37 = *&v459[v429];
  if (v37 >> 62)
  {
    v38 = sub_18A4A7F68();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v434;
  v455 = isUniquelyReferenced_nonNull_native;
  if (v38)
  {
    v476[0] = MEMORY[0x1E69E7CC0];
    isEscapingClosureAtFileLocation = v38 & ~(v38 >> 63);

    v3 = v476;
    sub_188C46250(0, isEscapingClosureAtFileLocation, 0);
    if (v38 < 0)
    {
      goto LABEL_252;
    }

    a2 = 0;
    v41 = v476[0];
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = sub_188E49A4C(a2, v37);
      }

      else
      {
        v42 = *(v37 + 8 * a2 + 32);
      }

      v43 = v42;
      v44 = OBJC_IVAR____UINavigationBarPlatterView_platter;
      swift_beginAccess();
      sub_188C45F1C(v43 + v44, &v514);
      sub_188C46270(&v514, &v496);
      if (v518)
      {
        v477 = __PAIR128__(v518, *(&v517 + 1));
        v45 = v43;

        sub_18A4A8048();
      }

      else
      {
        v494 = 0;
        v492 = 0u;
        v493 = 0u;
        v46 = v43;
      }

      sub_188BBA230(&v518 + 8, &v508[3]);
      v47 = BYTE8(v522);
      v48 = v523;
      v49 = v523;
      sub_188C460F0(&v514);
      v506 = v496;
      v507 = v497;
      *(v508 + 8) = v492;
      *&v508[0] = v498;
      *(&v508[1] + 8) = v493;
      *(&v508[2] + 1) = v494;
      v510[40] = v47;
      v511 = v48;
      v50 = [v43 layer];
      v51 = [v50 presentationLayer];

      if (v51)
      {
        [v51 frame];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
      }

      else
      {
        [v43 frame];
        v53 = v60;
        v55 = v61;
        v57 = v62;
        v59 = v63;
        v51 = v43;
      }

      *&v510[8] = v53;
      *&v510[16] = v55;
      *&v510[24] = v57;
      *&v510[32] = v59;
      v476[0] = v41;
      a1 = v41[2];
      v64 = v41[3];
      if (a1 >= v64 >> 1)
      {
        sub_188C46250((v64 > 1), a1 + 1, 1);
        v41 = v476[0];
      }

      ++a2;
      v41[2] = (a1 + 1);
      v65 = &v41[22 * a1];
      v66 = v506;
      v67 = v508[0];
      *(v65 + 3) = v507;
      *(v65 + 4) = v67;
      *(v65 + 2) = v66;
      v68 = v508[1];
      v69 = v508[2];
      v70 = v509;
      *(v65 + 7) = v508[3];
      *(v65 + 8) = v70;
      *(v65 + 5) = v68;
      *(v65 + 6) = v69;
      v71 = *v510;
      v72 = *&v510[16];
      v73 = v511;
      *(v65 + 11) = *&v510[32];
      *(v65 + 12) = v73;
      *(v65 + 9) = v71;
      *(v65 + 10) = v72;
    }

    while (v38 != a2);
    v441 = v41;

    isUniquelyReferenced_nonNull_native = v455;
    v39 = v434;
  }

  else
  {
    v441 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v39 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v75 = v39;
    v476[0] = MEMORY[0x1E69E7CC0];
    sub_188C46250(0, v4, 0);
    v76 = v476[0];
    v77 = v75 + 32;
    a2 = 176;
    v78 = v4;
    do
    {
      sub_188C45F1C(v77, &v514);
      sub_188C46270(&v514, &v496);
      if (v518)
      {
        v477 = __PAIR128__(v518, *(&v517 + 1));

        sub_18A4A8048();
      }

      else
      {
        v494 = 0;
        v492 = 0u;
        v493 = 0u;
      }

      sub_188BBA230(&v518 + 8, &v508[3]);
      v506 = v496;
      v507 = v497;
      *(v508 + 8) = v492;
      *&v508[0] = v498;
      *(&v508[1] + 8) = v493;
      *(&v508[2] + 1) = v494;
      *&v510[8] = *(v516 + 8);
      *&v510[24] = *(&v516[1] + 8);
      v510[40] = BYTE8(v522);
      v511 = v523;
      v79 = v523;
      sub_188C460F0(&v514);
      v476[0] = v76;
      a1 = *(v76 + 16);
      v80 = *(v76 + 24);
      if (a1 >= v80 >> 1)
      {
        sub_188C46250((v80 > 1), a1 + 1, 1);
        v76 = v476[0];
      }

      *(v76 + 16) = a1 + 1;
      v81 = (v76 + 176 * a1);
      v82 = v506;
      v83 = v508[0];
      v81[3] = v507;
      v81[4] = v83;
      v81[2] = v82;
      v84 = v508[1];
      v85 = v508[2];
      v86 = v509;
      v81[7] = v508[3];
      v81[8] = v86;
      v81[5] = v84;
      v81[6] = v85;
      v87 = *v510;
      v88 = *&v510[16];
      v89 = v511;
      v81[11] = *&v510[32];
      v81[12] = v89;
      v81[9] = v87;
      v81[10] = v88;
      v77 += 192;
      --v78;
      isUniquelyReferenced_nonNull_native = v455;
    }

    while (v78);
    v452 = v76;
    v74 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v452 = MEMORY[0x1E69E7CC0];
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v453 = UIAccessibilityPrefersCrossFadeTransitions();
  v513 = v74;
  if (v4)
  {
    v450 = 0;
    v451 = 0;
    v90 = v434 + 32;
    v21 = &v497;
    LODWORD(v458) = v457 & 1;
    v454 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_188C45F1C(v90, &v514);
      v91 = sub_188C479E4(&v514);
      if (v92)
      {
        v93 = v91;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *&v506 = isUniquelyReferenced_nonNull_native;
        if (!v94)
        {
          sub_188FA13A0();
          isUniquelyReferenced_nonNull_native = v506;
        }

        sub_188C4D06C(*(isUniquelyReferenced_nonNull_native + 48) + 40 * v93);
        v95 = isUniquelyReferenced_nonNull_native;
        v96 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v93);
        a1 = v95;
        sub_188F9CB64(v93, v95);
        v97 = v456;
        if (v456)
        {
          sub_188C45F1C(&v514, &v506);
          v98 = swift_allocObject();
          v99 = *&v510[32];
          *(v98 + 144) = *&v510[16];
          *(v98 + 160) = v99;
          v100 = v512;
          *(v98 + 176) = v511;
          *(v98 + 192) = v100;
          v101 = v508[3];
          *(v98 + 80) = v508[2];
          *(v98 + 96) = v101;
          v102 = *v510;
          *(v98 + 112) = v509;
          *(v98 + 128) = v102;
          v103 = v507;
          *(v98 + 16) = v506;
          *(v98 + 32) = v103;
          v104 = v508[1];
          *(v98 + 48) = v508[0];
          *(v98 + 64) = v104;
          *(v98 + 208) = v96;
          *(v98 + 216) = v97;
          *(v98 + 224) = v453;
          *(v98 + 225) = v458;
          v105 = v459;
          *(v98 + 232) = v459;
          swift_retain_n();
          v106 = v96;
          v107 = v105;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v108 = v454;
          }

          else
          {
            v108 = sub_188E4B518(0, v454[2] + 1, 1, v454);
          }

          v110 = v108[2];
          v109 = v108[3];
          a2 = v110 + 1;
          if (v110 >= v109 >> 1)
          {
            v454 = sub_188E4B518((v109 > 1), v110 + 1, 1, v108);
          }

          else
          {
            v454 = v108;
          }

          v111 = v454;
          v454[2] = a2;
          v112 = &v111[2 * v110];
          v112[4] = sub_188E5C2C4;
          v112[5] = v98;
        }

        else
        {
          v106 = v96;
          sub_18918584C(&v514);
        }

        isUniquelyReferenced_nonNull_native = a1;
      }

      else
      {
        v113 = isUniquelyReferenced_nonNull_native;
        *&v492 = 0;
        v5 = objc_opt_self();
        sub_188C45F1C(&v514, &v506);
        v3 = swift_allocObject();
        v114 = *&v510[32];
        *(v3 + 152) = *&v510[16];
        *(v3 + 168) = v114;
        v115 = v512;
        *(v3 + 184) = v511;
        *(v3 + 200) = v115;
        v116 = v508[3];
        *(v3 + 88) = v508[2];
        *(v3 + 104) = v116;
        v117 = *v510;
        *(v3 + 120) = v509;
        *(v3 + 136) = v117;
        v118 = v507;
        *(v3 + 24) = v506;
        *(v3 + 40) = v118;
        v119 = v508[1];
        *(v3 + 56) = v508[0];
        *(v3 + 16) = &v492;
        *(v3 + 72) = v119;
        sub_188A55B8C(v451, v450);
        a2 = swift_allocObject();
        *(a2 + 16) = sub_188E5A7D0;
        *(a2 + 24) = v3;
        *&v498 = sub_188A4B574;
        *(&v498 + 1) = a2;
        *&v496 = MEMORY[0x1E69E9820];
        *(&v496 + 1) = 1107296256;
        *&v497 = sub_188A4A968;
        *(&v497 + 1) = &block_descriptor_4;
        a1 = _Block_copy(&v496);

        [v5 performWithoutAnimation_];
        _Block_release(a1);
        isUniquelyReferenced_nonNull_native = swift_isEscapingClosureAtFileLocation();

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_241;
        }

        if (!v492)
        {
          goto LABEL_261;
        }

        v106 = v492;
        v450 = v3;
        v451 = sub_188E5A7D0;
        isUniquelyReferenced_nonNull_native = v113;
      }

      MEMORY[0x18CFE2450]();
      if (*((v513 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v513 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      sub_188C460F0(&v514);
      v90 += 192;
      --v4;
    }

    while (v4);
    v120 = v513;
  }

  else
  {
    v450 = 0;
    v451 = 0;
    v454 = v74;
    v120 = v74;
  }

  v4 = v459;
  *&v459[v429] = v120;

  v3 = v452;
  v448 = (v120 & 0xFFFFFFFFFFFFFF8);
  if (v120 >> 62)
  {
    v21 = sub_18A4A7F68();
  }

  else
  {
    v21 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v455 = isUniquelyReferenced_nonNull_native;

  v121 = "_UIMonochromaticTreatment";
  v449 = v120;
  if (!v21)
  {
    v425 = 0;
    v426 = 0;
    v421 = 0;
    v422 = 0;
    v5 = 0;
    v458 = 0;
    v431 = 0;
    goto LABEL_129;
  }

  v122 = 0;
  v421 = 0;
  v422 = 0;
  v425 = 0;
  v426 = 0;
  v458 = 0;
  v5 = 0;
  v431 = 0;
  v446 = v120 & 0xC000000000000001;
  v447 = &v515;
  v439 = &v493;
  v440 = &v497;
  v444 = xmmword_18A64C520;
  v123 = 0.04;
  *&v124 = 0.4;
  *&v125 = 0.08;
  *&v126 = 0.1;
  v445 = v21;
  do
  {
    isUniquelyReferenced_nonNull_native = v122;
    while (1)
    {
      if (v446)
      {
        v127 = sub_188E49A4C(isUniquelyReferenced_nonNull_native, v120);
        v128 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_235;
        }
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native >= v448[2])
        {
          goto LABEL_236;
        }

        v127 = *(v120 + 8 * isUniquelyReferenced_nonNull_native + 32);
        v128 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_235;
        }
      }

      v457 = v128;
      v129 = v127;
      v130 = [v129 superview];
      if (v130)
      {
        v131 = v130;

        v132 = v131 == v4;
      }

      else
      {
        v132 = 0;
      }

      v21 = objc_opt_self();
      a1 = swift_allocObject();
      *(a1 + 16) = v4;
      *(a1 + 24) = v129;
      *(a1 + 32) = isUniquelyReferenced_nonNull_native;
      v133 = v4;
      a2 = v129;
      sub_188A55B8C(v5, v458);
      v3 = swift_allocObject();
      *(v3 + 16) = sub_188E5A7DC;
      *(v3 + 24) = a1;
      *&v516[0] = sub_188E3FE50;
      *(&v516[0] + 1) = v3;
      *&v514 = MEMORY[0x1E69E9820];
      *(&v514 + 1) = 1107296256;
      *&v515 = sub_188A4A968;
      *(&v515 + 1) = &block_descriptor_15;
      v5 = _Block_copy(&v514);
      v4 = *(&v516[0] + 1);

      [v21 performWithoutAnimation_];
      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        goto LABEL_237;
      }

      v134 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

      sub_188E56D00();

      if (v132)
      {
        v135 = a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
        v136 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
        v137 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
        *v135 = v444;
        *(v135 + 16) = 0;
        sub_188E5B1D4(v136, v137);
        sub_189185D18();
      }

      v458 = a1;
      v4 = v459;
      if (!v453)
      {
        break;
      }

      sub_188E56E5C(a2, !v132);
      v3 = v452;
LABEL_81:

      ++isUniquelyReferenced_nonNull_native;
      v5 = sub_188E5A7DC;
      v21 = v445;
      v120 = v449;
      if (v457 == v445)
      {
        v121 = "_UIMonochromaticTreatment";
        goto LABEL_129;
      }
    }

    v3 = v452;
    if (!v456 || v132)
    {

      goto LABEL_81;
    }

    _s11PlatterViewCMa();
    v505.receiver = a2;
    v505.super_class = v138;

    objc_msgSendSuper2(&v505, sel_bounds);
    v140 = v139;
    v142 = v141;
    [a2 center];
    v144 = v143;
    v438 = v145;

    sub_189182E00(&v496);
    sub_188FE348C(v441, &v514);
    sub_188C4F518(&v496);
    v436 = v123;
    v437 = *&v126;
    if (!*(&v515 + 1))
    {
      sub_188A3F5FC(&v514, &qword_1EA934730, &qword_18A65B1D0);
      v153 = swift_allocObject();
      *(v153 + 16) = a2;
      v154 = a2;
      sub_188A55B8C(v422, v421);
      v155 = swift_allocObject();
      v422 = sub_188E5C7F0;
      *(v155 + 16) = sub_188E5C7F0;
      *(v155 + 24) = v153;
      *&v516[0] = sub_188E3FE50;
      *(&v516[0] + 1) = v155;
      *&v514 = MEMORY[0x1E69E9820];
      *(&v514 + 1) = 1107296256;
      *&v515 = sub_188A4A968;
      *(&v515 + 1) = &block_descriptor_25_0;
      v156 = _Block_copy(&v514);

      [v21 performWithoutAnimation_];
      _Block_release(v156);
      LOBYTE(v156) = swift_isEscapingClosureAtFileLocation();

      if ((v156 & 1) == 0)
      {
        v157 = 0.0;
        v421 = v153;
        v158 = v456;
        goto LABEL_118;
      }

      goto LABEL_260;
    }

    v430 = v142;
    v435 = *&v125;
    v433 = *&v124;
    *&v510[16] = v520;
    *&v510[32] = v521;
    v511 = v522;
    v508[2] = v516[2];
    v508[3] = v517;
    *v510 = v519;
    v509 = v518;
    v506 = v514;
    v507 = v515;
    v508[1] = v516[1];
    v508[0] = v516[0];
    v146 = *(&v519 + 1);
    v148 = *(&v520 + 1);
    v147 = *&v520;
    v149 = *&v521;
    v525.origin.x = *(&v519 + 1);
    *&v525.origin.y = v520;
    *&v525.size.height = v521;
    MidX = CGRectGetMidX(v525);
    v151 = sub_188E574F4(&v506, v144 - MidX);
    MEMORY[0x1EEE9AC00](v151);
    v152 = v431;
    sub_18905B7FC(sub_188E5C80C, v434, &v514);
    v431 = v152;
    if (*(&v515 + 1))
    {
      v146 = *(v516 + 1);
      v148 = *(&v516[1] + 1);
      v147 = *&v516[1];
      v149 = *&v516[2];
      sub_188C460F0(&v514);
    }

    else
    {
      sub_188A3F5FC(&v514, &qword_1EA934738, &qword_18A64C638);
    }

    v159 = IsReduceMotionEnabled;
    v160 = v140;
    v526.origin.x = v146;
    v526.origin.y = v147;
    v526.size.width = v148;
    v526.size.height = v149;
    v161 = CGRectGetMidX(v526);
    sub_188E5B14C(&v506, &v514);
    v162 = swift_allocObject();
    *(v162 + 16) = a2;
    *(v162 + 24) = v159;
    v163 = v521;
    *(v162 + 160) = v520;
    *(v162 + 176) = v163;
    *(v162 + 192) = v522;
    v164 = v517;
    *(v162 + 96) = v516[2];
    *(v162 + 112) = v164;
    v165 = v519;
    *(v162 + 128) = v518;
    *(v162 + 144) = v165;
    v166 = v515;
    *(v162 + 32) = v514;
    *(v162 + 48) = v166;
    v167 = v516[1];
    *(v162 + 64) = v516[0];
    *(v162 + 80) = v167;
    v168 = a2;
    sub_188A55B8C(v426, v425);
    v169 = swift_allocObject();
    *(v169 + 16) = sub_188E5B1A8;
    *(v169 + 24) = v162;
    *&v498 = sub_188E3FE50;
    *(&v498 + 1) = v169;
    *&v496 = MEMORY[0x1E69E9820];
    *(&v496 + 1) = 1107296256;
    *&v497 = sub_188A4A968;
    *(&v497 + 1) = &block_descriptor_82;
    v170 = _Block_copy(&v496);

    [v21 performWithoutAnimation_];
    _Block_release(v170);
    LOBYTE(v170) = swift_isEscapingClosureAtFileLocation();

    if (v170)
    {
      goto LABEL_258;
    }

    v171 = vabdd_f64(v161, v144);
    [v133 bounds];
    Width = CGRectGetWidth(v527);
    if (Width <= 1.0)
    {
      Width = 1.0;
    }

    *&v173 = v433;
    v174 = v171 / Width * v433;
    v175 = *(a2 + v134);
    *&v176 = v435;
    v177 = v174 + v435;
    sub_188E5B14C(&v506, &v514);
    sub_188E5B14C(&v514, &v496);
    v178 = swift_allocObject();
    v179 = v438;
    *(v178 + 16) = v144;
    *(v178 + 24) = v179;
    v180 = v521;
    *(v178 + 160) = v520;
    *(v178 + 176) = v180;
    *(v178 + 192) = v522;
    v181 = v517;
    *(v178 + 96) = v516[2];
    *(v178 + 112) = v181;
    v182 = v519;
    *(v178 + 128) = v518;
    *(v178 + 144) = v182;
    v183 = v515;
    *(v178 + 32) = v514;
    *(v178 + 48) = v183;
    v184 = v516[1];
    *(v178 + 64) = v516[0];
    *(v178 + 80) = v184;
    *(v178 + 208) = v168;
    v185 = *(v175 + 2);
    *(v175 + 2) = v185 + 1;
    if (v177 == 0.0)
    {
      v186 = *(&v501 + 1);
      v187 = v502;
      v188 = *&v503;
      v189 = v168;
      v528.origin.x = v186;
      *&v528.origin.y = v187;
      v528.size.height = v188;
      if (v144 >= CGRectGetMidX(v528))
      {
        sub_18A4A6D18();
      }

      else
      {
        sub_18A4A6D28();
      }

      v158 = v456;
      v123 = v436;
      sub_189182F94(0, v190, v191);
      *&v173 = v433;
      *&v176 = v435;
    }

    else
    {
      v427 = v185;
      v192 = sub_18A4A76C8();
      v193 = *(*(v192 - 8) + 56);
      v428 = v168;
      v194 = v420;
      v193(v420, 1, 1, v192);
      v195 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v426 = v175;
      v196 = v428;

      v425 = sub_18A4A7698();
      v197 = swift_allocObject();
      *(v197 + 16) = v425;
      *(v197 + 24) = MEMORY[0x1E69E85E0];
      *(v197 + 32) = v195;
      *(v197 + 40) = v177;
      *(v197 + 48) = v427;
      *(v197 + 56) = sub_188E5B1B8;
      *(v197 + 64) = v178;

      v198 = v194;
      v168 = v428;
      v199 = sub_188E59CB0(0, 0, v198, &unk_18A64C640, v197);
      v200 = v426;
      swift_beginAccess();

      v201 = swift_isUniquelyReferenced_nonNull_native();
      *&v477 = *(v200 + 3);
      *(v200 + 3) = 0x8000000000000000;
      sub_188E9DE78(v199, v427, v201);
      *(v426 + 3) = v477;
      swift_endAccess();

      v158 = v456;
      v123 = v436;
    }

    sub_188C4F518(&v496);
    sub_188E5B14C(&v506, &v514);
    v202 = swift_allocObject();
    v203 = v521;
    *(v202 + 144) = v520;
    *(v202 + 160) = v203;
    *(v202 + 176) = v522;
    v204 = v517;
    *(v202 + 80) = v516[2];
    *(v202 + 96) = v204;
    v205 = v519;
    *(v202 + 112) = v518;
    *(v202 + 128) = v205;
    v206 = v515;
    *(v202 + 16) = v514;
    *(v202 + 32) = v206;
    v207 = v516[1];
    *(v202 + 48) = v516[0];
    *(v202 + 64) = v207;
    *(v202 + 192) = v168;
    v208 = v168;
    v209 = swift_isUniquelyReferenced_nonNull_native();
    v210 = v437;
    if ((v209 & 1) == 0)
    {
      v454 = sub_188E4B518(0, v454[2] + 1, 1, v454);
    }

    v211 = v454;
    v213 = v454[2];
    v212 = v454[3];
    if (v213 >= v212 >> 1)
    {
      v211 = sub_188E4B518((v212 > 1), v213 + 1, 1, v454);
    }

    v211[2] = v213 + 1;
    v454 = v211;
    v214 = &v211[2 * v213];
    v214[4] = sub_188E5B1C8;
    v214[5] = v202;
    v157 = v174 + v210;
    sub_188C4F518(&v506);
    v425 = v162;
    v426 = sub_188E5B1A8;
    v140 = v160;
    v124 = v173;
    v125 = v176;
    v142 = v430;
LABEL_118:
    v215 = *(a2 + v134);
    v216 = swift_allocObject();
    *(v216 + 16) = v158;
    *(v216 + 24) = a2;
    v217 = v438;
    *(v216 + 32) = v144;
    *(v216 + 40) = v217;
    *(v216 + 48) = v140;
    *(v216 + 56) = v142;
    v218 = IsReduceMotionEnabled;
    *(v216 + 64) = IsReduceMotionEnabled;
    v219 = *(v215 + 16);
    *(v215 + 16) = v219 + 1;
    if (v157 == 0.0)
    {
      v220 = v157;
      v221 = v125;
      v222 = v124;
      v223 = v217;
      *&v224 = COERCE_DOUBLE(swift_allocObject());
      *(v224 + 16) = a2;
      *(v224 + 24) = v144;
      *(v224 + 32) = v223;
      *(v224 + 40) = v140;
      *(v224 + 48) = v142;
      *(v224 + 56) = v218;
      v225 = v224;
      v435 = *&v224;
      sub_188C3DF9C(v158 + 16, &v514);
      sub_188C3DF9C(v158 + 16, &v506);
      v226 = swift_allocObject();
      v227 = v508[1];
      *(v226 + 48) = v508[0];
      *(v226 + 64) = v227;
      *(v226 + 80) = v508[2];
      *(v226 + 89) = *(&v508[2] + 9);
      v228 = v507;
      *(v226 + 16) = v506;
      *(v226 + 32) = v228;
      *(v226 + 112) = signpost_c2_entryLock_start;
      *(v226 + 120) = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = 0;
      v230 = v229;
      v231 = swift_allocObject();
      v430 = v231;
      v231[3] = 0;
      v231[4] = 0;
      v231[2] = v230;
      v232 = swift_allocObject();
      *(v232 + 2) = sub_188E5B13C;
      *(v232 + 3) = v225;
      *&v498 = sub_188E3FE50;
      *(&v498 + 1) = v232;
      v438 = v216;
      v428 = v232;
      *&v496 = MEMORY[0x1E69E9820];
      *(&v496 + 1) = 1107296256;
      *&v497 = sub_188A4A968;
      *(&v497 + 1) = &block_descriptor_63_0;
      v433 = COERCE_DOUBLE(_Block_copy(&v496));
      v233 = a2;

      v234 = v233;

      sub_188C3DFF8(&v514, &v496);
      v235 = swift_allocObject();
      v236 = v499;
      *(v235 + 56) = v498;
      *(v235 + 72) = v236;
      *(v235 + 88) = v500[0];
      *(v235 + 97) = *(v500 + 9);
      v237 = v497;
      *(v235 + 24) = v496;
      *(v235 + 16) = v230;
      v427 = v230;
      *(v235 + 40) = v237;
      *(v235 + 113) = 0;
      *(v235 + 120) = sub_188E5B140;
      *(v235 + 128) = v226;
      v494 = sub_188C5745C;
      v495 = v235;
      *&v492 = MEMORY[0x1E69E9820];
      *(&v492 + 1) = 1107296256;
      *&v493 = sub_188A4A8F0;
      *(&v493 + 1) = &block_descriptor_69;
      v238 = _Block_copy(&v492);

      *&v498 = sub_188ABBADC;
      *(&v498 + 1) = v430;
      *&v496 = MEMORY[0x1E69E9820];
      *(&v496 + 1) = 1107296256;
      *&v497 = sub_188ABD010;
      *(&v497 + 1) = &block_descriptor_72_0;
      v239 = _Block_copy(&v496);

      v240 = v433;
      [v21 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v239);
      _Block_release(v238);
      _Block_release(*&v240);

      sub_188C3E234(&v514);

      LOBYTE(v240) = swift_isEscapingClosureAtFileLocation();

      if ((LOBYTE(v240) & 1) == 0)
      {
        v4 = v459;
        v124 = v222;
        v125 = v221;
        v157 = v220;
        v123 = v436;
        goto LABEL_122;
      }

LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      sub_18A4A87A8();
      __break(1u);
LABEL_263:
      _s11PlatterViewCMa();
      sub_18A4A87A8();
      __break(1u);
LABEL_264:
      sub_18A4A87A8();
      __break(1u);
      return;
    }

    v241 = sub_18A4A76C8();
    (*(*(v241 - 8) + 56))(v420, 1, 1, v241);
    v242 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();

    v243 = a2;

    v244 = sub_18A4A7698();
    v245 = swift_allocObject();
    *(v245 + 16) = v244;
    *(v245 + 24) = MEMORY[0x1E69E85E0];
    *(v245 + 32) = v242;
    *(v245 + 40) = v157;
    *(v245 + 48) = v219;
    *(v245 + 56) = sub_188E5A7F0;
    *(v245 + 64) = v216;

    v246 = sub_188E59CB0(0, 0, v420, &unk_18A66CF70, v245);
    swift_beginAccess();

    v247 = swift_isUniquelyReferenced_nonNull_native();
    *&v506 = *(v215 + 24);
    *(v215 + 24) = 0x8000000000000000;
    sub_188E9DE78(v246, v219, v247);
    *(v215 + 24) = v506;
    swift_endAccess();

    v4 = v459;
LABEL_122:
    v248 = *(a2 + v134);
    v249 = swift_allocObject();
    *(v249 + 16) = v133;
    *(v249 + 24) = a2;
    a1 = *(v248 + 16);
    *(v248 + 16) = a1 + 1;
    v3 = v452;
    if (v157 + v123 == 0.0)
    {
      v250 = v133;
      sub_188E5AB60(a2);
    }

    else
    {
      v251 = sub_18A4A76C8();
      v252 = v420;
      (*(*(v251 - 8) + 56))(v420, 1, 1, v251);
      v253 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v254 = v133;
      v255 = a2;

      v256 = sub_18A4A7698();
      v257 = swift_allocObject();
      *(v257 + 16) = v256;
      *(v257 + 24) = MEMORY[0x1E69E85E0];
      *(v257 + 32) = v253;
      *(v257 + 40) = v157 + v123;
      *(v257 + 48) = a1;
      *(v257 + 56) = sub_188E5A804;
      *(v257 + 64) = v249;

      v258 = sub_188E59CB0(0, 0, v252, &unk_18A64C630, v257);
      swift_beginAccess();

      v259 = swift_isUniquelyReferenced_nonNull_native();
      *&v506 = *(v248 + 24);
      *(v248 + 24) = 0x8000000000000000;
      sub_188E9DE78(v258, a1, v259);
      v3 = v452;
      *(v248 + 24) = v506;
      swift_endAccess();
    }

    *&v126 = v437;

    v5 = sub_188E5A7DC;
    v21 = v445;
    v122 = v457;
    v120 = v449;
    v121 = "_UIMonochromaticTreatment";
  }

  while (v457 != v445);
LABEL_129:
  v427 = v5;

  if (!v456)
  {

    v3 = v455 + 64;
    v397 = 1 << *(v455 + 32);
    v398 = -1;
    if (v397 < 64)
    {
      v398 = ~(-1 << v397);
    }

    v399 = v398 & *(v455 + 64);
    isUniquelyReferenced_nonNull_native = (v397 + 63) >> 6;

    v400 = 0;
    v21 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
    if (v399)
    {
      while (1)
      {
        v401 = v400;
LABEL_203:
        v402 = __clz(__rbit64(v399));
        v399 &= v399 - 1;
        [*(*(v455 + 56) + ((v401 << 9) | (8 * v402))) removeFromSuperview];
        if (!v399)
        {
          goto LABEL_199;
        }
      }
    }

    while (1)
    {
LABEL_199:
      v401 = v400 + 1;
      if (__OFADD__(v400, 1))
      {
        goto LABEL_240;
      }

      if (v401 >= isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v399 = *(v3 + 8 * v401);
      ++v400;
      if (v399)
      {
        v400 = v401;
        goto LABEL_203;
      }
    }

LABEL_206:
    isUniquelyReferenced_nonNull_native = v454[2];
    if (isUniquelyReferenced_nonNull_native)
    {
      v21 = v524;
      v403 = v454 + 5;
      do
      {
        v404 = *(v403 - 1);
        *&v514 = v21;

        v404(&v514);

        v403 += 2;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);
    }

    v405 = *(v4 + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_assistant);
    if (v405)
    {
      v406 = v455 + 64;
      v407 = 1 << *(v455 + 32);
      v408 = -1;
      if (v407 < 64)
      {
        v408 = ~(-1 << v407);
      }

      v5 = v408 & *(v455 + 64);
      a2 = (v407 + 63) >> 6;

      v3 = v405;
      a1 = 0;
      v4 = &selRef_setArtworkView_;
      while (v5)
      {
        v409 = a1;
        v410 = v455;
LABEL_219:
        v411 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v412 = *(*(v410 + 56) + ((v409 << 9) | (8 * v411)));
        v21 = *&v412[OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID + 8];
        v413 = v412;

        isUniquelyReferenced_nonNull_native = sub_18A4A7258();

        [v3 setAssistedView:0 identifier:isUniquelyReferenced_nonNull_native];
      }

      v410 = v455;
      while (1)
      {
        v409 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_238;
        }

        if (v409 >= a2)
        {

          isEscapingClosureAtFileLocation = *&v459[v429];
          if (isEscapingClosureAtFileLocation >> 62)
          {
            goto LABEL_253;
          }

          v414 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
          v415 = v427;
          if (!v414)
          {
            goto LABEL_254;
          }

          goto LABEL_223;
        }

        v5 = *(v406 + 8 * v409);
        ++a1;
        if (v5)
        {
          a1 = v409;
          goto LABEL_219;
        }
      }
    }

    goto LABEL_230;
  }

  v3 = v455;
  a2 = v455 + 64;
  v260 = 1 << *(v455 + 32);
  if (v260 < 64)
  {
    v261 = ~(-1 << v260);
  }

  else
  {
    v261 = -1;
  }

  a1 = v121;
  isUniquelyReferenced_nonNull_native = v261 & *(v455 + 64);
  v457 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_disappearingPlatterViews;
  v262 = (v260 + 63) >> 6;
  v447 = &v467;
  v435 = COERCE_DOUBLE(&v462);

  v263 = 0;
  v21 = &qword_1EA934730;
  v264 = *(a1 + 1864);
  v423 = v262;
  v424 = a2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    while (1)
    {
LABEL_135:
      v5 = (v263 + 1);
      if (__OFADD__(v263, 1))
      {
        goto LABEL_239;
      }

      if (v5 >= v262)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = *(a2 + 8 * v5);
      ++v263;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_138;
      }
    }

    goto LABEL_206;
  }

  while (2)
  {
    while (1)
    {
      v5 = v263;
LABEL_138:
      *&v433 = (isUniquelyReferenced_nonNull_native - 1) & isUniquelyReferenced_nonNull_native;
      v265 = *(*(v3 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)))));
      sub_189182E00(&v514);
      sub_188FE348C(v452, &v506);
      sub_188C4F518(&v514);
      a1 = swift_allocObject();
      *(a1 + 16) = v4;
      *(a1 + 24) = v265;
      sub_188A3F29C(&v506, &v514, &qword_1EA934730, &qword_18A65B1D0);
      if (*(&v515 + 1))
      {
        break;
      }

      v273 = v4;
      v274 = v265;
      sub_188A3F5FC(&v514, &qword_1EA934730, &qword_18A65B1D0);
      v275 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

      sub_188E56D00();

      v276 = *&v274[v275];
      v21 = &qword_1EA934730;
      ++*(v276 + 16);
      sub_188E5BAC0(v274, sub_188E5B1E4, a1);

      sub_188A3F5FC(&v506, &qword_1EA934730, &qword_18A65B1D0);

      v263 = v5;
      v3 = v455;
      isUniquelyReferenced_nonNull_native = *&v433;
      if (v433 == 0.0)
      {
        goto LABEL_135;
      }
    }

    v430 = a1;
    v428 = v5;
    v502 = v520;
    v503 = v521;
    v504 = v522;
    v500[0] = v516[2];
    v500[1] = v517;
    v501 = v519;
    v500[2] = v518;
    v496 = v514;
    v497 = v515;
    v499 = v516[1];
    v498 = v516[0];
    v266 = v4;
    v267 = v265;
    v268 = sub_188E574F4(&v496, 0.0);
    MEMORY[0x1EEE9AC00](v268);
    isUniquelyReferenced_nonNull_native = v431;
    sub_18905B7FC(sub_188E5C0F8, v434, &v514);
    if (*(&v515 + 1))
    {
      v269 = *(v516 + 1);
      v271 = *(&v516[1] + 1);
      v270 = *&v516[1];
      v272 = *&v516[2];
      sub_188C460F0(&v514);
    }

    else
    {
      sub_188A3F5FC(&v514, &qword_1EA934738, &qword_18A64C638);
      v269 = *(&v501 + 1);
      v271 = *(&v502 + 1);
      v270 = *&v502;
      v272 = *&v503;
    }

    v529.origin.x = v269;
    v529.origin.y = v270;
    v529.size.width = v271;
    v529.size.height = v272;
    v277 = CGRectGetMidX(v529);
    [v267 center];
    v279 = vabdd_f64(v277, v278);
    sub_188C46270(&v496, &v514);
    v280 = v457;
    swift_beginAccess();
    v5 = v267;
    sub_188F283E4(&v514, v5);
    swift_endAccess();
    [v266 bounds];
    v282 = CGRectGetWidth(v530);
    if (v282 <= 1.0)
    {
      v282 = 1.0;
    }

    v283 = v279 / v282 * v264 + v264;
    v3 = *(v4 + v280);
    MEMORY[0x1EEE9AC00](v281);

    sub_188E5B358(v284, sub_188E5C128);
    v21 = v285;
    v431 = isUniquelyReferenced_nonNull_native;

    a2 = 0;
    v287 = v21 + 64;
    v286 = *(v21 + 64);
    v446 = v21;
    v288 = 1 << *(v21 + 32);
    if (v288 < 64)
    {
      v289 = ~(-1 << v288);
    }

    else
    {
      v289 = -1;
    }

    v4 = v289 & v286;
    v290 = (v288 + 63) >> 6;
    v436 = *&v290;
    *&v437 = v21 + 64;
    v438 = v5;
    while (2)
    {
      if (v4)
      {
LABEL_158:
        v292 = *(*(v446 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v4)))));
        v21 = v459;
        v293 = v457;
        swift_beginAccess();
        sub_188C46270(&v496, &v514);
        isUniquelyReferenced_nonNull_native = v292;
        v294 = swift_isUniquelyReferenced_nonNull_native();
        *&v477 = *(v21 + v293);
        v3 = v477;
        *(v21 + v293) = 0x8000000000000000;
        v295 = sub_188E8B7E4(isUniquelyReferenced_nonNull_native);
        v297 = *(v3 + 16);
        v298 = (v296 & 1) == 0;
        v31 = __OFADD__(v297, v298);
        v299 = v297 + v298;
        if (v31)
        {
          goto LABEL_243;
        }

        v21 = v296;
        if (*(v3 + 24) >= v299)
        {
          if ((v294 & 1) == 0)
          {
            v301 = v295;
            sub_188FA1210();
            v295 = v301;
            v3 = v477;
            if (v21)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }
        }

        else
        {
          sub_1890BAF68(v299, v294);
          v295 = sub_188E8B7E4(isUniquelyReferenced_nonNull_native);
          if ((v21 & 1) != (v300 & 1))
          {
            goto LABEL_263;
          }
        }

        v3 = v477;
        if (v21)
        {
LABEL_164:
          sub_188E5C248(&v514, *(v3 + 56) + 40 * v295);

LABEL_168:
          v4 &= v4 - 1;
          *&v459[v457] = v3;
          swift_endAccess();
          v307 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler);
          sub_188E5B14C(&v496, &v514);
          sub_188E5B14C(&v514, &v492);
          v5 = swift_allocObject();
          v308 = v518;
          *(v5 + 152) = v519;
          v309 = v521;
          *(v5 + 168) = v520;
          *(v5 + 184) = v309;
          *(v5 + 200) = v522;
          v310 = v516[0];
          *(v5 + 88) = v516[1];
          v311 = v517;
          *(v5 + 104) = v516[2];
          *(v5 + 120) = v311;
          *(v5 + 136) = v308;
          v312 = v515;
          *(v5 + 40) = v514;
          *(v5 + 56) = v312;
          v313 = v456;
          *(v5 + 16) = v456;
          v314 = IsReduceMotionEnabled;
          *(v5 + 24) = IsReduceMotionEnabled;
          *(v5 + 32) = isUniquelyReferenced_nonNull_native;
          *(v5 + 72) = v310;
          v315 = *(v307 + 16);
          *(v307 + 16) = v315 + 1;
          if (v283 == 0.0)
          {
            sub_188E5B14C(&v492, &v477);
            v3 = swift_allocObject();
            *(v3 + 16) = v314;
            *(v3 + 24) = isUniquelyReferenced_nonNull_native;
            v316 = v486;
            *(v3 + 160) = v485;
            *(v3 + 176) = v316;
            *(v3 + 192) = v487;
            v317 = v482;
            *(v3 + 96) = v481;
            *(v3 + 112) = v317;
            v318 = v484;
            *(v3 + 128) = v483;
            *(v3 + 144) = v318;
            v319 = v478;
            *(v3 + 32) = v477;
            *(v3 + 48) = v319;
            v320 = v480;
            *(v3 + 64) = v479;
            *(v3 + 80) = v320;
            sub_188C3DF9C(v313 + 16, v476);
            sub_188C3DF9C(v313 + 16, &v471);
            v321 = swift_allocObject();
            v322 = v474;
            *(v321 + 48) = v473;
            *(v321 + 64) = v322;
            *(v321 + 80) = v475[0];
            *(v321 + 89) = *(v475 + 9);
            v323 = v472;
            *(v321 + 16) = v471;
            *(v321 + 32) = v323;
            *(v321 + 112) = signpost_c2_entryLock_start;
            *(v321 + 120) = 0;
            v324 = swift_allocObject();
            v324[2] = 0;
            v325 = v324;
            v448 = v324;
            v326 = swift_allocObject();
            v439 = v326;
            *(v326 + 3) = 0;
            *(v326 + 4) = 0;
            *(v326 + 2) = v325;
            *&v444 = objc_opt_self();
            v327 = swift_allocObject();
            v327[2] = sub_188E5C238;
            v327[3] = v3;
            *&v468 = sub_188E3FE50;
            *(&v468 + 1) = v327;
            v441 = v327;
            *&v466 = MEMORY[0x1E69E9820];
            *(&v466 + 1) = 1107296256;
            *&v467 = sub_188A4A968;
            *(&v467 + 1) = &block_descriptor_125;
            v440 = _Block_copy(&v466);
            v328 = isUniquelyReferenced_nonNull_native;

            v445 = v328;
            v329 = v448;

            sub_188C3DFF8(v476, &v466);
            v330 = swift_allocObject();
            v331 = v469;
            *(v330 + 56) = v468;
            *(v330 + 72) = v331;
            *(v330 + 88) = v470[0];
            *(v330 + 97) = *(v470 + 9);
            v332 = v467;
            *(v330 + 24) = v466;
            *(v330 + 16) = v329;
            *(v330 + 40) = v332;
            *(v330 + 113) = 0;
            *(v330 + 120) = sub_188E5C7FC;
            *(v330 + 128) = v321;
            v464 = sub_188E5C800;
            v465 = v330;
            v460 = MEMORY[0x1E69E9820];
            v461 = 1107296256;
            v462 = sub_188A4A8F0;
            v463 = &block_descriptor_132;
            v333 = _Block_copy(&v460);

            *&v468 = sub_188E5C82C;
            *(&v468 + 1) = v439;
            *&v466 = MEMORY[0x1E69E9820];
            *(&v466 + 1) = 1107296256;
            *&v467 = sub_188ABD010;
            *(&v467 + 1) = &block_descriptor_135;
            v334 = _Block_copy(&v466);

            a1 = v440;
            [v444 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
            _Block_release(v334);
            _Block_release(v333);
            _Block_release(a1);

            sub_188C3E234(v476);
            sub_188C4F518(&v492);

            v21 = v441;
            isUniquelyReferenced_nonNull_native = swift_isEscapingClosureAtFileLocation();

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_244;
            }

            v5 = v438;
          }

          else
          {
            v335 = sub_18A4A76C8();
            v441 = *(v335 - 8);
            v441[7](v443, 1, 1, v335);
            v336 = swift_allocObject();
            *&v444 = v307;
            swift_weakInit();
            sub_18A4A76A8();
            v337 = v335;

            v440 = isUniquelyReferenced_nonNull_native;

            v338 = sub_18A4A7698();
            v339 = swift_allocObject();
            *(v339 + 16) = v338;
            *(v339 + 24) = MEMORY[0x1E69E85E0];
            *(v339 + 32) = v336;
            *(v339 + 40) = v283;
            v448 = v315;
            *(v339 + 48) = v315;
            *(v339 + 56) = sub_188E5C144;
            v445 = v5;
            *(v339 + 64) = v5;
            v340 = v441;

            v341 = v432;
            sub_188A3F29C(v443, v432, &qword_1EA934728, &unk_18A64C610);
            LODWORD(v338) = (v340[6])(v341, 1, v337);

            if (v338 == 1)
            {
              sub_188A3F5FC(v341, &qword_1EA934728, &unk_18A64C610);
              a1 = 7168;
            }

            else
            {
              v342 = sub_18A4A76B8();
              (v340[1])(v341, v337);
              a1 = v342 | 0x1C00;
            }

            v343 = *(v339 + 16);
            swift_unknownObjectRetain();

            v344 = v444;
            if (v343)
            {
              swift_getObjectType();
              v345 = sub_18A4A7678();
              v347 = v346;
              swift_unknownObjectRelease();
            }

            else
            {
              v345 = 0;
              v347 = 0;
            }

            sub_188A3F5FC(v443, &qword_1EA934728, &unk_18A64C610);
            if (v347 | v345)
            {
              v489 = 0;
              v488 = 0;
              v490 = v345;
              v491 = v347;
            }

            v21 = swift_task_create();
            swift_beginAccess();

            v5 = swift_isUniquelyReferenced_nonNull_native();
            v476[0] = *(v344 + 24);
            v3 = v476[0];
            *(v344 + 24) = 0x8000000000000000;
            isUniquelyReferenced_nonNull_native = v448;
            v348 = sub_188B85570(v448);
            v350 = *(v3 + 16);
            v351 = (v349 & 1) == 0;
            v31 = __OFADD__(v350, v351);
            v352 = v350 + v351;
            if (v31)
            {
              goto LABEL_246;
            }

            a1 = v349;
            if (*(v3 + 24) >= v352)
            {
              if ((v5 & 1) == 0)
              {
                v356 = v348;
                sub_188FA0D8C();
                v348 = v356;
                isUniquelyReferenced_nonNull_native = v448;
              }
            }

            else
            {
              sub_1890BAA00(v352, v5);
              v348 = sub_188B85570(isUniquelyReferenced_nonNull_native);
              if ((a1 & 1) != (v353 & 1))
              {
                goto LABEL_264;
              }
            }

            v5 = v438;
            v3 = v476[0];
            if (a1)
            {
              *(*(v476[0] + 56) + 8 * v348) = v21;
            }

            else
            {
              *(v476[0] + 8 * (v348 >> 6) + 64) |= 1 << v348;
              *(*(v3 + 48) + 8 * v348) = isUniquelyReferenced_nonNull_native;
              *(*(v3 + 56) + 8 * v348) = v21;
              v354 = *(v3 + 16);
              v31 = __OFADD__(v354, 1);
              v355 = v354 + 1;
              if (v31)
              {
                goto LABEL_247;
              }

              *(v3 + 16) = v355;
            }

            *(v344 + 24) = v3;
            swift_endAccess();

            sub_188C4F518(&v492);
          }

          *&v290 = v436;
          v287 = *&v437;
          continue;
        }

LABEL_166:
        *(v3 + 8 * (v295 >> 6) + 64) |= 1 << v295;
        *(*(v3 + 48) + 8 * v295) = isUniquelyReferenced_nonNull_native;
        v302 = *(v3 + 56) + 40 * v295;
        v303 = v514;
        v304 = v515;
        *(v302 + 32) = *&v516[0];
        *v302 = v303;
        *(v302 + 16) = v304;
        v305 = *(v3 + 16);
        v31 = __OFADD__(v305, 1);
        v306 = v305 + 1;
        if (v31)
        {
          goto LABEL_245;
        }

        *(v3 + 16) = v306;
        goto LABEL_168;
      }

      break;
    }

    while (1)
    {
      v291 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
        goto LABEL_232;
      }

      if (v291 >= v290)
      {
        break;
      }

      v4 = *(v287 + 8 * v291);
      ++a2;
      if (v4)
      {
        a2 = v291;
        goto LABEL_158;
      }
    }

    v357 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;

    sub_188E56D00();

    ++*(*(v5 + v357) + 16);

    v358 = v453;
    sub_188E5B4D8(v453, v5);

    v359 = *(v5 + v357);
    sub_188E5B14C(&v496, &v514);
    sub_188E5B14C(&v514, &v492);
    v360 = swift_allocObject();
    v361 = v518;
    *(v360 + 152) = v519;
    v362 = v521;
    *(v360 + 168) = v520;
    *(v360 + 184) = v362;
    *(v360 + 200) = v522;
    v363 = v516[0];
    *(v360 + 88) = v516[1];
    v364 = v517;
    *(v360 + 104) = v516[2];
    *(v360 + 120) = v364;
    *(v360 + 136) = v361;
    v365 = v515;
    *(v360 + 40) = v514;
    *(v360 + 56) = v365;
    v366 = v456;
    *(v360 + 16) = v456;
    *(v360 + 24) = v358;
    v367 = IsReduceMotionEnabled;
    *(v360 + 25) = IsReduceMotionEnabled;
    *(v360 + 32) = v5;
    *(v360 + 72) = v363;
    v368 = v430;
    *(v360 + 216) = sub_188E5B1E4;
    *(v360 + 224) = v368;
    v369 = *(v359 + 16);
    *(v359 + 16) = v369 + 1;
    if (v283 != 0.0)
    {
      v389 = sub_18A4A76C8();
      v390 = v5;
      v391 = v420;
      (*(*(v389 - 8) + 56))(v420, 1, 1, v389);
      v392 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();

      v393 = v390;

      v394 = sub_18A4A7698();
      a1 = swift_allocObject();
      *(a1 + 16) = v394;
      *(a1 + 24) = MEMORY[0x1E69E85E0];
      *(a1 + 32) = v392;
      *(a1 + 40) = v283;
      *(a1 + 48) = v369;
      *(a1 + 56) = sub_188E5C2A4;
      *(a1 + 64) = v360;

      v395 = sub_188E59CB0(0, 0, v391, &unk_18A64C650, a1);
      swift_beginAccess();

      v396 = swift_isUniquelyReferenced_nonNull_native();
      v476[0] = *(v359 + 24);
      *(v359 + 24) = 0x8000000000000000;
      sub_188E9DE78(v395, v369, v396);
      *(v359 + 24) = v476[0];
      swift_endAccess();

      sub_188C4F518(&v492);
      v21 = &qword_1EA934730;
      sub_188A3F5FC(&v506, &qword_1EA934730, &qword_18A65B1D0);

LABEL_192:
      sub_188C4F518(&v496);
      v263 = v428;
      v4 = v459;
      v3 = v455;
      v262 = v423;
      a2 = v424;
      isUniquelyReferenced_nonNull_native = *&v433;
      if (v433 == 0.0)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

  sub_188E5B14C(&v492, &v477);
  v3 = swift_allocObject();
  *(v3 + 16) = v358;
  *(v3 + 17) = v367;
  *(v3 + 24) = v5;
  v370 = v486;
  *(v3 + 160) = v485;
  *(v3 + 176) = v370;
  *(v3 + 192) = v487;
  v371 = v482;
  *(v3 + 96) = v481;
  *(v3 + 112) = v371;
  v372 = v484;
  *(v3 + 128) = v483;
  *(v3 + 144) = v372;
  v373 = v478;
  *(v3 + 32) = v477;
  *(v3 + 48) = v373;
  v374 = v480;
  *(v3 + 64) = v479;
  *(v3 + 80) = v374;
  v375 = swift_allocObject();
  *(v375 + 16) = sub_188E5B1E4;
  *(v375 + 24) = v368;
  v376 = v375;
  *&v444 = v375;
  sub_188C3DF9C(v366 + 16, v476);
  sub_188C3DF9C(v366 + 16, &v471);
  v377 = swift_allocObject();
  v378 = v474;
  *(v377 + 48) = v473;
  *(v377 + 64) = v378;
  *(v377 + 80) = v475[0];
  *(v377 + 89) = *(v475 + 9);
  v379 = v472;
  *(v377 + 16) = v471;
  *(v377 + 32) = v379;
  *(v377 + 112) = signpost_c2_entryLock_start;
  *(v377 + 120) = 0;
  v380 = swift_allocObject();
  *(v380 + 16) = 0;
  v381 = swift_allocObject();
  v381[2] = v380;
  v381[3] = sub_188A4A9DC;
  v381[4] = v376;
  v448 = objc_opt_self();
  v382 = swift_allocObject();
  *(v382 + 16) = sub_188E5C2C0;
  *(v382 + 24) = v3;
  *&v468 = sub_188E3FE50;
  *(&v468 + 1) = v382;
  v446 = v382;
  *&v466 = MEMORY[0x1E69E9820];
  *(&v466 + 1) = 1107296256;
  *&v467 = sub_188A4A968;
  *(&v467 + 1) = &block_descriptor_166;
  v445 = _Block_copy(&v466);
  v383 = v5;
  swift_retain_n();

  v441 = v383;

  v4 = v444;

  sub_188C3DFF8(v476, &v466);
  v384 = swift_allocObject();
  v385 = v469;
  *(v384 + 56) = v468;
  *(v384 + 72) = v385;
  *(v384 + 88) = v470[0];
  *(v384 + 97) = *(v470 + 9);
  v386 = v467;
  *(v384 + 24) = v466;
  *(v384 + 16) = v380;
  *(v384 + 40) = v386;
  *(v384 + 113) = 0;
  *(v384 + 120) = sub_188E5C7FC;
  *(v384 + 128) = v377;
  v464 = sub_188E5C800;
  v465 = v384;
  v460 = MEMORY[0x1E69E9820];
  v461 = 1107296256;
  v462 = sub_188A4A8F0;
  v463 = &block_descriptor_173;
  v387 = _Block_copy(&v460);

  *&v468 = sub_188E5C82C;
  *(&v468 + 1) = v381;
  *&v466 = MEMORY[0x1E69E9820];
  *(&v466 + 1) = 1107296256;
  *&v467 = sub_188ABD010;
  *(&v467 + 1) = &block_descriptor_176;
  v388 = _Block_copy(&v466);

  a1 = v445;
  [v448 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v388);
  _Block_release(v387);
  _Block_release(a1);

  sub_188C3E234(v476);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_188C4F518(&v492);
    v21 = &qword_1EA934730;
    sub_188A3F5FC(&v506, &qword_1EA934730, &qword_18A65B1D0);

    goto LABEL_192;
  }

  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  v414 = sub_18A4A7F68();
  v415 = v427;
  if (v414)
  {
LABEL_223:
    if (v414 < 1)
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    v416 = 0;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v417 = sub_188E49A4C(v416, isEscapingClosureAtFileLocation);
      }

      else
      {
        v417 = *(isEscapingClosureAtFileLocation + 8 * v416 + 32);
      }

      ++v416;
      v418 = v417;

      v419 = sub_18A4A7258();

      [v3 *(v4 + 280)];
    }

    while (v414 != v416);

LABEL_230:

    v415 = v427;
    goto LABEL_255;
  }

LABEL_254:

LABEL_255:
  sub_188A55B8C(v451, v450);
  sub_188A55B8C(v415, v458);
  sub_188A55B8C(v426, v425);
  v19 = v421;
  v18 = v422;
LABEL_256:
  sub_188A55B8C(v18, v19);
}

void sub_188E554E0(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4, int a5, int a6, char *a7)
{
  LODWORD(v191) = a6;
  LODWORD(v187) = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v178 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v167 - v15;
  v177 = sub_18A4A5FA8();
  v16 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v173 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_18A4A4C78();
  v18 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v167 - v21;
  v176 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v176);
  v169 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v167 - v24;
  v25 = *a1;
  v26 = *(*a1 + 16);
  v27 = "UICoreHostingViewForUIKitTester";
  v193 = a4;
  v194 = a2;
  v190 = v25;
  v188 = v18;
  v192 = a3;
  if (!v26 || (v28 = sub_188C479E4(a2), (v29 & 1) == 0))
  {
    v185 = a7;
    v36 = a3 + OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    v37 = *(v36 + 18);
    v38 = *(v37 + 2);
    v39 = MEMORY[0x1E69E7CC0];
    v186 = v16;
    if (v38)
    {
      *&v211[0] = MEMORY[0x1E69E7CC0];

      sub_188E6D174(0, v38, 0);
      v39 = *&v211[0];
      v184 = v37;
      v40 = v37 + 136;
      do
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = *v40;
        sub_188C46860(v41, v42, *v40);
        *&v211[0] = v39;
        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_188E6D174((v44 > 1), v45 + 1, 1);
          v39 = *&v211[0];
        }

        v40 += 160;
        *(v39 + 16) = v45 + 1;
        v46 = v39 + 24 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        *(v46 + 48) = v43;
        --v38;
      }

      while (v38);

      a2 = v194;
      v25 = v190;
      v16 = v186;
      v27 = "UICoreHostingViewForUIKitTester";
    }

    v47 = sub_188F98620(v39);

    v48 = *(a2 + 144);
    v49 = *(v48 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v184 = v47;
      *&v211[0] = MEMORY[0x1E69E7CC0];
      sub_188E6D174(0, v49, 0);
      v50 = *&v211[0];
      v51 = (v48 + 136);
      do
      {
        v52 = *(v51 - 2);
        v53 = *(v51 - 1);
        v54 = *v51;
        sub_188C46860(v52, v53, *v51);
        *&v211[0] = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_188E6D174((v55 > 1), v56 + 1, 1);
          v50 = *&v211[0];
        }

        v51 += 160;
        *(v50 + 16) = v56 + 1;
        v57 = v50 + 24 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v53;
        *(v57 + 48) = v54;
        --v49;
      }

      while (v49);
      a2 = v194;
      v25 = v190;
      v16 = v186;
      v27 = "UICoreHostingViewForUIKitTester";
      v47 = v184;
    }

    v58 = sub_188F98620(v50);

    sub_1891E566C(v47, v58);
    v60 = v59;

    v61 = 0.0;
    a4 = v193;
    v62 = v191;
    if ((v60 & 1) == 0)
    {
      sub_18A4A6D08();
      sub_189182F94(1, v63, v64);
      v61 = *(v27 + 152);
    }

    goto LABEL_28;
  }

  v30 = *(*(v25 + 56) + 8 * v28);

  sub_18A4A6D08();
  sub_189182F94(1, v31, v32);
  v33 = *(v30 + 16);
  if (v33)
  {
    if (v33 > 3)
    {
      v34 = v33 & 0x7FFFFFFFFFFFFFFCLL;
      v66 = (v30 + 48);
      v35 = 0.0;
      v67 = v33 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = v35 + *(v66 - 2) + *(v66 - 1) + *v66 + v66[1];
        v66 += 4;
        v67 -= 4;
      }

      while (v67);
      if (v33 == v34)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0.0;
    }

    v68 = v33 - v34;
    v69 = (v30 + 8 * v34 + 32);
    do
    {
      v70 = *v69++;
      v35 = v35 + v70;
      --v68;
    }

    while (v68);
LABEL_26:

    v65 = v35 / v33;
    goto LABEL_27;
  }

  v65 = 0.0;
LABEL_27:
  v62 = v191;
  v61 = 0.06;
  sub_18918503C(v65 / 6.0, 0.0, 0.06);
LABEL_28:
  v71 = 0.14;
  if ((v187 & 1) == 0)
  {
    v71 = v61;
  }

  sub_1891853C8(a2, a4, v62 & 1, v71);
  v72 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v72);

  sub_188E5B358(v73, sub_188E5C328);
  v75 = v74;

  v76 = v27;
  v77 = 0;
  v78 = v75 + 64;
  v79 = 1 << *(v75 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v75 + 64);
  v82 = (v79 + 63) >> 6;
  v179 = v188 + 8;
  v174 = (v16 + 1);
  v175 = v188 + 16;
  v191 = v75;
  v192 = &v198;
  v180 = v196;
  v83 = *(v76 + 152);
  v181 = v82;
  v182 = v75 + 64;
  while (v81)
  {
LABEL_41:
    v85 = *(v25 + 16);
    v86 = *(*(v191 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v81)))));
    if (v85)
    {
      v87 = sub_188C479E4(a2);
      if (v88)
      {
        v89 = *(*(v25 + 56) + 8 * v87);
        v90 = *(v89 + 16);
        if (v90)
        {
          if (v90 <= 3)
          {
            v91 = 0;
            v92 = 0.0;
            goto LABEL_51;
          }

          v91 = v90 & 0x7FFFFFFFFFFFFFFCLL;
          v94 = (v89 + 48);
          v92 = 0.0;
          v95 = v90 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v92 = v92 + *(v94 - 2) + *(v94 - 1) + *v94 + v94[1];
            v94 += 4;
            v95 -= 4;
          }

          while (v95);
          if (v90 != v91)
          {
LABEL_51:
            v96 = v90 - v91;
            v97 = (v89 + 8 * v91 + 32);
            do
            {
              v98 = *v97++;
              v92 = v92 + v98;
              --v96;
            }

            while (v96);
          }

          v93 = v92 / v90;
          if (UIAccessibilityIsReduceMotionEnabled())
          {
            goto LABEL_55;
          }

LABEL_54:
          sub_188E56D00();
          v188 = v86;
          v99 = v168;
          sub_188E5A020();
          v100 = *(v176 + 28);
          v187 = *v175;
          v101 = v170;
          v102 = v172;
          v187(v170, v99 + v100, v172);
          sub_188E5C34C(v99);
          v103 = v173;
          sub_18A4A4C28();
          v186 = *v179;
          (v186)(v101, v102);
          sub_18918AC08(v103, v93 / 6.0, 0.0, v83);
          v185 = *v174;
          (v185)(v103, v177);
          sub_188E5A020();
          v104 = v176;
          v187(v101, v99 + *(v176 + 28), v102);
          v105 = v99;
          v86 = v188;
          sub_188E5C34C(v105);
          sub_18A4A4C48();
          (v186)(v101, v102);
          v106 = v169;
          sub_188E5A020();
          v107 = v171;
          v187(v171, v106 + *(v104 + 28), v102);
          sub_188E5C34C(v106);
          sub_18A4A4C08();
          v109 = v108;
          (v186)(v107, v102);
          a2 = v194;
          sub_18918AC08(v103, 0.0, 0.0, v109 + v83);
          (v185)(v103, v177);
          a4 = v193;
          goto LABEL_55;
        }

        v93 = 0.0;
        if (!UIAccessibilityIsReduceMotionEnabled())
        {
          goto LABEL_54;
        }
      }
    }

LABEL_55:
    v81 &= v81 - 1;
    v110 = *&v86[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
    sub_188C45F1C(a2, v211);
    sub_188C45F1C(v211, v210);
    v111 = swift_allocObject();
    *(v111 + 16) = a4;
    *(v111 + 24) = v86;
    v112 = v211[9];
    *(v111 + 160) = v211[8];
    *(v111 + 176) = v112;
    v113 = v211[11];
    *(v111 + 192) = v211[10];
    *(v111 + 208) = v113;
    v114 = v211[5];
    *(v111 + 96) = v211[4];
    *(v111 + 112) = v114;
    v115 = v211[7];
    *(v111 + 128) = v211[6];
    *(v111 + 144) = v115;
    v116 = v211[1];
    *(v111 + 32) = v211[0];
    *(v111 + 48) = v116;
    v117 = v211[3];
    *(v111 + 64) = v211[2];
    *(v111 + 80) = v117;
    v118 = *(v110 + 2);
    *(v110 + 2) = v118 + 1;
    if (v61 == 0.0)
    {
      sub_188C45F1C(v210, v205);
      v119 = swift_allocObject();
      v120 = v205[9];
      *(v119 + 152) = v205[8];
      *(v119 + 168) = v120;
      v121 = v205[11];
      *(v119 + 184) = v205[10];
      *(v119 + 200) = v121;
      v122 = v205[5];
      *(v119 + 88) = v205[4];
      *(v119 + 104) = v122;
      v123 = v205[7];
      *(v119 + 120) = v205[6];
      *(v119 + 136) = v123;
      v124 = v205[1];
      *(v119 + 24) = v205[0];
      *(v119 + 40) = v124;
      v125 = v205[3];
      *(v119 + 56) = v205[2];
      *(v119 + 16) = v86;
      *(v119 + 72) = v125;
      sub_188C3DF9C(a4 + 16, v204);
      sub_188C3DF9C(a4 + 16, v202);
      v126 = swift_allocObject();
      v127 = v202[3];
      *(v126 + 48) = v202[2];
      *(v126 + 64) = v127;
      *(v126 + 80) = v203[0];
      *(v126 + 89) = *(v203 + 9);
      v128 = v202[1];
      *(v126 + 16) = v202[0];
      *(v126 + 32) = v128;
      *(v126 + 112) = signpost_c2_entryLock_start;
      *(v126 + 120) = 0;
      v129 = swift_allocObject();
      *(v129 + 16) = 0;
      v130 = swift_allocObject();
      v184 = v130;
      *(v130 + 3) = 0;
      *(v130 + 4) = 0;
      *(v130 + 2) = v129;
      v187 = objc_opt_self();
      v131 = swift_allocObject();
      *(v131 + 16) = sub_188E5C340;
      *(v131 + 24) = v119;
      *&v199 = sub_188E3FE50;
      *(&v199 + 1) = v131;
      v186 = v131;
      *&v197 = MEMORY[0x1E69E9820];
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_188A4A968;
      *(&v198 + 1) = &block_descriptor_207;
      v185 = _Block_copy(&v197);
      v188 = v86;

      sub_188C3DFF8(v204, &v197);
      v132 = swift_allocObject();
      v133 = v200;
      *(v132 + 56) = v199;
      *(v132 + 72) = v133;
      *(v132 + 88) = v201[0];
      *(v132 + 97) = *(v201 + 9);
      v134 = v198;
      *(v132 + 24) = v197;
      *(v132 + 16) = v129;
      v183 = v129;
      *(v132 + 40) = v134;
      *(v132 + 113) = 0;
      *(v132 + 120) = sub_188E5C7FC;
      *(v132 + 128) = v126;
      v196[2] = sub_188E5C800;
      v196[3] = v132;
      v195[0] = MEMORY[0x1E69E9820];
      v195[1] = 1107296256;
      v196[0] = sub_188A4A8F0;
      v196[1] = &block_descriptor_214;
      v135 = _Block_copy(v195);

      *&v199 = sub_188E5C82C;
      *(&v199 + 1) = v184;
      *&v197 = MEMORY[0x1E69E9820];
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_188ABD010;
      *(&v198 + 1) = &block_descriptor_217;
      v136 = _Block_copy(&v197);

      v137 = v185;
      [v187 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v136);
      _Block_release(v135);
      _Block_release(v137);

      sub_188C3E234(v204);
      sub_188C460F0(v210);

      LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

      if (v136)
      {
        goto LABEL_77;
      }

      a4 = v193;
    }

    else
    {
      v138 = sub_18A4A76C8();
      v139 = *(v138 - 8);
      v185 = v138;
      v186 = v139;
      (*(v139 + 56))(v189, 1, 1, v138);
      v140 = swift_allocObject();
      v187 = v110;
      swift_weakInit();
      sub_18A4A76A8();
      v184 = v86;

      v141 = sub_18A4A7698();
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v142 + 24) = MEMORY[0x1E69E85E0];
      *(v142 + 32) = v140;
      *(v142 + 40) = v61;
      v188 = v118;
      *(v142 + 48) = v118;
      v144 = v185;
      v143 = v186;
      *(v142 + 56) = sub_188E5C334;
      *(v142 + 64) = v111;

      v145 = v178;
      sub_188A3F29C(v189, v178, &qword_1EA934728, &unk_18A64C610);
      LODWORD(v141) = v143[6](v145, 1, v144);

      if (v141 == 1)
      {
        sub_188A3F5FC(v145, &qword_1EA934728, &unk_18A64C610);
      }

      else
      {
        sub_18A4A76B8();
        (v143[1])(v145, v144);
      }

      v146 = *(v142 + 16);
      swift_unknownObjectRetain();

      v147 = v187;
      if (v146)
      {
        swift_getObjectType();
        v148 = sub_18A4A7678();
        v150 = v149;
        swift_unknownObjectRelease();
      }

      else
      {
        v148 = 0;
        v150 = 0;
      }

      v151 = v188;
      sub_188A3F5FC(v189, &qword_1EA934728, &unk_18A64C610);
      if (v150 | v148)
      {
        v207 = 0;
        v206 = 0;
        v208 = v148;
        v209 = v150;
      }

      v152 = swift_task_create();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204[0] = *(v147 + 3);
      v154 = v204[0];
      *(v147 + 3) = 0x8000000000000000;
      v155 = sub_188B85570(v151);
      v157 = *(v154 + 16);
      v158 = (v156 & 1) == 0;
      v159 = __OFADD__(v157, v158);
      v160 = v157 + v158;
      if (v159)
      {
        goto LABEL_78;
      }

      v161 = v156;
      if (*(v154 + 24) >= v160)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v166 = v155;
          sub_188FA0D8C();
          v155 = v166;
        }
      }

      else
      {
        sub_1890BAA00(v160, isUniquelyReferenced_nonNull_native);
        v155 = sub_188B85570(v151);
        if ((v161 & 1) != (v162 & 1))
        {
          goto LABEL_80;
        }
      }

      a4 = v193;
      v163 = v204[0];
      if (v161)
      {
        *(*(v204[0] + 56) + 8 * v155) = v152;
      }

      else
      {
        *(v204[0] + 8 * (v155 >> 6) + 64) |= 1 << v155;
        *(v163[6] + 8 * v155) = v151;
        *(v163[7] + 8 * v155) = v152;
        v164 = v163[2];
        v159 = __OFADD__(v164, 1);
        v165 = v164 + 1;
        if (v159)
        {
          goto LABEL_79;
        }

        v163[2] = v165;
      }

      *(v147 + 3) = v163;
      swift_endAccess();

      sub_188C460F0(v210);
    }

    a2 = v194;
    v25 = v190;
    v82 = v181;
    v78 = v182;
  }

  while (1)
  {
    v84 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v84 >= v82)
    {

      return;
    }

    v81 = *(v78 + 8 * v84);
    ++v77;
    if (v81)
    {
      v77 = v84;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_18A4A87A8();
  __break(1u);
}

void sub_188E56714(uint64_t a1, void *a2, uint64_t a3)
{
  sub_188C45F1C(a3, v35);
  v5 = swift_allocObject();
  v6 = v35[9];
  *(v5 + 152) = v35[8];
  *(v5 + 168) = v6;
  v7 = v35[11];
  *(v5 + 184) = v35[10];
  *(v5 + 200) = v7;
  v8 = v35[5];
  *(v5 + 88) = v35[4];
  *(v5 + 104) = v8;
  v9 = v35[7];
  *(v5 + 120) = v35[6];
  *(v5 + 136) = v9;
  v10 = v35[1];
  *(v5 + 24) = v35[0];
  *(v5 + 40) = v10;
  v11 = v35[3];
  *(v5 + 56) = v35[2];
  *(v5 + 16) = a2;
  *(v5 + 72) = v11;
  sub_188C3DF9C(a1 + 16, &v34);
  sub_188C3DF9C(a1 + 16, v32);
  v12 = swift_allocObject();
  v13 = v32[3];
  *(v12 + 48) = v32[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = *v33;
  *(v12 + 89) = *&v33[9];
  v14 = v32[1];
  *(v12 + 16) = v32[0];
  *(v12 + 32) = v14;
  *(v12 + 112) = signpost_c2_entryLock_start;
  *(v12 + 120) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v15;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188E5C828;
  *(v18 + 24) = v5;
  *&v29 = sub_188E3FE50;
  *(&v29 + 1) = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_188A4A968;
  *(&v28 + 1) = &block_descriptor_237;
  v19 = _Block_copy(&aBlock);
  v20 = a2;

  sub_188C3DFF8(&v34, &aBlock);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 56) = v29;
  *(v21 + 72) = v22;
  *(v21 + 88) = *v31;
  *(v21 + 97) = *&v31[9];
  v23 = v28;
  *(v21 + 24) = aBlock;
  *(v21 + 16) = v15;
  *(v21 + 40) = v23;
  *(v21 + 113) = 0;
  *(v21 + 120) = sub_188E5C7FC;
  *(v21 + 128) = v12;
  v26[4] = sub_188E5C800;
  v26[5] = v21;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_188A4A8F0;
  v26[3] = &block_descriptor_244;
  v24 = _Block_copy(v26);

  *&v29 = sub_188E5C82C;
  *(&v29 + 1) = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_188ABD010;
  *(&v28 + 1) = &block_descriptor_247;
  v25 = _Block_copy(&aBlock);

  [v17 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v25);
  _Block_release(v24);
  _Block_release(v19);

  sub_188C3E234(&v34);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

id sub_188E56B84(void *a1, double *a2, __n128 a3)
{
  v5 = a2[7];
  v6 = a2[8];
  v7 = _s11PlatterViewCMa();
  v9 = v8;
  v24.receiver = a1;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, sel_bounds, v7);
  v11 = v10;
  v13 = v12;
  v23.receiver = a1;
  v23.super_class = v9;
  objc_msgSendSuper2(&v23, sel_bounds);
  v28.origin.x = v14;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v5;
  v25.size.height = v6;
  if (!CGRectEqualToRect(v25, v28))
  {
    v22.receiver = a1;
    v22.super_class = v9;
    objc_msgSendSuper2(&v22, sel_setBounds_, v11, v13, v5, v6);
    sub_189186E20();
  }

  v18 = a2[5];
  v19 = a2[6];
  v26.origin.x = v18;
  v26.origin.y = v19;
  v26.size.width = v5;
  v26.size.height = v6;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v18;
  v27.origin.y = v19;
  v27.size.width = v5;
  v27.size.height = v6;
  return [a1 setCenter_];
}

void sub_188E56CA4(void **a1, uint64_t a2)
{
  sub_188C45F1C(a2, v7);
  _s11PlatterViewCMa();
  v4 = objc_allocWithZone(v3);
  sub_189186438(v7);
  v5 = *a1;
  *a1 = v6;
}

void sub_188E56D00()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934748, &unk_18A64C680);
        sub_18A4A76D8();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

void sub_188E56E5C(char *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  if ((a2 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters];
    v15 = *(v14 + 16);
    v16 = OBJC_IVAR____UINavigationBarPlatterView_id;

    if (v15)
    {
      v17 = 0;
      v18 = v14 + 32;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_188C45F1C(v18, v53);
        if (MEMORY[0x18CFE2F70](v53, &a1[v16]))
        {
          break;
        }

        ++v17;
        sub_188C460F0(v53);
        v18 += 192;
        if (v15 == v17)
        {
          goto LABEL_9;
        }
      }

      v72 = v60;
      v73 = v61;
      v74 = v62;
      v75 = v63;
      v68 = v56;
      v69 = v57;
      v70 = v58;
      v71 = v59;
      v64 = v53[0];
      v65 = v53[1];
      v66 = v54;
      v67 = v55;
      v31 = *(&v54 + 1);
      v33 = v55;
      v32 = *&v56;
      [a1 frame];
      v77.origin.x = v34;
      v77.origin.y = v35;
      v77.size.width = v36;
      v77.size.height = v37;
      v76.origin.x = v31;
      *&v76.origin.y = v33;
      v76.size.height = v32;
      if (CGRectEqualToRect(v76, v77))
      {
        sub_188C460F0(&v64);
        goto LABEL_10;
      }

      v38 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
      v39 = swift_allocObject();
      *(v39 + 16) = v2;
      *(v39 + 24) = a1;
      v40 = *(v38 + 16);
      *(v38 + 16) = v40 + 1;
      v41 = sub_18A4A76C8();
      (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
      v42 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();
      v43 = a1;
      v44 = v2;

      v45 = sub_18A4A7698();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = MEMORY[0x1E69E85E0];
      v46[4] = v42;
      v46[5] = 0x3F847AE147AE147BLL;
      v46[6] = v40;
      v46[7] = sub_188E5C458;
      v46[8] = v39;

      v47 = sub_188E59CB0(0, 0, v8, &unk_18A64C668, v46);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v38 + 24);
      *(v38 + 24) = 0x8000000000000000;
      sub_188E9DE78(v47, v40, isUniquelyReferenced_nonNull_native);
      *(v38 + 24) = v52;
      swift_endAccess();

      sub_188C460F0(&v64);
      v51 = 0;
      v10 = 0;
    }

    else
    {
LABEL_9:

LABEL_10:
      v51 = 0;
      v10 = 0;
    }

    goto LABEL_11;
  }

  v50 = &v49 - v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_188E5C7F0;
  *(v11 + 24) = v10;
  *&v66 = sub_188E3FE50;
  *(&v66 + 1) = v11;
  *&v64 = MEMORY[0x1E69E9820];
  *(&v64 + 1) = 1107296256;
  *&v65 = sub_188A4A968;
  *(&v65 + 1) = &block_descriptor_337;
  v12 = _Block_copy(&v64);
  v13 = a1;

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v8 = v50;
    v51 = sub_188E5C7F0;
LABEL_11:
    v19 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v20 + 24) = a1;
    v21 = *(v19 + 16);
    *(v19 + 16) = v21 + 1;
    v22 = sub_18A4A76C8();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = v8;
    v24 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();
    v25 = a1;
    v26 = v3;

    v27 = sub_18A4A7698();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = MEMORY[0x1E69E85E0];
    v28[4] = v24;
    v28[5] = 0x3FC1EB851EB851ECLL;
    v28[6] = v21;
    v28[7] = sub_188E5C460;
    v28[8] = v20;

    v29 = sub_188E59CB0(0, 0, v23, &unk_18A64C670, v28);
    swift_beginAccess();

    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v53[0] = *(v19 + 24);
    *(v19 + 24) = 0x8000000000000000;
    sub_188E9DE78(v29, v21, v30);
    *(v19 + 24) = *&v53[0];
    swift_endAccess();

    sub_188A55B8C(v51, v10);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_188E574F4(uint64_t a1, double a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v19[0] = v7;
  v9 = sub_188C479E4(a1);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v7;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_188FA107C();
      v7 = v19[0];
      *v3 = v19[0];
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_188C46270(a1, v19);
    sub_188F15704(v9, v19, MEMORY[0x1E69E7CC0], v7);
    goto LABEL_9;
  }

  sub_1890BACA4(v12, isUniquelyReferenced_nonNull_native);
  v7 = v19[0];
  v14 = sub_188C479E4(a1);
  if ((v13 & 1) != (v15 & 1))
  {
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v9 = v14;
  *v3 = v19[0];
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v3 = *(v7 + 7);
  v7 = v3[v9];
  result = swift_isUniquelyReferenced_nonNull_native();
  v3[v9] = v7;
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_188B8B034(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
    v3[v9] = result;
  }

  v18 = *(v7 + 2);
  v17 = *(v7 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_188B8B034((v17 > 1), v18 + 1, 1, v7);
    v7 = result;
    v3[v9] = result;
  }

  *(v7 + 2) = v18 + 1;
  *&v7[8 * v18 + 32] = a2;
  return result;
}

void sub_188E57690(_BYTE *a1, char a2, uint64_t a3)
{
  v6 = a1[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase];
  a1[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase] = 1;
  sub_189186104(v6);
  if ((a2 & 1) == 0)
  {
    CGAffineTransformMakeScale(&v31, 0.2, 0.2);
    [a1 setTransform_];
  }

  v7 = *(a3 + 136);
  v8 = *(a3 + 144);
  v9 = _s11PlatterViewCMa();
  v11 = v10;
  v30.receiver = a1;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, sel_bounds, v9);
  v13 = v12;
  v15 = v14;
  v29.receiver = a1;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, sel_bounds);
  v35.origin.x = v16;
  v35.origin.y = v17;
  v35.size.width = v18;
  v35.size.height = v19;
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v7;
  v32.size.height = v8;
  if (!CGRectEqualToRect(v32, v35))
  {
    v28.receiver = a1;
    v28.super_class = v11;
    objc_msgSendSuper2(&v28, sel_setBounds_, v13, v15, v7, v8);
    sub_189186E20();
  }

  v20 = *(a3 + 120);
  v21 = *(a3 + 128);
  v33.origin.x = v20;
  v33.origin.y = v21;
  v33.size.width = v7;
  v33.size.height = v8;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v7;
  v34.size.height = v8;
  [a1 setCenter_];
  v23 = &a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v24 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v25 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  *v23 = *(a3 + 152);
  v26 = *(a3 + 160);
  *(v23 + 8) = v26;
  v27 = v26;
  sub_188E5B1D4(v24, v25);
  sub_189185D18();
}

void sub_188E57864(uint64_t a1, CGFloat a2)
{
  if (CGRectGetMidX(*(a1 + 120)) <= a2)
  {
    sub_18A4A6D18();
  }

  else
  {
    sub_18A4A6D28();
  }

  sub_189182F94(0, v2, v3);
}

unint64_t sub_188E578B8(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_188C479E4(a2);
    if (v3)
    {
      v4 = *(*(v2 + 56) + 8 * result);
      v5 = *(v4 + 16);
      if (!v5)
      {
        v8 = 0.0;
        return sub_18918503C(v8 / 6.0, 0.0, 0.06);
      }

      if (v5 > 3)
      {
        v6 = v5 & 0x7FFFFFFFFFFFFFFCLL;
        v9 = (v4 + 48);
        v7 = 0.0;
        v10 = v5 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v7 = v7 + *(v9 - 2) + *(v9 - 1) + *v9 + v9[1];
          v9 += 4;
          v10 -= 4;
        }

        while (v10);
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0.0;
      }

      v11 = v5 - v6;
      v12 = (v4 + 8 * v6 + 32);
      do
      {
        v13 = *v12++;
        v7 = v7 + v13;
        --v11;
      }

      while (v11);
LABEL_12:
      v8 = v7 / v5;
      return sub_18918503C(v8 / 6.0, 0.0, 0.06);
    }
  }

  return result;
}

void sub_188E5799C(uint64_t a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = a7;
  *(v14 + 56) = a3;
  sub_188C3DF9C(a1 + 16, v37);
  sub_188C3DF9C(a1 + 16, v35);
  v15 = swift_allocObject();
  v16 = v35[3];
  *(v15 + 48) = v35[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v36[0];
  *(v15 + 89) = *(v36 + 9);
  v17 = v35[1];
  *(v15 + 16) = v35[0];
  *(v15 + 32) = v17;
  *(v15 + 112) = signpost_c2_entryLock_start;
  *(v15 + 120) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v18;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_188E5C808;
  *(v21 + 24) = v14;
  *&v32 = sub_188E3FE50;
  *(&v32 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_188A4A968;
  *(&v31 + 1) = &block_descriptor_512;
  v22 = _Block_copy(&aBlock);
  v23 = a2;

  sub_188C3DFF8(v37, &aBlock);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 56) = v32;
  *(v24 + 72) = v25;
  *(v24 + 88) = v34[0];
  *(v24 + 97) = *(v34 + 9);
  v26 = v31;
  *(v24 + 24) = aBlock;
  *(v24 + 16) = v18;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v15;
  v29[4] = sub_188E5C800;
  v29[5] = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_188A4A8F0;
  v29[3] = &block_descriptor_519;
  v27 = _Block_copy(v29);

  *&v32 = sub_188E5C82C;
  *(&v32 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_188ABD010;
  *(&v31 + 1) = &block_descriptor_522;
  v28 = _Block_copy(&aBlock);

  [v20 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v37);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

void sub_188E57D98(void *a1, char a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  [a1 setCenter_];
  v10 = _s11PlatterViewCMa();
  v12 = v11;
  v24.receiver = a1;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, sel_bounds, v10);
  v14 = v13;
  v16 = v15;
  v23.receiver = a1;
  v23.super_class = v12;
  objc_msgSendSuper2(&v23, sel_bounds);
  v26.origin.x = v17;
  v26.origin.y = v18;
  v26.size.width = v19;
  v26.size.height = v20;
  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = a5;
  v25.size.height = a6;
  if (!CGRectEqualToRect(v25, v26))
  {
    v22.receiver = a1;
    v22.super_class = v12;
    objc_msgSendSuper2(&v22, sel_setBounds_, v14, v16, a5, a6);
    sub_189186E20();
  }

  if ((a2 & 1) == 0)
  {
    v21[0] = 0x3FF0000000000000;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0x3FF0000000000000;
    v21[4] = 0;
    v21[5] = 0;
    [a1 setTransform_];
  }
}

void sub_188E57EA0(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
  v3 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
  v4 = *(v2 + 8);
  *v2 = xmmword_18A64C520;
  *(v2 + 16) = 0;
  sub_188E5B1D4(v3, v4);
  sub_189185D18();
  v5 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v5);
}

id sub_188E57F08(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_1891E9650(a2, v4);
  swift_endAccess();
  sub_188A3F5FC(v4, &qword_1EA934740, &qword_18A64C660);
  return [a2 removeFromSuperview];
}

void sub_188E57F98(char *a1, uint64_t a2, char a3, __n128 a4)
{
  v7 = *(a2 + 136);
  v8 = *(a2 + 144);
  v9 = _s11PlatterViewCMa();
  v11 = v10;
  v31.receiver = a1;
  v31.super_class = v10;
  objc_msgSendSuper2(&v31, sel_bounds, v9);
  v13 = v12;
  v15 = v14;
  v30.receiver = a1;
  v30.super_class = v11;
  objc_msgSendSuper2(&v30, sel_bounds);
  v35.origin.x = v16;
  v35.origin.y = v17;
  v35.size.width = v18;
  v35.size.height = v19;
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v7;
  v32.size.height = v8;
  if (!CGRectEqualToRect(v32, v35))
  {
    v29.receiver = a1;
    v29.super_class = v11;
    objc_msgSendSuper2(&v29, sel_setBounds_, v13, v15, v7, v8);
    sub_189186E20();
  }

  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v33.origin.x = v20;
  v33.origin.y = v21;
  v33.size.width = v7;
  v33.size.height = v8;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v7;
  v34.size.height = v8;
  [a1 setCenter_];
  v23 = &a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v24 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v25 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  *v23 = *(a2 + 152);
  v26 = *(a2 + 160);
  *(v23 + 8) = v26;
  v27 = v26;
  sub_188E5B1D4(v24, v25);
  sub_189185D18();

  if ((a3 & 1) == 0)
  {
    CGAffineTransformMakeScale(&v28, 0.5, 0.5);
    [a1 setTransform_];
  }
}

void sub_188E5814C(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  sub_188E5B14C(a4, v36);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = v36[9];
  *(v7 + 160) = v36[8];
  *(v7 + 176) = v8;
  *(v7 + 192) = v36[10];
  v9 = v36[5];
  *(v7 + 96) = v36[4];
  *(v7 + 112) = v9;
  v10 = v36[7];
  *(v7 + 128) = v36[6];
  *(v7 + 144) = v10;
  v11 = v36[1];
  *(v7 + 32) = v36[0];
  *(v7 + 48) = v11;
  v12 = v36[3];
  *(v7 + 64) = v36[2];
  *(v7 + 80) = v12;
  sub_188C3DF9C(a1 + 16, &v35);
  sub_188C3DF9C(a1 + 16, v33);
  v13 = swift_allocObject();
  v14 = v33[3];
  *(v13 + 48) = v33[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = *v34;
  *(v13 + 89) = *&v34[9];
  v15 = v33[1];
  *(v13 + 16) = v33[0];
  *(v13 + 32) = v15;
  *(v13 + 112) = signpost_c2_entryLock_start;
  *(v13 + 120) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v16;
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188E5C7F4;
  *(v19 + 24) = v7;
  *&v30 = sub_188E3FE50;
  *(&v30 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188A4A968;
  *(&v29 + 1) = &block_descriptor_482;
  v20 = _Block_copy(&aBlock);
  v21 = a3;

  sub_188C3DFF8(&v35, &aBlock);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 56) = v30;
  *(v22 + 72) = v23;
  *(v22 + 88) = *v32;
  *(v22 + 97) = *&v32[9];
  v24 = v29;
  *(v22 + 24) = aBlock;
  *(v22 + 16) = v16;
  *(v22 + 40) = v24;
  *(v22 + 113) = 0;
  *(v22 + 120) = sub_188E5C7FC;
  *(v22 + 128) = v13;
  v27[4] = sub_188E5C800;
  v27[5] = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188A4A8F0;
  v27[3] = &block_descriptor_489;
  v25 = _Block_copy(v27);

  *&v30 = sub_188E5C82C;
  *(&v30 + 1) = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_188ABD010;
  *(&v29 + 1) = &block_descriptor_492;
  v26 = _Block_copy(&aBlock);

  [v18 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v26);
  _Block_release(v25);
  _Block_release(v20);

  sub_188C3E234(&v35);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_188E585A4(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_188E5B14C(a5, v43);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 17) = a3;
  *(v13 + 24) = a4;
  v14 = v43[9];
  *(v13 + 160) = v43[8];
  *(v13 + 176) = v14;
  *(v13 + 192) = v43[10];
  v15 = v43[5];
  *(v13 + 96) = v43[4];
  *(v13 + 112) = v15;
  v16 = v43[7];
  *(v13 + 128) = v43[6];
  *(v13 + 144) = v16;
  v17 = v43[1];
  *(v13 + 32) = v43[0];
  *(v13 + 48) = v17;
  v18 = v43[3];
  *(v13 + 64) = v43[2];
  *(v13 + 80) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  sub_188C3DF9C(a1 + 16, &v42);
  sub_188C3DF9C(a1 + 16, v40);
  v20 = swift_allocObject();
  v21 = v40[3];
  *(v20 + 48) = v40[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = *v41;
  *(v20 + 89) = *&v41[9];
  v22 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_188E5C7F8;
  v24[4] = v19;
  v33 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188E5C804;
  *(v25 + 24) = v13;
  *&v37 = sub_188E3FE50;
  *(&v37 + 1) = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_188A4A968;
  *(&v36 + 1) = &block_descriptor_452;
  v26 = _Block_copy(&aBlock);
  v27 = a4;

  sub_188C3DFF8(&v42, &aBlock);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 56) = v37;
  *(v28 + 72) = v29;
  *(v28 + 88) = *v39;
  *(v28 + 97) = *&v39[9];
  v30 = v36;
  *(v28 + 24) = aBlock;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v34[4] = sub_188E5C800;
  v34[5] = v28;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_459;
  v31 = _Block_copy(v34);

  *&v37 = sub_188E5C82C;
  *(&v37 + 1) = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_188ABD010;
  *(&v36 + 1) = &block_descriptor_462;
  v32 = _Block_copy(&aBlock);

  [v33 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(&v42);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }
}