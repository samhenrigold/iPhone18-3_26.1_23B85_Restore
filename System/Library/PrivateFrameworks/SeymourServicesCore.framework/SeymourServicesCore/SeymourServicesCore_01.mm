uint64_t sub_265BC7D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(&v212 + 1) = a2;
  *&v212 = a1;
  v198 = sub_265BF2C30();
  v197 = *(v198 - 1);
  v4 = MEMORY[0x28223BE20](v198);
  v193 = v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v5;
  MEMORY[0x28223BE20](v4);
  v207 = v173 - v6;
  v185 = sub_265BF3210();
  v184 = *(v185 - 1);
  MEMORY[0x28223BE20](v185);
  v186 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265BF31F0();
  MEMORY[0x28223BE20](v8 - 8);
  v183 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_265BF2F60();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v202 = v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v213 = *(v208 - 8);
  v11 = MEMORY[0x28223BE20](v208);
  v190 = v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v191 = v173 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v206 = v173 - v16;
  v188 = v17;
  MEMORY[0x28223BE20](v15);
  v196 = v173 - v18;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v215 = *(v210 - 8);
  v19 = MEMORY[0x28223BE20](v210);
  v187 = v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v209 = v173 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v199 = v173 - v24;
  v182 = v25;
  MEMORY[0x28223BE20](v23);
  v200 = v173 - v26;
  v205 = sub_265BF2CC0();
  v204 = *(v205 - 8);
  v27 = MEMORY[0x28223BE20](v205);
  v203 = v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v28;
  MEMORY[0x28223BE20](v27);
  v214 = v173 - v29;
  v30 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v173 - v34;
  v36 = sub_265BF3240();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v181 = v173 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v201 = v173 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = v173 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v173 - v48;
  sub_265BF3130();
  sub_265BF3220();
  v50 = *(v37 + 8);
  v216 = v36;
  v217 = (v37 + 8);
  v50(v49, v36);
  v211 = v3;
  sub_265BF2EA0();
  v218 = v35;
  sub_265BD2384(v35, v33, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_265BD23EC(v33, type metadata accessor for RemoteParticipantConnectionBroker.State);
    sub_265BF3130();
    v77 = sub_265BF3230();
    v78 = sub_265BF34E0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_265BAD000, v77, v78, "Not processing handshake queue, state no longer matches", v79, 2u);
      MEMORY[0x26676DCA0](v79, -1, -1);
    }

    v80 = v40;
    goto LABEL_28;
  }

  v51 = *(v33 + 3);
  v222 = *(v33 + 2);
  v223 = v51;
  v224 = *(v33 + 4);
  v225 = *(v33 + 10);
  v52 = *(v33 + 1);
  v220 = *v33;
  v221 = v52;
  v53 = v220;
  v54 = v212;
  if (v220 != v212 && (sub_265BF36E0() & 1) == 0)
  {
    v86 = v181;
    sub_265BF3130();
    sub_265BD1ED4(&v220, &v219);

    v87 = sub_265BF3230();
    v88 = sub_265BF34E0();
    sub_265BD1F0C(&v220);

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v219 = v90;
      *v89 = 136446466;

      v91 = v50;
      v92 = sub_265BB064C(v53, *(&v53 + 1), &v219);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2082;
      *(v89 + 14) = sub_265BB064C(v54, *(&v54 + 1), &v219);
      _os_log_impl(&dword_265BAD000, v87, v88, "Not processing handshake queue, intent identifiers no longer match (%{public}s != %{public}s)", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v90, -1, -1);
      MEMORY[0x26676DCA0](v89, -1, -1);

      sub_265BD1F0C(&v220);
      v91(v181, v216);
      return sub_265BD23EC(v218, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

    sub_265BD1F0C(&v220);
    v80 = v86;
LABEL_28:
    v50(v80, v216);
    return sub_265BD23EC(v218, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v55 = v225;
  if (v225 >> 62)
  {
    result = sub_265BF3690();
  }

  else
  {
    result = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v47;
  v58 = v201;
  if (!result)
  {
    sub_265BF3130();
    sub_265BD1ED4(&v220, &v219);
    v81 = sub_265BF3230();
    v82 = sub_265BF34E0();
    sub_265BD1F0C(&v220);
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v219 = v84;
      *v83 = 136446210;

      v85 = sub_265BB064C(v53, *(&v53 + 1), &v219);

      *(v83 + 4) = v85;
      _os_log_impl(&dword_265BAD000, v81, v82, "No devices in handshake queue to process for intent %{public}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x26676DCA0](v84, -1, -1);
      MEMORY[0x26676DCA0](v83, -1, -1);
    }

    sub_265BD1F0C(&v220);
    v80 = v58;
    goto LABEL_28;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x26676D450](0, v55);
LABEL_10:
    v60 = v59;
    sub_265BF3130();
    sub_265BD1ED4(&v220, &v219);
    v61 = v60;
    v62 = sub_265BF3230();
    v63 = sub_265BF34E0();
    sub_265BD1F0C(&v220);

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v219 = v66;
      *v64 = 136446466;

      v67 = sub_265BB064C(v53, *(&v53 + 1), &v219);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2114;
      *(v64 + 14) = v61;
      *v65 = v61;
      v68 = v61;
      _os_log_impl(&dword_265BAD000, v62, v63, "Connecting to next device for handshake (intent: %{public}s): %{public}@", v64, 0x16u);
      sub_265BD2214(v65);
      MEMORY[0x26676DCA0](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x26676DCA0](v66, -1, -1);
      MEMORY[0x26676DCA0](v64, -1, -1);
    }

    v50(v57, v216);
    v69 = v187;
    v70 = v221;
    v71 = v61;
    sub_265BB8C58(v71, v70, v214);
    sub_265BF3450();
    v73 = v72;
    v74 = *(v211 + 56);
    v75 = 1;
    if (v70 <= 2)
    {
      v76 = 1;
LABEL_26:
      v93 = BYTE1(v222);
      v94 = v222;
      v95 = swift_allocObject();
      *(v95 + 16) = v74;
      *(v95 + 24) = v71;
      *(v95 + 32) = v93;
      *(v95 + 33) = v75;
      *(v95 + 34) = 0;
      *(v95 + 35) = v76;
      *(v95 + 36) = v94;
      v181 = v71;
      swift_unknownObjectRetain();
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
      v97 = v206;
      v173[1] = v96;
      sub_265BF2DF0();
      sub_265BF3180();
      sub_265BF2F30();
      swift_allocObject();
      v98 = sub_265BF2F00();
      v99 = v186;
      sub_265BF2F50();

      sub_265BF3200();
      sub_265BF31E0();
      (*(v184 + 8))(v99, v185);
      sub_265BF2F50();
      sub_265BF31C0();
      swift_allocObject();
      v100 = sub_265BF3190();
      v176 = v100;
      v219 = v98;
      v101 = sub_265BF3350();
      v175 = v101;
      v103 = v102;
      sub_265BF2C20();
      v104 = swift_allocObject();
      v177 = v98;
      *(v104 + 16) = v98;
      *(v104 + 24) = v100;
      *(v104 + 32) = v101;
      *(v104 + 40) = v103;
      *(v104 + 48) = "DeviceConnection.connect";
      *(v104 + 56) = 24;
      *(v104 + 64) = 2;

      v105 = v209;
      sub_265BF2DF0();
      v106 = v213;
      v107 = *(v213 + 16);
      v216 = v213 + 16;
      v217 = v107;
      v108 = v190;
      v109 = v208;
      v107(v190, v97, v208);
      v110 = v106;
      v201 = *(v106 + 80);
      v174 = &v188[(v201 + 16) & ~v201];
      v111 = (v201 + 16) & ~v201;
      v187 = v111;
      v112 = swift_allocObject();
      v113 = *(v110 + 32);
      v186 = (v110 + 32);
      v188 = v113;
      (v113)(v112 + v111, v108, v109);
      v114 = v215;
      v115 = *(v215 + 16);
      v184 = v215 + 16;
      v185 = v115;
      v116 = v210;
      v115(v69, v105, v210);
      v117 = *(v114 + 80);
      v118 = v114;
      v183 = v117;
      v119 = (v117 + 16) & ~v117;
      v180 = v119;
      v120 = (v182 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = v120;
      v121 = swift_allocObject();
      v122 = *(v118 + 32);
      v179 = v118 + 32;
      v182 = v122;
      v122(v121 + v119, v69, v116);
      v123 = (v121 + v120);
      *v123 = sub_265BD3390;
      v123[1] = v112;
      v124 = v191;
      sub_265BF2DF0();
      v125 = v197;
      v126 = v193;
      v127 = v198;
      (*(v197 + 16))(v193, v207, v198);
      v128 = (*(v125 + 80) + 49) & ~*(v125 + 80);
      v129 = (v192 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v130 = swift_allocObject();
      *(v130 + 16) = v175;
      *(v130 + 24) = v103;
      *(v130 + 32) = "DeviceConnection.connect";
      *(v130 + 40) = 24;
      *(v130 + 48) = 2;
      (*(v125 + 32))(v130 + v128, v126, v127);
      *(v130 + v129) = v176;
      *(v130 + ((v129 + 15) & 0xFFFFFFFFFFFFFFF8)) = v177;
      v131 = v208;
      v217(v108, v124, v208);
      v132 = (v174 + 7) & 0xFFFFFFFFFFFFFFF8;
      v192 = v132;
      v133 = swift_allocObject();
      (v188)(&v187[v133], v108, v131);
      v134 = (v133 + v132);
      *v134 = sub_265BD3364;
      v134[1] = v130;

      v135 = v196;
      sub_265BF2DF0();
      v136 = v213 + 8;
      v137 = *(v213 + 8);
      v137(v124, v131);
      v190 = v137;
      v213 = v136;
      v138 = *(v215 + 8);
      v215 += 8;
      v193 = v138;
      (v138)(v209, v210);
      (*(v125 + 8))(v207, v127);
      (*(v194 + 8))(v202, v195);
      v137(v206, v131);

      v139 = v204;
      v207 = *(v204 + 16);
      v140 = v203;
      v141 = v205;
      (v207)(v203, v214, v205);
      v142 = *(v139 + 80);
      v143 = (v142 + 112) & ~v142;
      v202 = (v189 + 7);
      v144 = (v189 + 7 + v143) & 0xFFFFFFFFFFFFFFF8;
      v145 = swift_allocObject();
      v146 = v223;
      *(v145 + 56) = v222;
      *(v145 + 72) = v146;
      *(v145 + 88) = v224;
      v147 = v221;
      *(v145 + 24) = v220;
      *(v145 + 16) = v211;
      *(v145 + 104) = v225;
      *(v145 + 40) = v147;
      v198 = *(v139 + 32);
      (v198)(v145 + v143, v140, v141);
      *(v145 + v144) = v73;
      v148 = v206;
      v149 = v208;
      v217(v206, v135, v208);
      v150 = v192;
      v151 = swift_allocObject();
      (v188)(&v187[v151], v148, v149);
      v152 = (v151 + v150);
      *v152 = sub_265BD2560;
      v152[1] = v145;
      sub_265BD1ED4(&v220, &v219);

      v153 = v199;
      sub_265BF2DF0();
      (v190)(v135, v149);
      v154 = v203;
      v155 = v205;
      (v207)(v203, v214, v205);
      v156 = (v142 + 104) & ~v142;
      v157 = &v202[v156] & 0xFFFFFFFFFFFFFFF8;
      v158 = swift_allocObject();
      v159 = v223;
      *(v158 + 48) = v222;
      *(v158 + 64) = v159;
      *(v158 + 80) = v224;
      *(v158 + 96) = v225;
      v160 = v221;
      *(v158 + 16) = v220;
      *(v158 + 32) = v160;
      (v198)(v158 + v156, v154, v155);
      *(v158 + v157) = v211;
      v161 = (v158 + ((v157 + 15) & 0xFFFFFFFFFFFFFFF8));
      v162 = *(&v212 + 1);
      *v161 = v212;
      v161[1] = v162;
      v163 = swift_allocObject();
      *(v163 + 16) = sub_265BD263C;
      *(v163 + 24) = v158;
      v164 = v209;
      v165 = v210;
      v185(v209, v153, v210);
      v166 = v178;
      v167 = swift_allocObject();
      v182(v167 + v180, v164, v165);
      v168 = (v167 + v166);
      *v168 = sub_265BD3358;
      v168[1] = v163;
      sub_265BD1ED4(&v220, &v219);

      v169 = v200;
      sub_265BF2DF0();
      v170 = v193;
      (v193)(v153, v165);
      v171 = sub_265BF2E40();
      v172 = swift_allocObject();
      *(v172 + 16) = 0;
      *(v172 + 24) = 0;
      v171(sub_265BB8864, v172);

      sub_265BD1F0C(&v220);
      (v170)(v169, v165);
      (*(v204 + 8))(v214, v155);
      return sub_265BD23EC(v218, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

    if (v70 != 3)
    {
      v76 = 1;
      if (v70 != 4)
      {
        goto LABEL_26;
      }

      v75 = 0;
    }

    v76 = v75;
    v75 = 0;
    goto LABEL_26;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = *(v55 + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_265BC9644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v69 = a5;
  v64 = sub_265BF2CC0();
  v11 = *(v64 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v72 = *(v66 - 8);
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v67 = &v57 - v19;
  v20 = a1[1];
  v70 = *a1;
  v61 = v20;
  v71 = a1[2];
  v21 = swift_allocObject();
  v68 = a2;
  *(v21 + 16) = a2;
  v22 = *(a3 + 48);
  *(v21 + 56) = *(a3 + 32);
  *(v21 + 72) = v22;
  *(v21 + 88) = *(a3 + 64);
  *(v21 + 104) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v21 + 24) = *a3;
  *(v21 + 40) = v23;

  sub_265BD1ED4(a3, v73);
  sub_265BF2E00();
  v24 = a4;
  v25 = v64;
  (*(v11 + 16))(v13, v24, v64);
  v26 = (*(v11 + 80) + 104) & ~*(v11 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = *(a3 + 48);
  *(v28 + 48) = *(a3 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a3 + 64);
  *(v28 + 96) = *(a3 + 80);
  v30 = *(a3 + 16);
  *(v28 + 16) = *a3;
  *(v28 + 32) = v30;
  (*(v11 + 32))(v28 + v26, v13, v25);
  v31 = (v28 + v27);
  v32 = v71;
  *v31 = v70;
  v31[1] = v20;
  v31[2] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_265BD2980;
  *(v33 + 24) = v28;
  v34 = v72;
  v35 = *(v72 + 16);
  v63 = v72 + 16;
  v64 = v35;
  v36 = v65;
  v37 = v66;
  v38 = v18;
  (v35)(v65, v18, v66);
  v39 = *(v34 + 80);
  v62 = v39;
  v40 = (v39 + 16) & ~v39;
  v59 = v40;
  v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v34;
  v58 = *(v34 + 32);
  v60 = v34 + 32;
  v58(v42 + v40, v36, v37);
  v44 = (v42 + v41);
  *v44 = sub_265BD2A28;
  v44[1] = v33;
  sub_265BD1ED4(a3, v73);
  v45 = v70;
  swift_unknownObjectRetain();
  v46 = v67;
  sub_265BF2DF0();
  v47 = *(v43 + 8);
  v72 = v43 + 8;
  v65 = v47;
  (v47)(v38, v37);
  v48 = swift_allocObject();
  v49 = *(a3 + 48);
  *(v48 + 56) = *(a3 + 32);
  *(v48 + 72) = v49;
  *(v48 + 88) = *(a3 + 64);
  v50 = *(a3 + 16);
  *(v48 + 24) = *a3;
  *(v48 + 16) = v68;
  *(v48 + 104) = *(a3 + 80);
  *(v48 + 40) = v50;
  *(v48 + 112) = a6;
  v51 = v61;
  *(v48 + 120) = v45;
  *(v48 + 128) = v51;
  *(v48 + 136) = v71;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_265BD2AD4;
  *(v52 + 24) = v48;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_265BD2B00;
  *(v53 + 24) = v52;
  (v64)(v38, v46, v37);
  v54 = swift_allocObject();
  v58(v54 + v59, v38, v37);
  v55 = (v54 + v41);
  *v55 = sub_265BD335C;
  v55[1] = v53;

  sub_265BD1ED4(a3, v73);
  swift_unknownObjectRetain();
  sub_265BF2DF0();
  return (v65)(v46, v37);
}

uint64_t sub_265BC9C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v9 = sub_265BF2CC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265BF3240();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  (*(v10 + 16))(v12, a2, v9);
  sub_265BD1ED4(a1, v40);
  v16 = a1;
  v17 = sub_265BF3230();
  v18 = sub_265BF34E0();
  sub_265BD1F0C(v16);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a5;
    v20 = v19;
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v20 = 136446466;
    *(v20 + 4) = sub_265BB064C(*v16, *(v16 + 8), v40);
    *(v20 + 12) = 2082;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
    v33 = v13;
    v21 = v16;
    v22 = sub_265BF36D0();
    v32 = v17;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = v22;
    v16 = v21;
    v26 = sub_265BB064C(v25, v24, v40);

    *(v20 + 14) = v26;
    v27 = v18;
    v28 = v32;
    _os_log_impl(&dword_265BAD000, v32, v27, "Intent %{public}s Handshaking %{public}s", v20, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v29, -1, -1);
    v30 = v20;
    a5 = v35;
    MEMORY[0x26676DCA0](v30, -1, -1);

    (*(v36 + 8))(v15, v33);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    (*(v36 + 8))(v15, v13);
  }

  return (*(v16 + 64))(a2, v37, v38, a5);
}

uint64_t sub_265BC9FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v9 = sub_265BF3240();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[5];
  v32 = a1[6];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v12);
  sub_265BF3450();
  v14 = v13 - a6;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 33);
  LOBYTE(a1) = *(a2 + 32);
  v38[3] = &type metadata for ConnectionHandshakeSucceededAnalyticsEvent;
  v38[4] = sub_265BD2B28();
  v19 = swift_allocObject();
  v38[0] = v19;
  *(v19 + 16) = v14;
  v33 = v16;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  v20 = v11;
  *(v19 + 40) = v17;
  *(v19 + 41) = v18;
  *(v19 + 42) = a1;

  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  sub_265BF3130();
  sub_265BD1ED4(a2, v38);
  v21 = sub_265BF3230();
  v22 = sub_265BF34E0();
  sub_265BD1F0C(a2);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136446210;
    v25 = v33;
    *(v23 + 4) = sub_265BB064C(v33, v15, v38);
    _os_log_impl(&dword_265BAD000, v21, v22, "Intent %{public}s Handshake success, completing", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x26676DCA0](v24, -1, -1);
    MEMORY[0x26676DCA0](v23, -1, -1);

    (*(v34 + 8))(v20, v35);
    v26 = v25;
  }

  else
  {

    (*(v34 + 8))(v11, v35);
    v26 = v33;
  }

  v27 = v36;
  result = sub_265BC3EF4(v26, v15);
  if (!v27)
  {
    (*(a2 + 48))(v29, v30, v31, 0);
    return sub_265BCADEC();
  }

  return result;
}

uint64_t sub_265BCA270(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a4;
  v57 = a6;
  v9 = sub_265BF3100();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BF2CC0();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265BF2DE0();
  v49 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v42 - v15;
  v54 = sub_265BF3240();
  v16 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BD1ED4(a2, v60);
  v19 = a1;
  v20 = sub_265BF3230();
  v21 = sub_265BF34D0();
  sub_265BD1F0C(a2);

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = a3;
    v25 = v24;
    v60[0] = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_265BB064C(*a2, a2[1], v60);
    *(v23 + 12) = 2082;
    swift_getErrorValue();
    v26 = MEMORY[0x26676D550](v58, v59);
    v28 = sub_265BB064C(v26, v27, v60);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_265BAD000, v20, v21, "Intent %{public}s Failed, processing next device in queue (%{public}s)", v23, 0x16u);
    swift_arrayDestroy();
    v29 = v25;
    a3 = v44;
    MEMORY[0x26676DCA0](v29, -1, -1);
    v30 = v23;
    v11 = v43;
    MEMORY[0x26676DCA0](v30, -1, -1);
  }

  (*(v16 + 8))(v18, v54);
  v31 = a1;
  v32 = sub_265BBF8EC(a1);
  v33 = v56;
  if (v32 != 4)
  {
    (*(v47 + 16))(v46, a3, v11);
    v34 = v48;
    sub_265BF2DD0();
    swift_getObjectType();
    v35 = v49;
    v36 = v50;
    (*(v49 + 16))(v45, v34, v50);
    v37 = v51;
    sub_265BF30F0();
    v38 = v53;
    sub_265BF2FA0();
    (*(v52 + 8))(v37, v38);
    v32 = (*(v35 + 8))(v34, v36);
  }

  MEMORY[0x28223BE20](v32);
  v39 = v55;
  *(&v42 - 4) = v33;
  *(&v42 - 3) = v39;
  v40 = v57;
  *(&v42 - 2) = v57;
  sub_265BF2EA0();
  return sub_265BC7D60(v39, v40);
}

uint64_t sub_265BCA7F0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v39 = a2;
  v5 = sub_265BF3240();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a1 + v17, v16, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
LABEL_7:
    sub_265BF3130();

    v22 = sub_265BF3230();
    v23 = sub_265BF34E0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v49 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_265BB064C(v39, a3, &v49);
      _os_log_impl(&dword_265BAD000, v22, v23, "Not updating handshake queue, state no longer matches for %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26676DCA0](v25, -1, -1);
      MEMORY[0x26676DCA0](v24, -1, -1);
    }

    return (*(v40 + 8))(v10, v41);
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = type metadata accessor for RemoteParticipantConnectionBroker.State;
    v21 = v16;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190);
    v20 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v21 = &v16[*(v19 + 48)];
LABEL_6:
    sub_265BD23EC(v21, v20);
    goto LABEL_7;
  }

  v27 = *(v16 + 3);
  v51 = *(v16 + 2);
  v52 = v27;
  v53 = *(v16 + 4);
  v54 = *(v16 + 10);
  v28 = *(v16 + 1);
  v49 = *v16;
  v50 = v28;
  v29 = v49;
  if (v49 == __PAIR128__(a3, v39) || (sub_265BF36E0() & 1) != 0)
  {
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v42 = v49;
    v43 = v50;
    sub_265BCAD14();

    v31 = v45;
    *(v14 + 2) = v44;
    *(v14 + 3) = v31;
    *(v14 + 4) = v46;
    *(v14 + 10) = v47;
    v32 = v43;
    *v14 = v42;
    *(v14 + 1) = v32;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_265BD2718(v14, a1 + v17);
    return swift_endAccess();
  }

  else
  {
    sub_265BF3130();

    sub_265BD1ED4(&v49, v48);
    v33 = sub_265BF3230();
    v34 = sub_265BF34E0();
    sub_265BD1F0C(&v49);

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48[0] = v36;
      *v35 = 136446466;

      v37 = sub_265BB064C(v29, *(&v29 + 1), v48);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_265BB064C(v39, a3, v48);
      _os_log_impl(&dword_265BAD000, v33, BYTE8(v29), "Not updating handshake queue, intent identifier changed (%{public}s != %{public}s)", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v36, -1, -1);
      MEMORY[0x26676DCA0](v35, -1, -1);

      sub_265BD1F0C(&v49);
    }

    else
    {
      sub_265BD1F0C(&v49);
    }

    return (*(v40 + 8))(v8, v41);
  }
}

void sub_265BCAD14()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_265BF3690())
  {
    if (sub_265BF3690())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x26676D450](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_265BF3690();
LABEL_13:
      if (v3)
      {
        sub_265BD287C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_265BCADEC()
{
  v1 = v0;
  v42 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  MEMORY[0x28223BE20](v42);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v46 = *(v4 - 8);
  v5 = v46[8];
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v45 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v15;
  v16 = sub_265BF3240();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v17 + 8))(v19, v16);
  swift_storeEnumTagMultiPayload();
  v47 = v1;
  v48 = v3;
  sub_265BF2EA0();
  sub_265BF2E50();
  sub_265BD23EC(v3, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v20 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 56);
  v41 = v12;
  v22(ObjectType, v20);
  v23 = v46;
  v24 = v46[2];
  v25 = v9;
  v26 = v9;
  v27 = v4;
  v24(v26, v12, v4);
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v30 = v23[4];
  v31 = v25;
  v32 = v27;
  v30(v29 + v28, v31, v27);
  v33 = v43;
  v24(v43, v45, v32);
  v34 = swift_allocObject();
  v30(v34 + v28, v33, v32);
  v35 = (v34 + ((v28 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_265BD339C;
  v35[1] = v29;
  v36 = v44;
  sub_265BF2DF0();
  v37 = v46[1];
  v37(v41, v32);
  v37(v45, v32);
  v38 = sub_265BF2E40();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v38(sub_265BB8864, v39);

  return (v37)(v36, v32);
}

uint64_t sub_265BCB2BC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD20A0(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_265BCB328()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  swift_unknownObjectRelease();
  sub_265BD23EC(v0 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state, type metadata accessor for RemoteParticipantConnectionBroker.State);

  return v0;
}

uint64_t sub_265BCB3B4()
{
  sub_265BCB328();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_265BCB434(uint64_t a1)
{
  result = type metadata accessor for RemoteParticipantConnectionBroker.State(319);
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

void sub_265BCB568(uint64_t a1)
{
  type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(319);
  if (v1 <= 0x3F)
  {
    sub_265BCB63C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_265BCB604(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265BCB63C(uint64_t a1)
{
  if (!qword_2810683D0)
  {
    sub_265BBABEC();
    type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810683D0);
    }
  }
}

uint64_t sub_265BCB6B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_265BCB6F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BCB784(uint64_t a1)
{
  result = sub_265BF2CC0();
  if (v2 <= 0x3F)
  {
    result = sub_265BCB844();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_265BCB844()
{
  result = qword_2810683C0;
  if (!qword_2810683C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2810683C0);
  }

  return result;
}

void sub_265BCB894(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v201) = a4;
  LODWORD(v199) = a3;
  LODWORD(v200) = a2;
  v227 = a1;
  v231 = a5;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v215 = *(v226 - 8);
  v7 = MEMORY[0x28223BE20](v226);
  v208 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v8;
  MEMORY[0x28223BE20](v7);
  v224 = &v193 - v9;
  v225 = sub_265BF2C30();
  v214 = *(v225 - 8);
  v10 = MEMORY[0x28223BE20](v225);
  v210 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v11;
  MEMORY[0x28223BE20](v10);
  v229 = &v193 - v12;
  v203 = sub_265BF3210();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v205 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265BF31F0();
  MEMORY[0x28223BE20](v14 - 8);
  v204 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_265BF2F60();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v222 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v211 = *(v223 - 8);
  v17 = MEMORY[0x28223BE20](v223);
  v220 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v219 = &v193 - v20;
  v206 = v21;
  MEMORY[0x28223BE20](v19);
  v221 = &v193 - v22;
  v23 = sub_265BF2CC0();
  v216 = *(v23 - 8);
  v217 = v23;
  v24 = *(v216 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v196 = (&v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v25);
  v195 = &v193 - v27;
  MEMORY[0x28223BE20](v26);
  v198 = &v193 - v28;
  v29 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v193 - v33;
  v35 = sub_265BF3240();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v197 = &v193 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v193 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v193 - v45;
  sub_265BF3130();
  sub_265BF3220();
  v47 = *(v36 + 8);
  v228 = v35;
  v48 = v35;
  v49 = v47;
  v47(v46, v48);
  v218 = v6;
  sub_265BF2EA0();
  v230 = v34;
  sub_265BD2384(v34, v32, type metadata accessor for RemoteParticipantConnectionBroker.State);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  sub_265BD23EC(v32, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (v6 != 3)
  {
    sub_265BF3130();
    v81 = sub_265BF3230();
    v82 = sub_265BF34D0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_265BAD000, v81, v82, "Participant connection broker not allowing connection attempt, state is not idle", v83, 2u);
      MEMORY[0x26676DCA0](v83, -1, -1);
    }

    v49(v39, v228);
    v84 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v85 = swift_allocError();
    (*(*(v84 - 8) + 104))(v86, *MEMORY[0x277D52658], v84);
    *(swift_allocObject() + 16) = v85;
    v87 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    goto LABEL_10;
  }

  v50 = v227;
  v51 = sub_265BF2CB0();
  if ((v52 & 1) == 0)
  {
    v88 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v85 = swift_allocError();
    (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D525E8], v88);
    *(swift_allocObject() + 16) = v85;
    v90 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
LABEL_10:
    sub_265BF2E00();
    sub_265BD23EC(v230, type metadata accessor for RemoteParticipantConnectionBroker.State);

    return;
  }

  v193 = v51;
  v194 = v49;
  v53 = v218;
  v54 = *(v218 + 80);
  ObjectType = swift_getObjectType();
  v56 = (*(v54 + 64))(v50, ObjectType, v54);
  if (!v56)
  {
    v91 = v197;
    sub_265BF3130();
    v92 = v216;
    v93 = v217;
    v94 = *(v216 + 16);
    v95 = v195;
    (v94)(v195, v50, v217);
    v96 = sub_265BF3230();
    v97 = sub_265BF34E0();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v198 = v94;
      v100 = v99;
      v232 = v99;
      *v98 = 136446210;
      sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
      v101 = sub_265BF36D0();
      v103 = v102;
      (*(v216 + 8))(v95, v217);
      v104 = sub_265BB064C(v101, v103, &v232);
      v93 = v217;

      *(v98 + 4) = v104;
      _os_log_impl(&dword_265BAD000, v96, v97, "No existing devices found for %{public}s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      v105 = v100;
      v94 = v198;
      MEMORY[0x26676DCA0](v105, -1, -1);
      v106 = v98;
      v92 = v216;
      MEMORY[0x26676DCA0](v106, -1, -1);

      v107 = v197;
    }

    else
    {

      (*(v92 + 8))(v95, v93);
      v107 = v91;
    }

    v194(v107, v228);
    v150 = v196;
    (v94)(v196, v227, v93);
    v151 = v92;
    v152 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v153 = swift_allocObject();
    (*(v151 + 32))(v153 + v152, v150, v93);
    v154 = (v153 + v152 + v24);
    *v154 = v200 & 1;
    v154[1] = v199 & 1;
    v154[2] = v201;
    v155 = v153 + ((v152 + v24 + 10) & 0xFFFFFFFFFFFFFFF8);
    *v155 = v218;
    *(v155 + 8) = v193;

    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    v156 = v221;
    sub_265BF2DF0();
    sub_265BF3180();
    sub_265BF2F30();
    swift_allocObject();
    v157 = sub_265BF2F00();
    v158 = v205;
    sub_265BF2F50();

    sub_265BF3200();
    sub_265BF31E0();
    v202[1](v158, v203);
    sub_265BF2F50();
    sub_265BF31C0();
    swift_allocObject();
    v159 = sub_265BF3190();
    v218 = v159;
    v232 = v157;
    v160 = sub_265BF3350();
    v217 = v160;
    v162 = v161;
    sub_265BF2C20();
    v163 = swift_allocObject();
    v227 = v157;
    *(v163 + 16) = v157;
    *(v163 + 24) = v159;
    *(v163 + 32) = v160;
    *(v163 + 40) = v162;
    v216 = v162;
    *(v163 + 48) = "RemoteParticipantConnectionBroker::connect";
    *(v163 + 56) = 42;
    *(v163 + 64) = 2;

    v164 = v224;
    sub_265BF2DF0();
    v165 = v211;
    v166 = *(v211 + 16);
    v201 = (v211 + 16);
    v205 = v166;
    v167 = v220;
    v168 = v223;
    (v166)(v220, v156, v223);
    v204 = *(v165 + 80);
    v202 = &v206[(v204 + 16) & ~v204];
    v169 = (v204 + 16) & ~v204;
    v203 = v169;
    v170 = swift_allocObject();
    v171 = *(v165 + 32);
    v200 = v165 + 32;
    v206 = v171;
    (v171)(v170 + v169, v167, v168);
    v172 = v215;
    v173 = v208;
    v174 = v226;
    (*(v215 + 16))(v208, v164, v226);
    v175 = (*(v172 + 80) + 16) & ~*(v172 + 80);
    v176 = (v207 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
    v177 = swift_allocObject();
    (*(v172 + 32))(v177 + v175, v173, v174);
    v178 = (v177 + v176);
    *v178 = sub_265BD3390;
    v178[1] = v170;
    v179 = v219;
    sub_265BF2DF0();
    v180 = v214;
    v181 = v210;
    v182 = v225;
    (*(v214 + 16))(v210, v229, v225);
    v183 = (*(v180 + 80) + 49) & ~*(v180 + 80);
    v184 = (v209 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
    v185 = swift_allocObject();
    v186 = v216;
    *(v185 + 16) = v217;
    *(v185 + 24) = v186;
    *(v185 + 32) = "RemoteParticipantConnectionBroker::connect";
    *(v185 + 40) = 42;
    *(v185 + 48) = 2;
    (*(v180 + 32))(v185 + v183, v181, v182);
    *(v185 + v184) = v218;
    *(v185 + ((v184 + 15) & 0xFFFFFFFFFFFFFFF8)) = v227;
    v187 = v220;
    v188 = v223;
    (v205)(v220, v179, v223);
    v189 = (v202 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    (v206)(v190 + v203, v187, v188);
    v191 = (v190 + v189);
    *v191 = sub_265BD3364;
    v191[1] = v185;

    sub_265BF2DF0();
    v192 = *(v165 + 8);
    v192(v179, v188);
    (*(v172 + 8))(v224, v226);
    (*(v180 + 8))(v229, v225);
    (*(v212 + 8))(v222, v213);
    v192(v221, v188);
    goto LABEL_23;
  }

  v57 = v56;
  v58 = v44;
  sub_265BF3130();
  v59 = v216;
  v60 = v217;
  v61 = v198;
  (*(v216 + 16))(v198, v50, v217);
  v62 = v57;
  v63 = sub_265BF3230();
  v64 = sub_265BF34E0();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v227 = v58;
    v66 = v59;
    v67 = v65;
    v68 = swift_slowAlloc();
    v196 = v68;
    v197 = swift_slowAlloc();
    v232 = v197;
    *v67 = 138543618;
    *(v67 + 4) = v62;
    *v68 = v57;
    *(v67 + 12) = 2082;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
    v69 = v62;
    v70 = v198;
    v71 = sub_265BF36D0();
    LODWORD(v195) = v64;
    v72 = v62;
    v73 = v71;
    v75 = v74;
    (*(v66 + 8))(v70, v60);
    v76 = v73;
    v62 = v72;
    v77 = sub_265BB064C(v76, v75, &v232);

    *(v67 + 14) = v77;
    _os_log_impl(&dword_265BAD000, v63, v195, "Found existing discovered device (%{public}@) for %{public}s", v67, 0x16u);
    v78 = v196;
    sub_265BD2214(v196);
    MEMORY[0x26676DCA0](v78, -1, -1);
    v79 = v197;
    __swift_destroy_boxed_opaque_existential_0Tm(v197);
    MEMORY[0x26676DCA0](v79, -1, -1);
    MEMORY[0x26676DCA0](v67, -1, -1);

    v80 = v227;
  }

  else
  {

    (*(v59 + 8))(v61, v60);
    v80 = v58;
  }

  v194(v80, v228);
  v108 = *(v53 + 56);
  v109 = 1;
  if (v193 > 2u)
  {
    if (v193 != 3)
    {
      v110 = 1;
      if (v193 != 4)
      {
        goto LABEL_20;
      }

      v109 = 0;
    }

    v110 = v109;
    v109 = 0;
    goto LABEL_20;
  }

  v110 = 1;
LABEL_20:
  v111 = swift_allocObject();
  *(v111 + 16) = v108;
  *(v111 + 24) = v62;
  *(v111 + 32) = v199 & 1;
  *(v111 + 33) = v109;
  *(v111 + 34) = v201;
  *(v111 + 35) = v110;
  *(v111 + 36) = v200 & 1;
  v227 = v62;
  swift_unknownObjectRetain();
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
  v112 = v221;
  sub_265BF2DF0();
  sub_265BF3180();
  sub_265BF2F30();
  swift_allocObject();
  v113 = sub_265BF2F00();
  v114 = v205;
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  v202[1](v114, v203);
  sub_265BF2F50();
  sub_265BF31C0();
  swift_allocObject();
  v115 = sub_265BF3190();
  v217 = v115;
  v232 = v113;
  v116 = sub_265BF3350();
  v216 = v116;
  v118 = v117;
  sub_265BF2C20();
  v119 = swift_allocObject();
  v218 = v113;
  *(v119 + 16) = v113;
  *(v119 + 24) = v115;
  *(v119 + 32) = v116;
  *(v119 + 40) = v118;
  v205 = v118;
  *(v119 + 48) = "DeviceConnection.connect";
  *(v119 + 56) = 24;
  *(v119 + 64) = 2;

  v120 = v224;
  sub_265BF2DF0();
  v121 = v211;
  v122 = *(v211 + 16);
  v200 = v211 + 16;
  v204 = v122;
  v123 = v220;
  v124 = v223;
  v122(v220, v112, v223);
  v203 = *(v121 + 80);
  v201 = &v206[(v203 + 16) & ~v203];
  v125 = (v203 + 16) & ~v203;
  v202 = v125;
  v126 = swift_allocObject();
  v127 = *(v121 + 32);
  v199 = v121 + 32;
  v206 = v127;
  (v127)(v126 + v125, v123, v124);
  v128 = v215;
  v129 = v208;
  v130 = v226;
  (*(v215 + 16))(v208, v120, v226);
  v131 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v132 = (v207 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
  v133 = swift_allocObject();
  (*(v128 + 32))(v133 + v131, v129, v130);
  v134 = (v133 + v132);
  *v134 = sub_265BD3390;
  v134[1] = v126;
  v135 = v219;
  sub_265BF2DF0();
  v136 = v214;
  v137 = v210;
  v138 = v225;
  (*(v214 + 16))(v210, v229, v225);
  v139 = (*(v136 + 80) + 49) & ~*(v136 + 80);
  v140 = (v209 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
  v141 = swift_allocObject();
  v142 = v205;
  *(v141 + 16) = v216;
  *(v141 + 24) = v142;
  *(v141 + 32) = "DeviceConnection.connect";
  *(v141 + 40) = 24;
  *(v141 + 48) = 2;
  (*(v136 + 32))(v141 + v139, v137, v138);
  v143 = v218;
  *(v141 + v140) = v217;
  *(v141 + ((v140 + 15) & 0xFFFFFFFFFFFFFFF8)) = v143;
  v144 = v220;
  v145 = v223;
  (v204)(v220, v135, v223);
  v146 = (v201 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = swift_allocObject();
  (v206)(v202 + v147, v144, v145);
  v148 = (v147 + v146);
  *v148 = sub_265BD3364;
  v148[1] = v141;

  sub_265BF2DF0();

  v149 = *(v121 + 8);
  v149(v219, v145);
  (*(v128 + 8))(v224, v226);
  (*(v136 + 8))(v229, v225);
  (*(v212 + 8))(v222, v213);
  v149(v221, v145);
LABEL_23:
  sub_265BD23EC(v230, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

uint64_t sub_265BCD2C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  LODWORD(v124) = a8;
  v132 = a7;
  LODWORD(v117) = a6;
  v112 = a5;
  v111 = a4;
  v109 = a3;
  v116 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  MEMORY[0x28223BE20](v116);
  v118 = (&v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v133 = *(v129 - 8);
  v12 = MEMORY[0x28223BE20](v129);
  v125 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v123 = &v106 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v130 = (&v106 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v126 = (&v106 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v127 = (&v106 - v21);
  v122 = v22;
  MEMORY[0x28223BE20](v20);
  v128 = &v106 - v23;
  v24 = sub_265BF2CC0();
  v108 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v110 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_265BF3240();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v30 = (v29 - 8);
  v119 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v121 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v106 - v34);
  v120 = v36;
  MEMORY[0x28223BE20](v33);
  v38 = (&v106 - v37);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = a2;

  v107 = sub_265BF3370();
  v41 = v40;
  v42 = v30[7];
  v113 = v25;
  v43 = *(v25 + 16);
  v43(v38 + v42, a3, v24);
  sub_265BF3450();
  v45 = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_265BD3360;
  *(v46 + 24) = v39;
  v47 = swift_allocObject();
  v48 = v132;
  v47[2] = v132;
  v47[3] = sub_265BD3368;
  v47[4] = v46;
  v49 = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_265BD336C;
  *(v50 + 24) = v47;
  v51 = v38;
  v52 = v110;
  *v51 = v107;
  v51[1] = v41;
  *(v51 + v30[8]) = v111 & 1;
  *(v51 + v30[9]) = v112 & 1;
  *(v51 + v30[10]) = v117;
  *(v51 + v30[11]) = v45;
  v53 = (v51 + v30[12]);
  *v53 = sub_265BD3360;
  v53[1] = v50;
  v117 = v39;
  v54 = v108;

  sub_265BF3130();
  v43(v52, v109, v54);
  v55 = v35;
  sub_265BD2384(v51, v35, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v56 = v28;
  v57 = sub_265BF3230();
  v58 = sub_265BF34E0();
  v59 = os_log_type_enabled(v57, v58);
  v131 = v51;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v134[0] = v61;
    *v60 = 136446466;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
    v62 = sub_265BF36D0();
    v64 = v63;
    (*(v113 + 8))(v52, v54);
    v65 = sub_265BB064C(v62, v64, v134);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2082;
    v66 = *v55;
    v67 = v55[1];

    sub_265BD23EC(v55, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v68 = sub_265BB064C(v66, v67, v134);

    *(v60 + 14) = v68;
    _os_log_impl(&dword_265BAD000, v57, v58, "Connecting to participant %{public}s, intent identifier: %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    v69 = v61;
    v51 = v131;
    MEMORY[0x26676DCA0](v69, -1, -1);
    v70 = v60;
    v49 = v132;
    MEMORY[0x26676DCA0](v70, -1, -1);
  }

  else
  {

    sub_265BD23EC(v55, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    (*(v113 + 8))(v52, v54);
  }

  (*(v114 + 8))(v56, v115);
  v71 = v118;
  sub_265BD2384(v51, v118, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v72 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v72);
  *(&v106 - 2) = v49;
  *(&v106 - 1) = v71;
  sub_265BF2EA0();
  v73 = v126;
  sub_265BF2E50();
  sub_265BD23EC(v71, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v74 = *(v49 + 80);
  ObjectType = swift_getObjectType();
  if (qword_281068820 != -1)
  {
    swift_once();
  }

  v76 = v130;
  (*(v74 + 48))(v124, ObjectType, v74, *&qword_281068828);
  v77 = v133;
  v79 = v133 + 16;
  v78 = *(v133 + 16);
  v80 = v123;
  v81 = v129;
  v78(v123, v76, v129);
  v124 = v79;
  v118 = v78;
  v82 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v83 = &v122[v82];
  v116 = *(v77 + 80);
  v114 = swift_allocObject();
  v84 = *(v77 + 32);
  v115 = v82;
  v122 = v84;
  (v84)(v114 + v82, v80, v81);
  v85 = v125;
  v78(v125, v73, v81);
  v86 = (v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  (v84)(v87 + v82, v85, v81);
  v88 = (v87 + v86);
  v89 = v114;
  *v88 = sub_265BD339C;
  v88[1] = v89;
  v90 = v127;
  sub_265BF2DF0();
  v91 = *(v133 + 8);
  v125 = v91;
  v133 += 8;
  (v91)(v130, v81);
  (v91)(v73, v81);
  v130 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
  v92 = v121;
  sub_265BD2384(v131, v121, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v93 = (*(v119 + 80) + 24) & ~*(v119 + 80);
  v94 = (v120 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  *(v95 + 16) = v132;
  sub_265BD244C(v92, v95 + v93);
  v96 = (v95 + v94);
  v97 = v117;
  *v96 = sub_265BD3360;
  v96[1] = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_265BD24B0;
  *(v98 + 24) = v95;
  v118(v73, v90, v81);
  v99 = swift_allocObject();
  (v122)(v99 + v115, v73, v81);
  v100 = (v99 + v86);
  *v100 = sub_265BD3358;
  v100[1] = v98;

  v101 = v128;
  sub_265BF2DF0();
  v102 = v125;
  (v125)(v90, v81);
  v103 = sub_265BF2E40();
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  *(v104 + 24) = 0;
  v103(sub_265BB8864, v104);

  v102(v101, v81);
  return sub_265BD23EC(v131, v130);
}

uint64_t sub_265BCDF04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

uint64_t sub_265BCDF48(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v79 = a4;
  v85 = a3;
  v87 = a1;
  v6 = sub_265BF3240();
  v89 = *(v6 - 1);
  v90 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  v9 = MEMORY[0x28223BE20](v84);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v86 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v81 = &v71 - v12;
  v13 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v71 - v23);
  v25 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a2 + v25, v18, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = type metadata accessor for RemoteParticipantConnectionBroker.State;
    v27 = v18;
  }

  else
  {
    v76 = v13;
    v77 = v16;
    v78 = v8;
    sub_265BD244C(v18, v24);
    v33 = v85;
    v34 = *v24 == *v85 && v24[1] == v85[1];
    if (v34 || (sub_265BF36E0() & 1) != 0)
    {
      v35 = a2;
      v36 = a2[5];
      v88 = a2[6];
      v89 = v24;
      v75 = __swift_project_boxed_opaque_existential_1(a2 + 2, v36);
      v90 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
      sub_265BD2384(v33, v22, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      sub_265BF3450();
      v38 = v37 - *(v22 + v19[9]);
      swift_getErrorValue();
      v85 = sub_265BF3750();
      v74 = v39;
      swift_getErrorValue();
      v73 = sub_265BF3760();
      v41 = v40;
      v42 = v22[1];
      v72 = *v22;

      v43 = sub_265BF2CB0();
      LOBYTE(v92[0]) = v44 & 1;
      v45 = *(v22 + v19[7]);
      v46 = *(v22 + v19[6]);
      sub_265BD23EC(v22, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v47 = v92[0];
      v92[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
      v92[4] = sub_265BD1FD0();
      v48 = swift_allocObject();
      v92[0] = v48;
      *(v48 + 16) = v38;
      v49 = v74;
      *(v48 + 24) = v85;
      *(v48 + 32) = v49;
      *(v48 + 40) = v73;
      *(v48 + 48) = v41;
      *(v48 + 56) = v72;
      *(v48 + 64) = v42;
      *(v48 + 72) = v43;
      *(v48 + 80) = v47;
      *(v48 + 81) = v45;
      *(v48 + 82) = v46;
      sub_265BF3010();
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      v50 = v77;
      v51 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v51);
      *(&v71 - 2) = v35;
      *(&v71 - 1) = v50;
      v52 = v91;
      sub_265BF2EA0();
      v91 = v52;
      v53 = v86;
      sub_265BF2E50();
      sub_265BD23EC(v50, type metadata accessor for RemoteParticipantConnectionBroker.State);
      v54 = swift_allocObject();
      v55 = v82;
      v54[2] = v79;
      v54[3] = v55;
      v56 = v87;
      v54[4] = v87;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_265BD333C;
      *(v57 + 24) = v54;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_265BD33AC;
      *(v58 + 24) = v57;
      v59 = v83;
      v60 = v80;
      v61 = v84;
      (*(v83 + 16))(v80, v53, v84);
      v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      (*(v59 + 32))(v64 + v62, v60, v61);
      v65 = (v64 + v63);
      *v65 = sub_265BD335C;
      v65[1] = v58;

      v66 = v56;
      v67 = v81;
      sub_265BF2DF0();
      v68 = *(v59 + 8);
      v68(v86, v61);
      v69 = sub_265BF2E40();
      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *(v70 + 24) = 0;
      v69(sub_265BB8864, v70);

      v68(v67, v61);
      return sub_265BD23EC(v89, v90);
    }

    v26 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v27 = v24;
  }

  sub_265BD23EC(v27, v26);
  v28 = v88;
  sub_265BF3130();
  v29 = sub_265BF3230();
  v30 = sub_265BF34E0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_265BAD000, v29, v30, "Discovery activation failed, but current state intent no longer matches", v31, 2u);
    MEMORY[0x26676DCA0](v31, -1, -1);
  }

  return (v89[1])(v28, v90);
}

void sub_265BCE790(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v98 = a6;
  v93 = a5;
  LODWORD(v92) = a4;
  LODWORD(v91) = a3;
  v94 = a2;
  LODWORD(v90) = a1;
  v118 = a7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v110 = *(v119 - 8);
  v9 = MEMORY[0x28223BE20](v119);
  v102 = v10;
  v103 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = v89 - v11;
  v117 = sub_265BF2C30();
  v109 = *(v117 - 8);
  v12 = MEMORY[0x28223BE20](v117);
  v106 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v13;
  MEMORY[0x28223BE20](v12);
  v120 = v89 - v14;
  v99 = sub_265BF3210();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265BF31F0();
  MEMORY[0x28223BE20](v16 - 8);
  v96 = (v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_265BF2F60();
  v107 = *(v18 - 8);
  v108 = v18;
  MEMORY[0x28223BE20](v18);
  v115 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v105 = *(v114 - 8);
  v20 = MEMORY[0x28223BE20](v114);
  v111 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = v89 - v23;
  v95 = v24;
  MEMORY[0x28223BE20](v22);
  v113 = v89 - v25;
  v26 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v89 - v30;
  v32 = sub_265BF3240();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v89 - v37;
  sub_265BF3130();
  sub_265BF3220();
  v39 = *(v33 + 8);
  v39(v38, v32);
  v40 = v8;
  sub_265BF2EA0();
  v112 = v31;
  sub_265BD2384(v31, v29, type metadata accessor for RemoteParticipantConnectionBroker.State);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();
  sub_265BD23EC(v29, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (v8 == 3)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v90;
    *(v41 + 24) = v94;
    *(v41 + 32) = v91 & 1;
    *(v41 + 33) = v92 & 1;
    v42 = v93;
    *(v41 + 40) = v40;
    *(v41 + 48) = v42;
    *(v41 + 56) = v98;

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    v44 = v113;
    v89[1] = v43;
    sub_265BF2DF0();
    sub_265BF3180();
    sub_265BF2F30();
    swift_allocObject();
    v45 = sub_265BF2F00();
    v46 = v100;
    sub_265BF2F50();

    sub_265BF3200();
    sub_265BF31E0();
    (*(v97 + 8))(v46, v99);
    sub_265BF2F50();
    sub_265BF31C0();
    swift_allocObject();
    v47 = sub_265BF3190();
    v100 = v47;
    v121 = v45;
    v48 = sub_265BF3350();
    v99 = v48;
    v50 = v49;
    sub_265BF2C20();
    v51 = swift_allocObject();
    v98 = v45;
    *(v51 + 16) = v45;
    *(v51 + 24) = v47;
    *(v51 + 32) = v48;
    *(v51 + 40) = v50;
    v97 = v50;
    *(v51 + 48) = "RemoteParticipantConnectionBroker::connectToAnyParticipant";
    *(v51 + 56) = 58;
    *(v51 + 64) = 2;

    v52 = v116;
    sub_265BF2DF0();
    v53 = v105;
    v54 = *(v105 + 16);
    v94 = v105 + 16;
    v96 = v54;
    v55 = v111;
    v56 = v114;
    v54(v111, v44, v114);
    v93 = *(v53 + 80);
    v91 = &v95[(v93 + 16) & ~v93];
    v57 = (v93 + 16) & ~v93;
    v92 = v57;
    v58 = swift_allocObject();
    v59 = *(v53 + 32);
    v90 = v53 + 32;
    v95 = v59;
    (v59)(v58 + v57, v55, v56);
    v60 = v110;
    v61 = v103;
    v62 = v119;
    (*(v110 + 16))(v103, v52, v119);
    v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v64 = (v102 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    (*(v60 + 32))(v65 + v63, v61, v62);
    v66 = (v65 + v64);
    *v66 = sub_265BD1BE4;
    v66[1] = v58;
    v67 = v101;
    sub_265BF2DF0();
    v68 = v109;
    v69 = v106;
    v70 = v117;
    (*(v109 + 16))(v106, v120, v117);
    v71 = (*(v68 + 80) + 49) & ~*(v68 + 80);
    v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v74 = v97;
    *(v73 + 16) = v99;
    *(v73 + 24) = v74;
    *(v73 + 32) = "RemoteParticipantConnectionBroker::connectToAnyParticipant";
    *(v73 + 40) = 58;
    *(v73 + 48) = 2;
    (*(v68 + 32))(v73 + v71, v69, v70);
    *(v73 + v72) = v100;
    *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
    v75 = v111;
    v76 = v114;
    v96(v111, v67, v114);
    v77 = (v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    (v95)(v78 + v92, v75, v76);
    v79 = (v78 + v77);
    *v79 = sub_265BD1C10;
    v79[1] = v73;

    sub_265BF2DF0();
    v80 = *(v53 + 8);
    v80(v67, v76);
    (*(v60 + 8))(v116, v119);
    (*(v68 + 8))(v120, v117);
    (*(v107 + 8))(v115, v108);
    v80(v113, v76);
    sub_265BD23EC(v112, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  else
  {
    v81 = v112;
    sub_265BF3130();
    v82 = sub_265BF3230();
    v83 = sub_265BF34D0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_265BAD000, v82, v83, "Participant connection broker not allowing connection attempt, state is not idle", v84, 2u);
      MEMORY[0x26676DCA0](v84, -1, -1);
    }

    v39(v36, v32);
    v85 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v86 = swift_allocError();
    (*(*(v85 - 8) + 104))(v87, *MEMORY[0x277D52658], v85);
    *(swift_allocObject() + 16) = v86;
    v88 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    sub_265BF2E00();
    sub_265BD23EC(v81, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }
}

uint64_t sub_265BCF528(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v95 = a8;
  v103 = a7;
  LODWORD(v89) = a6;
  LODWORD(v88) = a5;
  LODWORD(v99) = a3;
  v87 = a9;
  v92 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  MEMORY[0x28223BE20](v92);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v102 = *(v98 - 8);
  v14 = MEMORY[0x28223BE20](v98);
  v96 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v86 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v100 = &v86 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v86 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v86 - v23;
  v93 = v24;
  MEMORY[0x28223BE20](v22);
  v97 = &v86 - v25;
  v26 = sub_265BF3240();
  v90 = *(v26 - 8);
  v91 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;

  v30 = sub_265BF3370();
  v32 = v31;

  sub_265BF3450();
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265BD1C48;
  *(v35 + 24) = v29;
  v36 = swift_allocObject();
  v37 = v103;
  v36[2] = v103;
  v36[3] = sub_265BD1C4C;
  v36[4] = v35;
  v38 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_265BD1ED0;
  *(v39 + 24) = v36;
  v86 = v30;
  *&v113 = v30;
  *(&v113 + 1) = v32;
  v40 = v99;
  LOBYTE(v114) = v99;
  *(&v114 + 1) = a4;
  LOBYTE(v115) = v88 & 1;
  BYTE1(v115) = v89 & 1;
  *(&v115 + 1) = v34;
  *&v116 = sub_265BD3360;
  *(&v116 + 1) = v39;
  *&v117 = v95;
  *(&v117 + 1) = v87;
  v118 = MEMORY[0x277D84F90];
  v112 = MEMORY[0x277D84F90];
  v109 = v115;
  v110 = v116;
  v111 = v117;
  v107 = v113;
  v108 = v114;
  v95 = v29;

  sub_265BF3130();
  sub_265BD1ED4(&v113, v106);
  v89 = v28;
  v41 = sub_265BF3230();
  v42 = sub_265BF34E0();
  sub_265BD1F0C(&v113);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v106[0] = v44;
    *v43 = 136446466;
    v105[0] = v40;
    v45 = sub_265BF3350();
    v47 = sub_265BB064C(v45, v46, v106);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v48 = sub_265BB064C(v86, v32, v106);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_265BAD000, v41, v42, "Connecting to any participant with role %{public}s, intent identifier: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    v49 = v44;
    v38 = v103;
    MEMORY[0x26676DCA0](v49, -1, -1);
    MEMORY[0x26676DCA0](v43, -1, -1);
  }

  else
  {
  }

  (*(v90 + 8))(v89, v91);
  v50 = v110;
  *(v13 + 2) = v109;
  *(v13 + 3) = v50;
  *(v13 + 4) = v111;
  *(v13 + 10) = v112;
  v51 = v108;
  *v13 = v107;
  *(v13 + 1) = v51;
  v52 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v52);
  *(&v86 - 2) = v38;
  *(&v86 - 1) = v13;
  sub_265BD1ED4(&v113, v106);
  sub_265BF2EA0();
  sub_265BF2E50();
  sub_265BD23EC(v13, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v53 = *(v38 + 80);
  ObjectType = swift_getObjectType();
  if (qword_281068820 != -1)
  {
    swift_once();
  }

  v55 = v100;
  (*(v53 + 48))(v99, ObjectType, v53, *&qword_281068828);
  v56 = v102;
  v57 = v102 + 16;
  v58 = *(v102 + 16);
  v59 = v94;
  v60 = v98;
  v58(v94, v55, v98);
  v99 = v57;
  v92 = v58;
  v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v62 = v61 + v93;
  v90 = *(v56 + 80);
  v88 = swift_allocObject();
  v89 = v61;
  v63 = *(v56 + 32);
  v91 = v63;
  v63(v88 + v61, v59, v60);
  v93 = v56 + 32;
  v64 = v96;
  v58(v96, v104, v60);
  v65 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v63(v66 + v61, v64, v60);
  v67 = (v66 + v65);
  v68 = v88;
  *v67 = sub_265BB2424;
  v67[1] = v68;
  sub_265BF2DF0();
  v69 = *(v102 + 8);
  v69(v100, v60);
  v70 = v104;
  v71 = v60;
  v69(v104, v60);
  v72 = swift_allocObject();
  v73 = v110;
  *(v72 + 56) = v109;
  *(v72 + 72) = v73;
  *(v72 + 88) = v111;
  v74 = v108;
  *(v72 + 24) = v107;
  *(v72 + 16) = v103;
  v75 = v112;
  *(v72 + 40) = v74;
  *(v72 + 104) = v75;
  *(v72 + 112) = sub_265BD1C48;
  *(v72 + 120) = v95;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_265BD1F58;
  *(v76 + 24) = v72;
  v77 = v70;
  v78 = v70;
  v79 = v101;
  v92(v78, v101, v71);
  v80 = swift_allocObject();
  v91(v80 + v89, v77, v71);
  v81 = (v80 + v65);
  *v81 = sub_265BD1F7C;
  v81[1] = v76;

  sub_265BD1ED4(&v113, v106);
  v82 = v97;
  sub_265BF2DF0();
  v69(v79, v71);
  v83 = sub_265BF2E40();
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  v83(sub_265BB8654, v84);

  sub_265BD1F0C(&v113);
  return (v69)(v82, v71);
}

uint64_t sub_265BCFEFC(void *a1, void *a2, double *a3, uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v68 = a4;
  v75 = a1;
  v73 = sub_265BF3240();
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v72 = *(v10 - 8);
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v74 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v60 - v15;
  v16 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v17 = MEMORY[0x28223BE20](v16);
  v67 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  v21 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a2 + v21, v20, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v22 = *(v20 + 1);
    v80[0] = *v20;
    v23 = *(v20 + 2);
    v24 = *(v20 + 4);
    v80[3] = *(v20 + 3);
    v80[4] = v24;
    v81 = *(v20 + 10);
    v80[1] = v22;
    v80[2] = v23;
    v26 = *a3;
    v25 = *(a3 + 1);
    if (v80[0] == *a3 || (sub_265BF36E0() & 1) != 0)
    {
      v65 = a2[5];
      v66 = a2[6];
      v64 = __swift_project_boxed_opaque_existential_1(a2 + 2, v65);

      sub_265BF3450();
      v28 = v27 - a3[5];
      swift_getErrorValue();
      v63 = sub_265BF3750();
      v62 = v29;
      swift_getErrorValue();
      v30 = sub_265BF3760();
      v32 = v31;
      v61 = *(a3 + 16);
      LOBYTE(v79[0]) = 1;
      v73 = v10;
      v78 = *(a3 + 33);
      v33 = v78;
      v34 = *(a3 + 32);
      v77[14] = v34;
      v79[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
      v79[4] = sub_265BD1FD0();
      v35 = swift_allocObject();
      v79[0] = v35;
      *(v35 + 16) = v28;
      v36 = v62;
      *(v35 + 24) = v63;
      *(v35 + 32) = v36;
      *(v35 + 40) = v30;
      *(v35 + 48) = v32;
      *(v35 + 56) = v26;
      *(v35 + 64) = v25;
      *(v35 + 72) = v61;
      *(v35 + 80) = 1;
      *(v35 + 81) = v33;
      *(v35 + 82) = v34;
      sub_265BF3010();
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      v37 = v67;
      v38 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v38);
      *(&v60 - 2) = a2;
      *(&v60 - 1) = v37;
      v39 = v76;
      sub_265BF2EA0();
      v76 = v39;
      v40 = v74;
      sub_265BF2E50();
      sub_265BD23EC(v37, type metadata accessor for RemoteParticipantConnectionBroker.State);
      v41 = swift_allocObject();
      v42 = v70;
      v41[2] = v68;
      v41[3] = v42;
      v41[4] = v75;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_265BD2024;
      *(v43 + 24) = v41;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_265BD2060;
      *(v44 + 24) = v43;
      v45 = v72;
      v46 = v69;
      v47 = v73;
      (*(v72 + 16))(v69, v40, v73);
      v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v49 = swift_allocObject();
      (*(v45 + 32))(v49 + v48, v46, v47);
      v50 = (v49 + ((v11 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v50 = sub_265BD2090;
      v50[1] = v44;

      v51 = v75;
      v52 = v71;
      sub_265BF2DF0();
      v53 = *(v45 + 8);
      v53(v74, v47);
      v54 = sub_265BF2E40();
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      v54(sub_265BB8864, v55);

      sub_265BD1F0C(v80);
      return (v53)(v52, v47);
    }

    sub_265BD1F0C(v80);
  }

  else
  {
    sub_265BD23EC(v20, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  sub_265BF3130();
  v57 = sub_265BF3230();
  v58 = sub_265BF34E0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_265BAD000, v57, v58, "Discovery activation failed, but current state intent no longer matches", v59, 2u);
    MEMORY[0x26676DCA0](v59, -1, -1);
  }

  return (*(v7 + 8))(v9, v73);
}

uint64_t sub_265BD0734()
{
  v0 = off_287776A70;
  type metadata accessor for DeviceConnectionBroker();
  return v0() & 1;
}

unint64_t sub_265BD078C@<X0>(uint64_t x8_0@<X8>)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  return sub_265BEB774(x8_0);
}

uint64_t sub_265BD08C0()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  sub_265BCADEC();
  v4 = off_287776A80[0];
  type metadata accessor for DeviceConnectionBroker();
  return v4();
}

uint64_t sub_265BD0A14(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v71 = a7;
  v72 = a8;
  v68 = a2;
  v69 = a5;
  v74 = a1;
  v77 = a11;
  v78 = a12;
  v70 = a9;
  v15 = sub_265BF2C30();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = sub_265BF3240();
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = (v16 + 16);
  if (a4)
  {
    v30 = a3;
    v31 = v26;
    sub_265BF2F40();
    v32 = v15;
    (*v29)(v21, a10, v15);

    v33 = v74;
    v34 = v68;
    sub_265BD1C3C(v74, v68, v30, 1);
    v67 = v31;
    v35 = sub_265BF3230();
    v36 = sub_265BF34D0();

    sub_265BB8678(v33, v34, v30, 1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v79[0] = v68;
      *v37 = 136446978;
      *(v37 + 4) = sub_265BB064C(v69, a6, v79);
      *(v37 + 12) = 2082;
      v38 = sub_265BF3630();
      v40 = v36;
      v41 = sub_265BB064C(v38, v39, v79);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2048;
      v42 = v73;
      sub_265BF2C20();
      sub_265BF2C00();
      v44 = v43;
      v45 = *(v16 + 8);
      v45(v42, v32);
      v45(v21, v32);
      *(v37 + 24) = v44;
      *(v37 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v48 + 16))(&v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_265BF3350();
      v51 = sub_265BB064C(v49, v50, v79);

      *(v37 + 34) = v51;
      _os_log_impl(&dword_265BAD000, v35, v40, "[%{public}s] %{public}s ended in %fs -> %{public}s", v37, 0x2Au);
      v52 = v68;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v52, -1, -1);
      MEMORY[0x26676DCA0](v37, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v21, v32);
    }

    (*(v75 + 8))(v67, v76);
  }

  else
  {
    sub_265BF2F40();
    v53 = v15;
    (*v29)(v23, a10, v15);
    v54 = a6;

    v55 = sub_265BF3230();
    v56 = sub_265BF34E0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v79[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_265BB064C(v69, v54, v79);
      *(v57 + 12) = 2082;
      v59 = sub_265BF3630();
      v61 = sub_265BB064C(v59, v60, v79);

      *(v57 + 14) = v61;
      *(v57 + 22) = 2048;
      v62 = v73;
      sub_265BF2C20();
      sub_265BF2C00();
      v64 = v63;
      v65 = *(v16 + 8);
      v65(v62, v53);
      v65(v23, v53);
      *(v57 + 24) = v64;
      _os_log_impl(&dword_265BAD000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v58, -1, -1);
      MEMORY[0x26676DCA0](v57, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v23, v53);
    }

    (*(v75 + 8))(v28, v76);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}

uint64_t sub_265BD1070(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a7;
  v61 = a5;
  v62 = a6;
  v60 = a3;
  v65 = a1;
  v68 = a9;
  v69 = a10;
  v13 = sub_265BF2C30();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = sub_265BF3240();
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v28 = (v14 + 16);
  if (a2)
  {
    sub_265BF2F40();
    (*v28)(v19, a8, v13);

    v29 = v65;
    sub_265BD3314(v65, 1);
    v30 = sub_265BF3230();
    v31 = sub_265BF34D0();

    sub_265BB85E0(v29, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v70 = v59;
      *v32 = 136446978;
      *(v32 + 4) = sub_265BB064C(v60, a4, &v70);
      *(v32 + 12) = 2082;
      v33 = sub_265BF3630();
      v35 = sub_265BB064C(v33, v34, &v70);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      v36 = v64;
      sub_265BF2C20();
      sub_265BF2C00();
      v38 = v37;
      v39 = *(v14 + 8);
      v39(v36, v13);
      v39(v19, v13);
      *(v32 + 24) = v38;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(&v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      v43 = sub_265BF3350();
      v45 = sub_265BB064C(v43, v44, &v70);

      *(v32 + 34) = v45;
      _os_log_impl(&dword_265BAD000, v30, v31, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v46 = v59;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v46, -1, -1);
      MEMORY[0x26676DCA0](v32, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    (*(v66 + 8))(v25, v67);
  }

  else
  {
    sub_265BF2F40();
    (*v28)(v21, a8, v13);

    v47 = sub_265BF3230();
    v48 = sub_265BF34E0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136446722;
      *(v49 + 4) = sub_265BB064C(v60, a4, &v70);
      *(v49 + 12) = 2082;
      v51 = sub_265BF3630();
      v53 = sub_265BB064C(v51, v52, &v70);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2048;
      v54 = v64;
      sub_265BF2C20();
      sub_265BF2C00();
      v56 = v55;
      v57 = *(v14 + 8);
      v57(v54, v13);
      v57(v21, v13);
      *(v49 + 24) = v56;
      _os_log_impl(&dword_265BAD000, v47, v48, "[%{public}s] %{public}s ended in %fs", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v50, -1, -1);
      MEMORY[0x26676DCA0](v49, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    (*(v66 + 8))(v27, v67);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}

uint64_t sub_265BD1698(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_265BF3690();
LABEL_9:
  result = sub_265BF3650();
  *v2 = result;
  return result;
}

uint64_t sub_265BD1738(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_265BF2DF0();
}

void sub_265BD17DC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265BB85E0(v6, 0);
}

uint64_t sub_265BD1870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v9 = sub_265BF2E40();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_265BD1FAC, v10);
}

uint64_t sub_265BD1944(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_265BF2E40();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_265BB8864, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t sub_265BD1B2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_265BD1C3C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_265BD1C50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_265BF2DF0();
}

void sub_265BD1D10(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_265BB85E0(v7, 0);
}

uint64_t sub_265BD1DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265BF2DF0();
}

void sub_265BD1E40(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_265BB85E0(v4, 0);
}

unint64_t sub_265BD1FD0()
{
  result = qword_2810683D8[0];
  if (!qword_2810683D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810683D8);
  }

  return result;
}

uint64_t sub_265BD20A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD2104(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265BF2CC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 10) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v2 + v8;
  v13 = *v12;
  v14 = v9[2];
  v15 = *(v12 + 8);

  return sub_265BCD2C0(a1, a2, v2 + v6, v10, v11, v14, v13, v15);
}

uint64_t sub_265BD21C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BD2214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4A0, &qword_265BF5020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BD22F4(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return v2(&v6);
}

uint64_t sub_265BD2340(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

uint64_t sub_265BD2384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265BD23EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265BD244C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD24B0(void *a1)
{
  v3 = *(type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BCDF48(a1, *(v1 + 16), (v1 + v4), *v5, v5[1]);
}

uint64_t sub_265BD2560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265BF2CC0() - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_265BC9644(a1, v7, v2 + 24, v2 + v6, a2, v8);
}

uint64_t sub_265BD263C(void *a1)
{
  v3 = *(sub_265BF2CC0() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BCA270(a1, (v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_265BD2718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_265BBABEC();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_265BF3690();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_265BF3690();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_265BD287C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_265BF3690();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_265BF3690();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_265BD1698(result, 1);

  return sub_265BD277C(v5, v3, 0);
}

uint64_t sub_265BD2980@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265BF2CC0() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];

  return sub_265BC9C48(v1 + 16, v1 + v4, v6, v7, v8, a1);
}

uint64_t objectdestroy_60Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 120));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_265BD2B28()
{
  result = qword_28003C4B8;
  if (!qword_28003C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4B8);
  }

  return result;
}

unint64_t sub_265BD2B7C()
{
  result = qword_28003C4C0;
  if (!qword_28003C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4C0);
  }

  return result;
}

unint64_t sub_265BD2BEC()
{
  result = qword_28003C4C8;
  if (!qword_28003C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4C8);
  }

  return result;
}

uint64_t objectdestroy_137Tm()
{

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t objectdestroy_27Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t objectdestroy_30Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_265BD2DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265BD2F4C(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD0A14(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BD30C4(void *a1)
{
  v3 = *(type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_265BC6ABC(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BD3170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_79Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_265BD32A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  return sub_265BD2384(v1 + v3, a1, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

id sub_265BD3314(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t RemoteParticipantHandshake.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BF2D90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantHandshake.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteParticipantHandshake(0) + 20);

  return sub_265BD34BC(v3, a1);
}

uint64_t type metadata accessor for RemoteParticipantHandshake(uint64_t a1)
{
  result = qword_281068700;
  if (!qword_281068700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BD34BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteParticipantHandshake.init(request:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_265BF2D90();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for RemoteParticipantHandshake(0) + 20);

  return sub_265BD35BC(a2, v7);
}

uint64_t sub_265BD35BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_265BD3654(uint64_t a1)
{
  sub_265BF2D90();
  if (v1 <= 0x3F)
  {
    sub_265BD36D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265BD36D8(uint64_t a1)
{
  if (!qword_2810688F8)
  {
    sub_265BF2DA0();
    v1 = sub_265BF35A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2810688F8);
    }
  }
}

uint64_t sub_265BD3760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_265BE4A38(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_265BE38DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_265BE4F74();
        v14 = v16;
      }

      result = sub_265BE457C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_265BD3858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v7;
    v17[2] = v8;
    v18 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_265BE4BB0(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  else
  {
    v11 = sub_265BE38DC(a2, a3);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17[0] = *v4;
      if (!v14)
      {
        sub_265BE50E0();
        v15 = v17[0];
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      result = sub_265BE472C(v11, v15);
      *v4 = v15;
    }
  }

  return result;
}

uint64_t TransactionCoordinator.init(delay:timerProvider:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v14 = a1;
  v13 = sub_265BF3510();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265BF34F0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_265BF32A0();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4E0, &qword_265BF5240);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x277D84F98];
  *a2 = v10;
  sub_265BC3598();
  sub_265BF3290();
  v15 = MEMORY[0x277D84F90];
  sub_265BD3BE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4F8, &qword_265BF5248);
  sub_265BD3C38();
  sub_265BF35C0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v13);
  *(a2 + 8) = sub_265BF3530();
  *(a2 + 16) = a3;
  return sub_265BB4A90(v14, a2 + 24);
}

unint64_t sub_265BD3BE0()
{
  result = qword_28003C4F0;
  if (!qword_28003C4F0)
  {
    sub_265BF34F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4F0);
  }

  return result;
}

unint64_t sub_265BD3C38()
{
  result = qword_28003C500;
  if (!qword_28003C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C4F8, &qword_265BF5248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C500);
  }

  return result;
}

uint64_t sub_265BD3C9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*v3 + 6);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_265BF3620();

  v17 = 0xD000000000000012;
  v18 = 0x8000000265BFA030;
  MEMORY[0x26676D1B0](a1, a2);
  sub_265BF3380();

  v11 = os_transaction_create();

  if (v11)
  {
  }

  else
  {
    sub_265BF3120();

    v13 = sub_265BF3230();
    v14 = sub_265BF34D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 141558274;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_265BB064C(a1, a2, &v17);
      _os_log_impl(&dword_265BAD000, v13, v14, "Unable to acquire transaction for %{mask.hash}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26676DCA0](v16, -1, -1);
      MEMORY[0x26676DCA0](v15, -1, -1);
    }

    result = (*(v8 + 8))(v10, v7);
    a1 = 0;
    a2 = 0;
    v11 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v11;
  return result;
}

Swift::Int_optional __swiftcall TransactionCoordinator.queryTransactionCount(label:)(Swift::String label)
{
  v2 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_265BD4024(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v5;
  v4 = v6;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

void sub_265BD3F64(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16))
  {
    v6 = sub_265BE38DC(a2, a3);
    if (v7)
    {
      v8 = (*(v5 + 56) + 40 * v6);
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      sub_265BD54E8(v9, v10, v12, v11, v13);
      v14 = 0;
    }

    else
    {
      v11 = 0;
      v14 = 1;
    }
  }

  else
  {
    v11 = 0;
    v14 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v14;
}

void TransactionCoordinator.beginTransaction(label:sourceLocation:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD46D8(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4098(void *a1, uint64_t a2, unint64_t a3, void *a4, _OWORD *a5)
{
  v10 = sub_265BF3240();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = (&v57 - v15);
  v16 = *a1;
  v17 = *(*a1 + 16);
  v66 = a2;
  if (v17 && (v18 = sub_265BE38DC(a2, a3), (v19 & 1) != 0))
  {
    v20 = (*(v16 + 56) + 40 * v18);
    v21 = a1;
    v22 = v14;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = v11;
    v27 = v10;
    v28 = v20[1];
    v29 = v20[2];
    v30 = v20[3];
    v64 = v20[4];
    swift_unknownObjectRetain();

    v63 = v29;
    v10 = v27;
    v11 = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
    v14 = v22;
    a1 = v21;
    a2 = v66;
    result = swift_unknownObjectRetain();
  }

  else
  {
    result = sub_265BD3C9C(a2, a3, &v67);
    v28 = v68;
    if (!v68)
    {
      return result;
    }

    v30 = v70;
    v63 = v69;
    v64 = v71;
  }

  v65 = v28;
  if (v30 < 1)
  {
    v62 = v11;
    sub_265BF3120();
    v42 = *a5;
    v72 = *(a5 + 24);
    v73 = v42;

    sub_265BD53D8(&v73, &v74);
    sub_265BD53D8(&v72, &v74);
    v43 = sub_265BF3230();
    v44 = v14;
    v45 = sub_265BF34E0();

    sub_265BD5434(&v73);
    sub_265BD5434(&v72);
    if (os_log_type_enabled(v43, v45))
    {
      v46 = swift_slowAlloc();
      v61 = a1;
      v47 = v46;
      v48 = swift_slowAlloc();
      v74 = v48;
      *v47 = 141558786;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_265BB064C(v66, a3, &v74);
      *(v47 + 22) = 2160;
      *(v47 + 24) = 1752392040;
      *(v47 + 32) = 2080;
      v49 = sub_265BF2F70();
      v51 = sub_265BB064C(v49, v50, &v74);

      *(v47 + 34) = v51;
      _os_log_impl(&dword_265BAD000, v43, v45, "Beginning Transaction: %{mask.hash}s. Source: %{mask.hash}s", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v48, -1, -1);
      v52 = v47;
      a2 = v66;
      a1 = v61;
      MEMORY[0x26676DCA0](v52, -1, -1);
    }

    v62[1](v44, v10);
    v74 = a2;
    v75 = a3;
    v76 = v63;
    v77 = xmmword_265BF5230;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *a1;
    sub_265BE4BB0(&v74, a2, a3, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();

    result = swift_unknownObjectRelease();
    *a1 = v78;
  }

  else
  {
    v60 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
    }

    else
    {
      v59 = a4;
      v61 = a1;
      v32 = v62;
      sub_265BF3120();
      v33 = *a5;
      v72 = *(a5 + 24);
      v73 = v33;

      sub_265BD53D8(&v73, &v74);
      sub_265BD53D8(&v72, &v74);
      v34 = sub_265BF3230();
      v35 = sub_265BF34E0();

      sub_265BD5434(&v73);
      sub_265BD5434(&v72);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v58 = v10;
        v38 = v37;
        v74 = v37;
        *v36 = 134218754;
        *(v36 + 4) = v60;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_265BB064C(v66, a3, &v74);
        *(v36 + 22) = 2160;
        *(v36 + 24) = 1752392040;
        *(v36 + 32) = 2080;
        v39 = sub_265BF2F70();
        v41 = sub_265BB064C(v39, v40, &v74);

        *(v36 + 34) = v41;
        _os_log_impl(&dword_265BAD000, v34, v35, "Beginning Transaction (%ld): %s. Source: %{mask.hash}s", v36, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v38, -1, -1);
        MEMORY[0x26676DCA0](v36, -1, -1);

        v11[1](v32, v58);
      }

      else
      {

        v11[1](v32, v10);
      }

      v54 = v61;
      if (v64)
      {
        __swift_project_boxed_opaque_existential_1(v59 + 3, v59[6]);
        swift_unknownObjectRetain();
        sub_265BF3090();
        swift_unknownObjectRelease();
      }

      v55 = v66;
      v74 = v66;
      v75 = a3;
      v76 = v63;
      v77 = v60;

      swift_unknownObjectRetain();
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *v54;
      sub_265BE4BB0(&v74, v55, a3, v56);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *v54 = v78;
    }
  }

  return result;
}

void TransactionCoordinator.endTransaction(label:sourceLocation:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD4E34(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4750(uint64_t *a1, uint64_t a2, unint64_t a3, double *a4, __int128 *a5)
{
  v11 = sub_265BF3240();
  v66 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v12);
  v17 = &v57[-v16];
  v67 = a1;
  v18 = *a1;
  if (*(v18 + 16))
  {
    result = sub_265BE38DC(a2, a3);
    if (v19)
    {
      v61 = a2;
      v20 = (*(v18 + 56) + 40 * result);
      v21 = v20[2];
      v23 = v20[3];
      v22 = v20[4];
      v64 = v20[1];
      v65 = v5;
      v62 = v22;
      v63 = v21;
      if (v23 < 2)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_265BF3120();
        sub_265BD53A0(a4, &v69);
        v35 = *a5;
        v73 = *(a5 + 24);
        v74[0] = v35;

        sub_265BD53D8(v74, v68);
        sub_265BD53D8(&v73, v68);
        v36 = sub_265BF3230();
        v37 = sub_265BF34E0();

        sub_265BD5434(v74);
        sub_265BD5434(&v73);
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v59 = v36;
          v39 = v38;
          v60 = swift_slowAlloc();
          v68[0] = v60;
          *v39 = 141559042;
          v58 = v37;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2080;
          v40 = v61;
          *(v39 + 14) = sub_265BB064C(v61, a3, v68);
          *(v39 + 22) = 2048;
          v41 = v70;
          sub_265BD5488(&v69);
          *(v39 + 24) = v41;
          *(v39 + 32) = 2160;
          *(v39 + 34) = 1752392040;
          *(v39 + 42) = 2080;
          v42 = sub_265BF2F70();
          v44 = sub_265BB064C(v42, v43, v68);

          *(v39 + 44) = v44;
          v45 = v59;
          _os_log_impl(&dword_265BAD000, v59, v58, "Ending Transaction: %{mask.hash}s at zero. Delaying cleanup by %f seconds. Source: %{mask.hash}s", v39, 0x34u);
          v46 = v60;
          swift_arrayDestroy();
          MEMORY[0x26676DCA0](v46, -1, -1);
          MEMORY[0x26676DCA0](v39, -1, -1);

          (*(v66 + 8))(v14, v11);
        }

        else
        {

          sub_265BD5488(&v69);
          (*(v66 + 8))(v14, v11);
          v40 = v61;
        }

        __swift_project_boxed_opaque_existential_1(a4 + 3, *(a4 + 6));
        sub_265BD53A0(a4, &v69);
        v49 = swift_allocObject();
        v50 = v70;
        *(v49 + 16) = v69;
        *(v49 + 32) = v50;
        v51 = v72;
        *(v49 + 48) = v71;
        *(v49 + 64) = v51;
        *(v49 + 80) = v40;
        *(v49 + 88) = a3;
        v52 = a5[1];
        *(v49 + 96) = *a5;
        *(v49 + 112) = v52;
        *(v49 + 128) = *(a5 + 4);
        swift_bridgeObjectRetain_n();
        v53 = v40;
        v54 = v63;
        swift_unknownObjectRetain();
        sub_265BD53D8(v74, v68);
        sub_265BD53D8(&v73, v68);
        v55 = sub_265BF3070();

        *&v69 = v53;
        *(&v69 + 1) = a3;
        v70 = v54;
        *&v71 = v55;
        v47 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68[0] = *v47;
        sub_265BE4BB0(&v69, v53, a3, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v23 - 1;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_265BF3120();
        v25 = *a5;
        v73 = *(a5 + 24);
        v74[0] = v25;

        sub_265BD53D8(v74, &v69);
        sub_265BD53D8(&v73, &v69);
        v26 = sub_265BF3230();
        v27 = sub_265BF34E0();

        sub_265BD5434(v74);
        sub_265BD5434(&v73);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v69 = v29;
          *v28 = 134218754;
          *(v28 + 4) = v24;
          LODWORD(v59) = v27;
          *(v28 + 12) = 2080;
          v60 = v24;
          v30 = v61;
          *(v28 + 14) = sub_265BB064C(v61, a3, &v69);
          *(v28 + 22) = 2160;
          *(v28 + 24) = 1752392040;
          *(v28 + 32) = 2080;
          v31 = sub_265BF2F70();
          v33 = sub_265BB064C(v31, v32, &v69);

          *(v28 + 34) = v33;
          _os_log_impl(&dword_265BAD000, v26, v59, "Ending Transaction (%ld): %s. Source: %{mask.hash}s", v28, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x26676DCA0](v29, -1, -1);
          MEMORY[0x26676DCA0](v28, -1, -1);

          (*(v66 + 8))(v17, v11);
          v34 = v60;
        }

        else
        {

          (*(v66 + 8))(v17, v11);
          v34 = v24;
          v30 = v61;
        }

        *&v69 = v30;
        *(&v69 + 1) = a3;
        *&v70 = v63;
        *(&v70 + 1) = v34;
        *&v71 = 0;
        swift_unknownObjectRetain();

        v47 = v67;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v68[0] = *v47;
        sub_265BE4BB0(&v69, v30, a3, v48);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      *v47 = v68[0];
    }
  }

  return result;
}

void sub_265BD4E54(os_unfair_lock_s **a1)
{
  v1 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  sub_265BD54C8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4EAC(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v28 = a2;
  v23 = sub_265BF3240();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3120();
  v11 = *a4;
  v24 = *(a4 + 24);
  v25 = v11;

  sub_265BD53D8(&v25, v26);
  sub_265BD53D8(&v24, v26);
  v12 = sub_265BF3230();
  v13 = sub_265BF34E0();

  sub_265BD5434(&v25);
  sub_265BD5434(&v24);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[2] = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[1] = a1;
    v17 = v16;
    *&v26[0] = v16;
    *v15 = 141558786;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_265BB064C(v28, a3, v26);
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2080;
    v18 = sub_265BF2F70();
    v20 = sub_265BB064C(v18, v19, v26);

    *(v15 + 34) = v20;
    _os_log_impl(&dword_265BAD000, v12, v13, "Ended Transaction: %{mask.hash}s. Source: %{mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v17, -1, -1);
    MEMORY[0x26676DCA0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v23);
  v27 = 0;
  memset(v26, 0, sizeof(v26));

  return sub_265BD3858(v26, v28, a3);
}

uint64_t sub_265BD5134()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5568(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_265BD5194()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5550(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_265BD51EC()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5538(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
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

uint64_t sub_265BD5258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_265BD52A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_265BD5300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265BD5348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265BD54E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t BluetoothScannerProvider.makeAggressiveScanner()@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  [v2 setDiscoveryFlags_];
  [v2 setScanRate_];
  result = sub_265BB5350(0, &qword_28003C508, 0x277D54C68);
  a1[3] = result;
  a1[4] = &protocol witness table for SFDeviceDiscovery;
  *a1 = v2;
  return result;
}

uint64_t BluetoothScannerProvider.makePassiveScanner(role:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setRssiThreshold_];
  result = sub_265BB5350(0, &qword_28003C510, 0x277D44160);
  a2[3] = result;
  a2[4] = &protocol witness table for RPCompanionLinkClient;
  *a2 = v4;
  return result;
}

uint64_t sub_265BD56D0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  [v2 setDiscoveryFlags_];
  [v2 setScanRate_];
  result = sub_265BB5350(0, &qword_28003C508, 0x277D54C68);
  a1[3] = result;
  a1[4] = &protocol witness table for SFDeviceDiscovery;
  *a1 = v2;
  return result;
}

uint64_t sub_265BD5760@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setRssiThreshold_];
  result = sub_265BB5350(0, &qword_28003C510, 0x277D44160);
  a2[3] = result;
  a2[4] = &protocol witness table for RPCompanionLinkClient;
  *a2 = v4;
  return result;
}

void sub_265BD5854(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall RPCompanionLinkClient.activate()()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v5, v2);
  aBlock[4] = sub_265BD5A3C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265BD5854;
  aBlock[3] = &block_descriptor_6;
  v6 = _Block_copy(aBlock);
  [v1 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_265BD5A3C(void *a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_265BF3130();
    v8 = a1;
    v9 = sub_265BF3230();
    v10 = sub_265BF34D0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x26676D550](v16[2], v16[3]);
      v15 = sub_265BB064C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_265BAD000, v9, v10, "Error activating passive scanner: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x26676DCA0](v12, -1, -1);
      MEMORY[0x26676DCA0](v11, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t Collection<>.matchingParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v10 = a1;
  return sub_265BF33D0();
}

BOOL sub_265BD5D78(void *a1)
{
  v2 = sub_265BF2D60();
  v31 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = sub_265BF2C90();
  v9 = v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 32))(v10, v11);
  if (!v9)
  {
    if (!v13)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v7 == v12 && v9 == v13)
  {

    return 1;
  }

  v15 = sub_265BF36E0();

  if (v15)
  {
    return 1;
  }

LABEL_11:
  v16 = sub_265BF2CA0();
  v18 = v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 48))(v19, v20);
  if (!v18)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_20:

    return 0;
  }

  if (!v22)
  {
    goto LABEL_20;
  }

  if (v16 == v21 && v18 == v22)
  {
  }

  else
  {
    v24 = sub_265BF36E0();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_23:
  sub_265BF2C80();
  v26 = v30;
  v25 = v31;
  (*(v31 + 104))(v30, *MEMORY[0x277D53368], v2);
  sub_265BD6220();
  v27 = sub_265BF3320();
  v28 = *(v25 + 8);
  v28(v26, v2);
  v28(v6, v2);
  return (v27 & 1) == 0;
}

uint64_t sub_265BD6094()
{
  v1 = [*v0 deviceIRKData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_265BF2BD0();

  return v3;
}

uint64_t sub_265BD6130(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_265BF3340();

  return v6;
}

unint64_t sub_265BD6220()
{
  result = qword_28003C518;
  if (!qword_28003C518)
  {
    sub_265BF2D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C518);
  }

  return result;
}

unint64_t sub_265BD6278(uint64_t a1, uint64_t a2, int a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4BC0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000265BFA090;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BF9950;
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000265BF9970;
  sub_265BF3670();
  v5 = sub_265BF3330();

  *(inited + 96) = v5;
  *(inited + 104) = 0x65636976726573;
  *(inited + 112) = 0xE700000000000000;
  sub_265BF3670();
  v6 = sub_265BF3330();

  *(inited + 120) = v6;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  sub_265BF3670();
  v7 = sub_265BF3330();

  *(inited + 144) = v7;
  v8 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_265BD64D4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_265BD6278(*(v0 + 8), *(v0 + 16), v2 | v3, *v0);
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_265BD6520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_265BD6568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_265BD66B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_265BD6710(char a1)
{
  if ((a1 & 4) != 0)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 8) != 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t RPDeviceChangeFlags.logOutput.getter(__int16 a1)
{
  strcpy(v3, "ChangeFlags: ");
  HIWORD(v3[1]) = -4864;
  if (a1)
  {
    MEMORY[0x26676D1B0](1986281760, 0xE400000000000000);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x26676D1B0](0x7274744120, 0xE500000000000000);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  MEMORY[0x26676D1B0](0x7473694420, 0xE500000000000000);
  if ((a1 & 8) != 0)
  {
LABEL_5:
    MEMORY[0x26676D1B0](0x45496946695720, 0xE700000000000000);
  }

LABEL_6:
  if ((a1 & 0x10) != 0)
  {
    MEMORY[0x26676D1B0](7163424, 0xE300000000000000);
    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  MEMORY[0x26676D1B0](0x4953535220, 0xE500000000000000);
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  MEMORY[0x26676D1B0](0x4449535320, 0xE500000000000000);
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    MEMORY[0x26676D1B0](0x636F4C655220, 0xE600000000000000);
    if ((a1 & 0x200) == 0)
    {
      return v3[0];
    }

    goto LABEL_12;
  }

LABEL_21:
  MEMORY[0x26676D1B0](0x786F725020, 0xE500000000000000);
  if ((a1 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((a1 & 0x200) != 0)
  {
LABEL_12:
    MEMORY[0x26676D1B0](7164448, 0xE300000000000000);
  }

  return v3[0];
}

uint64_t sub_265BD68EC@<X0>(uint64_t *a1@<X8>)
{
  if (([v1 statusFlags] & 0x80000) != 0)
  {
    v8 = MEMORY[0x277D53360];
  }

  else if (([v1 statusFlags] & 0x4000) != 0 && (v3 = objc_msgSend(v1, sel_accountID)) != 0)
  {
    v4 = v3;
    v5 = sub_265BF3340();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
    v8 = MEMORY[0x277D53370];
  }

  else if (([v1 statusFlags] & 0x1000000000) != 0 && (v9 = objc_msgSend(v1, sel_accountID)) != 0)
  {
    v10 = v9;
    v11 = sub_265BF3340();
    v13 = v12;

    *a1 = v11;
    a1[1] = v13;
    v8 = MEMORY[0x277D53378];
  }

  else
  {
    v8 = MEMORY[0x277D53368];
  }

  v14 = *v8;
  v15 = sub_265BF2D60();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

uint64_t DataProtectionMonitor.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = -1;
  *(v4 + 44) = 4;
  sub_265BF2EC0();
  swift_allocObject();
  *(v4 + 16) = sub_265BF2EB0();
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return v4;
}

uint64_t DataProtectionMonitor.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = -1;
  *(v2 + 44) = 4;
  sub_265BF2EC0();
  swift_allocObject();
  *(v2 + 16) = sub_265BF2EB0();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t DataProtectionMonitor.deinit()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v5, v2);
  sub_265BF2EA0();

  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall DataProtectionMonitor.endDataProtectionMonitoring()()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  sub_265BF2EA0();
}

uint64_t DataProtectionMonitor.__deallocating_deinit()
{
  DataProtectionMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 45, 7);
}

uint64_t sub_265BD6DB0(uint64_t *a1)
{
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (*(a1 + 44) == 4)
  {
    sub_265BF3130();
    v10 = sub_265BF3230();
    v11 = sub_265BF34D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_265BAD000, v10, v11, "Received notifyd notification when monitor is inactive!", v12, 2u);
      MEMORY[0x26676DCA0](v12, -1, -1);
    }

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    sub_265BF3130();

    v14 = sub_265BF3230();
    v15 = sub_265BF34E0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = v1;
      v17 = v16;
      v26 = swift_slowAlloc();
      v29 = v26;
      *v17 = 136446466;
      v28 = a1;

      v18 = sub_265BF3350();
      v20 = sub_265BB064C(v18, v19, &v29);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_265BB064C(0xD000000000000024, 0x8000000265BFA1C0, &v29);
      _os_log_impl(&dword_265BAD000, v14, v15, "%{public}s Received notifyd notification name: %{public}s", v17, 0x16u);
      v21 = v26;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v21, -1, -1);
      MEMORY[0x26676DCA0](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v22 = MKBGetDeviceLockState();
    v23 = 2;
    v24 = MKBDeviceUnlockedSinceBoot();
    if (v22 != 3 && v22)
    {
      v23 = v24 == 1;
    }

    *(a1 + 44) = v23;
    swift_getObjectType();
    LOBYTE(v29) = v23;
    sub_265BD82DC();
    return sub_265BF2FA0();
  }
}

Swift::Void __swiftcall DataProtectionMonitor.beginDataProtectionMonitoring()()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  sub_265BF2EA0();
}

uint64_t sub_265BD723C(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_265BF3280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  if (*(a1 + 40) == -1)
  {
    v41 = v13;
    v42 = v12;
    v44 = v1;
    sub_265BF3130();
    v16 = sub_265BF3230();
    v17 = sub_265BF34E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = v8;
      v19 = v7;
      v20 = a1;
      v21 = v18;
      *v18 = 0;
      _os_log_impl(&dword_265BAD000, v16, v17, "Registering for data protection notifications", v18, 2u);
      v22 = v21;
      a1 = v20;
      v7 = v19;
      v8 = v43;
      MEMORY[0x26676DCA0](v22, -1, -1);
    }

    v43 = *(v8 + 1);
    v43(v15, v7);
    out_token = -1;
    sub_265BC3598();
    (*(v4 + 104))(v6, *MEMORY[0x277D851C8], v3);
    v23 = sub_265BF3540();
    (*(v4 + 8))(v6, v3);
    v24 = swift_allocObject();
    v25 = a1;
    swift_weakInit();
    aBlock[4] = sub_265BD82B0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BD791C;
    aBlock[3] = &block_descriptor_7;
    v26 = _Block_copy(aBlock);

    v27 = sub_265BF3380();
    v28 = notify_register_dispatch((v27 + 32), &out_token, v23, v26);

    _Block_release(v26);

    if (v28 || out_token == -1)
    {
      v34 = v7;
      v35 = v41;
      sub_265BF3130();
      v36 = sub_265BF3230();
      v37 = sub_265BF34D0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67240192;
        *(v38 + 4) = v28;
        _os_log_impl(&dword_265BAD000, v36, v37, "Error registering for data protection notifications, result: %{public}u", v38, 8u);
        MEMORY[0x26676DCA0](v38, -1, -1);
      }

      v43(v35, v34);
    }

    else
    {
      v29 = v42;
      sub_265BF3130();
      v30 = sub_265BF3230();
      v31 = sub_265BF34E0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_265BB064C(0xD000000000000024, 0x8000000265BFA1C0, aBlock);
        _os_log_impl(&dword_265BAD000, v30, v31, "Registered for data protection notifications for name: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x26676DCA0](v33, -1, -1);
        MEMORY[0x26676DCA0](v32, -1, -1);
      }

      v43(v29, v7);
      *(v25 + 40) = out_token;
    }

    v39 = MKBGetDeviceLockState();
    v40 = 2;
    result = MKBDeviceUnlockedSinceBoot();
    if (v39 != 3)
    {
      if (v39)
      {
        v40 = result == 1;
      }
    }

    *(v25 + 44) = v40;
  }

  return result;
}

uint64_t sub_265BD77B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BF3130();
    sub_265BF3220();
    (*(v3 + 8))(v5, v2);
    sub_265BF2EA0();
  }

  return result;
}

uint64_t sub_265BD791C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL DataProtectionMonitor.queryDataProtectionAvailability()()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_265BF3130();
  sub_265BF3220();
  v10 = *(v1 + 8);
  v10(v9, v0);
  sub_265BF2EA0();
  v11 = v22;
  if (v22 == 4)
  {
    sub_265BF3130();
    v12 = sub_265BF3230();
    v13 = sub_265BF34C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265BAD000, v12, v13, "Data Protection Monitor is inactive, querying mobile key bag", v14, 2u);
      MEMORY[0x26676DCA0](v14, -1, -1);
    }

    v10(v7, v0);
    v15 = MKBGetDeviceLockState();
    v11 = 2;
    v16 = MKBDeviceUnlockedSinceBoot();
    if (v15 && v15 != 3)
    {
      return v16 == 1;
    }
  }

  else
  {
    sub_265BF3130();
    v17 = sub_265BF3230();
    v18 = sub_265BF34C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_265BAD000, v17, v18, "Data Protection Monitor is active, returning cached data protection", v19, 2u);
      MEMORY[0x26676DCA0](v19, -1, -1);
    }

    v10(v4, v0);
  }

  return v11;
}

uint64_t sub_265BD7C44(uint64_t a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40) != -1)
  {
    sub_265BF3130();
    v7 = sub_265BF3230();
    v8 = sub_265BF34E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_265BAD000, v7, v8, "Deregistering for data protection notifications", v9, 2u);
      MEMORY[0x26676DCA0](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    result = notify_cancel(*(a1 + 40));
    *(a1 + 40) = -1;
    *(a1 + 44) = 4;
  }

  return result;
}

uint64_t sub_265BD7DF4()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  return sub_265BF2EA0();
}

uint64_t sub_265BD7F54()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  return sub_265BF2EA0();
}

uint64_t getEnumTagSinglePayload for DataProtectionMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataProtectionMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_265BD827C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_265BD8290(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_265BD82DC()
{
  result = qword_28003C528;
  if (!qword_28003C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceConnectionService(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265BD84C8()
{
  result = qword_28003C530;
  if (!qword_28003C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C530);
  }

  return result;
}

uint64_t sub_265BD8534()
{
  v1 = *v0;
  sub_265BF37B0();
  MEMORY[0x26676D5D0](v1);
  return sub_265BF37E0();
}

uint64_t sub_265BD85A8(uint64_t a1)
{
  v2 = *v1;
  sub_265BF37B0();
  MEMORY[0x26676D5D0](v2);
  return sub_265BF37E0();
}

uint64_t DeviceConnectionDestination.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BD8694()
{
  result = qword_28003C538;
  if (!qword_28003C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionAuthentication(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceConnectionAuthentication(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_265BD8848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C578, &qword_265BF5968);
    v2 = sub_265BF36C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_265BB08F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_265BB87C8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_265BB87C8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_265BB87C8(v31, v32);
    result = sub_265BF35E0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_265BB87C8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_265BD8B10(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_265BD8B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v53 = a7;
  v54 = a6;
  LODWORD(v50) = a5;
  v8 = a3;
  v57 = a8;
  v56 = sub_265BF2E60();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v61 = &v43 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v43 - v12;
  v13 = sub_265BF2C30();
  v51 = *(v13 - 8);
  v52 = v13;
  v48 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v43 - v16;
  v17 = sub_265BF3210();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_265BF31F0();
  MEMORY[0x28223BE20](v21 - 8);
  sub_265BF2F30();
  swift_allocObject();
  v22 = a2;
  v23 = sub_265BF2F00();
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v18 + 8))(v20, v17);
  sub_265BF2F50();
  sub_265BF31C0();
  swift_allocObject();
  v45 = a1;
  v46 = v22;
  v47 = v8;
  v24 = sub_265BF3190();
  v63 = v23;
  v25 = sub_265BF3350();
  v50 = v25;
  v27 = v26;
  v28 = v59;
  sub_265BF2C20();
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v24;
  *(v29 + 32) = v25;
  *(v29 + 40) = v27;
  v44 = v27;
  *(v29 + 48) = a1;
  *(v29 + 56) = v22;
  *(v29 + 64) = v8;

  sub_265BF2DF0();
  v30 = v53;
  sub_265BF2E30();
  v31 = v51;
  v32 = v49;
  v33 = v28;
  v34 = v52;
  (*(v51 + 16))(v49, v33, v52);
  v35 = (*(v31 + 80) + 57) & ~*(v31 + 80);
  v36 = (v48 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v30;
  *(v37 + 24) = v38;
  v39 = v45;
  *(v37 + 32) = v44;
  *(v37 + 40) = v39;
  *(v37 + 48) = v46;
  *(v37 + 56) = v47;
  (*(v31 + 32))(v37 + v35, v32, v34);
  *(v37 + v36) = v24;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v40 = v56;
  v41 = v61;
  sub_265BF2E20();

  (*(v58 + 8))(v41, v40);
  (*(v55 + 8))(v60, v62);
  (*(v31 + 8))(v59, v34);
}

uint64_t DeviceConnection.__allocating_init(link:destination:topic:service:analyticsReporter:preferredCompression:transportPriority:queue:)(void *a1, uint64_t a2, unsigned __int8 a3, char a4, char a5, void *a6, uint64_t a7, char a8, void *a9)
{
  v31 = a3;
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  v32 = a6;
  sub_265BB9CAC(a6, v17 + 16);
  *(v17 + 56) = a3;
  *(v17 + 64) = a1;
  *(v17 + 72) = a2;
  sub_265BD9C50(a7, v17 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
  *(v17 + 59) = a8 & 1;
  *(v17 + 58) = a5 & 1;
  *(v17 + 57) = a4 & 1;
  aBlock = 0;
  v34 = 0xE000000000000000;
  swift_unknownObjectRetain();
  v18 = a9;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  v39 = a3;
  sub_265BF3670();
  sub_265BF30D0();
  swift_allocObject();
  *(v17 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
  sub_265BF2EC0();
  swift_allocObject();
  *(v17 + 80) = sub_265BF2EB0();
  sub_265BD9CB4();
  v19 = sub_265BF3330();

  if (v31 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    sub_265BF3340();
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
    v21 = sub_265BF32E0();

    v37 = nullsub_1;
    v38 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_265BDAB80;
    v36 = &block_descriptor_8;
    v22 = _Block_copy(&aBlock);
    [a1 registerEventID:v19 options:v21 handler:v22];
    _Block_release(v22);
  }

  else
  {
    v23 = swift_allocObject();
    swift_weakInit();
    v37 = sub_265BD9E58;
    v38 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_265BD9EF4;
    v36 = &block_descriptor_8;
    v24 = _Block_copy(&aBlock);

    [a1 registerRequestID:v19 options:0 handler:v24];
    _Block_release(v24);

    sub_265BD9CB4();
    v21 = sub_265BF3330();

    v25 = swift_allocObject();
    swift_weakInit();

    v37 = sub_265BDA150;
    v38 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_265BDAB80;
    v36 = &block_descriptor_4;
    v26 = _Block_copy(&aBlock);

    [a1 registerEventID:v21 options:0 handler:v26];
    _Block_release(v26);
  }

  ObjectType = swift_getObjectType();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(a2 + 248);

  v29(sub_265BDAFC0, v28, ObjectType, a2);

  swift_unknownObjectRelease();
  sub_265BDAFC8(a7);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);

  return v17;
}

uint64_t DeviceConnection.init(link:destination:topic:service:analyticsReporter:preferredCompression:transportPriority:queue:)(void *a1, uint64_t a2, unsigned __int8 a3, char a4, char a5, void *a6, uint64_t a7, char a8, void *a9)
{
  v10 = v9;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  v18 = a3;
  sub_265BB9CAC(a6, v10 + 16);
  *(v10 + 56) = a3;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;
  v32 = a7;
  sub_265BD9C50(a7, v10 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
  *(v10 + 59) = a8 & 1;
  *(v10 + 58) = a5 & 1;
  *(v10 + 57) = a4 & 1;
  aBlock = 0;
  v35 = 0xE000000000000000;
  swift_unknownObjectRetain();
  v19 = a9;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  v40 = a3;
  sub_265BF3670();
  sub_265BF30D0();
  swift_allocObject();
  *(v10 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
  sub_265BF2EC0();
  swift_allocObject();
  *(v10 + 80) = sub_265BF2EB0();
  sub_265BD9CB4();
  v20 = sub_265BF3330();

  if (v18 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    sub_265BF3340();
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
    v22 = sub_265BF32E0();

    v38 = nullsub_1;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_265BDAB80;
    v37 = &block_descriptor_23;
    v23 = _Block_copy(&aBlock);
    [a1 registerEventID:v20 options:v22 handler:v23];
    _Block_release(v23);
  }

  else
  {
    v24 = swift_allocObject();
    swift_weakInit();
    v38 = sub_265BE7988;
    v39 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_265BD9EF4;
    v37 = &block_descriptor_13;
    v25 = _Block_copy(&aBlock);

    [a1 registerRequestID:v20 options:0 handler:v25];
    _Block_release(v25);

    sub_265BD9CB4();
    v22 = sub_265BF3330();

    v26 = swift_allocObject();
    swift_weakInit();

    v38 = sub_265BE79B0;
    v39 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_265BDAB80;
    v37 = &block_descriptor_18_0;
    v27 = _Block_copy(&aBlock);

    [a1 registerEventID:v22 options:0 handler:v27];
    _Block_release(v27);
  }

  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(a2 + 248);

  v30(sub_265BE798C, v29, ObjectType, a2);

  swift_unknownObjectRelease();
  sub_265BDAFC8(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);

  return v10;
}

uint64_t sub_265BD9C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceConnectionCompression(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD9CB4()
{
  v1 = 112;
  if (!v0[56])
  {
    v1 = 25456;
  }

  v5 = v1;

  MEMORY[0x26676D1B0](46, 0xE100000000000000);

  if (v0[57])
  {
    v2 = 115;
  }

  else
  {
    v2 = 100;
  }

  MEMORY[0x26676D1B0](v2, 0xE100000000000000);

  MEMORY[0x26676D1B0](46, 0xE100000000000000);

  if (v0[58])
  {
    v3 = 115;
  }

  else
  {
    v3 = 100;
  }

  MEMORY[0x26676D1B0](v3, 0xE100000000000000);

  return v5;
}

uint64_t sub_265BD9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;

    sub_265BE62C0(a1, v9, a3, a4);
  }

  return result;
}

uint64_t sub_265BD9E60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_265BD8848(a1);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_265BD8848(v6);
  }

LABEL_4:
  a4(v7, v6, a3);
}

uint64_t sub_265BD9EF4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_265BF32F0();
  if (a3)
  {
    a3 = sub_265BF32F0();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_265BE781C, v9);
}

void sub_265BDA008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_265BF32E0();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_265BF32E0();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_265BF2B80();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_265BDA0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BDA158(a1);
  }

  return result;
}

uint64_t sub_265BDA158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = sub_265BF2CF0();
  v54 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = v49 - v18;
  v57 = 0x746E657665;
  v58 = 0xE500000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v20 = sub_265BE3898(&v59), (v21 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v20, &v61);
    sub_265BE5F24(&v59);
    if (swift_dynamicCast())
    {
      v52 = v57;
      v61 = 0x64616F6C796170;
      v62 = 0xE700000000000000;
      sub_265BF3600();
      if (*(a1 + 16) && (v22 = sub_265BE3898(&v59), (v23 & 1) != 0))
      {
        sub_265BB08F0(*(a1 + 56) + 32 * v22, &v61);
        sub_265BE5F24(&v59);
        v24 = swift_dynamicCast();
        if (v24)
        {
          v25 = v57;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v58;
        }

        else
        {
          v26 = 0xF000000000000000;
        }
      }

      else
      {
        sub_265BE5F24(&v59);
        v25 = 0;
        v26 = 0xF000000000000000;
      }

      v61 = 31333;
      v62 = 0xE200000000000000;
      sub_265BF3600();
      if (*(a1 + 16) && (v51 = v2, v39 = sub_265BE3898(&v59), (v40 & 1) != 0))
      {
        sub_265BB08F0(*(a1 + 56) + 32 * v39, &v61);
        sub_265BE5F24(&v59);
        swift_dynamicCast();
      }

      else
      {
        sub_265BE5F24(&v59);
      }

      sub_265BF2CD0();
      v41 = v54;
      if ((*(v54 + 48))(v14, 1, v15) == 1)
      {
        sub_265BB0750(v14, &qword_28003C550, &qword_265BF5D30);
        sub_265BF30A0();
        return sub_265BBC0A4(v25, v26);
      }

      else
      {
        v42 = (*(v41 + 32))(v19, v14, v15);
        v43 = MEMORY[0x26676D6B0](v42);
        v44 = v25;
        v50 = v26;
        v51 = v25;
        v45 = v26;
        if (v26 >> 60 != 15)
        {
          v46 = v43;
          v47 = *(v41 + 16);
          v49[2] = v41 + 16;
          v49[3] = v47;
          v47(v12, v19, v15);
          (*(v41 + 56))(v12, 0, 1, v15);
          v44 = sub_265BF2BC0();
          v45 = v48;
          sub_265BB0750(v12, &qword_28003C550, &qword_265BF5D30);
          v43 = v46;
          v41 = v54;
        }

        objc_autoreleasePoolPop(v43);
        sub_265BF30A0();
        sub_265BBC0A4(v44, v45);
        sub_265BBC0A4(v51, v50);
        return (*(v41 + 8))(v19, v15);
      }
    }
  }

  else
  {
    sub_265BE5F24(&v59);
  }

  sub_265BF3150();

  v27 = sub_265BF3230();
  v28 = sub_265BF34D0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v61 = v30;
    *v29 = 136446466;
    v59 = v1;
    v31 = sub_265BF3350();
    v33 = v32;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_265BF3620();

    v59 = 0xD000000000000011;
    v60 = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v31, v33);

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v34 = sub_265BB064C(v59, v60, &v61);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = sub_265BF3300();
    v37 = sub_265BB064C(v35, v36, &v61);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_265BAD000, v27, v28, "%{public}s Event missing from rapport dictionary: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v30, -1, -1);
    MEMORY[0x26676DCA0](v29, -1, -1);
  }

  return (*(v55 + 8))(v7, v56);
}

uint64_t sub_265BDAB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_265BF32F0();
  if (a3)
  {
    a3 = sub_265BF32F0();
  }

  v4(v5, a3);
}

uint64_t sub_265BDAC40(uint64_t a1)
{
  v1 = sub_265BF3240();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();

  v5 = sub_265BF3230();
  v6 = sub_265BF34E0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v7 = 136446466;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v27 = Strong;
      v9 = sub_265BF3350();
      v11 = v10;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_265BF3620();

      v30 = 0xD000000000000011;
      v31 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v9, v11);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);

      v12 = v30;
      v13 = v31;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v30 = v12;
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5B0, &qword_265BF5978);
    v14 = sub_265BF3590();
    v16 = v15;

    v17 = sub_265BB064C(v14, v16, &v29);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2082;
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5B8, &qword_265BF5980);
    v18 = sub_265BF3590();
    v20 = v19;

    v21 = sub_265BB064C(v18, v20, &v29);

    *(v7 + 14) = v21;
    _os_log_impl(&dword_265BAD000, v5, v6, "%{public}s disconnect: %{public}s", v7, 0x16u);
    v22 = v28;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v22, -1, -1);
    MEMORY[0x26676DCA0](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 88);
    if (v24)
    {
      v25 = *(result + 96);
      sub_265BC3A70(*(result + 88), v25);

      v24(v26);
      return sub_265BBE62C(v24, v25);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_265BDAFC8(uint64_t a1)
{
  v2 = type metadata accessor for DeviceConnectionCompression(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeviceConnection.deinit()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  sub_265BF3150();

  v9 = sub_265BF3230();
  v10 = sub_265BF34E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v11 = 136446210;
    v12 = DeviceConnection.description.getter();
    v14 = v6;
    v15 = v2;
    v16 = v3;
    v17 = sub_265BB064C(v12, v13, &v38);

    *(v11 + 4) = v17;
    v3 = v16;
    v2 = v15;
    v6 = v14;
    _os_log_impl(&dword_265BAD000, v9, v10, "Cleaning up %{public}s...", v11, 0xCu);
    v18 = v37;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26676DCA0](v18, -1, -1);
    MEMORY[0x26676DCA0](v11, -1, -1);
  }

  v19 = v3[1];
  v19(v8, v2);
  if (*(v1 + 56) == 1)
  {
    sub_265BF3150();

    v20 = sub_265BF3230();
    v21 = sub_265BF34E0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446466;
      v24 = sub_265BD9CB4();
      v26 = sub_265BB064C(v24, v25, &v38);
      v37 = v3;
      v27 = v26;

      *(v22 + 4) = v27;
      *(v22 + 12) = 2082;
      v28 = DeviceConnection.description.getter();
      v30 = sub_265BB064C(v28, v29, &v38);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_265BAD000, v20, v21, "Deregistering eventID %{public}s on %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v23, -1, -1);
      MEMORY[0x26676DCA0](v22, -1, -1);
    }

    v19(v6, v2);
    v31 = *(v1 + 64);
    swift_unknownObjectRetain();
    sub_265BD9CB4();
    v32 = sub_265BF3330();

    [v31 deregisterEventID_];
    swift_unknownObjectRelease();
  }

  v33 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v35 = *(v33 + 272);
  swift_unknownObjectRetain();
  v35(ObjectType, v33);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  swift_unknownObjectRelease();

  sub_265BBE62C(*(v1 + 88), *(v1 + 96));
  sub_265BDAFC8(v1 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);

  return v1;
}

uint64_t DeviceConnection.__deallocating_deinit()
{
  DeviceConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_265BDB48C(void *a1, void *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v131 = a7;
  v132 = a6;
  v124 = a4;
  v134 = a3;
  v133 = a2;
  v129 = sub_265BF2FD0();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = v9;
  v127 = &v112[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_265BF3240();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v122 = &v112[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_265BF2CF0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v112[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v112[-v16];
  MEMORY[0x28223BE20](v15);
  v123 = &v112[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v112[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v112[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v112[-v25];
  v125 = a1;
  v27 = sub_265BF2FC0();
  v28 = MEMORY[0x277D83B88];
  v138 = MEMORY[0x277D83B88];
  *&aBlock = v27;
  sub_265BB87C8(&aBlock, &v142);
  v29 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141 = v29;
  sub_265BE48E8(&v142, 7431538, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v143 = v141;
  sub_265BE7900(a5, v26, &qword_28003C550, &qword_265BF5D30);
  v31 = *(v12 + 48);
  if (v31(v26, 1, v11) == 1)
  {
    v32 = v12;
    sub_265BB0750(v26, &qword_28003C550, &qword_265BF5D30);
    sub_265BE3954(8024946, 0xE300000000000000, &aBlock);
    sub_265BB0750(&aBlock, &qword_28003C558, &unk_265BF57B8);
  }

  else
  {
    v33 = sub_265BF2CE0();
    v138 = v28;
    *&aBlock = v33;
    v32 = v12;
    (*(v12 + 8))(v26, v11);
    sub_265BB87C8(&aBlock, &v142);
    v34 = v143;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v34;
    sub_265BE48E8(&v142, 8024946, 0xE300000000000000, v35);
    v143 = v141;
  }

  v36 = v134;
  v37 = v135;
  if (v134 >> 60 == 15)
  {
    v130 = 0;
    goto LABEL_20;
  }

  v38 = v134 >> 62;
  if ((v134 >> 62) > 1)
  {
    if (v38 != 2)
    {
      v130 = 0;
      goto LABEL_19;
    }

    v40 = v133[2];
    v39 = v133[3];
    v41 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v38)
  {
    v130 = BYTE6(v134);
LABEL_19:
    v42 = v133;
    v138 = MEMORY[0x277CC9318];
    *&aBlock = v133;
    *(&aBlock + 1) = v36;
    sub_265BB87C8(&aBlock, &v142);
    sub_265BBB4D0(v42, v36);
    v43 = v143;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v43;
    sub_265BE48E8(&v142, 0x64616F6C796170, 0xE700000000000000, v44);
    sub_265BBC0A4(v42, v36);
    v143 = v141;
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v133), v133))
  {
    __break(1u);
    goto LABEL_39;
  }

  v41 = HIDWORD(v133) - v133;
LABEL_15:
  sub_265BBB4D0(v133, v36);
  v130 = v41;
  if (v41 < 1000)
  {
    goto LABEL_19;
  }

  sub_265BE7900(v124, v24, &qword_28003C550, &qword_265BF5D30);
  if (v31(v24, 1, v11) == 1)
  {
    sub_265BB0750(v24, &qword_28003C550, &qword_265BF5D30);
    goto LABEL_19;
  }

  v69 = v123;
  v70 = (*(v32 + 32))(v123, v24, v11);
  v124 = MEMORY[0x26676D6B0](v70);
  v71 = *(v32 + 16);
  v71(v21, v69, v11);
  (*(v32 + 56))(v21, 0, 1, v11);
  v72 = sub_265BF2BB0();
  v74 = v73;
  v75 = v32;
  v76 = v32 + 16;
  v77 = v72;
  sub_265BB0750(v21, &qword_28003C550, &qword_265BF5D30);
  objc_autoreleasePoolPop(v124);
  v78 = v74 >> 62;
  v79 = v74;
  v117 = v76;
  v116 = v71;
  if ((v74 >> 62) <= 1)
  {
    v80 = v122;
    v81 = v123;
    v82 = v121;
    if (!v78)
    {
      v83 = BYTE6(v79);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v80 = v122;
  v81 = v123;
  v82 = v121;
  if (v78 != 2)
  {
    v124 = 0;
    goto LABEL_35;
  }

  v85 = *(v77 + 16);
  v84 = *(v77 + 24);
  v86 = __OFSUB__(v84, v85);
  v83 = v84 - v85;
  if (v86)
  {
    __break(1u);
LABEL_32:
    LODWORD(v83) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v83 = v83;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
    return;
  }

LABEL_34:
  v124 = v83;
LABEL_35:
  v87 = v75;
  v88 = v81;
  v89 = sub_265BF2CE0();
  v138 = MEMORY[0x277D83B88];
  *&aBlock = v89;
  sub_265BB87C8(&aBlock, &v142);
  v90 = v143;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v90;
  sub_265BE48E8(&v142, 8024434, 0xE300000000000000, v91);
  v92 = v141;
  v138 = MEMORY[0x277CC9318];
  *&aBlock = v77;
  *(&aBlock + 1) = v79;
  sub_265BB87C8(&aBlock, &v142);
  sub_265BBB4D0(v77, v79);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v141 = v92;
  sub_265BE48E8(&v142, 0x64616F6C796170, 0xE700000000000000, v93);
  v143 = v141;
  sub_265BF3150();
  v94 = v88;
  v116(v82, v88, v11);

  v95 = sub_265BF3230();
  v96 = sub_265BF34B0();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v115 = v77;
    v98 = v87;
    v114 = v79;
    v99 = v97;
    v100 = swift_slowAlloc();
    *&v142 = v100;
    *v99 = 136446978;
    *&aBlock = v37;
    v101 = sub_265BF3350();
    v103 = v102;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v113 = v96;
    sub_265BF3620();

    *&aBlock = 0xD000000000000011;
    *(&aBlock + 1) = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v101, v103);

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v104 = sub_265BB064C(aBlock, *(&aBlock + 1), &v142);

    *(v99 + 4) = v104;
    *(v99 + 12) = 2048;
    *(v99 + 14) = v130;
    *(v99 + 22) = 2048;
    *(v99 + 24) = v124;
    *(v99 + 32) = 2082;
    v105 = v121;
    v116(v118, v121, v11);
    v106 = sub_265BF3350();
    v108 = v107;
    v109 = *(v98 + 8);
    v109(v105, v11);
    v110 = sub_265BB064C(v106, v108, &v142);

    *(v99 + 34) = v110;
    _os_log_impl(&dword_265BAD000, v95, v113, "%{public}s Request was %ld bytes compressed to %ld bytes using %{public}s", v99, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v100, -1, -1);
    MEMORY[0x26676DCA0](v99, -1, -1);

    sub_265BBB1D0(v115, v114);
    sub_265BBC0A4(v133, v134);
    (*(v119 + 8))(v122, v120);
    v109(v123, v11);
  }

  else
  {

    sub_265BBB1D0(v77, v79);
    sub_265BBC0A4(v133, v134);
    v111 = *(v87 + 8);
    v111(v82, v11);
    (*(v119 + 8))(v80, v120);
    v111(v94, v11);
  }

LABEL_20:
  v45 = v125;
  v46 = v126;
  sub_265BF3450();
  v48 = v47;
  v49 = *(v37 + 64);
  sub_265BD9CB4();
  v50 = sub_265BF3330();

  sub_265BD8848(v143);

  v134 = sub_265BF32E0();

  sub_265BF3340();
  v51 = sub_265BF3330();

  v52 = *(v37 + 59);
  v133 = v50;
  v126 = v49;
  v125 = v51;
  v53 = v131;
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    *&aBlock = sub_265BF3340();
    *(&aBlock + 1) = v55;
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
  }

  else
  {
    sub_265BE5574(MEMORY[0x277D84F90]);
  }

  v56 = sub_265BF32E0();

  v57 = v128;
  v58 = v127;
  v59 = v45;
  v60 = v129;
  (*(v128 + 16))(v127, v59, v129);
  v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v62 = (v46 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v135;
  *(v63 + 24) = v48;
  (*(v57 + 32))(v63 + v61, v58, v60);
  *(v63 + v62) = v130;
  v64 = (v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v64 = v132;
  v64[1] = v53;
  v139 = sub_265BE607C;
  v140 = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v137 = sub_265BDDAD0;
  v138 = &block_descriptor_93;
  v65 = _Block_copy(&aBlock);

  v66 = v133;
  v67 = v134;
  v68 = v125;
  [v126 sendRequestID:v133 request:v134 destinationID:v125 options:v56 responseHandler:v65];
  _Block_release(v65);
}

void sub_265BDC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, unint64_t, uint64_t *), uint64_t a7, double a8)
{
  v9 = v8;
  v181 = a7;
  v182 = a6;
  v173 = a5;
  v180 = a4;
  v190 = a3;
  v189 = type metadata accessor for TransportRequestAnalyticsEvent(0);
  v13 = MEMORY[0x28223BE20](v189);
  v15 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v170 = &v163 - v16;
  v17 = sub_265BF2FD0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v185 = &v163 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v177 = &v163 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v172 = &v163 - v26;
  MEMORY[0x28223BE20](v25);
  v175 = (&v163 - v27);
  v179 = sub_265BF3240();
  v178 = *(v179 - 8);
  v28 = MEMORY[0x28223BE20](v179);
  v174 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v176 = &v163 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v169 = &v163 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v183 = &v163 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v163 - v36;
  v192 = v17;
  v186 = v18;
  if (!a1)
  {
    v200 = 0u;
    v201 = 0u;
    sub_265BB0750(&v200, &qword_28003C558, &unk_265BF57B8);
    v200 = 0u;
    v201 = 0u;
    v17 = v192;
    sub_265BB0750(&v200, &qword_28003C558, &unk_265BF57B8);
    v193 = 0;
    v200 = 0u;
    v201 = 0u;
    v50 = 0xF000000000000000;
    v47 = 0.0;
    LODWORD(v191) = 1;
    goto LABEL_28;
  }

  v194 = 0x64616F6C796170;
  v195 = 0xE700000000000000;
  sub_265BF3600();
  if (!*(a1 + 16) || (v38 = sub_265BE3898(&v196), (v39 & 1) == 0))
  {
    sub_265BE5F24(&v196);
    v200 = 0u;
    v201 = 0u;
    goto LABEL_12;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v38, &v200);
  sub_265BE5F24(&v196);
  if (!*(&v201 + 1))
  {
LABEL_12:
    sub_265BB0750(&v200, &qword_28003C558, &unk_265BF57B8);
    v41 = 0.0;
    v42 = 0xF000000000000000;
    goto LABEL_13;
  }

  v40 = swift_dynamicCast();
  if (v40)
  {
    v41 = v196;
  }

  else
  {
    v41 = 0.0;
  }

  if (v40)
  {
    v42 = v197;
  }

  else
  {
    v42 = 0xF000000000000000;
  }

LABEL_13:
  v194 = 0x656D6954736572;
  v195 = 0xE700000000000000;
  sub_265BF3600();
  v43 = *(a1 + 16);
  v193 = *&v41;
  if (!v43 || (v44 = sub_265BE3898(&v196), (v45 & 1) == 0))
  {
    sub_265BE5F24(&v196);
    v200 = 0u;
    v201 = 0u;
    goto LABEL_20;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v44, &v200);
  sub_265BE5F24(&v196);
  if (!*(&v201 + 1))
  {
LABEL_20:
    sub_265BB0750(&v200, &qword_28003C558, &unk_265BF57B8);
    v47 = 0.0;
    LODWORD(v191) = 1;
    goto LABEL_21;
  }

  v46 = swift_dynamicCast();
  LODWORD(v191) = v46 ^ 1;
  if (v46)
  {
    v47 = v196;
  }

  else
  {
    v47 = 0.0;
  }

LABEL_21:
  v194 = 8024946;
  v195 = 0xE300000000000000;
  sub_265BF3600();
  if (!*(a1 + 16) || (v48 = sub_265BE3898(&v196), (v49 & 1) == 0))
  {
    sub_265BE5F24(&v196);
    v200 = 0u;
    v201 = 0u;
    goto LABEL_26;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v48, &v200);
  sub_265BE5F24(&v196);
  if (!*(&v201 + 1))
  {
LABEL_26:
    v50 = v42;
    v18 = v186;
LABEL_28:
    sub_265BB0750(&v200, &qword_28003C558, &unk_265BF57B8);
    goto LABEL_29;
  }

  swift_dynamicCast();
  v50 = v42;
  v18 = v186;
LABEL_29:
  v51 = sub_265BF2CD0();
  v187 = v50;
  v188 = v37;
  if ((v191 & 1) == 0 && v50 >> 60 != 15)
  {
    v167 = v15;
    v184 = v8;
    v52 = v193;
    sub_265BBB4D0(v193, v50);
    sub_265BF3450();
    v54 = v53;
    v55 = v176;
    sub_265BF3150();
    v56 = v37;
    v57 = v183;
    sub_265BE7900(v56, v183, &qword_28003C550, &qword_265BF5D30);
    v58 = *(v18 + 16);
    v59 = v175;
    v165 = v18 + 16;
    v164 = v58;
    v58(v175, v190, v17);
    sub_265BBB4BC(v52, v50);
    sub_265BBB4BC(v52, v50);

    v60 = sub_265BF3230();
    v61 = sub_265BF34B0();
    v168 = a2;

    v166 = v61;
    if (!os_log_type_enabled(v60, v61))
    {
      sub_265BBC0A4(v52, v50);

      sub_265BBC0A4(v52, v50);
      sub_265BBC0A4(v52, v50);
      (*(v18 + 8))(v59, v192);
      sub_265BB0750(v57, &qword_28003C550, &qword_265BF5D30);
      v78 = (v178[1])(v55, v179);
      a2 = v168;
LABEL_50:
      v77 = MEMORY[0x26676D6B0](v78);
      v9 = v184;
      v15 = v167;
      goto LABEL_51;
    }

    v163 = v60;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v200 = v63;
    *v62 = 136447490;
    a2 = v168;
    v196 = *&v168;
    v64 = sub_265BF3350();
    v66 = v65;
    v196 = 0.0;
    v197 = 0xE000000000000000;
    sub_265BF3620();

    v196 = -2.31584178e77;
    v197 = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v64, v66);
    v67 = v187;

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v68 = sub_265BB064C(*&v196, v197, &v200);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2048;
    v69 = v67 >> 62;
    if ((v67 >> 62) <= 1)
    {
      v70 = v183;
      v18 = v186;
      v71 = v169;
      if (!v69)
      {
        sub_265BBC0A4(v52, v67);
        v72 = BYTE6(v67);
LABEL_46:
        v84 = v54 - a8 - v47;
        *(v62 + 14) = v72;
        sub_265BBC0A4(v52, v67);
        *(v62 + 22) = 2080;
        sub_265BE7900(v70, v71, &qword_28003C550, &qword_265BF5D30);
        v85 = sub_265BF2CF0();
        v86 = *(v85 - 8);
        v87 = (*(v86 + 48))(v71, 1, v85);
        if (v87 == 1)
        {
          sub_265BB0750(v71, &qword_28003C550, &qword_265BF5D30);
          *&v88 = 0.0;
        }

        else
        {
          *&v88 = COERCE_DOUBLE(sub_265BF2CE0());
          (*(v86 + 8))(v71, v85);
        }

        v196 = *&v88;
        LOBYTE(v197) = v87 == 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C598, &qword_265BF5970);
        v89 = sub_265BF3590();
        v91 = v90;
        sub_265BB0750(v183, &qword_28003C550, &qword_265BF5D30);
        v92 = sub_265BB064C(v89, v91, &v200);

        *(v62 + 24) = v92;
        *(v62 + 32) = 2048;
        *(v62 + 34) = v84;
        *(v62 + 42) = 2048;
        *(v62 + 44) = v47;
        *(v62 + 52) = 2082;
        v93 = v175;
        v94 = v192;
        v164(v172, v175, v192);
        v95 = sub_265BF3350();
        v97 = v96;
        (*(v18 + 8))(v93, v94);
        v98 = sub_265BB064C(v95, v97, &v200);

        *(v62 + 54) = v98;
        v99 = v163;
        _os_log_impl(&dword_265BAD000, v163, v166, "%{public}s Response was %ld bytes compressed using %s. Total inflight time of %fs with %fs spent processing %{public}s", v62, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v63, -1, -1);
        MEMORY[0x26676DCA0](v62, -1, -1);

        sub_265BBC0A4(v193, v187);
        v78 = (v178[1])(v176, v179);
        goto LABEL_50;
      }

      v82 = HIDWORD(v193);
      sub_265BBC0A4(v193, v67);
      v83 = __OFSUB__(v82, v193);
      LODWORD(v72) = v82 - v193;
      v52 = v193;
      if (!v83)
      {
        v72 = v72;
        goto LABEL_46;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v18 = v186;
    v71 = v169;
    v79 = v52;
    if (v69 == 2)
    {
      v80 = *(v52 + 24);
      v81 = *(v79 + 16);
      sub_265BBC0A4(v79, v67);
      v72 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
        __break(1u);
        goto LABEL_79;
      }

      v52 = v193;
    }

    else
    {
      sub_265BBC0A4(v52, v67);
      v72 = 0;
    }

    v70 = v183;
    goto LABEL_46;
  }

  v73 = MEMORY[0x26676D6B0](v51);
  if (v50 >> 60 == 15)
  {
    v74 = v18;
    v184 = v8;
    objc_autoreleasePoolPop(v73);
    v183 = 0;
    v75 = v50;
    v76 = v193;
LABEL_70:
    v151 = *(a2 + 40);
    v179 = *(a2 + 48);
    v152 = a2;
    v178 = __swift_project_boxed_opaque_existential_1((a2 + 16), v151);
    (*(v74 + 16))(v185, v190, v192);
    sub_265BF3450();
    v154 = v153;
    v198 = v189;
    v199 = sub_265BE61A4(&qword_28003C590, type metadata accessor for TransportRequestAnalyticsEvent, &unk_265BF59C0);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v196);
    v156 = v154 - a8;
    v157 = v173;
    if (v173)
    {
      swift_getErrorValue();
      *(v15 + 1) = sub_265BF3750();
      *(v15 + 2) = v158;
      swift_getErrorValue();
      v159 = sub_265BF3760();
    }

    else
    {
      v159 = 0;
      v160 = 0xE000000000000000;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0xE000000000000000;
    }

    *(v15 + 3) = v159;
    *(v15 + 4) = v160;
    *v15 = v152[56];
    v161 = v189;
    (*(v74 + 32))(&v15[SHIDWORD(v189[3].isa)], v185, v192);
    *&v15[v161[8]] = v180;
    *&v15[v161[9]] = v183;
    v162 = 0.0;
    if (!v191)
    {
      v162 = v47;
    }

    *&v15[v161[10]] = v162;
    *&v15[v161[11]] = v156;
    v15[v161[12]] = v152[58];
    v15[v161[13]] = v152[57];
    sub_265BE6140(v15, boxed_opaque_existential_0);
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v196);
    v182(v76, v75, v157);
    sub_265BBC0A4(v193, v187);
    sub_265BBC0A4(v76, v75);
    goto LABEL_76;
  }

  v77 = v73;
LABEL_51:
  v100 = v9;
  v101 = sub_265BF2BC0();
  if (v9)
  {
    objc_autoreleasePoolPop(v77);
    v176 = *(a2 + 40);
    v183 = *(a2 + 48);
    v175 = __swift_project_boxed_opaque_existential_1((a2 + 16), v176);
    v104 = *(v18 + 16);
    v103 = v18 + 16;
    v185 = v104;
    v105 = v192;
    (v104)(v177, v190, v192);
    v106 = v9;
    sub_265BF3450();
    v108 = v107;
    v109 = v189;
    v198 = v189;
    v199 = sub_265BE61A4(&qword_28003C590, type metadata accessor for TransportRequestAnalyticsEvent, &unk_265BF59C0);
    v173 = __swift_allocate_boxed_opaque_existential_0(&v196);
    v110 = v108 - a8;
    swift_getErrorValue();
    v111 = v9;
    v112 = v9;
    v113 = sub_265BF3750();
    v115 = v114;

    v116 = v170;
    *(v170 + 1) = v113;
    *(v116 + 16) = v115;
    swift_getErrorValue();
    v117 = v9;
    v118 = sub_265BF3760();
    v120 = v119;

    *(v116 + 24) = v118;
    *(v116 + 32) = v120;
    v121 = v105;
    v122 = v186;
    *v116 = *(a2 + 56);
    (*(v122 + 32))(v116 + v109[7], v177, v105);
    *(v116 + v109[8]) = v180;
    *(v116 + v109[9]) = 0;
    v123 = 0.0;
    if (!v191)
    {
      v123 = v47;
    }

    *(v116 + v109[10]) = v123;
    *(v116 + v109[11]) = v110;
    *(v116 + v109[12]) = *(a2 + 58);
    *(v116 + v109[13]) = *(a2 + 57);
    sub_265BE6140(v116, v173);
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v196);
    v124 = v174;
    sub_265BF3150();
    v125 = v171;
    v191 = v103;
    (v185)(v171, v190, v121);

    v126 = v100;
    v127 = sub_265BF3230();
    v128 = sub_265BF34D0();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v189 = v127;
      v130 = v125;
      v131 = v122;
      LODWORD(v183) = v128;
      v132 = v129;
      v190 = swift_slowAlloc();
      *&v200 = v190;
      *v132 = 136446978;
      v196 = *&a2;
      v133 = sub_265BF3350();
      v135 = v134;
      v196 = 0.0;
      v197 = 0xE000000000000000;
      sub_265BF3620();

      v196 = -2.31584178e77;
      v197 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v133, v135);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v136 = sub_265BB064C(*&v196, v197, &v200);

      *(v132 + 4) = v136;
      *(v132 + 12) = 2160;
      *(v132 + 14) = 1752392040;
      *(v132 + 22) = 2080;
      (v185)(v172, v130, v121);
      v137 = sub_265BF3350();
      v139 = v138;
      (*(v131 + 8))(v130, v121);
      v140 = sub_265BB064C(v137, v139, &v200);

      *(v132 + 24) = v140;
      *(v132 + 32) = 2082;
      v196 = *&v100;
      v141 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
      v142 = sub_265BF3350();
      v144 = sub_265BB064C(v142, v143, &v200);

      *(v132 + 34) = v144;
      v145 = v189;
      _os_log_impl(&dword_265BAD000, v189, v183, "%{public}s Failed to process %{mask.hash}s response: %{public}s", v132, 0x2Au);
      v146 = v190;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v146, -1, -1);
      MEMORY[0x26676DCA0](v132, -1, -1);

      (v178[1])(v174, v179);
    }

    else
    {

      (*(v122 + 8))(v125, v121);
      (v178[1])(v124, v179);
    }

    v182(0, 0xF000000000000000, v100);

    sub_265BBC0A4(v193, v187);
LABEL_76:
    sub_265BB0750(v188, &qword_28003C550, &qword_265BF5D30);
    return;
  }

  v76 = v101;
  v75 = v102;
  objc_autoreleasePoolPop(v77);
  v184 = 0;
  if (v75 >> 60 == 15)
  {
    v74 = v18;
LABEL_58:
    v183 = 0;
    goto LABEL_70;
  }

  v147 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v147 != 2)
    {
      v74 = v18;
      sub_265BBC0A4(v76, v75);
      goto LABEL_58;
    }

    v150 = *(v76 + 16);
    v149 = *(v76 + 24);
    v83 = __OFSUB__(v149, v150);
    v148 = v149 - v150;
    if (!v83)
    {
      v74 = v18;
      goto LABEL_69;
    }

    goto LABEL_80;
  }

  if (!v147)
  {
    v74 = v18;
    sub_265BBC0A4(v76, v75);
    v148 = BYTE6(v75);
LABEL_69:
    v183 = v148;
    goto LABEL_70;
  }

  LODWORD(v148) = HIDWORD(v76) - v76;
  if (!__OFSUB__(HIDWORD(v76), v76))
  {
    v74 = v18;
    v148 = v148;
    goto LABEL_69;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_265BDDAD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_265BF32F0();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_265BF32F0();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

void sub_265BDDBB4(void (**a1)(void, void), uint64_t a2, unint64_t a3, void (*a4)(void, unint64_t, void *), uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v63 = a5;
  v57 = a2;
  v58 = a3;
  v61 = a1;
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_265BF2FD0();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  if (*(v6 + 56) == 2)
  {
    v61 = v8;
    sub_265BF3150();

    v20 = sub_265BF3230();
    v21 = sub_265BF34D0();
    v22 = v6;
    v23 = v21;
    v24 = v22;

    if (os_log_type_enabled(v20, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66 = v26;
      *v25 = 136446466;
      v64 = v24;
      v27 = sub_265BF3350();
      v29 = v28;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_265BF3620();

      v64 = 0xD000000000000011;
      v65 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v27, v29);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v30 = sub_265BB064C(v64, v65, &v66);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      LOBYTE(v64) = 2;
      v31 = sub_265BE6028();
      v32 = MEMORY[0x26676CC90](&type metadata for DeviceConnectionDestination, v31);
      v34 = sub_265BB064C(v32, v33, &v66);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_265BAD000, v20, v23, "%{public}s Destination does not support outgoing requests: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v26, -1, -1);
      MEMORY[0x26676DCA0](v25, -1, -1);
    }

    (v61)[1](v10, v7);
    v35 = sub_265BF2C50();
    sub_265BE61A4(&qword_28003C580, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D50910], v35);
    v62(0, 0xF000000000000000, v36);
  }

  else
  {
    v38 = (v6 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    v39 = v17;
    v40 = *(type metadata accessor for DeviceConnectionCompression(0) + 20);
    v55 = v38;
    v56 = v40;
    sub_265BE7900(v38, v19, &qword_28003C550, &qword_265BF5D30);
    (*(v11 + 16))(v59, v61, v60);
    sub_265BE7900(v38 + v40, v16, &qword_28003C550, &qword_265BF5D30);
    v41 = *(v39 + 80);
    v42 = (v41 + 32) & ~v41;
    v43 = (v14 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = *(v11 + 80);
    v54 = v6;
    v45 = (v44 + v43 + 8) & ~v44;
    v46 = (v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v41 + v46 + 16) & ~v41;
    v48 = swift_allocObject();
    v49 = v63;
    *(v48 + 16) = v62;
    *(v48 + 24) = v49;
    sub_265BE5FB4(v19, v48 + v42);
    *(v48 + v43) = v54;
    (*(v11 + 32))(v48 + v45, v59, v60);
    v50 = (v48 + v46);
    v52 = v57;
    v51 = v58;
    *v50 = v57;
    v50[1] = v51;
    sub_265BE5FB4(v16, v48 + v47);

    sub_265BBB4BC(v52, v51);
    sub_265BDB48C(v61, v52, v51, v55, v55 + v56, sub_265BE6024, v48);
  }
}

void sub_265BDE1A4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, void *), uint64_t a5, NSObject *a6, uint64_t a7, void *a8, void *a9, unint64_t a10, uint64_t a11)
{
  v105 = a8;
  v106 = a7;
  v107 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v86 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v86 - v23;
  v25 = sub_265BF2FD0();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v96 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v104 = v86 - v29;
  v30 = sub_265BF3240();
  v31 = MEMORY[0x28223BE20](v30);
  v34 = v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v89 = a1;
    v98 = a2;
    v99 = v26;
    v100 = v25;
    v88 = v22;
    v102 = v24;
    v103 = v34;
    v92 = v32;
    v93 = v31;
    v94 = v19;
    v101 = a5;
    v35 = sub_265BF2CF0();
    v95 = *(v35 - 8);
    v36 = *(v95 + 48);
    v90 = a6;
    v91 = v35;
    v87 = v36;
    v86[1] = v95 + 48;
    LODWORD(v97) = (v36)(a6, 1);
    swift_getErrorValue();
    v37 = sub_265BF31D0();
    v111 = v37;
    v112 = sub_265BE61A4(&qword_28003C5A0, MEMORY[0x277D216F0], &protocol conformance descriptor for BinaryDecodingError);
    v38 = __swift_allocate_boxed_opaque_existential_0(&v109);
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D216E8], v37);
    v39 = a3;
    v40 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    swift_getErrorValue();
    v41 = sub_265BF2C50();
    v111 = v41;
    v42 = sub_265BE61A4(&qword_28003C5A8, MEMORY[0x277D50940], MEMORY[0x277D50938]);
    v112 = v42;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v109);
    v44 = *(*(v41 - 8) + 104);
    v44(v43, *MEMORY[0x277D50918], v41);
    v45 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    swift_getErrorValue();
    v111 = v41;
    v112 = v42;
    v46 = __swift_allocate_boxed_opaque_existential_0(&v109);
    v44(v46, *MEMORY[0x277D50920], v41);
    v47 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    if (v45 & 1) != 0 || (v47)
    {
      v49 = v106;
      v50 = v107;
      v51 = v105;
      v52 = v103;
      v53 = v100;
      v54 = v99;
      v55 = v104;
      v56 = v98;
      if (v97 == 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v48 = ((v97 != 1) & v40) == 1;
      v49 = v106;
      v50 = v107;
      v51 = v105;
      v52 = v103;
      v53 = v100;
      v54 = v99;
      v55 = v104;
      v56 = v98;
      if (!v48)
      {
LABEL_5:
        v57 = a3;
        v50(v89, v56, a3);

        return;
      }
    }

    v104 = a11;
    v100 = a10;
    v99 = a9;
    sub_265BF3150();
    v97 = v54[2];
    v97(v55, v51, v53);
    sub_265BE7900(v90, v102, &qword_28003C550, &qword_265BF5D30);
    v58 = a3;

    v59 = sub_265BF3230();
    v60 = sub_265BF34B0();

    LODWORD(v98) = v60;
    if (os_log_type_enabled(v59, v60))
    {
      v90 = v59;
      v61 = v55;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v108 = v63;
      *v62 = 136446978;
      v109 = v49;
      v64 = sub_265BF3350();
      v66 = v65;
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_265BF3620();

      v109 = 0xD000000000000011;
      v110 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v64, v66);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v67 = sub_265BB064C(v109, v110, &v108);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2082;
      v97(v96, v61, v53);
      v68 = sub_265BF3350();
      v70 = v69;
      (v54[1])(v61, v53);
      v71 = sub_265BB064C(v68, v70, &v108);

      *(v62 + 14) = v71;
      *(v62 + 22) = 2080;
      v72 = v88;
      sub_265BE7900(v102, v88, &qword_28003C550, &qword_265BF5D30);
      v73 = v91;
      v74 = v87(v72, 1, v91);
      if (v74 == 1)
      {
        sub_265BB0750(v72, &qword_28003C550, &qword_265BF5D30);
        v75 = 0;
      }

      else
      {
        v75 = sub_265BF2CE0();
        (*(v95 + 8))(v72, v73);
      }

      v76 = v94;
      v77 = v90;
      v109 = v75;
      LOBYTE(v110) = v74 == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C598, &qword_265BF5970);
      v78 = sub_265BF3590();
      v80 = v79;
      sub_265BB0750(v102, &qword_28003C550, &qword_265BF5D30);
      v81 = sub_265BB064C(v78, v80, &v108);

      *(v62 + 24) = v81;
      *(v62 + 32) = 2082;
      v109 = a3;
      v82 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
      v83 = sub_265BF3350();
      v85 = sub_265BB064C(v83, v84, &v108);

      *(v62 + 34) = v85;
      _os_log_impl(&dword_265BAD000, v77, v98, "%{public}s Retrying request %{public}s without compression %s because of %{public}s", v62, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v63, -1, -1);
      MEMORY[0x26676DCA0](v62, -1, -1);

      (*(v92 + 8))(v103, v93);
      v51 = v105;
    }

    else
    {

      sub_265BB0750(v102, &qword_28003C550, &qword_265BF5D30);
      (v54[1])(v55, v53);
      (*(v92 + 8))(v52, v93);
      v76 = v94;
      v73 = v91;
    }

    (*(v95 + 56))(v76, 1, 1, v73);
    sub_265BDB48C(v51, v99, v100, v76, v104, v107, v101);

    sub_265BB0750(v76, &qword_28003C550, &qword_265BF5D30);
  }

  else
  {
    v107(a1, a2, 0);
  }
}

void sub_265BDEC80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, __n128), uint64_t a7, double a8)
{
  v100 = a5;
  v102 = a4;
  v14 = sub_265BF3240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v98 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  v25 = sub_265BF2CF0();
  v103 = *(v25 - 8);
  v104 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v97 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v101 = &v87 - v28;
  v29.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  if (a2 >> 60 == 15)
  {
    v30 = MEMORY[0x277D84F98];
LABEL_13:
    a6(v30, 0, a3, v29);

    return;
  }

  v105 = a1;
  v31 = v29.n128_f64[0] - a8;
  v32 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v32)
    {
      v96 = a3;
      if (!__OFSUB__(HIDWORD(v105), v105))
      {
        v33 = v15;
        v34 = v14;
        v35 = a7;
        v36 = a6;
        v37 = HIDWORD(v105) - v105;
        goto LABEL_9;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C0, &qword_265BF5988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF57A0;
    *(inited + 32) = 0x64616F6C796170;
    v47 = MEMORY[0x277CC9318];
    v48 = v105;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v48;
    *(inited + 56) = a2;
    *(inited + 72) = v47;
    *(inited + 80) = 0x656D6954736572;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 120) = MEMORY[0x277D839F8];
    *(inited + 96) = v31;
    v30 = sub_265BE5320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C8, &qword_265BF5990);
    swift_arrayDestroy();
    goto LABEL_13;
  }

  if (v32 != 2)
  {
    goto LABEL_12;
  }

  v96 = a3;
  v33 = v15;
  v34 = v14;
  v35 = a7;
  v36 = a6;
  v39 = *(v105 + 16);
  v38 = *(v105 + 24);
  v37 = v38 - v39;
  if (__OFSUB__(v38, v39))
  {
    goto LABEL_35;
  }

LABEL_9:
  sub_265BBB4D0(v105, a2);
  v40 = v37 < 1000;
  a6 = v36;
  v41 = v35;
  v42 = v34;
  v43 = v33;
  a3 = v96;
  if (v40)
  {
    goto LABEL_12;
  }

  v94 = v42;
  v95 = a6;
  sub_265BE7900(v102, v24, &qword_28003C550, &qword_265BF5D30);
  v45 = v103;
  v44 = v104;
  if ((*(v103 + 48))(v24, 1, v104) == 1)
  {
    sub_265BB0750(v24, &qword_28003C550, &qword_265BF5D30);
    a6 = v95;
    goto LABEL_12;
  }

  v102 = v43;
  v49 = v101;
  v50 = (*(v45 + 32))(v101, v24, v44);
  if (v32 == 2)
  {
    v52 = *(v105 + 16);
    v51 = *(v105 + 24);
    v53 = __OFSUB__(v51, v52);
    v54 = v51 - v52;
    if (!v53)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  LODWORD(v54) = HIDWORD(v105) - v105;
  if (__OFSUB__(HIDWORD(v105), v105))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = v54;
LABEL_20:
  v90 = v54;
  v55 = v103;
  v93 = MEMORY[0x26676D6B0](v50);
  v91 = *(v55 + 16);
  v91(v22, v49, v44);
  (*(v55 + 56))(v22, 0, 1, v44);
  v56 = sub_265BF2BB0();
  v92 = v41;
  v57 = v91;
  v88 = a2;
  v89 = v56;
  v99 = v58;
  sub_265BB0750(v22, &qword_28003C550, &qword_265BF5D30);
  objc_autoreleasePoolPop(v93);
  v59 = v99 >> 62;
  if ((v99 >> 62) > 1)
  {
    v60 = v104;
    v61 = v101;
    v63 = v97;
    v62 = v98;
    if (v59 != 2)
    {
      v64 = 0;
      goto LABEL_30;
    }

    v66 = *(v89 + 16);
    v65 = *(v89 + 24);
    v64 = v65 - v66;
    if (!__OFSUB__(v65, v66))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    v60 = v104;
    v61 = v101;
    v63 = v97;
    v62 = v98;
    if (!v59)
    {
      v64 = BYTE6(v99);
LABEL_30:
      sub_265BF3150();
      v57(v63, v61, v60);
      v67 = v100;

      v68 = sub_265BF3230();
      v69 = sub_265BF34B0();

      LODWORD(v97) = v69;
      if (os_log_type_enabled(v68, v69))
      {
        v70 = v68;
        v71 = v63;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v108 = v73;
        *v72 = 136446978;
        v106 = v67;
        v74 = sub_265BF3350();
        v100 = v64;
        v75 = v74;
        v77 = v76;
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_265BF3620();

        v106 = 0xD000000000000011;
        v107 = 0x8000000265BFA340;
        MEMORY[0x26676D1B0](v75, v77);

        MEMORY[0x26676D1B0](58, 0xE100000000000000);
        v78 = sub_265BB064C(v106, v107, &v108);

        *(v72 + 4) = v78;
        *(v72 + 12) = 2048;
        *(v72 + 14) = v90;
        *(v72 + 22) = 2048;
        v79 = sub_265BF2CE0();
        v103 = *(v103 + 8);
        (v103)(v71, v60);
        *(v72 + 24) = v79;
        *(v72 + 32) = 2048;
        *(v72 + 34) = v100;
        _os_log_impl(&dword_265BAD000, v70, v97, "%{public}s Compressing %ld byte response payload with %ld to %ld bytes", v72, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        MEMORY[0x26676DCA0](v73, -1, -1);
        MEMORY[0x26676DCA0](v72, -1, -1);

        (*(v102 + 8))(v98, v94);
      }

      else
      {
        v103 = *(v103 + 8);
        (v103)(v63, v60);

        (*(v102 + 8))(v62, v94);
      }

      a6 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C0, &qword_265BF5988);
      v80 = swift_initStackObject();
      *(v80 + 32) = 0x64616F6C796170;
      *(v80 + 16) = xmmword_265BF5790;
      v81 = MEMORY[0x277CC9318];
      v82 = v89;
      *(v80 + 40) = 0xE700000000000000;
      *(v80 + 48) = v82;
      v83 = v99;
      *(v80 + 56) = v99;
      *(v80 + 72) = v81;
      *(v80 + 80) = 8024946;
      *(v80 + 88) = 0xE300000000000000;
      sub_265BBB4D0(v82, v83);
      v84 = v101;
      v85 = sub_265BF2CE0();
      v86 = MEMORY[0x277D83B88];
      *(v80 + 96) = v85;
      *(v80 + 120) = v86;
      *(v80 + 128) = 0x656D6954736572;
      *(v80 + 136) = 0xE700000000000000;
      *(v80 + 168) = MEMORY[0x277D839F8];
      *(v80 + 144) = v31;
      v30 = sub_265BE5320(v80);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C8, &qword_265BF5990);
      swift_arrayDestroy();
      sub_265BBB1D0(v82, v83);
      sub_265BBC0A4(v105, v88);
      (v103)(v84, v104);
      goto LABEL_13;
    }
  }

  if (!__OFSUB__(HIDWORD(v89), v89))
  {
    v64 = HIDWORD(v89) - v89;
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

uint64_t DeviceConnection.sendRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  v5 = sub_265BF2C30();
  v83 = *(v5 - 8);
  v84 = v5;
  v82 = *(v83 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = v69 - v8;
  v9 = sub_265BF3210();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF31F0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_265BF2F60();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v91 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265BF2FD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v90 = *(v79 - 8);
  v75 = v90[8];
  v18 = MEMORY[0x28223BE20](v79);
  v80 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v89 = v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v92 = v69 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v88 = v69 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v69 - v26;
  (*(v16 + 16))(v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  (*(v16 + 32))(v29 + v28, v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);

  v30 = v27;
  v76 = v27;
  sub_265BF2DF0();
  sub_265BF3180();
  sub_265BF2F30();
  swift_allocObject();
  v31 = sub_265BF2F00();
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v77 + 8))(v11, v78);
  sub_265BF2F50();
  sub_265BF31C0();
  swift_allocObject();
  v32 = sub_265BF3190();
  v78 = v32;
  v94 = v31;
  v33 = sub_265BF3350();
  v77 = v33;
  v35 = v34;
  sub_265BF2C20();
  v36 = swift_allocObject();
  v74 = v31;
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  *(v36 + 32) = v33;
  *(v36 + 40) = v35;
  v73 = v35;
  *(v36 + 48) = "DeviceConnection::sendRequest";
  *(v36 + 56) = 29;
  *(v36 + 64) = 2;

  v37 = v88;
  sub_265BF2DF0();
  v39 = v89;
  v38 = v90;
  v40 = v90 + 2;
  v41 = v90[2];
  v42 = v30;
  v43 = v79;
  v41(v89, v42, v79);
  v72 = v41;
  v71 = v40;
  v44 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v45 = v75 + v44;
  v69[1] = *(v38 + 80);
  v69[0] = swift_allocObject();
  v46 = v38[4];
  v70 = v44;
  v46(v69[0] + v44, v39, v43);
  v75 = v46;
  v47 = v80;
  v41(v80, v37, v43);
  v48 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v43;
  v46(v49 + v44, v47, v43);
  v51 = (v49 + v48);
  v52 = v69[0];
  *v51 = sub_265BB2424;
  v51[1] = v52;
  sub_265BF2DF0();
  v54 = v83;
  v53 = v84;
  v55 = v81;
  (*(v83 + 16))(v81, v93, v84);
  v56 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v57 = (v82 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v73;
  *(v58 + 16) = v77;
  *(v58 + 24) = v59;
  *(v58 + 32) = "DeviceConnection::sendRequest";
  *(v58 + 40) = 29;
  *(v58 + 48) = 2;
  (*(v54 + 32))(v58 + v56, v55, v53);
  *(v58 + v57) = v78;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v74;
  v60 = v89;
  v61 = v92;
  v62 = v50;
  v72(v89, v92, v50);
  v63 = swift_allocObject();
  v64 = v60;
  v65 = v62;
  v75(v63 + v70, v64, v62);
  v66 = (v63 + v48);
  *v66 = sub_265BE5734;
  v66[1] = v58;

  sub_265BF2DF0();
  v67 = v90[1];
  v67(v61, v65);
  v67(v88, v65);
  (*(v54 + 8))(v93, v53);
  (*(v85 + 8))(v91, v86);
  v67(v76, v65);
}

uint64_t sub_265BE0100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_265BE6D78(a4, 0, 0xF000000000000000, a3, sub_265BE79BC, v8, &unk_287776750, &unk_287776778, sub_265BE79C0, sub_265BE7984);
}

uint64_t DeviceConnection.sendRequest<A>(_:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a5;
  v81 = a4;
  v96 = a6;
  v9 = sub_265BF2C30();
  v92 = *(v9 - 8);
  v93 = v9;
  v91 = *(v92 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v90 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = v79 - v12;
  v89 = sub_265BF3210();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265BF31F0();
  MEMORY[0x28223BE20](v14 - 8);
  v83 = (v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_265BF2F60();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v101 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265BF2FD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v100 = *(v86 - 8);
  v80 = v100[8];
  v26 = MEMORY[0x28223BE20](v86);
  v88 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v99 = v79 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v102 = v79 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v98 = v79 - v33;
  MEMORY[0x28223BE20](v32);
  v97 = v79 - v34;
  (*(v23 + 16))(v25, a2, a3);
  (*(v19 + 16))(v22, a1, v18);
  v35 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v19 + 80) + v36 + 8) & ~*(v19 + 80);
  v38 = swift_allocObject();
  v39 = v81;
  *(v38 + 2) = a3;
  *(v38 + 3) = v39;
  *(v38 + 4) = v82;
  (*(v23 + 32))(&v38[v35], v25, a3);
  *&v38[v36] = v84;
  (*(v19 + 32))(&v38[v37], v22, v18);

  v40 = v97;
  sub_265BF2DF0();
  sub_265BF3180();
  sub_265BF2F30();
  swift_allocObject();
  v41 = sub_265BF2F00();
  v42 = v85;
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v87 + 8))(v42, v89);
  sub_265BF2F50();
  sub_265BF31C0();
  swift_allocObject();
  v43 = sub_265BF3190();
  v89 = v43;
  v104 = v41;
  v44 = sub_265BF3350();
  v87 = v44;
  v46 = v45;
  sub_265BF2C20();
  v47 = swift_allocObject();
  v84 = v41;
  v85 = v46;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v44;
  *(v47 + 40) = v46;
  *(v47 + 48) = "DeviceConnection::sendRequest:Payload";
  *(v47 + 56) = 37;
  *(v47 + 64) = 2;

  v48 = v98;
  sub_265BF2DF0();
  v50 = v99;
  v49 = v100;
  v51 = v100 + 2;
  v52 = v100[2];
  v53 = v86;
  v52(v99, v40, v86);
  v83 = v52;
  v82 = v51;
  v54 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v55 = v80 + v54;
  v79[1] = *(v49 + 80);
  v79[0] = swift_allocObject();
  v56 = v49[4];
  v81 = v54;
  v56(v79[0] + v54, v50, v53);
  v80 = v56;
  v57 = v88;
  v52(v88, v48, v53);
  v58 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v53;
  v56(v59 + v54, v57, v53);
  v61 = (v59 + v58);
  v62 = v79[0];
  *v61 = sub_265BD339C;
  v61[1] = v62;
  sub_265BF2DF0();
  v64 = v92;
  v63 = v93;
  v65 = v90;
  (*(v92 + 16))(v90, v103, v93);
  v66 = (*(v64 + 80) + 49) & ~*(v64 + 80);
  v67 = (v91 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v85;
  *(v68 + 16) = v87;
  *(v68 + 24) = v69;
  *(v68 + 32) = "DeviceConnection::sendRequest:Payload";
  *(v68 + 40) = 37;
  *(v68 + 48) = 2;
  (*(v64 + 32))(v68 + v66, v65, v63);
  *(v68 + v67) = v89;
  *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
  v70 = v99;
  v71 = v102;
  v72 = v60;
  v83(v99, v102, v60);
  v73 = swift_allocObject();
  v74 = v70;
  v75 = v72;
  v80(v73 + v81, v74, v72);
  v76 = (v73 + v58);
  *v76 = sub_265BE79AC;
  v76[1] = v68;

  sub_265BF2DF0();
  v77 = v100[1];
  v77(v71, v75);
  v77(v98, v75);
  (*(v64 + 8))(v103, v63);
  (*(v94 + 8))(v101, v95);
  v77(v97, v75);
}

uint64_t sub_265BE0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v12 = sub_265BF2D30();
  v14 = v13;

  sub_265BE6D78(a5, v12, v14, a4, sub_265BE62BC, v11, &unk_2877766B0, &unk_2877766D8, sub_265BE73FC, sub_265BE7984);

  return sub_265BBC0A4(v12, v14);
}

void sub_265BE0D40(int a1, int a2, id a3, void (*a4)(void *, void))
{
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3800();
  a4(v6, v7);
  sub_265BB85E0(v6, v7);
}

uint64_t DeviceConnection.sendRequest<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v23 = a3;
  v24 = a4;
  v26 = a5;
  v27 = sub_265BF2F60();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BF2FD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v22 = sub_265BF2E60();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v22 - v15;
  (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v20 = v23;
  v19 = v24;
  *(v18 + 2) = a2;
  *(v18 + 3) = v20;
  *(v18 + 4) = v19;
  *(v18 + 5) = v6;
  (*(v12 + 32))(&v18[v17], &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  sub_265BF2DF0();
  sub_265BF3180();
  sub_265BD8B50("DeviceConnection::sendRequest", 29, 2, 0, v16, a2, v26);
  (*(v25 + 8))(v10, v27);
  return (*(v14 + 8))(v16, v22);
}

uint64_t sub_265BE1094(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a2;

  sub_265BDDBB4(a4, 0, 0xF000000000000000, sub_265BE62AC, v13);
}

uint64_t sub_265BE1150(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v11 = sub_265BF3820();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  sub_265BBB4BC(a1, a2);
  v15 = a3;
  sub_265BF37F0();
  v18(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t DeviceConnection.sendRequest<A, B>(_:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v44 = a9;
  v45 = sub_265BF2F60();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BF2FD0();
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265BF2E60();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  (*(v15 + 16))(v17, v34, a3);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v11);
  v21 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 2) = a3;
  *(v24 + 3) = v25;
  v26 = v38;
  *(v24 + 4) = v37;
  *(v24 + 5) = v26;
  v27 = v41;
  *(v24 + 6) = v39;
  *(v24 + 7) = v27;
  (*(v15 + 32))(&v24[v21], v17, a3);
  *&v24[v22] = v42;
  (*(v12 + 32))(&v24[v23], v31, v30);

  sub_265BF2DF0();
  v28 = v40;
  sub_265BF3180();
  sub_265BD8B50("DeviceConnection::sendRequest;Payload", 37, 2, 0, v20, v25, v44);
  (*(v43 + 8))(v28, v45);
  return (*(v35 + 8))(v20, v36);
}

uint64_t sub_265BE165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = sub_265BF2D30();
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a1;
  v17[9] = a2;

  sub_265BDDBB4(a5, v14, v16, sub_265BE5F78, v17);

  return sub_265BBC0A4(v14, v16);
}

uint64_t sub_265BE1770(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v14 = sub_265BF3820();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  sub_265BBB4BC(a1, a2);
  v18 = a3;
  sub_265BF37F0();
  v21(v17);
  return (*(v15 + 8))(v17, v14);
}

void DeviceConnection.broadcastEvent(_:data:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_265BF2F90();
  v103 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v105 = v9;
  v104 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265BF3240();
  v102 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v101 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v13 = MEMORY[0x28223BE20](v100);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v91 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = &v91 - v19;
  v106 = a1;
  v21 = sub_265BF2F80();
  v110 = MEMORY[0x277D83B88];
  *&aBlock = v21;
  sub_265BB87C8(&aBlock, &v114);
  v22 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = v22;
  sub_265BE48E8(&v114, 0x746E657665, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v24 = a3;
  v25 = v113;
  v115 = v113;
  v107 = v4;
  if (a3 >> 60 != 15)
  {
    v97 = v10;
    v26 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v27 = a2;
      if (v26 == 2)
      {
        v28 = v8;
        v31 = *(a2 + 16);
        v30 = *(a2 + 24);
        v29 = v30 - v31;
        if (!__OFSUB__(v30, v31))
        {
LABEL_8:
          v98 = v24;
          sub_265BBB4D0(v27, v24);
          v24 = v98;
          v32 = v29 < 1000;
          v8 = v28;
          v4 = v107;
          if (!v32)
          {
            v96 = v8;
            v52 = v107 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression;
            v53 = type metadata accessor for DeviceConnectionCompression(0);
            v54 = sub_265BE7900(v52 + *(v53 + 24), v20, &qword_28003C550, &qword_265BF5D30);
            if (v26 == 2)
            {
              v56 = *(v27 + 16);
              v55 = *(v27 + 24);
              v57 = __OFSUB__(v55, v56);
              v58 = v55 - v56;
              if (!v57)
              {
                goto LABEL_21;
              }

              __break(1u);
            }

            LODWORD(v58) = HIDWORD(v27) - v27;
            if (!__OFSUB__(HIDWORD(v27), v27))
            {
              v58 = v58;
LABEL_21:
              v95 = v58;
              v59 = MEMORY[0x26676D6B0](v54);
              v60 = sub_265BF2BB0();
              v62 = v61;
              v63 = v60;
              objc_autoreleasePoolPop(v59);
              v64 = v62 >> 62;
              if ((v62 >> 62) > 1)
              {
                v65 = v63;
                if (v64 != 2)
                {
                  v93 = 0;
                  goto LABEL_32;
                }

                v68 = *(v63 + 16);
                v67 = *(v63 + 24);
                v57 = __OFSUB__(v67, v68);
                v66 = v67 - v68;
                if (!v57)
                {
LABEL_30:
                  v93 = v66;
LABEL_32:
                  v110 = MEMORY[0x277CC9318];
                  *&aBlock = v65;
                  *(&aBlock + 1) = v62;
                  sub_265BB87C8(&aBlock, &v114);
                  sub_265BBB4D0(v65, v62);
                  v69 = swift_isUniquelyReferenced_nonNull_native();
                  v113 = v25;
                  sub_265BE48E8(&v114, 0x64616F6C796170, 0xE700000000000000, v69);
                  v115 = v113;
                  sub_265BE7900(v20, v17, &qword_28003C550, &qword_265BF5D30);
                  v70 = sub_265BF2CF0();
                  v71 = *(v70 - 8);
                  if ((*(v71 + 48))(v17, 1, v70) == 1)
                  {
                    sub_265BB0750(v17, &qword_28003C550, &qword_265BF5D30);
                    sub_265BE3954(31333, 0xE200000000000000, &aBlock);
                    sub_265BB0750(&aBlock, &qword_28003C558, &unk_265BF57B8);
                  }

                  else
                  {
                    v72 = sub_265BF2CE0();
                    v110 = MEMORY[0x277D83B88];
                    *&aBlock = v72;
                    (*(v71 + 8))(v17, v70);
                    sub_265BB87C8(&aBlock, &v114);
                    v73 = v115;
                    v74 = swift_isUniquelyReferenced_nonNull_native();
                    v113 = v73;
                    sub_265BE48E8(&v114, 31333, 0xE200000000000000, v74);
                    v115 = v113;
                  }

                  v75 = v101;
                  sub_265BF3150();
                  v76 = v99;
                  sub_265BE7900(v20, v99, &qword_28003C550, &qword_265BF5D30);

                  v77 = sub_265BF3230();
                  v78 = sub_265BF34B0();

                  if (os_log_type_enabled(v77, v78))
                  {
                    v79 = swift_slowAlloc();
                    *&v114 = swift_slowAlloc();
                    v94 = v20;
                    v80 = v114;
                    *v79 = 136446978;
                    *&aBlock = v4;
                    v81 = sub_265BF3350();
                    v92 = v62;
                    v82 = v81;
                    v83 = v76;
                    v85 = v84;
                    *&aBlock = 0;
                    *(&aBlock + 1) = 0xE000000000000000;
                    sub_265BF3620();

                    *&aBlock = 0xD000000000000011;
                    *(&aBlock + 1) = 0x8000000265BFA340;
                    MEMORY[0x26676D1B0](v82, v85);

                    MEMORY[0x26676D1B0](58, 0xE100000000000000);
                    v86 = sub_265BB064C(aBlock, *(&aBlock + 1), &v114);

                    *(v79 + 4) = v86;
                    *(v79 + 12) = 2048;
                    *(v79 + 14) = v95;
                    *(v79 + 22) = 2048;
                    *(v79 + 24) = v93;
                    *(v79 + 32) = 2082;
                    v87 = sub_265BF3590();
                    v89 = v88;
                    sub_265BB0750(v83, &qword_28003C550, &qword_265BF5D30);
                    v90 = sub_265BB064C(v87, v89, &v114);

                    *(v79 + 34) = v90;
                    v4 = v107;
                    _os_log_impl(&dword_265BAD000, v77, v78, "%{public}s Event was %ld bytes compressed to %ld bytes using %{public}s", v79, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x26676DCA0](v80, -1, -1);
                    MEMORY[0x26676DCA0](v79, -1, -1);

                    sub_265BBB1D0(v65, v92);
                    sub_265BBC0A4(v27, v98);
                    (v102)[1](v101, v97);
                    sub_265BB0750(v94, &qword_28003C550, &qword_265BF5D30);
                  }

                  else
                  {

                    sub_265BBB1D0(v65, v62);
                    sub_265BBC0A4(v27, v98);
                    sub_265BB0750(v76, &qword_28003C550, &qword_265BF5D30);
                    (v102)[1](v75, v97);
                    sub_265BB0750(v20, &qword_28003C550, &qword_265BF5D30);
                  }

                  v8 = v96;
                  goto LABEL_11;
                }

                __break(1u);
              }

              else
              {
                v65 = v63;
                if (!v64)
                {
                  v66 = BYTE6(v62);
                  goto LABEL_30;
                }
              }

              LODWORD(v66) = HIDWORD(v65) - v65;
              if (!__OFSUB__(HIDWORD(v65), v65))
              {
                v66 = v66;
                goto LABEL_30;
              }

LABEL_42:
              __break(1u);
              return;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          goto LABEL_10;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v27 = a2;
      if (v26)
      {
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v28 = v8;
          v29 = HIDWORD(a2) - a2;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

LABEL_10:
    v110 = MEMORY[0x277CC9318];
    *&aBlock = v27;
    *(&aBlock + 1) = v24;
    v33 = v24;
    sub_265BB87C8(&aBlock, &v114);
    sub_265BBB4D0(v27, v33);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v25;
    sub_265BE48E8(&v114, 0x64616F6C796170, 0xE700000000000000, v34);
    sub_265BBC0A4(v27, v33);
    v115 = v113;
  }

LABEL_11:
  v35 = *(v4 + 64);
  sub_265BD9CB4();
  v36 = sub_265BF3330();

  sub_265BD8848(v115);
  v37 = v4;

  v38 = sub_265BF32E0();

  sub_265BF3340();
  v39 = sub_265BF3330();

  v40 = *(v37 + 59);
  v102 = v35;
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    *&aBlock = sub_265BF3340();
    *(&aBlock + 1) = v42;
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
  }

  else
  {
    sub_265BE5574(MEMORY[0x277D84F90]);
  }

  v43 = v106;
  v44 = sub_265BF32E0();

  v45 = v103;
  v46 = v104;
  (*(v103 + 16))(v104, v43, v8);
  v47 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v49 = v8;
  v50 = v48;
  *(v48 + 16) = v107;
  (*(v45 + 32))(v48 + v47, v46, v49);
  v111 = sub_265BE5C78;
  v112 = v50;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v109 = sub_265BD5854;
  v110 = &block_descriptor_76;
  v51 = _Block_copy(&aBlock);

  [v102 sendEventID:v36 event:v38 destinationID:v39 options:v44 completion:v51];
  _Block_release(v51);
}

uint64_t DeviceConnection.broadcastEvent<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_265BF2D30();
  v7 = v6;
  DeviceConnection.broadcastEvent(_:data:)(a1, v5, v6);

  return sub_265BBC0A4(v5, v7);
}

uint64_t sub_265BE28C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_265BF2F90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_265BF3240();
  result = MEMORY[0x28223BE20](v11);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v41 = v13;
    v42 = result;
    v16 = a1;
    sub_265BF3150();
    (*(v8 + 16))(v10, a3, v7);
    v17 = a1;

    v18 = sub_265BF3230();
    v19 = sub_265BF34D0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v18;
      v21 = v20;
      v39 = swift_slowAlloc();
      v47 = v39;
      *v21 = 136446722;
      v45 = a2;
      v22 = sub_265BF3350();
      v40 = v3;
      v24 = v23;
      v45 = 0;
      v46 = 0xE000000000000000;
      v37 = v19;
      sub_265BF3620();

      v45 = 0xD000000000000011;
      v46 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v22, v24);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v25 = sub_265BB064C(v45, v46, &v47);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_265BE61A4(&qword_28003C570, MEMORY[0x277D4E1E8], MEMORY[0x277D4E028]);
      v27 = MEMORY[0x26676CC90](v7, v26);
      v29 = v28;
      (*(v8 + 8))(v10, v7);
      v30 = sub_265BB064C(v27, v29, &v47);

      *(v21 + 14) = v30;
      *(v21 + 22) = 2082;
      swift_getErrorValue();
      v31 = MEMORY[0x26676D550](v43, v44);
      v33 = sub_265BB064C(v31, v32, &v47);

      *(v21 + 24) = v33;
      v34 = v38;
      _os_log_impl(&dword_265BAD000, v38, v37, "%{public}s Unable to send event ID %{public}s: %{public}s", v21, 0x20u);
      v35 = v39;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v35, -1, -1);
      MEMORY[0x26676DCA0](v21, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    return (*(v41 + 8))(v15, v42);
  }

  return result;
}

uint64_t DeviceConnection.description.getter()
{
  v1 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 96))(ObjectType, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  v4 = sub_265BF3590();
  v6 = v5;

  v7 = sub_265BF3350();
  v9 = v8;
  sub_265BF3620();

  MEMORY[0x26676D1B0](v7, v9);

  MEMORY[0x26676D1B0](58, 0xE100000000000000);
  MEMORY[0x26676D1B0](0xD000000000000011, 0x8000000265BFA340);

  MEMORY[0x26676D1B0](32, 0xE100000000000000);
  v10 = sub_265BD9CB4();
  MEMORY[0x26676D1B0](v10);

  MEMORY[0x26676D1B0](540945696, 0xE400000000000000);
  MEMORY[0x26676D1B0](v4, v6);

  MEMORY[0x26676D1B0](62, 0xE100000000000000);
  return 60;
}

void sub_265BE2EC8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v29 = a5;
  v12 = sub_265BF3240();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF2F20();
  sub_265BF31B0();
  sub_265BF2F40();

  v16 = sub_265BF3230();
  v17 = sub_265BF34E0();

  if (os_log_type_enabled(v16, v17))
  {
    v28 = a1;
    v18 = swift_slowAlloc();
    v27[1] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27[0] = v12;
    v21 = v20;
    v32 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_265BB064C(v29, a6, &v32);
    *(v19 + 12) = 2082;
    v22 = sub_265BF3630();
    v24 = sub_265BB064C(v22, v23, &v32);
    a1 = v28;

    *(v19 + 14) = v24;
    _os_log_impl(&dword_265BAD000, v16, v17, "[%{public}s] %{public}s begin", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v21, -1, -1);
    MEMORY[0x26676DCA0](v19, -1, -1);

    (*(v13 + 8))(v15, v27[0]);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3810();
  v25 = v32;
  v26 = v33;
  v30 = v32;
  v31 = v33;
  a1(&v30);
  sub_265BB85E0(v25, v26);
}

uint64_t sub_265BE315C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a7;
  v68 = a6;
  v67[1] = a4;
  v67[2] = a5;
  v67[0] = a2;
  v74 = a9;
  v75 = a8;
  v12 = sub_265BF2C30();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v69 = v67 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v67 - v19;
  v21 = sub_265BF3240();
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v71 = v67 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v26 = sub_265BF3820();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (v67 - v28);
  (*(v27 + 16))(v67 - v28, a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    sub_265BF2F40();
    v31 = v12;
    (*(v13 + 16))(v20, v70, v12);

    v32 = v30;
    v33 = sub_265BF3230();
    v34 = sub_265BF34D0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76 = v70;
      *v35 = 136446978;
      *(v35 + 4) = sub_265BB064C(v67[0], a3, &v76);
      *(v35 + 12) = 2082;
      v36 = sub_265BF3630();
      v38 = sub_265BB064C(v36, v37, &v76);

      *(v35 + 14) = v38;
      *(v35 + 22) = 2048;
      v39 = v69;
      sub_265BF2C20();
      sub_265BF2C00();
      v41 = v40;
      v42 = *(v13 + 8);
      v42(v39, v31);
      v42(v20, v31);
      *(v35 + 24) = v41;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v45 + 16))(v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = sub_265BF3350();
      v48 = sub_265BB064C(v46, v47, &v76);

      *(v35 + 34) = v48;
      _os_log_impl(&dword_265BAD000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      v49 = v70;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v49, -1, -1);
      MEMORY[0x26676DCA0](v35, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v20, v12);
    }

    (*(v72 + 8))(v71, v73);
  }

  else
  {
    sub_265BF2F40();
    v50 = v12;
    (*(v13 + 16))(v16, v70, v12);

    v51 = sub_265BF3230();
    v52 = sub_265BF34E0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v70 = v50;
      v54 = v53;
      v71 = swift_slowAlloc();
      v76 = v71;
      *v54 = 136446722;
      *(v54 + 4) = sub_265BB064C(v67[0], a3, &v76);
      *(v54 + 12) = 2082;
      v55 = sub_265BF3630();
      v57 = sub_265BB064C(v55, v56, &v76);
      v68 = v52;
      v58 = v57;

      *(v54 + 14) = v58;
      *(v54 + 22) = 2048;
      v59 = v69;
      sub_265BF2C20();
      sub_265BF2C00();
      v61 = v60;
      v62 = *(v13 + 8);
      v63 = v59;
      v64 = v70;
      v62(v63, v70);
      v62(v16, v64);
      *(v54 + 24) = v61;
      _os_log_impl(&dword_265BAD000, v51, v68, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      v65 = v71;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v65, -1, -1);
      MEMORY[0x26676DCA0](v54, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v50);
    }

    (*(v72 + 8))(v24, v73);
    (*(v27 + 8))(v29, v26);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}