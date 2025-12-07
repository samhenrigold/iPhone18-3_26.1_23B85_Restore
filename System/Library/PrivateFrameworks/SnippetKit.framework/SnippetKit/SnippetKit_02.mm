uint64_t sub_26A0EBB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = type metadata accessor for Section(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  MEMORY[0x28223BE20](v78);
  v17 = &v72 - v16;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v85 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v18, 0, v12, v13, v14, v15);
    v20 = v85;
    v21 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670) + 32);
    v74 = *(v6 + 72);
    v75 = v22;
    v72 = xmmword_26A426390;
    v76 = v11;
    v77 = v8;
    while (1)
    {
      v23 = *(v79 + v75);
      sub_26A10FE48();
      v81 = v20;
      if (v23 == 1)
      {
        sub_26A31C07C();
      }

      else
      {
        sub_26A10FE48();
      }

      sub_26A10FD48();
      v24 = v78;
      v17[*(v78 + 32)] = v23;
      sub_26A10FDF0(v11, type metadata accessor for Section);
      v25 = *(v24 + 28);
      *&v17[v25] = v19;
      sub_26A31BF28();
      v26 = v3;
      v33 = sub_26A0E9A30(v27, v17, v28, v29, v30, v31, v32);
      v82 = v26;

      sub_26A3A25E0(v33, 0, 0, 0);

      sub_26A3A231C(v34, 0x44664F6C6576656CLL, 0xED00006C69617465, 0, v35, v36, v37);

      v38 = *(v17 + 2);
      v39 = *(v38 + 16);
      if (v17[24] == 1)
      {
        if (!v39)
        {
          goto LABEL_12;
        }

        v40 = 1701079400;
      }

      else
      {
        if (!v39)
        {
LABEL_12:

          v43 = 0;
          v42 = 0xE000000000000000;
          goto LABEL_13;
        }

        v40 = 2003789939;
      }

      v83 = v40 | 0x3A6E6F2800000000;
      v84 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v41 = sub_26A12CBBC(v38);
      MEMORY[0x26D65BA70](v41);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v43 = v83;
      v42 = v84;
LABEL_13:
      v44 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v44 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v80 = v18;
        v45 = *&v17[v25];
        v46 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A166DA4(0, *(v45 + 16) + 1, 1, v45);
          v45 = v69;
        }

        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_26A166DA4(v47 > 1, v48 + 1, 1, v45);
          v45 = v70;
        }

        *(v45 + 16) = v48 + 1;
        v49 = v45 + 32 * v48;
        *(v49 + 32) = v72;
        *(v49 + 48) = v43;
        *(v49 + 56) = v42;

        *&v17[v46] = v45;
        v18 = v80;
      }

      else
      {
      }

      sub_26A0F9448(v50, v51, v52, v53, v54, v55, v56, v57, v72, *(&v72 + 1), v73, v74, v75);
      v59 = v58;
      v61 = v60;
      sub_26A0E48F0(v17, &qword_28036CC48, &unk_26A43D740);
      v20 = v81;
      v85 = v81;
      v67 = *(v81 + 16);
      v66 = *(v81 + 24);
      v19 = MEMORY[0x277D84F90];
      if (v67 >= v66 >> 1)
      {
        sub_26A10D50C(v66 > 1, v67 + 1, 1, v62, v63, v64, v65);
        v20 = v85;
      }

      *(v20 + 16) = v67 + 1;
      v68 = v20 + 16 * v67;
      *(v68 + 32) = v59;
      *(v68 + 40) = v61;
      v21 += v74;
      --v18;
      v3 = v82;
      v11 = v76;
      if (!v18)
      {
        return v20;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0EBFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v28 = MEMORY[0x277D84F90];
  sub_26A10D50C(0, v9, 0, a4, a5, a6, a7);
  v10 = v28;
  v12 = *(type metadata accessor for TableRow(0) - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  while (1)
  {
    v15 = sub_26A10BA20(v13, a2);
    if (v8)
    {
      break;
    }

    v21 = v15;
    v22 = v16;
    v8 = 0;
    v24 = *(v28 + 16);
    v23 = *(v28 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_26A10D50C(v23 > 1, v24 + 1, 1, v17, v18, v19, v20);
    }

    *(v28 + 16) = v24 + 1;
    v25 = v28 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    v13 += v14;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A0EC124(uint64_t a1, uint64_t a2)
{
  v208 = a2;
  v4 = type metadata accessor for StandardPlayerButton(0);
  MEMORY[0x28223BE20](v4 - 8);
  v186 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v6 - 8);
  v190 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  MEMORY[0x28223BE20](v185);
  v207 = &v176 - v8;
  v9 = type metadata accessor for CustomCanvas(0);
  MEMORY[0x28223BE20](v9 - 8);
  v184 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v176 - v12;
  MEMORY[0x28223BE20](v13);
  v193 = &v176 - v14;
  v15 = type metadata accessor for PlayerButton(0);
  MEMORY[0x28223BE20](v15 - 8);
  v183 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Player.Control(0);
  MEMORY[0x28223BE20](v206);
  v18 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v214 = &v176 - v20;
  v21 = type metadata accessor for _ProtoStandardPlayerButton(0);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v23 - 8);
  v178 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v25);
  v187 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v188 = &v176 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v29 - 8);
  v205 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v196 = &v176 - v32;
  v213 = type metadata accessor for _ProtoPlayer(0);
  MEMORY[0x28223BE20](v213);
  v34 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v192 = &v176 - v36;
  v37 = type metadata accessor for Player(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8);
  v204 = &v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v176 - v41;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  MEMORY[0x28223BE20](v203);
  v48 = &v176 - v47;
  v49 = *(a1 + 16);
  if (!v49)
  {
    return MEMORY[0x277D84F90];
  }

  v177 = v2;
  v219 = MEMORY[0x277D84F90];
  v212 = v49;
  sub_26A10D50C(0, v49, 0, v43, v44, v45, v46);
  v215 = v219;
  v50 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB38, &qword_26A426488) + 32);
  v182 = 0x800000026A446720;
  v181 = 0x800000026A446740;
  v199 = *(v38 + 72);
  v195 = xmmword_26A4263C0;
  v194 = xmmword_26A4263B0;
  v180 = xmmword_26A4263A0;
  v197 = v18;
  v201 = v34;
  v202 = v25;
  v209 = v42;
  v211 = v48;
  while (2)
  {
    v51 = *(v208 + v200);
    v210 = v50;
    sub_26A10FE48();
    if (v51 != 1)
    {
      v54 = v18;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v52 = 1;
    if (!__swift_getEnumTagSinglePayload(v34, 1, v25))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v187, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v188, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v52 = 0;
          goto LABEL_13;
        }

        v56 = v179;
        sub_26A10FD48();
        sub_26A2917A8(v196);
        sub_26A10FDF0(v56, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v55 = v178;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v196);
        sub_26A10FDF0(v55, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v54 = v18;
    __swift_storeEnumTagSinglePayload(v196, v52, 1, v25);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v42 = v209;
LABEL_14:
    v57 = v211;
    sub_26A10FD48();
    v58 = v203;
    v57[*(v203 + 32)] = v51;
    sub_26A10FDF0(v42, type metadata accessor for Player);
    v59 = MEMORY[0x277D84F90];
    v60 = *(v58 + 28);
    *&v57[v60] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v18 = v54;
    sub_26A10FE48();
    v61 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v64 = v211;
    switch(v61)
    {
      case 1:
        v68 = v193;
        sub_26A10FD48();
        v69 = v189;
        sub_26A10FE48();
        v70 = v68[64];
        v191 = v60;
        if (v70)
        {
          sub_26A10FE48();
        }

        else
        {
          v74 = *(v69 + 64);
          v75 = v190;
          sub_26A10FE48();
          if ((v74 & 1) == 0)
          {

            strcpy(v75, "SystemPlugin");
            v75[13] = 0;
            *(v75 + 7) = -5120;

            *(v75 + 2) = 0x6C6F686563616C50;
            *(v75 + 3) = 0xEB00000000726564;

            sub_26A28E6C8();
            v77 = v76;
            v79 = v78;
            sub_26A0E4784(*(v190 + 4), *(v190 + 5));
            *(v190 + 4) = v77;
            *(v190 + 5) = v79;
          }

          sub_26A10FD48();
          v69 = v189;
        }

        v80 = v207;
        sub_26A10FD48();
        v81 = v185;
        v80[*(v185 + 32)] = v70 ^ 1;
        sub_26A10FDF0(v69, type metadata accessor for CustomCanvas);
        v82 = *(v81 + 28);
        *&v80[v82] = v59;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v84, v176, v177);

        v85 = swift_getKeyPath();
        sub_26A0F7514(v85, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v86, v176, v177);

        v87 = *(v80 + 4);
        v88 = *(v80 + 5);
        v217 = 0;
        v218 = 0xE000000000000000;
        sub_26A0E45C0(v87, v88);
        sub_26A0E45C0(v87, v88);
        sub_26A424EF4();

        v217 = 0x202A2F2861746144;
        v218 = 0xE800000000000000;
        v216 = MEMORY[0x26D65B520](v87, v88);
        v89 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v89);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v91 = v217;
        v90 = v218;
        v198 = v82;
        v92 = *&v80[v82];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v92 + 16) + 1, 1, v92);
          v92 = v171;
        }

        v94 = *(v92 + 16);
        v93 = *(v92 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_26A16822C(v93 > 1, v94 + 1, 1, v92);
          v92 = v172;
        }

        sub_26A0E4784(v87, v88);
        *(v92 + 16) = v94 + 1;
        v95 = v92 + 32 * v94;
        *(v95 + 32) = v180;
        *(v95 + 48) = v91;
        *(v95 + 56) = v90;
        sub_26A0E4784(v87, v88);
        v96 = v207;
        v97 = v198;
        *&v207[v198] = v92;
        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v176, v177);

        if (v96[65])
        {
          v100 = 1702195828;
        }

        else
        {
          v100 = 0x65736C6166;
        }

        if (v96[65])
        {
          v101 = 0xE400000000000000;
        }

        else
        {
          v101 = 0xE500000000000000;
        }

        v102 = *&v96[v97];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = v173;
        }

        v18 = v197;
        v59 = MEMORY[0x277D84F90];
        v60 = v191;
        v104 = *(v102 + 16);
        v103 = *(v102 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_26A16822C(v103 > 1, v104 + 1, 1, v102);
          v102 = v174;
        }

        *(v102 + 16) = v104 + 1;
        v105 = (v102 + 32 * v104);
        v105[4] = 0xD000000000000011;
        v105[5] = v182;
        v105[6] = v100;
        v105[7] = v101;
        v106 = v207;
        *&v207[v198] = v102;
        if (v106[66])
        {
          v107 = 1702195828;
        }

        else
        {
          v107 = 0x65736C6166;
        }

        if (v106[66])
        {
          v108 = 0xE400000000000000;
        }

        else
        {
          v108 = 0xE500000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        v117 = *(v102 + 16);
        v116 = *(v102 + 24);
        if (v117 >= v116 >> 1)
        {
          sub_26A16822C(v116 > 1, v117 + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        *(v102 + 16) = v117 + 1;
        v118 = (v102 + 32 * v117);
        v119 = v181;
        v118[4] = 0xD000000000000017;
        v118[5] = v119;
        v118[6] = v107;
        v118[7] = v108;
        v120 = v207;
        *&v207[v198] = v102;
        sub_26A1018D0(isUniquelyReferenced_nonNull_native, v110, v111, v112, v113, v114, v115);
        countAndFlagsBits = v121;
        object = v122;
        sub_26A0E48F0(v120, &qword_28036CD58, &unk_26A437B60);
        v72 = type metadata accessor for CustomCanvas;
        v73 = v193;
        goto LABEL_48;
      case 2:
        v65 = v186;
        sub_26A10FD48();
        v71 = StandardPlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v71._countAndFlagsBits;
        object = v71._object;
        v67 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v65 = v183;
        sub_26A10FD48();
        v66 = PlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v66._countAndFlagsBits;
        object = v66._object;
        v67 = type metadata accessor for PlayerButton;
LABEL_19:
        v72 = v67;
        v73 = v65;
LABEL_48:
        sub_26A10FDF0(v73, v72);
LABEL_49:
        sub_26A10FDF0(v214, type metadata accessor for Player.Control);
        v123 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v123 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v123)
        {

          sub_26A166E7C(0, 1, 1, v59);
          v125 = v124;
          v127 = *(v124 + 16);
          v126 = *(v124 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_26A166E7C(v126 > 1, v127 + 1, 1, v124);
            v125 = v166;
          }

          *(v125 + 16) = v127 + 1;
          v128 = (v125 + 32 * v127);
          v128[4] = 0;
          v128[5] = 0;
          v128[6] = countAndFlagsBits;
          v128[7] = object;
          *(v64 + v60) = v125;
        }

        else
        {

          v125 = v59;
        }

        v129 = *(v64 + *(v213 + 20));
        if (v129[2])
        {
        }

        else
        {
          v129 = &unk_287B01568;
        }

        v130 = sub_26A12CBBC(v129);
        v132 = v131;
        v133 = HIBYTE(v131) & 0xF;
        if ((v131 & 0x2000000000000000) == 0)
        {
          v133 = v130 & 0xFFFFFFFFFFFFLL;
        }

        if (v133)
        {
          v134 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v167;
          }

          v136 = *(v125 + 16);
          v135 = *(v125 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_26A166E7C(v135 > 1, v136 + 1, 1, v125);
            v125 = v168;
          }

          *(v125 + 16) = v136 + 1;
          v144 = v125 + 32 * v136;
          *(v144 + 32) = v194;
          *(v144 + 48) = v134;
          *(v144 + 56) = v132;
          *(v64 + v60) = v125;
        }

        else
        {
        }

        v145 = (v64 + *(v213 + 24));
        v146 = *v145;
        v147 = v145[1];
        v148 = HIBYTE(v147) & 0xF;
        if ((v147 & 0x2000000000000000) == 0)
        {
          v148 = v146 & 0xFFFFFFFFFFFFLL;
        }

        v34 = v201;
        if (v148)
        {
          v217 = 34;
          v218 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v146, v147);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v149 = v217;
          v150 = v218;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v169;
          }

          v152 = *(v125 + 16);
          v151 = *(v125 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_26A166E7C(v151 > 1, v152 + 1, 1, v125);
            v125 = v170;
          }

          *(v125 + 16) = v152 + 1;
          v153 = v125 + 32 * v152;
          *(v153 + 32) = v195;
          *(v153 + 48) = v149;
          *(v153 + 56) = v150;

          *(v64 + v60) = v125;
          v18 = v197;
        }

        sub_26A0F99B8(v137, v138, v139, v140, v141, v142, v143);
        v155 = v154;
        v157 = v156;
        sub_26A0E48F0(v64, &qword_28036CB60, &qword_26A426578);
        v162 = v215;
        v219 = v215;
        v164 = *(v215 + 16);
        v163 = *(v215 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_26A10D50C(v163 > 1, v164 + 1, 1, v158, v159, v160, v161);
          v162 = v219;
        }

        *(v162 + 16) = v164 + 1;
        v215 = v162;
        v165 = v162 + 16 * v164;
        *(v165 + 32) = v155;
        *(v165 + 40) = v157;
        v42 = v209;
        v50 = v210 + v199;
        --v212;
        v25 = v202;
        if (v212)
        {
          continue;
        }

        result = v215;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0ED544(uint64_t a1, uint64_t a2)
{
  v208 = a2;
  v4 = type metadata accessor for StandardPlayerButton(0);
  MEMORY[0x28223BE20](v4 - 8);
  v186 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v6 - 8);
  v190 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  MEMORY[0x28223BE20](v185);
  v207 = &v176 - v8;
  v9 = type metadata accessor for CustomCanvas(0);
  MEMORY[0x28223BE20](v9 - 8);
  v184 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v176 - v12;
  MEMORY[0x28223BE20](v13);
  v193 = &v176 - v14;
  v15 = type metadata accessor for PlayerButton(0);
  MEMORY[0x28223BE20](v15 - 8);
  v183 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Player.Control(0);
  MEMORY[0x28223BE20](v206);
  v18 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v214 = &v176 - v20;
  v21 = type metadata accessor for _ProtoStandardPlayerButton(0);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v23 - 8);
  v178 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v25);
  v187 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v188 = &v176 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v29 - 8);
  v205 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v196 = &v176 - v32;
  v213 = type metadata accessor for _ProtoPlayer(0);
  MEMORY[0x28223BE20](v213);
  v34 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v192 = &v176 - v36;
  v37 = type metadata accessor for Player(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8);
  v204 = &v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v176 - v41;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  MEMORY[0x28223BE20](v203);
  v48 = &v176 - v47;
  v49 = *(a1 + 16);
  if (!v49)
  {
    return MEMORY[0x277D84F90];
  }

  v177 = v2;
  v219 = MEMORY[0x277D84F90];
  v212 = v49;
  sub_26A10D50C(0, v49, 0, v43, v44, v45, v46);
  v215 = v219;
  v50 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD68, &unk_26A4268C0) + 32);
  v182 = 0x800000026A446720;
  v181 = 0x800000026A446740;
  v199 = *(v38 + 72);
  v195 = xmmword_26A4263C0;
  v194 = xmmword_26A4263B0;
  v180 = xmmword_26A4263A0;
  v197 = v18;
  v201 = v34;
  v202 = v25;
  v209 = v42;
  v211 = v48;
  while (2)
  {
    v51 = *(v208 + v200);
    v210 = v50;
    sub_26A10FE48();
    if (v51 != 1)
    {
      v54 = v18;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v52 = 1;
    if (!__swift_getEnumTagSinglePayload(v34, 1, v25))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v187, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v188, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v52 = 0;
          goto LABEL_13;
        }

        v56 = v179;
        sub_26A10FD48();
        sub_26A2917A8(v196);
        sub_26A10FDF0(v56, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v55 = v178;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v196);
        sub_26A10FDF0(v55, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v54 = v18;
    __swift_storeEnumTagSinglePayload(v196, v52, 1, v25);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v42 = v209;
LABEL_14:
    v57 = v211;
    sub_26A10FD48();
    v58 = v203;
    v57[*(v203 + 32)] = v51;
    sub_26A10FDF0(v42, type metadata accessor for Player);
    v59 = MEMORY[0x277D84F90];
    v60 = *(v58 + 28);
    *&v57[v60] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v18 = v54;
    sub_26A10FE48();
    v61 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v64 = v211;
    switch(v61)
    {
      case 1:
        v68 = v193;
        sub_26A10FD48();
        v69 = v189;
        sub_26A10FE48();
        v70 = v68[64];
        v191 = v60;
        if (v70)
        {
          sub_26A10FE48();
        }

        else
        {
          v74 = *(v69 + 64);
          v75 = v190;
          sub_26A10FE48();
          if ((v74 & 1) == 0)
          {

            strcpy(v75, "SystemPlugin");
            v75[13] = 0;
            *(v75 + 7) = -5120;

            *(v75 + 2) = 0x6C6F686563616C50;
            *(v75 + 3) = 0xEB00000000726564;

            sub_26A28E6C8();
            v77 = v76;
            v79 = v78;
            sub_26A0E4784(*(v190 + 4), *(v190 + 5));
            *(v190 + 4) = v77;
            *(v190 + 5) = v79;
          }

          sub_26A10FD48();
          v69 = v189;
        }

        v80 = v207;
        sub_26A10FD48();
        v81 = v185;
        v80[*(v185 + 32)] = v70 ^ 1;
        sub_26A10FDF0(v69, type metadata accessor for CustomCanvas);
        v82 = *(v81 + 28);
        *&v80[v82] = v59;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v84, v176, v177);

        v85 = swift_getKeyPath();
        sub_26A0F7514(v85, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v86, v176, v177);

        v87 = *(v80 + 4);
        v88 = *(v80 + 5);
        v217 = 0;
        v218 = 0xE000000000000000;
        sub_26A0E45C0(v87, v88);
        sub_26A0E45C0(v87, v88);
        sub_26A424EF4();

        v217 = 0x202A2F2861746144;
        v218 = 0xE800000000000000;
        v216 = MEMORY[0x26D65B520](v87, v88);
        v89 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v89);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v91 = v217;
        v90 = v218;
        v198 = v82;
        v92 = *&v80[v82];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v92 + 16) + 1, 1, v92);
          v92 = v171;
        }

        v94 = *(v92 + 16);
        v93 = *(v92 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_26A16822C(v93 > 1, v94 + 1, 1, v92);
          v92 = v172;
        }

        sub_26A0E4784(v87, v88);
        *(v92 + 16) = v94 + 1;
        v95 = v92 + 32 * v94;
        *(v95 + 32) = v180;
        *(v95 + 48) = v91;
        *(v95 + 56) = v90;
        sub_26A0E4784(v87, v88);
        v96 = v207;
        v97 = v198;
        *&v207[v198] = v92;
        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v176, v177);

        if (v96[65])
        {
          v100 = 1702195828;
        }

        else
        {
          v100 = 0x65736C6166;
        }

        if (v96[65])
        {
          v101 = 0xE400000000000000;
        }

        else
        {
          v101 = 0xE500000000000000;
        }

        v102 = *&v96[v97];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = v173;
        }

        v18 = v197;
        v59 = MEMORY[0x277D84F90];
        v60 = v191;
        v104 = *(v102 + 16);
        v103 = *(v102 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_26A16822C(v103 > 1, v104 + 1, 1, v102);
          v102 = v174;
        }

        *(v102 + 16) = v104 + 1;
        v105 = (v102 + 32 * v104);
        v105[4] = 0xD000000000000011;
        v105[5] = v182;
        v105[6] = v100;
        v105[7] = v101;
        v106 = v207;
        *&v207[v198] = v102;
        if (v106[66])
        {
          v107 = 1702195828;
        }

        else
        {
          v107 = 0x65736C6166;
        }

        if (v106[66])
        {
          v108 = 0xE400000000000000;
        }

        else
        {
          v108 = 0xE500000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        v117 = *(v102 + 16);
        v116 = *(v102 + 24);
        if (v117 >= v116 >> 1)
        {
          sub_26A16822C(v116 > 1, v117 + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        *(v102 + 16) = v117 + 1;
        v118 = (v102 + 32 * v117);
        v119 = v181;
        v118[4] = 0xD000000000000017;
        v118[5] = v119;
        v118[6] = v107;
        v118[7] = v108;
        v120 = v207;
        *&v207[v198] = v102;
        sub_26A1018D0(isUniquelyReferenced_nonNull_native, v110, v111, v112, v113, v114, v115);
        countAndFlagsBits = v121;
        object = v122;
        sub_26A0E48F0(v120, &qword_28036CD58, &unk_26A437B60);
        v72 = type metadata accessor for CustomCanvas;
        v73 = v193;
        goto LABEL_48;
      case 2:
        v65 = v186;
        sub_26A10FD48();
        v71 = StandardPlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v71._countAndFlagsBits;
        object = v71._object;
        v67 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v65 = v183;
        sub_26A10FD48();
        v66 = PlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v66._countAndFlagsBits;
        object = v66._object;
        v67 = type metadata accessor for PlayerButton;
LABEL_19:
        v72 = v67;
        v73 = v65;
LABEL_48:
        sub_26A10FDF0(v73, v72);
LABEL_49:
        sub_26A10FDF0(v214, type metadata accessor for Player.Control);
        v123 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v123 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v123)
        {

          sub_26A166E7C(0, 1, 1, v59);
          v125 = v124;
          v127 = *(v124 + 16);
          v126 = *(v124 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_26A166E7C(v126 > 1, v127 + 1, 1, v124);
            v125 = v166;
          }

          *(v125 + 16) = v127 + 1;
          v128 = (v125 + 32 * v127);
          v128[4] = 0;
          v128[5] = 0;
          v128[6] = countAndFlagsBits;
          v128[7] = object;
          *(v64 + v60) = v125;
        }

        else
        {

          v125 = v59;
        }

        v129 = *(v64 + *(v213 + 20));
        if (v129[2])
        {
        }

        else
        {
          v129 = &unk_287B015C8;
        }

        v130 = sub_26A12CBBC(v129);
        v132 = v131;
        v133 = HIBYTE(v131) & 0xF;
        if ((v131 & 0x2000000000000000) == 0)
        {
          v133 = v130 & 0xFFFFFFFFFFFFLL;
        }

        if (v133)
        {
          v134 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v167;
          }

          v136 = *(v125 + 16);
          v135 = *(v125 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_26A166E7C(v135 > 1, v136 + 1, 1, v125);
            v125 = v168;
          }

          *(v125 + 16) = v136 + 1;
          v144 = v125 + 32 * v136;
          *(v144 + 32) = v194;
          *(v144 + 48) = v134;
          *(v144 + 56) = v132;
          *(v64 + v60) = v125;
        }

        else
        {
        }

        v145 = (v64 + *(v213 + 24));
        v146 = *v145;
        v147 = v145[1];
        v148 = HIBYTE(v147) & 0xF;
        if ((v147 & 0x2000000000000000) == 0)
        {
          v148 = v146 & 0xFFFFFFFFFFFFLL;
        }

        v34 = v201;
        if (v148)
        {
          v217 = 34;
          v218 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v146, v147);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v149 = v217;
          v150 = v218;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v169;
          }

          v152 = *(v125 + 16);
          v151 = *(v125 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_26A166E7C(v151 > 1, v152 + 1, 1, v125);
            v125 = v170;
          }

          *(v125 + 16) = v152 + 1;
          v153 = v125 + 32 * v152;
          *(v153 + 32) = v195;
          *(v153 + 48) = v149;
          *(v153 + 56) = v150;

          *(v64 + v60) = v125;
          v18 = v197;
        }

        sub_26A0F99B8(v137, v138, v139, v140, v141, v142, v143);
        v155 = v154;
        v157 = v156;
        sub_26A0E48F0(v64, &qword_28036CB60, &qword_26A426578);
        v162 = v215;
        v219 = v215;
        v164 = *(v215 + 16);
        v163 = *(v215 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_26A10D50C(v163 > 1, v164 + 1, 1, v158, v159, v160, v161);
          v162 = v219;
        }

        *(v162 + 16) = v164 + 1;
        v215 = v162;
        v165 = v162 + 16 * v164;
        *(v165 + 32) = v155;
        *(v165 + 40) = v157;
        v42 = v209;
        v50 = v210 + v199;
        --v212;
        v25 = v202;
        if (v212)
        {
          continue;
        }

        result = v215;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0EE964(uint64_t a1, uint64_t a2)
{
  v208 = a2;
  v4 = type metadata accessor for StandardPlayerButton(0);
  MEMORY[0x28223BE20](v4 - 8);
  v186 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v6 - 8);
  v190 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  MEMORY[0x28223BE20](v185);
  v207 = &v176 - v8;
  v9 = type metadata accessor for CustomCanvas(0);
  MEMORY[0x28223BE20](v9 - 8);
  v184 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v176 - v12;
  MEMORY[0x28223BE20](v13);
  v193 = &v176 - v14;
  v15 = type metadata accessor for PlayerButton(0);
  MEMORY[0x28223BE20](v15 - 8);
  v183 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Player.Control(0);
  MEMORY[0x28223BE20](v206);
  v18 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v214 = &v176 - v20;
  v21 = type metadata accessor for _ProtoStandardPlayerButton(0);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v23 - 8);
  v178 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v25);
  v187 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v188 = &v176 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v29 - 8);
  v205 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v196 = &v176 - v32;
  v213 = type metadata accessor for _ProtoPlayer(0);
  MEMORY[0x28223BE20](v213);
  v34 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v192 = &v176 - v36;
  v37 = type metadata accessor for Player(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8);
  v204 = &v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v176 - v41;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  MEMORY[0x28223BE20](v203);
  v48 = &v176 - v47;
  v49 = *(a1 + 16);
  if (!v49)
  {
    return MEMORY[0x277D84F90];
  }

  v177 = v2;
  v219 = MEMORY[0x277D84F90];
  v212 = v49;
  sub_26A10D50C(0, v49, 0, v43, v44, v45, v46);
  v215 = v219;
  v50 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE70, &qword_26A43A8F0) + 32);
  v182 = 0x800000026A446720;
  v181 = 0x800000026A446740;
  v199 = *(v38 + 72);
  v195 = xmmword_26A4263C0;
  v194 = xmmword_26A4263B0;
  v180 = xmmword_26A4263A0;
  v197 = v18;
  v201 = v34;
  v202 = v25;
  v209 = v42;
  v211 = v48;
  while (2)
  {
    v51 = *(v208 + v200);
    v210 = v50;
    sub_26A10FE48();
    if (v51 != 1)
    {
      v54 = v18;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v52 = 1;
    if (!__swift_getEnumTagSinglePayload(v34, 1, v25))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v187, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v188, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v52 = 0;
          goto LABEL_13;
        }

        v56 = v179;
        sub_26A10FD48();
        sub_26A2917A8(v196);
        sub_26A10FDF0(v56, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v55 = v178;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v196);
        sub_26A10FDF0(v55, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v54 = v18;
    __swift_storeEnumTagSinglePayload(v196, v52, 1, v25);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v42 = v209;
LABEL_14:
    v57 = v211;
    sub_26A10FD48();
    v58 = v203;
    v57[*(v203 + 32)] = v51;
    sub_26A10FDF0(v42, type metadata accessor for Player);
    v59 = MEMORY[0x277D84F90];
    v60 = *(v58 + 28);
    *&v57[v60] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v18 = v54;
    sub_26A10FE48();
    v61 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v64 = v211;
    switch(v61)
    {
      case 1:
        v68 = v193;
        sub_26A10FD48();
        v69 = v189;
        sub_26A10FE48();
        v70 = v68[64];
        v191 = v60;
        if (v70)
        {
          sub_26A10FE48();
        }

        else
        {
          v74 = *(v69 + 64);
          v75 = v190;
          sub_26A10FE48();
          if ((v74 & 1) == 0)
          {

            strcpy(v75, "SystemPlugin");
            v75[13] = 0;
            *(v75 + 7) = -5120;

            *(v75 + 2) = 0x6C6F686563616C50;
            *(v75 + 3) = 0xEB00000000726564;

            sub_26A28E6C8();
            v77 = v76;
            v79 = v78;
            sub_26A0E4784(*(v190 + 4), *(v190 + 5));
            *(v190 + 4) = v77;
            *(v190 + 5) = v79;
          }

          sub_26A10FD48();
          v69 = v189;
        }

        v80 = v207;
        sub_26A10FD48();
        v81 = v185;
        v80[*(v185 + 32)] = v70 ^ 1;
        sub_26A10FDF0(v69, type metadata accessor for CustomCanvas);
        v82 = *(v81 + 28);
        *&v80[v82] = v59;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v84, v176, v177);

        v85 = swift_getKeyPath();
        sub_26A0F7514(v85, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v86, v176, v177);

        v87 = *(v80 + 4);
        v88 = *(v80 + 5);
        v217 = 0;
        v218 = 0xE000000000000000;
        sub_26A0E45C0(v87, v88);
        sub_26A0E45C0(v87, v88);
        sub_26A424EF4();

        v217 = 0x202A2F2861746144;
        v218 = 0xE800000000000000;
        v216 = MEMORY[0x26D65B520](v87, v88);
        v89 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v89);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v91 = v217;
        v90 = v218;
        v198 = v82;
        v92 = *&v80[v82];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v92 + 16) + 1, 1, v92);
          v92 = v171;
        }

        v94 = *(v92 + 16);
        v93 = *(v92 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_26A16822C(v93 > 1, v94 + 1, 1, v92);
          v92 = v172;
        }

        sub_26A0E4784(v87, v88);
        *(v92 + 16) = v94 + 1;
        v95 = v92 + 32 * v94;
        *(v95 + 32) = v180;
        *(v95 + 48) = v91;
        *(v95 + 56) = v90;
        sub_26A0E4784(v87, v88);
        v96 = v207;
        v97 = v198;
        *&v207[v198] = v92;
        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v176, v177);

        if (v96[65])
        {
          v100 = 1702195828;
        }

        else
        {
          v100 = 0x65736C6166;
        }

        if (v96[65])
        {
          v101 = 0xE400000000000000;
        }

        else
        {
          v101 = 0xE500000000000000;
        }

        v102 = *&v96[v97];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = v173;
        }

        v18 = v197;
        v59 = MEMORY[0x277D84F90];
        v60 = v191;
        v104 = *(v102 + 16);
        v103 = *(v102 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_26A16822C(v103 > 1, v104 + 1, 1, v102);
          v102 = v174;
        }

        *(v102 + 16) = v104 + 1;
        v105 = (v102 + 32 * v104);
        v105[4] = 0xD000000000000011;
        v105[5] = v182;
        v105[6] = v100;
        v105[7] = v101;
        v106 = v207;
        *&v207[v198] = v102;
        if (v106[66])
        {
          v107 = 1702195828;
        }

        else
        {
          v107 = 0x65736C6166;
        }

        if (v106[66])
        {
          v108 = 0xE400000000000000;
        }

        else
        {
          v108 = 0xE500000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A16822C(0, *(v102 + 16) + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        v117 = *(v102 + 16);
        v116 = *(v102 + 24);
        if (v117 >= v116 >> 1)
        {
          sub_26A16822C(v116 > 1, v117 + 1, 1, v102);
          v102 = isUniquelyReferenced_nonNull_native;
        }

        *(v102 + 16) = v117 + 1;
        v118 = (v102 + 32 * v117);
        v119 = v181;
        v118[4] = 0xD000000000000017;
        v118[5] = v119;
        v118[6] = v107;
        v118[7] = v108;
        v120 = v207;
        *&v207[v198] = v102;
        sub_26A1018D0(isUniquelyReferenced_nonNull_native, v110, v111, v112, v113, v114, v115);
        countAndFlagsBits = v121;
        object = v122;
        sub_26A0E48F0(v120, &qword_28036CD58, &unk_26A437B60);
        v72 = type metadata accessor for CustomCanvas;
        v73 = v193;
        goto LABEL_48;
      case 2:
        v65 = v186;
        sub_26A10FD48();
        v71 = StandardPlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v71._countAndFlagsBits;
        object = v71._object;
        v67 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v65 = v183;
        sub_26A10FD48();
        v66 = PlayerButton.description(redacted:)(v51);
        countAndFlagsBits = v66._countAndFlagsBits;
        object = v66._object;
        v67 = type metadata accessor for PlayerButton;
LABEL_19:
        v72 = v67;
        v73 = v65;
LABEL_48:
        sub_26A10FDF0(v73, v72);
LABEL_49:
        sub_26A10FDF0(v214, type metadata accessor for Player.Control);
        v123 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v123 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v123)
        {

          sub_26A166E7C(0, 1, 1, v59);
          v125 = v124;
          v127 = *(v124 + 16);
          v126 = *(v124 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_26A166E7C(v126 > 1, v127 + 1, 1, v124);
            v125 = v166;
          }

          *(v125 + 16) = v127 + 1;
          v128 = (v125 + 32 * v127);
          v128[4] = 0;
          v128[5] = 0;
          v128[6] = countAndFlagsBits;
          v128[7] = object;
          *(v64 + v60) = v125;
        }

        else
        {

          v125 = v59;
        }

        v129 = *(v64 + *(v213 + 20));
        if (v129[2])
        {
        }

        else
        {
          v129 = &unk_287B01598;
        }

        v130 = sub_26A12CBBC(v129);
        v132 = v131;
        v133 = HIBYTE(v131) & 0xF;
        if ((v131 & 0x2000000000000000) == 0)
        {
          v133 = v130 & 0xFFFFFFFFFFFFLL;
        }

        if (v133)
        {
          v134 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v167;
          }

          v136 = *(v125 + 16);
          v135 = *(v125 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_26A166E7C(v135 > 1, v136 + 1, 1, v125);
            v125 = v168;
          }

          *(v125 + 16) = v136 + 1;
          v144 = v125 + 32 * v136;
          *(v144 + 32) = v194;
          *(v144 + 48) = v134;
          *(v144 + 56) = v132;
          *(v64 + v60) = v125;
        }

        else
        {
        }

        v145 = (v64 + *(v213 + 24));
        v146 = *v145;
        v147 = v145[1];
        v148 = HIBYTE(v147) & 0xF;
        if ((v147 & 0x2000000000000000) == 0)
        {
          v148 = v146 & 0xFFFFFFFFFFFFLL;
        }

        v34 = v201;
        if (v148)
        {
          v217 = 34;
          v218 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v146, v147);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v149 = v217;
          v150 = v218;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A166E7C(0, *(v125 + 16) + 1, 1, v125);
            v125 = v169;
          }

          v152 = *(v125 + 16);
          v151 = *(v125 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_26A166E7C(v151 > 1, v152 + 1, 1, v125);
            v125 = v170;
          }

          *(v125 + 16) = v152 + 1;
          v153 = v125 + 32 * v152;
          *(v153 + 32) = v195;
          *(v153 + 48) = v149;
          *(v153 + 56) = v150;

          *(v64 + v60) = v125;
          v18 = v197;
        }

        sub_26A0F99B8(v137, v138, v139, v140, v141, v142, v143);
        v155 = v154;
        v157 = v156;
        sub_26A0E48F0(v64, &qword_28036CB60, &qword_26A426578);
        v162 = v215;
        v219 = v215;
        v164 = *(v215 + 16);
        v163 = *(v215 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_26A10D50C(v163 > 1, v164 + 1, 1, v158, v159, v160, v161);
          v162 = v219;
        }

        *(v162 + 16) = v164 + 1;
        v215 = v162;
        v165 = v162 + 16 * v164;
        *(v165 + 32) = v155;
        *(v165 + 40) = v157;
        v42 = v209;
        v50 = v210 + v199;
        --v212;
        v25 = v202;
        if (v212)
        {
          continue;
        }

        result = v215;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0EFD84(uint64_t a1)
{
  v3 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v3);
  v111 = (&v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v110 = (&v104 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v104 - v10;
  MEMORY[0x28223BE20](v11);
  v108 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v104 - v19;
  MEMORY[0x28223BE20](v20);
  v118 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v125 = &v104 - v23;
  v24 = type metadata accessor for VisualProperty(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  MEMORY[0x28223BE20](v117);
  v36 = &v104 - v35;
  v37 = *(a1 + 16);
  if (v37)
  {
    v105 = v1;
    v128 = MEMORY[0x277D84F90];
    v123 = v37;
    sub_26A10D50C(0, v37, 0, v31, v32, v33, v34);
    v38 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    result = v128;
    v113 = *(v25 + 72);
    v112 = xmmword_26A4263D0;
    v107 = xmmword_26A4263F0;
    v106 = xmmword_26A4263E0;
    v127 = v3;
    v115 = v27;
    v116 = v17;
    v114 = v30;
    while (1)
    {
      v122 = result;
      sub_26A10FE48();
      v40 = *(v38 + 9) ^ 1;
      if (v40)
      {
        _ProtoVisualProperty.redactedProto.getter();
      }

      else
      {
        sub_26A10FE48();
      }

      sub_26A10FD48();
      v41 = v117;
      v36[*(v117 + 32)] = v40 & 1;
      sub_26A10FDF0(v30, type metadata accessor for VisualProperty);
      v42 = *(v41 + 28);
      *&v36[v42] = MEMORY[0x277D84F90];
      KeyPath = swift_getKeyPath();
      sub_26A0F73D8(KeyPath, 0, 0, sub_26A0F11EC, &qword_28036CCA0, &unk_26A426730, sub_26A16807C, v44, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1));

      if (v36[9])
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v36[9])
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      v47 = *&v36[v42];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A16807C(0, *(v47 + 16) + 1, 1, v47);
        v47 = v98;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26A16807C(v49 > 1, v50 + 1, 1, v47);
        v47 = v99;
      }

      *(v47 + 16) = v50 + 1;
      v51 = v47 + 32 * v50;
      *(v51 + 32) = v112;
      *(v51 + 48) = v45;
      *(v51 + 56) = v46;
      v124 = v42;
      *&v36[v42] = v47;
      type metadata accessor for _ProtoVisualProperty(0);
      v52 = v119;
      sub_26A10FD9C();
      v53 = 1;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v127);
      sub_26A0E48F0(v52, &off_28036C7C0, &off_26A427400);
      if (EnumTagSinglePayload != 1)
      {
        v55 = v108;
        sub_26A10FD9C();
        v56 = v127;
        if (__swift_getEnumTagSinglePayload(v55, 1, v127) == 1)
        {
          v57 = v110;
          *v110 = MEMORY[0x277D84F90];
          v57[1] = 0;
          v57[2] = 0xE000000000000000;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v55, 1, v56) != 1)
          {
            sub_26A0E48F0(v55, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        sub_26A10FD48();
        v53 = 0;
      }

      v58 = type metadata accessor for ActionProperty(0);
      __swift_storeEnumTagSinglePayload(v125, v53, 1, v58);
      v59 = v118;
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v59, 1, v58) == 1)
      {
        sub_26A0E48F0(v59, &qword_28036CB18, &unk_26A427670);
      }

      else
      {
        v60 = ActionProperty.description(redacted:)(v121 & 1);
        sub_26A10FDF0(v59, type metadata accessor for ActionProperty);
        v61 = (v60._object >> 56) & 0xF;
        if ((v60._object & 0x2000000000000000) == 0)
        {
          v61 = v60._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          v62 = *&v36[v124];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A16807C(0, *(v62 + 16) + 1, 1, v62);
            v62 = v100;
          }

          v64 = *(v62 + 16);
          v63 = *(v62 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_26A16807C(v63 > 1, v64 + 1, 1, v62);
            v62 = v101;
          }

          *(v62 + 16) = v64 + 1;
          v65 = v62 + 32 * v64;
          *(v65 + 32) = v106;
          *(v65 + 48) = v60;
          *&v36[v124] = v62;
        }

        else
        {
        }
      }

      sub_26A0E48F0(v125, &qword_28036CB18, &unk_26A427670);
      v66 = v120;
      sub_26A10FD9C();
      v67 = 1;
      v68 = __swift_getEnumTagSinglePayload(v66, 1, v127);
      sub_26A0E48F0(v66, &off_28036C7C0, &off_26A427400);
      v69 = v116;
      if (v68 != 1)
      {
        v70 = v109;
        sub_26A10FD9C();
        v71 = v127;
        if (__swift_getEnumTagSinglePayload(v70, 1, v127) == 1)
        {
          v72 = v111;
          *v111 = MEMORY[0x277D84F90];
          v72[1] = 0;
          v72[2] = 0xE000000000000000;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v70, 1, v71) != 1)
          {
            sub_26A0E48F0(v70, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        sub_26A10FD48();
        v67 = 0;
      }

      __swift_storeEnumTagSinglePayload(v126, v67, 1, v58);
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v69, 1, v58) == 1)
      {
        sub_26A0E48F0(v69, &qword_28036CB18, &unk_26A427670);
      }

      else
      {
        v73 = ActionProperty.description(redacted:)(v121 & 1);
        sub_26A10FDF0(v69, type metadata accessor for ActionProperty);
        v74 = (v73._object >> 56) & 0xF;
        if ((v73._object & 0x2000000000000000) == 0)
        {
          v74 = v73._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          v75 = *&v36[v124];
          v76 = swift_isUniquelyReferenced_nonNull_native();
          v30 = v114;
          if ((v76 & 1) == 0)
          {
            sub_26A16807C(0, *(v75 + 16) + 1, 1, v75);
            v75 = v102;
          }

          v78 = *(v75 + 16);
          v77 = *(v75 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_26A16807C(v77 > 1, v78 + 1, 1, v75);
            v75 = v103;
          }

          *(v75 + 16) = v78 + 1;
          v79 = v75 + 32 * v78;
          *(v79 + 32) = v107;
          *(v79 + 48) = v73;
          *&v36[v124] = v75;
          goto LABEL_51;
        }
      }

      v30 = v114;
LABEL_51:
      v80 = sub_26A0E48F0(v126, &qword_28036CB18, &unk_26A427670);
      sub_26A100DE8(v80, v81, v82, v83, v84, v85, v86);
      v88 = v87;
      v90 = v89;
      sub_26A0E48F0(v36, &qword_28036CCA0, &unk_26A426730);
      result = v122;
      v128 = v122;
      v96 = *(v122 + 16);
      v95 = *(v122 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_26A10D50C(v95 > 1, v96 + 1, 1, v91, v92, v93, v94);
        result = v128;
      }

      *(result + 16) = v96 + 1;
      v97 = result + 16 * v96;
      *(v97 + 32) = v88;
      *(v97 + 40) = v90;
      v38 += v113;
      if (!--v123)
      {
        return result;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0F08E0(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v83 - v5;
  v7 = type metadata accessor for _ProtoCommand(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD90, &qword_26A4268F0);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v83 - v13;
  v14 = type metadata accessor for ActionElement(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  MEMORY[0x28223BE20](v93);
  v26 = &v83 - v25;
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v84 = v2;
  v100 = MEMORY[0x277D84F90];
  v28 = v15;
  v97 = v27;
  sub_26A10D50C(0, v27, 0, v21, v22, v23, v24);
  v29 = v100;
  v30 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD88, &unk_26A4268E0) + 32);
  v88 = *(v28 + 72);
  v89 = v31;
  v85 = xmmword_26A4263B0;
  v87 = v6;
  v91 = v17;
  v92 = v9;
  v90 = v20;
  do
  {
    v32 = *(v95 + v89);
    sub_26A10FE48();
    v96 = v29;
    if (v32 == 1)
    {
      _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
    }

    else
    {
      sub_26A10FE48();
    }

    sub_26A10FD48();
    v33 = v93;
    v26[*(v93 + 32)] = v32;
    sub_26A10FDF0(v20, type metadata accessor for ActionElement);
    v99 = *(v33 + 28);
    *&v26[v99] = MEMORY[0x277D84F90];
    type metadata accessor for _ProtoActionElement(0);
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      v34 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v34);
      v9[*(v7 + 20)] = 0;
      v9[*(v7 + 24)] = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_26A0E48F0(v6, &qword_28036C868, &qword_26A42D090);
      }
    }

    else
    {
      sub_26A10FD48();
    }

    v35 = v98;
    sub_26A3212CC();
    v36 = type metadata accessor for Command(0);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    v37 = v94;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
    {
      sub_26A0E48F0(v37, &qword_28036CD90, &qword_26A4268F0);
    }

    else
    {
      v38 = Command.description.getter();
      v40 = v39;
      sub_26A10FDF0(v37, type metadata accessor for Command);
      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        sub_26A167FEC(0, 1, 1, MEMORY[0x277D84F90]);
        v43 = v42;
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_26A167FEC(v44 > 1, v45 + 1, 1, v42);
          v43 = v81;
        }

        *(v43 + 16) = v45 + 1;
        v46 = (v43 + 32 * v45);
        v46[4] = 0;
        v46[5] = 0;
        v46[6] = v38;
        v46[7] = v40;
        *&v26[v99] = v43;
      }

      else
      {
      }
    }

    sub_26A0E48F0(v98, &qword_28036CD90, &qword_26A4268F0);
    KeyPath = swift_getKeyPath();
    sub_26A0F7260(KeyPath, 0x6D656C4574786574, 0xEC00000073746E65, &qword_28036CD98, &qword_26A4268F8, sub_26A167FEC, v48, v49, v83, v84, v85, *(&v85 + 1), v86, v87);

    v50 = *(v26 + 1);
    if (v50[2])
    {
    }

    else
    {
      v50 = &unk_287B01470;
    }

    v51 = v7;
    v52 = sub_26A12CBBC(v50);
    v54 = v53;
    v55 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = v52;
      v57 = *&v26[v99];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A167FEC(0, *(v57 + 16) + 1, 1, v57);
        v57 = v79;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_26A167FEC(v58 > 1, v59 + 1, 1, v57);
        v57 = v80;
      }

      *(v57 + 16) = v59 + 1;
      v67 = v57 + 32 * v59;
      *(v67 + 32) = v85;
      *(v67 + 48) = v56;
      *(v67 + 56) = v54;
      *&v26[v99] = v57;
      v6 = v87;
    }

    else
    {
    }

    sub_26A100A40(v60, v61, v62, v63, v64, v65, v66);
    v69 = v68;
    v71 = v70;
    sub_26A0E48F0(v26, &qword_28036CD98, &qword_26A4268F8);
    v29 = v96;
    v100 = v96;
    v77 = *(v96 + 16);
    v76 = *(v96 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_26A10D50C(v76 > 1, v77 + 1, 1, v72, v73, v74, v75);
      v29 = v100;
    }

    *(v29 + 16) = v77 + 1;
    v78 = v29 + 16 * v77;
    *(v78 + 32) = v69;
    *(v78 + 40) = v71;
    v30 += v88;
    --v97;
    v7 = v51;
    v9 = v92;
    v20 = v90;
  }

  while (v97);
  return v29;
}

uint64_t sub_26A0F1080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v31 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
    v8 = v31;
    v13 = *(a3(0) - 8);
    OUTLINED_FUNCTION_166_0();
    v15 = a1 + v14;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 32);
    v16 = *(v13 + 72);
    do
    {
      v21 = a6(*(a2 + v28));
      v23 = v22;
      v25 = *(v31 + 16);
      v24 = *(v31 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_26A10D50C(v24 > 1, v25 + 1, 1, v17, v18, v19, v20);
      }

      *(v31 + 16) = v25 + 1;
      v26 = v31 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v15 += v16;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26A0F11EC(uint64_t a1, uint64_t a2)
{
  v277 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA8, &unk_26A443C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v225 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  MEMORY[0x28223BE20](v10 - 8);
  v256 = v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v225 - v13;
  v15 = type metadata accessor for _ProtoCoreChart(0);
  MEMORY[0x28223BE20](v15);
  v255 = (v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (v225 - v18);
  v258 = type metadata accessor for _ProtoCoreChartElement(0);
  MEMORY[0x28223BE20](v258);
  v254 = v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB8, &qword_26A426748);
  MEMORY[0x28223BE20](v253);
  v271 = v225 - v21;
  v22 = type metadata accessor for CoreChartElement(0);
  MEMORY[0x28223BE20](v22 - 8);
  v252 = v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v257 = v225 - v25;
  MEMORY[0x28223BE20](v26);
  v265 = v225 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  MEMORY[0x28223BE20](v28 - 8);
  v251 = v225 - v29;
  v250 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v250);
  v249 = v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC8, &qword_26A426758);
  MEMORY[0x28223BE20](v31 - 8);
  v248 = v225 - v32;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD0, &unk_26A426760);
  MEMORY[0x28223BE20](v247);
  v259 = v225 - v33;
  v34 = type metadata accessor for CustomElement(0);
  MEMORY[0x28223BE20](v34 - 8);
  v246 = v225 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v245 = v225 - v37;
  MEMORY[0x28223BE20](v38);
  v269 = v225 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v40 - 8);
  v244 = v225 - v41;
  v243 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v243);
  v242 = v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  MEMORY[0x28223BE20](v43 - 8);
  v241 = v225 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v268 = v225 - v46;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  MEMORY[0x28223BE20](v240);
  v270 = v225 - v47;
  v48 = type metadata accessor for ColorElement(0);
  MEMORY[0x28223BE20](v48 - 8);
  v239 = v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v238 = v225 - v51;
  MEMORY[0x28223BE20](v52);
  v267 = v225 - v53;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  MEMORY[0x28223BE20](v237);
  v236 = v225 - v54;
  v230 = type metadata accessor for ImageElement(0);
  MEMORY[0x28223BE20](v230);
  v229 = v225 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v235 = v225 - v57;
  MEMORY[0x28223BE20](v58);
  v234 = v225 - v59;
  MEMORY[0x28223BE20](v60);
  v266 = v225 - v61;
  v276 = type metadata accessor for VisualElement(0);
  v62 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v272 = v225 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a1 + 16);
  if (!v68)
  {
    return MEMORY[0x277D84F90];
  }

  v227 = v19;
  v231 = v15;
  v228 = v14;
  v232 = v9;
  v233 = v6;
  v225[1] = v2;
  v282 = MEMORY[0x277D84F90];
  sub_26A10D50C(0, v68, 0, v63, v64, v65, v66);
  v69 = v282;
  v70 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730) + 32);
  v274 = 0x800000026A4463C0;
  v275 = v71;
  v226 = 0x800000026A4464E0;
  v273 = *(v62 + 72);
  v264 = xmmword_26A4263B0;
  v260 = xmmword_26A426400;
  v72 = v270;
  do
  {
    v278 = v69;
    v73 = v274;
    v74 = *(v277 + v275);
    sub_26A10FE48();
    v79 = 0xD000000000000015;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A10FD48();
        v91 = v238;
        sub_26A10FE48();
        sub_26A10FE48();
        sub_26A10FD48();
        v92 = v240;
        *(v72 + *(v240 + 32)) = v74;
        sub_26A10FDF0(v91, type metadata accessor for ColorElement);
        v262 = *(v92 + 28);
        *(v72 + v262) = MEMORY[0x277D84F90];
        type metadata accessor for _ProtoColorElement(0);
        v93 = v244;
        sub_26A10FD9C();
        v94 = v243;
        if (__swift_getEnumTagSinglePayload(v93, 1, v243) == 1)
        {
          v95 = type metadata accessor for _ProtoColor.OneOf_Value(0);
          __swift_storeEnumTagSinglePayload(v242, 1, 1, v95);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v94);
          v97 = v241;
          if (EnumTagSinglePayload != 1)
          {
            sub_26A0E48F0(v93, &qword_28036CCD8, &unk_26A432950);
          }
        }

        else
        {
          sub_26A10FD48();
          v97 = v241;
        }

        v101 = v268;
        sub_26A10FD48();
        v102 = type metadata accessor for Color(0);
        __swift_storeEnumTagSinglePayload(v101, 0, 1, v102);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v97, 1, v102) == 1)
        {
          sub_26A0E48F0(v97, &qword_28036CBA0, &qword_26A4265B0);
          v103 = MEMORY[0x277D84F90];
        }

        else
        {
          v104 = Color.description(redacted:)(v74);
          sub_26A10FDF0(v97, type metadata accessor for Color);
          v105 = (v104._object >> 56) & 0xF;
          if ((v104._object & 0x2000000000000000) == 0)
          {
            v105 = v104._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v105)
          {
            sub_26A168274(0, 1, 1, MEMORY[0x277D84F90]);
            v103 = v106;
            v108 = *(v106 + 16);
            v107 = *(v106 + 24);
            if (v108 >= v107 >> 1)
            {
              sub_26A168274(v107 > 1, v108 + 1, 1, v106);
              v103 = v223;
            }

            *(v103 + 16) = v108 + 1;
            v109 = (v103 + 32 * v108);
            v109[2]._countAndFlagsBits = 0;
            v109[2]._object = 0;
            v109[3] = v104;
            *(v72 + v262) = v103;
          }

          else
          {

            v103 = MEMORY[0x277D84F90];
          }
        }

        sub_26A0E48F0(v268, &qword_28036CBA0, &qword_26A4265B0);
        v165 = *v72;
        if (*(*v72 + 16))
        {
        }

        else
        {
          v165 = &unk_287B013B0;
        }

        v166 = sub_26A12CBBC(v165);
        v168 = v167;
        v169 = HIBYTE(v167) & 0xF;
        if ((v167 & 0x2000000000000000) == 0)
        {
          v169 = v166 & 0xFFFFFFFFFFFFLL;
        }

        if (v169)
        {
          v170 = v166;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A168274(0, *(v103 + 16) + 1, 1, v103);
            v103 = v217;
          }

          v172 = *(v103 + 16);
          v171 = *(v103 + 24);
          if (v172 >= v171 >> 1)
          {
            sub_26A168274(v171 > 1, v172 + 1, 1, v103);
            v103 = v218;
          }

          *(v103 + 16) = v172 + 1;
          v180 = v103 + 32 * v172;
          *(v180 + 32) = v264;
          *(v180 + 48) = v170;
          *(v180 + 56) = v168;
          *(v72 + v262) = v103;
        }

        else
        {
        }

        sub_26A101AA8(v173, v174, v175, v176, v177, v178, v179);
        v79 = v181;
        v73 = v182;
        sub_26A0E48F0(v72, &qword_28036CCE0, &qword_26A426770);
        v133 = type metadata accessor for ColorElement;
        v132 = v267;
        goto LABEL_71;
      case 2u:
        sub_26A10FD48();
        v98 = v245;
        sub_26A10FE48();
        if (v74)
        {
          _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v246);
        }

        else
        {
          sub_26A10FE48();
        }

        v110 = v251;
        v111 = v250;
        v112 = v249;
        v113 = v259;
        sub_26A10FD48();
        v114 = v247;
        *(v113 + *(v247 + 32)) = v74;
        sub_26A10FDF0(v98, type metadata accessor for CustomElement);
        v115 = *(v114 + 28);
        *(v113 + v115) = MEMORY[0x277D84F90];
        type metadata accessor for _ProtoCustomElement(0);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v110, 1, v111) == 1)
        {
          *v112 = 0;
          *(v112 + 1) = 0xE000000000000000;
          *(v112 + 2) = 0;
          *(v112 + 3) = 0xE000000000000000;
          *(v112 + 2) = v260;
          *(v112 + 6) = 0;
          *(v112 + 7) = 0xE000000000000000;
          *(v112 + 32) = 0;
          v112[66] = 0;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v110, 1, v111) != 1)
          {
            sub_26A0E48F0(v110, &qword_28036CCC0, &qword_26A426750);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        v116 = v248;
        sub_26A10FD48();
        v117 = type metadata accessor for CustomCanvas(0);
        __swift_storeEnumTagSinglePayload(v116, 0, 1, v117);
        sub_26A108B38(v116, 0, 0);
        sub_26A0E48F0(v116, &qword_28036CCC8, &qword_26A426758);
        v118 = *v113;
        if (*(*v113 + 16))
        {
        }

        else
        {
          v118 = &unk_287B01410;
        }

        v134 = sub_26A12CBBC(v118);
        v136 = v135;
        v137 = HIBYTE(v135) & 0xF;
        if ((v135 & 0x2000000000000000) == 0)
        {
          v137 = v134 & 0xFFFFFFFFFFFFLL;
        }

        if (v137)
        {
          v138 = v134;
          v262 = v115;
          v139 = *(v113 + v115);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A167F14(0, *(v139 + 16) + 1, 1, v139);
            v139 = v219;
          }

          v141 = *(v139 + 16);
          v140 = *(v139 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_26A167F14(v140 > 1, v141 + 1, 1, v139);
            v139 = v220;
          }

          *(v139 + 16) = v141 + 1;
          v149 = v139 + 32 * v141;
          *(v149 + 32) = v264;
          *(v149 + 48) = v138;
          *(v149 + 56) = v136;
          v113 = v259;
          *&v259[v262] = v139;
        }

        else
        {
        }

        sub_26A1004D8(v142, v143, v144, v145, v146, v147, v148);
        v79 = v150;
        v73 = v151;
        sub_26A0E48F0(v113, &qword_28036CCD0, &unk_26A426760);
        v152 = type metadata accessor for CustomElement;
        v153 = v269;
        goto LABEL_95;
      case 3u:
        v262 = v70;
        sub_26A10FD48();
        v84 = v257;
        sub_26A10FE48();
        v263 = v68;
        if (v74)
        {
          sub_26A10FE48();
          v85 = *(v258 + 24);
          v86 = v228;
          sub_26A10FD9C();
          v87 = v231;
          v88 = __swift_getEnumTagSinglePayload(v86, 1, v231);
          v89 = v256;
          if (v88 == 1)
          {
            v90 = v227;
            *v227 = v260;
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            if (__swift_getEnumTagSinglePayload(v86, 1, v87) != 1)
            {
              sub_26A0E48F0(v86, &qword_28036CCB0, &qword_26A426740);
            }
          }

          else
          {
            v90 = v227;
            sub_26A10FD48();
          }

          sub_26A0E4784(*v90, *(v90 + 1));
          *v90 = v260;
          v154 = v254;
          sub_26A0E48F0(&v254[v85], &qword_28036CCB0, &qword_26A426740);
          sub_26A10FD48();
          __swift_storeEnumTagSinglePayload(&v154[v85], 0, 1, v87);
          sub_26A10FD48();
          v99 = v271;
          v84 = v257;
          v100 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_26A10FE48();
          v89 = v256;
          v87 = v231;
          v99 = v271;
          v100 = MEMORY[0x277D84F90];
        }

        sub_26A10FD48();
        v155 = v253;
        v99[*(v253 + 32)] = v74;
        sub_26A10FDF0(v84, type metadata accessor for CoreChartElement);
        v261 = *(v155 + 28);
        *&v99[v261] = v100;
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v89, 1, v87) == 1)
        {
          *v255 = v260;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v156 = __swift_getEnumTagSinglePayload(v89, 1, v87);
          v157 = v233;
          v158 = v232;
          v70 = v262;
          if (v156 != 1)
          {
            sub_26A0E48F0(v89, &qword_28036CCB0, &qword_26A426740);
          }
        }

        else
        {
          sub_26A10FD48();
          v157 = v233;
          v158 = v232;
          v70 = v262;
        }

        sub_26A10FD48();
        v159 = type metadata accessor for CoreChart(0);
        __swift_storeEnumTagSinglePayload(v158, 0, 1, v159);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v157, 1, v159) != 1)
        {
          v280 = 0;
          v281 = 0xE000000000000000;
          sub_26A424EF4();

          v280 = 0xD000000000000018;
          v281 = v226;
          v162 = *v157;
          v163 = v157[1];
          v68 = v263;
          v164 = 0;
          switch(v163 >> 62)
          {
            case 1uLL:
              LODWORD(v164) = HIDWORD(v162) - v162;
              if (!__OFSUB__(HIDWORD(v162), v162))
              {
                v164 = v164;
                goto LABEL_75;
              }

              __break(1u);
              goto LABEL_103;
            case 2uLL:
              v185 = v162 + 16;
              v184 = *(v162 + 16);
              v183 = *(v185 + 8);
              v186 = __OFSUB__(v183, v184);
              v164 = v183 - v184;
              if (!v186)
              {
                goto LABEL_75;
              }

LABEL_103:
              __break(1u);
              return result;
            case 3uLL:
              goto LABEL_75;
            default:
              v164 = BYTE6(v163);
LABEL_75:
              v279 = v164;
              v187 = sub_26A4251B4();
              MEMORY[0x26D65BA70](v187);

              MEMORY[0x26D65BA70](0x2A20736574796220, 0xEB0000000029292FLL);
              v188 = v280;
              v189 = v281;
              sub_26A10FDF0(v157, type metadata accessor for CoreChart);
              v190 = HIBYTE(v189) & 0xF;
              if ((v189 & 0x2000000000000000) == 0)
              {
                v190 = v188 & 0xFFFFFFFFFFFFLL;
              }

              if (v190)
              {
                sub_26A167E3C(0, 1, 1, v100);
                v100 = v191;
                v193 = *(v191 + 16);
                v192 = *(v191 + 24);
                if (v193 >= v192 >> 1)
                {
                  sub_26A167E3C(v192 > 1, v193 + 1, 1, v191);
                  v100 = v224;
                }

                *(v100 + 16) = v193 + 1;
                v194 = (v100 + 32 * v193);
                v194[4] = 0;
                v194[5] = 0;
                v194[6] = v188;
                v194[7] = v189;
                v160 = v271;
                *&v271[v261] = v100;
              }

              else
              {

                v160 = v271;
              }

              goto LABEL_82;
          }
        }

        sub_26A0E48F0(v157, &qword_28036CCA8, &unk_26A443C90);
        v160 = v271;
        v68 = v263;
LABEL_82:
        sub_26A0E48F0(v158, &qword_28036CCA8, &unk_26A443C90);
        v195 = *v160;
        if (*(*v160 + 16))
        {
        }

        else
        {
          v195 = &unk_287B01440;
        }

        v196 = sub_26A12CBBC(v195);
        v198 = v197;
        v199 = HIBYTE(v197) & 0xF;
        if ((v197 & 0x2000000000000000) == 0)
        {
          v199 = v196 & 0xFFFFFFFFFFFFLL;
        }

        if (v199)
        {
          v200 = v196;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A167E3C(0, *(v100 + 16) + 1, 1, v100);
            v100 = v221;
          }

          v202 = *(v100 + 16);
          v201 = *(v100 + 24);
          if (v202 >= v201 >> 1)
          {
            sub_26A167E3C(v201 > 1, v202 + 1, 1, v100);
            v100 = v222;
          }

          *(v100 + 16) = v202 + 1;
          v210 = v100 + 32 * v202;
          *(v210 + 32) = v264;
          *(v210 + 48) = v200;
          *(v210 + 56) = v198;
          v211 = v271;
          *&v271[v261] = v100;
        }

        else
        {

          v211 = v271;
        }

        sub_26A0FFF70(v203, v204, v205, v206, v207, v208, v209);
        v79 = v212;
        v73 = v213;
        sub_26A0E48F0(v211, &qword_28036CCB8, &qword_26A426748);
        v152 = type metadata accessor for CoreChartElement;
        v153 = v265;
LABEL_95:
        sub_26A10FDF0(v153, v152);
        v72 = v270;
        break;
      case 4u:
        break;
      default:
        sub_26A10FD48();
        v80 = v234;
        sub_26A10FE48();
        if (v74)
        {
          v81 = v235;
          sub_26A10FE48();
          if (qword_28036C790 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v230, qword_2803A8980);
          v82 = v229;
          sub_26A10FE48();
          v83 = *v82;

          sub_26A10FDF0(v82, type metadata accessor for _ProtoImageElement);

          *v81 = v83;
        }

        else
        {
          sub_26A10FE48();
        }

        v119 = v236;
        sub_26A10FD48();
        v120 = v237;
        *(v119 + *(v237 + 32)) = v74;
        sub_26A10FDF0(v80, type metadata accessor for ImageElement);
        *(v119 + *(v120 + 28)) = MEMORY[0x277D84F90];
        ImageElement.sourceTypes.getter();
        sub_26A3A1D60(v121, 0, 0, 0);

        KeyPath = swift_getKeyPath();
        sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

        sub_26A0F8D00(v123, v124, v125, v126, v127, v128, v129);
        v79 = v130;
        v73 = v131;
        sub_26A0E48F0(v119, &qword_28036CC20, &unk_26A426680);
        v132 = v266;
        v133 = type metadata accessor for ImageElement;
LABEL_71:
        sub_26A10FDF0(v132, v133);
        break;
    }

    v69 = v278;
    v282 = v278;
    v215 = *(v278 + 16);
    v214 = *(v278 + 24);
    if (v215 >= v214 >> 1)
    {
      sub_26A10D50C(v214 > 1, v215 + 1, 1, v75, v76, v77, v78);
      v69 = v282;
    }

    *(v69 + 16) = v215 + 1;
    v216 = v69 + 16 * v215;
    *(v216 + 32) = v79;
    *(v216 + 40) = v73;
    v70 += v273;
    --v68;
  }

  while (v68);
  return v69;
}

uint64_t SummaryItemPlayer.text1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v6);
  if (v13)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v6);
    if (!v13)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A10FD48();
  }

  return sub_26A10FD48();
}

void sub_26A0F2F18()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v15 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v3 = 0;
  }

  type metadata accessor for MultilineTextProperty(0);
  v22 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v22, v3, 1, v23);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v11 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v11, v12, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v13)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v14 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
      OUTLINED_FUNCTION_38_0();
      if (!v13)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v2 = 0;
  }

  type metadata accessor for TextProperty(0);
  v21 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v21, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v11 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v11, v12, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v13)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v14 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
      OUTLINED_FUNCTION_38_0();
      if (!v13)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v2 = 0;
  }

  type metadata accessor for VisualProperty(0);
  v21 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v21, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    sub_26A10FD48();
    v2 = 0;
  }

  v15 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.componentName.getter()
{
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_246();
}

uint64_t SummaryItemPlayer.linkIdentifier.getter()
{
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_246();
}

void _ProtoSummaryItem_Player.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v11 = OUTLINED_FUNCTION_35(v10);
  v231 = type metadata accessor for _ProtoVisualProperty(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  v20 = OUTLINED_FUNCTION_35(v19);
  v228 = type metadata accessor for _ProtoMultilineTextProperty(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v33 = OUTLINED_FUNCTION_35(v32);
  v229 = type metadata accessor for _ProtoTextProperty(v33);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v40 = OUTLINED_FUNCTION_41(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  v46 = OUTLINED_FUNCTION_35(v45);
  v47 = type metadata accessor for _ProtoStandardPlayerButton(v46);
  v48 = OUTLINED_FUNCTION_41(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  v51 = OUTLINED_FUNCTION_35(v50 - v49);
  v52 = type metadata accessor for _ProtoPlayerButton(v51);
  v53 = OUTLINED_FUNCTION_41(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  v56 = OUTLINED_FUNCTION_35(v55 - v54);
  v57 = type metadata accessor for _ProtoPlayer.OneOf_Control(v56);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v61);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_42();
  v64 = OUTLINED_FUNCTION_35(v63);
  v65 = type metadata accessor for _ProtoPlayer(v64);
  v66 = OUTLINED_FUNCTION_79_0(v65);
  v68 = v67;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_17();
  v71 = v69 - v70;
  MEMORY[0x28223BE20](v72);
  v74 = &v220 - v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v76);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_246();
  sub_26A10FE48();
  v77 = *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20);
  v233 = v1;
  v78 = *(v1 + v77);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v79 = *(v78 + 16);
  v80 = *(v79 + 16);
  v81 = MEMORY[0x277D84F90];
  v234 = v77;
  if (v80)
  {
    v221 = v2;
    v245 = MEMORY[0x277D84F90];

    sub_26A10CEE8(0, v80, 0);
    v81 = v245;
    OUTLINED_FUNCTION_166_0();
    v220 = v79;
    v237 = v82;
    v83 = v79 + v82;
    v84 = *(v68 + 72);
    while (1)
    {
      sub_26A10FE48();
      sub_26A10FE48();
      v85 = 1;
      if (!__swift_getEnumTagSinglePayload(v71, 1, v57))
      {
        break;
      }

LABEL_11:
      __swift_storeEnumTagSinglePayload(v238, v85, 1, v57);
      sub_26A10CF40();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      sub_26A10FDF0(v74, type metadata accessor for _ProtoPlayer);
      v245 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_26A10CEE8(v91 > 1, v92 + 1, 1);
        v81 = v245;
      }

      *(v81 + 16) = v92 + 1;
      OUTLINED_FUNCTION_123_0();
      sub_26A10FD48();
      v83 += v84;
      if (!--v80)
      {

        v2 = v221;
        v77 = v234;
        goto LABEL_15;
      }
    }

    sub_26A10FE48();
    sub_26A10FE48();
    OUTLINED_FUNCTION_104();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A10FE48();
        sub_26A10FDF0(v235, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_10:
        sub_26A10FDF0(v236, type metadata accessor for _ProtoPlayer.OneOf_Control);
        v85 = 0;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      sub_26A2917A8(v238);
      v89 = OUTLINED_FUNCTION_71_0();
      sub_26A10FDF0(v89, v90);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      _ProtoPlayerButton.redactedProto.getter(v238);
      v87 = OUTLINED_FUNCTION_71_0();
      sub_26A10FDF0(v87, v88);
      OUTLINED_FUNCTION_104();
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

LABEL_15:
  v93 = v233;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v93 + v77);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v96 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
    OUTLINED_FUNCTION_188_0(v96);
    OUTLINED_FUNCTION_136_0();
    v95 = v97;
    *(v93 + v77) = v97;
  }

  swift_beginAccess();
  *(v95 + 16) = v81;

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v98 = v224;
  OUTLINED_FUNCTION_209();
  v99 = v229;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v229);
  OUTLINED_FUNCTION_162_0(v98);
  if (EnumTagSinglePayload == 1)
  {
    v101 = v228;
  }

  else
  {
    OUTLINED_FUNCTION_59();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&qword_28036C7B8, 1, v99);
    v101 = v228;
    if (v102)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v103 = OUTLINED_FUNCTION_44_0(*(v99 + 32));
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v2);
      v106 = OUTLINED_FUNCTION_44_0(*(v99 + 36));
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v2);
      OUTLINED_FUNCTION_37(&qword_28036C7B8, 1, v99);
      v109 = v234;
      if (!v102)
      {
        sub_26A0E48F0(&qword_28036C7B8, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      v109 = v234;
    }

    _ProtoTextProperty.redactedProto.getter();
    v110 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v110, v111);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v93 + v109);
    if ((v112 & 1) == 0)
    {
      v114 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v114);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v115);
    }

    OUTLINED_FUNCTION_129();
    sub_26A10FD48();
    v116 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v99);
    OUTLINED_FUNCTION_211(v113 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v244);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v119 = v225;
  OUTLINED_FUNCTION_209();
  v120 = __swift_getEnumTagSinglePayload(v119, 1, v101);
  OUTLINED_FUNCTION_162_0(v119);
  if (v120 == 1)
  {
    v121 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A4273F0);
    v122 = v234;
    if (v102)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v123 = OUTLINED_FUNCTION_44_0(*(v101 + 32));
      v121 = v2;
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v2);
      v126 = OUTLINED_FUNCTION_44_0(*(v101 + 36));
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v2);
      OUTLINED_FUNCTION_48_0(&unk_26A4273F0);
      v129 = &unk_28036E000;
      if (!v102)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      v121 = v2;
      v129 = &unk_28036E000;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    v130 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v130, v131);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v133 = *(v93 + v122);
    if ((v132 & 1) == 0)
    {
      v134 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v134);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v135);
    }

    OUTLINED_FUNCTION_129();
    sub_26A10FD48();
    v136 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v101);
    OUTLINED_FUNCTION_211(v133 + v129[282], &v243);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v139 = v226;
  OUTLINED_FUNCTION_209();
  v140 = OUTLINED_FUNCTION_107();
  v142 = __swift_getEnumTagSinglePayload(v140, v141, v101);
  OUTLINED_FUNCTION_162_0(v139);
  if (v142 == 1)
  {
    v143 = v121;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v142);
    v144 = v234;
    if (v102)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v145 = OUTLINED_FUNCTION_44_0(*(v101 + 32));
      v143 = v121;
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v121);
      v148 = OUTLINED_FUNCTION_44_0(*(v101 + 36));
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v121);
      OUTLINED_FUNCTION_48_0(v142);
      v151 = &unk_28036E000;
      if (!v102)
      {
        sub_26A0E48F0(v142, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
      v143 = v121;
      v151 = &unk_28036E000;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    v152 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v152, v153);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v155 = *(v93 + v144);
    if ((v154 & 1) == 0)
    {
      v156 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v156);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v157);
    }

    OUTLINED_FUNCTION_128();
    sub_26A10FD48();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v101);
    OUTLINED_FUNCTION_211(v155 + v151[283], &v242);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v161 = v227;
  OUTLINED_FUNCTION_209();
  v162 = __swift_getEnumTagSinglePayload(v161, 1, v99);
  OUTLINED_FUNCTION_162_0(v161);
  if (v162 != 1)
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v162, 1, v99);
    v163 = v234;
    if (v102)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v164 = OUTLINED_FUNCTION_44_0(*(v99 + 32));
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v143);
      v167 = OUTLINED_FUNCTION_44_0(*(v99 + 36));
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v143);
      OUTLINED_FUNCTION_37(v162, 1, v99);
      if (!v102)
      {
        sub_26A0E48F0(v162, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
    }

    _ProtoTextProperty.redactedProto.getter();
    v170 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v170, v171);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(v93 + v163);
    if ((v172 & 1) == 0)
    {
      v174 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v174);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v175);
    }

    OUTLINED_FUNCTION_129();
    sub_26A10FD48();
    v176 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v176, v177, v178, v99);
    OUTLINED_FUNCTION_211(v173 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &v241);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v179 = v230;
  OUTLINED_FUNCTION_209();
  v180 = v231;
  v181 = __swift_getEnumTagSinglePayload(v179, 1, v231);
  OUTLINED_FUNCTION_98_0();
  if (v181 != 1)
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A426430);
    v182 = v234;
    if (v102)
    {
      v183 = v222;
      *v222 = MEMORY[0x277D84F90];
      *(v183 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v184 = OUTLINED_FUNCTION_44_0(*(v180 + 32));
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v143);
      v187 = OUTLINED_FUNCTION_44_0(*(v180 + 36));
      __swift_storeEnumTagSinglePayload(v187, v188, v189, v143);
      OUTLINED_FUNCTION_48_0(&unk_26A426430);
      if (!v102)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
    }

    _ProtoVisualProperty.redactedProto.getter();
    v190 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v190, v191);
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v193 = *(v93 + v182);
    if ((v192 & 1) == 0)
    {
      v194 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v194);
      OUTLINED_FUNCTION_136_0();
      v193 = v195;
      *(v93 + v182) = v195;
    }

    sub_26A10FD48();
    v196 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, v180);
    OUTLINED_FUNCTION_211(v193 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v240);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_122_0();
  v202 = __swift_getEnumTagSinglePayload(v199, v200, v201);
  OUTLINED_FUNCTION_98_0();
  if (v202 != 1)
  {
    OUTLINED_FUNCTION_59();
    sub_26A10FD9C();
    v203 = OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_37(v203, v204, v205);
    v206 = v234;
    if (v102)
    {
      v207 = v223;
      *v223 = MEMORY[0x277D84F90];
      v207[1] = 0;
      v207[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v208 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_37(v208, v209, v210);
      if (!v102)
      {
        sub_26A0E48F0(&off_28036C7C0, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164();
      sub_26A10FD48();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v232);
    v211 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v211, v212);
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *(v93 + v206);
    if ((v213 & 1) == 0)
    {
      v215 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v215);
      sub_26A1B7690();
      v214 = v216;
      *(v93 + v206) = v216;
    }

    sub_26A10FD48();
    v217 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v217, v218, v219, v143);
    OUTLINED_FUNCTION_211(v214 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v239);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.init(players:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v14, v15, &protocol conformance descriptor for _ProtoSummaryItem_Player);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_26A0F4DBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v114 = a7;
  v115 = a8;
  v111 = a6;
  v109 = a5;
  v106 = a4;
  v102 = a3;
  v15 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v99 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v17 - 8);
  v117 = v89 - v18;
  v116 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v116);
  v95 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v96 = v89 - v21;
  v22 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v24 - 8);
  v113 = v89 - v25;
  v112 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v112);
  v93 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v94 = v89 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v29 - 8);
  v110 = v89 - v30;
  v31 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v105 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v33 - 8);
  v34 = type metadata accessor for _ProtoPlayer(0) - 8;
  MEMORY[0x28223BE20](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v35 - 8);
  v104 = v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v100 = v89 - v38;
  v101 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v101);
  v91 = v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v97 = v89 - v41;
  MEMORY[0x28223BE20](v42);
  v90 = v89 - v43;
  v108 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v108);
  v92 = v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v107 = v89 - v46;
  v47 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v47 - 8);
  v103 = v89 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a2 + 16);
  if (v49)
  {
    v89[0] = a1;
    v89[1] = v12;
    v121 = MEMORY[0x277D84F90];
    sub_26A10CEE8(0, v49, 0);
    v50 = v121;
    v51 = a2 + 32;
    do
    {
      sub_26A0E5D68(v51, v118);
      v53 = v119;
      v52 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      (*(v52 + 8))(v53, v52);
      sub_26A10FD48();
      __swift_destroy_boxed_opaque_existential_1(v118);
      v121 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_26A10CEE8(v54 > 1, v55 + 1, 1);
        v50 = v121;
      }

      *(v50 + 16) = v55 + 1;
      sub_26A10FD48();
      v51 += 40;
      --v49;
    }

    while (v49);
  }

  _ProtoSummaryItem_Player.player.setter();
  v56 = v102[3];
  v57 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v56);
  (*(v57 + 8))(v56, v57);
  sub_26A10FD48();
  _ProtoSummaryItem_Player.text1.setter();
  sub_26A10FD9C();
  v58 = v119;
  v59 = v101;
  if (v119)
  {
    v60 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v60 + 8))(v58, v60);
    v61 = v100;
    sub_26A10FD48();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v59);
    __swift_destroy_boxed_opaque_existential_1(v118);
    if (__swift_getEnumTagSinglePayload(v61, 1, v59) != 1)
    {
      v62 = v90;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text2.setter();
      sub_26A10FDF0(v62, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v118, &qword_28036CB10, &unk_26A426460);
    v61 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v59);
  }

  sub_26A0E48F0(v61, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v63 = v119;
  if (v119)
  {
    v64 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v64 + 8))(v63, v64);
    v65 = v104;
    sub_26A10FD48();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v59);
    __swift_destroy_boxed_opaque_existential_1(v118);
    if (__swift_getEnumTagSinglePayload(v65, 1, v59) != 1)
    {
      v66 = v91;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text3.setter();
      sub_26A10FDF0(v66, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v118, &qword_28036CB10, &unk_26A426460);
    v65 = v104;
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v59);
  }

  sub_26A0E48F0(v65, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v67 = v119;
  if (v119)
  {
    v68 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v68 + 8))(v67, v68);
    v69 = v110;
    sub_26A10FD48();
    v70 = v108;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v108);
    __swift_destroy_boxed_opaque_existential_1(v118);
    if (__swift_getEnumTagSinglePayload(v69, 1, v70) != 1)
    {
      v71 = v92;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text4.setter();
      sub_26A10FDF0(v71, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v118, &qword_28036CB08, &unk_26A428720);
    v69 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v108);
  }

  sub_26A0E48F0(v69, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v72 = v119;
  if (v119)
  {
    v73 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v73 + 8))(v72, v73);
    v74 = v113;
    sub_26A10FD48();
    v75 = v112;
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v112);
    __swift_destroy_boxed_opaque_existential_1(v118);
    if (__swift_getEnumTagSinglePayload(v74, 1, v75) != 1)
    {
      v76 = v94;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.thumbnail.setter();
      sub_26A10FDF0(v76, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v118, &qword_28036CB00, &unk_26A426450);
    v74 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v112);
  }

  sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v77 = v119;
  if (v119)
  {
    v78 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v78 + 8))(v77, v78);
    v79 = v117;
    sub_26A10FD48();
    v80 = v116;
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v116);
    __swift_destroy_boxed_opaque_existential_1(v118);
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) != 1)
    {
      v81 = v96;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.action.setter();
      sub_26A10FDF0(v81, type metadata accessor for _ProtoActionProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v118, &qword_28036CAF8, &unk_26A426D30);
    v79 = v117;
    __swift_storeEnumTagSinglePayload(v117, 1, 1, v116);
  }

  sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
LABEL_31:

  result = _ProtoSummaryItem_Player.componentName.setter(a9, a10, v82, v83, v84);
  if (a12)
  {

    return _ProtoSummaryItem_Player.linkIdentifier.setter(a11, a12, v86, v87, v88);
  }

  return result;
}

void SummaryItemPlayer.init(player:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_76();
  v39 = v26;
  v40 = v25;
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  v29 = sub_26A10D0BC(v27, v28, &protocol conformance descriptor for _ProtoSummaryItem_Player);
  OUTLINED_FUNCTION_208(v29, v30, v31, v29, v32, v33, v34, v35, v39, v40);

  sub_26A0E48F0(v24, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v23, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v41, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v42, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v36, v37, v38);
  sub_26A0E48F0(v46, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(&v47);
  OUTLINED_FUNCTION_187_0(&v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_75();
}

void sub_26A0F5F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v25, v26, &protocol conformance descriptor for _ProtoSummaryItem_Player);
  sub_26A4249C4();

  sub_26A0E48F0(v24, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v23, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v22, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v33);
  OUTLINED_FUNCTION_164_0(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v27, v28, v29);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v30, v31, v32);
  OUTLINED_FUNCTION_164_0(&v37);
  OUTLINED_FUNCTION_164_0(&v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.init(players:text1:text2:text3:text4:thumbnail:action:)()
{
  OUTLINED_FUNCTION_133_0();
  v15 = v3;
  v16 = v5;
  v17 = v4;
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v6, v7, &protocol conformance descriptor for _ProtoSummaryItem_Player);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v0, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v15);
  OUTLINED_FUNCTION_164_0(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v18, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v8, v9, v10);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v11, v12, v13);
  OUTLINED_FUNCTION_164_0(v19);
  OUTLINED_FUNCTION_164_0(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void SummaryItemPlayer.init(player:text1:text2:text3:text4:thumbnail:action:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v41 = v24;
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  v27 = sub_26A10D0BC(v25, v26, &protocol conformance descriptor for _ProtoSummaryItem_Player);
  OUTLINED_FUNCTION_208(v27, v28, v29, v27, v30, v31, v32, v33, v40, v41);

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v22, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v21, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v34, v35, v36);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v37, v38, v39);
  OUTLINED_FUNCTION_164_0(&v46);
  OUTLINED_FUNCTION_164_0(&v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemPlayer.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v71 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v73 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v72 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  v26 = type metadata accessor for SummaryItemPlayer(0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_137_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB38, &qword_26A426488);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  OUTLINED_FUNCTION_104_0();
  sub_26A10FE48();
  if (v5)
  {
    _ProtoSummaryItem_Player.redactedProto.getter();
  }

  else
  {
    sub_26A10FE48();
  }

  sub_26A10FD48();
  v32[*(v29 + 32)] = v5 & 1;
  v33 = OUTLINED_FUNCTION_71_0();
  sub_26A10FDF0(v33, v34);
  v35 = MEMORY[0x277D84F90];
  *&v32[*(v29 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F73D8(KeyPath, 0x726579616C70, 0xE600000000000000, sub_26A0EC124, &qword_28036CB38, &qword_26A426488, sub_26A1687E4, v37, v70, v71, v72, v73, v74, v75);

  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v3);
  if (v38)
  {
    *v19 = v35;
    *(v19 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v39 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
    OUTLINED_FUNCTION_48_0(v3);
    if (!v38)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A10FD48();
  }

  OUTLINED_FUNCTION_181_0();
  sub_26A10FD48();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_222();
  sub_26A10B154(v25, v50 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_98_0();
  SummaryItemPlayer.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10B5D0(v2, v51 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  v52 = OUTLINED_FUNCTION_168_0();
  sub_26A0E48F0(v52, v53, v54);
  SummaryItemPlayer.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10B5D0(v2, v55 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  v56 = OUTLINED_FUNCTION_168_0();
  sub_26A0E48F0(v56, v57, v58);
  v59 = v72;
  SummaryItemPlayer.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10B154(v59, v60 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v59);
  v61 = v73;
  SummaryItemPlayer.thumbnail.getter();
  sub_26A10ACC4(v61, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v61, &qword_28036CB20, &unk_26A426470);
  v62 = v74;
  SummaryItemPlayer.action.getter();
  sub_26A10AB08(v62, 0x6E6F69746361, 0xE600000000000000);
  sub_26A0E48F0(v62, &qword_28036CB18, &unk_26A427670);
  v63 = swift_getKeyPath();
  sub_26A0F7514(v63, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CB38, &qword_26A426488, sub_26A1687E4, v64, v70, v71);

  v65 = swift_getKeyPath();
  sub_26A0F82C0(v65, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, &qword_28036CB38, &qword_26A426488, sub_26A1687E4, v66, v70, v71);

  sub_26A10380C();
  sub_26A0E48F0(v32, &qword_28036CB38, &qword_26A426488);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v68;
  result._countAndFlagsBits = v67;
  return result;
}

void sub_26A0F6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v15 = OUTLINED_FUNCTION_102_0(v12, v13, v14);
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v15, v16, type metadata accessor for KeyValueStandard.Pair, v17, v18, KeyValueStandard.Pair.description(redacted:), v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215();
    sub_26A10C83C(sub_26A167074);
    v20 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v20, sub_26A167074);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v15 = OUTLINED_FUNCTION_102_0(v12, v13, v14);
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v15, v16, type metadata accessor for HorizontalListStandard.Item, v17, v18, HorizontalListStandard.Item.description(redacted:), v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215();
    sub_26A10C83C(sub_26A1670BC);
    v20 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v20, sub_26A1670BC);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v15 = OUTLINED_FUNCTION_102_0(v12, v13, v14);
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v15, v16, type metadata accessor for IntentsUIStandard.Slot, v17, v18, IntentsUIStandard.Slot.description(redacted:), v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215();
    sub_26A10C83C(sub_26A167104);
    v20 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v20, sub_26A167104);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F75D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_33_0();
  swift_getAtKeyPath();
  sub_26A424DA4();
  v34 = v33;
  OUTLINED_FUNCTION_84_0();
  if (v36)
  {
    v37 = v35;

    v38 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_210(v38, v39);
    OUTLINED_FUNCTION_207();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
    OUTLINED_FUNCTION_103_0();
    sub_26A10C83C(v40);
    v41 = OUTLINED_FUNCTION_10_1();
    sub_26A10CC70(v41, v34);
    OUTLINED_FUNCTION_4_1();
    *(v42 + 48) = v37;
    *(v42 + 56) = v31;
    *(v30 + v32) = v43;
  }

  else
  {
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, float a18, float a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_148_0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_33_0();
  swift_getAtKeyPath();
  sub_26A424DB4();
  OUTLINED_FUNCTION_84_0();
  if (v40)
  {
    v41 = v39;

    v42 = OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_210(v42, v43);
    OUTLINED_FUNCTION_170_0();

    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v36) + 28);
    sub_26A10C83C(v34);
    v45 = OUTLINED_FUNCTION_69();
    sub_26A10CC70(v45, v46);
    OUTLINED_FUNCTION_178_0();
    *(v47 + 48) = v41;
    *(v47 + 56) = v32;
    *(v31 + v44) = v48;
  }

  else
  {
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F8D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166C60(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166C60(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166CA8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166CA8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28036CCE8, &qword_26A426778);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_176_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A166CF0(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166CF0(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_176_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A166D38(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166D38(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A166D80(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166D80(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE58, &unk_26A4269E0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166DC8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166DC8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F97E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166E10(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166E10(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166E58(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166E58(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_231();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166EA0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166EA0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166EE8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166EE8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166F30(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166F30(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE90, &qword_26A426A18);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_231();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166F78(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166F78(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A166FC0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166FC0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D010, &qword_26A426C38);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167008(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167008(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEC8, &qword_26A426A50);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167050(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167050(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF8, &qword_26A426A80);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167098(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167098(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FAA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1670E0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1670E0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE78, &qword_26A426A00);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167128(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167128(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167170(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167170(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FAF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE68, &unk_26A4269F0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1671B8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1671B8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167200(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167200(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD68, &unk_26A4268C0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167248(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167248(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_227();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167290(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167290(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE80, &qword_26A426A08);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1672D8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1672D8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167320(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167320(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167368(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167368(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1673B0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1673B0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1673F8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1673F8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFE8, &qword_26A426C10);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167440(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167440(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA8, &unk_26A426930);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167488(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167488(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1674D0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1674D0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167518(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167518(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD20, &qword_26A426800);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167560(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167560(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD0, &qword_26A426BF8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1675A8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1675A8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D038, &qword_26A426C60);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1675F0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1675F0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD28, &qword_26A426808);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167638(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167638(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE40, &qword_26A4269C8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167680(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167680(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D000, &qword_26A427A40);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1676C8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1676C8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167710(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167710(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE70, &qword_26A43A8F0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167758(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167758(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE8, &qword_26A426970);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1677A0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1677A0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE0, &qword_26A439240);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1677E8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1677E8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA0, &qword_26A426928);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167830(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167830(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167878(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167878(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1678C0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1678C0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D008, &qword_26A426C30);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167908(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167908(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE60, &qword_26A43B7D0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167950(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167950(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD40, &qword_26A426820);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167998(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167998(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF38, &unk_26A426AC0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1679E0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1679E0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167A28(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167A28(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE88, &qword_26A426A10);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167A70(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167A70(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D018, &qword_26A426C40);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167AB8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167AB8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167B00(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B00(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFE0, &qword_26A428730);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167B48(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B48(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF60, &qword_26A426B10);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167B90(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B90(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD60, &qword_26A4268B8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167BD8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167BD8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167C20(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167C20(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167C68(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167C68(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC30, &qword_26A426698);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167CB0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167CB0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167CF8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167CF8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF30, &qword_26A426AB8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167D40(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167D40(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167D88(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167D88(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD88, &unk_26A4268E0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167DD0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167DD0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB8, &qword_26A426748);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167E18(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167E18(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167E60(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167E60(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A10030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD18, &qword_26A4267F8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167EA8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167EA8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1004D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD0, &unk_26A426760);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167EF0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167EF0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1006A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167F38(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167F38(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_185_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D040, &qword_26A426C68);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167F80(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167F80(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_185_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A167FC8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167FC8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD10, &qword_26A4395F0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168010(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168010(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168058(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168058(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1680A0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1680A0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF10, &qword_26A437E70);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1680E8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1680E8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  if (*(*(v7 + 64) + 16))
  {
    OUTLINED_FUNCTION_171_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v8)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = OUTLINED_FUNCTION_3_2();
          sub_26A168130(v9, v10, v11, v12);
        }

        OUTLINED_FUNCTION_36_0();
        if (v8)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168130(v13, v14, v15, v16);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE18, &qword_26A4269A0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168178(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168178(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1016F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CED8, &unk_26A426A60);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1681C0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1681C0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1018D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168208(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168208(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168250(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168250(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF08, &unk_26A426A90);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168298(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168298(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1682E0(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1682E0(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168328(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168328(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF8, &unk_26A426C20);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168370(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168370(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1023EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB0, &qword_26A4265C0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1683B8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1683B8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1025C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE0, &qword_26A426640);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168400(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168400(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1027A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A168448(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168448(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A10296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168490(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168490(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD0, &qword_26A426630);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A1684D8(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1684D8(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC0, &qword_26A426620);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_227();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168520(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168520(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168568(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168568(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1030B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8);
  OUTLINED_FUNCTION_24_0();
  if (v14)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = MEMORY[0x277D84F90];
    while (v14 != v16)
    {
      OUTLINED_FUNCTION_88_0();
      if (v25)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0();
      if (v13)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_3_2();
          sub_26A1685B0(v26, v27, v28, v29);
          v24 = v30;
        }

        OUTLINED_FUNCTION_36_0();
        if (v25)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1685B0(v31, v32, v33, v34);
          v24 = v35;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v24 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0(v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v15)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v25)
      {
        OUTLINED_FUNCTION_58_0(v42 > 1, v36, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_2_1();
      if (v43)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A103280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC8, &qword_26A426628);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A1685F8(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_26_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1685F8(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A103454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF0, &qword_26A426C18);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_171_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168640(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168640(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A103630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE48, &qword_26A4269D0);
  OUTLINED_FUNCTION_24_0();
  if (v8)
  {
    OUTLINED_FUNCTION_171_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0();
      if (v7)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_3_2();
          sub_26A168688(v10, v11, v12, v13);
        }

        OUTLINED_FUNCTION_36_0();
        if (v9)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168688(v14, v15, v16, v17);
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A10380C()
{
  v5 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB38, &qword_26A426488) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_3:
    v9 = v5 + 32 * v7;
    while (v6 != v7)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      ++v7;
      v10 = (v9 + 32);
      v11 = *(v9 + 56);
      v9 += 32;
      if (v11)
      {
        v13 = *v10;
        v12 = v10[1];
        v14 = v10[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A1686D0(0, *(v8 + 16) + 1, 1, v8);
          v8 = v18;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_26A1686D0(v15 > 1, v16 + 1, 1, v8);
          v8 = v19;
        }

        *(v8 + 16) = v16 + 1;
        v17 = (v8 + 32 * v16);
        v17[4] = v13;
        v17[5] = v12;
        v17[6] = v14;
        v17[7] = v11;
        goto LABEL_3;
      }
    }

    v20 = *(v8 + 16);
    if (!v20)
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      v33 = sub_26A424B54();
      v35 = v34;

      v36 = sub_26A31B838(v33, v35);
      v38 = v37;

      MEMORY[0x26D65BA70](v36, v38);

      MEMORY[0x26D65BA70](10506, 0xE200000000000000);
      return;
    }

    v40 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v20, 0, v1, v2, v3, v4);
    v21 = 0;
    v22 = (v8 + 56);
    while (v21 < *(v8 + 16))
    {
      v24 = *(v22 - 2);
      v23 = *(v22 - 1);
      v25 = *v22;
      if (v24)
      {
        v39 = *(v22 - 3);
        swift_bridgeObjectRetain_n();

        MEMORY[0x26D65BA70](8250, 0xE200000000000000);
        MEMORY[0x26D65BA70](v23, v25);

        v23 = v39;
        v25 = v24;
      }

      else
      {
      }

      v31 = *(v40 + 16);
      v30 = *(v40 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_26A10D50C(v30 > 1, v31 + 1, 1, v26, v27, v28, v29);
      }

      ++v21;
      *(v40 + 16) = v31 + 1;
      v32 = v40 + 16 * v31;
      *(v32 + 32) = v23;
      *(v32 + 40) = v25;
      v22 += 4;
      if (v20 == v21)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    __break(1u);
  }
}