uint64_t sub_2226EC694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226EC6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226EC744()
{
  v1 = [v0 baseBuyParams];
  v2 = sub_22273919C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v0 baseBuyParams];
    v7 = sub_22273919C();
    v9 = v8;

    v10 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_222694EC0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v14 = [v0 metricsBuyParams];
  v15 = sub_22273919C();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [v0 metricsBuyParams];
    v20 = sub_22273919C();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_222694EC0(0, *(v10 + 2) + 1, 1, v10);
    }

    v24 = *(v10 + 2);
    v23 = *(v10 + 3);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_222694EC0((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 2) = v24 + 1;
    v25 = &v10[16 * v24];
    *(v25 + 4) = v20;
    *(v25 + 5) = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0, MEMORY[0x277D83958]);
  v26 = sub_22273913C();

  return v26;
}

uint64_t sub_2226EC9A0@<X0>(uint64_t a1@<X8>)
{
  v49 = sub_2227370AC();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014190, &qword_222744C48);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v45 - v16;
  v50 = 0x2F2F3A7370747468;
  v51 = 0xE90000000000003FLL;
  v18 = [v1 baseBuyParams];
  v19 = sub_22273919C();
  v21 = v20;

  MEMORY[0x223DBE5D0](v19, v21);

  sub_2227370DC();

  v22 = sub_2227370EC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    sub_222660468(v17, &qword_27D014190, &qword_222744C48);
LABEL_29:

LABEL_30:
    v39 = 1;
LABEL_31:
    v40 = sub_222737C2C();
    return (*(*(v40 - 8) + 56))(a1, v39, 1, v40);
  }

  v24 = sub_2227370BC();
  (*(v23 + 8))(v17, v22);
  if (!v24)
  {
    goto LABEL_29;
  }

  v46 = v7;
  v25 = *(v24 + 16);

  if (v25)
  {
    v47 = v13;
    v45 = a1;
    v27 = 0;
    while (1)
    {
      if (v27 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      (*(v3 + 16))(v10, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v49);
      if (sub_22273708C() == 0x54746375646F7270 && v28 == 0xEB00000000657079)
      {
        break;
      }

      v29 = sub_222739B4C();

      if (v29)
      {
        goto LABEL_14;
      }

      ++v27;
      result = (*(v3 + 8))(v10, v49);
      if (v25 == v27)
      {
        LODWORD(v47) = 0;
        a1 = v45;
        goto LABEL_21;
      }
    }

LABEL_14:

    v30 = v47;
    v31 = v49;
    (*(v3 + 32))(v47, v10, v49);
    v32 = sub_22273709C();
    v34 = v33;
    result = (*(v3 + 8))(v30, v31);
    a1 = v45;
    if (!v34)
    {
      LODWORD(v47) = 0;
      v35 = *(v24 + 16);
      if (v35)
      {
        goto LABEL_22;
      }

LABEL_28:

      if (v47)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v32 == 65 && v34 == 0xE100000000000000)
    {
      LODWORD(v47) = 1;
    }

    else
    {
      LODWORD(v47) = sub_222739B4C();
    }
  }

  else
  {
    LODWORD(v47) = 0;
  }

LABEL_21:

  v35 = *(v24 + 16);
  if (!v35)
  {
    goto LABEL_28;
  }

LABEL_22:
  v36 = 0;
  while (v36 < *(v24 + 16))
  {
    (*(v3 + 16))(v48, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36, v49);
    if (sub_22273708C() == 0x41656C62616C6173 && v37 == 0xED000064496D6164)
    {

LABEL_33:

      v41 = v46;
      v42 = v49;
      (*(v3 + 32))(v46, v48, v49);
      sub_22273709C();
      v44 = v43;
      (*(v3 + 8))(v41, v42);
      if ((v47 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v44)
      {
        sub_222737C0C();
        v39 = 0;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v38 = sub_222739B4C();

    if (v38)
    {
      goto LABEL_33;
    }

    ++v36;
    result = (*(v3 + 8))(v48, v49);
    if (v35 == v36)
    {
      goto LABEL_28;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

char *sub_2226ED04C(uint64_t a1, void *a2)
{
  v186 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v3 - 8);
  v175 = v153 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v5 - 8);
  v176 = v153 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v7 - 8);
  v173 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v180 = v153 - v10;
  MEMORY[0x28223BE20](v11);
  v179 = v153 - v12;
  v188 = sub_22273823C();
  v184 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v169 = v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v183 = v153 - v15;
  v16 = sub_2227380FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v172 = v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v171 = v153 - v20;
  MEMORY[0x28223BE20](v21);
  v170 = v153 - v22;
  MEMORY[0x28223BE20](v23);
  v168 = v153 - v24;
  MEMORY[0x28223BE20](v25);
  v167 = v153 - v26;
  MEMORY[0x28223BE20](v27);
  v181 = v153 - v28;
  MEMORY[0x28223BE20](v29);
  v178 = v153 - v30;
  MEMORY[0x28223BE20](v31);
  v177 = v153 - v32;
  MEMORY[0x28223BE20](v33);
  v182 = (v153 - v34);
  MEMORY[0x28223BE20](v35);
  v187 = v153 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = v153 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v153 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v153 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = v153 - v47;
  v49 = a1;
  sub_22273810C();
  v174 = sub_2227380EC();
  v51 = v50;
  v54 = *(v17 + 8);
  v52 = v17 + 8;
  v53 = v54;
  (v54)(v48, v16);
  if (!v51)
  {
    v73 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v75 = v74;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v75, "baseBuyParams");
    *(v75 + 14) = -4864;
LABEL_13:
    *(v75 + 16) = MetatypeMetadata;
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D22530], v73);
    swift_willThrow();
    return v39;
  }

  v189 = v51;
  v55 = 0x800000022274CE70;
  sub_22273810C();
  v165 = sub_2227380EC();
  v57 = v56;
  (v53)(v45, v16);
  if (!v57)
  {

    v73 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v75 = v77;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v75 = 0xD000000000000010;
LABEL_12:
    *(v75 + 8) = v55;
    goto LABEL_13;
  }

  v58 = v16;
  v166 = v57;
  sub_22273810C();
  v59 = sub_2227380EC();
  v61 = v60;
  (v53)(v42, v58);
  if (!v61)
  {

    v73 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v75 = v78;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v75 = 0x4449656C646E7562;
    *(v75 + 8) = 0xE800000000000000;
    goto LABEL_13;
  }

  v163 = v59;
  v55 = 0xE800000000000000;
  sub_22273810C();
  v162 = sub_2227380EC();
  v63 = v62;
  (v53)(v39, v58);
  if (!v63)
  {

    v73 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v75 = v79;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v75 = 0x656D614E6D657469;
    goto LABEL_12;
  }

  v164 = v63;
  v39 = v187;
  sub_22273810C();
  v64 = sub_2227380EC();
  v66 = v65;
  v187 = v53;
  (v53)(v39, v58);
  if (!v66)
  {

    v73 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v75 = v81;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v75 = 0x614E726F646E6576;
    *(v75 + 8) = 0xEA0000000000656DLL;
    goto LABEL_13;
  }

  v160 = v52;
  v159 = v61;
  v158 = v64;
  v67 = v182;
  v161 = v49;
  sub_22273810C();
  v68 = v183;
  v69 = v184;
  v70 = (v184 + 2);
  v39 = v184[2];
  (v39)(v183, v186, v188);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v71 = v185;
  v72 = sub_2226F3C10(v67);
  if (v71)
  {

    (v69[1])(v68, v188);
    (v187)(v67, v58);
    return v39;
  }

  v154 = v39;
  v155 = v66;
  v156 = v72;
  v157 = 0;
  (v69[1])(v68, v188);
  v82 = v187;
  (v187)(v67, v58);
  v83 = v177;
  sub_22273810C();
  v84 = v179;
  sub_22273801C();
  (v82)(v83, v58);
  v85 = sub_2227384AC();
  v86 = *(v85 - 8);
  v87 = v86 + 48;
  v184 = *(v86 + 6);
  v88 = (v184)(v84, 1, v85);
  v185 = v58;
  v182 = v86;
  v153[1] = v70;
  if (v88 == 1)
  {
    sub_222660468(v84, &qword_27D014128, &qword_2227448A8);
    v89 = v180;
    v90 = v181;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v58 = v185;
    v91 = sub_22273849C();
    (*(v86 + 1))(v84, v85);
    v89 = v180;
    v90 = v181;
    if (v91)
    {
      v39 = v87;
      v183 = v91;
      goto LABEL_21;
    }
  }

  v39 = v87;
  v183 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_21:
  v92 = v178;
  sub_22273810C();
  sub_22273801C();
  (v187)(v92, v58);
  v93 = (v184)(v89, 1, v85);
  v177 = v85;
  if (v93 == 1)
  {
    sub_222660468(v89, &qword_27D014128, &qword_2227448A8);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v94 = sub_22273849C();
    v182[1](v89, v85);
    if (v94)
    {
      goto LABEL_25;
    }
  }

  v94 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_25:
  sub_22273810C();
  v95 = sub_22273806C();
  if (v96)
  {

    v97 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v99 = v98;
    type metadata accessor for ASCOfferFlags(0);
    v100 = MEMORY[0x277D84F90];
    *v99 = 0x65756C6156776172;
    v99[1] = 0xE800000000000000;
    v99[2] = v101;
    v99[3] = v100;
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x277D22540], v97);
    swift_willThrow();

    (v187)(v90, v185);
  }

  else
  {
    v179 = v94;
    v181 = v95;
    v102 = v185;
    v103 = v187;
    (v187)(v90, v185);
    v104 = v167;
    sub_22273810C();
    v180 = sub_2227380DC();
    (v103)(v104, v102);
    sub_22273810C();
    (v154)(v169, v186, v188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_22262BED4(&qword_281313F78, &qword_27D014180, &unk_222744C00, &unk_2227447B0);
    v105 = sub_2227393DC();
    v106 = *(v105 + 16);
    if (v106)
    {
      v191 = MEMORY[0x277D84F90];
      sub_22273997C();
      v107 = 32;
      v108 = v177;
      do
      {
        v109 = *(v105 + v107);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v107 += 8;
        --v106;
      }

      while (v106);

      v188 = v191;
    }

    else
    {

      v188 = MEMORY[0x277D84F90];
      v108 = v177;
    }

    v110 = v170;
    sub_22273810C();
    v111 = v173;
    sub_22273801C();
    (v187)(v110, v185);
    v112 = (v184)(v111, 1, v108);
    v113 = v175;
    if (v112 == 1)
    {
      sub_222660468(v111, &qword_27D014128, &qword_2227448A8);
      v186 = 0;
    }

    else
    {
      v186 = sub_22273849C();
      v182[1](v111, v108);
    }

    v114 = v157;
    v115 = v176;
    v116 = v171;
    sub_22273810C();
    sub_22273807C();
    v117 = v116;
    v118 = v185;
    v119 = v187;
    (v187)(v117, v185);
    v120 = v172;
    sub_22273810C();
    sub_22273809C();
    (v119)(v120, v118);
    v121 = sub_222738F9C();
    v122 = *(v121 - 8);
    if ((*(v122 + 48))(v113, 1, v121) == 1)
    {
      sub_222660468(v113, &qword_27D0141A0, &unk_2227448B0);
      v123 = 0;
    }

    else
    {
      v124 = sub_222738F8C();
      v125 = v113;
      v123 = v124;
      (*(v122 + 8))(v125, v121);
    }

    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v126 = sub_2227390FC();

    v127 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v187 = sub_22273936C();

    v128 = sub_22273916C();

    v189 = sub_22273916C();

    v157 = v114;
    if (v186)
    {
      v188 = sub_2227390FC();
    }

    else
    {
      v188 = 0;
    }

    v129 = sub_22273731C();
    v130 = *(v129 - 8);
    v131 = 0;
    if ((*(v130 + 48))(v115, 1, v129) != 1)
    {
      v131 = sub_2227372BC();
      (*(v130 + 8))(v115, v129);
    }

    v132 = sub_22273916C();

    v133 = sub_22273916C();

    v134 = sub_22273916C();

    if (v123)
    {
      v135 = sub_22273936C();
    }

    else
    {
      v135 = 0;
    }

    v186 = v135;
    v136 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v151 = v134;
    v152 = v135;
    v149 = v132;
    v150 = v133;
    v184 = v132;
    v137 = v131;
    v148 = v131;
    v185 = v133;
    v138 = v188;
    v190 = v134;
    v139 = v189;
    v147 = v128;
    v140 = v156;
    v141 = v126;
    v142 = v127;
    v183 = v128;
    v143 = v127;
    v144 = v126;
    v145 = v180;
    v146 = v187;
    v39 = [v136 initWithID:v156 titles:v141 subtitles:v142 flags:v181 ageRating:v180 metrics:v187 baseBuyParams:v147 metricsBuyParams:v189 additionalHeaders:v188 preflightPackageURL:v148 bundleID:v149 itemName:v150 vendorName:v151 capabilities:v152];
  }

  return v39;
}

char *sub_2226EE6A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_22273731C();
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227378EC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    if (([a2 flags] & 2) == 0)
    {
      v75 = v9;
      v76 = v10;
      goto LABEL_6;
    }
  }

  v11 = [v3 baseBuyParams];
  v75 = sub_22273919C();
  v76 = v12;

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222744C10;
  *(inited + 32) = 25705;
  v77 = inited + 32;
  *(inited + 40) = 0xE200000000000000;
  v14 = [v3 id];
  v15 = [v14 stringValue];

  v16 = sub_22273919C();
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 0x73656C746974;
  *(inited + 88) = 0xE600000000000000;
  v20 = [v3 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
  v21 = sub_22273910C();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014188, &qword_222744C40);
  *(inited + 96) = v21;
  *(inited + 120) = v22;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE900000000000073;
  v23 = [v3 subtitles];
  v24 = sub_22273910C();

  *(inited + 144) = v24;
  *(inited + 168) = v22;
  *(inited + 176) = 0x7367616C66;
  *(inited + 184) = 0xE500000000000000;
  v25 = [v3 flags];
  v26 = MEMORY[0x277D83B88];
  *(inited + 192) = v25;
  *(inited + 216) = v26;
  *(inited + 224) = 0x7363697274656DLL;
  *(inited + 232) = 0xE700000000000000;
  v27 = [v3 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v28 = sub_22273937C();

  if (v28 >> 62)
  {
    v29 = sub_22273984C();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v3;
  v74 = v5;
  if (v29)
  {
    *&v80[0] = MEMORY[0x277D84F90];
    result = sub_2226AE788(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = 0;
    v32 = *&v80[0];
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223DBEC70](v31, v28);
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
      }

      v34 = v33;
      sub_2226E937C(&v81);

      *&v80[0] = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2226AE788((v35 > 1), v36 + 1, 1);
        v32 = *&v80[0];
      }

      ++v31;
      *(v32 + 16) = v36 + 1;
      sub_22269457C(&v81, (v32 + 32 * v36 + 32));
    }

    while (v29 != v31);

    v19 = MEMORY[0x277D837D0];
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  *(inited + 240) = v32;
  *(inited + 264) = v37;
  strcpy((inited + 272), "baseBuyParams");
  *(inited + 286) = -4864;
  v38 = v76;
  *(inited + 288) = v75;
  *(inited + 296) = v38;
  *(inited + 312) = v19;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x800000022274CE70;
  v39 = v78;
  v40 = [v78 metricsBuyParams];
  v41 = sub_22273919C();
  v43 = v42;

  *(inited + 336) = v41;
  *(inited + 344) = v43;
  *(inited + 360) = v19;
  *(inited + 368) = 0x4449656C646E7562;
  *(inited + 376) = 0xE800000000000000;
  v44 = [v39 bundleID];
  v45 = sub_22273919C();
  v47 = v46;

  *(inited + 384) = v45;
  *(inited + 392) = v47;
  *(inited + 408) = v19;
  *(inited + 416) = 0x656D614E6D657469;
  *(inited + 424) = 0xE800000000000000;
  v48 = [v39 itemName];
  v49 = sub_22273919C();
  v51 = v50;

  *(inited + 432) = v49;
  *(inited + 440) = v51;
  *(inited + 456) = v19;
  *(inited + 464) = 0x614E726F646E6576;
  *(inited + 472) = 0xEA0000000000656DLL;
  v52 = [v39 vendorName];
  v53 = sub_22273919C();
  v55 = v54;

  *(inited + 504) = v19;
  *(inited + 480) = v53;
  *(inited + 488) = v55;
  v56 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  v57 = [v39 additionalHeaders];
  if (v57)
  {
    v58 = v57;
    v59 = sub_22273910C();

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
    *&v81 = v59;
    sub_22269457C(&v81, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v56;
    sub_22268BC94(v80, 0xD000000000000011, 0x800000022274CEB0, isUniquelyReferenced_nonNull_native);
    v56 = v79;
  }

  v61 = [v39 preflightPackageURL];
  if (v61)
  {
    v62 = v72;
    v63 = v61;
    sub_2227372FC();

    v64 = sub_22273729C();
    v82 = v19;
    *&v81 = v64;
    *(&v81 + 1) = v65;
    sub_22269457C(&v81, v80);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v56;
    sub_22268BC94(v80, 0xD000000000000013, 0x800000022274CE90, v66);
    (*(v73 + 8))(v62, v74);
    v56 = v79;
  }

  v67 = [v39 ageRating];
  if (v67)
  {
    v68 = v67;
    v82 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    *&v81 = v68;
    sub_22269457C(&v81, v80);
    v69 = v68;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v56;
    sub_22268BC94(v80, 0x6E69746152656761, 0xE900000000000067, v70);

    return v79;
  }

  return v56;
}

uint64_t sub_2226EEEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226EEF3C(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (![v3 *a3])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = v5;
    swift_unknownObjectRetain();
    v8 = v6(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

void (*sub_2226EEFF8(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = v81 - v7;
  v99 = sub_22273823C();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v86 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = v81 - v10;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v85 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = v81 - v15;
  MEMORY[0x28223BE20](v16);
  v90 = v81 - v17;
  MEMORY[0x28223BE20](v18);
  v89 = v81 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v81 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v81 - v24;
  v26 = a1;
  sub_22273810C();
  v27 = a2;
  v28 = sub_222683D28(v25, a2);
  v31 = *(v12 + 8);
  v29 = v12 + 8;
  v30 = v31;
  v31(v25, v11);
  if (!v28)
  {
    v35 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v40 = v39;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v40 = 0xD000000000000012;
    v40[1] = 0x800000022274CED0;
    v40[2] = MetatypeMetadata;
    (*(*(v35 - 1) + 104))(v40, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    return v35;
  }

  v94 = v28;
  sub_22273810C();
  v32 = sub_222683D28(v25, v27);
  v95 = v11;
  v30(v25, v11);
  if (!v32)
  {
    v35 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v43 = v42;
    v44 = swift_getMetatypeMetadata();
    *v43 = 0x6269726373627573;
    v43[1] = 0xEF726566664F6465;
    v43[2] = v44;
    (*(*(v35 - 1) + 104))(v43, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    return v35;
  }

  v87 = v29;
  v88 = v30;
  v84 = v32;
  sub_22273810C();
  v34 = v96;
  v33 = v97;
  v36 = v97 + 16;
  v35 = *(v97 + 16);
  v35(v96, v27, v99);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v37 = v98;
  v38 = sub_2226F3C10(v22);
  v98 = v37;
  if (v37)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v34, v99);
    v88(v22, v95);
    return v35;
  }

  v81[0] = v35;
  v81[1] = v36;
  v82 = v27;
  v83 = v38;
  (*(v33 + 8))(v34, v99);
  v45 = v26;
  v46 = v95;
  v47 = v88;
  v88(v22, v95);
  v48 = v89;
  v97 = v45;
  sub_22273810C();
  v49 = v91;
  sub_22273801C();
  v47(v48, v46);
  v50 = sub_2227384AC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v49, 1, v50) == 1)
  {
    sub_2226EC694(v49);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v53 = sub_22273849C();
    (*(v51 + 8))(v49, v50);
    if (v53)
    {
      v96 = v53;
      goto LABEL_12;
    }
  }

  v96 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_12:
  v54 = v90;
  sub_22273810C();
  v55 = v92;
  sub_22273801C();
  v88(v54, v95);
  if (v52(v55, 1, v50) == 1)
  {
    sub_2226EC694(v55);
    v56 = v82;
    v57 = v93;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v58 = sub_22273849C();
    (*(v51 + 8))(v55, v50);
    v56 = v82;
    v57 = v93;
    if (v58)
    {
      goto LABEL_16;
    }
  }

  v58 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_16:
  v59 = v95;
  sub_22273810C();
  v60 = sub_22273806C();
  if (v61)
  {

    v35 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v63 = v62;
    type metadata accessor for ASCOfferFlags(0);
    v64 = MEMORY[0x277D84F90];
    *v63 = 0x65756C6156776172;
    v63[1] = 0xE800000000000000;
    v63[2] = v65;
    v63[3] = v64;
    (*(*(v35 - 1) + 104))(v63, *MEMORY[0x277D22540], v35);
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v88(v57, v59);
  }

  else
  {
    v93 = v60;
    v95 = v58;
    v66 = v57;
    v67 = v88;
    v88(v66, v59);
    v68 = v85;
    sub_22273810C();
    v92 = sub_2227380DC();
    v67(v68, v59);
    sub_22273810C();
    (v81[0])(v86, v56, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v69 = sub_2227393DC();
    v70 = *(v69 + 16);
    if (v70)
    {
      v100 = MEMORY[0x277D84F90];
      sub_22273997C();
      v71 = 32;
      do
      {
        v72 = *(v69 + v71);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v71 += 8;
        --v70;
      }

      while (v70);
    }

    v73 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v74 = sub_2227390FC();

    v75 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v76 = sub_22273936C();

    v77 = v73;
    v78 = v83;
    v79 = v92;
    v35 = [v77 initWithID:v83 titles:v74 subtitles:v75 flags:v93 ageRating:v92 metrics:v76 notSubscribedOffer:v94 subscribedOffer:v84];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v35;
}

char *sub_2226EFC34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v4 - 8);
  v138 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = &v123 - v7;
  v146 = sub_22273823C();
  v142 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v133 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v123 - v10;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v134 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = &v123 - v15;
  MEMORY[0x28223BE20](v16);
  v139 = &v123 - v17;
  MEMORY[0x28223BE20](v18);
  v136 = &v123 - v19;
  MEMORY[0x28223BE20](v20);
  v135 = &v123 - v21;
  MEMORY[0x28223BE20](v22);
  v145 = &v123 - v23;
  MEMORY[0x28223BE20](v24);
  v143 = &v123 - v25;
  MEMORY[0x28223BE20](v26);
  v147 = &v123 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v123 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v123 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v123 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v123 - v38;
  sub_22273810C();
  v150 = a2;
  v40 = sub_222683D28(v39, a2);
  v43 = *(v12 + 8);
  v42 = (v12 + 8);
  v41 = v43;
  v144 = v39;
  (v43)(v39, v11);
  if (!v40)
  {
    v66 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v67;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v62, "organicOffer");
    v62[13] = 0;
    *(v62 + 7) = -5120;
    *(v62 + 2) = MetatypeMetadata;
    (*(*(v66 - 8) + 104))(v62, *MEMORY[0x277D22530], v66);
    swift_willThrow();
    return v62;
  }

  v149 = v40;
  v151 = a1;
  sub_22273810C();
  v44 = sub_22273808C();
  v153 = v11;
  (v41)(v36, v11);
  if (v44 == 2 || (v44 & 1) == 0)
  {
    v148 = 0;
  }

  else
  {
    v45 = v144;
    sub_22273810C();
    v148 = sub_222683D28(v45, v150);
    (v41)(v45, v153);
  }

  sub_22273810C();
  v46 = sub_2227380EC();
  v48 = v47;
  (v41)(v33, v153);
  if (!v48)
  {
    v69 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v70;
    v71 = swift_getMetatypeMetadata();
    *v62 = 0x4449726566666FLL;
    *(v62 + 1) = 0xE700000000000000;
LABEL_15:
    *(v62 + 2) = v71;
    (*(*(v69 - 8) + 104))(v62, *MEMORY[0x277D22530], v69);
    swift_willThrow();
LABEL_19:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v62;
  }

  v130 = v46;
  v131 = v48;
  sub_22273810C();
  v49 = sub_2227380DC();
  (v41)(v30, v153);
  if (!v49)
  {

    v69 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v72;
    v71 = swift_getMetatypeMetadata();
    *v62 = 0x496D657449706169;
    *(v62 + 1) = 0xE900000000000044;
    goto LABEL_15;
  }

  v50 = v147;
  sub_22273810C();
  v129 = sub_2227380EC();
  v52 = v51;
  (v41)(v50, v153);
  if (!v52)
  {

    v73 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v74;
    v75 = swift_getMetatypeMetadata();
    *v62 = 0x4E6D657449706169;
    *(v62 + 1) = 0xEB00000000656D61;
LABEL_18:
    *(v62 + 2) = v75;
    (*(*(v73 - 8) + 104))(v62, *MEMORY[0x277D22530], v73);
    swift_willThrow();

    goto LABEL_19;
  }

  v147 = v52;
  v53 = v143;
  sub_22273810C();
  v54 = sub_2227380EC();
  v56 = v55;
  (v41)(v53, v153);
  if (!v56)
  {

    v73 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v76;
    v75 = swift_getMetatypeMetadata();
    strcpy(v62, "iapProductName");
    v62[15] = -18;
    goto LABEL_18;
  }

  v127 = v54;
  v128 = v56;
  v143 = v41;
  v57 = v145;
  sub_22273810C();
  v58 = v142;
  v59 = v142 + 16;
  v60 = *(v142 + 16);
  v61 = v140;
  v60(v140, v150, v146);
  v62 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v63 = v141;
  v64 = sub_2226F3C10(v57);
  v65 = v63;
  if (v63)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v61, v146);
    (v143)(v145, v153);
    return v62;
  }

  v124 = v60;
  v125 = v59;
  v141 = v64;
  v126 = v49;
  (*(v58 + 8))(v61, v146);
  v78 = v153;
  v79 = v143;
  (v143)(v145, v153);
  v80 = v135;
  sub_22273810C();
  v81 = v137;
  sub_22273801C();
  v145 = v42;
  v79(v80, v78);
  v82 = sub_2227384AC();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (v84(v81, 1, v82) == 1)
  {
    sub_2226EC694(v81);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v85 = sub_22273849C();
    (*(v83 + 8))(v81, v82);
    v142 = v85;
    if (v85)
    {
      goto LABEL_25;
    }
  }

  v142 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_25:
  v86 = v136;
  sub_22273810C();
  v87 = v138;
  sub_22273801C();
  (v143)(v86, v153);
  if (v84(v87, 1, v82) == 1)
  {
    sub_2226EC694(v87);
    v88 = v126;
    v89 = v139;
LABEL_28:
    v91 = sub_2227333D8(MEMORY[0x277D84F90]);

    goto LABEL_29;
  }

  type metadata accessor for ASCOfferTitleVariant(0);
  v90 = v87;
  sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
  v91 = sub_22273849C();
  (*(v83 + 8))(v90, v82);
  v88 = v126;
  v89 = v139;
  if (!v91)
  {
    goto LABEL_28;
  }

LABEL_29:
  sub_22273810C();
  v92 = sub_22273806C();
  if (v93)
  {

    v94 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v95;
    type metadata accessor for ASCOfferFlags(0);
    v96 = MEMORY[0x277D84F90];
    *v62 = 0x65756C6156776172;
    *(v62 + 1) = 0xE800000000000000;
    *(v62 + 2) = v97;
    *(v62 + 3) = v96;
  }

  else
  {
    v138 = v92;
    v139 = v91;
    v98 = v89;
    v99 = v153;
    v100 = v143;
    (v143)(v98, v153);
    v101 = v132;
    sub_22273810C();
    v140 = sub_2227380DC();
    v100(v101, v99);
    sub_22273810C();
    v124(v133, v150, v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v102 = sub_2227393DC();
    v103 = *(v102 + 16);
    v104 = MEMORY[0x277D84F90];
    if (v103)
    {
      v154 = MEMORY[0x277D84F90];
      sub_22273997C();
      v105 = 32;
      do
      {
        v106 = *(v102 + v105);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v105 += 8;
        --v103;
      }

      while (v103);

      v88 = v126;
      v65 = v63;
      v104 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v89 = v134;
    sub_22273810C();
    v151 = sub_22273806C();
    if ((v107 & 1) == 0)
    {
      (v143)(v89, v153);
      v110 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      type metadata accessor for ASCOfferTitleVariant(0);
      sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
      v153 = v65;
      v111 = sub_2227390FC();

      v112 = sub_2227390FC();

      sub_22262E364(0, &qword_281312D38, off_2784B06F0);
      v113 = sub_22273936C();

      v114 = sub_22273916C();
      v150 = v114;

      v115 = sub_22273916C();
      v152 = v115;

      v116 = sub_22273916C();

      v122 = v115;
      v121 = v114;
      v117 = v110;
      v118 = v140;
      v119 = v141;
      v120 = v112;
      v62 = [v117 initWithID:v141 titles:v111 subtitles:v112 flags:v138 ageRating:v140 metrics:v113 organicOffer:v149 streamlinedOffer:v148 offerID:v121 iapItemID:v88 iapItemName:v122 iapProductName:v116 offerType:v151];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v62;
    }

    v94 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v62 = v108;
    type metadata accessor for ASCContingentOfferType(0);
    *v62 = 0x65756C6156776172;
    *(v62 + 1) = 0xE800000000000000;
    *(v62 + 2) = v109;
    *(v62 + 3) = v104;
  }

  (*(*(v94 - 8) + 104))(v62, *MEMORY[0x277D22540], v94);
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (v143)(v89, v153);
  return v62;
}

char *sub_2226F0F78(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v4 - 8);
  v135 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v117 - v7;
  v8 = sub_22273823C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v124 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v117 - v12;
  v14 = sub_2227380FC();
  v15 = *(v14 - 8);
  v141 = v14;
  v142 = v15;
  MEMORY[0x28223BE20](v14);
  v132 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = &v117 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v117 - v20;
  MEMORY[0x28223BE20](v21);
  v129 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v127 = &v117 - v26;
  MEMORY[0x28223BE20](v27);
  v126 = &v117 - v28;
  MEMORY[0x28223BE20](v29);
  v125 = &v117 - v30;
  MEMORY[0x28223BE20](v31);
  v137 = &v117 - v32;
  MEMORY[0x28223BE20](v33);
  v123 = &v117 - v34;
  MEMORY[0x28223BE20](v35);
  v136 = &v117 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v117 - v38;
  MEMORY[0x28223BE20](v40);
  v133 = &v117 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v117 - v43;
  v140 = a1;
  sub_22273810C();
  v45 = v9;
  v48 = *(v9 + 16);
  v46 = v9 + 16;
  v47 = v48;
  v138 = a2;
  v49 = a2;
  v50 = v8;
  v48(v13, v49, v8);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v51 = v13;
  v52 = v139;
  v53 = sub_2226F3C10(v44);
  if (v52)
  {
    (*(v45 + 8))(v13, v50);
    (*(v142 + 8))(v44, v141);
    return v51;
  }

  v122 = v39;
  v118 = v47;
  v119 = v46;
  v139 = v53;
  v121 = 0;
  (*(v45 + 8))(v13, v50);
  v54 = v141;
  v55 = v142 + 8;
  v56 = *(v142 + 8);
  v56(v44, v141);
  v57 = v133;
  sub_22273810C();
  v58 = v134;
  sub_22273801C();
  v142 = v55;
  v56(v57, v54);
  v59 = sub_2227384AC();
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  v62 = v61(v58, 1, v59);
  v120 = v50;
  if (v62 == 1)
  {
    sub_2226EC694(v58);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v63 = sub_22273849C();
    (*(v60 + 8))(v58, v59);
    if (v63)
    {
      goto LABEL_7;
    }
  }

  v63 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_7:
  v64 = v122;
  sub_22273810C();
  v65 = v135;
  sub_22273801C();
  v66 = v64;
  v67 = v141;
  v56(v66, v141);
  if (v61(v65, 1, v59) == 1)
  {
    sub_2226EC694(v65);
    v68 = v138;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v69 = sub_22273849C();
    (*(v60 + 8))(v65, v59);
    v68 = v138;
    if (v69)
    {
      v135 = v69;
      goto LABEL_12;
    }
  }

  v135 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_12:
  v51 = v136;
  sub_22273810C();
  v70 = sub_22273806C();
  if (v71)
  {

    v72 = sub_222738FAC();
    sub_2226F1EEC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v74 = v73;
    type metadata accessor for ASCOfferFlags(0);
    v75 = MEMORY[0x277D84F90];
    *v74 = 0x65756C6156776172;
    v74[1] = 0xE800000000000000;
    v74[2] = v76;
    v74[3] = v75;
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D22540], v72);
    swift_willThrow();

    v56(v51, v67);
  }

  else
  {
    v134 = v63;
    v140 = v70;
    v56(v51, v67);
    v78 = v123;
    sub_22273810C();
    v136 = sub_2227380DC();
    v56(v78, v67);
    sub_22273810C();
    v118(v124, v68, v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v79 = sub_2227393DC();
    v80 = *(v79 + 16);
    if (v80)
    {
      v143 = MEMORY[0x277D84F90];
      sub_22273997C();
      v81 = 32;
      do
      {
        v82 = *(v79 + v81);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v81 += 8;
        --v80;
      }

      while (v80);

      v124 = v143;
    }

    else
    {

      v124 = MEMORY[0x277D84F90];
    }

    v83 = v130;
    v84 = v125;
    sub_22273810C();
    v119 = sub_2227380EC();
    v123 = v85;
    v56(v84, v67);
    v86 = v126;
    sub_22273810C();
    v120 = sub_2227380EC();
    v125 = v87;
    v56(v86, v67);
    v88 = v127;
    sub_22273810C();
    v122 = sub_2227380EC();
    v126 = v89;
    v56(v88, v67);
    v90 = v128;
    sub_22273810C();
    v91 = sub_22273808C();
    v56(v90, v67);
    LODWORD(v128) = v91 == 2;
    v92 = v129;
    sub_22273810C();
    v133 = sub_2227380DC();
    v56(v92, v67);
    sub_22273810C();
    LODWORD(v129) = sub_22273808C();
    v56(v83, v67);
    v93 = v137;
    sub_22273810C();
    type metadata accessor for ASCControllerRequirement(0);
    sub_2226F1EEC(&qword_27D012BA0, type metadata accessor for ASCControllerRequirement, &unk_222740984);
    sub_22273805C();
    v56(v93, v67);
    v130 = v143;
    v94 = v131;
    sub_22273810C();
    LODWORD(v127) = sub_22273808C();
    v56(v94, v67);
    v95 = v132;
    sub_22273810C();
    LODWORD(v131) = sub_22273808C();
    v56(v95, v67);
    sub_22273810C();
    v142 = sub_222683D28(v93, v138);
    v56(v93, v67);
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v96 = sub_2227390FC();

    v141 = sub_2227390FC();
    v97 = v123;

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v138 = sub_22273936C();

    if (v97)
    {
      v98 = sub_22273916C();
    }

    else
    {
      v98 = 0;
    }

    v99 = v126;
    if (v125)
    {
      v100 = sub_22273916C();
    }

    else
    {
      v100 = 0;
    }

    v101 = v128 | v91;
    if (v99)
    {
      v102 = sub_22273916C();
    }

    else
    {
      v102 = 0;
    }

    v137 = v102;
    v103 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    BYTE1(v116) = v131 & 1;
    LOBYTE(v116) = v127 & 1;
    v104 = v130;
    LOBYTE(v115) = v129 & 1;
    v105 = v133;
    LOBYTE(v114) = v101 & 1;
    v112 = v100;
    v113 = v102;
    v111 = v98;
    v106 = v139;
    v135 = v100;
    v107 = v141;
    v108 = v98;
    v109 = v136;
    v110 = v138;
    v51 = [v103 initWithID:v139 titles:v96 subtitles:v141 flags:v140 ageRating:v136 metrics:v138 alertTitle:v111 alertMessage:v112 alertFooterMessage:v113 isCancelable:v114 checkRestrictionsForContentRating:v133 shouldCheckForAvailableDiskSpace:v115 remoteControllerRequirement:v130 shouldIncludeActiveAccountInFooterMessage:v116 shouldPromptForConfirmation:v142 completionOffer:?];

    swift_unknownObjectRelease();
  }

  return v51;
}

uint64_t sub_2226F1EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2226F1F34()
{
  v1 = sub_222732E30(MEMORY[0x277D84F90]);
  if ([v0 supportsDSIDLessInstall])
  {
    sub_2227398CC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v1;
    sub_22268BDE4(v6, 0x654C444953447369, 0xEA00000000007373, isUniquelyReferenced_nonNull_native);
  }

  if ([v0 shouldInstallParentApp])
  {
    sub_2227398CC();
    v3 = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BDE4(v6, 0xD000000000000016, 0x800000022274D000, v3);
  }

  return v1;
}

id sub_2226F2058(uint64_t a1)
{
  v3 = sub_22273793C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277CEC0D8])
  {
    (*(v4 + 8))(v7, v3);
    goto LABEL_3;
  }

  if (v8 == *MEMORY[0x277CEC0C0])
  {
    (*(v4 + 96))(v7, v3);
    v10 = [v1 openOffer];
    v11 = sub_22273786C();
    (*(*(v11 - 8) + 8))(v7, v11);
    if (v10)
    {
      return v10;
    }
  }

  else
  {
    if (v8 == *MEMORY[0x277CEC0A8] || v8 == *MEMORY[0x277CEC0B0])
    {
LABEL_3:
      result = [v1 buyOffer];
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }

    (*(v4 + 8))(v7, v3);
  }

LABEL_14:
  v13 = [v1 defaultOffer];

  return v13;
}

id sub_2226F228C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v85 - v7;
  v101 = sub_22273823C();
  v105 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v85 - v10;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v85 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19);
  v92 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v27 = a1;
  sub_22273810C();
  v28 = sub_222683D28(v26, a2);
  v30 = *(v12 + 8);
  v29 = (v12 + 8);
  v96 = v26;
  v102 = v29;
  v103 = v11;
  v31 = v11;
  v32 = v30;
  v30(v26, v31);
  if (!v28)
  {
    v37 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v39 = v38;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v39, "defaultOffer");
    *(v39 + 13) = 0;
    *(v39 + 14) = -5120;
    *(v39 + 16) = MetatypeMetadata;
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    return v29;
  }

  v97 = v28;
  v98 = v32;
  v89 = v18;
  sub_22273810C();
  v29 = (v105 + 16);
  v33 = *(v105 + 16);
  v34 = v101;
  v33(v104, a2, v101);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v35 = v100;
  v36 = sub_2226F3C10(v23);
  if (v35)
  {
    swift_unknownObjectRelease();
    (*(v105 + 8))(v104, v34);
    v98(v23, v103);
    return v29;
  }

  v87 = 0;
  v88 = v33;
  v85 = v29;
  v86 = a2;
  v100 = v36;
  (*(v105 + 8))(v104, v34);
  v41 = v103;
  v98(v23, v103);
  v42 = v92;
  v105 = v27;
  sub_22273810C();
  v43 = v93;
  sub_22273801C();
  v44 = v42;
  v45 = v98;
  v98(v44, v41);
  v46 = sub_2227384AC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v43, 1, v46) == 1)
  {
    sub_2226EC694(v43);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v49 = sub_22273849C();
    (*(v47 + 8))(v43, v46);
    if (v49)
    {
      v104 = v49;
      goto LABEL_10;
    }
  }

  v104 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_10:
  v50 = v89;
  sub_22273810C();
  v51 = v94;
  sub_22273801C();
  v52 = v50;
  v53 = v45;
  v45(v52, v103);
  if (v48(v51, 1, v46) == 1)
  {
    sub_2226EC694(v51);
    v54 = v95;
    v55 = v88;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v56 = sub_22273849C();
    (*(v47 + 8))(v51, v46);
    v54 = v95;
    v55 = v88;
    if (v56)
    {
      goto LABEL_14;
    }
  }

  v56 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  sub_22273810C();
  v57 = sub_22273806C();
  if (v58)
  {

    v59 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v29 = swift_allocError();
    v61 = v60;
    type metadata accessor for ASCOfferFlags(0);
    v62 = MEMORY[0x277D84F90];
    *v61 = 0x65756C6156776172;
    v61[1] = 0xE800000000000000;
    v61[2] = v63;
    v61[3] = v62;
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D22540], v59);
    swift_willThrow();

    swift_unknownObjectRelease();
    v53(v54, v103);
  }

  else
  {
    v95 = v57;
    v65 = v103;
    v45(v54, v103);
    v66 = v90;
    sub_22273810C();
    v94 = sub_2227380DC();
    v45(v66, v65);
    sub_22273810C();
    v67 = v86;
    v55(v91, v86, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v68 = sub_2227393DC();
    v69 = *(v68 + 16);
    v99 = v56;
    if (v69)
    {
      v106 = MEMORY[0x277D84F90];
      sub_22273997C();
      v70 = 32;
      do
      {
        v71 = *(v68 + v70);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v70 += 8;
        --v69;
      }

      while (v69);
    }

    v72 = v96;
    sub_22273810C();
    v73 = sub_222683D28(v72, v67);
    v74 = v67;
    v75 = v103;
    v76 = v98;
    v98(v72, v103);
    sub_22273810C();
    v77 = sub_222683D28(v72, v74);
    v76(v72, v75);
    v78 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v79 = sub_2227390FC();

    v80 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v81 = sub_22273936C();

    v82 = v78;
    v83 = v100;
    v84 = v94;
    v29 = [v82 initWithID:v100 titles:v79 subtitles:v80 flags:v95 ageRating:v94 metrics:v81 defaultOffer:v97 buyOffer:v73 openOffer:v77];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v29;
}

char *sub_2226F2E5C(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v94 - v7;
  v8 = sub_22273823C();
  v118 = *(v8 - 1);
  v119 = v8;
  MEMORY[0x28223BE20](v8);
  v103 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_2227380FC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v104 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v101 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v110 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v107 = &v94 - v25;
  MEMORY[0x28223BE20](v26);
  v106 = &v94 - v27;
  MEMORY[0x28223BE20](v28);
  v116 = &v94 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v94 - v31;
  v33 = sub_22273731C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v105 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v94 - v37;
  v114 = a1;
  sub_22273810C();
  sub_22273807C();
  v39 = v34;
  v42 = *(v16 + 8);
  v41 = v16 + 8;
  v40 = v42;
  v115 = v15;
  v42(v32, v15);
  if ((*(v39 + 48))(v14, 1, v33) == 1)
  {
    sub_222660468(v14, &qword_27D013DC0, qword_222743950);
    v43 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v45 = v44;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v45 = 7107189;
    v45[1] = 0xE300000000000000;
    v45[2] = MetatypeMetadata;
    (*(*(v43 - 1) + 104))(v45, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    return v43;
  }

  v111 = v40;
  v112 = v41;
  (*(v39 + 32))(v38, v14, v33);
  v43 = v116;
  v100 = v2;
  sub_22273810C();
  v47 = *(v118 + 16);
  v47(v117, v113, v119);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v48 = v100;
  v49 = sub_2226F3C10(v43);
  if (v48)
  {
    (*(v118 + 8))(v117, v119);
    v111(v116, v115);
    (*(v39 + 8))(v38, v33);
    return v43;
  }

  v100 = v38;
  v96 = v47;
  v98 = v49;
  v97 = 0;
  v99 = v39;
  (*(v118 + 8))(v117, v119);
  v50 = v115;
  v51 = v111;
  v111(v116, v115);
  v52 = v106;
  sub_22273810C();
  v53 = v108;
  sub_22273801C();
  v51(v52, v50);
  v54 = sub_2227384AC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v53, 1, v54) == 1)
  {
    sub_222660468(v53, &qword_27D014128, &qword_2227448A8);
    v57 = v109;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v58 = sub_22273849C();
    (*(v55 + 8))(v53, v54);
    v57 = v109;
    if (v58)
    {
      v118 = v58;
      goto LABEL_10;
    }
  }

  v118 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_10:
  v59 = v107;
  sub_22273810C();
  sub_22273801C();
  v60 = v59;
  v61 = v111;
  v111(v60, v115);
  if (v56(v57, 1, v54) == 1)
  {
    sub_222660468(v57, &qword_27D014128, &qword_2227448A8);
    v62 = v113;
    v63 = v110;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v64 = sub_22273849C();
    (*(v55 + 8))(v57, v54);
    v62 = v113;
    v63 = v110;
    if (v64)
    {
      goto LABEL_14;
    }
  }

  v64 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  sub_22273810C();
  v65 = sub_22273806C();
  if (v66)
  {

    v67 = v63;
    v43 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v69 = v68;
    type metadata accessor for ASCOfferFlags(0);
    v70 = MEMORY[0x277D84F90];
    *v69 = 0x65756C6156776172;
    v69[1] = 0xE800000000000000;
    v69[2] = v71;
    v69[3] = v70;
    (*(*(v43 - 1) + 104))(v69, *MEMORY[0x277D22540], v43);
    swift_willThrow();

    v61(v67, v115);
    (*(v99 + 8))(v100, v33);
  }

  else
  {
    v116 = v65;
    v117 = v64;
    v73 = v63;
    v74 = v115;
    v61(v73, v115);
    v75 = v101;
    sub_22273810C();
    v113 = sub_2227380DC();
    v61(v75, v74);
    sub_22273810C();
    v96(v103, v62, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v76 = sub_2227393DC();
    v77 = *(v76 + 16);
    if (v77)
    {
      v78 = v33;
      v120 = MEMORY[0x277D84F90];
      sub_22273997C();
      v79 = 32;
      do
      {
        v80 = *(v76 + v79);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v79 += 8;
        --v77;
      }

      while (v77);

      v33 = v78;
    }

    else
    {
    }

    v95 = v33;
    v81 = v99;
    v82 = v105;
    (*(v99 + 16))(v105, v100, v33);
    v83 = v104;
    sub_22273810C();
    v84 = sub_22273808C();
    v111(v83, v115);
    v119 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v85 = sub_2227390FC();

    v86 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v87 = sub_22273936C();

    v88 = sub_2227372BC();
    LOBYTE(v93) = v84 & 1;
    v89 = v98;
    v90 = v113;
    v43 = [v119 initWithID:v98 titles:v85 subtitles:v86 flags:v116 ageRating:v113 metrics:v87 url:v88 isSensitive:v93];

    v91 = *(v81 + 8);
    v92 = v95;
    v91(v82, v95);
    v91(v100, v92);
  }

  return v43;
}

id sub_2226F3C10(uint64_t a1)
{
  sub_2227380EC();
  if (v1)
  {
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v3 = sub_22273916C();

    v4 = [v2 initWithStringValue_];

    return v4;
  }

  else
  {
    v6 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v8 = v7;
    MetatypeMetadata = swift_getMetatypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014198, &qword_222744E18);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2227412F0;
    *(v10 + 32) = swift_allocError();
    *v11 = 0x65756C6156776172;
    v11[1] = 0xE800000000000000;
    v11[2] = MetatypeMetadata;
    v12 = *(*(v6 - 8) + 104);
    v12(v11, *MEMORY[0x277D22530], v6);
    *v8 = MetatypeMetadata;
    v8[1] = v10;
    v12(v8, *MEMORY[0x277D22538], v6);
    return swift_willThrow();
  }
}

void *sub_2226F3DD8()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v57 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v57 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v57 - v16;
  sub_22273810C();
  v57[1] = sub_2227380EC();
  v19 = v18;
  v20 = *(v3 + 8);
  v20(v17, v2);
  if (!v19)
  {
    v24 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v29;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v26 = 0x6C706D65546C7275;
    v28 = 0xEB00000000657461;
    goto LABEL_5;
  }

  v62 = v1;
  v63 = v19;
  sub_22273810C();
  v21 = COERCE_DOUBLE(sub_2227380BC());
  v23 = v22;
  v20(v14, v2);
  if (v23)
  {

    v24 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v25;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v26 = 0x6874646977;
    v28 = 0xE500000000000000;
LABEL_5:
    v26[1] = v28;
    v26[2] = MetatypeMetadata;
    v30 = MEMORY[0x277D22530];
LABEL_6:
    (*(*(v24 - 8) + 104))(v26, *v30, v24);
LABEL_7:
    swift_willThrow();
    return v26;
  }

  v32 = v21;
  if (v21 <= 0.0)
  {

    v24 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v40;
    v41 = swift_getMetatypeMetadata();
    v42 = MEMORY[0x277D84F90];
    *v26 = 0x6874646977;
    v26[1] = 0xE500000000000000;
    v26[2] = v41;
    v26[3] = v42;
    v30 = MEMORY[0x277D22540];
    goto LABEL_6;
  }

  sub_22273810C();
  v33 = COERCE_DOUBLE(sub_2227380BC());
  v35 = v34;
  v20(v11, v2);
  if (v35)
  {

    v26 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v37 = v36;
    v38 = swift_getMetatypeMetadata();
    *v37 = 0x746867696568;
    v37[1] = 0xE600000000000000;
    v37[2] = v38;
    v39 = MEMORY[0x277D22530];
LABEL_17:
    (*(*(v26 - 1) + 104))(v37, *v39, v26);
    goto LABEL_7;
  }

  v43 = v33;
  if (v33 <= 0.0)
  {

    v26 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v37 = v46;
    v47 = swift_getMetatypeMetadata();
    v48 = MEMORY[0x277D84F90];
    *v37 = 0x746867696568;
    v37[1] = 0xE600000000000000;
    v37[2] = v47;
    v37[3] = v48;
    v39 = MEMORY[0x277D22540];
    goto LABEL_17;
  }

  v44 = v60;
  sub_22273810C();
  type metadata accessor for Decoration(0);
  sub_2226F4654(&unk_281312C78, type metadata accessor for Decoration, &unk_222740A38);
  v26 = v44;
  v45 = v61;
  sub_22273803C();
  v20(v44, v2);
  if (v45)
  {
  }

  else
  {
    v49 = v64;
    v50 = v59;
    sub_22273810C();
    type metadata accessor for Crop(0);
    sub_2226F4654(&qword_281312D50, type metadata accessor for Crop, &unk_2227409FC);
    sub_22273803C();
    v61 = v49;
    v20(v50, v2);
    v51 = v64;
    v52 = v58;
    sub_22273810C();
    type metadata accessor for Format(0);
    sub_2226F4654(&qword_281312D18, type metadata accessor for Format, &unk_2227409C0);
    sub_22273803C();
    v20(v52, v2);
    v53 = v64;
    v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v55 = sub_22273916C();

    v56 = v61;
    v26 = [v54 initWithURLTemplate:v55 width:v61 height:v51 decoration:v53 preferredCrop:v32 preferredFormat:v43];
  }

  return v26;
}

uint64_t sub_2226F4654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2226F469C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = 0xE400000000000000;
  sub_22273810C();
  sub_2227380EC();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  if (!v9)
  {
    v17 = 1701667182;
LABEL_6:
    v16 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v18 = v17;
    v18[1] = v7;
    v18[2] = v20[3];
    (*(*(v16 - 1) + 104))(v18, *MEMORY[0x277D22530], v16);
    swift_willThrow();
    return v16;
  }

  sub_22273810C();
  sub_2227380EC();
  v12 = v11;
  v10(v3, v0);
  if (!v12)
  {

    v7 = 0xE200000000000000;
    v17 = 25705;
    goto LABEL_6;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_22273916C();

  v15 = sub_22273916C();

  v16 = [v13 initWithName:v14 identifier:v15];

  return v16;
}

unint64_t sub_2226F492C(uint64_t a1)
{
  v1 = sub_22273919C();
  v3 = v2;
  if (v1 == sub_22273919C() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_222739B4C();

  if (v6)
  {
    goto LABEL_15;
  }

  v7 = sub_22273919C();
  v9 = v8;
  if (v7 == sub_22273919C() && v9 == v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = sub_222739B4C();

  if ((v12 & 1) == 0)
  {
    v13 = sub_22273919C();
    v15 = v14;
    if (v13 == sub_22273919C() && v15 == v16)
    {

LABEL_19:
      v17 = &unk_2835C7370;
      goto LABEL_16;
    }

    v20 = sub_222739B4C();

    if (v20)
    {
      goto LABEL_19;
    }

    v21 = sub_22273919C();
    v23 = v22;
    if (v21 == sub_22273919C() && v23 == v24)
    {
      goto LABEL_22;
    }

    v25 = sub_222739B4C();

    if (v25)
    {
      goto LABEL_24;
    }

    v26 = sub_22273919C();
    v28 = v27;
    if (v26 == sub_22273919C() && v28 == v29)
    {
      goto LABEL_22;
    }

    v30 = sub_222739B4C();

    if (v30)
    {
      goto LABEL_24;
    }

    v31 = sub_22273919C();
    v33 = v32;
    if (v31 == sub_22273919C() && v33 == v34)
    {
      goto LABEL_22;
    }

    v35 = sub_222739B4C();

    if (v35)
    {
      goto LABEL_24;
    }

    v36 = sub_22273919C();
    v38 = v37;
    if (v36 == sub_22273919C() && v38 == v39)
    {
      goto LABEL_22;
    }

    v40 = sub_222739B4C();

    if (v40)
    {
      goto LABEL_24;
    }

    v41 = sub_22273919C();
    v43 = v42;
    if (v41 == sub_22273919C() && v43 == v44)
    {
      goto LABEL_22;
    }

    v45 = sub_222739B4C();

    if (v45)
    {
      goto LABEL_24;
    }

    v46 = sub_22273919C();
    v48 = v47;
    if (v46 == sub_22273919C() && v48 == v49)
    {
LABEL_22:

LABEL_24:
      v17 = &unk_2835C73B0;
      goto LABEL_16;
    }

    v50 = sub_222739B4C();

    if (v50)
    {
      goto LABEL_24;
    }

    v51 = sub_22273919C();
    v53 = v52;
    if (v51 == sub_22273919C() && v53 == v54)
    {
      goto LABEL_42;
    }

    v55 = sub_222739B4C();

    if (v55)
    {
      goto LABEL_44;
    }

    v56 = sub_22273919C();
    v58 = v57;
    if (v56 == sub_22273919C() && v58 == v59)
    {
LABEL_42:

LABEL_44:
      v17 = &unk_2835C73F0;
      goto LABEL_16;
    }

    v60 = sub_222739B4C();

    if (v60)
    {
      goto LABEL_44;
    }

    v61 = sub_22273919C();
    v63 = v62;
    if (v61 == sub_22273919C() && v63 == v64)
    {
    }

    else
    {
      v65 = sub_222739B4C();

      if ((v65 & 1) == 0)
      {
        v67 = sub_22273919C();
        v69 = v68;
        if (v67 == sub_22273919C() && v69 == v70)
        {
        }

        else
        {
          v71 = sub_222739B4C();

          if ((v71 & 1) == 0)
          {
            v72 = sub_22273919C();
            v74 = v73;
            if (v72 == sub_22273919C() && v74 == v75)
            {
            }

            else
            {
              v76 = sub_222739B4C();

              if ((v76 & 1) == 0)
              {
                v77 = sub_22273919C();
                v79 = v78;
                if (v77 == sub_22273919C() && v79 == v80)
                {
                }

                else
                {
                  v81 = sub_222739B4C();

                  if ((v81 & 1) == 0)
                  {
                    v82 = sub_22273919C();
                    v84 = v83;
                    if (v82 == sub_22273919C() && v84 == v85)
                    {
                    }

                    else
                    {
                      v86 = sub_222739B4C();

                      if ((v86 & 1) == 0)
                      {
                        v87 = sub_22273919C();
                        v89 = v88;
                        if (v87 == sub_22273919C() && v89 == v90)
                        {
                        }

                        else
                        {
                          v91 = sub_222739B4C();

                          if ((v91 & 1) == 0)
                          {
                            v92 = sub_22273919C();
                            v94 = v93;
                            if (v92 == sub_22273919C() && v94 == v95)
                            {
                            }

                            else
                            {
                              v96 = sub_222739B4C();

                              if ((v96 & 1) == 0)
                              {
                                v97 = sub_22273919C();
                                v99 = v98;
                                if (v97 == sub_22273919C() && v99 == v100)
                                {
                                }

                                else
                                {
                                  v101 = sub_222739B4C();

                                  if ((v101 & 1) == 0)
                                  {
                                    return 0;
                                  }
                                }

                                v66 = &unk_2835C76B0;
                                goto LABEL_53;
                              }
                            }

                            v66 = &unk_2835C7650;
LABEL_53:
                            v18 = sub_222732D1C(v66);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141C0, &unk_2227426D0);
                            swift_arrayDestroy();
                            return v18;
                          }
                        }

                        v17 = &unk_2835C7610;
                        goto LABEL_16;
                      }
                    }

                    v17 = &unk_2835C75D0;
                    goto LABEL_16;
                  }
                }

                v17 = &unk_2835C7590;
                goto LABEL_16;
              }
            }

            v66 = &unk_2835C7510;
            goto LABEL_53;
          }
        }

        v66 = &unk_2835C74B0;
        goto LABEL_53;
      }
    }

    v66 = &unk_2835C7430;
    goto LABEL_53;
  }

LABEL_15:
  v17 = &unk_2835C7330;
LABEL_16:
  v18 = sub_222732D1C(v17);
  sub_222660468(v17 + 32, &unk_27D0141C0, &unk_2227426D0);
  return v18;
}

id sub_2226F52C0(void *a1, void *a2)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = v77 - v4;
  v5 = sub_222738F9C();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273823C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v77 - v11;
  v97 = sub_2227380FC();
  v100 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v93 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = v77 - v15;
  MEMORY[0x28223BE20](v16);
  v88 = v77 - v17;
  MEMORY[0x28223BE20](v18);
  v86 = v77 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v77 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v77 - v24;
  MEMORY[0x28223BE20](v26);
  v94 = v77 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v77 - v29;
  v95 = a1;
  sub_22273810C();
  v31 = *(v8 + 16);
  v98 = v7;
  v31(v12, v99, v7);
  v32 = sub_222672B54();
  v33 = v96;
  v34 = sub_2226F3C10(v30);
  if (!v33)
  {
    v81 = v31;
    v82 = v8 + 16;
    v83 = v22;
    v84 = v25;
    v96 = v34;
    (*(v8 + 8))(v12, v98);
    v36 = v100 + 8;
    v35 = *(v100 + 8);
    v37 = v97;
    v35(v30, v97);
    v38 = v94;
    sub_22273810C();
    type metadata accessor for Kind(0);
    sub_2226F5D10();
    sub_22273803C();
    v80 = 0;
    v35(v38, v37);
    v94 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141A8, &qword_222744E78);
    v100 = v36;
    v78 = v35;
    sub_22273810C();
    v40 = v87;
    v41 = v99;
    v42 = v81;
    v81(v87, v99, v98);
    sub_2226849D4(&qword_281313F70, &unk_27D0141A8, &qword_222744E78);
    v43 = v84;
    sub_22273870C();
    v79 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141B8, &unk_222744E80);
    sub_22273810C();
    v42(v40, v41, v98);
    sub_2226849D4(qword_281313F90, &qword_27D0141B8, &unk_222744E80);
    v44 = v43;
    sub_22273870C();
    v98 = v101;
    v45 = v83;
    sub_22273810C();
    v77[0] = sub_2227380EC();
    v82 = v46;
    v47 = v78;
    v78(v45, v37);
    v48 = v86;
    sub_22273810C();
    v77[1] = sub_2227380EC();
    v83 = v49;
    v47(v48, v37);
    v50 = v88;
    sub_22273810C();
    v81 = sub_2227380EC();
    v87 = v51;
    v47(v50, v37);
    v52 = v89;
    sub_22273810C();
    v86 = sub_2227380EC();
    v88 = v53;
    v47(v52, v37);
    sub_22273810C();
    v89 = sub_222683D28(v44, v99);
    v47(v44, v37);
    v54 = v93;
    sub_22273810C();
    v55 = v90;
    sub_22273809C();
    v56 = v91;
    v57 = v92;
    if ((*(v91 + 48))(v55, 1, v92) == 1)
    {
      sub_222660468(v55, &qword_27D0141A0, &unk_2227448B0);
    }

    else
    {
      v58 = v85;
      v59 = (*(v56 + 32))(v85, v55, v57);
      MEMORY[0x28223BE20](v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      v60 = v80;
      sub_222738F8C();
      v80 = v60;
      v54 = v93;
      (*(v56 + 8))(v58, v57);
    }

    v47(v54, v97);
    v62 = v87;
    v61 = v88;
    v63 = v83;
    if (v82)
    {
      v100 = sub_22273916C();

      if (v63)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v100 = 0;
      if (v83)
      {
LABEL_10:
        v99 = sub_22273916C();

        if (v62)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    v99 = 0;
    if (v62)
    {
LABEL_11:
      v64 = sub_22273916C();

      if (v61)
      {
LABEL_12:
        v65 = sub_22273916C();

LABEL_17:
        v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
        v67 = sub_22273936C();
        v97 = v67;

        v76 = v67;
        v75 = v64;
        v68 = v66;
        v69 = v96;
        v70 = v94;
        v71 = v79;
        v72 = v98;
        v73 = v99;
        v95 = v64;
        v74 = v100;
        v32 = [v68 initWithID:v96 kind:v94 metrics:v79 icon:v98 heading:v100 title:v99 subtitle:v75 ageRating:v65 offer:v89 features:v76];

        swift_unknownObjectRelease();
        return v32;
      }

LABEL_16:
      v65 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v64 = 0;
    if (v61)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  (*(v8 + 8))(v12, v98);
  (*(v100 + 8))(v30, v97);
  return v32;
}

unint64_t sub_2226F5D10()
{
  result = qword_281312D80;
  if (!qword_281312D80)
  {
    type metadata accessor for Kind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312D80);
  }

  return result;
}

uint64_t sub_2226F5D84(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_22273823C();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_2227380FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222738F9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_22273810C();
  sub_22273809C();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_2226E8068(v5);
    v17 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v19 = v18;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v19 = 0x7370756B636F6CLL;
    v19[1] = 0xE700000000000000;
    v19[2] = MetatypeMetadata;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22530], v17);
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v5, v10);
    (*(v11 + 16))(v13, v16, v10);
    (*(v29 + 16))(v30, v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141D0, &unk_222744ED0);
    sub_2226F62B8();
    v22 = v33;
    v23 = sub_2227393CC();
    if (v22)
    {
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      v24 = v23;
      v25 = *(v23 + 16);
      if (v25)
      {
        v33 = 0;
        v34 = MEMORY[0x277D84F90];
        sub_22273997C();
        v26 = 32;
        do
        {
          v27 = *(v24 + v26);
          sub_22273995C();
          sub_22273998C();
          sub_22273999C();
          sub_22273996C();
          v26 += 8;
          --v25;
        }

        while (v25);
        (*(v11 + 8))(v16, v10);

        v28 = v34;
      }

      else
      {

        (*(v11 + 8))(v16, v10);
        v28 = MEMORY[0x277D84F90];
      }

      type metadata accessor for ASCLockupContainer();
      result = swift_allocObject();
      *(result + 16) = v28;
    }
  }

  return result;
}

uint64_t sub_2226F6244()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2226F62B8()
{
  result = qword_281313F60;
  if (!qword_281313F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141D0, &unk_222744ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313F60);
  }

  return result;
}

id sub_2226F631C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  v4 = sub_2227380DC();
  (*(v1 + 8))(v3, v0);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceCornerRadiusFactor_];

  return v5;
}

void *sub_2226F6440(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_22273823C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_2227380FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = sub_222738F9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v54 = a1;
  sub_22273810C();
  sub_22273809C();
  v23 = v16;
  v24 = v17;
  v25 = *(v11 + 8);
  v55 = v10;
  v25(v15, v10);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    sub_2226E8068(v9);
    v26 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v28 = v27;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v28 = 0x6B726F77747261;
    v28[1] = 0xE700000000000000;
    v28[2] = MetatypeMetadata;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
  }

  else
  {
    v47 = v25;
    (*(v24 + 32))(v22, v9, v23);
    v48 = v24;
    v49 = v22;
    v30 = *(v24 + 16);
    v50 = v23;
    v30(v19, v22, v23);
    v32 = v58;
    v31 = v59;
    v33 = v52;
    v46 = *(v58 + 16);
    v46(v51, v52, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141B8, &unk_222744E80);
    sub_2226F6AAC();
    v34 = sub_2227393EC();
    v35 = *(v34 + 16);
    if (v35)
    {
      v60 = MEMORY[0x277D84F90];
      sub_22273997C();
      v36 = 32;
      do
      {
        v37 = *(v34 + v36);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v36 += 8;
        --v35;
      }

      while (v35);

      v32 = v58;
      v31 = v59;
    }

    else
    {
    }

    v38 = v53;
    sub_22273810C();
    v28 = v56;
    v46(v56, v33, v31);
    sub_22262E364(0, &qword_27D0141D8, off_2784B06E0);
    v39 = v57;
    v40 = sub_2226F631C();
    if (v39)
    {

      (*(v32 + 8))(v28, v31);
      v47(v38, v55);
    }

    else
    {
      v41 = v40;
      (*(v32 + 8))(v28, v31);
      v47(v38, v55);
      v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_22262E364(0, &qword_27D0141E0, off_2784B0620);
      v43 = sub_22273936C();

      v28 = [v42 initWithArtwork:v43 mediaPlatform:v41];
    }

    (*(v48 + 8))(v49, v50);
  }

  return v28;
}

unint64_t sub_2226F6AAC()
{
  result = qword_281313F90[0];
  if (!qword_281313F90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141B8, &unk_222744E80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281313F90);
  }

  return result;
}

void *sub_2226F6B10(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_22273823C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_2227380FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = sub_222738F9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v54 = a1;
  sub_22273810C();
  sub_22273809C();
  v23 = v16;
  v24 = v17;
  v25 = *(v11 + 8);
  v55 = v10;
  v25(v15, v10);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    sub_2226E8068(v9);
    v26 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v28 = v27;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v28 = 0x736F65646976;
    v28[1] = 0xE600000000000000;
    v28[2] = MetatypeMetadata;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
  }

  else
  {
    v47 = v25;
    (*(v24 + 32))(v22, v9, v23);
    v48 = v24;
    v49 = v22;
    v30 = *(v24 + 16);
    v50 = v23;
    v30(v19, v22, v23);
    v32 = v58;
    v31 = v59;
    v33 = v52;
    v46 = *(v58 + 16);
    v46(v51, v52, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141E8, &qword_222744F48);
    sub_2226F7174();
    v34 = sub_2227393EC();
    v35 = *(v34 + 16);
    if (v35)
    {
      v60 = MEMORY[0x277D84F90];
      sub_22273997C();
      v36 = 32;
      do
      {
        v37 = *(v34 + v36);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v36 += 8;
        --v35;
      }

      while (v35);

      v32 = v58;
      v31 = v59;
    }

    else
    {
    }

    v38 = v53;
    sub_22273810C();
    v28 = v56;
    v46(v56, v33, v31);
    sub_22262E364(0, &qword_27D0141D8, off_2784B06E0);
    v39 = v57;
    v40 = sub_2226F631C();
    if (v39)
    {

      (*(v32 + 8))(v28, v31);
      v47(v38, v55);
    }

    else
    {
      v41 = v40;
      (*(v32 + 8))(v28, v31);
      v47(v38, v55);
      v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_22262E364(0, &qword_27D0141F8, off_2784B0738);
      v43 = sub_22273936C();

      v28 = [v42 initWithVideos:v43 mediaPlatform:v41];
    }

    (*(v48 + 8))(v49, v50);
  }

  return v28;
}

unint64_t sub_2226F7174()
{
  result = qword_27D0141F0;
  if (!qword_27D0141F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141E8, &qword_222744F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0141F0);
  }

  return result;
}

void *sub_2226F71D8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v31 = sub_22273823C();
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2227380FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  sub_22273810C();
  v11 = sub_2227380EC();
  v13 = v12;
  v16 = *(v5 + 8);
  v15 = (v5 + 8);
  v14 = v16;
  v16(v10, v4);
  if (v13)
  {
    v27[1] = v11;
    sub_22273810C();
    v17 = v28;
    (*(v28 + 16))(v3, v29, v31);
    sub_2226F755C();
    v18 = v30;
    v19 = sub_2226F3DD8();
    if (v18)
    {

      (*(v17 + 8))(v3, v31);
      v14(v7, v4);
    }

    else
    {
      v23 = v19;
      (*(v17 + 8))(v3, v31);
      v14(v7, v4);
      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v25 = sub_22273916C();

      v15 = [v24 initWithVideoURL:v25 preview:v23];
    }
  }

  else
  {
    v20 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v15 = v21;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v15 = 0x4C52556F65646976;
    v15[1] = 0xE800000000000000;
    v15[2] = MetatypeMetadata;
    (*(*(v20 - 8) + 104))(v15, *MEMORY[0x277D22530], v20);
    swift_willThrow();
  }

  return v15;
}

unint64_t sub_2226F755C()
{
  result = qword_27D0141E0;
  if (!qword_27D0141E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0141E0);
  }

  return result;
}

double sub_2226F75A8(char a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  *&result = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v6 = *(v2 + 16);
  *(v2 + 16) = a1;
  if (v6 != (a1 & 1))
  {
    v9[0] = a1 & 1;
    sub_222737F8C();
    if (qword_27D0129B8 != -1)
    {
      swift_once();
    }

    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_281315AD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v8 = *(v2 + 16);
    v10 = MEMORY[0x277D839B0];
    v9[0] = v8;
    sub_22273816C();
    sub_222672BA0(v9);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }

  return result;
}

void *sub_2226F77B8(void *a1)
{
  v2 = v1;
  v4 = sub_2227376DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22273872C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013020, &qword_2227416C8);
  swift_allocObject();
  v11 = sub_222737F9C();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013548, &qword_2227425B0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v1[6] = v12;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = sub_22273916C();
    v16 = [v14 applicationIsInstalled_];

    *(v2 + 16) = v16;
    sub_22273871C();
    v17 = sub_2226DD5A8(&unk_2835C72B0);
    sub_22269E384(&unk_2835C72D0);
    v18 = v26;
    *v26 = v17;
    (*(v5 + 104))(v18, *MEMORY[0x277CEBFA8], v4);
    v19 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v27[3] = v7;
    v27[4] = MEMORY[0x277D21FB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
    swift_allocObject();
    v25 = a1;
    swift_weakInit();

    v21 = sub_2227376FC();
    v23 = v22;

    (*(v5 + 8))(v18, v4);
    (*(v8 + 8))(v10, v7);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v2[4] = v21;
    v2[5] = v23;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2226F7B24(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_22273984C();
    a1 = v6;
    if (!v7)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x223DBEC70](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(a1 + 32);
  }

  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 48);
    MEMORY[0x28223BE20](Strong);

    os_unfair_lock_lock(v5 + 4);
    sub_2226F7CD0();
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
  }
}

uint64_t sub_2226F7C5C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2226F7D38(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22273980C();
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226FA0EC();
    sub_2227394FC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_2226342B0(v2);
      return;
    }

    while (1)
    {
      sub_22268DBDC(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22273987C())
      {
        sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2226F7F20()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_2813130D0);
  __swift_project_value_buffer(v4, qword_2813130D0);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

void *sub_2226F8074()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_222737C5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_22273984C())
    {
      sub_2226DD584(MEMORY[0x277D84F90]);
      v8 = v15;
    }

    else
    {
      v8 = MEMORY[0x277D84FA0];
    }

    if (sub_22273984C())
    {
      sub_2226DD584(MEMORY[0x277D84F90]);
      v7 = v16;
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
    v8 = MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014228, &qword_222745100);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v1[2] = v9;
  *(v1 + 6) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014230, &unk_222745A30);
  swift_allocObject();
  v1[4] = sub_222737F9C();
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v4 + 104))(v6, *MEMORY[0x277D851C8], v3);
  v10 = sub_22273959C();
  (*(v4 + 8))(v6, v3);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  aBlock[4] = sub_2226FA258;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226F8F9C;
  aBlock[3] = &block_descriptor_22_0;
  v13 = _Block_copy(aBlock);

  swift_beginAccess();
  notify_register_dispatch("com.apple.appstored.IAPInfoDatabaseUpdated", v1 + 6, v10, v13);
  swift_endAccess();
  _Block_release(v13);

  return v1;
}

uint64_t sub_2226F8380(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_2813130D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = sub_22273946C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_222699BF8(0, 0, v4, &unk_222745110, v8);
}

uint64_t sub_2226F85F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2226F8610, 0, 0);
}

uint64_t sub_2226F8610()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2226F8700;

    return sub_2226F88B8();
  }

  else
  {
    **(v0 + 40) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2226F8700(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2226F8854;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_2226F8830;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226F8854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226F88B8()
{
  *(v1 + 112) = v0;
  sub_2227381BC();
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F8948, 0, 0);
}

uint64_t sub_2226F8948()
{
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  *(v0 + 128) = v1;
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_2813130D0);
  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v2 = *(sub_2227381FC() - 8);
  *(v0 + 152) = *(v2 + 72);
  *(v0 + 184) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_2226F8B0C;

  return sub_2226F982C();
}

uint64_t sub_2226F8B0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_2226F8E10;
  }

  else
  {
    v4 = sub_2226F8C20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2226F8C20()
{
  v10 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[14];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014200, &unk_222745670);
  v0[6] = v1;
  v0[9] = v4;

  sub_22273815C();
  sub_222672BA0((v0 + 6));
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;

  os_unfair_lock_lock((v5 + 32));
  sub_2226FA0D0((v5 + 16), &v9);
  if (v2)
  {

    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    os_unfair_lock_unlock((v5 + 32));

    v7 = v9;

    v8 = v0[1];

    v8(v7);
  }
}

uint64_t sub_2226F8E10()
{
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v1 = v0[10];
  v2 = v0[11];
  v0[5] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  sub_22273816C();
  sub_222672BA0((v0 + 2));
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226F8F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2226F8FF0()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2226F907C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  swift_bridgeObjectRetain_n();

  *a1 = a2;

  sub_2226F7D38(v6, a2);
  v8 = v7;
  result = sub_222737F8C();
  *a3 = v8;
  return result;
}

uint64_t sub_2226F910C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_2227381BC();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F919C, 0, 0);
}

uint64_t sub_2226F919C()
{
  v10 = v0;
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[6];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813130D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[5] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  v0[2] = v2;
  v4 = v2;
  sub_22273815C();
  sub_222672BA0((v0 + 2));
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v5 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v4;

  os_unfair_lock_lock((v5 + 32));
  sub_2226FA314((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 32));
  v6 = v9;

  v7 = v0[1];

  return v7(v6);
}

void sub_2226F9420(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_22268DBDC(&v8, a2);

  v5 = *a1;

  sub_2226F7D38(v6, v5);
  *a3 = v7;
}

uint64_t sub_2226F9498(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_2226F9544(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2226FA1B4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226F9788;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  [a2 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v11);
}

uint64_t sub_2226F96F4(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
    return sub_22273940C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
    return sub_22273941C();
  }
}

double sub_2226F9788(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22262E364(0, &qword_281312DB8, 0x277CEC3A0);
    v4 = sub_22273937C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_2226F982C()
{
  v1 = sub_2227373BC();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F98F4, 0, 0);
}

uint64_t sub_2226F98F4()
{
  v1 = objc_opt_self();
  v0[23] = v1;
  v2 = [v1 sharedInstance];
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_2226F9A30;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014208, &qword_2227450E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226F9498;
  v0[13] = &block_descriptor_13;
  v0[14] = v3;
  [v2 refreshIAPsForActiveAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226F9A30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2226FA050;
  }

  else
  {
    v2 = sub_2226F9B40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226F9B40()
{
  v1 = *(v0 + 184);

  v2 = [v1 sharedInstance];
  *(v0 + 208) = v2;
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014210, &qword_2227450E8);
  *v4 = v0;
  v4[1] = sub_2226F9C6C;

  return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000019, 0x800000022274D320, sub_2226FA154, v3, v5);
}

uint64_t sub_2226F9C6C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2226F9FD4;
  }

  else
  {

    v2 = sub_2226F9D88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2226F9D88()
{
  v18 = v0;

  v15 = v0;
  v1 = *(v0 + 144);
  v16 = MEMORY[0x277D84FA0];
  if (v1 >> 62)
  {
    v2 = sub_22273984C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    v13 = MEMORY[0x277D84FA0];
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = (*(v0 + 160) + 8);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DBEC70](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 expirationDate];
    if (v7 && (v9 = v15[21], v8 = v15[22], v10 = v15[19], v11 = v7, sub_22273739C(), v11, sub_2227373AC(), sub_2226FA15C(), LOBYTE(v11) = sub_22273914C(), v12 = *v4, (*v4)(v9, v10), v12(v8, v10), (v11 & 1) != 0) && ([v6 type] == 2 || objc_msgSend(v6, sel_type) == 3))
    {
      sub_22268DBDC(&v17, [v6 adamId]);
    }

    else
    {
    }

    ++v3;
  }

  while (v2 != v3);

  v13 = v16;
LABEL_18:

  v14 = v15[1];

  v14(v13);
}

uint64_t sub_2226F9FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226FA050(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_2226FA0EC()
{
  result = qword_27D013AE8;
  if (!qword_27D013AE8)
  {
    sub_22262E364(255, &qword_281312B80, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AE8);
  }

  return result;
}

unint64_t sub_2226FA15C()
{
  result = qword_27D014218;
  if (!qword_27D014218)
  {
    sub_2227373BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014218);
  }

  return result;
}

uint64_t sub_2226FA1B4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);

  return sub_2226F96F4(a1, a2);
}

uint64_t sub_2226FA260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226F85F0(a1, v4, v5, v6);
}

uint64_t sub_2226FA338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v25 - v12;
  if (([a1 flags] & 0x10) != 0)
  {
    return 0;
  }

  (*(v7 + 16))(v13, a2, v6);
  v14 = (*(v7 + 88))(v13, v6);
  if (v14 != *MEMORY[0x277CEC0D0])
  {
    if (v14 == *MEMORY[0x277CEC098])
    {
      (*(v7 + 8))(v13, v6);
    }

    else if (v14 != *MEMORY[0x277CEC0A8] && v14 != *MEMORY[0x277CEC0B0])
    {
      (*(v7 + 8))(v13, v6);
      return 1;
    }

    if ((sub_222737A6C() & 1) == 0 || (sub_222737AAC() & 1) != 0 && ([a1 flags] & 4) == 0)
    {
      return 0;
    }

    if (sub_222737A9C())
    {
      v17 = *MEMORY[0x277CEC0B0];
      v26 = *(v7 + 104);
      v26(v9, v17, v6);
      v18 = MEMORY[0x223DBCC40](a2, v9);
      v25 = *(v7 + 8);
      v25(v9, v6);
      if (v18)
      {
        return 0;
      }

      v26(v9, *MEMORY[0x277CEC0A8], v6);
      v19 = MEMORY[0x223DBCC40](a2, v9);
      v25(v9, v6);
      if (v19)
      {
        return 0;
      }
    }

    v20 = [a1 ageRating];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 integerValue];
      v23 = sub_222737A8C();

      if (v23 < v22)
      {
        return 0;
      }
    }

    return 1;
  }

  (*(v7 + 96))(v13, v6);
  v15 = sub_22273783C();
  (*(*(v15 - 8) + 8))(v13, v15);
  return 0;
}

char *sub_2226FA6B4(void *a1, void *a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a6;
  v38 = a4;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v46 = sub_222738BBC();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222738FDC();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v50 = sub_22273731C();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  sub_2227387BC();
  v47 = MEMORY[0x223DBDAF0]();
  if (v47)
  {
    sub_22273730C();
    if ((*(v48 + 48))(v13, 1, v50) == 1)
    {
      sub_222660468(v13, &qword_27D013DC0, qword_222743950);
      v19 = " JS worker thread";
      sub_222738D8C();
      sub_2226B7CC0();
      swift_allocError();
      sub_222738D3C();
      swift_willThrow();
    }

    else
    {
      v43 = a5;
      v20 = v48;
      v21 = *(v48 + 32);
      v35 = v9;
      v36 = v21;
      v22 = v50;
      v21(v18, v13, v50);
      v23 = *(v20 + 16);
      v44 = v18;
      v23(v15, v18, v22);
      (*(v7 + 16))(v45, v38, v46);
      sub_22266BCCC(v39, v49);
      v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v25 = (v14 + *(v7 + 80) + v24) & ~*(v7 + 80);
      v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      v36(&v19[v24], v15, v50);
      (*(v7 + 32))(&v19[v25], v45, v46);
      v28 = v43;
      *&v19[v26] = v43;
      sub_222634290(v49, &v19[v27]);
      *&v19[(v27 + 47) & 0xFFFFFFFFFFFFFFF8] = v47;
      v29 = v42;
      v30 = v28;

      v31 = v40;
      v32 = v41;
      sub_222738FBC();
      if (!v31)
      {
        v19 = sub_222738FCC();

        (*(v37 + 8))(v32, v35);
        (*(v48 + 8))(v44, v50);
        return v19;
      }

      (*(v48 + 8))(v44, v50);
    }
  }

  else
  {
    v19 = "mpaignAttributionService";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_2226FAC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v36 = a8;
  v33 = a6;
  v10 = sub_222737FDC();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = v11;
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_222738ADC();
  v17 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v18 = sub_2227372BC();
  v19 = [v17 initWithURL:v18 bag:v16];
  swift_unknownObjectRelease();

  [v19 setClientInfo_];
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  sub_2227384EC();
  v20 = sub_222738CFC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_222660468(v15, &unk_27D013A90, &unk_222741DC0);
    v22 = 0;
  }

  else
  {
    v22 = MEMORY[0x223DBDFF0]();
    (*(v21 + 8))(v15, v20);
  }

  [v19 setAccount_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014248, &unk_2227451B0);
  v23 = [v19 perform];
  v33 = sub_222738F0C();
  v24 = v35;
  v30 = *(v35 + 16);
  v30(v12, a2, v10);
  v25 = *(v24 + 80);
  v32 = v19;
  v26 = (v25 + 16) & ~v25;
  v31 = swift_allocObject();
  v27 = *(v24 + 32);
  v27(v31 + v26, v12, v10);
  v30(v12, a2, v10);
  v28 = swift_allocObject();
  v27(v28 + v26, v12, v10);
  v37[3] = sub_2227387BC();
  v37[4] = MEMORY[0x277D22078];
  v37[0] = v36;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_2226FB004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2227412F0;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 1;
  v1 = sub_222737FCC();
}

void sub_2226FB1EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2227412F0;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 0;
  v1 = sub_222737FCC();
}

uint64_t type metadata accessor for JSCampaignAttributionService(uint64_t a1)
{
  result = qword_2813131D8;
  if (!qword_2813131D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226FB69C(uint64_t a1)
{
  result = sub_222738BBC();
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

id sub_2226FB744(uint64_t a1)
{
  v1 = sub_222738BBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v5 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  sub_222738C9C();
  v6 = type metadata accessor for JSCampaignAttributionService(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_process] = v5;
  sub_22266BCCC(v12, &v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_accounts]);
  (*(v2 + 16))(&v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_bag], v4, v1);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_2226FB954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_22273731C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_222738BBC() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2226FAC1C(a1, a2, a3, v3 + v8, v3 + v11, *(v3 + v12), (v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2226FBA80()
{
  sub_222737FDC();

  sub_2226FB004();
}

void sub_2226FBAF0()
{
  sub_222737FDC();

  sub_2226FB1EC();
}

uint64_t sub_2226FBB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738DAC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22273903C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-1] - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-1] - v13;
  sub_222738D9C();
  sub_22273900C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  v19[0] = a1;

  sub_222738FEC();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_222672BA0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  v19[0] = a2;

  sub_222738FEC();
  v15(v11, v5);
  sub_222672BA0(v19);
  sub_222712308(v14);
  v20 = sub_22273872C();
  v21 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_22273871C();
  sub_2226FBED8();
  v16 = sub_222738E6C();

  v15(v14, v5);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_2226FBE5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
}

unint64_t sub_2226FBED8()
{
  result = qword_281312B50;
  if (!qword_281312B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B50);
  }

  return result;
}

uint64_t sub_2226FBFE0(uint64_t a1)
{
  swift_getObjectType();
  sub_2226FD65C(a1, v14);
  if (!v15)
  {
    sub_222672BA0(v14);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client);
  v4 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 8);
  v5 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 16);
  v6 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 24);
  v7 = *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 16];
  v8 = *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 24];
  v9 = v3 == *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client] && v4 == *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 8];
  if (!v9 && (sub_222739B4C() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (v5 == v7 && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_222739B4C();
  }

  return v11 & 1;
}

id sub_2226FC1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for JSMediaTokensObject.CacheKey();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *(v11 + 3) = a4;
  v19.receiver = v10;
  v19.super_class = v9;

  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_cachedServices);
  v14 = [v13 objectForKey_];
  if (!v14)
  {
    v15 = sub_222738ADC();
    v16 = objc_allocWithZone(MEMORY[0x277CEE578]);
    v17 = sub_22273916C();
    v14 = [v16 initWithClientIdentifier:v17 bag:v15];

    swift_unknownObjectRelease();
    [v13 setObject:v14 forKey:v12];
  }

  return v14;
}

const char *sub_2226FC31C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_222738FDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v10 = MEMORY[0x223DBDAF0]();
  if (!v10)
  {
    v17 = "clientVersion is not a string: ";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
    return v17;
  }

  v11 = v10;
  v23 = v7;
  v13 = sub_22273968C();
  if (!v12)
  {
    v17 = sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
LABEL_9:
    sub_222738D3C();
    swift_willThrow();
    goto LABEL_10;
  }

  v14 = v12;
  v24 = sub_22273968C();
  if (!v15)
  {

    v17 = sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    goto LABEL_9;
  }

  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = v13;
  v18 = v24;
  *(v17 + 4) = v14;
  *(v17 + 5) = v18;
  *(v17 + 6) = v16;
  *(v17 + 7) = v11;
  v19 = a1;
  v20 = a4;

  v21 = v25;
  sub_222738FBC();
  if (v21)
  {
LABEL_10:

    return v17;
  }

  v17 = sub_222738FCC();

  (*(v23 + 8))(v9, v6);
  return v17;
}

uint64_t sub_2226FC638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a3;
  v28 = a2;
  v32 = a1;
  v33 = a9;
  v13 = sub_222737FDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2226FC1DC(a5, a6, a7, a8);
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014258, &qword_222745240);
  v18 = [v17 fetchMediaToken];
  v29 = sub_222738F0C();
  v19 = *(v14 + 16);
  v19(v16, v28, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v21 = *(v14 + 32);
  v21(v28 + v20, v16, v13);
  v19(v16, v30, v13);
  v22 = (v20 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v21(v23 + v20, v16, v13);
  v24 = v32;
  *(v23 + v22) = v32;
  v34[3] = sub_2227387BC();
  v34[4] = MEMORY[0x277D22078];
  v34[0] = v33;
  v25 = v24;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void sub_2226FC8BC(void **a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227412F0;
  v5 = [v3 tokenString];
  v6 = sub_22273919C();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_222737FCC();
}

void sub_2226FCBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_222738D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v8 = swift_allocObject();
  v11 = xmmword_2227412F0;
  *(v8 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  v9 = sub_222738D6C();
  (*(v5 + 8))(v7, v4);
  *(v8 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  *(v8 + 32) = v9;
  v10 = sub_222737FCC();
}

double sub_2226FD01C(void *a1, void *a2)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22273968C();
  if (!v6)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v12 = sub_222738F6C();
    __swift_project_value_buffer(v12, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v18 = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v17[0] = a1;
    v13 = a1;
    sub_22273816C();
    sub_222672BA0(v17);
    sub_22273819C();
    sub_2227381CC();
    goto LABEL_12;
  }

  v7 = v6;
  v8 = v5;
  v9 = sub_22273968C();
  if (!v10)
  {

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v14 = sub_222738F6C();
    __swift_project_value_buffer(v14, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v18 = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v17[0] = a2;
    v15 = a2;
    sub_22273816C();
    sub_222672BA0(v17);
    sub_22273819C();
    sub_2227381CC();
LABEL_12:
    sub_222738C6C();

    return result;
  }

  v16 = sub_2226FC1DC(v8, v7, v9, v10);

  [v16 invalidateMediaToken];

  return result;
}

uint64_t type metadata accessor for JSMediaTokensObject(uint64_t a1)
{
  result = qword_281313538;
  if (!qword_281313538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226FD59C(uint64_t a1)
{
  result = sub_222738BBC();
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

uint64_t sub_2226FD65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C0, &unk_2227413B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2226FD71C(void **a1)
{
  sub_222737FDC();

  sub_2226FC8BC(a1);
}

void sub_2226FD78C(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226FCBB4(a1, v1 + v4, v5);
}

uint64_t sub_2226FD828(void (**a1)(uint64_t, char *, uint64_t), uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v50 = a3;
  v48 = a1;
  v49 = a5;
  v7 = sub_2227381BC();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22273793C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222738DAC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22273903C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  sub_222738D9C();
  sub_22273900C();
  v25 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277D837D0];
  v51 = v48;
  v52 = a2;

  sub_222738FEC();
  v48 = v13;
  v26 = *(v13 + 8);
  v26(v15, v12);
  sub_222672BA0(&v51);
  v53 = v25;
  v51 = v50;
  v52 = a4;

  sub_222738FEC();
  v26(v18, v12);
  sub_222672BA0(&v51);
  v27 = v49;
  v28 = [v49 id];
  v29 = [v28 stringValue];

  v30 = sub_22273919C();
  v32 = v31;

  v53 = v25;
  v51 = v30;
  v52 = v32;
  v50 = v24;
  sub_222738FEC();
  v26(v21, v12);
  sub_222672BA0(&v51);
  if ([v27 offer])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v34 = v44;
      v33 = v45;
      v35 = v46;
      (*(v45 + 104))(v44, *MEMORY[0x277CEC0B0], v46);
      v36 = [objc_allocWithZone(ASCOfferContext) init];
      v37 = sub_2226EE6A0(v34, v36);

      (*(v33 + 8))(v34, v35);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
      v51 = v37;
      v38 = v50;
      sub_222738FEC();
      swift_unknownObjectRelease();
      v26(v38, v12);
      sub_222672BA0(&v51);
      v48[4](v38, v21, v12);
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v39 = sub_222738F6C();
  __swift_project_value_buffer(v39, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v40 = [v27 id];
  v53 = sub_222672B54();
  v51 = v40;
  sub_22273816C();
  sub_222672BA0(&v51);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v38 = v50;
LABEL_8:
  sub_2226D7BBC(v38);
  v53 = sub_22273872C();
  v54 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v51);
  sub_22273871C();
  v41 = sub_222738E6C();

  v26(v38, v12);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  return v41;
}

uint64_t sub_2226FDF70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2226FDFB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2226FE014(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_222738DAC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22273903C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_222738D9C();
  sub_22273900C();
  v17 = MEMORY[0x277D837D0];
  if (a2)
  {
    v18 = MEMORY[0x277D837D0];
    v19 = a2;
  }

  else
  {
    a1 = 0;
    v19 = 0;
    v18 = 0;
    v30 = 0;
  }

  v28 = a1;
  v29 = v19;
  v31 = v18;

  sub_222738FEC();
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_222672BA0(&v28);
  v21 = [a3 stringValue];
  v22 = sub_22273919C();
  v24 = v23;

  v31 = v17;
  v28 = v22;
  v29 = v24;
  sub_222738FEC();
  v20(v13, v7);
  sub_222672BA0(&v28);
  sub_2226D7BBC(v16);
  v31 = sub_22273872C();
  v32 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_22273871C();
  v25 = sub_222738E6C();

  v20(v16, v7);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  return v25;
}

uint64_t sub_2226FE348(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v41 = a5;
  v37[2] = a4;
  v38 = a3;
  v37[1] = a1;
  v7 = sub_222738DAC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22273903C();
  v39 = *(v8 - 8);
  v9 = v39;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  MEMORY[0x28223BE20](v20);
  v40 = v37 - v21;
  sub_222738D9C();
  sub_22273900C();
  v22 = sub_2226EE6A0(a2, a4);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v42[0] = v22;
  sub_222738FEC();
  v23 = *(v9 + 8);
  v23(v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_222672BA0(v42);
  v24 = [v38 fields];
  v25 = sub_22273910C();

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
  v43 = v26;
  v42[0] = v25;
  sub_222738FEC();
  v23(v13, v8);
  sub_222672BA0(v42);
  v27 = sub_2226E5648();
  v43 = v26;
  v42[0] = v27;
  sub_222738FEC();
  v23(v16, v8);
  sub_222672BA0(v42);
  v28 = sub_2226F1F34();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014260, &unk_222745AD0);
  v42[0] = v28;
  v29 = v40;
  sub_222738FEC();
  v23(v19, v8);
  sub_222672BA0(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);
  sub_222738F2C();

  sub_2227385DC();

  v30 = v39;
  (*(v39 + 16))(v19, v29, v8);
  v31 = v30;
  v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  (*(v31 + 32))(v33 + v32, v19, v8);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2226FE958;
  *(v34 + 24) = v33;
  v43 = sub_22273872C();
  v44 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v42);

  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
  sub_2226FE9E4();
  v35 = sub_222738EDC();

  v23(v29, v8);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v35;
}

uint64_t sub_2226FE88C(uint64_t a1, uint64_t a2)
{
  sub_222712338(a2);
  v4[3] = sub_22273872C();
  v4[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_22273871C();
  sub_22266F98C();
  v2 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

id sub_2226FE928@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_2226FE958()
{
  v1 = *(sub_22273903C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2226FE88C(v2, v3);
}

unint64_t sub_2226FE9E4()
{
  result = qword_27D012FC8;
  if (!qword_27D012FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D014490, &qword_222741560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012FC8);
  }

  return result;
}

uint64_t sub_2226FEA5C(uint64_t a1)
{
  result = sub_22273971C();
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

id *sub_2226FEB00()
{
  v1 = *(*v0 + 12);
  v2 = sub_22273971C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2226FEB94()
{
  sub_2226FEB00();

  return swift_deallocClassInstance();
}

uint64_t sub_2226FEC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2226FEC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226FEC88@<X0>(uint64_t *a4@<X8>)
{
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2227371DC();
  swift_allocObject();
  sub_2227371CC();
  sub_2227371AC();
  v7 = sub_2227371BC();
  v9 = v8;
  a4[3] = MEMORY[0x277CC9318];

  *a4 = v7;
  a4[1] = v9;
  return result;
}

unint64_t sub_2226FF054()
{
  result = qword_27D014268;
  if (!qword_27D014268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D014268);
  }

  return result;
}

uint64_t sub_2226FF0A0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_2227381BC();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226FF130, 0, 0);
}

uint64_t sub_2226FF130()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  v8 = v0[3];
  __swift_project_value_buffer(v1, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[2].i64[1] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0[1].i64);
  sub_22273779C();
  sub_22273816C();
  sub_222660468(v0[1].i64, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v8, v8, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_2226FF3E0;
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v3, v4, v5, 0, 0, &unk_222745458, v2, v6);
}

void sub_2226FF3E0()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2226FF51C, 0, 0);
  }
}

uint64_t sub_2226FF51C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_22273799C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226FF5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_2226A5C24(a1, v18 - v8);
  v10 = sub_22273946C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222660468(v9, &unk_27D013050, &qword_222741370);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_2227393FC();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22273945C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_2226FF794()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_27D014270);
  __swift_project_value_buffer(v4, qword_27D014270);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

uint64_t sub_2226FF8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a2;
  sub_2227381BC();
  v4[22] = swift_task_alloc();
  v5 = sub_2227377BC();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v4[25] = *(v6 + 64);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226FFA18, 0, 0);
}

uint64_t sub_2226FFA18()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v19 = v5;
  v20 = sub_22273946C();
  v21 = *(*(v20 - 8) + 56);
  v21(v1, 1, 1, v20);
  sub_22266BCCC(v6, v0 + 16);
  v18 = *(v3 + 16);
  v18(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_222634290((v0 + 16), v8 + 32);
  v9 = *(v3 + 32);
  v10 = v2;
  v9(v8 + ((v7 + 72) & ~v7), v2, v4);
  v11 = v9;
  sub_2226FF5B4(v1, &unk_222745468, v8);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v21(v1, 1, 1, v20);
  v12 = v10;
  v18(v10, v19, v4);
  v13 = (v7 + 32) & ~v7;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v11(v14 + v13, v12, v4);
  sub_2226FF5B4(v1, &unk_222745478, v14);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013008, &qword_2227416A8);
  *v15 = v0;
  v15[1] = sub_2226FFCDC;

  return MEMORY[0x2822004D0](v0 + 240, 0, 0, v16);
}

uint64_t sub_2226FFCDC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2226FFEA4;
  }

  else
  {
    v2 = sub_2226FFDF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226FFDF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226FFEA4()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[10] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_22273779C();
  sub_22273816C();
  sub_222660468((v0 + 7), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v3 = v0[15];
  v4 = v0[16];
  v0[14] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_22273816C();
  sub_222660468((v0 + 11), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2227001A4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222660228;

  return sub_2226FF8E8(a1, a2, v7, v6);
}

uint64_t sub_222700258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_2227381BC();
  v5[8] = swift_task_alloc();
  v6 = sub_22273793C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014298, &qword_222745488);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142A0, &qword_222745490);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142A8, &qword_222745498);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2227004F0, 0, 0);
}

uint64_t sub_2227004F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  sub_22273795C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142B0, qword_2227454A0);
  sub_22262BED4(&unk_281312FC0, &qword_27D0142B0, qword_2227454A0, MEMORY[0x277D21A98]);
  sub_22273833C();

  (*(v4 + 16))(v1, v2, v3);
  sub_22262BED4(&qword_27D0142B8, &qword_27D0142A0, &qword_222745490, MEMORY[0x277D857C0]);
  sub_2227394AC();
  v5 = *MEMORY[0x277CEC0C0];
  *(v0 + 224) = *MEMORY[0x277CEC090];
  *(v0 + 228) = v5;
  *(v0 + 232) = *MEMORY[0x277CEC0C8];
  v6 = sub_22262BED4(qword_27D0142C0, &qword_27D014298, &qword_222745488, MEMORY[0x277D857B0]);
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_222700704;
  v8 = *(v0 + 200);
  v9 = *(v0 + 144);

  return MEMORY[0x282200308](v8, v9, v6);
}

uint64_t sub_222700704()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[19];
    v3 = v2[20];
    v5 = v2[18];

    (*(v4 + 8))(v3, v5);
    v6 = _ASCSignpostTag_valueTooLarge;
  }

  else
  {
    v6 = sub_222700844;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222700844()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 104) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    (*(v5 + 8))(v3, v4);
    v6 = 1;
LABEL_9:
    v28 = *(v0 + 208);
    (*(*(v0 + 104) + 56))(v28, v6, 1, *(v0 + 96));
    sub_222660468(v28, &qword_27D0142A8, &qword_222745498);
    if (qword_27D012A00 != -1)
    {
      swift_once();
    }

    v29 = sub_222738F6C();
    __swift_project_value_buffer(v29, qword_27D014270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    *(v0 + 40) = sub_222737C2C();
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_22273779C();
    sub_22273816C();
    sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v30 = *(v0 + 8);

    return v30();
  }

  v42 = *(v0 + 224);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 80);
  v40 = *(v0 + 112);
  v41 = *(v0 + 88);
  v11 = *(v0 + 72);
  sub_222701BCC(v1, v7);
  v46 = *(v2 + 48);
  v12 = sub_2227377BC();
  v43 = *(v12 - 8);
  v44 = *(v43 + 16);
  v44(v8, v7, v12);
  v13 = *(v10 + 16);
  v13(v8 + *(v2 + 48), v7 + v46, v11);
  sub_222701BCC(v8, v9);
  v14 = *(v2 + 48);
  v47 = v12;
  v44(v40, v9, v12);
  v15 = *(v2 + 48);
  v45 = v9;
  v13(v40 + v15, v9 + v14, v11);
  v13(v41, v40 + v15, v11);
  sub_222660468(v40, &unk_27D014480, &unk_222745A40);
  v16 = (*(v10 + 88))(v41, v11);
  if (v16 == v42)
  {
    (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
    v17 = sub_22273782C();
LABEL_7:
    (*(*(v17 - 8) + 8))(*(v0 + 88));
LABEL_8:
    v18 = *(v0 + 208);
    v19 = *(v0 + 192);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = v14;
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 120);
    (*(*(v0 + 80) + 8))(v45 + v24, *(v0 + 72));
    (*(v43 + 8))(v27, v47);
    (*(v22 + 8))(v23, v25);
    (*(v20 + 8))(v19, v21);
    sub_222701BCC(v26, v18);
    v6 = 0;
    goto LABEL_9;
  }

  if (v16 == *(v0 + 228))
  {
    (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
    v17 = sub_22273786C();
    goto LABEL_7;
  }

  if (v16 == *(v0 + 232))
  {
    goto LABEL_8;
  }

  v32 = *(v0 + 136);
  v33 = *(v0 + 120);
  v34 = *(v0 + 72);
  v35 = *(*(v0 + 80) + 8);
  v35(*(v0 + 88), v34);
  v35(v9 + v14, v34);
  (*(v43 + 8))(v33, v47);
  sub_222660468(v32, &unk_27D014480, &unk_222745A40);
  v36 = sub_22262BED4(qword_27D0142C0, &qword_27D014298, &qword_222745488, MEMORY[0x277D857B0]);
  v37 = swift_task_alloc();
  *(v0 + 216) = v37;
  *v37 = v0;
  v37[1] = sub_222700704;
  v38 = *(v0 + 200);
  v39 = *(v0 + 144);

  return MEMORY[0x282200308](v38, v39, v36);
}

uint64_t sub_222700F28(uint64_t a1)
{
  v4 = *(sub_2227377BC() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22266BE24;

  return sub_222700258(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_22270101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_2227381BC();
  v4[7] = swift_task_alloc();
  v5 = sub_2227399BC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222701108, 0, 0);
}

uint64_t sub_222701108()
{
  sub_222739BBC();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2227011DC;

  return sub_2227016CC(0xA055690D9DB80000, 1, 1000000000000000000, 0, 0);
}

uint64_t sub_2227011DC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_22270134C;
  }

  else
  {
    v5 = sub_2227013BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22270134C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2227013BC()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[5] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22273779C();
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2227015DC(uint64_t a1)
{
  v4 = *(sub_2227377BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22266BE24;

  return sub_22270101C(a1, v6, v7, v1 + v5);
}

uint64_t sub_2227016CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2227399AC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2227017CC, 0, 0);
}

uint64_t sub_2227017CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2227399BC();
  v5 = sub_222701B84(&qword_27D014288, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_222739B9C();
  sub_222701B84(&qword_27D014290, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2227399CC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22270195C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_22270195C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222701B18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_222701B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222701B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222701BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222701C3C(uint64_t a1)
{
  result = sub_22273971C();
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

uint64_t sub_222701D08()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222702F40;
  *(v2 + 24) = v0;
  v5[4] = sub_222702F50;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2226D9008;
  v5[3] = &block_descriptor_16_1;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222701E3C()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222702F30;
  *(v2 + 24) = v0;
  v5[4] = sub_222702F38;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2226D9008;
  v5[3] = &block_descriptor_9;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222701F70()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_222737C4C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_222737CDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = v2[16];
  if (*(v0 + v11))
  {

    sub_222737CFC();
  }

  if (!v0[6])
  {
    v18 = v2;
    sub_222737CCC();
    sub_222737D3C();
    v12 = *(v5 + 8);
    v12(v7, v4);
    sub_222737CAC();
    v13 = sub_222737CBC();
    v19 = v12;
    v12(v7, v4);
    if (v13)
    {
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v18[10];
      *(v15 + 24) = v14;
      aBlock[4] = sub_222702F28;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22269F82C;
      aBlock[3] = &block_descriptor_14;
      v18 = _Block_copy(aBlock);
      v20 = MEMORY[0x277D84F90];
      sub_222697744();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
      sub_2226A0E84();
      sub_2227397BC();
      sub_222737D0C();
      swift_allocObject();
      v16 = sub_222737CEC();

      sub_22273953C();
      v19(v10, v4);
      *(v1 + v11) = v16;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2227022DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222702334();
  }

  return result;
}

double sub_222702334()
{
  v1 = *v0;
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(v1 + 80);
  v4 = sub_22273971C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = sub_222737D1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 5);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_222737D4C();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v15 = *(*v0 + 120);
  swift_beginAccess();
  (*(v5 + 40))(&v0[v15], v7, v4);
  swift_endAccess();
  *&v0[*(*v0 + 128)] = 0;

  *&v0[*(*v0 + 136)] = 0;
  swift_unknownObjectRelease();
  if (qword_281312E28 != -1)
  {
LABEL_5:
    swift_once();
  }

  v16 = sub_222738F6C();
  __swift_project_value_buffer(v16, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  return result;
}

double sub_222702730(void *a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1[6];
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  a1[6] = v5;
  if (*(a1 + *(*a1 + 128)))
  {

    sub_222737CFC();
  }

  if (qword_281312E28 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  return result;
}

void sub_22270293C(char *a1)
{
  v2 = *(*a1 + 80);
  v3 = sub_22273971C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = sub_2227381BC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *(a1 + 6);
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = qword_281312E28;
  v10 = v8 - 1;
  *(a1 + 6) = v10;
  if (v10)
  {
    if (v9 == -1)
    {
LABEL_4:
      v11 = sub_222738F6C();
      __swift_project_value_buffer(v11, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C5C();

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (v9 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  v13 = *(*a1 + 120);
  swift_beginAccess();
  (*(v4 + 16))(v6, &a1[v13], v3);
  LODWORD(v13) = (*(*(v2 - 8) + 48))(v6, 1, v2);
  (*(v4 + 8))(v6, v3);
  if (v13 != 1)
  {
    sub_222701F70();
  }
}

id *sub_222702D9C()
{

  v1 = *(*v0 + 15);
  v2 = sub_22273971C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_222702E70()
{
  sub_222702D9C();

  return swift_deallocClassInstance();
}

uint64_t sub_222702F5C(uint64_t a1)
{
  result = sub_22273971C();
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

char *sub_22270300C()
{

  v1 = *(*v0 + 96);
  v2 = sub_22273971C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2227030C0()
{
  sub_22270300C();

  return swift_deallocClassInstance();
}

void sub_222703130()
{
  v1 = sub_22273789C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && v0 && (v15 = v14, ObjectType = swift_getObjectType(), v31 = v2, v32 = v4, v17 = v1, v30 = v13, v18 = ObjectType, v19 = v10, v20 = *(v15 + 8), v21 = v0, v23 = v31, v22 = v32, v24 = v20(v18, v15), v21, v24))
  {
    v25 = [v24 flags];
    sub_22273787C();
    if ((v25 & 0x200) != 0)
    {
      sub_22273788C();
      sub_2226949F8(v7, v22);
      v26 = *(v23 + 8);
      v26(v22, v17);
      v26(v7, v17);
    }

    (*(v23 + 32))(v30, v19, v17);
    v27 = [v24 baseBuyParams];
    sub_22273919C();

    v28 = [v24 metricsBuyParams];
    sub_22273919C();

    sub_2227378AC();
  }

  else
  {
    sub_22273787C();
    sub_2227378AC();
  }
}

void sub_222703410(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_22273789C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  MEMORY[0x28223BE20](v12);
  v24[0] = v24 - v13;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + 8);
    v18 = v1;
    v19 = v17(ObjectType, v16);

    if (v19)
    {
      v20 = [v19 flags];
      sub_22273787C();
      if ((v20 & 0x200) != 0)
      {
        sub_22273788C();
        sub_2226949F8(v8, v5);
        v21 = *(v3 + 8);
        v21(v5, v2);
        v21(v8, v2);
      }

      (*(v3 + 32))(v24[0], v11, v2);
      v22 = [v19 baseBuyParams];
      sub_22273919C();

      v23 = [v19 metricsBuyParams];
      sub_22273919C();

      sub_2227378AC();
    }

    else
    {
      sub_22273787C();
      sub_2227378AC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2227036CC()
{
  v0 = sub_222738F6C();
  __swift_allocate_value_buffer(v0, qword_2813141C0);
  v1 = __swift_project_value_buffer(v0, qword_2813141C0);
  if (qword_281312E30 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281315AF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222703794()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2227037CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v63 = a2;
  v56 = sub_222737C2C();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  MEMORY[0x28223BE20](v5);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = sub_2227377BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v59 = (v17 + 16);
  v18(v15, a1, v16);
  v19 = *(v5 + 48);
  v20 = sub_22273793C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = v21 + 16;
  v22(&v15[v19], v63, v20);
  v48 = v15;
  sub_22266110C(v15, v12, &unk_27D014480, &unk_222745A40);
  v24 = *(v5 + 48);
  v61 = v16;
  v25 = v59;
  v18(v9, v12, v16);
  v54 = v5;
  v26 = *(v5 + 48);
  v62 = v9;
  v49 = v12;
  v50 = v26;
  v47 = v24;
  v60 = v20;
  v22(&v9[v26], &v12[v24], v20);
  v27 = v51;
  v46 = *(v51 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v46 lock];
  v28 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v52 = (v64 + 8);
  v58 = (v23 - 8);
  v59 = v25 - 1;
  v57 = v29;

  v36 = 0;
  while (v33)
  {
LABEL_10:
    v38 = *(*(v57 + 56) + ((v36 << 9) | (8 * __clz(__rbit64(v33)))));
    v64 = sub_22262E364(0, &qword_281312B78, 0x277D82BB8);
    v39 = *(v38 + 24);

    v40 = [v39 id];
    v41 = v53;
    sub_22266110C(v62, v53, &unk_27D014480, &unk_222745A40);
    v42 = v55;
    v63 = *(v54 + 48);
    sub_22273779C();
    (*v59)(v41, v61);
    v43 = [objc_allocWithZone(ASCAdamID) initWithInt64_];
    (*v52)(v42, v56);
    LOBYTE(v39) = sub_2227396CC();

    (*v58)(v41 + v63, v60);
    if (v39)
    {
      sub_2227045F8(*(v38 + 24), &v62[v50], 0);
    }

    v33 &= v33 - 1;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {

      [v46 unlock];
      sub_222660468(v62, &unk_27D014480, &unk_222745A40);
      sub_222660468(v48, &unk_27D014480, &unk_222745A40);
      v44 = v49;
      (*v58)(&v49[v47], v60);
      return (*v59)(v44, v61);
    }

    v33 = *(v30 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_222703D08(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v4 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v4 lock];
  sub_2227054BC(a2);

  return [v4 unlock];
}

id sub_222703EBC(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v4 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v4 lock];
  sub_222705B18(a2);

  return [v4 unlock];
}

id sub_222704070(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v5 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v5 lock];
  sub_222706174(a2, a1);

  return [v5 unlock];
}

id sub_22270422C(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v4 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v4 lock];
  sub_222706980(a2);

  return [v4 unlock];
}

id sub_2227043E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  if (*(*&v1[v3] + 16))
  {
    sub_22266BCCC(&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager], v9);
    v4 = v10;
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v5 + 16))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_2227045F8(void *a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v5 = sub_222738F6C();
  v97 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v107 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273791C();
  v103 = *(v7 - 1);
  v104 = v7;
  MEMORY[0x28223BE20](v7);
  v102 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227376CC();
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v114 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2227381BC();
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v14 = sub_22273793C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v87 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v90 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  swift_getObjectType();
  v24 = [objc_allocWithZone(ASCOfferContext) init];
  v115 = v23;
  v111 = a2;
  sub_2226AE5A4(a2, v24, v23);

  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v112 = __swift_project_value_buffer(v5, qword_2813141C0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v26 = *(sub_2227381FC() - 8);
  v27 = *(v26 + 80);
  v28 = (v27 + 32) & ~v27;
  v95 = *(v26 + 72);
  v94 = v27;
  v96 = v25;
  v29 = swift_allocObject();
  v93 = xmmword_2227412F0;
  *(v29 + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v30 = [a1 id];
  v92 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v117 = v92;
  v116[0] = v30;
  sub_22273816C();
  v110 = a1;
  sub_222660468(v116, &qword_27D0130C0, &unk_2227413B0);
  v91 = "t offer ID to AppState app";
  sub_22273819C();
  v117 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v116);
  v113 = v15;
  v32 = *(v15 + 16);
  v99 = v15 + 16;
  v32(boxed_opaque_existential_1, v111, v14);
  sub_22273815C();
  sub_222660468(v116, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v117 = v14;
  v33 = __swift_allocate_boxed_opaque_existential_1(v116);
  v34 = v115;
  v111 = v14;
  v89 = v32;
  v32(v33, v115, v14);
  sub_22273815C();
  sub_222660468(v116, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v105 = v28;
  sub_2227381CC();
  v98 = v5;
  sub_222738C4C();

  v35 = v100;
  __swift_project_boxed_opaque_existential_1((v100 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription), *(v100 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 24));
  sub_222737B8C();
  v36 = *(*__swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor), *(v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor + 24)) + 16);
  v37 = *(v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions + 24);
  v38 = *(v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions + 32);
  __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions), v37);
  v39 = v110;
  if (sub_2226FA338(v110, v34, v37, v38) & 1) != 0 && (sub_2227107B8(v39, v115))
  {
    v40 = v101 | 2;
  }

  else
  {
    v40 = v101 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v41 = *(*__swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers), *(v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers + 24)) + 16);

  os_unfair_lock_lock((v41 + 32));
  v42 = *(v41 + 16);

  sub_2226F7D38(v43, v42);
  v45 = v44;
  os_unfair_lock_unlock((v41 + 32));

  v46 = (v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_localizer);
  if (([v39 flags] & 0x1000) != 0)
  {

    v49 = sub_2226AB060(v115, v39, v46);
LABEL_12:
    v48 = v49;
    goto LABEL_17;
  }

  if ((v36 & 1) == 0)
  {
    v47 = sub_2226AB4C8(v115, v39, v114, v46);
    if (v47)
    {
      v48 = v47;

      goto LABEL_17;
    }
  }

  if (([v39 flags] & 0x400) == 0)
  {

    if (([v39 flags] & 4) != 0)
    {
      v49 = sub_2226ACE1C(v115, v39, v114, v46);
    }

    else
    {
      v49 = sub_2226ABBE0(v115, v39, @"standard", v46);
    }

    goto LABEL_12;
  }

  v48 = sub_2226AC790(v115, v39, v45, v46);

LABEL_17:
  v50 = *(v35 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_delegate);
  v51 = v102;
  sub_22273792C();
  sub_22273790C();
  (*(v103 + 8))(v51, v104);
  v52 = sub_22273916C();

  v104 = v50;
  [v50 offer:v39 didChangeState:v52 withMetadata:v48 flags:v40];

  if (([v39 flags] & 8) == 0)
  {
    v53 = v113;
    v54 = v114;
    v55 = v115;
    goto LABEL_42;
  }

  v56 = [v39 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_222710B68(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
  v57 = sub_22273910C();

  if (!*(v57 + 16) || (v58 = sub_222694708(), (v59 & 1) == 0))
  {

    v65 = v90;
    v66 = v111;
    v67 = v89;
    v89(v90, v115, v111);
    v68 = v113;
    v69 = (*(v113 + 88))(v65, v66);
    v63 = v98;
    if (v69 == *MEMORY[0x277CEC0B8])
    {
      v70 = v88;
      v67(v88, v65, v66);
      (*(v68 + 96))(v70, v66);
      v71 = sub_22273784C();
      (*(*(v71 - 8) + 8))(v70, v71);
      v64 = v97;
LABEL_24:
      (*(v113 + 8))(v65, v66);
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v61 = sub_2227390BC();
      v62 = v72;
LABEL_34:
      v39 = v110;
      goto LABEL_35;
    }

    if (v69 == *MEMORY[0x277CEC0D0])
    {
      v73 = v87;
      v67(v87, v65, v66);
      v74 = v113;
      (*(v113 + 96))(v73, v66);
      v75 = sub_22273783C();
      v76 = v65;
      v77 = *(v75 - 8);
      if ((*(v77 + 88))(v73, v75) == *MEMORY[0x277CEC038])
      {
        __swift_project_boxed_opaque_existential_1(v46, v46[3]);
        v61 = sub_2227390BC();
        v78 = v76;
        v62 = v79;
        (*(v74 + 8))(v78, v66);
        v64 = v97;
        goto LABEL_34;
      }

      (*(v77 + 8))(v73, v75);
      v64 = v97;
      v65 = v76;
    }

    else
    {
      v64 = v97;
      if (v69 == *MEMORY[0x277CEC0A8] || v69 == *MEMORY[0x277CEC0B0])
      {
        goto LABEL_24;
      }
    }

    (*(v113 + 8))(v65, v66);
    v61 = 0;
    v62 = 0;
    goto LABEL_34;
  }

  v60 = (*(v57 + 56) + 16 * v58);
  v61 = *v60;
  v62 = v60[1];

  v63 = v98;
  v64 = v97;
LABEL_35:
  (*(v64 + 16))(v107, v112, v63);
  *(swift_allocObject() + 16) = v93;
  sub_2227381AC();
  sub_22273819C();
  v80 = [v39 id];
  v117 = v92;
  v116[0] = v80;
  sub_22273816C();
  sub_222660468(v116, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  if (v62)
  {
    v81 = MEMORY[0x277D837D0];
    v82 = v62;
    v83 = v61;
  }

  else
  {
    v82 = 0;
    v83 = 0;
    v81 = 0;
    v116[2] = 0;
  }

  v116[0] = v83;
  v116[1] = v82;
  v117 = v81;

  sub_22273815C();
  sub_222660468(v116, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  v84 = v107;
  sub_222738C4C();

  (*(v64 + 8))(v84, v63);
  if (v62)
  {
    v85 = sub_22273916C();
  }

  else
  {
    v85 = 0;
  }

  v53 = v113;
  v54 = v114;
  v55 = v115;
  [v104 offer:v39 didChangeStatusText:v85];

  v48 = v85;
LABEL_42:

  (*(v108 + 8))(v54, v109);
  return (*(v53 + 8))(v55, v111);
}

void sub_2227054BC(uint64_t a1)
{
  v50 = sub_2227378CC();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22273793C();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227377AC();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2227377BC();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v55 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v51 = a1;
  v43 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v20 = (v17 + 63) >> 6;
  v53 = "stall state change";
  v42 = *MEMORY[0x277CEBFE8];
  v21 = (v7 + 104);
  v22 = v15;
  v40 = (v3 + 8);
  v41 = v21;
  v23 = v1;
  v39 = (v5 + 8);
  v38 = (v12 + 8);

  v24 = 0;
  v25 = &selRef_stopObservingStateOfOffers_;
  v52 = xmmword_2227412F0;
  v56 = v11;
  v54 = v22;
  while (v19)
  {
LABEL_10:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = *(*(v22 + 56) + ((v24 << 9) | (8 * v27)));
    v29 = *(v28 + 24);

    if (([v29 v25[411]] & 4) != 0)
    {
      v30 = [*(v28 + 24) id];
      [v30 int64value];
      sub_222737C1C();
      v57 = v23;
      if (v23)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v31 = sub_222738F6C();
        __swift_project_value_buffer(v31, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v52;
        sub_22273813C();
        sub_222738C6C();

        v23 = 0;
        v22 = v54;
        v25 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v41)(v45, v42, v46);
        sub_22273778C();

        v32 = v43[3];
        v37[1] = v43[4];
        v37[0] = __swift_project_boxed_opaque_existential_1(v43, v32);
        swift_getObjectType();
        v33 = v49;
        sub_222694714();
        v34 = v47;
        v35 = v57;
        sub_2227379EC();
        v36 = v33;
        v25 = &selRef_stopObservingStateOfOffers_;
        (*v40)(v36, v50);
        sub_2227045F8(*(v28 + 24), v34, 0);
        v23 = v35;
        (*v39)(v34, v48);
        (*v38)(v55, v44);

        v22 = v54;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v26);
    ++v24;
    if (v19)
    {
      v24 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_222705B18(uint64_t a1)
{
  v50 = sub_2227378CC();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22273793C();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227377AC();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2227377BC();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v55 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v51 = a1;
  v43 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v20 = (v17 + 63) >> 6;
  v53 = "stall state change";
  v42 = *MEMORY[0x277CEBFE8];
  v21 = (v7 + 104);
  v22 = v15;
  v40 = (v3 + 8);
  v41 = v21;
  v23 = v1;
  v39 = (v5 + 8);
  v38 = (v12 + 8);

  v24 = 0;
  v25 = &selRef_stopObservingStateOfOffers_;
  v52 = xmmword_2227412F0;
  v56 = v11;
  v54 = v22;
  while (v19)
  {
LABEL_10:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = *(*(v22 + 56) + ((v24 << 9) | (8 * v27)));
    v29 = *(v28 + 24);

    if (([v29 v25[411]] & 0x10) != 0)
    {
    }

    else
    {
      v30 = [*(v28 + 24) id];
      [v30 int64value];
      sub_222737C1C();
      v57 = v23;
      if (v23)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v31 = sub_222738F6C();
        __swift_project_value_buffer(v31, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v52;
        sub_22273813C();
        sub_222738C6C();

        v23 = 0;
        v22 = v54;
        v25 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v41)(v45, v42, v46);
        sub_22273778C();

        v32 = v43[3];
        v37[1] = v43[4];
        v37[0] = __swift_project_boxed_opaque_existential_1(v43, v32);
        swift_getObjectType();
        v33 = v49;
        sub_222694714();
        v34 = v47;
        v35 = v57;
        sub_2227379EC();
        v36 = v33;
        v25 = &selRef_stopObservingStateOfOffers_;
        (*v40)(v36, v50);
        sub_2227045F8(*(v28 + 24), v34, 0);
        v23 = v35;
        (*v39)(v34, v48);
        (*v38)(v55, v44);

        v22 = v54;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v26);
    ++v24;
    if (v19)
    {
      v24 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_222706174(uint64_t a1, uint64_t a2)
{
  v58 = sub_2227378CC();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22273793C();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2227377AC();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222737C2C();
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2227377BC();
  v12 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v64 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v59 = a1;
  v51 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v20 = (v17 + 63) >> 6;
  v21 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v21 = a2;
  }

  v66 = v21;
  v67 = a2 & 0xC000000000000001;
  v71 = a2 + 56;
  v62 = "stall state change";
  v50 = *MEMORY[0x277CEBFE8];
  v49 = (v8 + 104);
  v22 = v15;
  v48 = (v4 + 8);
  v47 = (v6 + 8);
  v46 = (v12 + 8);

  v23 = 0;
  v61 = xmmword_2227412F0;
  while (v19)
  {
LABEL_14:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(*(v22 + 56) + ((v23 << 9) | (8 * v25)));
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;

      v72 = [v28 iapItemID];
      if (v72)
      {
        if (v67)
        {
          v69 = v26;
          v29 = v72;
          v30 = sub_22273988C();

          if (v30)
          {
            v65 = v22;
            goto LABEL_19;
          }
        }

        else
        {
          if (!*(a2 + 16))
          {

            goto LABEL_8;
          }

          v69 = v26;
          v65 = v22;
          v70 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
          v34 = sub_2227396BC();
          v35 = -1 << *(a2 + 32);
          v36 = v34 & ~v35;
          if (((*(v71 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
LABEL_28:

LABEL_31:

            goto LABEL_32;
          }

          v37 = ~v35;
          while (1)
          {
            v38 = a2;
            v39 = *(*(a2 + 48) + 8 * v36);
            v40 = sub_2227396CC();

            if (v40)
            {
              break;
            }

            v36 = (v36 + 1) & v37;
            a2 = v38;
            if (((*(v71 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          a2 = v38;
LABEL_19:
          v31 = v68;
          v32 = [*(v69 + 24) id];
          [v32 int64value];
          sub_222737C1C();
          v60 = a2;
          if (!v31)
          {
            (*v49)(v53, v50, v54);
            sub_22273778C();

            v68 = 0;
            v41 = v51[3];
            v70 = v51[4];
            v45 = __swift_project_boxed_opaque_existential_1(v51, v41);
            v42 = v69;
            swift_getObjectType();
            v43 = v57;
            sub_222694714();
            v44 = v55;
            a2 = v60;
            sub_2227379EC();
            (*v48)(v43, v58);
            sub_2227045F8(*(v42 + 24), v44, 0);

            (*v47)(v44, v56);
            (*v46)(v64, v52);
            goto LABEL_31;
          }

          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v33 = sub_222738F6C();
          __swift_project_value_buffer(v33, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          sub_2227381FC();
          *(swift_allocObject() + 16) = v61;
          sub_22273813C();
          sub_222738C6C();

          v68 = 0;
          a2 = v60;
LABEL_32:
          v22 = v65;
        }
      }

      else
      {
LABEL_8:
      }
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_222706980(uint64_t a1)
{
  v50 = sub_2227378CC();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22273793C();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227377AC();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2227377BC();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v55 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v51 = a1;
  v43 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v20 = (v17 + 63) >> 6;
  v53 = "stall state change";
  v42 = *MEMORY[0x277CEBFE8];
  v21 = (v7 + 104);
  v22 = v15;
  v40 = (v3 + 8);
  v41 = v21;
  v23 = v1;
  v39 = (v5 + 8);
  v38 = (v12 + 8);

  v24 = 0;
  v25 = &selRef_stopObservingStateOfOffers_;
  v52 = xmmword_2227412F0;
  v56 = v11;
  v54 = v22;
  while (v19)
  {
LABEL_10:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = *(*(v22 + 56) + ((v24 << 9) | (8 * v27)));
    v29 = *(v28 + 24);

    if (([v29 v25[411]] & 0x1000) != 0)
    {
    }

    else
    {
      v30 = [*(v28 + 24) id];
      [v30 int64value];
      sub_222737C1C();
      v57 = v23;
      if (v23)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v31 = sub_222738F6C();
        __swift_project_value_buffer(v31, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v52;
        sub_22273813C();
        sub_222738C6C();

        v23 = 0;
        v22 = v54;
        v25 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v41)(v45, v42, v46);
        sub_22273778C();

        v32 = v43[3];
        v37[1] = v43[4];
        v37[0] = __swift_project_boxed_opaque_existential_1(v43, v32);
        swift_getObjectType();
        v33 = v49;
        sub_222694714();
        v34 = v47;
        v35 = v57;
        sub_2227379EC();
        v36 = v33;
        v25 = &selRef_stopObservingStateOfOffers_;
        (*v40)(v36, v50);
        sub_2227045F8(*(v28 + 24), v34, 0);
        v23 = v35;
        (*v39)(v34, v48);
        (*v38)(v55, v44);

        v22 = v54;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v26);
    ++v24;
    if (v19)
    {
      v24 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

id sub_222706FDC()
{
  v1 = v0;
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v3 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [*(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock) lock];
  sub_222707190(v1);

  return [v3 unlock];
}

void sub_222707190(uint64_t a1)
{
  v51 = sub_2227378CC();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22273793C();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2227377AC();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222737C2C();
  MEMORY[0x28223BE20](v8 - 8);
  v56 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2227377BC();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v57 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v52 = a1;
  v44 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v18 = (v15 + 63) >> 6;
  v54 = "stall state change";
  v43 = *MEMORY[0x277CEBFE8];
  v41 = (v2 + 8);
  v42 = (v6 + 104);
  v40 = (v4 + 8);
  v39 = (v10 + 8);

  v19 = 0;
  v20 = &selRef_stopObservingStateOfOffers_;
  v53 = xmmword_2227412F0;
  v55 = v13;
  while (v17)
  {
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = *(*(v13 + 56) + ((v19 << 9) | (8 * v22)));
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;

      swift_unknownObjectRetain();
      v26 = [v25 v20[322]];
      if (v26)
      {
        v27 = v26;
        v28 = sub_22273937C();

        v29 = *(v28 + 16);

        if (!v29)
        {
          swift_unknownObjectRelease();
LABEL_19:

          goto LABEL_20;
        }

        v30 = [*(v23 + 24) id];
        [v30 int64value];
        v31 = v58;
        sub_222737C1C();
        v58 = v31;
        if (!v31)
        {
          (*v42)(v46, v43, v47);
          sub_22273778C();

          v37 = v44[3];
          v38 = v44[4];
          v36[1] = __swift_project_boxed_opaque_existential_1(v44, v37);
          swift_getObjectType();
          v33 = v50;
          sub_222694714();
          v34 = v48;
          sub_2227379EC();
          v35 = v33;
          v13 = v55;
          (*v41)(v35, v51);
          sub_2227045F8(*(v23 + 24), v34, 0);
          swift_unknownObjectRelease();
          (*v40)(v34, v49);
          (*v39)(v57, v45);
          goto LABEL_19;
        }

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v32 = sub_222738F6C();
        v38 = __swift_project_value_buffer(v32, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v53;
        sub_22273813C();
        sub_222738C6C();

        swift_unknownObjectRelease();

        v58 = 0;
        v13 = v55;
LABEL_20:
        v20 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_222707958()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_2227376CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription;
  if ((*(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription) & 1) == 0)
  {
    v24 = v5;
    v14 = ObjectType;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 24));
    sub_222737B8C();
    *v9 = 1;
    (*(v7 + 104))(v9, *MEMORY[0x277CEBF88], v6);
    v15 = sub_2227376BC();
    v16 = *(v7 + 8);
    v16(v9, v6);
    v16(v12, v6);
    v17 = v14;
    v18 = v24;
    if (v15)
    {
      if (qword_2813141B8 != -1)
      {
        swift_once();
      }

      v19 = sub_222738F6C();
      __swift_project_value_buffer(v19, qword_2813141C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C4C();

      *(v1 + v13) = 1;
      v20 = sub_22273946C();
      (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v21;
      v22[5] = v17;
      sub_222697DAC(0, 0, v18, &unk_222745658, v22);
    }
  }
}

uint64_t sub_222707D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_2227381BC();
  v4[18] = swift_task_alloc();
  v5 = sub_222737BDC();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = sub_2227376CC();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222707E60, 0, 0);
}

uint64_t sub_222707E60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    v5 = (Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    *v2 = 0;
    (*(v3 + 104))(v2, *MEMORY[0x277CEC158], v4);
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_222707FE4;
    v9 = v0[24];
    v10 = v0[21];

    return MEMORY[0x28213E540](v9, v10, v6, v7);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_222707FE4()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2227083D0;
  }

  else
  {
    v5 = sub_222708154;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222708154()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(v4 + 16))(boxed_opaque_existential_1, v1, v3);
  sub_22273815C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v7 = *&v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  [v7 lock];
  v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
  [v7 unlock];
  (*(v4 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2227083D0()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[25];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v4 = v0[13];
  v5 = v0[14];
  v0[5] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v7 = *&v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  [v7 lock];
  v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
  [v7 unlock];

  v8 = v0[1];

  return v8();
}

void sub_22270866C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription;
  if ((*(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) & 1) == 0)
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v6 = sub_222738F6C();
    __swift_project_value_buffer(v6, qword_2813141C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    *(v0 + v5) = 1;
    v7 = sub_22273946C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v9[5] = ObjectType;
    sub_222697DAC(0, 0, v4, &unk_222745668, v9);
  }
}

uint64_t sub_2227088DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 136) = a4;
  sub_2227381BC();
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270896C, 0, 0);
}

uint64_t sub_22270896C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers), *(Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers + 24));
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_222708A70;

    return sub_2226F88B8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_222708A70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_222708DC8;
  }

  else
  {
    v4 = sub_222708B84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222708B84()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014200, &unk_222745670);
  v0[6] = v1;
  sub_22273815C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v4 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v4 lock];
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) = 0;
  [v4 unlock];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_222708DC8()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v4 = v0[13];
  v5 = v0[14];
  v0[5] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v7 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v7 lock];
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) = 0;
  [v7 unlock];

  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

void sub_22270904C(char *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2227378CC();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22273793C();
  *&v92 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2227377AC();
  v90 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222737C2C();
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v66 - v15;
  v81 = sub_2227377BC();
  v86 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v75 = &v66 - v18;
  v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v96 = a1;
  v94 = v19;
  v20 = (a2 >> 62);
  if (!*(*&a1[v19] + 16))
  {
    if (v20)
    {
      goto LABEL_61;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v21 = *&v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 24];
      v22 = *&v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 32];
      __swift_project_boxed_opaque_existential_1(&v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager], v21);
      (*(v22 + 8))(v21, v22);
      goto LABEL_5;
    }
  }

  while (1)
  {
LABEL_5:
    if (v20)
    {
      goto LABEL_59;
    }

    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v24 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    v25 = sub_22271118C();

    v87 = v24;
    v26 = MEMORY[0x223DBE820](v23, v24, v25);
    v98 = v26;
    if (v20)
    {
      v27 = sub_22273984C();
      v95 = a2;
      if (v27)
      {
LABEL_11:
        v97 = v20;
        v20 = v8;
        v8 = v3;
        v28 = 0;
        v29 = a2 & 0xC000000000000001;
        v3 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v29)
          {
            v30 = MEMORY[0x223DBEC70](v28, a2);
            a2 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              v3 = v8;
              v8 = v20;
              v20 = v97;
              v26 = v98;
              break;
            }
          }

          else
          {
            if (v28 >= v3[2])
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              v23 = sub_22273984C();
              goto LABEL_7;
            }

            v30 = *(a2 + 8 * v28 + 32);
            swift_unknownObjectRetain();
            a2 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_20;
            }
          }

          v31 = [v30 id];
          swift_unknownObjectRelease();
          sub_22268E59C(&v100, v31);

          ++v28;
          v32 = a2 == v27;
          a2 = v95;
          if (v32)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = a2;
      if (v27)
      {
        goto LABEL_11;
      }
    }

    v33 = sub_2227113C8(v26);
    v97 = v3;
    if (v3)
    {

      if (qword_2813141B8 != -1)
      {
        swift_once();
      }

      v3 = sub_222738F6C();
      __swift_project_value_buffer(v3, qword_2813141C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0144D0, &qword_222745648);
      v98 = a2;

      sub_22273815C();
      sub_222660468(&v98, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      v97 = 0;
      v34 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!v20)
      {
LABEL_26:
        v35 = *(v34 + 16);
        if (!v35)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v36 = v33;

      sub_2226AF45C(v36);

      v3 = *&v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24];
      __swift_project_boxed_opaque_existential_1(&v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController], v3);
      sub_22273797C();

      v34 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!v20)
      {
        goto LABEL_26;
      }
    }

    v35 = sub_22273984C();
    if (!v35)
    {
      break;
    }

LABEL_30:
    if (v35 >= 1)
    {
      v37 = 0;
      v89 = &v96[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController];
      v91 = a2 & 0xC000000000000001;
      v85 = " because we never started";
      v84 = "Failed to convert offer: ";
      v80 = *MEMORY[0x277CEBFE8];
      v79 = (v90 + 104);
      v68 = v8 + 1;
      v67 = (v92 + 8);
      v78 = (v86 + 8);
      v86 = " to AppState apps";
      v92 = xmmword_2227412F0;
      v90 = v35;
      while (1)
      {
        if (v91)
        {
          v44 = MEMORY[0x223DBEC70](v37, a2);
        }

        else
        {
          v44 = *(a2 + 8 * v37 + 32);
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v46 = [v44 hash];
        v47 = v96;
        v8 = v94;
        swift_beginAccess();
        v48 = *(v8 + v47);
        if (*(v48 + 16) && (v49 = sub_2226889B4(v46), (v50 & 1) != 0))
        {
          a2 = *(*(v48 + 56) + 8 * v49);
          swift_endAccess();
          v51 = *(a2 + 16);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_58;
          }

          *(a2 + 16) = v53;

          v54 = [v44 id];
          [v54 int64value];
          v55 = v97;
          sub_222737C1C();
          v97 = v55;
          if (v55)
          {

            if (qword_2813141B8 != -1)
            {
              swift_once();
            }

            v56 = sub_222738F6C();
            v20 = __swift_project_value_buffer(v56, qword_2813141C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
            sub_2227381FC();
            v3 = swift_allocObject();
            *(v3 + 1) = v92;
            sub_2227381AC();
            sub_22273819C();
            v99 = ObjectType;
            v98 = v44;
            swift_unknownObjectRetain();
            sub_22273815C();
            sub_222660468(&v98, &qword_27D0130C0, &unk_2227413B0);
            sub_22273819C();
            sub_2227381CC();
            sub_222738C6C();

            swift_unknownObjectRelease();

            v97 = 0;
          }

          else
          {
            (*v79)(v82, v80, v83);
            sub_22273778C();

            v38 = v89;
            v39 = *(v89 + 3);
            v74 = *(v89 + 4);
            v73 = __swift_project_boxed_opaque_existential_1(v89, v39);
            v40 = v71;
            sub_222694714();
            v41 = v69;
            sub_2227379EC();
            v42 = v40;
            v20 = v96;
            (*v68)(v42, v72);
            v3 = *(v38 + 4);
            __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
            v43 = sub_2227379DC();
            sub_2227045F8(v44, v41, (v43 & 1) == 0);
            (*v67)(v41, v70);
            (*v78)(v75, v81);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_endAccess();
          if (([v44 flags] & 4) != 0)
          {
            sub_222707958();
          }

          if (([v44 flags] & 0x400) != 0)
          {
            sub_22270866C();
          }

          v57 = [v44 hash];
          type metadata accessor for AppOfferStateClient.Observation();
          v58 = swift_allocObject();
          *(v58 + 16) = 1;
          *(v58 + 24) = v44;
          v59 = v96;
          v60 = v94;
          swift_beginAccess();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = *&v59[v60];
          *&v59[v60] = 0x8000000000000000;
          sub_22268C2EC(v58, v57, isUniquelyReferenced_nonNull_native);
          *&v59[v60] = v100;
          swift_endAccess();
          sub_22270A19C(v44);
          sub_22266BCCC(v89, &v98);
          __swift_project_boxed_opaque_existential_1(&v98, v99);
          v62 = [v44 id];
          [v62 int64value];
          v63 = v97;
          sub_222737C1C();
          v97 = v63;
          if (v63)
          {
            v20 = ObjectType;

            __swift_destroy_boxed_opaque_existential_1(&v98);
            if (qword_2813141B8 != -1)
            {
              swift_once();
            }

            v64 = sub_222738F6C();
            __swift_project_value_buffer(v64, qword_2813141C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
            sub_2227381FC();
            *(swift_allocObject() + 16) = v92;
            sub_2227381AC();
            sub_22273819C();
            v99 = ObjectType;
            v98 = v44;
            swift_unknownObjectRetain();
            sub_22273815C();
            sub_222660468(&v98, &qword_27D0130C0, &unk_2227413B0);
            sub_22273819C();
            sub_2227381CC();
            sub_222738C6C();

            v97 = 0;
          }

          else
          {
            (*v79)(v82, v80, v83);
            v20 = v76;
            sub_22273778C();

            sub_2227379BC();
            (*v78)(v20, v81);
            __swift_destroy_boxed_opaque_existential_1(&v98);
          }

          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v3 = sub_222738F6C();
          __swift_project_value_buffer(v3, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          sub_2227381FC();
          *(swift_allocObject() + 16) = v92;
          sub_2227381AC();
          sub_22273819C();
          v65 = [v44 id];
          v99 = v87;
          v98 = v65;
          sub_22273816C();
          sub_222660468(&v98, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C4C();
          swift_unknownObjectRelease();
        }

        ++v37;
        a2 = v95;
        if (v90 == v37)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_61:
    if (sub_22273984C())
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_22270A19C(void *a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2227378CC();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22273793C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227377AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222737C2C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2227377BC();
  v21 = *(v12 - 8);
  v22 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v15 = [a1 id];
  [v15 int64value];
  sub_222737C1C();
  (*(v8 + 104))(v10, *MEMORY[0x277CEBFE8], v7);
  sub_22273778C();

  v16 = (v29 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController), *(v29 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24));
  v17 = v23;
  sub_222694714();
  v18 = v24;
  sub_2227379EC();
  (*(v25 + 8))(v17, v26);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v19 = sub_2227379DC();
  sub_2227045F8(a1, v18, (v19 & 1) == 0);
  (*(v27 + 8))(v18, v28);
  return (*(v21 + 8))(v14, v22);
}

uint64_t sub_22270A74C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v48 = sub_2227377AC();
  ObjectType = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222737C2C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227377BC();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2227381BC();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v15 = a2;
  v49 = *(*(a1 + v14) + 16);
  if (a2 >> 62)
  {
LABEL_31:
    v38 = v15;
    result = sub_22273984C();
    v15 = v38;
    v57 = v3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v49)
    {
      if (!*(*(a1 + v14) + 16))
      {
        v39 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 24);
        v40 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 32);
        __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager), v39);
        return (*(v40 + 16))(v39, v40);
      }
    }

    return result;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = v2;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (result >= 1)
  {
    v17 = 0;
    v53 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController;
    v64 = v15 & 0xC000000000000001;
    v51 = " because we never started";
    v50 = "Failed to convert offer: ";
    v43 = *MEMORY[0x277CEBFE8];
    v42 = (ObjectType + 104);
    v41 = (v11 + 8);
    v52 = " to AppState app";
    v58 = "Could not stop observing ";
    v59 = "Performed action of ";
    v61 = xmmword_2227412F0;
    v60 = a1;
    v62 = result;
    v63 = v15;
    v54 = v10;
    while (1)
    {
      if (v64)
      {
        v20 = MEMORY[0x223DBEC70](v17);
      }

      else
      {
        v20 = *(v15 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v3 = [v20 hash];
      swift_beginAccess();
      v11 = *(a1 + v14);
      if (*(v11 + 16) && (v21 = sub_2226889B4(v3), (v22 & 1) != 0))
      {
        v10 = *(*(v11 + 56) + 8 * v21);
        swift_endAccess();
        v23 = *(v10 + 2);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
          __break(1u);
          goto LABEL_31;
        }

        *(v10 + 2) = v25;
        if (v25)
        {
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        v26 = [v20 hash];
        swift_beginAccess();
        v27 = sub_2226889B4(v26);
        if (v28)
        {
          v29 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *(a1 + v14);
          v68 = v31;
          *(a1 + v14) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22268D1FC();
            v31 = v68;
          }

          sub_22268B99C(v29, v31);
          *(a1 + v14) = v31;
        }

        swift_endAccess();
        sub_22266BCCC(a1 + v53, v65);
        v32 = v66;
        v56 = v67;
        v55 = __swift_project_boxed_opaque_existential_1(v65, v66);
        v33 = [v20 id];
        [v33 int64value];
        v34 = v57;
        sub_222737C1C();
        v57 = v34;
        if (v34)
        {

          __swift_destroy_boxed_opaque_existential_1(v65);
          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v56 = sub_222738F6C();
          v55 = __swift_project_value_buffer(v56, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          sub_2227381FC();
          *(swift_allocObject() + 16) = v61;
          sub_2227381AC();
          sub_22273819C();
          v66 = ObjectType;
          v65[0] = v20;
          swift_unknownObjectRetain();
          sub_22273815C();
          sub_222660468(v65, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C6C();

          v57 = 0;
        }

        else
        {
          (*v42)(v47, v43, v48);
          v44 = v32;
          v35 = v45;
          sub_22273778C();

          sub_2227379BC();
          (*v41)(v35, v46);
          __swift_destroy_boxed_opaque_existential_1(v65);
        }

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v36 = sub_222738F6C();
        v56 = __swift_project_value_buffer(v36, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v61;
        sub_2227381AC();
        sub_22273819C();
        v37 = [v20 id];
        v66 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        v65[0] = v37;
        sub_22273816C();
        sub_222660468(v65, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C4C();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v18 = sub_222738F6C();
        __swift_project_value_buffer(v18, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = v61;
        sub_2227381AC();
        sub_22273819C();
        v19 = [v20 id];
        v66 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        v65[0] = v19;
        sub_22273816C();
        sub_222660468(v65, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C6C();
        swift_unknownObjectRelease();
      }

      a1 = v60;
LABEL_9:
      ++v17;
      result = v62;
      v15 = v63;
      if (v62 == v17)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_22270B200(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  v7 = sub_22273937C();
  v8 = *&a1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  v9 = a1;
  [v8 lock];
  a4(v9, v7, ObjectType);

  [v8 unlock];
}

void sub_22270B2F4(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v42 - v14;
  v16 = *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v16 lock];
  v17 = [a1 hash];
  v18 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  if (*(*(v6 + v18) + 16) && (sub_2226889B4(v17), (v19 & 1) != 0))
  {
    swift_endAccess();
    [v16 unlock];
    sub_2226839AC(&v45);
    if (v46)
    {
      sub_222634290(&v45, &v48);
      v20 = *(v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph);
      v21 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions;
      sub_22266BCCC(v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController, &v45);
      sub_22266BCCC(v6 + v21, v44);
      sub_22266BCCC(&v48, v43);
      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = a1;
      sub_222634290(&v45, (v22 + 4));
      sub_222634290(v44, (v22 + 9));
      v22[14] = a2;
      v22[15] = a3;
      sub_222634290(v43, (v22 + 16));
      v22[21] = ObjectType;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);

      swift_unknownObjectRetain();
      v23 = a2;
      v24 = a3;
      v25 = sub_222738F2C();
      v26 = sub_22273946C();
      (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = &unk_2227455F8;
      v27[5] = v22;
      v27[6] = v25;

      sub_2226D4E54(0, 0, v15, &unk_222745608, v27);

      v28 = swift_allocObject();
      v29 = v42;
      *(v28 + 16) = v42;
      *(v28 + 24) = a5;
      *(v28 + 32) = "performAction(of:with:in:withReplyHandler:)";
      *(v28 + 40) = 43;
      *(v28 + 48) = 2;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = a5;
      *(v30 + 32) = "performAction(of:with:in:withReplyHandler:)";
      *(v30 + 40) = 43;
      *(v30 + 48) = 2;
      v31 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();
      v32 = sub_22273955C();
      v46 = v31;
      v47 = MEMORY[0x277D225C0];
      *&v45 = v32;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v48);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      return;
    }

    sub_222660468(&v45, &unk_27D013240, &unk_222741770);
    type metadata accessor for ASCAppOfferActionError(0);
    *&v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 40) = v35;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_22273991C();
    swift_getObjectType();
    v36 = sub_222739D2C();
    v38 = v37;

    v48 = v36;
    v49 = v38;
    MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
    v39 = v48;
    v40 = v49;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v39;
    *(inited + 56) = v40;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    v41 = v48;
    v33 = v48;
    v42(v41);
  }

  else
  {
    swift_endAccess();
    [v16 unlock];
    type metadata accessor for ASCAppOfferActionError(0);
    *&v45 = 0;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    v33 = v48;
    v42(v48);
  }
}

uint64_t sub_22270B900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[75] = a8;
  v8[74] = a7;
  v8[73] = a6;
  v8[72] = a5;
  v8[71] = a4;
  v8[70] = a3;
  v8[69] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v8[76] = swift_task_alloc();
  v9 = sub_2227383CC();
  v8[77] = v9;
  v8[78] = *(v9 - 8);
  v8[79] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v8[80] = v10;
  v8[81] = *(v10 - 8);
  v8[82] = swift_task_alloc();
  v11 = sub_22273887C();
  v8[83] = v11;
  v8[84] = *(v11 - 8);
  v8[85] = swift_task_alloc();
  sub_2227381BC();
  v8[86] = swift_task_alloc();
  v12 = sub_2227378CC();
  v8[87] = v12;
  v8[88] = *(v12 - 8);
  v8[89] = swift_task_alloc();
  v13 = sub_22273793C();
  v8[90] = v13;
  v8[91] = *(v13 - 8);
  v8[92] = swift_task_alloc();
  v14 = sub_2227377AC();
  v8[93] = v14;
  v8[94] = *(v14 - 8);
  v8[95] = swift_task_alloc();
  sub_222737C2C();
  v8[96] = swift_task_alloc();
  v15 = sub_2227377BC();
  v8[97] = v15;
  v8[98] = *(v15 - 8);
  v8[99] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v8[100] = v16;
  v17 = *(v16 - 8);
  v8[101] = v17;
  v8[102] = *(v17 + 64);
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270BD1C, 0, 0);
}

uint64_t sub_22270BD1C()
{
  v1 = *(v0 + 560);
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  swift_getObjectType();
  v2 = [v1 id];
  [v2 int64value];
  sub_222737C1C();
  v57 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v60 = *(v0 + 696);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v55 = *(v0 + 560);
  (*(*(v0 + 752) + 104))(*(v0 + 760), *MEMORY[0x277CEBFE8], *(v0 + 744));
  sub_22273778C();

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_222694714();
  sub_2227379EC();
  (*(v4 + 8))(v3, v60);
  v8 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v8);
  if (sub_2226FA338(v55, v57, v8, v7))
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 560);
    v12 = sub_222738F6C();
    *(v0 + 840) = v12;
    *(v0 + 848) = __swift_project_value_buffer(v12, qword_2813141C0);
    *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v13 = *(sub_2227381FC() - 8);
    *(v0 + 864) = *(v13 + 72);
    *(v0 + 912) = *(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v14 = [v11 id];
    v15 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 872) = v15;
    *(v0 + 280) = v15;
    *(v0 + 256) = v14;
    sub_22273816C();
    sub_222660468(v0 + 256, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A8, &qword_222745620);
    sub_222737FBC();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2227413C0;
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    *(v0 + 472) = v10;
    v17 = v10;
    sub_222737FAC();
    sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
    *(v0 + 480) = v9;
    v18 = v9;
    sub_222737FAC();
    *(v0 + 488) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144B0, &qword_222745628);
    sub_22262BED4(&qword_27D0144B8, &qword_27D0144B0, &qword_222745628, MEMORY[0x277D83970]);
    *(v0 + 880) = sub_22273856C();

    sub_22273886C();
    *(v0 + 496) = v11;
    if (qword_27D0129E0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 584);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
    __swift_project_value_buffer(v20, qword_27D019CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
    sub_22273885C();
    *(v0 + 504) = v19;
    v21 = qword_27D0129D0;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 680);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    v26 = *(v0 + 656);
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    v29 = *(v0 + 584);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v30, qword_27D019C98);
    sub_22273885C();

    (*(v24 + 16))(v26, v23, v25);
    (*(v27 + 104))(v26, *MEMORY[0x277D21E10], v28);
    *(v0 + 888) = sub_22273862C();
    (*(v27 + 8))(v26, v28);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
    v32 = sub_22262BED4(&qword_27D0144C0, &qword_27D012F68, &unk_222741250, MEMORY[0x277D224B8]);
    v33 = swift_task_alloc();
    *(v0 + 896) = v33;
    *v33 = v0;
    v33[1] = sub_22270C9E4;
    v34 = *(v0 + 632);

    return MEMORY[0x282180360](v34, v31, v32);
  }

  else
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 824);
    v50 = *(v0 + 832);
    v35 = *(v0 + 808);
    v56 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 792);
    v51 = *(v0 + 816);
    v52 = *(v0 + 728);
    v53 = *(v0 + 720);
    v54 = *(v0 + 736);
    v47 = *(v0 + 608);
    v48 = *(v0 + 800);
    v36 = *(v0 + 560);
    v61 = *(v0 + 552);
    v37 = sub_222738F6C();
    __swift_project_value_buffer(v37, qword_2813141C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v38 = [v36 id];
    *(v0 + 248) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 224) = v38;
    sub_22273816C();
    sub_222660468(v0 + 224, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_22273813C();
    sub_222738C6C();

    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 464) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v40;
    *(inited + 48) = 0xD000000000000022;
    *(inited + 56) = 0x800000022274E1A0;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    v41 = *(v0 + 456);
    v42 = sub_22273946C();
    (*(*(v42 - 8) + 56))(v47, 1, 1, v42);
    (*(v35 + 16))(v49, v50, v48);
    v43 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    *(v44 + 4) = v41;
    (*(v35 + 32))(&v44[v43], v49, v48);
    *&v44[(v51 + v43 + 7) & 0xFFFFFFFFFFFFFFF8] = v61;
    v41;

    sub_22269994C(0, 0, v47, &unk_222745618, v44);

    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    (*(v56 + 8))(v59, v58);
    (*(v35 + 8))(v50, v48);

    v45 = *(v0 + 8);

    return v45();
  }
}