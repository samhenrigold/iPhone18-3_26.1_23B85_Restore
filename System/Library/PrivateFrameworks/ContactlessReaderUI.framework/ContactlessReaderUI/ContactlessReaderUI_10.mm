uint64_t sub_2440601C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244060228@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_24405E784(a1, v6, a2);
}

uint64_t sub_2440602A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_244060350@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result;
  return result;
}

uint64_t sub_2440603F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v124 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F08, &qword_2440E3D00);
  v141 = *(v9 - 8);
  v142 = v9;
  MEMORY[0x28223BE20](v9);
  v135 = &v116 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F10, &qword_2440E3D08);
  MEMORY[0x28223BE20](v132);
  v131 = (&v116 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F18, &qword_2440E3D10);
  MEMORY[0x28223BE20](v12 - 8);
  v134 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v133 = &v116 - v15;
  v16 = sub_2440D1F60();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F20, &qword_2440E3D18);
  MEMORY[0x28223BE20](v19);
  v21 = &v116 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F28, &qword_2440E3D20);
  MEMORY[0x28223BE20](v136);
  v23 = &v116 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F30, &qword_2440E3D28);
  v122 = *(v24 - 8);
  v123 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v116 - v25;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F38, &qword_2440E3D30);
  MEMORY[0x28223BE20](v139);
  v137 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v127 = &v116 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F40, &qword_2440E3D38);
  v128 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v138 = &v116 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F48, &qword_2440E3D40);
  MEMORY[0x28223BE20](v32 - 8);
  v129 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v140 = &v116 - v35;
  v36 = a1[10];
  LOBYTE(v147) = *(a1 + 72);
  v148 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v37 = a3;
  v38 = 1;
  if (LOBYTE(v143[0]) == 1)
  {
    v120 = v30;
    v121 = v37;
    v39 = *sub_244070850() > a4;
    sub_2440D1650();
    v40 = a1[21];
    v147 = a1[20];
    v148 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0, &qword_2440DCCE0);
    sub_2440D2820();
    *v21 = sub_2440D1C20();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F50, &qword_2440E3D48);
    v42 = sub_244061330(v39, a1, &v21[*(v41 + 44)], a4);
    *&v21[*(v19 + 36)] = sub_243F9A09C(v42, v43, v44, v45, v46, v47, v48, v49);
    sub_244066EB4();
    sub_2440D2510();
    sub_243F5EED4(v21, &qword_27EDC4F20, &qword_2440E3D18);
    sub_2440D1F40();
    v50 = sub_244066F98();
    v117 = v26;
    sub_2440D2490();
    (*(v125 + 8))(v18, v126);
    sub_243F5EED4(v23, &qword_27EDC4F28, &qword_2440E3D20);
    v52 = *a1;
    v51 = a1[1];
    v53 = *(a1 + 16);
    v54 = type metadata accessor for TapViewModel(0);
    v55 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
    v56 = *sub_2440D1490();
    v57 = (*(v56 + 808))();

    v58 = sub_243FA1978(v57, 2);
    v125 = v54;
    v126 = v51;
    v124 = v55;
    v130 = a1;
    if (v58)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
      v61 = v53;
    }

    else
    {
      v62 = *sub_2440D1490();
      v63 = (*(v62 + 808))();

      v61 = v53;
      if (sub_243FA1978(v63, 3))
      {
        v59 = 0;
        v60 = 0xE000000000000000;
      }

      else
      {
        v64 = *sub_2440D1490();
        v59 = (*(v64 + 952))();
        v60 = v65;
      }
    }

    v147 = v59;
    v148 = v60;
    sub_243F4EF64();
    v66 = sub_2440D2310();
    v68 = v67;
    v70 = v69;
    v147 = v136;
    v148 = v50;
    swift_getOpaqueTypeConformance2();
    v71 = v123;
    v72 = v117;
    sub_2440D2430();
    sub_243F62C68(v66, v68, v70 & 1);

    (*(v122 + 8))(v72, v71);
    v73 = *sub_2440D1490();
    LOBYTE(v71) = (*(v73 + 808))();

    v74 = sub_243FA1978(v71, 2);
    v119 = v52;
    v118 = v61;
    if (v74 || (v75 = *sub_2440D1490(), v76 = (*(v75 + 808))(), , sub_243FA1978(v76, 3)))
    {
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    else
    {
      v79 = *sub_2440D1490();
      v77 = (*(v79 + 1000))();
      v78 = v80;
    }

    v147 = v77;
    v148 = v78;
    v81 = sub_2440D2310();
    v83 = v82;
    v85 = v84;
    v86 = v127;
    v87 = v137;
    sub_2440D17D0();
    sub_243F62C68(v81, v83, v85 & 1);

    sub_243F5EED4(v87, &qword_27EDC4F38, &qword_2440E3D30);
    type metadata accessor for TapView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
    sub_2440D1E60();
    LOBYTE(v143[0]) = 2;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258, &qword_2440E3AF0);
    v89 = sub_244067054();
    v90 = sub_243F67D98();
    sub_2440D24A0();

    sub_243F5EED4(v86, &qword_27EDC4F38, &qword_2440E3D30);
    v91 = *sub_2440D1490();
    (*(v91 + 760))(v143);

    if (v143[5])
    {
      sub_243F5EED4(v143, &qword_27EDBFF68, &qword_2440DDE10);
    }

    v147 = v139;
    v148 = v88;
    v149 = v89;
    v150 = v90;
    swift_getOpaqueTypeConformance2();
    v92 = v120;
    v93 = v138;
    sub_2440D2480();
    (*(v128 + 8))(v93, v92);
    v94 = sub_2440D1C20();
    v95 = v131;
    *v131 = v94;
    *(v95 + 8) = 0;
    *(v95 + 16) = 0;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F80, &qword_2440E3D58);
    sub_244063838(v130, v95 + *(v96 + 44), a5 / 3.0);
    sub_2440D2B00();
    sub_2440D1560();
    v97 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F88, &qword_2440E3D60) + 36));
    v98 = v145;
    *v97 = v144;
    v97[1] = v98;
    v97[2] = v146;
    LOBYTE(v93) = sub_2440D20D0();
    sub_244071480();
    sub_2440D13D0();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4F90, &qword_2440E3D68) + 36);
    *v107 = v93;
    *(v107 + 8) = v100;
    *(v107 + 16) = v102;
    *(v107 + 24) = v104;
    *(v107 + 32) = v106;
    *(v107 + 40) = 0;
    *(v95 + *(v132 + 36)) = 0;
    v108 = *sub_2440D1490();
    (*(v108 + 760))(&v147);

    if (v151)
    {
      sub_243F5EED4(&v147, &qword_27EDBFF68, &qword_2440DDE10);
    }

    sub_24406714C();
    v109 = v133;
    sub_2440D2480();
    sub_243F5EED4(v95, &qword_27EDC4F10, &qword_2440E3D08);
    v110 = v140;
    v111 = v129;
    sub_243F5F574(v140, v129, &qword_27EDC4F48, &qword_2440E3D40);
    v112 = v134;
    sub_243F5F574(v109, v134, &qword_27EDC4F18, &qword_2440E3D10);
    v113 = v135;
    sub_243F5F574(v111, v135, &qword_27EDC4F48, &qword_2440E3D40);
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FC0, &qword_2440E3D80);
    sub_243F5F574(v112, v113 + *(v114 + 48), &qword_27EDC4F18, &qword_2440E3D10);
    sub_243F5EED4(v109, &qword_27EDC4F18, &qword_2440E3D10);
    sub_243F5EED4(v110, &qword_27EDC4F48, &qword_2440E3D40);
    sub_243F5EED4(v112, &qword_27EDC4F18, &qword_2440E3D10);
    sub_243F5EED4(v111, &qword_27EDC4F48, &qword_2440E3D40);
    v37 = v121;
    sub_243F681C8(v113, v121, &qword_27EDC4F08, &qword_2440E3D00);
    v38 = 0;
  }

  return (*(v141 + 56))(v37, v38, 1, v142);
}

uint64_t sub_244061330@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  LODWORD(v194) = a1;
  v193 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FD8, &qword_2440E3DA0);
  v189 = *(v8 - 8);
  v190 = v8;
  MEMORY[0x28223BE20](v8);
  v157 = &v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FE0, &qword_2440E3DA8);
  MEMORY[0x28223BE20](v10 - 8);
  v192 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v201 = &v156 - v13;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FE8, &qword_2440E3DB0);
  MEMORY[0x28223BE20](v160);
  v159 = &v156 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FF0, &qword_2440E3DB8);
  v187 = *(v15 - 8);
  v188 = v15;
  MEMORY[0x28223BE20](v15);
  v158 = &v156 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FF8, &qword_2440E3DC0);
  MEMORY[0x28223BE20](v17 - 8);
  v191 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v200 = &v156 - v20;
  v21 = type metadata accessor for TapView(0);
  v182 = *(v21 - 8);
  v197 = *(v182 + 8);
  MEMORY[0x28223BE20](v21 - 8);
  v196 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2440D1D40();
  MEMORY[0x28223BE20](v181);
  v178 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2440D1460();
  v25 = *(v24 - 8);
  v183 = v24;
  v184 = v25;
  MEMORY[0x28223BE20](v24);
  v176 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5000, &qword_2440E3DC8);
  v28 = *(v27 - 8);
  v185 = v27;
  v186 = v28;
  MEMORY[0x28223BE20](v27);
  v180 = &v156 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5008, &qword_2440E3DD0);
  MEMORY[0x28223BE20](v30 - 8);
  v163 = (&v156 - v31);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5010, &qword_2440E3DD8) - 8;
  MEMORY[0x28223BE20](v165);
  v164 = &v156 - v32;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5018, &qword_2440E3DE0);
  MEMORY[0x28223BE20](v171);
  v166 = &v156 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5020, &qword_2440E3DE8);
  v173 = *(v34 - 8);
  v174 = v34;
  MEMORY[0x28223BE20](v34);
  v170 = &v156 - v35;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5028, &qword_2440E3DF0);
  MEMORY[0x28223BE20](v172);
  v195 = &v156 - v36;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5030, &qword_2440E3DF8);
  v179 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v156 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5038, &qword_2440E3E00);
  MEMORY[0x28223BE20](v38 - 8);
  v199 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v207 = &v156 - v41;
  v42 = sub_2440D1B10();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v162 = &v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v156 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5040, &qword_2440E3E08);
  MEMORY[0x28223BE20](v48 - 8);
  v198 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v208 = &v156 - v51;
  v203 = *(a2 + 56);
  v202 = a2[8];
  LOBYTE(v213[0]) = v203;
  *(&v213[0] + 1) = v202;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v161 = LOBYTE(v209[0]);
  v53 = a2[1];
  v167 = *a2;
  v169 = v53;
  v204 = *(a2 + 16);
  v168 = type metadata accessor for TapViewModel(0);
  v205 = sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v280[0] = v213[0];
  v280[1] = v213[1];
  *v281 = v213[2];
  *(&v281[1] + 1) = *(&v213[2] + 9);
  v206 = a2;
  v54 = a2[17];
  LOBYTE(v282[0]) = *(a2 + 128);
  v282[1] = v54;
  sub_2440D2840();
  v56 = *(&v209[0] + 1);
  v55 = *&v209[0];
  LOBYTE(v53) = v209[1];
  sub_243F676A0();
  sub_243F62020();
  sub_243F68750();
  sub_243F93FC0(v194, v161, v280, v55, v56, v53, v241, a4);
  sub_2440D1B00();
  (*(v43 + 16))(v162, v47, v42);
  sub_2440678A4(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v57 = sub_2440D1610();
  (*(v43 + 8))(v47, v42);
  sub_2440D2AE0();
  sub_2440D1560();
  LOBYTE(v56) = sub_2440D20D0();
  sub_2440D13D0();
  LOBYTE(v209[0]) = 0;
  v213[6] = v241[6];
  v213[7] = v241[7];
  v213[8] = v241[8];
  v213[2] = v241[2];
  v213[3] = v241[3];
  v213[4] = v241[4];
  v213[5] = v241[5];
  v213[0] = v241[0];
  v213[1] = v241[1];
  *&v213[9] = v242;
  *(&v213[9] + 1) = v57;
  v213[10] = *&v281[5];
  v213[11] = *&v281[7];
  v213[12] = *&v281[9];
  *&v213[13] = 0x3FF0000000000000;
  BYTE8(v213[13]) = v56;
  *&v213[14] = v58;
  *(&v213[14] + 1) = v59;
  *&v213[15] = v60;
  *(&v213[15] + 1) = v61;
  LOBYTE(v213[16]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5048, &qword_2440E3E38);
  sub_244067424();
  v62 = v206;
  sub_2440D2480();
  memcpy(v282, v213, 0x101uLL);
  sub_243F5EED4(v282, &qword_27EDC5048, &qword_2440E3E38);
  v63 = sub_2440D2B00();
  v64 = v163;
  *v163 = v63;
  *(v64 + 8) = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5078, &qword_2440E3E58);
  sub_244063090(v62, v64 + *(v66 + 44));
  sub_2440D2AE0();
  sub_2440D18E0();
  v67 = v164;
  sub_243F681C8(v64, v164, &qword_27EDC5008, &qword_2440E3DD0);
  v68 = (v67 + *(v165 + 44));
  v69 = v246;
  v70 = v248;
  v68[4] = v247;
  v68[5] = v70;
  v68[6] = v249;
  v71 = v244;
  *v68 = v243;
  v68[1] = v71;
  v68[2] = v245;
  v68[3] = v69;
  LOBYTE(v56) = sub_2440D20C0();
  LOBYTE(v213[0]) = v203;
  *(&v213[0] + 1) = v202;
  v194 = v52;
  sub_2440D2820();
  sub_2440D13D0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v166;
  sub_243F681C8(v67, v166, &qword_27EDC5010, &qword_2440E3DD8);
  v81 = v171;
  v82 = v80 + *(v171 + 36);
  *v82 = v56;
  *(v82 + 8) = v73;
  *(v82 + 16) = v75;
  *(v82 + 24) = v77;
  *(v82 + 32) = v79;
  *(v82 + 40) = 0;
  v83 = *(v62 + 168);
  *&v209[0] = *(v62 + 160);
  *(&v209[0] + 1) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0, &qword_2440DCCE0);
  sub_2440D2840();
  v85 = *(&v213[0] + 1);
  v84 = *&v213[0];
  v86 = *&v213[1];
  v87 = sub_2440675F4();
  v88 = v170;
  sub_24408F184(v84, v85, 1, v81, v87, v86);

  sub_243F5EED4(v80, &qword_27EDC5018, &qword_2440E3DE0);
  v89 = v195;
  (*(v173 + 32))(v195, v88, v174);
  v90 = v172;
  *&v89[*(v172 + 36)] = 0x4000000000000000;
  sub_2440D1E90();
  v91 = v176;
  sub_2440D1430();
  v92 = v196;
  sub_2440601C0(v62, v196);
  v93 = (*(v182 + 80) + 16) & ~*(v182 + 80);
  v94 = swift_allocObject();
  v182 = type metadata accessor for TapView;
  sub_244066E4C(v92, v94 + v93, type metadata accessor for TapView);
  sub_2440678A4(&qword_27EDC5098, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  v95 = v180;
  v96 = v183;
  sub_2440D29D0();

  (*(v184 + 8))(v91, v96);
  sub_2440D1480();
  v97 = sub_2440678EC();
  v98 = sub_243F5DD50(&qword_27EDC50A8, &qword_27EDC5000, &qword_2440E3DC8, MEMORY[0x277CDF728]);
  v99 = v175;
  v100 = v185;
  v101 = v195;
  sub_2440D2580();
  (*(v186 + 8))(v95, v100);
  sub_243F5EED4(v101, &qword_27EDC5028, &qword_2440E3DF0);
  v102 = v196;
  sub_2440601C0(v206, v196);
  v103 = swift_allocObject() + v93;
  sub_244066E4C(v102, v103, v182);
  *&v213[0] = v90;
  *(&v213[0] + 1) = v100;
  *&v213[1] = v97;
  *(&v213[1] + 1) = v98;
  swift_getOpaqueTypeConformance2();
  v104 = v177;
  sub_2440D2500();

  (*(v179 + 8))(v99, v104);
  v105 = *sub_2440D1490();
  LOBYTE(v104) = (*(v105 + 808))();

  v106 = sub_243FA1978(v104, 0);
  v107 = MEMORY[0x277D84F90];
  if (v106)
  {
    v108 = *sub_2440D1490();
    v109 = (*(v108 + 520))();

    if (v109)
    {
      v107 = v109;
    }
  }

  LOBYTE(v213[0]) = v203;
  *(&v213[0] + 1) = v202;
  sub_2440D2820();
  v110 = v209[0];
  v111 = *sub_2440D1490();
  (*(v111 + 760))(v250);

  v112 = v251;
  if (v251)
  {
    sub_243F5EED4(v250, &qword_27EDBFF68, &qword_2440DDE10);
  }

  sub_243F62020();
  sub_243F676A0();
  sub_243F8D10C(v107, v110, 0xD000000000000017, 0x80000002440E9E00, v112 != 0, &v234);
  v197 = *sub_243F99F1C();

  sub_2440D2AE0();
  sub_2440D18E0();
  LODWORD(v196) = sub_2440D20C0();
  sub_2440D13D0();
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v239 = 0;
  v121 = v206[13];
  v213[0] = *(v206 + 11);
  *&v213[1] = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DB0, &qword_2440E3978);
  sub_2440D2820();
  v122 = *(&v209[0] + 1);
  if (*(&v209[0] + 1))
  {
    v123 = *&v209[0];
    v124 = *sub_2440D1490();
    v125 = (*(v124 + 808))();

    if (sub_243FA1978(v125, 2))
    {
      LOBYTE(v213[0]) = v203;
      *(&v213[0] + 1) = v202;
      sub_2440D2820();
      v126 = v209[0];
      sub_243F676A0();
      sub_243F62020();
      sub_243FE5F44(v123, v122, v126, v213);
      sub_243FE6334();
      sub_24408F1D8();
    }
  }

  v127 = v200;
  (*(v187 + 56))(v200, 1, 1, v188);
  v128 = *sub_2440D1490();
  (*(v128 + 472))(&v252);
  v224 = v262;
  v225 = v263;
  v226 = v264;
  v220 = v258;
  v221 = v259;
  v223 = v261;
  v222 = v260;
  v216 = v254;
  v217 = v255;
  v219 = v257;
  v218 = v256;
  v215 = v253;
  v214 = v252;

  v275 = v262;
  v276 = v263;
  v277 = v264;
  v271 = v258;
  v272 = v259;
  v274 = v261;
  v273 = v260;
  v267 = v254;
  v268 = v255;
  v270 = v257;
  v269 = v256;
  v266 = v253;
  v265 = v252;
  if (sub_244067B58(&v265) == 1)
  {
    goto LABEL_14;
  }

  v278[10] = v275;
  v278[11] = v276;
  v279 = v277;
  v278[6] = v271;
  v278[7] = v272;
  v278[9] = v274;
  v278[8] = v273;
  v278[2] = v267;
  v278[3] = v268;
  v278[5] = v270;
  v278[4] = v269;
  v278[1] = v266;
  v278[0] = v265;
  v129 = *sub_2440D1490();
  v130 = (*(v129 + 808))();

  if (!sub_243FA1978(v130, 1))
  {
    sub_243F5EED4(&v252, &qword_27EDC50C0, &qword_2440E3E70);
LABEL_14:
    v135 = v201;
    (*(v189 + 56))(v201, 1, 1, v190);
    goto LABEL_15;
  }

  LOBYTE(v209[0]) = v203;
  *(&v209[0] + 1) = v202;
  v210[10] = v224;
  v210[11] = v225;
  v211 = v226;
  v210[6] = v220;
  v210[7] = v221;
  v210[8] = v222;
  v210[9] = v223;
  v210[2] = v216;
  v210[3] = v217;
  v210[4] = v218;
  v210[5] = v219;
  v210[0] = v214;
  v210[1] = v215;
  sub_243FB07E4(v210, v213);
  sub_2440D2820();
  v131 = v213[0];
  sub_243F676A0();
  sub_243F62020();
  sub_243F676A0();
  sub_243FB23F8(v278, v131, v212);
  v132 = *sub_243F99F88();
  v209[12] = v212[12];
  v209[13] = v212[13];
  v209[14] = v212[14];
  v209[15] = v212[15];
  v209[8] = v212[8];
  v209[9] = v212[9];
  v209[10] = v212[10];
  v209[11] = v212[11];
  v209[4] = v212[4];
  v209[5] = v212[5];
  v209[6] = v212[6];
  v209[7] = v212[7];
  v209[0] = v212[0];
  v209[1] = v212[1];
  v209[2] = v212[2];
  v209[3] = v212[3];
  *&v209[16] = v132;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50C8, &qword_2440E3E78);
  sub_244067B70();
  v133 = v157;
  sub_2440D2480();
  sub_243F5EED4(&v252, &qword_27EDC50C0, &qword_2440E3E70);
  memcpy(v213, v209, 0x108uLL);
  sub_243F5EED4(v213, &qword_27EDC50C8, &qword_2440E3E78);
  v134 = v133;
  v135 = v201;
  sub_243F681C8(v134, v201, &qword_27EDC4FD8, &qword_2440E3DA0);
  (*(v189 + 56))(v135, 0, 1, v190);
LABEL_15:
  v136 = v198;
  sub_243F5F574(v208, v198, &qword_27EDC5040, &qword_2440E3E08);
  v137 = v199;
  sub_243F5F574(v207, v199, &qword_27EDC5038, &qword_2440E3E00);
  v138 = v191;
  sub_243F5F574(v127, v191, &qword_27EDC4FF8, &qword_2440E3DC0);
  v139 = v192;
  sub_243F5F574(v135, v192, &qword_27EDC4FE0, &qword_2440E3DA8);
  v140 = v136;
  v141 = v193;
  sub_243F5F574(v140, v193, &qword_27EDC5040, &qword_2440E3E08);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50B0, &qword_2440E3E60);
  sub_243F5F574(v137, v141 + v142[12], &qword_27EDC5038, &qword_2440E3E00);
  v143 = (v141 + v142[16]);
  v209[2] = v236;
  v209[3] = v237;
  v209[0] = v234;
  v209[1] = v235;
  v144 = v197;
  *&v209[4] = v238;
  *(&v209[4] + 1) = v197;
  v209[9] = v231;
  v209[10] = v232;
  v209[11] = v233;
  v209[5] = v227;
  v209[6] = v228;
  v209[7] = v229;
  v209[8] = v230;
  v145 = v196;
  LOBYTE(v209[12]) = v196;
  DWORD1(v209[12]) = *&v240[3];
  *(&v209[12] + 1) = *v240;
  *(&v209[12] + 1) = v114;
  *&v209[13] = v116;
  *(&v209[13] + 1) = v118;
  *&v209[14] = v120;
  BYTE8(v209[14]) = 0;
  v146 = v235;
  *v143 = v234;
  v143[1] = v146;
  v147 = v209[5];
  v143[4] = v209[4];
  v143[5] = v147;
  v148 = v209[3];
  v143[2] = v209[2];
  v143[3] = v148;
  v149 = v209[11];
  v143[10] = v209[10];
  v143[11] = v149;
  v150 = v209[9];
  v143[8] = v209[8];
  v143[9] = v150;
  v151 = v209[7];
  v143[6] = v209[6];
  v143[7] = v151;
  v152 = *(&v209[13] + 9);
  v153 = v209[13];
  v143[12] = v209[12];
  v143[13] = v153;
  *(v143 + 217) = v152;
  v154 = v141 + v142[20];
  *v154 = 0;
  *(v154 + 8) = 1;
  sub_243F5F574(v138, v141 + v142[24], &qword_27EDC4FF8, &qword_2440E3DC0);
  sub_243F5F574(v139, v141 + v142[28], &qword_27EDC4FE0, &qword_2440E3DA8);
  sub_243F5F574(v209, v213, &qword_27EDC50B8, &qword_2440E3E68);
  sub_243F5EED4(v201, &qword_27EDC4FE0, &qword_2440E3DA8);
  sub_243F5EED4(v200, &qword_27EDC4FF8, &qword_2440E3DC0);
  sub_243F5EED4(v207, &qword_27EDC5038, &qword_2440E3E00);
  sub_243F5EED4(v208, &qword_27EDC5040, &qword_2440E3E08);
  sub_243F5EED4(v139, &qword_27EDC4FE0, &qword_2440E3DA8);
  sub_243F5EED4(v138, &qword_27EDC4FF8, &qword_2440E3DC0);
  v213[2] = v236;
  v213[3] = v237;
  v213[1] = v235;
  v213[0] = v234;
  *&v213[4] = v238;
  *(&v213[4] + 1) = v144;
  v213[9] = v231;
  v213[10] = v232;
  v213[11] = v233;
  v213[5] = v227;
  v213[6] = v228;
  v213[8] = v230;
  v213[7] = v229;
  LOBYTE(v213[12]) = v145;
  DWORD1(v213[12]) = *&v240[3];
  *(&v213[12] + 1) = *v240;
  *(&v213[12] + 1) = v114;
  *&v213[13] = v116;
  *(&v213[13] + 1) = v118;
  *&v213[14] = v120;
  BYTE8(v213[14]) = 0;
  sub_243F5EED4(v213, &qword_27EDC50B8, &qword_2440E3E68);
  sub_243F5EED4(v199, &qword_27EDC5038, &qword_2440E3E00);
  return sub_243F5EED4(v198, &qword_27EDC5040, &qword_2440E3E08);
}

double sub_244062F60@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 568))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_244062FCC(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v8 = v6;
  v9 = v2;
  v10 = *(a1 + 4);
  v3 = *(**a2 + 576);
  sub_243F5F574(&v8, v5, &qword_27EDC06A0, &qword_2440DF5F0);
  sub_243F5F574(&v9, v5, &qword_27EDC3378, &unk_2440E6060);
  return v3(&v6);
}

uint64_t sub_244063090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for TapView(0);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v4;
  v44 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50E8, &qword_2440E3E80);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v36[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC50F0, &qword_2440E3E88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v36[-v9];
  v49 = a1;
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v10 = *sub_2440D1490();
  (*(v10 + 472))(v54);

  v68 = v54[10];
  v69 = v54[11];
  v70 = v55;
  v64 = v54[6];
  v65 = v54[7];
  v67 = v54[9];
  v66 = v54[8];
  v60 = v54[2];
  v61 = v54[3];
  v63 = v54[5];
  v62 = v54[4];
  v58 = v54[0];
  v59 = v54[1];
  if (sub_244067B58(&v58) == 1)
  {
    return (*(v8 + 56))(v50, 1, 1, v7);
  }

  v40 = v8;
  v41 = v7;
  v71[10] = v68;
  v71[11] = v69;
  v72 = v70;
  v71[6] = v64;
  v71[7] = v65;
  v71[9] = v67;
  v71[8] = v66;
  v71[2] = v60;
  v71[3] = v61;
  v71[5] = v63;
  v71[4] = v62;
  v71[1] = v59;
  v71[0] = v58;
  v12 = *sub_2440D1490();
  v13 = (*(v12 + 904))();
  v38 = v14;
  v39 = v13;

  v15 = *sub_2440D1490();
  (*(v15 + 760))(v56);

  v16 = v57;
  if (v57)
  {
    sub_243F5EED4(v56, &qword_27EDBFF68, &qword_2440DDE10);
  }

  v37 = v16 != 0;
  v17 = v49;
  v18 = *(v49 + 64);
  LOBYTE(v51[0]) = *(v49 + 56);
  v51[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2840();
  v19 = v53[0];
  v20 = v53[1];
  v21 = v53[2];
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v22 = v51[36];
  v23 = v51[37];
  v24 = v52;
  sub_243FB07E4(v71, v53);
  sub_243FFBAD8(v71, v39, v38, v37, v19, v20, v21, v22, v51, v23, v24);
  v25 = v44;
  sub_2440601C0(v17, v44);
  v26 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v27 = swift_allocObject();
  sub_244066E4C(v25, v27 + v26, type metadata accessor for TapView);
  v28 = sub_243FFDD84();
  v29 = v46;
  sub_2440D23D0();

  memcpy(v53, v51, sizeof(v53));
  sub_243FFDDD8(v53);
  sub_2440601C0(v49, v25);
  v30 = swift_allocObject();
  sub_244066E4C(v25, v30 + v26, type metadata accessor for TapView);
  v51[0] = &type metadata for TapCenterView;
  v51[1] = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v48;
  sub_2440D2460();

  sub_243F5EED4(v54, &qword_27EDC50C0, &qword_2440E3E70);
  (*(v47 + 8))(v29, v32);
  v34 = v40;
  v33 = v41;
  v35 = v50;
  (*(v40 + 32))(v50, v31, v41);
  return (*(v34 + 56))(v35, 0, 1, v33);
}

uint64_t sub_244063794@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result;
  return result;
}

uint64_t sub_244063838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FC8, &unk_2440E3D88);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = (&v33 - v5);
  v7 = type metadata accessor for TapView(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E70, &qword_2440DB0F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v15 = *sub_2440D1490();
  v16 = (*(v15 + 664))();

  if (v16)
  {
    v17 = sub_2440707F0();
    swift_beginAccess();
    if (a3 - *v17 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = a3 - *v17;
    }

    sub_2440601C0(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v20 = swift_allocObject();
    v21 = sub_244066E4C(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TapView);
    v22 = sub_243FBB128(v21);
    v23 = sub_243F795D0(v22);
    v24 = sub_243FB9098();
    sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v22, v23, 0xD000000000000011, 0x80000002440EE230, sub_244067348, v20, v40, v24);
    v25 = sub_243F68750();
    v38 = sub_2440579C8(v25 & 1, 0x435F4E4F54545542, 0xED00004C45434E41);
    v39 = v26;
    sub_243FBC9E4();
    sub_243F4EF64();
    sub_2440D2440();

    v42[2] = v40[2];
    v42[3] = v40[3];
    v43 = v41;
    v42[0] = v40[0];
    v42[1] = v40[1];
    sub_243FBCA38(v42);
    sub_243F5F574(v14, v11, &qword_27EDC1E70, &qword_2440DB0F0);
    *v6 = v18;
    *(v6 + 8) = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4FD0, &qword_2440E3D98);
    sub_243F5F574(v11, v6 + *(v27 + 48), &qword_27EDC1E70, &qword_2440DB0F0);
    sub_243F5EED4(v14, &qword_27EDC1E70, &qword_2440DB0F0);
    sub_243F5EED4(v11, &qword_27EDC1E70, &qword_2440DB0F0);
    v28 = v37;
    sub_243F681C8(v6, v37, &qword_27EDC4FC8, &unk_2440E3D88);
    return (*(v35 + 56))(v28, 0, 1, v36);
  }

  else
  {
    v30 = *(v35 + 56);
    v31 = v37;
    v32 = v36;

    return v30(v31, 1, 1, v32);
  }
}

void sub_244063D68(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F80, &unk_2440DE500);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  sub_243FF70E0(a1, v10);
  v7 = sub_244030640();
  sub_24403067C(a1, v7, v9, v8 & 1, v4);
  sub_2440678A4(&qword_27EDC2F88, type metadata accessor for BottomErrorView, &unk_2440E1350);
  sub_24408F1D8();
}

uint64_t sub_244063EDC()
{
  sub_243FF7184(v6);
  v7 = sub_2440D20D0();
  sub_2440707B4();
  sub_2440D13D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F90, &unk_2440E0520) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_2440D20A0();
  sub_2440D13D0();
  v18 = v4 + *(v5 + 44);
  *v18 = v17;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  *(v18 + 32) = v22;
  *(v18 + 40) = 0;
  sub_243F5F574(v4, v3, v1, v2);
  *v0 = 0;
  *(v0 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F98, &qword_2440DE510);
  sub_243F5F574(v3, v0 + *(v23 + 48), v1, v2);
  sub_243F5EED4(v4, v1, v2);
  return sub_243F5EED4(v3, v1, v2);
}

uint64_t sub_244063FF4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = *a1;
  v8 = sub_243F4DF28();
  sub_243F5F574(v8, v6, &qword_27EDC0A50, &qword_2440D5CB0);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v11 = sub_2440D11C0();
    v12 = sub_2440D3460();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243F48000, v11, v12, "Did receive update from orientation", v13, 2u);
      MEMORY[0x245D58570](v13, -1, -1);
    }

    (*(v10 + 8))(v6, v9);
  }

  v14 = *(a2 + 64);
  v16[16] = *(a2 + 56);
  v17 = v14;
  v16[15] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  return sub_2440D2830();
}

uint64_t sub_2440641D8(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for TapView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_244063FF4(a2, v5);
}

unint64_t sub_244064248()
{
  result = qword_27EDC4DE8;
  if (!qword_27EDC4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DE0, &qword_2440E39B8);
    sub_243F5DD50(&qword_27EDC4DF0, &qword_27EDC4DF8, &unk_2440E39C0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4DE8);
  }

  return result;
}

double sub_244064300(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v2 = sub_2440D2B70();
  }

  else
  {
    v2 = sub_2440D2BD0();
  }

  MEMORY[0x28223BE20](v2);
  sub_2440D16E0();

  return result;
}

double sub_244064408(char *a1, uint64_t a2)
{
  sub_24400ECA4();
  sub_2440D31F0();
  v2 = sub_2440D31F0();
  if (v4 == v5)
  {
    MEMORY[0x28223BE20](v2);
    sub_2440D2BA0();
    sub_2440D16E0();
  }

  else
  {
    sub_2440D31F0();
    sub_2440D31F0();
  }

  return result;
}

uint64_t sub_2440645C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a2, v6);
}

double sub_244064648(uint64_t *a1, uint64_t a2)
{
  if (*(*a1 + 16))
  {
    sub_2440CBE68();
    v2 = swift_beginAccess();
    MEMORY[0x28223BE20](v2);

    sub_2440D16E0();
  }

  return result;
}

double sub_244064710(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for TapView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_244064648(a2, v5);
}

unint64_t sub_244064780()
{
  result = qword_27EDC4E00;
  if (!qword_27EDC4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC4B00, &qword_2440DB660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E00);
  }

  return result;
}

void sub_2440647FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    if (*a2)
    {
      MEMORY[0x28223BE20](a1);
      sub_2440D2BA0();
      sub_2440D16E0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8, &qword_2440D6530);
      sub_2440D2950();
    }
  }
}

void sub_2440648EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2440647FC(a1, a2, v6);
}

uint64_t sub_24406496C(uint64_t a1, char *a2)
{
  type metadata accessor for TapView(0);
  v3 = *a2;
  sub_243FFD4A8();
  sub_2440D2F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2830();
  if (!sub_243FA1978(v3, 1))
  {
    sub_243FA1978(v3, 2);
  }

  return sub_2440D2830();
}

double sub_244064A98()
{
  type metadata accessor for TapView(0);
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v0 = *sub_2440D1490();
  v1 = (*(v0 + 376))();

  if (v1)
  {
    v3 = *sub_2440D1490();
    (*(v3 + 384))(0);

    v4 = *sub_2440D1490();
    (*(v4 + 1592))();
  }

  return result;
}

uint64_t sub_244064C98(uint64_t a1)
{
  v29 = sub_2440D2C80();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TapView(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2440D2CD0();
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v14 = *sub_2440D1490();
  (*(v14 + 1520))();

  sub_243F5DB84();
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v26 = *(v26 + 8);
  (v26)(v10, v7);
  sub_2440601C0(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_244066E4C(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TapView);
  aBlock[4] = sub_2440668DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_28;
  v18 = _Block_copy(aBlock);

  v19 = v27;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440678A4(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  v21 = v28;
  v20 = v29;
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v19, v21, v18);
  _Block_release(v18);

  (*(v32 + 8))(v21, v20);
  (*(v30 + 8))(v19, v31);
  return (v26)(v13, v25);
}

uint64_t sub_2440651BC()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_244064C98(v2);
}

uint64_t sub_244065238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  sub_2440D2810();
  *(a9 + 24) = v21;
  sub_2440D2810();
  *(a9 + 40) = v21;
  sub_2440D2810();
  *(a9 + 56) = v21;
  *(a9 + 64) = *(&v21 + 1);
  sub_2440D2810();
  *(a9 + 72) = v21;
  *(a9 + 80) = *(&v21 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC06A0, &qword_2440DF5F0);
  sub_2440D2810();
  *(a9 + 88) = v21;
  *(a9 + 104) = v22;
  sub_2440D2810();
  *(a9 + 112) = v21;
  *(a9 + 120) = *(&v21 + 1);
  sub_2440D2810();
  *(a9 + 128) = v21;
  *(a9 + 136) = *(&v21 + 1);
  sub_2440D2810();
  *(a9 + 144) = v21;
  *(a9 + 152) = *(&v21 + 1);
  sub_2440D2810();
  *(a9 + 160) = v21;
  sub_2440D2810();
  *(a9 + 176) = v21;
  *(a9 + 184) = *(&v21 + 1);
  *(a9 + 192) = a15;
  *(a9 + 200) = a16;
  *(a9 + 208) = a17;
  v19 = type metadata accessor for TapView(0);
  return sub_243F681C8(a18, a9 + *(v19 + 64), &qword_27EDBFFE0, &unk_2440D64A0);
}

uint64_t sub_2440654A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E70, &qword_2440E3B80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2440D66C0;
  sub_2440D2680();
  sub_2440D26B0();

  *(v3 + 32) = sub_2440D2A30();
  *(v3 + 40) = v4;
  sub_2440D2680();
  sub_2440D26B0();

  *(v3 + 48) = sub_2440D2A30();
  *(v3 + 56) = v5;
  sub_2440D2A40();
  sub_2440D2C30();
  sub_2440D2C20();
  sub_2440D1700();
  v6 = v50;
  v7 = v51;
  v8 = v52;
  sub_2440D2B00();
  sub_2440D18E0();
  *&v49[54] = v53[3];
  *&v49[70] = v53[4];
  *&v49[86] = v53[5];
  *&v49[102] = v53[6];
  *&v49[6] = v53[0];
  *&v49[22] = v53[1];
  *&v49[38] = v53[2];
  v9 = sub_2440D20B0();
  v23[0] = v50;
  v23[1] = v51;
  *v24 = v52;
  *&v24[8] = 256;
  v10 = *&v49[48];
  *&v24[74] = *&v49[64];
  v11 = *&v49[64];
  *&v24[90] = *&v49[80];
  v12 = *&v49[80];
  *&v24[106] = *&v49[96];
  *&v24[120] = *(&v53[6] + 1);
  *&v24[10] = *v49;
  *&v24[26] = *&v49[16];
  v13 = *v49;
  v14 = *&v49[16];
  *&v24[42] = *&v49[32];
  v15 = *&v49[32];
  *&v24[58] = *&v49[48];
  v34 = *&v24[96];
  v35 = *&v24[112];
  v30 = *&v24[32];
  v31 = *&v24[48];
  v32 = *&v24[64];
  v33 = *&v24[80];
  v26 = v50;
  v27 = v51;
  v28 = *v24;
  v29 = *&v24[16];
  v16 = *&v24[112];
  *(a1 + 128) = *&v24[96];
  *(a1 + 144) = v16;
  v17 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v17;
  v18 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v18;
  v19 = v27;
  *a1 = v26;
  *(a1 + 16) = v19;
  v20 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v20;
  v37[1] = *(&v6 + 1);
  v38 = v7;
  v39 = v8;
  v45 = v11;
  v25 = v9;
  LOBYTE(v36) = v9;
  v22[168] = 1;
  *(a1 + 160) = v36;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  v37[0] = v6;
  v40 = 256;
  v46 = v12;
  *v47 = *&v49[96];
  *&v47[14] = *&v49[110];
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v10;
  v48 = v9;
  sub_243F5F574(v23, v22, &qword_27EDC4E80, &qword_2440E3B90);
  return sub_243F5EED4(v37, &qword_27EDC4E80, &qword_2440E3B90);
}

double sub_24406583C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2440D1C20();
  v25 = 1;
  sub_2440654A8(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v37 = v23;
  v39 = v23;
  v38[2] = v14;
  v38[3] = v15;
  sub_243F5F574(&v26, &v11, &qword_27EDC4E18, &qword_2440E39E0);
  sub_243F5EED4(v38, &qword_27EDC4E18, &qword_2440E39E0);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v4 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v4;
  *(a2 + 177) = *&v24[160];
  v5 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v5;
  v6 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v6;
  v7 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v7;
  result = *&v24[32];
  v9 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  v24[183] = v37;
  v10 = v25;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 193) = *&v24[176];
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_2440659EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4E70, &qword_2440E3B80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2440D66C0;
  sub_2440D2680();
  sub_2440D26B0();

  *(v4 + 32) = sub_2440D2A30();
  *(v4 + 40) = v5;
  sub_2440D2680();
  sub_2440D26B0();

  *(v4 + 48) = sub_2440D2A30();
  *(v4 + 56) = v6;
  sub_2440D2A40();
  sub_2440D2C30();
  sub_2440D2C20();
  sub_2440D1700();
  v7 = v59;
  v8 = v60;
  v9 = v61;
  v10 = v62;
  v11 = v63;
  v12 = sub_2440D2B80();
  v34 = *(a1 + 16);
  LOBYTE(v35) = *(a1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8, &qword_2440D6530);
  MEMORY[0x245D56840](v46);
  v14 = v46[0];
  v34 = *(a1 + 16);
  LOBYTE(v35) = *(a1 + 32);
  MEMORY[0x245D56840](v46, v13);
  sub_2440D2B00();
  sub_2440D18E0();
  *&v58[55] = v64[3];
  *&v58[71] = v64[4];
  *&v58[87] = v64[5];
  *&v58[103] = v64[6];
  *&v58[7] = v64[0];
  *&v58[23] = v64[1];
  *&v58[39] = v64[2];
  v15 = sub_2440D20B0();
  *&v29 = v7;
  *(&v29 + 1) = v8;
  *&v30 = v9;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  WORD4(v31) = 256;
  *v32 = v12;
  v32[8] = v14;
  v16 = *&v58[48];
  *&v32[73] = *&v58[64];
  v17 = *&v58[64];
  *&v32[89] = *&v58[80];
  v18 = *&v58[80];
  *&v32[105] = *&v58[96];
  *&v32[120] = *&v58[111];
  *&v32[9] = *v58;
  *&v32[25] = *&v58[16];
  v19 = *v58;
  v20 = *&v58[16];
  *&v32[41] = *&v58[32];
  v21 = *&v58[32];
  *&v32[57] = *&v58[48];
  v42 = *&v32[80];
  v43 = *&v32[96];
  v44 = *&v32[112];
  v38 = *&v32[16];
  v39 = *&v32[32];
  v40 = *&v32[48];
  v41 = *&v32[64];
  v34 = v29;
  v35 = v30;
  v36 = v31;
  v37 = *v32;
  v22 = *&v32[96];
  *(a2 + 128) = *&v32[80];
  *(a2 + 144) = v22;
  *(a2 + 160) = v44;
  v23 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v23;
  v24 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v24;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  v26 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v26;
  v46[1] = v8;
  v46[2] = v9;
  v46[3] = v10;
  v46[4] = v11;
  v54 = v17;
  v33 = v15;
  LOBYTE(v45) = v15;
  v28[184] = 1;
  *(a2 + 176) = v45;
  *(a2 + 184) = 0;
  *(a2 + 192) = 1;
  v46[0] = v7;
  v47 = 256;
  v48 = v12;
  v49 = v14;
  v55 = v18;
  *v56 = *&v58[96];
  *&v56[15] = *&v58[111];
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v16;
  v57 = v15;
  sub_243F5F574(&v29, v28, &qword_27EDC4E78, &qword_2440E3B88);
  return sub_243F5EED4(v46, &qword_27EDC4E78, &qword_2440E3B88);
}

double sub_244065E70@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2440D1C20();
  v29 = 1;
  sub_2440659EC(v3, &v15);
  v40 = v25;
  v41 = v26;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v42 = v27;
  v44 = v27;
  v43[0] = v15;
  v43[1] = v16;
  sub_243F5F574(&v30, &v14, &qword_27EDC4E20, &qword_2440E39E8);
  sub_243F5EED4(v43, &qword_27EDC4E20, &qword_2440E39E8);
  *&v28[151] = v39;
  *&v28[167] = v40;
  *&v28[183] = v41;
  *&v28[87] = v35;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v6 = *&v28[128];
  *(a2 + 161) = *&v28[144];
  v7 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v7;
  v8 = *&v28[64];
  *(a2 + 97) = *&v28[80];
  v9 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v9;
  *(a2 + 145) = v6;
  v10 = *v28;
  *(a2 + 33) = *&v28[16];
  result = *&v28[32];
  v12 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v12;
  *(a2 + 81) = v8;
  v28[199] = v42;
  v13 = v29;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 209) = *&v28[192];
  *(a2 + 17) = v10;
  return result;
}

uint64_t sub_244066038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 200);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244066108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 200) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2440661B8(uint64_t a1)
{
  sub_24406638C(319);
  if (v1 <= 0x3F)
  {
    sub_244066484(319, &qword_27EDC0278, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_244066484(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_244066420(319);
        if (v4 <= 0x3F)
        {
          sub_244066484(319, &qword_27EDC4E38, &type metadata for CenterState, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_244066484(319, &qword_27EDC2640, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_244066484(319, &qword_27EDC0118, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_243F67D28(319);
                if (v8 <= 0x3F)
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
}

void sub_24406638C(uint64_t a1)
{
  if (!qword_27EDC4E28)
  {
    type metadata accessor for TapViewModel(255);
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
    v1 = sub_2440D14B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC4E28);
    }
  }
}

void sub_244066420(uint64_t a1)
{
  if (!qword_27EDC4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC06A0, &qword_2440DF5F0);
    v1 = sub_2440D2850();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC4E30);
    }
  }
}

void sub_244066484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2440664F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_244066540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_244066598()
{
  result = qword_27EDC4E40;
  if (!qword_27EDC4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4E10, &qword_2440E39D8);
    sub_244066624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E40);
  }

  return result;
}

unint64_t sub_244066624()
{
  result = qword_27EDC4E48;
  if (!qword_27EDC4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4E08, &qword_2440E39D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DD8, &qword_2440E39B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DD0, &qword_2440E39A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DC8, &qword_2440E39A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC4B00, &qword_2440DB660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DC0, &qword_2440E3998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DB8, &qword_2440E3990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4DE0, &qword_2440E39B8);
    sub_244064248();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24401B0B0();
    swift_getOpaqueTypeConformance2();
    sub_244064780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243FFD4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4E48);
  }

  return result;
}

double sub_2440668DC()
{
  type metadata accessor for TapView(0);
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v0 = *sub_2440D1490();
  (*(v0 + 384))(1);

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244066A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8, &qword_2440D6530);
  sub_2440D2950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  return sub_2440D2830();
}

void sub_244066AB8()
{
  if (*(*(v0 + 24) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4DB0, &qword_2440E3978);
    sub_2440D2830();
  }

  else
  {
    __break(1u);
  }
}

double sub_244066CAC()
{
  type metadata accessor for TapView(0);
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v0 = *sub_2440D1490();
  (*(v0 + 1592))();

  return result;
}

uint64_t sub_244066DBC()
{
  type metadata accessor for TapView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  return sub_2440D1E50();
}

uint64_t sub_244066E4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_244066EB4()
{
  result = qword_27EDC4F58;
  if (!qword_27EDC4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F20, &qword_2440E3D18);
    sub_243F5DD50(&qword_27EDC4F60, &qword_27EDC4F68, &qword_2440E3D50, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F58);
  }

  return result;
}

unint64_t sub_244066F98()
{
  result = qword_27EDC4F70;
  if (!qword_27EDC4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F28, &qword_2440E3D20);
    sub_244066EB4();
    sub_2440678A4(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F70);
  }

  return result;
}

unint64_t sub_244067054()
{
  result = qword_27EDC4F78;
  if (!qword_27EDC4F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F38, &qword_2440E3D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F28, &qword_2440E3D20);
    sub_244066F98();
    swift_getOpaqueTypeConformance2();
    sub_2440678A4(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F78);
  }

  return result;
}

unint64_t sub_24406714C()
{
  result = qword_27EDC4F98;
  if (!qword_27EDC4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F10, &qword_2440E3D08);
    sub_244067204();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40, &unk_2440E1000, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4F98);
  }

  return result;
}

unint64_t sub_244067204()
{
  result = qword_27EDC4FA0;
  if (!qword_27EDC4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F90, &qword_2440E3D68);
    sub_244067290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4FA0);
  }

  return result;
}

unint64_t sub_244067290()
{
  result = qword_27EDC4FA8;
  if (!qword_27EDC4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4F88, &qword_2440E3D60);
    sub_243F5DD50(&qword_27EDC4FB0, &qword_27EDC4FB8, &unk_2440E3D70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4FA8);
  }

  return result;
}

double sub_244067348()
{
  type metadata accessor for TapView(0);
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  sub_2440D1490();
  sub_244095F94();

  return result;
}

unint64_t sub_244067424()
{
  result = qword_27EDC5050;
  if (!qword_27EDC5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5048, &qword_2440E3E38);
    sub_2440674B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5050);
  }

  return result;
}

unint64_t sub_2440674B0()
{
  result = qword_27EDC5058;
  if (!qword_27EDC5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5060, &qword_2440E3E40);
    sub_244067568();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40, &unk_2440E1000, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5058);
  }

  return result;
}

unint64_t sub_244067568()
{
  result = qword_27EDC5068;
  if (!qword_27EDC5068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5070, &qword_2440E3E48);
    sub_24401E468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5068);
  }

  return result;
}

unint64_t sub_2440675F4()
{
  result = qword_27EDC5080;
  if (!qword_27EDC5080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5018, &qword_2440E3DE0);
    sub_244067680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5080);
  }

  return result;
}

unint64_t sub_244067680()
{
  result = qword_27EDC5088;
  if (!qword_27EDC5088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5010, &qword_2440E3DD8);
    sub_243F5DD50(&qword_27EDC5090, &qword_27EDC5008, &qword_2440E3DD0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5088);
  }

  return result;
}

void sub_244067738()
{
  type metadata accessor for TapView(0);
  sub_2440D1440();
  v1 = v0;
  if (v0 > 2.0 || (sub_2440D1440(), v2 < 2.0))
  {
    type metadata accessor for TapViewModel(0);
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
    v3 = *sub_2440D1490();
    (*(v3 + 1664))(v1 > 2.0);
  }
}

uint64_t sub_2440678A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2440678EC()
{
  result = qword_27EDC50A0;
  if (!qword_27EDC50A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5028, &qword_2440E3DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5018, &qword_2440E3DE0);
    sub_2440675F4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40, &unk_2440E1000, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50A0);
  }

  return result;
}

double sub_2440679E0(uint64_t a1)
{
  type metadata accessor for TapView(0);
  v1 = sub_2440D2120();
  v2 = sub_2440D2120();
  if (v1 == v2 || (v3 = sub_2440D2120(), v3 == sub_2440D2120()))
  {
    type metadata accessor for TapViewModel(0);
    sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
    v5 = *sub_2440D1490();
    (*(v5 + 1664))(v1 == v2);
  }

  return result;
}

uint64_t sub_244067B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_244067B70()
{
  result = qword_27EDC50D0;
  if (!qword_27EDC50D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC50C8, &qword_2440E3E78);
    sub_244067C28();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50D0);
  }

  return result;
}

unint64_t sub_244067C28()
{
  result = qword_27EDC50D8;
  if (!qword_27EDC50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50D8);
  }

  return result;
}

unint64_t sub_244067C7C()
{
  result = qword_27EDC50E0;
  if (!qword_27EDC50E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4FE8, &qword_2440E3DB0);
    sub_243FE6334();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC50E0);
  }

  return result;
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for TapView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_2440191EC(*v2, v2[1]);

  v3 = v2 + v1[18];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);

  return swift_deallocObject();
}

double sub_244067F1C()
{
  type metadata accessor for TapView(0);
  type metadata accessor for TapViewModel(0);
  sub_2440678A4(&qword_27EDC4DA8, type metadata accessor for TapViewModel, &unk_2440E5F70);
  v0 = *sub_2440D1490();
  v1 = (*(v0 + 1240))();

  (*(*v1 + 272))(v2);

  return result;
}

uint64_t sub_2440680B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5100, &qword_2440E3F38);
  MEMORY[0x28223BE20](v3);
  v5 = (&v39 - v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5108, &qword_2440E3F40);
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v39 - v7;
  *v5 = sub_2440D2B00();
  v5[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5110, &qword_2440E3F48);
  sub_244068538(v1, v5 + *(v10 + 44));
  KeyPath = swift_getKeyPath();
  v12 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5118, &unk_2440E3F80) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EF0, &qword_2440DE498) + 28);
  v14 = *MEMORY[0x277CDFA88];
  v15 = sub_2440D17B0();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = KeyPath;
  v16 = sub_2440D2BE0();
  v43 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  LOBYTE(v14) = v42;
  v17 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5120, &qword_2440E3F90) + 36);
  *v17 = v16;
  v17[8] = v14;
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = v19;
  *(v18 + 144) = *(v2 + 128);
  v20 = *(v2 + 112);
  *(v18 + 112) = *(v2 + 96);
  *(v18 + 128) = v20;
  v21 = *(v2 + 80);
  *(v18 + 80) = *(v2 + 64);
  *(v18 + 96) = v21;
  v22 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v22;
  v23 = (v5 + *(v3 + 36));
  *v23 = sub_24406966C;
  v23[1] = v18;
  v23[2] = 0;
  v23[3] = 0;
  LOBYTE(v42) = *v2;
  v24 = swift_allocObject();
  v25 = *(v2 + 112);
  *(v24 + 112) = *(v2 + 96);
  *(v24 + 128) = v25;
  *(v24 + 144) = *(v2 + 128);
  v26 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v26;
  v27 = *(v2 + 80);
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = v27;
  v28 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v28;
  sub_2440698FC(v2, &v43);
  sub_2440698FC(v2, &v43);
  v29 = sub_244069934();
  v30 = sub_243F686B4();
  sub_2440D25D0();

  sub_243F5EED4(v5, &qword_27EDC5100, &qword_2440E3F38);
  v43 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v31 = swift_allocObject();
  v32 = *(v2 + 112);
  *(v31 + 112) = *(v2 + 96);
  *(v31 + 128) = v32;
  *(v31 + 144) = *(v2 + 128);
  v33 = *(v2 + 48);
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = v33;
  v34 = *(v2 + 80);
  *(v31 + 80) = *(v2 + 64);
  *(v31 + 96) = v34;
  v35 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v35;
  sub_2440698FC(v2, &v43);
  *&v43 = v3;
  *(&v43 + 1) = &type metadata for CheckmarkState;
  v44 = v29;
  v45 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v40;
  sub_2440CC638(&v42, sub_24406A0A0, v31, v40, MEMORY[0x277D839F8], OpaqueTypeConformance2, MEMORY[0x277CE1508], v41);

  return (*(v6 + 8))(v8, v37);
}

uint64_t sub_244068538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v5 = COERCE_DOUBLE(sub_2440D2770());
  v75 = *(v5 - 8);
  v76 = *&v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5230, &qword_2440E43A0);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v90 = &v71[-v10];
  v166 = *(a1 + 104);
  v153 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v86 = v105;
  v153 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8, &qword_2440D71D0);
  sub_2440D2820();
  v93 = v105;
  v11 = 0.0;
  sub_2440D14C0();
  v12 = sub_2440D2B00();
  v91 = v13;
  v92 = v12;
  v153 = *(a1 + 72);
  sub_2440D2820();
  v14 = *&v105;
  sub_2440D2C40();
  v83 = v16;
  v84 = v15;
  v89 = sub_2440D2BA0();
  v153 = v166;
  sub_2440D2820();
  v82 = v105;
  v17 = swift_allocObject();
  v18 = *(a1 + 112);
  *(v17 + 112) = *(a1 + 96);
  *(v17 + 128) = v18;
  *(v17 + 144) = *(a1 + 128);
  v19 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v19;
  v20 = *(a1 + 80);
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = v20;
  v21 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 112);
  *(v22 + 112) = *(a1 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(a1 + 128);
  v24 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v24;
  v25 = *(a1 + 80);
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = v25;
  v26 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v26;
  v87 = v22;
  v105 = *(a1 + 56);
  sub_2440698FC(a1, &v153);
  sub_2440698FC(a1, &v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  LODWORD(v73) = v153;
  v81 = sub_2440D2660();
  sub_2440D14C0();
  v27 = sub_2440D2B00();
  v77 = v28;
  v78 = v27;
  v164 = 1;
  v88 = sub_2440D20B0();
  v165 = 1;
  v29 = *(a1 + 128);
  sub_2440D2C40();
  v79 = v31;
  v80 = v30;
  sub_2440D2760();
  v32 = v74;
  v33 = v75;
  v34 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277CE0FE0], COERCE_DOUBLE(*&v76));
  v72 = sub_2440D2790();

  (*(v33 + 8))(v32, COERCE_DOUBLE(*&v34));
  v75 = sub_2440D2650();
  KeyPath = swift_getKeyPath();
  sub_2440D2C40();
  v37 = v36;
  v39 = v38;
  LOBYTE(v103[0]) = 1;
  v40 = sub_2440D2AE0();
  v42 = v41;
  v153 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  sub_2440D2B00();
  if (v73 == 2)
  {
    v11 = 1.0;
  }

  v43 = v14 * 0.0174532925;
  v76 = v43;
  sub_2440D18E0();
  *&v153 = v72;
  *(&v153 + 1) = KeyPath;
  v154 = v75;
  LOWORD(v155) = 1;
  *(&v155 + 1) = v29 * 0.7;
  *&v156 = v29 * 0.7;
  *(&v156 + 1) = v37;
  *&v157 = v39;
  *(&v157 + 1) = v40;
  *&v158 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5238, &qword_2440E43D8);
  sub_24406C384();
  v44 = v90;
  sub_2440D24E0();
  v103[10] = v162[1];
  v103[11] = v162[2];
  v104 = v163;
  v103[6] = v159;
  v103[7] = v160;
  v103[8] = v161;
  v103[9] = v162[0];
  v103[2] = v155;
  v103[3] = v156;
  v103[4] = v157;
  v103[5] = v158;
  v103[0] = v153;
  v103[1] = v154;
  sub_243F5EED4(v103, &qword_27EDC5238, &qword_2440E43D8);
  v45 = v44;
  v46 = v85;
  sub_243F5F574(v45, v85, &qword_27EDC5230, &qword_2440E43A0);
  *&v105 = 0;
  v47 = v86;
  *(&v105 + 1) = v86;
  v106 = v169;
  v107 = v170;
  *&v108 = v171;
  *(&v108 + 1) = v93;
  LOWORD(v109) = 256;
  *(&v109 + 2) = v167;
  WORD3(v109) = v168;
  *(&v109 + 1) = v92;
  *&v110 = v91;
  v49 = v83;
  v48 = v84;
  *(&v110 + 1) = v43;
  *&v111 = v84;
  *(&v111 + 1) = v83;
  *&v112 = 0x3FF0000000000000;
  *(&v112 + 1) = v89;
  v50 = v82;
  *&v113 = v82;
  v75 = sub_24406C2B4;
  *(&v113 + 1) = sub_24406C2B4;
  *&v114[0] = v17;
  *(v114 + 8) = 0u;
  *(&v114[1] + 8) = 0u;
  v74 = sub_24406C32C;
  *(&v114[2] + 1) = sub_24406C32C;
  v115 = v87;
  *(a2 + 192) = v87;
  v51 = v105;
  v52 = v106;
  v53 = v108;
  *(a2 + 32) = v107;
  *(a2 + 48) = v53;
  *a2 = v51;
  *(a2 + 16) = v52;
  v54 = v114[2];
  *(a2 + 160) = v114[1];
  *(a2 + 176) = v54;
  v55 = v109;
  v56 = v110;
  v57 = v114[0];
  *(a2 + 128) = v113;
  *(a2 + 144) = v57;
  v58 = v112;
  *(a2 + 96) = v111;
  *(a2 + 112) = v58;
  *(a2 + 64) = v55;
  *(a2 + 80) = v56;
  *&v116 = 0;
  *(&v116 + 1) = v11;
  v117 = v100;
  v118 = v101;
  v59 = v81;
  *&v119 = v102;
  *(&v119 + 1) = v81;
  LOWORD(v120) = 256;
  *(&v120 + 2) = v98;
  WORD3(v120) = v99;
  v60 = v78;
  v73 = v17;
  v61 = v77;
  *(&v120 + 1) = v78;
  v121 = v77;
  LOWORD(v122) = 257;
  WORD3(v122) = v97;
  *(&v122 + 2) = v96;
  BYTE8(v122) = v88;
  *(&v122 + 9) = *v95;
  HIDWORD(v122) = *&v95[3];
  v123 = 0u;
  v124 = 0u;
  LOBYTE(v125) = 1;
  *(&v125 + 1) = *v94;
  DWORD1(v125) = *&v94[3];
  *(&v125 + 1) = v29;
  *&v126 = v29;
  v62 = v79;
  v63 = v80;
  *(&v126 + 1) = v80;
  v127 = v79;
  v64 = v125;
  *(a2 + 328) = 0u;
  *(a2 + 344) = v64;
  *(a2 + 360) = v126;
  v65 = v123;
  *(a2 + 296) = v122;
  *(a2 + 312) = v65;
  v66 = v121;
  *(a2 + 264) = v120;
  *(a2 + 280) = v66;
  v67 = v118;
  *(a2 + 248) = v119;
  *(a2 + 232) = v67;
  v68 = v116;
  *(a2 + 216) = v117;
  *(a2 + 200) = v68;
  *(a2 + 376) = v127;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5268, &qword_2440E43F8);
  sub_243F5F574(v46, a2 + *(v69 + 64), &qword_27EDC5230, &qword_2440E43A0);
  sub_243F5F574(&v105, &v153, &qword_27EDC5270, &qword_2440E4400);
  sub_243F5F574(&v116, &v153, &qword_27EDC5278, &qword_2440E4408);
  sub_243F5EED4(v90, &qword_27EDC5230, &qword_2440E43A0);
  sub_243F5EED4(v46, &qword_27EDC5230, &qword_2440E43A0);
  *&v128[1] = v11;
  v129 = v100;
  v128[0] = 0;
  v130 = v101;
  v131 = v102;
  v132 = v59;
  v133 = 256;
  v134 = v98;
  v135 = v99;
  v136 = v60;
  v137 = v61;
  v138 = 0;
  v139 = 1;
  v140 = 1;
  v141 = v96;
  v142 = v97;
  v143 = v88;
  *v144 = *v95;
  *&v144[3] = *&v95[3];
  v145 = 0u;
  v146 = 0u;
  v147 = 1;
  *v148 = *v94;
  *&v148[3] = *&v94[3];
  v149 = v29;
  v150 = v29;
  v151 = v63;
  v152 = v62;
  sub_243F5EED4(v128, &qword_27EDC5278, &qword_2440E4408);
  *&v153 = 0;
  *(&v153 + 1) = v47;
  v154 = v169;
  v155 = v170;
  *&v156 = v171;
  *(&v156 + 1) = v93;
  LOWORD(v157) = 256;
  *(&v157 + 2) = v167;
  WORD3(v157) = v168;
  *(&v157 + 1) = v92;
  *&v158 = v91;
  *(&v158 + 1) = v76;
  *&v159 = v48;
  *(&v159 + 1) = v49;
  *&v160 = 0x3FF0000000000000;
  *(&v160 + 1) = v89;
  *&v161 = v50;
  *(&v161 + 1) = v75;
  *&v162[0] = v73;
  *(&v162[1] + 8) = 0u;
  *(v162 + 8) = 0u;
  *(&v162[2] + 1) = v74;
  v163 = v87;
  return sub_243F5EED4(&v153, &qword_27EDC5270, &qword_2440E4400);
}

double sub_244068F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_2440D3390();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2440D3360();
  sub_2440698FC(a1, v15);
  v6 = sub_2440D3350();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 112);
  *(v7 + 128) = *(a1 + 96);
  *(v7 + 144) = v9;
  *(v7 + 160) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v10;
  v11 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v11;
  v12 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v12;
  sub_243F54830(0, 0, v4, &unk_2440E4418, v7);

  return result;
}

uint64_t sub_244069088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2440D38A0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_2440D3360();
  v4[13] = sub_2440D3350();
  v7 = sub_2440D3320();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_24406917C, v7, v6);
}

uint64_t sub_24406917C(uint64_t a1)
{
  v2 = sub_2440D3B80();
  v4 = v3;
  sub_2440D3A80();
  v5 = swift_task_alloc();
  *(v1 + 128) = v5;
  *v5 = v1;
  v5[1] = sub_244069260;

  return sub_243F720D4(v2, v4, 0, 0, 1);
}

uint64_t sub_244069260()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_24406C63C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_2440693F4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2440693F4()
{
  v1 = *(v0 + 72);

  v2 = *v1;
  if (v2 == 3)
  {
    v3 = sub_2440D2650();
  }

  else
  {
    v3 = sub_2440D2660();
  }

  v4 = *(v0 + 72);
  *(v0 + 16) = *(v4 + 40);
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8, &qword_2440D71D0);
  sub_2440D2830();
  *(v0 + 32) = *(v4 + 56);
  *(v0 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2830();
  *(v0 + 48) = *(v4 + 56);
  sub_2440D2820();
  sub_244069520(*(v0 + 137));

  v5 = *(v0 + 8);

  return v5();
}

double sub_244069520(uint64_t a1)
{
  if (a1 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2830();
    sub_2440D2B80();
    sub_2440D2B40();

    MEMORY[0x28223BE20](v1);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    sub_2440D2BA0();
  }

  sub_2440D16E0();

  return result;
}

uint64_t sub_24406966C(uint64_t a1)
{
  if (*(v1 + 16) == 3)
  {
    sub_2440D2650();
  }

  else
  {
    sub_2440D2660();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8, &qword_2440D71D0);
  return sub_2440D2830();
}

double sub_2440696D8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = *a1;
  v19 = *(a2 + 56);
  v17[0] = *(a2 + 56);
  v20 = *(&v19 + 1);
  sub_243F5F574(&v20, &v18, &qword_27EDC50F8, &qword_2440E3F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  if (v7 == v18)
  {
    sub_243F5EED4(&v19, &qword_27EDC01A0, &unk_2440D6740);
  }

  else
  {
    v17[0] = v19;
    LOBYTE(v18) = 1;
    sub_2440D2830();
    sub_243F5EED4(&v19, &qword_27EDC01A0, &unk_2440D6740);
    v9 = sub_2440D3390();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_2440D3360();
    sub_2440698FC(a2, v17);
    v10 = sub_2440D3350();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v13 = *(a2 + 112);
    *(v11 + 128) = *(a2 + 96);
    *(v11 + 144) = v13;
    *(v11 + 160) = *(a2 + 128);
    v14 = *(a2 + 48);
    *(v11 + 64) = *(a2 + 32);
    *(v11 + 80) = v14;
    v15 = *(a2 + 80);
    *(v11 + 96) = *(a2 + 64);
    *(v11 + 112) = v15;
    v16 = *(a2 + 16);
    *(v11 + 32) = *a2;
    *(v11 + 48) = v16;
    *(v11 + 168) = v7;
    sub_243F54830(0, 0, v6, &unk_2440E4398, v11);
  }

  return result;
}

unint64_t sub_244069934()
{
  result = qword_27EDC5128;
  if (!qword_27EDC5128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5100, &qword_2440E3F38);
    sub_2440699C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5128);
  }

  return result;
}

unint64_t sub_2440699C0()
{
  result = qword_27EDC5130;
  if (!qword_27EDC5130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5120, &qword_2440E3F90);
    sub_244069A78();
    sub_243F5DD50(&qword_27EDC5158, &qword_27EDC5160, &unk_2440E3FA0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5130);
  }

  return result;
}

unint64_t sub_244069A78()
{
  result = qword_27EDC5138;
  if (!qword_27EDC5138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5118, &unk_2440E3F80);
    sub_243F5DD50(&qword_27EDC5140, &qword_27EDC5148, &qword_2440E3F98, MEMORY[0x277CE11A8]);
    sub_243F5DD50(&qword_27EDC5150, &qword_27EDC2EF0, &qword_2440DE498, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5138);
  }

  return result;
}

uint64_t sub_244069B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 121) = a5;
  *(v5 + 56) = a4;
  v6 = sub_2440D38A0();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  sub_2440D3360();
  *(v5 + 88) = sub_2440D3350();
  v8 = sub_2440D3320();
  *(v5 + 96) = v8;
  *(v5 + 104) = v7;

  return MEMORY[0x2822009F8](sub_244069C54, v8, v7);
}

uint64_t sub_244069C54(uint64_t a1)
{
  v2 = sub_2440D3B80();
  v4 = v3;
  sub_2440D3A80();
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v1;
  v5[1] = sub_244069D38;

  return sub_243F720D4(v2, v4, 0, 0, 1);
}

uint64_t sub_244069D38()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_24406C628;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_244069ECC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_244069ECC()
{
  v1 = *(v0 + 121);

  if (v1 == 3)
  {
    v2 = sub_2440D2650();
  }

  else
  {
    v2 = sub_2440D2660();
  }

  *(v0 + 16) = *(*(v0 + 56) + 40);
  *(v0 + 48) = v2;
  v3 = *(v0 + 121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8, &qword_2440D71D0);
  sub_2440D2830();
  sub_244069520(v3);
  if (v3 != 1)
  {
    v4 = *(v0 + 121);
    *(v0 + 32) = *(*(v0 + 56) + 56);
    *(v0 + 120) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
    sub_2440D2830();
  }

  v5 = *(v0 + 8);

  return v5();
}

double sub_244069FD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  if (v3 != 4)
  {
    v2 = sub_2440D2BA0();
    MEMORY[0x28223BE20](v2);
    sub_2440D16E0();
  }

  return result;
}

double sub_24406A0A8@<D0>(char a1@<W0>, uint64_t a7@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  *a7 = a1;
  *(a7 + 8) = v12;
  *(a7 + 16) = v13;
  *(a7 + 24) = v12;
  *(a7 + 32) = v13;
  *(a7 + 40) = v12;
  *(a7 + 48) = v13;
  *(a7 + 56) = v12;
  *(a7 + 64) = v13;
  *(a7 + 72) = v12;
  *(a7 + 80) = v13;
  *(a7 + 88) = v12;
  *(a7 + 96) = v13;
  *(a7 + 104) = v12;
  *(a7 + 112) = v13;
  result = 3.5;
  *(a7 + 120) = xmmword_2440E3ED0;
  return result;
}

void sub_24406A2A0(uint64_t a1, double a2, double a3)
{
  sub_2440D2250();
  sub_2440D2260();
  sub_2440D2260();
}

double sub_24406A314@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_2440D2290();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_24406A3D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2440D1380();
  return sub_243FA8774;
}

uint64_t sub_24406A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24406C068();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24406A4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24406C068();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24406A528(uint64_t a1)
{
  v2 = sub_24406C068();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24406A574@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = sub_2440D1D90();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51B8, &qword_2440E4338);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v41[-v6];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0, &qword_2440E4340) - 8;
  MEMORY[0x28223BE20](v49);
  v50 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v43 = &v41[-v9];
  v10 = sub_2440D2B00();
  v46 = v11;
  v47 = v10;
  v12 = sub_2440D1B30();
  LOBYTE(v111) = 1;
  sub_24406AE1C(a1, &v59);
  v86[6] = *&v60[80];
  v86[7] = *&v60[96];
  v86[8] = *&v60[112];
  v86[2] = *&v60[16];
  v86[3] = *&v60[32];
  v86[4] = *&v60[48];
  v86[5] = *&v60[64];
  v86[0] = v59;
  v86[1] = *v60;
  v93 = *&v60[80];
  v94 = *&v60[96];
  v95 = *&v60[112];
  v89 = *&v60[16];
  v90 = *&v60[32];
  v92 = *&v60[64];
  v91 = *&v60[48];
  v88 = *v60;
  v87 = v59;
  sub_243F5F574(v86, &v55, &qword_27EDC5210, &qword_2440E4378);
  sub_243F5EED4(&v87, &qword_27EDC5210, &qword_2440E4378);
  *&v112[87] = v86[5];
  *&v112[103] = v86[6];
  *&v112[119] = v86[7];
  *&v112[135] = v86[8];
  *&v112[23] = v86[1];
  *&v112[39] = v86[2];
  *&v112[55] = v86[3];
  *&v112[71] = v86[4];
  *&v112[7] = v86[0];
  v13 = v111;
  v14 = sub_2440D2BE0();
  v59 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  v15 = v55;
  sub_2440D2B00();
  sub_2440D1560();
  *(v113 + 7) = v59;
  *(&v113[1] + 7) = *v60;
  *(&v113[2] + 7) = *&v60[16];
  v55 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  *(&v56[6] + 1) = *&v112[96];
  *(&v56[7] + 1) = *&v112[112];
  *(&v56[8] + 1) = *&v112[128];
  *(&v56[2] + 1) = *&v112[32];
  *(&v56[3] + 1) = *&v112[48];
  *(&v56[4] + 1) = *&v112[64];
  *(&v56[5] + 1) = *&v112[80];
  *(v56 + 1) = *v112;
  *(&v56[1] + 1) = *&v112[16];
  *(v57 + 1) = v113[0];
  *(&v57[1] + 1) = v113[1];
  *(&v57[2] + 1) = v113[2];
  *&v60[1] = *v112;
  *&v60[17] = *&v112[16];
  *&v60[81] = *&v112[80];
  *&v60[65] = *&v112[64];
  *&v60[49] = *&v112[48];
  v55 = v12;
  LOBYTE(v56[0]) = v13;
  *&v56[9] = *&v112[143];
  *(&v56[9] + 1) = v14;
  LOBYTE(v57[0]) = v15;
  *&v57[3] = *(&v113[2] + 15);
  *(&v57[3] + 1) = v111;
  v58 = 0;
  v59 = v12;
  v60[0] = v13;
  *&v60[33] = *&v112[32];
  *&v61[15] = *&v112[143];
  *v61 = *&v112[128];
  *&v60[113] = *&v112[112];
  *&v60[97] = *&v112[96];
  v62 = v14;
  v63 = v15;
  v64 = v113[0];
  v65 = v113[1];
  *v66 = v113[2];
  *&v66[15] = *(&v113[2] + 15);
  v67 = v111;
  v68 = 0;
  sub_243F5F574(&v55, &v87, &qword_27EDC51C8, &qword_2440E4348);
  sub_243F5EED4(&v59, &qword_27EDC51C8, &qword_2440E4348);
  v82 = v57[1];
  v83 = v57[2];
  v84 = v57[3];
  v85 = v58;
  v78 = v56[7];
  v79 = v56[8];
  v80 = v56[9];
  v81 = v57[0];
  v74 = v56[3];
  v75 = v56[4];
  v76 = v56[5];
  v77 = v56[6];
  v70 = v55;
  v71 = v56[0];
  v72 = v56[1];
  v73 = v56[2];
  v42 = sub_2440D20D0();
  sub_2440D13D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v87) = 0;
  sub_2440D1B70();
  v86[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51D0, &qword_2440E4350);
  sub_24406BEE8();
  sub_243F5DD50(&qword_27EDC51E0, &qword_27EDC51D0, &qword_2440E4350, MEMORY[0x277CE14C0]);
  v24 = v44;
  sub_2440D2900();
  v25 = v45;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC51E8, &qword_27EDC51B8, &qword_2440E4338, MEMORY[0x277CDF038]);
  v26 = v43;
  v27 = v48;
  v28 = v52;
  sub_2440D23A0();
  (*(v53 + 8))(v25, v28);
  (*(v51 + 8))(v24, v27);
  v29 = sub_2440D20D0();
  sub_2440D13D0();
  v30 = v50;
  v31 = v26 + *(v49 + 44);
  *v31 = v29;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  sub_24406BF3C(v26, v30);
  v37 = v46;
  v36 = v47;
  *&v86[0] = v47;
  *(&v86[0] + 1) = v46;
  v86[13] = v82;
  v86[14] = v83;
  v86[15] = v84;
  *&v86[16] = v85;
  v86[10] = v79;
  v86[11] = v80;
  v86[12] = v81;
  v86[5] = v74;
  v86[6] = v75;
  v86[7] = v76;
  v86[8] = v77;
  v86[9] = v78;
  v86[1] = v70;
  v86[2] = v71;
  v86[3] = v72;
  v86[4] = v73;
  LOBYTE(v14) = v42;
  BYTE8(v86[16]) = v42;
  *(&v86[16] + 9) = *v69;
  HIDWORD(v86[16]) = *&v69[3];
  *&v86[17] = v17;
  *(&v86[17] + 1) = v19;
  *&v86[18] = v21;
  *(&v86[18] + 1) = v23;
  LOBYTE(v86[19]) = 0;
  v38 = v54;
  memcpy(v54, v86, 0x131uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51F0, &qword_2440E4358);
  sub_24406BF3C(v30, v38 + *(v39 + 48));
  sub_243F5F574(v86, &v87, &qword_27EDC51F8, &qword_2440E4360);
  sub_24406BFAC(v26);
  sub_24406BFAC(v30);
  *&v87 = v36;
  *(&v87 + 1) = v37;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v103 = v85;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v99 = v81;
  v92 = v74;
  v93 = v75;
  v94 = v76;
  v95 = v77;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v91 = v73;
  v104 = v14;
  *v105 = *v69;
  *&v105[3] = *&v69[3];
  v106 = v17;
  v107 = v19;
  v108 = v21;
  v109 = v23;
  v110 = 0;
  return sub_243F5EED4(&v87, &qword_27EDC51F8, &qword_2440E4360);
}

double sub_24406AE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D1870();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D1B10();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5218, &unk_2440E4380);
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v44 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0, &unk_2440D6740);
  sub_2440D2820();
  v40 = v47[0];
  v15 = sub_2440D2690();
  v47[0] = 0;
  sub_2440D2810();
  v38 = v44;
  v37 = *(&v44 + 1);
  v47[0] = 0;
  sub_2440D2810();
  v36 = v44;
  v35 = *(&v44 + 1);
  *v47 = v15;
  sub_2440D2810();
  v33 = *(&v44 + 1);
  v34 = v44;
  v47[0] = 1;
  sub_2440D2810();
  v32 = v44;
  v31 = *(&v44 + 1);
  *v47 = 0;
  sub_2440D2810();
  v30 = *(&v44 + 1);
  v16 = v44;
  v47[0] = 0;
  sub_2440D2810();
  v29 = v44;
  v28 = *(&v44 + 1);
  *v47 = 0x3FF0000000000000;
  sub_2440D2810();
  v27 = *(&v44 + 1);
  v17 = v44;
  sub_2440D1B00();
  sub_2440D2C40();
  sub_2440D1880();
  v18 = sub_24406C26C(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v19 = sub_24406C26C(&qword_27EDC1018, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
  sub_2440D13F0();
  (*(v43 + 8))(v6, v4);
  (*(v42 + 8))(v9, v7);
  v20 = v41;
  (*(v10 + 16))(v39, v14, v41);
  *&v44 = v7;
  *(&v44 + 1) = v4;
  v45 = v18;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v20;
  v22 = sub_2440D1610();
  (*(v10 + 8))(v14, v21);
  *a2 = v40;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  v23 = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v23;
  *(a2 + 48) = v33;
  *(a2 + 56) = v32;
  v24 = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = v16;
  *(a2 + 80) = v24;
  *(a2 + 88) = v29;
  *(a2 + 96) = v28;
  *(a2 + 104) = v17;
  *(a2 + 112) = v27;
  result = 3.5;
  *(a2 + 120) = xmmword_2440E3ED0;
  *(a2 + 136) = v22;
  return result;
}

uint64_t sub_24406B34C@<X0>(char *a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5200, &qword_2440E4368);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - v5;
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  *v26 = xmmword_2440E3EE0;
  v26[16] = 0;
  v27 = MEMORY[0x277D84F90];
  *(v26 + 3) = MEMORY[0x277D84F90];
  *(v26 + 16) = 256;
  *v23 = xmmword_2440E3EF0;
  v23[16] = 0;
  *(v23 + 3) = v27;
  *(v23 + 16) = 257;
  v44 = v23;
  *v20 = xmmword_2440E3F00;
  v20[16] = 0;
  *(v20 + 3) = v27;
  *(v20 + 16) = 260;
  v42 = v20;
  *v17 = xmmword_2440E3F10;
  v17[16] = 0;
  *(v17 + 3) = v27;
  *(v17 + 16) = 258;
  v40 = v17;
  v39 = v28;
  *v28 = xmmword_2440E3F20;
  v28[16] = 0;
  *(v28 + 3) = v27;
  *(v28 + 16) = 259;
  v29 = *(v2 + 16);
  v43 = v13;
  v29(v13, &v39 - v25, v1);
  v41 = v10;
  v29(v10, v23, v1);
  v29(v47, v20, v1);
  v30 = v45;
  v29(v45, v17, v1);
  v31 = v39;
  v29(v48, v39, v1);
  v32 = v46;
  v29(v46, v13, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5208, &qword_2440E4370);
  v29(&v32[v33[12]], v10, v1);
  v34 = v47;
  v29(&v32[v33[16]], v47, v1);
  v29(&v32[v33[20]], v30, v1);
  v35 = &v32[v33[24]];
  v36 = v48;
  v29(v35, v48, v1);
  v37 = *(v2 + 8);
  v37(v31, v1);
  v37(v40, v1);
  v37(v42, v1);
  v37(v44, v1);
  v37(v26, v1);
  v37(v36, v1);
  v37(v30, v1);
  v37(v34, v1);
  v37(v41, v1);
  return (v37)(v43, v1);
}

uint64_t sub_24406B7F0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2440D1C20();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51B0, &qword_2440E4330);
  return sub_24406A574(v2, (a2 + *(v4 + 44)));
}

double sub_24406B844@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2440D2B00();
  v5 = v4;
  sub_24406B940(v8);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v8[1];
  *(a2 + 16) = v8[0];
  *(a2 + 32) = v6;
  result = *&v9;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_24406B8A8(uint64_t a1)
{
  v2 = sub_24406C014();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24406B8F4(uint64_t a1)
{
  v2 = sub_24406C014();

  return MEMORY[0x28212D8E0](a1, v2);
}

double sub_24406B940@<D0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  v2 = sub_244070800();
  sub_2440D2810();
  result = v4;
  *a1 = LOBYTE(v4);
  *(a1 + 8) = v5;
  *(a1 + 16) = LOBYTE(v4);
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  return result;
}

unint64_t sub_24406BA28()
{
  result = qword_27EDC5168;
  if (!qword_27EDC5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5168);
  }

  return result;
}

unint64_t sub_24406BA80()
{
  result = qword_27EDC5170;
  if (!qword_27EDC5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5170);
  }

  return result;
}

unint64_t sub_24406BB1C()
{
  result = qword_27EDC5188;
  if (!qword_27EDC5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5188);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24406BBC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24406BC08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24406BCAC()
{
  result = qword_27EDC5190;
  if (!qword_27EDC5190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5198, &unk_2440E4278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5100, &qword_2440E3F38);
    sub_244069934();
    sub_243F686B4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238, &qword_2440D67A0, &unk_2440E7B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5190);
  }

  return result;
}

uint64_t sub_24406BE00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24406BE5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24406BEE8()
{
  result = qword_27EDC51D8;
  if (!qword_27EDC51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC51D8);
  }

  return result;
}

uint64_t sub_24406BF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0, &qword_2440E4340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24406BFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC51C0, &qword_2440E4340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24406C014()
{
  result = qword_27EDC5220;
  if (!qword_27EDC5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5220);
  }

  return result;
}

unint64_t sub_24406C068()
{
  result = qword_27EDC5228;
  if (!qword_27EDC5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5228);
  }

  return result;
}

uint64_t sub_24406C0E0()
{
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_244069B5C(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_24406C26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

unint64_t sub_24406C384()
{
  result = qword_27EDC5240;
  if (!qword_27EDC5240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5238, &qword_2440E43D8);
    sub_24406C43C();
    sub_243F5DD50(&qword_27EDC5258, &qword_27EDC5260, &qword_2440E43F0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5240);
  }

  return result;
}

unint64_t sub_24406C43C()
{
  result = qword_27EDC5248;
  if (!qword_27EDC5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5250, &unk_2440E43E0);
    sub_243F8B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5248);
  }

  return result;
}

uint64_t objectdestroy_28Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24406C554()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5DE2C;

  return sub_244069088(v2, v3, v4, v0 + 32);
}

uint64_t sub_24406C644@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v65 - v4;
  v5 = type metadata accessor for AVLoopPlayerView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4478, &qword_2440E4440);
  MEMORY[0x28223BE20](v69);
  v77 = &v65 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5298, &qword_2440E4448);
  MEMORY[0x28223BE20](v75);
  v78 = &v65 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52A0, &qword_2440E4450);
  MEMORY[0x28223BE20](v79);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52A8, &qword_2440E4458);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v65 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52B0, &qword_2440E4460);
  MEMORY[0x28223BE20](v73);
  v74 = &v65 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52B8, &qword_2440E4468);
  MEMORY[0x28223BE20](v84);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v65 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52C0, &qword_2440E4470);
  MEMORY[0x28223BE20](v82);
  v83 = &v65 - v17;
  v18 = sub_2440D2770();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52C8, &qword_2440E4478);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v65 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52D0, &qword_2440E4480);
  MEMORY[0x28223BE20](v66);
  v25 = &v65 - v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC52D8, &unk_2440E4488);
  MEMORY[0x28223BE20](v81);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v68 = &v65 - v29;
  v87 = *v1;
  LOBYTE(v88) = *(v1 + 16);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5290, &unk_2440E4430);
  MEMORY[0x245D56840](&v85, v30);
  if (sub_243FA1978(v85, 3))
  {
    v80 = a1;
    sub_24401FE64(0xD000000000000010, 0x80000002440EE270);
    (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
    v31 = sub_2440D2790();

    (*(v19 + 8))(v21, v18);
    sub_2440D2B00();
    sub_2440D18E0();
    *&v95[54] = v100;
    *&v95[70] = v101;
    *&v95[86] = v102;
    *&v95[102] = v103;
    *&v95[6] = v97;
    *&v95[22] = v98;
    v96 = 1;
    *&v95[38] = v99;
    v85 = v31;
    LOWORD(v86[0]) = 257;
    *(&v86[4] + 2) = *&v95[64];
    *(&v86[5] + 2) = *&v95[80];
    *(&v86[6] + 2) = *&v95[96];
    *(&v86[1] + 2) = *&v95[16];
    *(&v86[2] + 2) = *&v95[32];
    *(&v86[3] + 2) = *&v95[48];
    *&v86[7] = *(&v103 + 1);
    *(v86 + 2) = *v95;
    WORD4(v86[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5310, &qword_2440E4498);
    sub_24406D5FC();
    v32 = v67;
    sub_2440D2480();
    v93 = v86[5];
    v94[0] = v86[6];
    *(v94 + 10) = *(&v86[6] + 10);
    v89 = v86[1];
    v90 = v86[2];
    v91 = v86[3];
    v92 = v86[4];
    v87 = v85;
    v88 = v86[0];
    sub_243F5EED4(&v87, &qword_27EDC5310, &qword_2440E4498);
    sub_243F681C8(v32, v25, &qword_27EDC52C8, &qword_2440E4478);
    v25[*(v66 + 36)] = 0;
    v33 = sub_2440D1860();
    v34 = sub_2440D20C0();
    sub_243F681C8(v25, v27, &qword_27EDC52D0, &qword_2440E4480);
    v35 = &v27[*(v81 + 36)];
    *v35 = v33;
    v35[8] = v34;
    v36 = &qword_27EDC52D8;
    v37 = &unk_2440E4488;
    v38 = v68;
    sub_243F681C8(v27, v68, &qword_27EDC52D8, &unk_2440E4488);
    sub_243F5F574(v38, v83, &qword_27EDC52D8, &unk_2440E4488);
    swift_storeEnumTagMultiPayload();
    sub_24406D404();
    sub_24406D75C();
    sub_2440D1D20();
    v39 = v38;
  }

  else
  {
    v40 = *sub_244056A6C();
    v41 = sub_2440D2F80();
    v42 = sub_2440D2F80();
    v43 = [v40 URLForResource:v41 withExtension:v42];

    if (v43)
    {
      v44 = v71;
      sub_2440D05C0();

      v45 = 0;
      v46 = v77;
    }

    else
    {
      v45 = 1;
      v46 = v77;
      v44 = v71;
    }

    v47 = sub_2440D05F0();
    (*(*(v47 - 8) + 56))(v44, v45, 1, v47);
    v48 = v70;
    sub_243FC7DF0(v44, v70);
    sub_24406D224(v48, v46);
    v49 = v46 + *(v69 + 36);
    *v49 = 0;
    *(v49 + 8) = 257;
    sub_2440D2B00();
    sub_2440D18E0();
    v50 = v78;
    sub_243F681C8(v46, v78, &qword_27EDC4478, &qword_2440E4440);
    v51 = (v50 + *(v75 + 36));
    v52 = v92;
    v51[4] = v91;
    v51[5] = v52;
    v51[6] = v93;
    v53 = v88;
    *v51 = v87;
    v51[1] = v53;
    v54 = v90;
    v51[2] = v89;
    v51[3] = v54;
    sub_243F681C8(v50, v10, &qword_27EDC5298, &qword_2440E4448);
    *&v10[*(v79 + 36)] = 0;
    sub_24406D288();
    v55 = v76;
    sub_2440D2480();
    sub_243F5EED4(v10, &qword_27EDC52A0, &qword_2440E4450);
    v56 = v55;
    v57 = v74;
    sub_243F681C8(v56, v74, &qword_27EDC52A8, &qword_2440E4458);
    *(v57 + *(v73 + 36)) = 0;
    v58 = sub_2440D1860();
    v59 = sub_2440D20C0();
    v60 = v57;
    v61 = v72;
    sub_243F681C8(v60, v72, &qword_27EDC52B0, &qword_2440E4460);
    v62 = v61 + *(v84 + 36);
    *v62 = v58;
    *(v62 + 8) = v59;
    v36 = &qword_27EDC52B8;
    v37 = &qword_2440E4468;
    v63 = v80;
    sub_243F681C8(v61, v80, &qword_27EDC52B8, &qword_2440E4468);
    sub_243F5F574(v63, v83, &qword_27EDC52B8, &qword_2440E4468);
    swift_storeEnumTagMultiPayload();
    sub_24406D404();
    sub_24406D75C();
    sub_2440D1D20();
    v39 = v63;
  }

  return sub_243F5EED4(v39, v36, v37);
}

uint64_t sub_24406D224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVLoopPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24406D288()
{
  result = qword_27EDC52E0;
  if (!qword_27EDC52E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52A0, &qword_2440E4450);
    sub_24406D314();
    sub_24406D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52E0);
  }

  return result;
}

unint64_t sub_24406D314()
{
  result = qword_27EDC52E8;
  if (!qword_27EDC52E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5298, &qword_2440E4448);
    sub_244044DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52E8);
  }

  return result;
}

unint64_t sub_24406D3A0()
{
  result = qword_27EDC44C8;
  if (!qword_27EDC44C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC44D0, &qword_2440E1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44C8);
  }

  return result;
}

unint64_t sub_24406D404()
{
  result = qword_27EDC52F0;
  if (!qword_27EDC52F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52D8, &unk_2440E4488);
    sub_24406D490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52F0);
  }

  return result;
}

unint64_t sub_24406D490()
{
  result = qword_27EDC52F8;
  if (!qword_27EDC52F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52D0, &qword_2440E4480);
    sub_24406D548(&qword_27EDC5300, &qword_27EDC52C8, &qword_2440E4478, sub_24406D5FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC52F8);
  }

  return result;
}

uint64_t sub_24406D548(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24406D714(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24406D5FC()
{
  result = qword_27EDC5308;
  if (!qword_27EDC5308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5310, &qword_2440E4498);
    sub_24406D688();
    sub_24406D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5308);
  }

  return result;
}

unint64_t sub_24406D688()
{
  result = qword_27EDC5318;
  if (!qword_27EDC5318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5320, qword_2440E44A0);
    sub_243F6194C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5318);
  }

  return result;
}

uint64_t sub_24406D714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24406D75C()
{
  result = qword_27EDC5328;
  if (!qword_27EDC5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52B8, &qword_2440E4468);
    sub_24406D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5328);
  }

  return result;
}

unint64_t sub_24406D7E8()
{
  result = qword_27EDC5330;
  if (!qword_27EDC5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC52B0, &qword_2440E4460);
    sub_24406D548(&qword_27EDC5338, &qword_27EDC52A8, &qword_2440E4458, sub_24406D288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5330);
  }

  return result;
}

uint64_t sub_24406D8A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  return result;
}

unint64_t sub_24406D8E4()
{
  result = qword_27EDC5340;
  if (!qword_27EDC5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5348, &qword_2440E4548);
    sub_24406D404();
    sub_24406D75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5340);
  }

  return result;
}

id sub_24406D970(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI11CBlurEffect_settings] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_24406DA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CBlurEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24406DAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24406DB64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24406DC78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24406DD18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24406DE98(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24406DED8(a1);
  return v2;
}

uint64_t sub_24406DED8(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(*v1 + 136);
  v5 = v3[10];
  v6 = v3[11];
  type metadata accessor for Transition(255, v5, v6, v7);
  v8 = sub_2440D2EC0();
  swift_getTupleTypeMetadata2();
  v9 = sub_2440D3270();
  v10 = sub_24406FD94(v9, v5, v8, v3[12]);

  *(v1 + v4) = v10;
  *(v1 + *(*v1 + 144)) = 0;
  v11 = *(v6 - 8);
  (*(v11 + 16))(v1 + *(*v1 + 120), a1, v6);
  (*(v11 + 32))(v1 + *(*v1 + 128), a1, v6);
  return v1;
}

uint64_t sub_24406E094(uint64_t a1)
{
  v119 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v94 - v4;
  v5 = v119[10];
  v129 = v1;
  v6 = v119[11];
  v8 = type metadata accessor for Transition(255, v5, v6, v7);
  v109 = sub_2440D3630();
  v9 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v103 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v94 - v12;
  v120 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v94 - v17;
  MEMORY[0x28223BE20](v19);
  v113 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v94 - v22;
  v95 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v94 - v26;
  MEMORY[0x28223BE20](v28);
  v101 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v105 = &v94 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v100 = v34;
  v35 = *(v34 + 16);
  v121 = &v94 - v36;
  v128 = v6;
  v123 = v34 + 16;
  v112 = v35;
  v35(v33);
  v130 = v8;
  v37 = *(v8 + 40);
  v110 = a1;
  v38 = *(a1 + v37);

  if (!sub_2440D32B0())
  {
LABEL_25:

    return (*(v100 + 8))(v121, v128);
  }

  v118 = *(*v129 + 136);
  swift_beginAccess();
  v39 = 0;
  v125 = (v120 + 16);
  v115 = (v120 + 32);
  v122 = v130 - 8;
  v107 = (v9 + 8);
  v114 = (v120 + 8);
  v99 = (v100 + 8);
  *&v40 = 136446466;
  v96 = v40;
  v124 = v23;
  v102 = v15;
  v106 = v18;
  v117 = v27;
  v116 = v38;
  while (1)
  {
    v52 = sub_2440D3290();
    sub_2440D3250();
    if (v52)
    {
      v53 = *(v120 + 16);
      result = (v53)(v27, v38 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v39, v5);
    }

    else
    {
      result = sub_2440D3850();
      if (v95 != 8)
      {
        goto LABEL_27;
      }

      v132 = result;
      v53 = *v125;
      (*v125)(v27, &v132, v5);
      result = swift_unknownObjectRelease();
    }

    v127 = v39;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v126 = v39 + 1;
    (*v115)(v23, v27, v5);
    v55 = v119;
    v56 = v119[13];
    sub_2440D2EC0();
    v57 = v55[12];

    sub_2440D2EE0();

    if (v132)
    {

      sub_2440D2EE0();

      if (!v132)
      {
        v60 = *(v130 - 8);
        v58 = v108;
        (*(v60 + 56))(v108, 1, 1);
        v62 = *v107;
LABEL_14:
        v62(v58, v109);
        v63 = v106;
        v53(v106, v23, v5);
        v64 = sub_24406DE2C(&v132);
        sub_2440D2EC0();
        v65 = sub_2440D2ED0();
        if (*v66)
        {
          (v112)(v105, v121, v128);
          v67 = v103;
          v68 = v130;
          (*(v60 + 16))(v103, v110, v130);
          (*(v60 + 56))(v67, 0, 1, v68);
          v23 = v124;
          sub_2440D2EF0();
        }

        v65(&v131, 0);
        v69 = *v114;
        (*v114)(v63, v5);
        (v64)(&v132, 0);
        v69(v23, v5);
        goto LABEL_4;
      }

      v58 = v108;
      v59 = v130;
      sub_2440D2EE0();

      v60 = *(v59 - 8);
      v61 = (*(v60 + 48))(v58, 1, v59);
      v62 = *v107;
      if (v61 == 1)
      {
        goto LABEL_14;
      }

      v62(v58, v109);
      v70 = sub_243F4DF28();
      v71 = v104;
      sub_243F4DE64(v70, v104);
      v72 = sub_2440D11E0();
      v73 = *(v72 - 8);
      if ((*(v73 + 48))(v71, 1, v72) != 1)
      {
        v74 = v101;
        (v112)(v101, v121, v128);
        v75 = v102;
        v76 = v124;
        v53(v102, v124, v5);
        v77 = sub_2440D11C0();
        v78 = sub_2440D3470();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v98 = v77;
          v80 = v79;
          v111 = swift_slowAlloc();
          v132 = v111;
          *v80 = v96;
          v81 = v128;
          (v112)(v105, v74, v128);
          v82 = sub_2440D3040();
          v97 = v78;
          v84 = v83;
          (*v99)(v74, v81);
          v85 = sub_243F4E6F8(v82, v84, &v132);

          *(v80 + 4) = v85;
          *(v80 + 12) = 2082;
          v53(v113, v102, v5);
          v86 = sub_2440D3040();
          v88 = v87;
          v89 = *v114;
          (*v114)(v102, v5);
          v90 = sub_243F4E6F8(v86, v88, &v132);

          *(v80 + 14) = v90;
          v91 = v98;
          _os_log_impl(&dword_243F48000, v98, v97, "Transition from %{public}s due to event %{public}s already exists", v80, 0x16u);
          v92 = v111;
          swift_arrayDestroy();
          MEMORY[0x245D58570](v92, -1, -1);
          MEMORY[0x245D58570](v80, -1, -1);

          v89(v124, v5);
        }

        else
        {

          v93 = *v114;
          (*v114)(v75, v5);
          (*v99)(v74, v128);
          v93(v76, v5);
        }

        v38 = v116;
        (*(v73 + 8))(v104, v72);
        v23 = v124;
        v27 = v117;
        goto LABEL_5;
      }

      v23 = v124;
      (*v114)(v124, v5);
      sub_243F5FAB0(v71);
    }

    else
    {
      v53(v113, v124, v5);
      v41 = v128;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_2440D39D0();
      swift_allocObject();
      v43 = sub_2440D3240();
      v111 = v57;
      v44 = v43;
      v46 = v45;
      v47 = *(TupleTypeMetadata2 + 48);
      (v112)(v45, v121, v41);
      v48 = v46 + v47;
      v49 = v130;
      (*(*(v130 - 8) + 16))(v48, v110, v130);
      sub_2440D32F0();
      v50 = sub_24406FD94(v44, v41, v49, v56);

      v131 = v50;
      swift_beginAccess();
      sub_2440D2EC0();
      v23 = v124;
      sub_2440D2EF0();
      swift_endAccess();
      (*v114)(v23, v5);
    }

LABEL_4:
    v27 = v117;
    v38 = v116;
LABEL_5:
    v51 = sub_2440D32B0();
    v39 = v127 + 1;
    if (v126 == v51)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24406EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transition(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_2440D32F0();
  swift_getWitnessTable();
  return sub_2440D31E0();
}

uint64_t sub_24406EFB4(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = *v1;
  v4 = sub_2440D2C80();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2440D2CA0();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v3 + 80);
  v7 = v55;
  v9 = type metadata accessor for Transition(255, v55, *(&v55 + 1), v8);
  v52 = sub_2440D3630();
  v51 = *(v52 - 1);
  MEMORY[0x28223BE20](v52);
  v11 = &v45 - v10;
  v67 = *(*(&v7 + 1) - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v69 = *(v9 - 8);
  MEMORY[0x28223BE20](v17);
  v54 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v18;
  MEMORY[0x28223BE20](v19);
  v64 = &v45 - v20;
  swift_beginAccess();
  v66 = *(v3 + 104);
  sub_2440D2EC0();
  v21 = *(v3 + 96);

  sub_2440D2EE0();

  if (!aBlock)
  {
    aBlock = 0;
    v72 = 0xE000000000000000;
    sub_2440D3830();
    MEMORY[0x245D57000](0xD000000000000024, 0x80000002440EE350);
    goto LABEL_5;
  }

  v48 = v21;
  v49 = v7;
  v23 = *(*v2 + 176);
  v62 = *v2 + 176;
  v63 = v23;
  v23(v22);
  sub_2440D2EE0();

  v50 = *(v67 + 8);
  v50(v16, *(&v7 + 1));
  if ((*(v69 + 48))(v11, 1, v9) == 1)
  {
    (*(v51 + 8))(v11, v52);
    aBlock = 0;
    v72 = 0xE000000000000000;
    sub_2440D3830();
    v24 = MEMORY[0x245D57000](0xD000000000000025, 0x80000002440EE380);
    v25 = v65;
    v63(v24);
    sub_2440D39F0();
    v50(v25, *(&v7 + 1));
    MEMORY[0x245D57000](0x65766520726F6620, 0xEC000000203A746ELL);
LABEL_5:
    sub_2440D39F0();
    sub_2440700D0(aBlock, v72);

    return 0;
  }

  v47 = *(&v7 + 1);
  v27 = v69;
  v52 = *(v69 + 32);
  v28 = v64;
  v29 = v52(v64, v11, v9);
  v30 = v65;
  v63(v29);
  (*(*v2 + 160))(v30);
  (*(v67 + 16))(v30, &v28[*(v9 + 36)], *(&v7 + 1));
  (*(*v2 + 184))(v30);
  sub_243F5DB84();
  v68 = sub_2440D3530();
  v31 = *(v27 + 16);
  v32 = v54;
  v46 = v9;
  v31(v54, v28, v9);
  v33 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v34 = swift_allocObject();
  *&v35 = v48;
  *(&v35 + 1) = v66;
  *(v34 + 32) = v35;
  *(v34 + 16) = v55;
  v52((v34 + v33), v32, v9);
  v75 = sub_2440703E0;
  v76 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_243F5F604;
  v74 = &block_descriptor_29;
  v36 = _Block_copy(&aBlock);
  v37 = v56;
  sub_2440D2C90();
  v70 = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F73DE0();
  v38 = v58;
  v39 = v61;
  sub_2440D3710();
  v40 = v68;
  MEMORY[0x245D57440](0, v37, v38, v36);
  _Block_release(v36);

  (*(v60 + 8))(v38, v39);
  (*(v57 + 8))(v37, v59);

  aBlock = 0;
  v72 = 0xE000000000000000;
  sub_2440D3830();
  v41 = MEMORY[0x245D57000](0xD000000000000013, 0x80000002440EE3B0);
  (*(*v2 + 152))(v41);
  v42 = v47;
  sub_2440D39F0();
  v43 = v50;
  v50(v30, v42);
  v44 = MEMORY[0x245D57000](544175136, 0xE400000000000000);
  v63(v44);
  sub_2440D39F0();
  v43(v30, v42);
  sub_2440700D0(aBlock, v72);

  (*(v69 + 8))(v64, v46);
  return 1;
}

double sub_24406F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  type metadata accessor for Transition(255, v6, *(*v4 + 88), a4);
  v7 = sub_2440D2EC0();
  swift_getTupleTypeMetadata2();
  v8 = sub_2440D3270();
  v9 = sub_24406FD94(v8, v6, v7, *(v5 + 96));

  v10 = *(*v4 + 136);
  swift_beginAccess();
  *(v4 + v10) = v9;

  return result;
}

uint64_t sub_24406FA98()
{
  v1 = *(*v0 + 88);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 120), v1);
  v2(v0 + *(*v0 + 128), v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24406FB68()
{
  sub_24406FA98();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24406FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D2F00();

  return sub_24406FC0C(a1, v6, a2, a3);
}

unint64_t sub_24406FC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_2440D2F50();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_24406FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2440D32B0())
  {
    sub_2440D3920();
    v13 = sub_2440D3910();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2440D32B0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2440D3290())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2440D3850();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24406FBB0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2440700D0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_243F4DF28();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_243F5FAB0(v6);
  }

  v11 = sub_2440D11C0();
  v12 = sub_2440D3490();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_243F4E6F8(a1, a2, &v16);
    _os_log_impl(&dword_243F48000, v11, v12, "StateMachine: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D58570](v14, -1, -1);
    MEMORY[0x245D58570](v13, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t sub_2440702B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = (type metadata accessor for Transition(0, *(v4 + 16), v5, a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 48) & ~*(*v6 + 80));
  v8 = *(*(v5 - 8) + 8);
  v8(v7, v5);
  v8(v7 + v6[11], v5);

  if (*(v7 + v6[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2440703E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Transition(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = (v4 + *(result + 52) + ((*(v7 + 80) + 48) & ~*(v7 + 80)));
  if (*v8)
  {
    return (*v8)();
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244070470(uint64_t a1)
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

void *sub_244070548(uint64_t a1)
{
  sub_2440D1200();
  sub_2440D1220();
  result = sub_2440D1250();
  if (!result[1])
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!result[2])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!result[4])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result[5])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!result[6])
  {
LABEL_15:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5358, &qword_2440E4600);
  v3 = swift_allocObject();
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 32) = _Q0;
  *(v3 + 48) = xmmword_2440E45F0;
  MEMORY[0x245D55130](a1, v3 + 32, &unk_28577BE58, 2, 1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_2440D11F0();
  sub_2440D11F0();
  sub_2440D11F0();
  sub_2440D1210();
  sub_2440D1240();
  sub_2440D1240();
  sub_2440D1240();

  return sub_2440D1240();
}

void sub_24407070C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  [v1 displayCornerRadius];
  v3 = v2;

  if (v3 > 0.0)
  {
    v4 = [v0 currentTraitCollection];
    [v4 displayCornerRadius];
  }
}

double sub_244070874()
{
  if (sub_243FC0F94())
  {
    v0 = 20.0;
  }

  else
  {
    v0 = 30.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

uint64_t sub_244070A00(double *a1)
{
  v1 = sub_2440D2CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2CC0();
  swift_beginAccess();
  sub_2440D2D20();
  return (*(v2 + 8))(v4, v1);
}

double sub_244070BFC()
{
  if (*sub_243FC137C())
  {
    v0 = 30.0;
  }

  else
  {
    v0 = 20.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070C64()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 6.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070CC8()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 28.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070D2C()
{
  if (sub_243FC0F94())
  {
    v0 = 22.0;
  }

  else
  {
    v0 = 44.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070D94()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 28.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070DF8()
{
  if (sub_243FC0F94())
  {
    v0 = 0.0;
  }

  else
  {
    v0 = 12.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070E5C()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 32.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070EC4()
{
  if (sub_243FC0F94())
  {
    v0 = 16.0;
  }

  else
  {
    v0 = 24.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_244070F34()
{
  if (sub_243FC0F94())
  {
    v0 = 12.0;
  }

  else
  {
    v0 = 0.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

uint64_t sub_244070FB4()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2CC0();
  sub_2440D2D20();
  return (*(v1 + 8))(v3, v0);
}

double sub_244071094()
{
  if (sub_243FC0F94())
  {
    v0 = 15.0;
  }

  else
  {
    v0 = 29.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

double sub_2440710F8()
{
  if (sub_243FC0F94())
  {
    v0 = 12.0;
  }

  else
  {
    v0 = 24.0;
  }

  swift_beginAccess();
  return v0 * *&qword_27EDC5360;
}

void sub_244071278(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_2440D2F80();
  v9 = MGCopyAnswer();

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53A0, &qword_2440E46C8);
    if (swift_dynamicCast())
    {
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }

      sub_243FB03FC(0x746C7561666564, 0xE700000000000000);
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53A8, &unk_2440E46D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      if (*(v15 + 16) == 4)
      {
        v11 = *(v15 + 40);
        v12 = *(v15 + 56);

        v16.origin.x = a1;
        v16.origin.y = a2;
        v16.size.width = a3;
        v16.size.height = a4;
        v13 = CGRectGetWidth(v16) / v11;
        v17.origin.x = a1;
        v17.origin.y = a2;
        v17.size.width = a3;
        v17.size.height = a4;
        v14 = (v13 + CGRectGetHeight(v17) / v12) * 0.5;
        swift_beginAccess();
        qword_27EDC5360 = *&v14;
      }

      else
      {
LABEL_8:
      }
    }
  }
}

id sub_2440714A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53C8, &qword_2440E46F8);
  sub_2440D1F70();
  [v0 setNavigationDelegate_];

  sub_2440D1F70();
  [v0 setUIDelegate_];

  v1 = [v0 scrollView];
  [v1 setScrollEnabled_];

  v2 = [v0 scrollView];
  [v2 setTransfersVerticalScrollingToParent_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  return v4;
}

void sub_244071608(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0, &qword_2440E2F80);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v120 = &v117 - v8;
  MEMORY[0x28223BE20](v9);
  v118 = &v117 - v10;
  MEMORY[0x28223BE20](v11);
  v119 = &v117 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v117 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v117 - v17;
  v19 = *v1;
  v20 = v1[1];
  v121 = v1;
  v122 = v19;
  v21 = objc_opt_self();
  v124 = v20;

  v22 = [v21 sharedApplication];
  v23 = [v22 preferredContentSizeCategory];

  v131 = sub_243F4DFA8();
  sub_243F5F574(v131, v18, &qword_27EDC0A50, &qword_2440D5CB0);
  v24 = sub_2440D11E0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v130 = v25 + 48;
  v128 = v25;
  v129 = v26;
  v27 = v26(v18, 1, v24);
  v126 = v23;
  v127 = v24;
  if (v27 == 1)
  {
    sub_243F5EED4(v18, &qword_27EDC0A50, &qword_2440D5CB0);
    v28 = v122;
  }

  else
  {
    v29 = v23;
    v30 = sub_2440D11C0();
    v31 = sub_2440D3460();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v132 = v33;
      *v32 = 136315138;
      v34 = sub_2440D2FB0();
      v36 = a1;
      v37 = sub_243F4E6F8(v34, v35, &v132);

      *(v32 + 4) = v37;
      a1 = v36;
      _os_log_impl(&dword_243F48000, v30, v31, "content size %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D58570](v33, -1, -1);
      MEMORY[0x245D58570](v32, -1, -1);
    }

    v28 = v122;
    (*(v128 + 8))(v18, v127);
  }

  v38 = v124;
  v39 = 0x6D65322E31;
  v40 = sub_2440D2FB0();
  v42 = v41;
  if (v40 == sub_2440D2FB0() && v42 == v43)
  {
    goto LABEL_8;
  }

  v44 = sub_2440D3A10();

  if (v44)
  {
    goto LABEL_10;
  }

  v65 = sub_2440D2FB0();
  v67 = v66;
  if (v65 == sub_2440D2FB0() && v67 == v68)
  {
    goto LABEL_8;
  }

  v69 = sub_2440D3A10();

  if (v69)
  {
    goto LABEL_10;
  }

  v70 = sub_2440D2FB0();
  v72 = v71;
  if (v70 == sub_2440D2FB0() && v72 == v73)
  {
    goto LABEL_8;
  }

  v74 = sub_2440D3A10();

  if (v74)
  {
    goto LABEL_10;
  }

  v75 = sub_2440D2FB0();
  v77 = v76;
  if (v75 == sub_2440D2FB0() && v77 == v78)
  {
LABEL_8:

LABEL_10:
    sub_243F5F574(v131, v15, &qword_27EDC0A50, &qword_2440D5CB0);
    v45 = v127;
    if (v129(v15, 1, v127) == 1)
    {
      sub_243F5EED4(v15, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v46 = sub_2440D11C0();
      v47 = sub_2440D3460();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_243F48000, v46, v47, "html m", v48, 2u);
        MEMORY[0x245D58570](v48, -1, -1);
      }

      (*(v128 + 8))(v15, v45);
    }

    v49 = 0x6D65342E31;
LABEL_16:
    v50 = 0xE500000000000000;
    goto LABEL_17;
  }

  v79 = sub_2440D3A10();

  if (v79)
  {
    goto LABEL_10;
  }

  v80 = sub_2440D2FB0();
  v82 = v81;
  if (v80 == sub_2440D2FB0() && v82 == v83)
  {
    v45 = v127;
    goto LABEL_36;
  }

  v103 = sub_2440D3A10();

  v45 = v127;
  if (v103)
  {
    goto LABEL_50;
  }

  v108 = sub_2440D2FB0();
  v110 = v109;
  if (v108 == sub_2440D2FB0() && v110 == v111)
  {
LABEL_36:

LABEL_50:
    v104 = v119;
    sub_243F5F574(v131, v119, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v129(v104, 1, v45) == 1)
    {
      sub_243F5EED4(v104, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v105 = sub_2440D11C0();
      v106 = sub_2440D3460();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_243F48000, v105, v106, "html xl", v107, 2u);
        MEMORY[0x245D58570](v107, -1, -1);
      }

      (*(v128 + 8))(v104, v45);
    }

    v49 = 0x6D65362E31;
    v39 = 0x6D65342E31;
    goto LABEL_16;
  }

  v112 = sub_2440D3A10();

  if (v112)
  {
    goto LABEL_50;
  }

  v113 = v118;
  sub_243F5F574(v131, v118, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v129(v113, 1, v45) == 1)
  {
    sub_243F5EED4(v113, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v114 = sub_2440D11C0();
    v115 = sub_2440D3460();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_243F48000, v114, v115, "default html size", v116, 2u);
      MEMORY[0x245D58570](v116, -1, -1);
    }

    (*(v128 + 8))(v113, v45);
  }

  v50 = 0xE300000000000000;
  v49 = 0x6D65322E31;
  v39 = 7169329;
LABEL_17:
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_2440D3830();
  MEMORY[0x245D57000](0xD000000000000259, 0x80000002440EE420);
  MEMORY[0x245D57000](v39, v50);

  MEMORY[0x245D57000](0xD00000000000002CLL, 0x80000002440EE680);
  MEMORY[0x245D57000](v49, 0xE500000000000000);
  MEMORY[0x245D57000](0xD000000000000022, 0x80000002440EE6B0);
  v52 = v132;
  v51 = v133;
  if (*(v121 + 16) == 1)
  {
    v132 = v28;
    v133 = v38;
    v136 = 0x3E646165683CLL;
    v137 = 0xE600000000000000;
    v53 = sub_2440D08A0();
    v54 = v123;
    (*(*(v53 - 8) + 56))(v123, 1, 1, v53);
    sub_243F4EF64();

    v55 = sub_2440D36A0();
    v57 = v56;
    v59 = v58;
    sub_243F5EED4(v54, &qword_27EDC4AE0, &qword_2440E2F80);

    if (v59)
    {
      v132 = v52;
      v133 = v51;

      MEMORY[0x245D57000](0x3E646165682F3CLL, 0xE700000000000000);

      MEMORY[0x245D57000](v28, v38);
    }

    else
    {
      sub_2440724C8(v55, v57, v52, v51, v28, v38);
    }

    goto LABEL_39;
  }

  v132 = v28;
  v133 = v38;
  v136 = 0x3E646165682F3CLL;
  v137 = 0xE700000000000000;
  v60 = sub_2440D08A0();
  v61 = v123;
  (*(*(v60 - 8) + 56))(v123, 1, 1, v60);
  sub_243F4EF64();

  sub_2440D36A0();
  v63 = v62;
  sub_243F5EED4(v61, &qword_27EDC4AE0, &qword_2440E2F80);

  if ((v63 & 1) == 0)
  {

    v132 = 0x3E6C6D74683CLL;
    v133 = 0xE600000000000000;
    MEMORY[0x245D57000](v52, v51);

    v84 = v45;
    v85 = v132;
    v86 = v133;

    v87 = sub_244073CEC(0xFuLL, v28, v38);
    v89 = v88;
    v91 = v90;
    v93 = v92;

    v136 = v85;
    v137 = v86;
    v45 = v84;
    v132 = v87;
    v133 = v89;
    v134 = v91;
    v135 = v93;
    sub_244073D38();
    sub_2440D30F0();

    goto LABEL_39;
  }

  v64 = v120;
  sub_243F5F574(v131, v120, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v129(v64, 1, v45) == 1)
  {
    sub_243F5EED4(v64, &qword_27EDC0A50, &qword_2440D5CB0);
LABEL_39:
    v94 = v125;
    goto LABEL_40;
  }

  v99 = sub_2440D11C0();
  v100 = sub_2440D3460();
  v101 = os_log_type_enabled(v99, v100);
  v94 = v125;
  if (v101)
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_243F48000, v99, v100, "no header end tag, use as is", v102, 2u);
    MEMORY[0x245D58570](v102, -1, -1);
  }

  (*(v128 + 8))(v64, v45);
LABEL_40:
  sub_243F5F574(v131, v94, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v129(v94, 1, v45) == 1)
  {
    sub_243F5EED4(v94, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v95 = sub_2440D11C0();
    v96 = sub_2440D3460();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_243F48000, v95, v96, "loading final html", v97, 2u);
      MEMORY[0x245D58570](v97, -1, -1);
    }

    (*(v128 + 8))(v94, v45);
  }

  v98 = sub_2440D2F80();
}

void sub_2440724C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_2440D3670();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_2440D3670();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    v18 = sub_243FE48E4(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_42;
  }

  v19 = sub_2440D3140();
  v29 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v29 = 7;
  }

  v21 = v29 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    v30 = v21;
    v23 = sub_243FE48E4(a2, a5, a6);
    v21 = v30;
  }

  if ((v21 & 0xC) == v17)
  {
    v31 = v23;
    v21 = sub_243FE48E4(v21, a5, a6);
    v23 = v31;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v24 = (v21 >> 16) - (v23 >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v20 < v23 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_2440D3140();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        v27 = __OFADD__(v19, v26);
        v25 = v19 + v26;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = v19 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v19, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v32 = v24;
    v33 = sub_2440D3110();
    v24 = v32;
    v27 = __OFADD__(v19, v33);
    v25 = v19 + v33;
    if (!v27)
    {
LABEL_21:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (!v27)
      {
        MEMORY[0x245D56F80](v28);
LABEL_23:
        sub_2440D31C0();
        sub_244073D38();
        sub_2440D30F0();

        sub_2440D30F0();
        sub_244073CEC(a2, a5, a6);
        sub_2440D30F0();

        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

id sub_2440727DC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_244073D8C(a1, v3 + OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_244073E10(a1);
  return v4;
}

uint64_t sub_244072850@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent;
  swift_beginAccess();
  return sub_244073D8C(v1 + v3, a1);
}

uint64_t sub_2440728A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent;
  swift_beginAccess();
  sub_244073E6C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_24407296C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = sub_243F4DFA8();
  sub_243F5F574(v9, v8, &qword_27EDC0A50, &qword_2440D5CB0);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_243F5EED4(v8, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v12 = a1;
    v13 = sub_2440D11C0();
    v14 = sub_2440D3460();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = [v12 scrollView];
      [v16 contentSize];
      v18 = v17;

      *(v15 + 4) = v18;
      _os_log_impl(&dword_243F48000, v13, v14, "webview didFinish: %f", v15, 0xCu);
      MEMORY[0x245D58570](v15, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    (*((*MEMORY[0x277D85000] & *result) + 0x58))();

    v21 = [a1 scrollView];
    [v21 contentSize];
    v23 = v22;

    v24 = v5[4];
    v25 = v5[5];
    v26[2] = v5[3];
    v26[3] = v24;
    v26[4] = v25;
    v26[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53B0, &qword_2440D8AC0);
    sub_2440D2950();
    return sub_244073E10(v5);
  }

  return result;
}

uint64_t sub_244072CF8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v111 = a4;
  v112 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53E0, &unk_2440E4700);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v91 - v6;
  v7 = sub_2440D0390();
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0, &qword_2440E1E30);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v91 - v12;
  v105 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v105);
  v103 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  v23 = sub_2440D02A0();
  v108 = *(v23 - 8);
  v109 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2440D05F0();
  v107 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v91 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  *&v36 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v38 = &v91 - v37;
  if ([a2 navigationType])
  {
    v39 = 1;
    return v112(v39);
  }

  v96 = v34;
  v97 = v31;
  v94 = v28;
  v95 = v19;
  v98 = v38;
  v40 = v110;
  v41 = [a2 request];
  sub_2440D0270();

  sub_2440D0290();
  (*(v108 + 8))(v25, v109);
  v42 = v107;
  v43 = *(v107 + 48);
  if (v43(v22, 1, v26) == 1)
  {
    sub_243F5EED4(v22, &qword_27EDC1FE0, &qword_2440DBDF0);
    v39 = 0;
    return v112(v39);
  }

  v109 = v43;
  v45 = *(v42 + 32);
  v46 = v98;
  v108 = v42 + 32;
  v93 = v45;
  v45(v98, v22, v26);
  v47 = sub_243F4DFA8();
  v48 = v16;
  sub_243F5F574(v47, v16, &qword_27EDC0A50, &qword_2440D5CB0);
  v49 = sub_2440D11E0();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_243F5EED4(v48, &qword_27EDC0A50, &qword_2440D5CB0);
    v51 = v40;
    v53 = v103;
    v52 = v104;
    v54 = v46;
  }

  else
  {
    v55 = v96;
    (*(v42 + 16))(v96, v46, v26);
    v56 = sub_2440D11C0();
    v92 = sub_2440D3460();
    if (os_log_type_enabled(v56, v92))
    {
      v57 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v113 = v91;
      *v57 = 136315138;
      sub_244074350(&qword_27EDC53F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v58 = v56;
      v59 = sub_2440D39C0();
      v60 = v55;
      v62 = v61;
      (*(v42 + 8))(v60, v26);
      v63 = sub_243F4E6F8(v59, v62, &v113);

      v64 = v57;
      v51 = v110;
      *(v64 + 1) = v63;
      v65 = v64;
      _os_log_impl(&dword_243F48000, v58, v92, "webview decidePolicyFor: %s", v64, 0xCu);
      v66 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x245D58570](v66, -1, -1);
      MEMORY[0x245D58570](v65, -1, -1);
    }

    else
    {
      v51 = v40;

      (*(v42 + 8))(v55, v26);
    }

    v53 = v103;
    (*(v50 + 8))(v48, v49);
    v52 = v104;
    v54 = v98;
  }

  v112(0);
  v67 = sub_2440D05D0();
  v69 = v106;
  if (v68)
  {
    if (v67 == 0x7370747468 && v68 == 0xE500000000000000)
    {

LABEL_18:
      (*((*MEMORY[0x277D85000] & *v69) + 0x58))(v70);
      v72 = v97;
      (*(v42 + 16))(v97, v54, v26);
      sub_24408C470(v72, v51);
      v73 = type metadata accessor for WebContent(0);
      (*(*(v73 - 8) + 56))(v51, 0, 1, v73);
      sub_243F5F574(v51, v52, &qword_27EDC53C0, &qword_2440E1E30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
      sub_2440D2950();
      sub_243F5EED4(v51, &qword_27EDC53C0, &qword_2440E1E30);
      sub_244073E10(v53);
      return (*(v42 + 8))(v54, v26);
    }

    v71 = sub_2440D3A10();
    v54 = v98;

    if (v71)
    {
      goto LABEL_18;
    }
  }

  v74 = sub_2440D05D0();
  if (!v75)
  {
    return (*(v42 + 8))(v54, v26);
  }

  if (v74 == 1886680168 && v75 == 0xE400000000000000)
  {

    goto LABEL_24;
  }

  v76 = sub_2440D3A10();

  if ((v76 & 1) == 0)
  {
    return (*(v42 + 8))(v54, v26);
  }

LABEL_24:
  v77 = v42;
  v78 = v26;
  v79 = v100;
  sub_2440D0360();
  v80 = v101;
  v81 = v102;
  if ((*(v101 + 48))(v79, 1, v102) == 1)
  {
    (*(v77 + 8))(v54, v78);
    return sub_243F5EED4(v79, &unk_27EDC53E0, &unk_2440E4700);
  }

  else
  {
    v82 = v79;
    v83 = v99;
    (*(v80 + 32))(v99, v82, v81);
    v84 = v80;
    sub_2440D0380();
    v85 = v95;
    sub_2440D0370();
    if (v109(v85, 1, v78) == 1)
    {
      (*(v80 + 8))(v83, v102);
      (*(v77 + 8))(v98, v78);
      return sub_243F5EED4(v85, &qword_27EDC1FE0, &qword_2440DBDF0);
    }

    else
    {
      v86 = v94;
      v87 = v93(v94, v85, v78);
      (*((*MEMORY[0x277D85000] & *v106) + 0x58))(v87);
      v88 = v97;
      (*(v77 + 16))(v97, v86, v78);
      sub_24408C470(v88, v51);
      v89 = type metadata accessor for WebContent(0);
      (*(*(v89 - 8) + 56))(v51, 0, 1, v89);
      sub_243F5F574(v51, v52, &qword_27EDC53C0, &qword_2440E1E30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
      sub_2440D2950();
      sub_243F5EED4(v51, &qword_27EDC53C0, &qword_2440E1E30);
      sub_244073E10(v53);
      v90 = *(v77 + 8);
      v90(v86, v78);
      (*(v84 + 8))(v99, v102);
      return (v90)(v98, v78);
    }
  }
}

id sub_2440739EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTMLView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_244073A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  v9 = a7 + *(type metadata accessor for HTMLView(0) + 28);

  return sub_244074298(a6, v9);
}

uint64_t sub_244073AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244073D8C(v2, v5);
  v6 = type metadata accessor for HTMLView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_244073D8C(v5, v7 + OBJC_IVAR____TtCV19ContactlessReaderUI8HTMLView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_244073E10(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_244073B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView, &unk_2440E4710);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_244073C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView, &unk_2440E4710);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_244073C94(uint64_t a1)
{
  sub_244074350(&qword_27EDC54D0, type metadata accessor for HTMLView, &unk_2440E4710);
  sub_2440D1CE0();
  __break(1u);
}

unint64_t sub_244073CEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2440D31C0();
  }

  __break(1u);
  return result;
}

unint64_t sub_244073D38()
{
  result = qword_27EDC53D8;
  if (!qword_27EDC53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC53D8);
  }

  return result;
}

uint64_t sub_244073D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTMLView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244073E10(uint64_t a1)
{
  v2 = type metadata accessor for HTMLView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244073E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTMLView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_244073ED0(void *a1)
{
  v22 = a1;
  v1 = sub_2440D2C80();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D2CA0();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2CD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_243F5DB84();
  v14 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v23 = *(v8 + 8);
  v23(v10, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v22;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2440753E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244074350(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v6, v3, v18);
  _Block_release(v18);

  (*(v26 + 8))(v3, v1);
  (*(v24 + 8))(v6, v25);
  return (v23)(v13, v7);
}

uint64_t sub_244074298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_244074350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2440743AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24407447C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24407452C(uint64_t a1)
{
  sub_2440745C8();
  if (v1 <= 0x3F)
  {
    sub_244074618(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2440745C8()
{
  if (!qword_27EDC53F8)
  {
    v0 = sub_2440D2980();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC53F8);
    }
  }
}

void sub_244074618(uint64_t a1)
{
  if (!qword_27EDC5400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC53C0, &qword_2440E1E30);
    v1 = sub_2440D2980();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC5400);
    }
  }
}

uint64_t sub_244074684(uint64_t a1)
{
  result = type metadata accessor for HTMLView(319);
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

uint64_t sub_244074714(void *a1, void *a2, uint64_t a3)
{
  v112 = a3;
  v108 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53E0, &unk_2440E4700);
  MEMORY[0x28223BE20](v4 - 8);
  v103 = &v89[-v5];
  v6 = sub_2440D0390();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0, &qword_2440E1E30);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v106 = &v89[-v11];
  v107 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v107);
  v104 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v89[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v89[-v20];
  v22 = sub_2440D02A0();
  v110 = *(v22 - 8);
  v111 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v89[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_2440D05F0();
  v109 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v89[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v30 = &v89[-v29];
  MEMORY[0x28223BE20](v31);
  v33 = &v89[-v32];
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v37 = &v89[-v36];
  if (![a1 navigationType])
  {
    v97 = v33;
    v98 = v30;
    v95 = v27;
    v96 = v18;
    v99 = v37;
    v40 = [a1 request];
    sub_2440D0270();

    sub_2440D0290();
    (*(v110 + 8))(v24, v111);
    v41 = v109;
    v42 = *(v109 + 48);
    if (v42(v21, 1, v25) == 1)
    {
      sub_243F5EED4(v21, &qword_27EDC1FE0, &qword_2440DBDF0);
      return (*(v112 + 16))(v112, 0);
    }

    v111 = v42;
    v43 = *(v41 + 32);
    v44 = v99;
    v110 = v41 + 32;
    v94 = v43;
    v43(v99, v21, v25);
    v45 = sub_243F4DFA8();
    v46 = v15;
    sub_243F5F574(v45, v15, &qword_27EDC0A50, &qword_2440D5CB0);
    v47 = sub_2440D11E0();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v15, 1, v47) == 1)
    {
      sub_243F5EED4(v15, &qword_27EDC0A50, &qword_2440D5CB0);
      v50 = v104;
      v49 = v105;
      v51 = v108;
      v52 = v112;
    }

    else
    {
      v93 = v47;
      v53 = v97;
      (*(v41 + 16))(v97, v44, v25);
      v54 = sub_2440D11C0();
      v55 = sub_2440D3460();
      v56 = os_log_type_enabled(v54, v55);
      v51 = v108;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v91 = v57;
        v92 = swift_slowAlloc();
        v113 = v92;
        *v57 = 136315138;
        sub_244074350(&qword_27EDC53F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v90 = v55;
        v58 = sub_2440D39C0();
        v59 = v53;
        v61 = v60;
        (*(v41 + 8))(v59, v25);
        v62 = sub_243F4E6F8(v58, v61, &v113);

        v63 = v91;
        *(v91 + 1) = v62;
        v44 = v99;
        _os_log_impl(&dword_243F48000, v54, v90, "webview decidePolicyFor: %s", v63, 0xCu);
        v64 = v92;
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x245D58570](v64, -1, -1);
        MEMORY[0x245D58570](v63, -1, -1);
      }

      else
      {

        (*(v41 + 8))(v53, v25);
      }

      v49 = v105;
      v52 = v112;
      (*(v48 + 8))(v46, v93);
      v50 = v104;
    }

    (*(v52 + 16))(v52, 0);
    v65 = sub_2440D05D0();
    v67 = v106;
    if (v66)
    {
      if (v65 == 0x7370747468 && v66 == 0xE500000000000000)
      {

LABEL_18:
        (*((*MEMORY[0x277D85000] & *v51) + 0x58))(v68);
        v70 = v98;
        (*(v41 + 16))(v98, v44, v25);
        sub_24408C470(v70, v67);
        v71 = type metadata accessor for WebContent(0);
        (*(*(v71 - 8) + 56))(v67, 0, 1, v71);
        sub_243F5F574(v67, v49, &qword_27EDC53C0, &qword_2440E1E30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
        sub_2440D2950();
        sub_243F5EED4(v67, &qword_27EDC53C0, &qword_2440E1E30);
        sub_244073E10(v50);
        return (*(v41 + 8))(v44, v25);
      }

      v69 = sub_2440D3A10();
      v44 = v99;

      if (v69)
      {
        goto LABEL_18;
      }
    }

    v72 = sub_2440D05D0();
    v74 = v103;
    if (v73)
    {
      if (v72 == 1886680168 && v73 == 0xE400000000000000)
      {

        goto LABEL_24;
      }

      v75 = sub_2440D3A10();
      v44 = v99;

      if (v75)
      {
LABEL_24:
        sub_2440D0360();
        v76 = v44;
        v77 = v101;
        v78 = v102;
        if ((*(v101 + 48))(v74, 1, v102) == 1)
        {
          (*(v41 + 8))(v76, v25);
          return sub_243F5EED4(v74, &unk_27EDC53E0, &unk_2440E4700);
        }

        else
        {
          v79 = v74;
          v80 = v41;
          v81 = v100;
          (*(v77 + 32))(v100, v79, v78);
          v82 = v77;
          sub_2440D0380();
          v83 = v96;
          sub_2440D0370();
          if (v111(v83, 1, v25) == 1)
          {
            (*(v77 + 8))(v81, v102);
            (*(v80 + 8))(v99, v25);
            return sub_243F5EED4(v83, &qword_27EDC1FE0, &qword_2440DBDF0);
          }

          else
          {
            v84 = v95;
            v85 = v94(v95, v83, v25);
            (*((*MEMORY[0x277D85000] & *v108) + 0x58))(v85);
            v86 = v98;
            (*(v80 + 16))(v98, v84, v25);
            sub_24408C470(v86, v67);
            v87 = type metadata accessor for WebContent(0);
            (*(*(v87 - 8) + 56))(v67, 0, 1, v87);
            sub_243F5F574(v67, v49, &qword_27EDC53C0, &qword_2440E1E30);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
            sub_2440D2950();
            sub_243F5EED4(v67, &qword_27EDC53C0, &qword_2440E1E30);
            sub_244073E10(v50);
            v88 = *(v80 + 8);
            v88(v84, v25);
            (*(v82 + 8))(v100, v102);
            return (v88)(v99, v25);
          }
        }
      }
    }

    return (*(v41 + 8))(v44, v25);
  }

  v38 = *(v112 + 16);

  return v38();
}

uint64_t sub_244075368()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2440753A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for TermsOfServiceSheet(uint64_t a1)
{
  result = qword_27EDD2070;
  if (!qword_27EDD2070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24407544C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF8, &qword_2440D80E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC54F8, &qword_2440E4898);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5500, &qword_2440E48A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5508, &qword_2440E48A8);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5510, &qword_2440E48B0);
  sub_243F5DD50(&qword_27EDC5518, &qword_27EDC5510, &qword_2440E48B0, MEMORY[0x277CDDB40]);
  v47 = v20;
  sub_2440D1820();
  v21 = *a1;
  if (*a1)
  {
    v53 = v13;
    v22 = *(*v21 + 480);

    LOBYTE(v22) = v22(v23);

    v24 = 1;
    if (v22)
    {
      *v10 = sub_2440D1C20();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5528, &qword_2440E48C0) + 44)];
      v26 = v45;
      sub_2440D14F0();
      v44 = v10;
      v27 = *(v4 + 16);
      v28 = v46;
      v27(v46, v26, v3);
      *v25 = 0;
      v25[8] = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5530, &unk_2440E48C8);
      v27(&v25[*(v29 + 48)], v28, v3);
      v30 = &v25[*(v29 + 64)];
      *v30 = 0;
      v30[8] = 1;
      v31 = *(v4 + 8);
      v31(v26, v3);
      v31(v28, v3);
      sub_243F681C8(v44, v54, &qword_27EDC54F8, &qword_2440E4898);
      v24 = 0;
    }

    v32 = v54;
    (*(v51 + 56))(v54, v24, 1, v8);
    v33 = v47;
    v34 = v48;
    v35 = *(v48 + 16);
    v37 = v49;
    v36 = v50;
    v35(v50, v47, v49);
    v38 = v53;
    sub_243F5F574(v32, v53, &qword_27EDC5500, &qword_2440E48A0);
    v39 = v52;
    v35(v52, v36, v37);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5520, &qword_2440E48B8);
    sub_243F5F574(v38, &v39[*(v40 + 48)], &qword_27EDC5500, &qword_2440E48A0);
    sub_243F5EED4(v32, &qword_27EDC5500, &qword_2440E48A0);
    v41 = *(v34 + 8);
    v41(v33, v37);
    sub_243F5EED4(v38, &qword_27EDC5500, &qword_2440E48A0);
    return (v41)(v36, v37);
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_244075A08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for TermsOfServiceSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_244079BE0(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24407BD58(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TermsOfServiceSheet);
  *a2 = sub_24407A250;
  a2[1] = v8;
  return result;
}

uint64_t sub_244075B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v111 = a2;
  v104 = a1;
  v105 = a3;
  v103 = sub_2440D18A0();
  v101 = *(v103 - 8);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TermsOfServiceSheet(0);
  v6 = *(v5 - 8);
  v91 = v5 - 8;
  v95 = v6;
  v109 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v84 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5538, &qword_2440E48D8);
  v10 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v12 = &v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5540, &qword_2440E48E0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5548, &qword_2440E48E8);
  MEMORY[0x28223BE20](v85);
  v18 = &v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5550, &qword_2440E48F0);
  v20 = *(v19 - 8);
  v87 = v19;
  v88 = v20;
  MEMORY[0x28223BE20](v19);
  v86 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5558, &qword_2440E48F8);
  v23 = *(v22 - 8);
  v92 = v22;
  v93 = v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v84 - v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5560, &qword_2440E4900);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v84 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5568, &qword_2440E4908);
  MEMORY[0x28223BE20](v90);
  v106 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5570, &qword_2440E4910);
  v98 = *(v27 - 8);
  v99 = v27;
  MEMORY[0x28223BE20](v27);
  v97 = &v84 - v28;
  sub_2440D2090();
  v114 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5578, &qword_2440E4918);
  sub_243F5DD50(&qword_27EDC5580, &qword_27EDC5578, &qword_2440E4918, MEMORY[0x277CE14C0]);
  sub_2440D13E0();
  sub_2440D2AE0();
  sub_2440D18E0();
  (*(v10 + 32))(v16, v12, v84);
  v29 = &v16[*(v14 + 44)];
  v30 = v124;
  *(v29 + 4) = v123;
  *(v29 + 5) = v30;
  *(v29 + 6) = v125;
  v31 = v120;
  *v29 = v119;
  *(v29 + 1) = v31;
  v32 = v122;
  *(v29 + 2) = v121;
  *(v29 + 3) = v32;
  LOBYTE(v3) = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_243F681C8(v16, v18, &qword_27EDC5540, &qword_2440E48E0);
  v41 = v85;
  v42 = &v18[*(v85 + 36)];
  *v42 = v3;
  *(v42 + 1) = v34;
  *(v42 + 2) = v36;
  *(v42 + 3) = v38;
  *(v42 + 4) = v40;
  v42[40] = 0;
  v43 = v111;
  v113 = v111;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5588, &qword_2440E4920);
  v45 = sub_24407A3A0(&qword_27EDC5590, &qword_27EDC5548, &qword_2440E48E8, sub_24407A2E0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55A8, &qword_2440E4928);
  v47 = sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8, &qword_2440E4928, MEMORY[0x277CDDB60]);
  v115 = v46;
  v116 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v86;
  sub_2440D25B0();
  sub_243F5EED4(v18, &qword_27EDC5548, &qword_2440E48E8);
  sub_2440D1C30();
  v112 = v43;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55B8, &qword_2440E4930);
  v115 = v41;
  v116 = v44;
  v117 = v45;
  v118 = OpaqueTypeConformance2;
  v85 = swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55C0, &qword_2440E4938);
  v51 = sub_24407A3A0(&qword_27EDC55C8, &qword_27EDC55C0, &qword_2440E4938, sub_24407A424);
  v115 = v50;
  v116 = v51;
  v83 = swift_getOpaqueTypeConformance2();
  v52 = v87;
  sub_2440D23B0();
  v53 = v49;
  v54 = v52;
  (*(v88 + 8))(v53, v52);
  v91 = *(v91 + 44);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
  v55 = v111;
  sub_2440D2840();
  v56 = v108;
  sub_244079BE0(v55, v108);
  v57 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v58 = swift_allocObject();
  v95 = type metadata accessor for TermsOfServiceSheet;
  sub_24407BD58(v56, v58 + v57, type metadata accessor for TermsOfServiceSheet);
  sub_244079BE0(v55, v56);
  v59 = swift_allocObject();
  sub_24407BD58(v56, v59 + v57, type metadata accessor for TermsOfServiceSheet);
  type metadata accessor for WebContent(0);
  type metadata accessor for SafariWebView(0);
  v115 = v54;
  v116 = v84;
  v117 = v85;
  v118 = v83;
  swift_getOpaqueTypeConformance2();
  sub_24407BDC0(&qword_27EDC18F0, type metadata accessor for WebContent, &unk_2440E53E0);
  sub_24407BDC0(&qword_27EDC18F8, type metadata accessor for SafariWebView, &unk_2440E1278);
  v60 = v89;
  v61 = v110;
  v62 = v92;
  v63 = v107;
  sub_2440D2570();

  sub_243F5EED4(v61, &qword_27EDC17F8, &qword_2440D9D90);
  (*(v93 + 8))(v63, v62);
  v64 = sub_2440D2BA0();
  v65 = v106;
  v66 = &v106[*(v90 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1900, &unk_2440D9E40);
  v67 = v111;
  sub_2440D2820();
  *v66 = v64;
  (*(v94 + 32))(v65, v60, v96);
  v68 = v67;
  v69 = *(v67 + 80);
  v115 = *(v67 + 72);
  v116 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v71 = v100;
  v70 = v101;
  v72 = v103;
  (*(v101 + 16))(v100, v104, v103);
  v73 = v70;
  v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v75 = swift_allocObject();
  (*(v73 + 32))(v75 + v74, v71, v72);
  sub_24407A680();
  v76 = v97;
  v77 = v106;
  sub_2440D25E0();

  sub_243F5EED4(v77, &qword_27EDC5568, &qword_2440E4908);
  v78 = v108;
  sub_244079BE0(v68, v108);
  v79 = swift_allocObject();
  sub_24407BD58(v78, v79 + v57, v95);
  v80 = v105;
  (*(v98 + 32))(v105, v76, v99);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55F8, &unk_2440E4958);
  v82 = (v80 + *(result + 36));
  *v82 = 0;
  v82[1] = 0;
  v82[2] = sub_24407A9E4;
  v82[3] = v79;
  return result;
}

uint64_t sub_244076858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5740, &unk_2440E4B70);
  MEMORY[0x28223BE20](v113);
  v114 = &v94 - v3;
  v4 = sub_2440D1BC0();
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8, &qword_2440D9D90);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v94 - v7;
  v8 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1978, &unk_2440D9F50);
  MEMORY[0x28223BE20](v101);
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v94 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1980, &qword_2440E4B80);
  MEMORY[0x28223BE20](v110);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  MEMORY[0x28223BE20](v22);
  v99 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5748, &qword_2440E4B88);
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5750, &qword_2440E4B90);
  MEMORY[0x28223BE20](v105);
  v28 = &v94 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5758, &qword_2440E4B98);
  MEMORY[0x28223BE20](v29 - 8);
  v112 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v118 = &v94 - v32;
  v111 = sub_2440D2690();
  sub_2440D2B00();
  sub_2440D1560();
  v117 = v135;
  v109 = v139;
  v107 = v137;
  v108 = v140;
  v116 = v136;
  LOBYTE(v141) = v136;
  v106 = v138;
  LOBYTE(v124) = v138;
  v33 = a1[5];
  LOBYTE(v141) = *(a1 + 32);
  *(&v141 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v34 = *a1;
  if (v124 == 1)
  {
    v95 = v26;
    v96 = v24;
    v98 = v28;
    if (v34)
    {
      v35 = *(*v34 + 528);

      v37 = v35(v36);

      v38 = (*(*v37 + 176))(1);
      v40 = v39;

      v42 = a1[10];
      v124 = a1[9];
      v41 = v124;
      v125 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
      sub_2440D2840();
      v43 = v141;
      v44 = *&v142;
      type metadata accessor for TermsOfServiceSheet(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
      v45 = v100;
      sub_2440D2840();
      v46 = sub_243F4E2F4();
      sub_244073A34(v38, v40, v46 & 1, v43, *(&v43 + 1), v45, v13, v44);
      *&v141 = v41;
      *(&v141 + 1) = v42;
      sub_2440D2820();
      sub_2440D2B10();
      sub_2440D18E0();
      v47 = v97;
      sub_24407BD58(v13, v97, type metadata accessor for HTMLView);
      v48 = v102;
      v49 = (v47 + *(v101 + 36));
      v50 = v146;
      v49[4] = v145;
      v49[5] = v50;
      v49[6] = v147;
      v51 = v142;
      *v49 = v141;
      v49[1] = v51;
      v52 = v144;
      v49[2] = v143;
      v49[3] = v52;
      sub_2440D1BA0();
      sub_243FA84E0();
      v53 = v99;
      sub_2440D24C0();
      (*(v103 + 8))(v48, v104);
      sub_243F5EED4(v47, &qword_27EDC1978, &unk_2440D9F50);
      KeyPath = swift_getKeyPath();
      v55 = v95;
      v56 = &v95[*(v96 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC56A8, &qword_2440E4A90);
      sub_2440D0710();
      *v56 = KeyPath;
      sub_243F681C8(v53, v55, &qword_27EDC1980, &qword_2440E4B80);
      sub_24407BEBC();
      v57 = v98;
      sub_2440D24E0();
      sub_243F5EED4(v55, &qword_27EDC5748, &qword_2440E4B88);
      v58 = &qword_27EDC5750;
      v59 = &qword_2440E4B90;
      sub_243F5F574(v57, v114, &qword_27EDC5750, &qword_2440E4B90);
      swift_storeEnumTagMultiPayload();
      sub_24407BE08(&qword_27EDC5760, &qword_27EDC5750, &qword_2440E4B90, sub_24407BEBC);
      sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &qword_2440E4B80, sub_243FA84E0);
      v60 = v118;
      sub_2440D1D20();
      v61 = v57;
LABEL_6:
      sub_243F5EED4(v61, v58, v59);
      v83 = v112;
      sub_243F5F574(v60, v112, &qword_27EDC5758, &qword_2440E4B98);
      v84 = v111;
      *&v119 = v111;
      *(&v119 + 1) = v117;
      LOBYTE(v120) = v116;
      *(&v120 + 1) = v149[0];
      DWORD1(v120) = *(v149 + 3);
      v85 = v107;
      v86 = v108;
      *(&v120 + 1) = v107;
      v87 = v106;
      LOBYTE(v121) = v106;
      *(&v121 + 1) = *v148;
      DWORD1(v121) = *&v148[3];
      v88 = v109;
      *(&v121 + 1) = v109;
      *&v122 = v108;
      *(&v122 + 1) = 7368564;
      v123 = 0xE300000000000000;
      v89 = v115;
      *(v115 + 64) = 0xE300000000000000;
      v90 = v120;
      *v89 = v119;
      v89[1] = v90;
      v91 = v122;
      v89[2] = v121;
      v89[3] = v91;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5778, &unk_2440E4BA0);
      sub_243F5F574(v83, v89 + *(v92 + 48), &qword_27EDC5758, &qword_2440E4B98);
      sub_243F5F574(&v119, &v124, &qword_27EDC19A0, qword_2440D9F68);
      sub_243F5EED4(v118, &qword_27EDC5758, &qword_2440E4B98);
      sub_243F5EED4(v83, &qword_27EDC5758, &qword_2440E4B98);
      v124 = v84;
      v125 = v117;
      v126 = v116;
      *v127 = v149[0];
      *&v127[3] = *(v149 + 3);
      v128 = v85;
      v129 = v87;
      *v130 = *v148;
      *&v130[3] = *&v148[3];
      v131 = v88;
      v132 = v86;
      v133 = 7368564;
      v134 = 0xE300000000000000;
      return sub_243F5EED4(&v124, &qword_27EDC19A0, qword_2440D9F68);
    }
  }

  else
  {
    v97 = v18;
    v99 = v21;
    if (v34)
    {
      v62 = *(*v34 + 528);

      v64 = v62(v63);

      v65 = sub_243F4E2F4();
      v66 = (*(*v64 + 176))(v65 & 1);
      v68 = v67;

      v70 = a1[10];
      v124 = a1[9];
      v69 = v124;
      v125 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
      sub_2440D2840();
      v71 = v141;
      v72 = *&v142;
      type metadata accessor for TermsOfServiceSheet(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
      v73 = v100;
      sub_2440D2840();
      v74 = sub_243F4E2F4();
      sub_244073A34(v66, v68, v74 & 1, v71, *(&v71 + 1), v73, v10, v72);
      *&v141 = v69;
      *(&v141 + 1) = v70;
      sub_2440D2820();
      sub_2440D2B10();
      sub_2440D18E0();
      v75 = v98;
      sub_24407BD58(v10, v98, type metadata accessor for HTMLView);
      v76 = v102;
      v77 = (v75 + *(v101 + 36));
      v78 = v146;
      v77[4] = v145;
      v77[5] = v78;
      v77[6] = v147;
      v79 = v142;
      *v77 = v141;
      v77[1] = v79;
      v80 = v144;
      v77[2] = v143;
      v77[3] = v80;
      sub_2440D1BA0();
      sub_243FA84E0();
      v81 = v97;
      sub_2440D24C0();
      (*(v103 + 8))(v76, v104);
      sub_243F5EED4(v75, &qword_27EDC1978, &unk_2440D9F50);
      v82 = v99;
      sub_2440D1800();
      v58 = &qword_27EDC1980;
      v59 = &qword_2440E4B80;
      sub_243F5EED4(v81, &qword_27EDC1980, &qword_2440E4B80);
      sub_243F5F574(v82, v114, &qword_27EDC1980, &qword_2440E4B80);
      swift_storeEnumTagMultiPayload();
      sub_24407BE08(&qword_27EDC5760, &qword_27EDC5750, &qword_2440E4B90, sub_24407BEBC);
      sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &qword_2440E4B80, sub_243FA84E0);
      v60 = v118;
      sub_2440D1D20();
      v61 = v82;
      goto LABEL_6;
    }
  }

  type metadata accessor for RegistrationViewModel(0);
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
  result = sub_2440D1910();
  __break(1u);
  return result;
}

uint64_t sub_2440776F4(uint64_t a1)
{
  v2 = sub_2440D1DC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55A8, &qword_2440E4928);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2440D1DB0();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC56F8, &qword_2440E4B08);
  sub_243F5DD50(&qword_27EDC5700, &qword_27EDC56F8, &qword_2440E4B08, MEMORY[0x277CE14C0]);
  sub_2440D18D0();
  v7 = sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8, &qword_2440E4928, MEMORY[0x277CDDB60]);
  MEMORY[0x245D55CE0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2440778E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for TermsOfServiceSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5708, &qword_2440E4B10);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5710, &qword_2440E4B18);
  MEMORY[0x28223BE20](v57);
  v61 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v52 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = v52 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v52 - v16;
  MEMORY[0x28223BE20](v18);
  v58 = v52 - v19;
  sub_244079BE0(a1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = v20 + v5;
  v22 = swift_allocObject();
  v53 = v20;
  v56 = v6;
  sub_24407BD58(v6, v22 + v20, type metadata accessor for TermsOfServiceSheet);
  *(v22 + v21) = 0;
  v63 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5718, &qword_2440E4B20);
  v24 = sub_24407BE08(&qword_27EDC5720, &qword_27EDC5718, &qword_2440E4B20, sub_24407B798);
  v54 = v23;
  v52[1] = v24;
  sub_2440D2870();
  v25 = a1;
  v26 = *a1;
  if (*a1)
  {
    v27 = *(*v26 + 480);

    v29 = v27(v28);

    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = v29 & 1;
    (*(v55 + 32))(v17, v9, v7);
    v32 = v57;
    v33 = &v17[*(v57 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_243FF6164;
    v33[2] = v31;
    v34 = v58;
    sub_243F681C8(v17, v58, &qword_27EDC5710, &qword_2440E4B18);
    v35 = v25;
    v36 = v25;
    v37 = v56;
    sub_244079BE0(v36, v56);
    v38 = swift_allocObject();
    v39 = sub_24407BD58(v37, v38 + v53, type metadata accessor for TermsOfServiceSheet);
    *(v38 + v21) = 1;
    MEMORY[0x28223BE20](v39);
    v52[-2] = v35;
    v40 = v59;
    sub_2440D2870();
    v41 = *(*v26 + 480);

    LOBYTE(v38) = v41(v42);

    v43 = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v38 & 1;
    v45 = (v40 + *(v32 + 36));
    *v45 = v43;
    v45[1] = sub_243FF7220;
    v45[2] = v44;
    v46 = v60;
    sub_243F5F574(v34, v60, &qword_27EDC5710, &qword_2440E4B18);
    v47 = v61;
    sub_243F5F574(v40, v61, &qword_27EDC5710, &qword_2440E4B18);
    v48 = v62;
    sub_243F5F574(v46, v62, &qword_27EDC5710, &qword_2440E4B18);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5738, &qword_2440E4B68);
    v50 = v48 + *(v49 + 48);
    *v50 = 0;
    *(v50 + 8) = 1;
    sub_243F5F574(v47, v48 + *(v49 + 64), &qword_27EDC5710, &qword_2440E4B18);
    sub_243F5EED4(v40, &qword_27EDC5710, &qword_2440E4B18);
    sub_243F5EED4(v34, &qword_27EDC5710, &qword_2440E4B18);
    sub_243F5EED4(v47, &qword_27EDC5710, &qword_2440E4B18);
    return sub_243F5EED4(v46, &qword_27EDC5710, &qword_2440E4B18);
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

void sub_244077F60(uint64_t *a1)
{
  v2 = sub_2440D1BE0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55C0, &qword_2440E4938);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5600, &unk_2440E4968);
  sub_2440781C0(a1, &v5[*(v6 + 44)]);
}

uint64_t sub_24407809C(uint64_t a1)
{
  v8 = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC55D8, &qword_2440E4940) + 36);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_2440D20D0();
  sub_244070EC4();
  sub_2440D13D0();
  v19 = v5 + *(v6 + 36);
  *v19 = v18;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  *(v19 + 32) = v23;
  *(v19 + 40) = 0;
  sub_2440D1BD0();
  sub_24407A3A0(&qword_27EDC55C8, v2, v3, sub_24407A424);
  sub_2440D2470();
  (*(v7 + 8))(v4, v1);
  return sub_243F5EED4(v5, v2, v3);
}

void sub_2440781C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v94 = a2;
  v2 = type metadata accessor for TermsOfServiceSheet(0);
  v74 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = v3;
  v76 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010, &qword_2440DAD50);
  MEMORY[0x28223BE20](v73);
  v84 = &v64 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5608, &qword_2440E4978);
  MEMORY[0x28223BE20](v78);
  v80 = &v64 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5610, &qword_2440E4980);
  MEMORY[0x28223BE20](v79);
  v81 = &v64 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5618, &qword_2440E4988);
  MEMORY[0x28223BE20](v82);
  v83 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5620, &qword_2440E4990);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5628, &qword_2440E4998);
  MEMORY[0x28223BE20](v65);
  v70 = &v64 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5630, &qword_2440E49A0);
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5638, &qword_2440E49A8);
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v64 - v13;
  v14 = sub_2440D0880();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F88, &qword_2440DB650);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v64 - v17;
  v18 = sub_2440D08A0();
  v104 = *(v18 - 8);
  v105 = v18;
  MEMORY[0x28223BE20](v18);
  v85 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v102 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90, &unk_2440DF090);
  MEMORY[0x28223BE20](v22 - 8);
  v103 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5640, &qword_2440E49B0);
  MEMORY[0x28223BE20](v24 - 8);
  v91 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v106 = &v64 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5648, &qword_2440E49B8);
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x28223BE20](v28);
  v95 = &v64 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5650, &qword_2440E49C0);
  MEMORY[0x28223BE20](v99);
  v101 = &v64 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5658, &qword_2440E49C8);
  MEMORY[0x28223BE20](v100);
  v90 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v98 = &v64 - v33;
  MEMORY[0x28223BE20](v34);
  v107 = &v64 - v35;
  sub_24401FBC0();
  v36 = sub_24401FBD4(0xD000000000000014, 0x80000002440EE740);
  v38 = v37;
  v40 = v39;
  sub_2440D2180();
  v41 = sub_2440D22A0();
  v43 = v42;
  v45 = v44;
  sub_243F62C68(v36, v38, v40 & 1);

  sub_2440D2160();
  v46 = sub_2440D22E0();
  v48 = v47;
  LOBYTE(v38) = v49;

  sub_243F62C68(v41, v43, v45 & 1);

  sub_243FFAE40();

  v50 = sub_2440D22C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_243F62C68(v46, v48, v38 & 1);

  sub_2440D2B10();
  sub_2440D18E0();
  v132 = v54 & 1;
  v57 = *v108;
  if (*v108)
  {
    v58 = v132;
    v59 = *(*v57 + 480);

    LOBYTE(v59) = v59(v60);
    v77 = v57;

    if (v59)
    {
      v61 = 0.25;
    }

    else
    {
      v61 = 1.0;
    }

    v117 = v129;
    v118 = v130;
    v119 = v131;
    v113 = v125;
    v114 = v126;
    v116 = v128;
    v115 = v127;
    KeyPath = swift_getKeyPath();
    v63 = swift_getKeyPath();
    v109 = v50;
    v110 = v52;
    v111 = v58;
    v112 = v56;
    v120 = v61;
    v121 = KeyPath;
    v122 = 0;
    v123 = v63;
    v124 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5660, &qword_2440E4A30);
    sub_24407AAC0();
    sub_24408F1C4();
  }

  type metadata accessor for RegistrationViewModel(0);
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
  sub_2440D1910();
  __break(1u);
}

uint64_t sub_24407970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_2440797DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0, &qword_2440E1E30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for WebContent(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for TermsOfServiceSheet(0);
  sub_243F5F574(v5, v2, &qword_27EDC53C0, &qword_2440E1E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
  sub_2440D2830();
  return sub_243F5EED4(v5, &qword_27EDC53C0, &qword_2440E1E30);
}

uint64_t sub_24407991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D05F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebContent(0);
  (*(v5 + 16))(v7, a1 + *(v8 + 20), v4);
  return sub_2440301A8(v7, a2);
}

uint64_t sub_244079A00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_243F4DFA8();
  sub_243F5F574(v3, v2, &qword_27EDC0A50, &qword_2440D5CB0);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3460();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "TOS content changed, scrolling to top", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  v10[0] = 7368564;
  v10[1] = 0xE300000000000000;
  sub_2440D2C20();
  return sub_2440D1890();
}

uint64_t sub_244079BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsOfServiceSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244079C50()
{
  type metadata accessor for RegistrationViewModel(0);
  sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);

  return sub_2440D1930();
}

uint64_t sub_244079CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10@<D0>)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0, &qword_2440E1E30);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  LOBYTE(v28) = a5;
  sub_2440D2810();
  v22 = *(&v30 + 1);
  *(a9 + 32) = v30;
  *(a9 + 40) = v22;
  v28 = a6;
  v29 = a7;
  sub_2440D2810();
  v23 = v31;
  *(a9 + 48) = v30;
  *(a9 + 64) = v23;
  v28 = a10;
  sub_2440D2810();
  v24 = *(&v30 + 1);
  *(a9 + 72) = v30;
  *(a9 + 80) = v24;
  type metadata accessor for TermsOfServiceSheet(0);
  v25 = v27;
  sub_243F5F574(v27, v21, &qword_27EDC53C0, &qword_2440E1E30);
  sub_2440D2810();
  return sub_243F5EED4(v25, &qword_27EDC53C0, &qword_2440E1E30);
}

uint64_t sub_244079E7C@<X0>(char *a2@<X8>)
{
  *a2 = sub_2440D2B00();
  *(a2 + 1) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC54D8, &qword_2440E4818);
  return sub_24407544C(v2, &a2[*(v5 + 44)]);
}

uint64_t sub_244079EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244079FAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24407A05C(uint64_t a1)
{
  sub_24407A170(319);
  if (v1 <= 0x3F)
  {
    sub_243FA7170();
    if (v2 <= 0x3F)
    {
      sub_243F8AF54(319, &qword_27EDC0280, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_243F8AF54(319, &qword_27EDC0288, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_243F8AF54(319, &qword_27EDC0278, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_243FA7210(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24407A170(uint64_t a1)
{
  if (!qword_27EDC54E0)
  {
    type metadata accessor for RegistrationViewModel(255);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    v1 = sub_2440D1940();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC54E0);
    }
  }
}

uint64_t sub_24407A250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TermsOfServiceSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_244075B14(a1, v6, a2);
}

unint64_t sub_24407A2E0()
{
  result = qword_27EDC5598;
  if (!qword_27EDC5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5540, &qword_2440E48E0);
    sub_243F5DD50(&qword_27EDC55A0, &qword_27EDC5538, &qword_2440E48D8, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5598);
  }

  return result;
}

uint64_t sub_24407A3A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24407A424()
{
  result = qword_27EDC55D0;
  if (!qword_27EDC55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55D8, &qword_2440E4940);
    sub_243F5DD50(&qword_27EDC55E0, &qword_27EDC55E8, &unk_2440E4948, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC55D0);
  }

  return result;
}

uint64_t sub_24407A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TermsOfServiceSheet(0);

  return sub_24407991C(a1, a2);
}

uint64_t sub_24407A550()
{
  v1 = sub_2440D18A0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24407A604(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_24407A680()
{
  result = qword_27EDC55F0;
  if (!qword_27EDC55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5568, &qword_2440E4908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5558, &qword_2440E48F8);
    type metadata accessor for WebContent(255);
    type metadata accessor for SafariWebView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5550, &qword_2440E48F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55B8, &qword_2440E4930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5548, &qword_2440E48E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5588, &qword_2440E4920);
    sub_24407A3A0(&qword_27EDC5590, &qword_27EDC5548, &qword_2440E48E8, sub_24407A2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55A8, &qword_2440E4928);
    sub_243F5DD50(&qword_27EDC55B0, &qword_27EDC55A8, &qword_2440E4928, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC55C0, &qword_2440E4938);
    sub_24407A3A0(&qword_27EDC55C8, &qword_27EDC55C0, &qword_2440E4938, sub_24407A424);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24407BDC0(&qword_27EDC18F0, type metadata accessor for WebContent, &unk_2440E53E0);
    sub_24407BDC0(&qword_27EDC18F8, type metadata accessor for SafariWebView, &unk_2440E1278);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1910, &qword_27EDC1900, &unk_2440D9E40, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC55F0);
  }

  return result;
}

void sub_24407A9E4()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet(0) - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))))
  {

    sub_244089A9C();
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    sub_2440D1910();
    __break(1u);
  }
}

unint64_t sub_24407AAC0()
{
  result = qword_27EDC5668;
  if (!qword_27EDC5668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5660, &qword_2440E4A30);
    sub_24407AB78();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930, &unk_2440D7F60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5668);
  }

  return result;
}

unint64_t sub_24407AB78()
{
  result = qword_27EDC5670;
  if (!qword_27EDC5670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5678, &qword_2440E4A38);
    sub_24407AC30();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348, &unk_2440D68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5670);
  }

  return result;
}

unint64_t sub_24407AC30()
{
  result = qword_27EDC5680;
  if (!qword_27EDC5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5688, &unk_2440E4A40);
    sub_243F884B4(&qword_27EDC0DC8, &qword_27EDC0DD0, &qword_2440DE310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5680);
  }

  return result;
}

unint64_t sub_24407ACDC()
{
  result = qword_27EDC5690;
  if (!qword_27EDC5690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5650, &qword_2440E49C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5660, &qword_2440E4A30);
    sub_24407AAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5690);
  }

  return result;
}

unint64_t sub_24407ADA4()
{
  result = qword_27EDC56B0;
  if (!qword_27EDC56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5618, &qword_2440E4988);
    sub_24407AE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56B0);
  }

  return result;
}

unint64_t sub_24407AE30()
{
  result = qword_27EDC56B8;
  if (!qword_27EDC56B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5610, &qword_2440E4980);
    sub_24407AEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56B8);
  }

  return result;
}

unint64_t sub_24407AEBC()
{
  result = qword_27EDC56C0;
  if (!qword_27EDC56C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5608, &qword_2440E4978);
    sub_24407AF74();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0, &unk_2440D65A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56C0);
  }

  return result;
}

unint64_t sub_24407AF74()
{
  result = qword_27EDC56C8;
  if (!qword_27EDC56C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC56A0, &qword_2440E4A88);
    sub_243F5DD50(&qword_27EDC56D0, &qword_27EDC56A8, &qword_2440E4A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56C8);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for TermsOfServiceSheet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for WebContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);

  return swift_deallocObject();
}

uint64_t sub_24407B1E0()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (v2)
  {
    v3 = *(*v2 + 480);

    LOBYTE(v3) = v3(v4);

    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
      sub_2440D2830();
    }

    return sub_2440D16A0();
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_24407B340()
{
  result = qword_27EDC56E0;
  if (!qword_27EDC56E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5630, &qword_2440E49A0);
    sub_24407B3F8();
    sub_243F5DD50(&qword_27EDC56F0, &qword_27EDC56D8, &qword_2440E4B00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56E0);
  }

  return result;
}

unint64_t sub_24407B3F8()
{
  result = qword_27EDC56E8;
  if (!qword_27EDC56E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5628, &qword_2440E4998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5618, &qword_2440E4988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010, &qword_2440DAD50);
    sub_24407ADA4();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010, &qword_2440DAD50, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC56E8);
  }

  return result;
}

uint64_t sub_24407B528()
{
  v1 = *(v0 + 16);
  sub_24401FBC0();
  v2 = sub_24401FBD4(0x49445F4C4542414CLL, 0xEE00454552474153);
  v4 = v3;
  v6 = v5;
  sub_243FFB0DC();

  v7 = sub_2440D22C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_243F62C68(v2, v4, v6 & 1);

  v14 = sub_2440D20B0();
  v27 = v11 & 1;
  v26 = 1;
  if (*v1)
  {
    v15 = v14;
    v16 = *(**v1 + 480);

    LOBYTE(v16) = v16(v17);

    v18 = 1.0;
    *&v20 = v7;
    *(&v20 + 1) = v9;
    if (v16)
    {
      v18 = 0.25;
    }

    LOBYTE(v21) = v27;
    *(&v21 + 1) = v13;
    v22[0] = v15;
    memset(&v22[8], 0, 32);
    v22[40] = v26;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5730, &unk_2440E4B28);
    sub_24407B798();
    sub_2440D24E0();
    v24[3] = *&v22[16];
    v24[4] = *&v22[32];
    v25 = v23;
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = *v22;
    return sub_243F5EED4(v24, &qword_27EDC5730, &unk_2440E4B28);
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_24407B798()
{
  result = qword_27EDC5728;
  if (!qword_27EDC5728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5730, &unk_2440E4B28);
    sub_243F884B4(&qword_27EDC0E08, &qword_27EDC0E10, &qword_2440DBFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5728);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  v1 = (type metadata accessor for TermsOfServiceSheet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for WebContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8, &qword_2440D9C60);

  return swift_deallocObject();
}

uint64_t sub_24407BA0C()
{
  v1 = *(type metadata accessor for TermsOfServiceSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return (*(v2 + 16))(*(v2 + *(v1 + 64)));
}

uint64_t sub_24407BA90()
{
  v24 = *(v0 + 16);
  sub_24401FBC0();
  v1 = sub_24401FBD4(0x47415F4C4542414CLL, 0xEB00000000454552);
  v3 = v2;
  v5 = v4;
  sub_2440D2230();
  v6 = sub_2440D22E0();
  v8 = v7;
  v10 = v9;

  sub_243F62C68(v1, v3, v5 & 1);

  sub_243FFB0DC();

  v11 = sub_2440D22C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_243F62C68(v6, v8, v10 & 1);

  v18 = sub_2440D20B0();
  v32 = v15 & 1;
  v31 = 1;
  if (*v24)
  {
    v19 = v18;
    v20 = *(**v24 + 480);

    LOBYTE(v20) = v20(v21);

    v22 = 1.0;
    *&v25 = v11;
    *(&v25 + 1) = v13;
    if (v20)
    {
      v22 = 0.25;
    }

    LOBYTE(v26) = v32;
    *(&v26 + 1) = v17;
    v27[0] = v19;
    memset(&v27[8], 0, 32);
    v27[40] = v31;
    v28 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5730, &unk_2440E4B28);
    sub_24407B798();
    sub_2440D24E0();
    v29[3] = *&v27[16];
    v29[4] = *&v27[32];
    v30 = v28;
    v29[0] = v25;
    v29[1] = v26;
    v29[2] = *v27;
    return sub_243F5EED4(v29, &qword_27EDC5730, &unk_2440E4B28);
  }

  else
  {
    type metadata accessor for RegistrationViewModel(0);
    sub_24407BDC0(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel, &unk_2440E51C8);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_24407BD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24407BDC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24407BE08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24407BDC0(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24407BEBC()
{
  result = qword_27EDC5768;
  if (!qword_27EDC5768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5748, &qword_2440E4B88);
    sub_24407BE08(&qword_27EDC5770, &qword_27EDC1980, &qword_2440E4B80, sub_243FA84E0);
    sub_243F5DD50(&qword_27EDC56D0, &qword_27EDC56A8, &qword_2440E4A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5768);
  }

  return result;
}

uint64_t sub_24407BFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5780, &qword_2440E4C10);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5788, &qword_2440E4C18);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5790, &qword_2440E4C20);
  sub_24407C2FC(v2, &v5[*(v10 + 44)]);
  v11 = sub_2440CBE68();
  swift_beginAccess();
  v12 = *v2;
  v13 = &v5[*(v3 + 36)];
  *v13 = *v11;
  v13[8] = v12;
  LOBYTE(v24) = *(v2 + 1);
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = *(v2 + 48);

  sub_243FFDFC0(v2, &v25);
  v16 = sub_24407D088();
  v17 = MEMORY[0x277D839B0];
  v18 = MEMORY[0x277D839C8];
  sub_2440D25E0();

  sub_243F5EED4(v5, &qword_27EDC5780, &qword_2440E4C10);
  v25 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = *(v2 + 48);
  sub_243FFDFC0(v2, &v25);
  *&v25 = v3;
  *(&v25 + 1) = v17;
  v26 = v16;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2440CC638(&v24, sub_24407D16C, v19, v6, MEMORY[0x277D839F8], OpaqueTypeConformance2, MEMORY[0x277CE1508], v23);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24407C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58C8, &qword_2440E4E28);
  v110 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v80.i8[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58D0, &qword_2440E4E30);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  if (*a1)
  {
    v122 = *(a1 + 8);
    v97 = v10;
    v101 = v80.i64 - v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC47A8, &unk_2440E4C00);
    v99 = a2;
    sub_2440D2820();
    v96 = sub_24404AD48(v121[0], 2);
    sub_2440D2B00();
    sub_2440D1560();
    v92 = v157;
    v102 = v161;
    v103 = v159;
    v95 = v162;
    v156 = v158;
    v155 = v160;
    sub_2440D2C40();
    v93 = v13;
    v94 = v12;
    v106 = v156;
    v108 = v155;
    v109 = sub_2440D20C0();
    sub_243FC0F94();
    sub_2440D13D0();
    v15 = v14;
    v82 = v16;
    v83 = v14;
    v17 = v16;
    v19 = v18;
    v81 = v18;
    v86 = v20;
    v153 = 0;
    v107 = sub_2440D20D0();
    sub_2440D13D0();
    v22 = v21;
    v84 = v21;
    v88 = v24;
    v89 = v23;
    v87 = v25;
    v154 = 0;
    sub_2440D2C40();
    v90 = v27;
    v91 = v26;
    v28.n128_u64[0] = 0xC059000000000000;
    v105 = sub_243F9A1F0(v28);
    v29 = swift_allocObject();
    v104 = v29;
    v30 = *(a1 + 16);
    *(v29 + 16) = *a1;
    *(v29 + 32) = v30;
    *(v29 + 48) = *(a1 + 32);
    *(v29 + 64) = *(a1 + 48);
    v31 = swift_allocObject();
    v85 = v31;
    v32 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(a1 + 32);
    *(v31 + 64) = *(a1 + 48);
    sub_243FFDFC0(a1, &v122);
    sub_243FFDFC0(a1, &v122);
    v33 = sub_243F68750();
    *&v122 = sub_2440579C8(v33 & 1, 0xD00000000000001DLL, 0x80000002440EE820);
    *(&v122 + 1) = v34;
    sub_243F4EF64();
    v35 = sub_2440D2310();
    v98 = v4;
    v37 = v36;
    v100 = v6;
    v39 = v38;
    sub_2440D21E0();
    v40 = sub_2440D22E0();
    v42 = v41;
    v44 = v43;
    v80.i64[0] = v45;

    sub_243F62C68(v35, v37, v39 & 1);

    sub_2440D21B0();
    v46 = sub_2440D22A0();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_243F62C68(v40, v42, v44 & 1);

    v122 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2820();
    v53 = *v121 * 0.0174532925;
    sub_2440D2C40();
    v55 = v54;
    v57 = v56;
    v122 = *(a1 + 24);
    sub_2440D2820();
    v58 = *v121;
    v50 &= 1u;
    LOBYTE(v122) = v50;
    v59.n128_u64[0] = 0xC069000000000000;
    v60 = sub_243F9A1F0(v59);
    KeyPath = swift_getKeyPath();
    *&v122 = v46;
    *(&v122 + 1) = v48;
    LOBYTE(v123) = v50;
    *(&v123 + 1) = v52;
    *&v124 = v53;
    *(&v124 + 1) = v55;
    *&v125 = v57;
    *(&v125 + 1) = v58;
    *&v126 = v60;
    *(&v126 + 1) = KeyPath;
    v127 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58D8, &qword_2440E4E68);
    sub_24407EE98();
    v62 = v101;
    sub_2440D24E0();
    v119[2] = v124;
    v119[3] = v125;
    v119[4] = v126;
    v120 = v127;
    v119[0] = v122;
    v119[1] = v123;
    sub_243F5EED4(v119, &qword_27EDC58D8, &qword_2440E4E68);
    v63 = v97;
    sub_243F5F574(v62, v97, &qword_27EDC58D0, &qword_2440E4E30);
    LOWORD(v40) = v96;
    *v121 = v96;
    *&v121[2] = v117;
    *&v121[6] = v118;
    v64 = v92;
    *&v121[8] = v92;
    v121[16] = v106;
    *&v121[17] = *v116;
    *&v121[20] = *&v116[3];
    *&v121[24] = v103;
    v121[32] = v108;
    *&v121[36] = *&v115[3];
    *&v121[33] = *v115;
    v65 = v95;
    *&v121[40] = v102;
    *&v121[48] = v95;
    *&v121[56] = 0x400921FB54442D18;
    v67 = v93;
    v66 = v94;
    *&v121[64] = v94;
    *&v121[72] = v93;
    v121[80] = v109;
    *&v121[84] = *&v114[3];
    *&v121[81] = *v114;
    *&v121[88] = v15;
    *&v121[96] = v17;
    v68 = v86;
    *&v121[104] = v19;
    *&v121[112] = v86;
    v121[120] = 0;
    *&v121[124] = *&v113[3];
    *&v121[121] = *v113;
    v121[128] = v107;
    *&v121[129] = *v112;
    *&v121[132] = *&v112[3];
    *&v121[136] = v22;
    v69 = v88;
    v70 = v89;
    *&v121[144] = v89;
    *&v121[152] = v88;
    v71 = v87;
    *&v121[160] = v87;
    v121[168] = 0;
    *&v121[169] = *v111;
    *&v121[172] = *&v111[3];
    v80 = vdupq_n_s64(0x3FFAAACD9E83E426uLL);
    *&v121[176] = v80;
    v73 = v90;
    v72 = v91;
    *&v121[192] = v91;
    *&v121[200] = v90;
    *&v121[208] = v105;
    *&v121[216] = sub_24407EE88;
    *&v121[224] = v104;
    memset(&v121[232], 0, 32);
    *&v121[264] = sub_24407EE90;
    v74 = v85;
    *&v121[272] = v85;
    v75 = v100;
    memcpy(v100, v121, 0x118uLL);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58F8, &qword_2440E4E80);
    sub_243F5F574(v63, &v75[*(v76 + 48)], &qword_27EDC58D0, &qword_2440E4E30);
    sub_243F5F574(v121, &v122, &qword_27EDC5900, &qword_2440E4E88);
    sub_243F5EED4(v101, &qword_27EDC58D0, &qword_2440E4E30);
    sub_243F5EED4(v63, &qword_27EDC58D0, &qword_2440E4E30);
    LOWORD(v122) = v40;
    *(&v122 + 2) = v117;
    WORD3(v122) = v118;
    *(&v122 + 1) = v64;
    LOBYTE(v123) = v106;
    *(&v123 + 1) = *v116;
    DWORD1(v123) = *&v116[3];
    *(&v123 + 1) = v103;
    LOBYTE(v124) = v108;
    DWORD1(v124) = *&v115[3];
    *(&v124 + 1) = *v115;
    *(&v124 + 1) = v102;
    *&v125 = v65;
    *(&v125 + 1) = 0x400921FB54442D18;
    *&v126 = v66;
    *(&v126 + 1) = v67;
    v127 = v109;
    *&v128[3] = *&v114[3];
    *v128 = *v114;
    v129 = v83;
    v130 = v82;
    v131 = v81;
    v132 = v68;
    v133 = 0;
    *&v134[3] = *&v113[3];
    *v134 = *v113;
    v135 = v107;
    *v136 = *v112;
    *&v136[3] = *&v112[3];
    v137 = v84;
    v138 = v70;
    v139 = v69;
    v140 = v71;
    v141 = 0;
    *v142 = *v111;
    *&v142[3] = *&v111[3];
    v143 = v80;
    v144 = v72;
    v145 = v73;
    v146 = v105;
    v147 = sub_24407EE88;
    v150 = 0u;
    v149 = 0u;
    v148 = v104;
    v151 = sub_24407EE90;
    v152 = v74;
    sub_243F5EED4(&v122, &qword_27EDC5900, &qword_2440E4E88);
    v77 = v99;
    sub_243F681C8(v100, v99, &qword_27EDC58C8, &qword_2440E4E28);
    return (*(v110 + 56))(v77, 0, 1, v98);
  }

  else
  {
    v79 = *(v110 + 56);

    return v79(a2, 1, 1, v4, v11);
  }
}

uint64_t sub_24407CCB8(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CD0();
  v22 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  sub_243F5DB84();
  v20 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  aBlock[4] = sub_24407F07C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);
  sub_243FFDFC0(a1, v26);

  sub_2440D2C90();
  v26[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  v18 = v20;
  MEMORY[0x245D57400](v14, v7, v4, v17);
  _Block_release(v17);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
  return (v21)(v14, v22);
}

unint64_t sub_24407D088()
{
  result = qword_27EDC5798;
  if (!qword_27EDC5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5780, &qword_2440E4C10);
    sub_243F5DD50(&qword_27EDC57A0, &qword_27EDC57A8, &unk_2440E4C28, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5798);
  }

  return result;
}

double sub_24407D16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();

  return result;
}

double sub_24407D238@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a4@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  result = v10;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 8) = LOBYTE(v10);
  *(a4 + 16) = v11;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  return result;
}

uint64_t sub_24407D354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57B0, &qword_2440E4C38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57B8, &qword_2440E4C40);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57C0, &qword_2440E4C48);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57C8, &qword_2440E4C50);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57D0, &qword_2440E4C58);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v49 = &v48 - v16;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC57D8, &qword_2440E4C60);
  sub_24407D848(v2, &v5[*(v17 + 44)]);
  v18 = sub_2440D20C0();
  v19 = *v2;
  sub_2440D13D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_243F681C8(v5, v8, &qword_27EDC57B0, &qword_2440E4C38);
  v28 = &v8[*(v6 + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_2440CBE68();
  swift_beginAccess();
  v30 = *v29;
  sub_243F681C8(v8, v11, &qword_27EDC57B8, &qword_2440E4C40);
  v31 = &v11[*(v9 + 36)];
  *v31 = v30;
  v31[8] = v19;
  v33 = *(v2 + 8);
  v32 = *(v2 + 16);
  sub_243F681C8(v11, v14, &qword_27EDC57C0, &qword_2440E4C48);
  v34 = &v14[*(v12 + 36)];
  *v34 = 0;
  *(v34 + 1) = v33;
  *(v34 + 2) = v32;
  LOBYTE(v53) = *(v2 + 1);
  v35 = swift_allocObject();
  v36 = *(v2 + 48);
  v35[3] = *(v2 + 32);
  v35[4] = v36;
  v35[5] = *(v2 + 64);
  v37 = *(v2 + 16);
  v35[1] = *v2;
  v35[2] = v37;

  sub_243FFE01C(v2, &v54);
  v38 = sub_24407E200();
  v39 = MEMORY[0x277D839B0];
  v40 = MEMORY[0x277D839C8];
  v41 = v49;
  sub_2440D25E0();

  sub_243F5EED4(v14, &qword_27EDC57C8, &qword_2440E4C50);
  v54 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v42 = swift_allocObject();
  v43 = *(v2 + 48);
  v42[3] = *(v2 + 32);
  v42[4] = v43;
  v42[5] = *(v2 + 64);
  v44 = *(v2 + 16);
  v42[1] = *v2;
  v42[2] = v44;
  sub_243FFE01C(v2, &v54);
  *&v54 = v12;
  *(&v54 + 1) = v39;
  v55 = v38;
  v56 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v51;
  sub_2440CC638(&v53, sub_24407E474, v42, v51, MEMORY[0x277D839F8], OpaqueTypeConformance2, MEMORY[0x277CE1508], v52);

  return (*(v50 + 8))(v41, v46);
}

uint64_t sub_24407D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5830, &qword_2440E4DC0);
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5838, &qword_2440E4DC8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5840, &qword_2440E4DD0);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  if (*a1)
  {
    v52 = a2;
    v18 = *(a1 + 24);
    v50 = v16;
    v47 = &v47 - v15;
    sub_243F4E2F4();
    v53 = v4;
    v19 = sub_243F4E2F4();
    sub_244045F18(v19);
    v51 = v6;
    sub_243F68750();
    v49 = v9;
    sub_243F676A0();
    sub_243F4E2F4();
    v48 = v7;
    sub_243F62020();
    sub_24406A0A8(v18, v69);
    sub_2440D2B00();
    sub_2440D1560();
    v20.n128_u64[0] = 0xC059000000000000;
    v21 = sub_243F9A1E0(v20);
    v71[0] = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2820();
    v22 = *&v55 * 0.0174532925;
    sub_2440D2C40();
    v24 = v23;
    v26 = v25;
    v71[0] = *(a1 + 48);
    sub_2440D2820();
    v63 = v69[8];
    v64 = v69[9];
    v65 = v69[10];
    v59 = v69[4];
    v60 = v69[5];
    v61 = v69[6];
    v62 = v69[7];
    v55 = v69[0];
    v56 = v69[1];
    v57 = v69[2];
    v58 = v69[3];
    *&v66 = v70;
    *(&v66 + 1) = v21;
    *&v67 = v22;
    *(&v67 + 1) = v24;
    *&v68 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5848, &qword_2440E4DD8);
    sub_24407EAC4(&qword_27EDC5850, &qword_27EDC5848, &qword_2440E4DD8, sub_24407EB48);
    v27 = v47;
    sub_2440D24E0();
    v71[10] = v65;
    v71[11] = v66;
    v71[12] = v67;
    v71[13] = v68;
    v71[6] = v61;
    v71[7] = v62;
    v71[8] = v63;
    v71[9] = v64;
    v71[2] = v57;
    v71[3] = v58;
    v71[4] = v59;
    v71[5] = v60;
    v71[0] = v55;
    v71[1] = v56;
    sub_243F5EED4(v71, &qword_27EDC5848, &qword_2440E4DD8);
    *v12 = sub_2440D1C20();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5890, &qword_2440E4E00);
    sub_24407DE38(a1, &v12[*(v28 + 44)]);
    v29 = sub_2440D20C0();
    sub_2440D13D0();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5898, &qword_2440E4E08) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39.n128_u64[0] = 0xC069000000000000;
    *&v12[*(v48 + 36)] = sub_243F9A1E0(v39);
    v40 = v50;
    sub_243F5F574(v27, v50, &qword_27EDC5840, &qword_2440E4DD0);
    v41 = v49;
    sub_243F5F574(v12, v49, &qword_27EDC5838, &qword_2440E4DC8);
    v42 = v51;
    sub_243F5F574(v40, v51, &qword_27EDC5840, &qword_2440E4DD0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58A0, &qword_2440E4E10);
    sub_243F5F574(v41, v42 + *(v43 + 48), &qword_27EDC5838, &qword_2440E4DC8);
    sub_243F5EED4(v12, &qword_27EDC5838, &qword_2440E4DC8);
    sub_243F5EED4(v27, &qword_27EDC5840, &qword_2440E4DD0);
    sub_243F5EED4(v41, &qword_27EDC5838, &qword_2440E4DC8);
    sub_243F5EED4(v40, &qword_27EDC5840, &qword_2440E4DD0);
    v44 = v52;
    sub_243F681C8(v42, v52, &qword_27EDC5830, &qword_2440E4DC0);
    return (*(v54 + 56))(v44, 0, 1, v53);
  }

  else
  {
    v46 = *(v54 + 56);

    return v46(a2, 1, 1, v4, v17);
  }
}

uint64_t sub_24407DE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_2440D2200();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = sub_243F68750();
  *&v39[0] = sub_2440579C8(v9 & 1, v7, v8);
  *(&v39[0] + 1) = v10;
  sub_243F4EF64();
  v11 = sub_2440D2310();
  v13 = v12;
  v15 = v14;
  sub_2440D21D0();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_2440D2220();

  (*(v4 + 8))(v6, v3);
  v16 = sub_2440D22E0();
  v18 = v17;
  v20 = v19;

  sub_243F62C68(v11, v13, v15 & 1);

  sub_2440D21B0();
  v21 = sub_2440D22A0();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;
  sub_243F62C68(v16, v18, v20 & 1);

  v39[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v27 = *&v34 * 0.0174532925;
  sub_2440D2C40();
  v29 = v28;
  v31 = v30;
  v39[0] = *(a1 + 48);
  sub_2440D2820();
  v38 = v13 & 1;
  *&v34 = v21;
  *(&v34 + 1) = v23;
  LOBYTE(v35) = v13 & 1;
  *(&v35 + 1) = v26;
  *&v36 = v27;
  *(&v36 + 1) = v29;
  *&v37 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC58A8, &qword_2440E4E18);
  sub_24407EAC4(&qword_27EDC58B0, &qword_27EDC58A8, &qword_2440E4E18, sub_24407ED6C);
  sub_2440D24E0();
  v39[0] = v34;
  v39[1] = v35;
  v39[2] = v36;
  v39[3] = v37;
  return sub_243F5EED4(v39, &qword_27EDC58A8, &qword_2440E4E18);
}

double sub_24407E194(uint64_t a1)
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();

  return result;
}

unint64_t sub_24407E200()
{
  result = qword_27EDC57E0;
  if (!qword_27EDC57E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C8, &qword_2440E4C50);
    sub_24407E2B8();
    sub_243F5DD50(&qword_27EDC5800, &qword_27EDC5808, qword_2440E4C68, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57E0);
  }

  return result;
}

unint64_t sub_24407E2B8()
{
  result = qword_27EDC57E8;
  if (!qword_27EDC57E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C0, &qword_2440E4C48);
    sub_24407E370();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57E8);
  }

  return result;
}

unint64_t sub_24407E370()
{
  result = qword_27EDC57F0;
  if (!qword_27EDC57F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57B8, &qword_2440E4C40);
    sub_243F5DD50(&qword_27EDC57F8, &qword_27EDC57B0, &qword_2440E4C38, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC57F0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

double sub_24407E474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();

  return result;
}

double sub_24407E538@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v14 = sub_2440708D8() + -6.0;
  v15 = sub_244070928() + 3.0;
  sub_2440D2810();
  sub_2440D2810();
  result = v17;
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 32) = v14;
  *(a6 + 40) = v15;
  *(a6 + 48) = v17;
  *(a6 + 56) = v18;
  *(a6 + 64) = v17;
  *(a6 + 72) = v18;
  return result;
}

uint64_t sub_24407E69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24407E6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24407E768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24407E7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24407E818()
{
  result = qword_27EDC5810;
  if (!qword_27EDC5810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5818, &unk_2440E4DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5780, &qword_2440E4C10);
    sub_24407D088();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238, &qword_2440D67A0, &unk_2440E7B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5810);
  }

  return result;
}

unint64_t sub_24407E924()
{
  result = qword_27EDC5820;
  if (!qword_27EDC5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5828, &qword_2440E4DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC57C8, &qword_2440E4C50);
    sub_24407E200();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238, &qword_2440D67A0, &unk_2440E7B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5820);
  }

  return result;
}

uint64_t sub_24407EAC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24407EB48()
{
  result = qword_27EDC5858;
  if (!qword_27EDC5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5860, &qword_2440E4DE0);
    sub_24407EBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5858);
  }

  return result;
}

unint64_t sub_24407EBD4()
{
  result = qword_27EDC5868;
  if (!qword_27EDC5868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5870, &qword_2440E4DE8);
    sub_24407EC8C();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5868);
  }

  return result;
}

unint64_t sub_24407EC8C()
{
  result = qword_27EDC5878;
  if (!qword_27EDC5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5880, &unk_2440E4DF0);
    sub_24407ED18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5878);
  }

  return result;
}

unint64_t sub_24407ED18()
{
  result = qword_27EDC5888;
  if (!qword_27EDC5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5888);
  }

  return result;
}

unint64_t sub_24407ED6C()
{
  result = qword_27EDC58B8;
  if (!qword_27EDC58B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58C0, &qword_2440E4E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58B8);
  }

  return result;
}

unint64_t sub_24407EE98()
{
  result = qword_27EDC58E0;
  if (!qword_27EDC58E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58D8, &qword_2440E4E68);
    sub_24407EF50();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348, &unk_2440D68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58E0);
  }

  return result;
}

unint64_t sub_24407EF50()
{
  result = qword_27EDC58E8;
  if (!qword_27EDC58E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC58F0, &unk_2440E4E70);
    sub_24407EAC4(&qword_27EDC58B0, &qword_27EDC58A8, &qword_2440E4E18, sub_24407ED6C);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC58E8);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24407F104()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double sub_24407F150(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t sub_24407F1A4(char a1)
{
  v2 = *v1;
  if (a1)
  {
    return (*(v2 + 128))();
  }

  else
  {
    return (*(v2 + 104))();
  }
}

uint64_t sub_24407F1F0()
{
  (*(*v0 + 112))(0, 0xE000000000000000);
  (*(*v0 + 136))(0, 0xE000000000000000);
  v1 = *(*v0 + 160);

  return v1(0, 0xE000000000000000);
}

uint64_t sub_24407F294()
{

  return swift_deallocClassInstance();
}

void *sub_24407F2DC()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0xE000000000000000;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  result[6] = 0;
  result[7] = 0xE000000000000000;
  return result;
}

uint64_t sub_24407F310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_24407F384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24407F3D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);

  return v4(v2, v3);
}

uint64_t sub_24407F438(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24407F4B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24407F574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910, &qword_2440E4F00);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908, &unk_2440E5E70);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24407F6AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5910, &qword_2440E4F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21RegistrationViewModel__accountID[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5908, &unk_2440E5E70);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24407F81C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_24407F890(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_24407F900(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24407F9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5920, &unk_2440E4F58);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5918, &qword_2440E4F50);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}