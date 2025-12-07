double sub_1D621E8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v204 = a2;
  v202 = a1;
  v201 = type metadata accessor for FormatOption(0);
  v4 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v5);
  v7 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v180 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v196 = &v180 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v195 = &v180 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v180 - v20;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v180 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](&v180 - v34, v35);
  v200 = &v180 - v36;
  v43.n128_u64[0] = MEMORY[0x1EEE9AC00](v37, v38).n128_u64[0];
  v199 = &v180 - v44;
  v45 = *(a3 + 16);
  if (!v45)
  {
    return v43.n128_f64[0];
  }

  v188 = v39;
  v189 = v31;
  v185 = v42;
  v190 = v41;
  v191 = v40;
  v187 = v7;
  v198 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v193 = (v4 + 48);
  v197 = (v4 + 56);
  v46 = (a3 + 56);
  v186 = v11;
  v192 = v21;
  while (1)
  {
    v47 = *(v46 - 3);
    v48 = *(v46 - 2);
    v49 = *(v46 - 8);
    v50 = *v46;
    v51 = *v46 >> 62;
    if (!v51)
    {
      v203 = v45;
      v63 = *(v50 + 32);
      v218 = *(v50 + 16);
      v219 = v63;
      v43 = *(v50 + 48);
      *&v220[16] = *(v50 + 64);
      *v220 = v43;
      v65 = *(&v218 + 1);
      v64 = v218;
      v66 = v63;
      v67 = v220[16];
      switch((2 * v220[17]) | ((v220[16] & 8) != 0))
      {
        case 2:
          v207 = v47;
          v208 = v48;
          v221 = v49;
          sub_1D5D03180(v47, v48, v49);

          sub_1D5FD78CC(&v218, &v216);
LABEL_64:
          switch(v67 >> 4)
          {
            case 3u:
              if (BYTE1(v66) <= 1u)
              {
                if (v66 > 0xFDu)
                {
                  goto LABEL_73;
                }
              }

              else if (BYTE1(v66) != 2 && BYTE1(v66) != 3 || v66 > 0xFDu)
              {
                goto LABEL_73;
              }

              *v211 = v64;
              *&v211[8] = v65;
              v211[16] = v66 & 1;
              sub_1D5FD78CC(&v218, &v216);
              sub_1D5FD78CC(&v218, &v216);
              v159 = v210;
              sub_1D60ECF10(v204);
              v210 = v159;
              if (v159)
              {
                sub_1D5FD7B18(&v218);
                sub_1D5D2F2C8(*v211, *&v211[8], v211[16]);
                sub_1D5FD7B18(&v218);
                sub_1D5D07BA8(v207, v208, v221);

                return v43.n128_f64[0];
              }

              sub_1D5FD7B18(&v218);
              sub_1D5D2F2C8(*v211, *&v211[8], v211[16]);
              goto LABEL_73;
            case 8u:
              if (!(v65 >> 6) || v65 >> 6 == 1)
              {
                goto LABEL_73;
              }

              v211[0] = v65 & 0x3F;
              sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
              if ((swift_dynamicCast() & 1) == 0)
              {
                v216 = 0u;
                memset(v217, 0, 24);
                sub_1D5BFB774(&v216, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_73:
                sub_1D5FD7B18(&v218);
                goto LABEL_74;
              }

              v117 = *&v217[8];
              v118 = *&v217[16];
              __swift_project_boxed_opaque_existential_1(&v216, *&v217[8]);
              v119 = v210;
              (*(v118 + 8))(v202, v204, v117, v118);
              v45 = v203;
              if (v119)
              {
                __swift_destroy_boxed_opaque_existential_1(&v216);
                goto LABEL_174;
              }

              v210 = 0;
              __swift_destroy_boxed_opaque_existential_1(&v216);
              sub_1D5FD7B18(&v218);
LABEL_62:
              sub_1D5D07BA8(v207, v208, v221);
              break;
            default:
              goto LABEL_73;
          }

          goto LABEL_5;
        case 3:
        case 4:
          *v211 = v218;
          *&v211[16] = v63;
          LOBYTE(v214) = 5;
          v68 = v47;
          v69 = v48;
          v70 = v49;
          sub_1D5FD78CC(&v218, &v216);
          v207 = v68;
          v208 = v69;
          v221 = v70;
          sub_1D5D03180(v68, v69, v70);

          sub_1D5FD78CC(&v218, &v216);

          v71 = v210;
          v72 = sub_1D703E0C8(v211, &v214);
          if (v71)
          {

LABEL_174:
            sub_1D5FD7B18(&v218);
LABEL_180:
            sub_1D5D07BA8(v207, v208, v221);
            goto LABEL_181;
          }

          v206 = v72;
          v210 = 0;
          v73 = *(v204 + v198);
          v74 = *(v73 + 16);
          swift_beginAccess();
          v75 = *(*(v74 + 16) + 16);
          v209 = v66;
          if (v75 && (sub_1D5B69D90(v64, v65), (v76 & 1) != 0))
          {
            swift_endAccess();
            v77 = v196;
            sub_1D5D25108(v196);
            v78 = v77;
            v79 = v195;
            sub_1D5D5E33C(v78, v195, type metadata accessor for FormatOption);
            v80 = v200;
            sub_1D5D5E33C(v79, v200, type metadata accessor for FormatOption);
          }

          else
          {
            swift_endAccess();
            swift_beginAccess();
            if (!*(*(v73 + 24) + 16) || (sub_1D5B69D90(v64, v65), (v91 & 1) == 0))
            {
              swift_endAccess();
              v102 = *v197;
              v103 = v200;
              v104 = v201;
              (*v197)(v200, 1, 1, v201);

              sub_1D5B6EF64(v103, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if (*(v204 + 48))
              {

                v98 = v199;
                v102(v199, 1, 1, v104);
                goto LABEL_72;
              }

              type metadata accessor for FormatLayoutError(0);
              sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
              swift_allocError();
              *v165 = v64;
              v165[1] = v65;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

LABEL_178:
              sub_1D5FD7B18(&v218);
              sub_1D5D07BA8(v207, v208, v221);
              goto LABEL_181;
            }

            swift_endAccess();
            v80 = v200;
            sub_1D5D25108(v200);
          }

          v92 = *v197;
          v93 = v201;
          (*v197)(v80, 0, 1, v201);
          v94 = v192;
          sub_1D5D5E33C(v80, v192, type metadata accessor for FormatOption);
          *&v216 = v94[2];
          v95 = v206;

          FormatOptionValue.type.getter(v96, v211);
          v97 = v95;
          if (sub_1D6183C84(v211[0], v95))
          {

            swift_bridgeObjectRelease_n();
            v98 = v199;
            sub_1D5D5E33C(v94, v199, type metadata accessor for FormatOption);
            v92(v98, 0, 1, v93);
LABEL_72:
            sub_1D5B6EF64(v98, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v65 = *(&v218 + 1);
            v67 = v220[16];
            switch((2 * v220[17]) | ((v220[16] & 8) != 0))
            {
              case 1:
              case 5:
              case 6:
              case 7:
              case 9:
              case 10:
              case 11:
              case 13:
                goto LABEL_74;
              case 2:
                LOWORD(v66) = v219;
                v64 = v218;
                goto LABEL_64;
              case 12:
                goto LABEL_57;
              default:
                goto LABEL_73;
            }
          }

          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v161 = v160;
          v162 = v94[1];
          v210 = *v94;
          *&v216 = v94[2];

          FormatOptionValue.type.getter(v163, v211);
          v164 = v211[0];
          *v161 = v210;
          *(v161 + 8) = v162;
          *(v161 + 16) = v164;
          *(v161 + 24) = v97;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B51D0(v94, type metadata accessor for FormatOption);
          goto LABEL_178;
        case 12:
          v207 = v47;
          v208 = v48;
          v221 = v49;
          sub_1D5D03180(v47, v48, v49);

LABEL_57:
          if (!(v65 >> 6) || v65 >> 6 == 1)
          {
            goto LABEL_74;
          }

          v211[0] = v65 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v216 = 0u;
            memset(v217, 0, 24);
            sub_1D5BFB774(&v216, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_74:
            sub_1D5D07BA8(v207, v208, v221);

LABEL_75:
            v45 = v203;
            goto LABEL_6;
          }

          v99 = *&v217[8];
          v100 = *&v217[16];
          __swift_project_boxed_opaque_existential_1(&v216, *&v217[8]);
          v101 = v210;
          (*(v100 + 8))(v202, v204, v99, v100);
          v45 = v203;
          if (v101)
          {
            __swift_destroy_boxed_opaque_existential_1(&v216);
            goto LABEL_180;
          }

          v210 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v216);
          goto LABEL_62;
        default:
          goto LABEL_75;
      }
    }

    if (v51 != 1)
    {
      goto LABEL_6;
    }

    v52 = *((v50 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v209 = *((v50 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v206 = v50 & 0x3FFFFFFFFFFFFFFFLL;
    v205 = *((v50 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v53 = *(v52 + 32);
    v218 = *(v52 + 16);
    v219 = v53;
    *v220 = *(v52 + 48);
    *&v220[15] = *(v52 + 63);
    v54 = *(&v218 + 1);
    v55 = v53;
    v56 = (*&v220[15] >> 8);
    if ((*&v220[15] & 0x1000000) != 0)
    {
      v57 = 8;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57 & 0xFFFFFFF8 | (v56 >> 11) & 7;
    v221 = v49;
    v208 = v48;
    v207 = v47;
    if (v58 <= 4)
    {
      v59 = v202;
      if (v58 > 1)
      {
        if (v58 != 3)
        {
          goto LABEL_121;
        }

        v60 = v53;
        if (v53 <= 1u)
        {
          v61 = v205;
          if (v53)
          {
            v62 = v210;
LABEL_40:
            v82 = v209;
            if ((~v218 & 0xF000000000000007) != 0)
            {
              *&v216 = v218;
              v83 = v218;
              sub_1D5D03180(v47, v48, v49);

              sub_1D5CFCFAC(v83);
              v84 = v62;
              FormatTextContent.bind(binder:context:)(v59, v204);
              if (v62)
              {
                goto LABEL_189;
              }

LABEL_42:

              goto LABEL_125;
            }

            goto LABEL_80;
          }

LABEL_84:
          v62 = v210;
LABEL_85:
          sub_1D5D03180(v47, v48, v49);
          v84 = v62;
          goto LABEL_123;
        }

        goto LABEL_81;
      }

      if (v58)
      {
        goto LABEL_121;
      }

      v81 = (DWORD2(v53) >> 3) & 7;
      if (v81 <= 1)
      {
        if (v81)
        {
          goto LABEL_121;
        }

LABEL_77:
        v60 = v53;
        if (v53 <= 1u)
        {
          v61 = v205;
          if (v53)
          {
            v62 = v210;
            v82 = v209;
            if ((~v218 & 0xF000000000000007) != 0)
            {
              *&v216 = v218;
              v116 = v218;
              sub_1D5D03180(v47, v48, v49);

              sub_1D5CFCFAC(v116);
              v84 = v62;
              FormatTextContent.bind(binder:context:)(v59, v204);
              if (v62)
              {
LABEL_189:

                goto LABEL_172;
              }

              goto LABEL_42;
            }

LABEL_80:
            sub_1D5D03180(v47, v48, v49);

LABEL_91:

            v84 = v62;
            goto LABEL_125;
          }

          goto LABEL_84;
        }

LABEL_81:
        v61 = v205;
        if (v60 != 2 && v218 != 0)
        {
          v62 = v210;
LABEL_88:
          sub_1D5D03180(v47, v48, v49);
          goto LABEL_89;
        }

        goto LABEL_84;
      }

      if (v81 == 2 || v81 == 3 || !(BYTE8(v53) >> 6) || BYTE8(v53) >> 6 == 1)
      {
        goto LABEL_77;
      }

      if ((BYTE8(v53) & 7u) > 1)
      {
        if ((BYTE8(v53) & 7) != 2 && *(&v218 + 1) | v53)
        {
          v62 = v210;
LABEL_103:
          sub_1D5D03180(v47, v48, v49);
          v61 = v205;
LABEL_89:

LABEL_90:

          v82 = v209;
          goto LABEL_91;
        }

LABEL_121:
        v62 = v210;
LABEL_122:
        sub_1D5D03180(v47, v48, v49);
        v84 = v62;
        v61 = v205;
LABEL_123:

        goto LABEL_124;
      }

      if ((BYTE8(v53) & 7) == 0)
      {
        goto LABEL_121;
      }

      v62 = v210;
      goto LABEL_98;
    }

    v62 = v210;
    v59 = v202;
    if (v58 <= 6)
    {
      if (v58 == 5)
      {
        goto LABEL_50;
      }

      if (!(BYTE8(v53) >> 6) || BYTE8(v53) >> 6 == 1)
      {
        if (v53 > 1u)
        {
          v61 = v205;
          if (v53 != 2 && v218 != 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v61 = v205;
          if (v53)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_85;
      }

      if ((BYTE8(v53) & 0x3Fu) > 1)
      {
        if ((BYTE8(v53) & 0x3F) != 2 && *(&v218 + 1) | v53)
        {
          goto LABEL_103;
        }

        goto LABEL_122;
      }

      if ((BYTE8(v53) & 0x3F) == 0)
      {
        goto LABEL_122;
      }

LABEL_98:
      v61 = v205;
      if ((~*(&v218 + 1) & 0xF000000000000007) == 0)
      {
        goto LABEL_88;
      }

      *&v216 = *(&v218 + 1);
      sub_1D5D03180(v47, v48, v49);

      sub_1D5CFCFAC(v54);
      v84 = v62;
      FormatTextContent.bind(binder:context:)(v59, v204);
      if (v62)
      {
        goto LABEL_189;
      }

      v82 = v209;
      goto LABEL_125;
    }

    if (v58 != 7)
    {
      sub_1D5D03180(v47, v48, v49);
      v61 = v205;

      goto LABEL_90;
    }

    if (!(v56 >> 14))
    {
LABEL_50:
      sub_1D5D03180(v47, v48, v49);
      v84 = v62;
      v61 = v205;

LABEL_124:

      v82 = v209;

      goto LABEL_125;
    }

    v184 = v218;
    if (v56 >> 14 == 1)
    {
      *v211 = v218;
      *&v211[16] = v53;
      LOBYTE(v214) = 5;
      v85 = v218;
      sub_1D5D03180(v47, v48, v49);

      sub_1D62B5248(&v218, &v216);
      v86 = sub_1D703E0C8(v211, &v214);
      if (v62)
      {

        sub_1D5D07BA8(v207, v208, v221);
        goto LABEL_181;
      }

      v183 = v86;
      v210 = 0;
      v87 = v204;
      v88 = v189;
      FormatOptionCollection.subscript.getter(v85, v54, v189);
      if ((*v193)(v88, 1, v201) == 1)
      {
        sub_1D5B6EF64(v88, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(v87 + 48))
        {
          v89 = 1;
          v59 = v202;
          v90 = v188;
LABEL_106:
          (*v197)(v90, v89, 1, v201);
          sub_1D5B6EF64(v90, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v84 = v210;
          v82 = v209;
          v61 = v205;
          goto LABEL_125;
        }

        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v178 = v184;
        v178[1] = v54;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v112 = v186;
        sub_1D5D5E33C(v88, v186, type metadata accessor for FormatOption);
        *&v216 = v112[2];
        v113 = v183;

        FormatOptionValue.type.getter(v114, v211);
        v115 = sub_1D6183C84(v211[0], v113);
        v59 = v202;
        if (v115)
        {

          v90 = v188;
          sub_1D5D5E33C(v112, v188, type metadata accessor for FormatOption);
          v89 = 0;
          goto LABEL_106;
        }

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v173 = v172;
        v174 = *v112;
        v175 = v112[1];
        *&v216 = v112[2];

        FormatOptionValue.type.getter(v176, v211);
        v177 = v211[0];
        *v173 = v174;
        *(v173 + 8) = v175;
        *(v173 + 16) = v177;
        *(v173 + 24) = v113;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D62B51D0(v112, type metadata accessor for FormatOption);
      }

      sub_1D5D07BA8(v207, v208, v221);
      goto LABEL_181;
    }

    v181 = (*&v220[15] >> 8) & 0x7FF;
    v182 = *&v220[8];
    v183 = *v220;
    v194 = v52;
    v203 = v45;
    switch((((*&v220[15] >> 8) & 0x700u) >> 7) & 0xFFFFFFFE | ((*&v220[15] >> 8) >> 3) & 1)
    {
      case 3u:
      case 4u:
        *v211 = v218;
        *&v211[16] = v53;
        LOBYTE(v214) = 5;
        v120 = v218;
        sub_1D5D03180(v47, v48, v49);

        sub_1D62B5248(&v218, &v216);

        v121 = v210;
        v122 = sub_1D703E0C8(v211, &v214);
        if (v121)
        {

          goto LABEL_180;
        }

        *(&v180 + 1) = v122;
        sub_1D6BEBFEC(v120, v54, v122, 1, v185);
        v210 = 0;

        v105 = v54;

        sub_1D5B6EF64(v185, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_94:
        v106 = v181;
        v107 = v184;
        *&v216 = v184;
        *(&v216 + 1) = v105;
        *v217 = v55;
        v180 = v55;
        v108 = v183;
        v109 = v182;
        *&v217[16] = v183;
        *&v217[24] = v182;
        v217[32] = v56;
        v217[33] = BYTE1(v181);
        v110 = v202;
        v111 = v204;
        v84 = v210;
        FormatTextNodeBinding.bindChildren(binder:context:)(v202, v204);
        if (v84)
        {
LABEL_154:

          goto LABEL_180;
        }

        *v211 = v107;
        *&v211[8] = v105;
        *&v211[16] = v180;
        *&v211[32] = v108;
        v212 = v109;
        v213 = v106;
        FormatTextNodeBinding.bind(binder:context:)(v110, v111);
        v59 = v110;
        v82 = v209;
        v61 = v205;
        v52 = v194;
        v45 = v203;
        break;
      default:
        v105 = *(&v218 + 1);
        sub_1D5D03180(v47, v48, v49);

        goto LABEL_94;
    }

LABEL_125:
    sub_1D621E8B0(v59, v204, v82);
    if (v84)
    {

      goto LABEL_172;
    }

    if (!(v61 >> 62))
    {
      break;
    }

    if (v61 >> 62 != 1)
    {
      v210 = 0;
LABEL_139:

      goto LABEL_4;
    }

    v123 = v61 & 0x3FFFFFFFFFFFFFFFLL;
    v124 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v125 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v126 = *(v123 + 32);
    v127 = *(v124 + 24);
    v128 = *(v124 + 32);
    v129 = *(v124 + 40);
    v130 = *(v124 + 64);
    if (*(v124 + 66))
    {
      v131 = 8;
    }

    else
    {
      v131 = 0;
    }

    v132 = v131 & 0xFFFFFFF8 | (v130 >> 11) & 7;
    if (v132 <= 3)
    {
      if ((v132 - 1) >= 2)
      {
        *&v216 = *(v124 + 16);
        *(&v216 + 1) = v127;
        if (v132)
        {
          v217[0] = v128;
          FormatTagBinding.Command.bind(binder:context:)(v202, v204);
        }

        else
        {
          *v217 = v128;
          v217[8] = v129;
          FormatGroupBinding.Command.bind(binder:context:)(v202, v204);
        }
      }
    }

    else if (((1 << v132) & 0x330) == 0)
    {
      *&v216 = *(v124 + 16);
      *(&v216 + 1) = v127;
      *v217 = v128;
      if (v132 == 6)
      {
        v217[8] = v129;
        FormatSportsEventBinding.Command.bind(binder:context:)(v202, v204);
      }

      else
      {
        *&v217[8] = v129;
        *&v217[16] = *(v124 + 48);
        *&v217[32] = v130 & 0xC7FF;
        FormatString.bind(binder:context:)(v202, v204);
      }
    }

    sub_1D621E8B0(v202, v204, v125);
    v210 = 0;
    if (!(v126 >> 62))
    {
      v150 = *(v126 + 32);
      v216 = *(v126 + 16);
      *v217 = v150;
      *&v217[16] = *(v126 + 48);
      *&v217[32] = *(v126 + 64);
      FormatTextNodeBinding.bind(binder:context:)(v202, v204);
      v210 = 0;
LABEL_3:

      goto LABEL_4;
    }

    if (v126 >> 62 != 1)
    {
      goto LABEL_3;
    }

    v194 = v52;
    v143 = v126 & 0x3FFFFFFFFFFFFFFFLL;
    v144 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v145 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v146 = *(v143 + 32);
    v147 = *(v144 + 32);
    v216 = *(v144 + 16);
    *v217 = v147;
    *&v217[16] = *(v144 + 48);
    *&v217[31] = *(v144 + 63);
    v148 = v202;
    v149 = v204;
    FormatCommandBinding.bind(binder:context:)(v202, v204);
    sub_1D621E8B0(v148, v149, v145);
    sub_1D6EAF49C(v148, v149, v146);
    v210 = 0;

LABEL_4:

    sub_1D5D07BA8(v207, v208, v221);
LABEL_5:

LABEL_6:
    v46 += 4;
    if (!--v45)
    {
      return v43.n128_f64[0];
    }
  }

  v133 = *(v61 + 32);
  v216 = *(v61 + 16);
  *v217 = v133;
  v134 = *(v61 + 48);
  *&v217[32] = *(v61 + 64);
  *&v217[16] = v134;
  v135 = *(&v216 + 1);
  v136 = v216;
  v137 = v133;
  v138 = v217[32];
  switch((2 * v217[33]) | ((v217[32] & 8) != 0))
  {
    case 2:
      v210 = 0;
      v151 = *&v217[8];
      v152 = *&v217[24];
LABEL_153:
      *v211 = v136;
      *&v211[8] = v135;
      *&v211[16] = v137;
      *&v211[24] = v151;
      v212 = v152;
      LOBYTE(v213) = v138 & 0xF7;
      v84 = v210;
      FormatGroupBinding.Text.bind(binder:context:)(v59, v204);
      if (v84)
      {
        goto LABEL_154;
      }

      goto LABEL_136;
    case 3:
    case 4:
      v214 = v216;
      v215 = v133;
      v222 = 5;
      sub_1D5FD78CC(&v216, v211);

      v184 = sub_1D703E0C8(&v214, &v222);
      v210 = 0;
      v139 = v204;
      v140 = v191;
      FormatOptionCollection.subscript.getter(v136, v135, v191);
      if ((*v193)(v140, 1, v201) == 1)
      {

        sub_1D5B6EF64(v140, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(v139 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v171 = v136;
          v171[1] = v135;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_172;
        }

        v141 = 1;
        v142 = v190;
      }

      else
      {
        v153 = v187;
        sub_1D5D5E33C(v140, v187, type metadata accessor for FormatOption);
        *v211 = v153[2];
        v154 = v184;

        FormatOptionValue.type.getter(v155, &v214);
        if ((sub_1D6183C84(v214, v154) & 1) == 0)
        {
          v204 = type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v167 = v166;
          v168 = v153[1];
          v210 = *v153;
          *v211 = v153[2];

          FormatOptionValue.type.getter(v169, &v214);
          v170 = v214;
          *v167 = v210;
          *(v167 + 8) = v168;
          *(v167 + 16) = v170;
          *(v167 + 24) = v154;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B51D0(v153, type metadata accessor for FormatOption);

          goto LABEL_172;
        }

        swift_bridgeObjectRelease_n();
        v142 = v190;
        sub_1D5D5E33C(v153, v190, type metadata accessor for FormatOption);
        v141 = 0;
      }

      (*v197)(v142, v141, 1, v201);
      sub_1D5B6EF64(v142, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v135 = *(&v216 + 1);
      v138 = v217[32];
      v84 = v210;
      v59 = v202;
      switch((2 * v217[33]) | ((v217[32] & 8) != 0))
      {
        case 2:
          v152 = *&v217[24];
          v151 = *&v217[8];
          v137 = *v217;
          v136 = v216;
          goto LABEL_153;
        case 12:
          goto LABEL_159;
        default:
          goto LABEL_139;
      }

    case 12:
LABEL_159:
      v210 = v84;
      if (!(v135 >> 6) || v135 >> 6 == 1)
      {
        goto LABEL_139;
      }

      LOBYTE(v214) = v135 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v211, 0, sizeof(v211));
        sub_1D5BFB774(v211, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        goto LABEL_139;
      }

      v156 = *&v211[24];
      v157 = *&v211[32];
      __swift_project_boxed_opaque_existential_1(v211, *&v211[24]);
      v158 = v210;
      (*(v157 + 8))(v59, v204, v156, v157);
      if (!v158)
      {
        v210 = 0;
        __swift_destroy_boxed_opaque_existential_1(v211);

        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1(v211);

LABEL_172:

      sub_1D5D07BA8(v207, v208, v221);
LABEL_181:

      return v43.n128_f64[0];
    default:
LABEL_136:
      v210 = v84;
      goto LABEL_139;
  }
}

void sub_1D6220CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 56);
    do
    {
      if ((*v7 & 0x8000000000000000) != 0)
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 8);
        v10 = *((*v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *(v10 + 24);
        v13 = *(v7 - 3);
        sub_1D5D03180(v13, v8, v9);

        sub_1D6220CF8(a1, a2, v12);
        if (v4)
        {

          sub_1D5D07BA8(v13, v8, v9);

          return;
        }

        sub_1D6251CF0(a1, a2, *(v10 + 32));
        v4 = 0;

        sub_1D5D07BA8(v13, v8, v9);
      }

      v7 += 4;
      --v5;
    }

    while (v5);
  }
}

void sub_1D6220E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v8 = (a3 + 32);
    do
    {
      v9 = v8[5];
      v10 = v8[7];
      v74 = v8[6];
      v75 = v10;
      v11 = v8[1];
      v12 = v8[3];
      v70 = v8[2];
      v71 = v12;
      v13 = v8[3];
      v14 = v8[5];
      v72 = v8[4];
      v73 = v14;
      v15 = v8[1];
      v68 = *v8;
      v69 = v15;
      v16 = v8[7];
      v77[6] = v74;
      v77[7] = v16;
      v77[2] = v70;
      v77[3] = v13;
      v77[4] = v72;
      v77[5] = v9;
      v76 = *(v8 + 128);
      v78 = *(v8 + 128);
      v77[0] = v68;
      v77[1] = v11;
      v17 = sub_1D5F78DC4(v77);
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = sub_1D5DEA32C(v77);
          v59 = *v18;
          v19 = *(v18 + 64);
          v21 = *(v18 + 16);
          v20 = *(v18 + 32);
          v62 = *(v18 + 48);
          v63 = v19;
          v60 = v21;
          v61 = v20;
          v23 = *(v18 + 96);
          v22 = *(v18 + 112);
          v24 = *(v18 + 80);
          v67 = *(v18 + 128);
          v65 = v23;
          v66 = v22;
          v64 = v24;
          if (sub_1D6011234(&v59) != 1)
          {
            v29 = sub_1D5D756B8(&v59);
            v30 = v29[3];
            v32 = *v29;
            v31 = v29[1];
            v48[2] = v29[2];
            v48[3] = v30;
            v48[0] = v32;
            v48[1] = v31;
            v33 = v29[7];
            v35 = v29[4];
            v34 = v29[5];
            v48[6] = v29[6];
            v48[7] = v33;
            v48[4] = v35;
            v48[5] = v34;
            if (sub_1D6011280(v48) == 1)
            {
              v36 = *(sub_1D5D756C8(v48) + 112);
              v58 = v76;
              v56 = v74;
              v57 = v75;
              v52 = v70;
              v53 = v71;
              v54 = v72;
              v55 = v73;
              v50 = v68;
              v51 = v69;
              v37 = sub_1D5DEA32C(&v50);
              sub_1D5F78E88(v37, v49);
              sub_1D6212DD8(a1, a2, v36);
              if (v4)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v43 = sub_1D5D756C8(v48);
              v44 = *v43;
              v46 = v43[6];
              v45 = v43[7];
              v50 = v68;
              v51 = v69;
              v56 = v74;
              v57 = v75;
              v58 = v76;
              v52 = v70;
              v53 = v71;
              v54 = v72;
              v55 = v73;
              v47 = sub_1D5DEA32C(&v50);
              sub_1D5F78E88(v47, v49);
              sub_1D6212DD8(a1, a2, v44);
              if (v4)
              {
LABEL_24:
                sub_1D5ECEFDC(&v68);
                return;
              }

              if (v46)
              {

                sub_1D620B270(a1, a2, v46);
                sub_1D620B270(a1, a2, v45);
                v4 = 0;
                sub_1D5CDE22C(v46, v45);
              }
            }

LABEL_23:
            sub_1D5ECEFDC(&v68);
            goto LABEL_4;
          }

          *&v48[0] = *sub_1D5D756B8(&v59);
          v52 = v70;
          v53 = v71;
          v50 = v68;
          v51 = v69;
          v58 = v76;
          v56 = v74;
          v57 = v75;
          v54 = v72;
          v55 = v73;
          v25 = sub_1D5DEA32C(&v50);
          sub_1D5ECEF80(&v68, v49);
          sub_1D5F78E88(v25, v49);
          FormatColor.bind(binder:context:)(a1, a2);
          if (v4)
          {
            sub_1D5ECEFDC(&v68);

            return;
          }

          sub_1D5ECEFDC(&v68);
        }

        else
        {
          sub_1D5DEA32C(v77);
        }
      }

      else
      {
        v26 = sub_1D5DEA32C(v77);
        sub_1D5F78F40(v26, v49);
        v54 = v49[4];
        v55 = v49[5];
        v56 = v49[6];
        v57 = v49[7];
        v50 = v49[0];
        v51 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        if (sub_1D6011280(&v50) == 1)
        {
          v27 = *(sub_1D5D756C8(&v50) + 112);
          v67 = v76;
          v65 = v74;
          v66 = v75;
          v61 = v70;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v59 = v68;
          v60 = v69;
          v28 = sub_1D5DEA32C(&v59);
          sub_1D5F78EE4(v28, v48);
          sub_1D6212DD8(a1, a2, v27);
        }

        else
        {
          v38 = sub_1D5D756C8(&v50);
          v39 = *v38;
          v41 = v38[6];
          v40 = v38[7];
          v59 = v68;
          v60 = v69;
          v65 = v74;
          v66 = v75;
          v67 = v76;
          v61 = v70;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v42 = sub_1D5DEA32C(&v59);
          sub_1D5F78EE4(v42, v48);
          sub_1D6212DD8(a1, a2, v39);
          if (v4)
          {
            goto LABEL_24;
          }

          if (!v41)
          {
            goto LABEL_23;
          }

          sub_1D620B270(a1, a2, v41);
          sub_1D620B270(a1, a2, v40);
          v4 = 0;
          sub_1D5CDE22C(v41, v40);
        }

        sub_1D5ECEFDC(&v68);
        if (v4)
        {
          return;
        }
      }

LABEL_4:
      v8 = (v8 + 136);
      --v5;
    }

    while (v5);
  }
}

void sub_1D62212CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatPropertyDefinition(0);
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (!v11)
  {
    return;
  }

  v12 = 0;
  v13 = a3 + 32;
  v45 = a3 + 32;
  v46 = v11;
  v14 = a2;
  v15 = a1;
  v47 = a1;
  v48 = a2;
  while (1)
  {
    v16 = v13 + 88 * v12;
    v17 = *(v16 + 48);
    v63 = *(v16 + 32);
    v64 = v17;
    v65 = *(v16 + 64);
    v66 = *(v16 + 80);
    v18 = v66;
    v19 = *(v16 + 16);
    v62[0] = *v16;
    v62[1] = v19;
    v20 = v66 >> 6;
    if (!v20)
    {
      goto LABEL_4;
    }

    v21 = v63;
    v22 = v64;
    v23 = v65;
    if (v20 != 1)
    {
      break;
    }

    if ((v66 & 1) == 0)
    {
      v24 = *(v64 + 32);
      v56 = *(v64 + 16);
      v57 = v24;
      v58[0] = *(v64 + 48);
      *(v58 + 15) = *(v64 + 63);
      v54 = *(&v63 + 1);
      sub_1D62B7D1C(v62, &v59);
      v52 = v18;
      sub_1D618EC0C(v21, v54, v22, *(&v22 + 1), v23, *(&v23 + 1), v18);
      v53 = v22;
      v51 = *(&v23 + 1);
      sub_1D618ECBC(v22, *(&v22 + 1), v23, *(&v23 + 1), 0);
      v25 = v47;
      v26 = v48;
      FormatCommandBinding.bind(binder:context:)(v47, v48);
      if (v4)
      {
        v42 = v53;
        v43 = v51;
        sub_1D60CF6F4(v21, v54, v53, *(&v22 + 1), v23, v51, v52);
        sub_1D62B7D78(v62);
        sub_1D5E32940(v42, *(&v22 + 1), v23, v43, 0);
        return;
      }

      v55 = *(&v22 + 1);
      sub_1D620BE38(v25, v26, *(&v22 + 1));
      v4 = 0;
      v27 = v51;
      *&v56 = v23;
      *(&v56 + 1) = v51;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

      v28 = swift_dynamicCast();
      v29 = v53;
      if (v28)
      {
        v31 = *(&v60 + 1);
        v30 = v61;
        __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
        (*(v30 + 8))(v47, v48, v31, v30);
        __swift_destroy_boxed_opaque_existential_1(&v59);
        v29 = v53;
        v32 = v55;
        sub_1D60CF6F4(v21, v54, v53, v55, v23, v27, v52);
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_1D5BFB774(&v59, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        v32 = v55;
        sub_1D60CF6F4(v21, v54, v29, v55, v23, v27, v52);
      }

      sub_1D62B7D78(v62);
      sub_1D5E32940(v29, v32, v23, v27, 0);
      v13 = v45;
      v11 = v46;
      v15 = v47;
      v14 = v48;
    }

LABEL_4:
    if (++v12 == v11)
    {
      return;
    }
  }

  v49 = v12;
  v50 = v65;
  v33 = v64;
  v34 = v15;
  v52 = v66;
  v55 = *(&v64 + 1);
  v35 = v14;
  v36 = *(v63 + 16);
  v37 = *(&v63 + 1);
  sub_1D62B7D1C(v62, &v59);
  v53 = v33;
  v54 = v37;
  v38 = v37;
  v39 = v52;
  v51 = *(&v23 + 1);
  sub_1D618EC0C(v21, v38, v33, v55, v50, *(&v23 + 1), v52);
  if (!v36)
  {
LABEL_3:
    sub_1D62B7D78(v62);
    sub_1D60CF6F4(v21, v54, v53, v55, v50, v51, v39);
    v14 = v35;
    v15 = v34;
    v13 = v45;
    v11 = v46;
    v12 = v49;
    goto LABEL_4;
  }

  v40 = 0;
  v41 = v44;
  while (v40 < *(v21 + 16))
  {
    sub_1D62B50EC(v21 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v40, v41, type metadata accessor for FormatPropertyDefinition);
    FormatPropertyDefinition.bind(binder:context:)(v34, v35);
    if (v4)
    {
      sub_1D62B51D0(v41, type metadata accessor for FormatPropertyDefinition);
      sub_1D62B7D78(v62);
      sub_1D60CF6F4(v21, v54, v53, v55, v50, v51, v39);
      return;
    }

    ++v40;
    sub_1D62B51D0(v41, type metadata accessor for FormatPropertyDefinition);
    if (v36 == v40)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1D6221808(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 64); ; i += 5)
    {
      v8 = *i;

      swift_bridgeObjectRetain_n();
      sub_1D6215F90(a1, a2, v8);
      if (v3)
      {
        break;
      }

      swift_bridgeObjectRelease_n();

      if (!--v4)
      {
        return;
      }
    }

    swift_bridgeObjectRelease_n();
  }
}

double sub_1D62218D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v229 = type metadata accessor for FormatOption(0);
  v6 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229, v7);
  v9 = &v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v216 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v216 - v20;
  v22 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v228 = &v216 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v25, v26).n128_u64[0];
  v29 = *(a3 + 16);
  if (!v29)
  {
    return result;
  }

  v227 = &v216 - v27;
  v222 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v221 = (v6 + 48);
  v219 = (v6 + 56);
  v217 = v13;
  v218 = v9;
  v30 = (a3 + 56);
  v236 = a2;
  v235 = a1;
  v223 = v17;
  v31 = a2;
  v220 = v21;
  while (1)
  {
    v38 = *(v30 - 3);
    v37 = *(v30 - 2);
    v39 = *(v30 - 8);
    v40 = *v30;
    v41 = *v30 >> 61;
    if (v41 <= 1)
    {
      break;
    }

    if (v41 == 2)
    {
      *&v234 = v30;
      v237 = v29;
      v32 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = v39;
      v35 = v37;
      sub_1D5D03180(v38, v37, v39);

      v36 = v247;
      sub_1D62433FC(a1, v31, v32, v33);
      v247 = v36;
      if (v36)
      {

        v197 = v38;
        v198 = v35;
        v199 = v34;
        goto LABEL_218;
      }

      sub_1D5D07BA8(v38, v35, v34);

      v29 = v237;
      v30 = v234;
    }

    else if (v41 == 3)
    {
      v232 = *(v30 - 3);
      v42 = v37;
      v43 = v40 & 0x1FFFFFFFFFFFFFFFLL;
      v45 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v46 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v47 = *(v45 + 32);
      v238 = *(v45 + 16);
      *v239 = v47;
      *&v239[16] = *(v45 + 48);
      *&v239[31] = *(v45 + 63);
      v48 = *(&v238 + 1);
      v49 = v47;
      v50 = v239[32];
      if (v239[34])
      {
        v51 = 8;
      }

      else
      {
        v51 = 0;
      }

      v52 = v51 & 0xFFFFFFF8 | (*&v239[32] >> 11) & 7;
      v233 = v39;
      v237 = v29;
      if (v52 <= 4)
      {
        if (v52 > 1)
        {
          if (v52 == 3)
          {
            goto LABEL_117;
          }

LABEL_122:
          v133 = v232;
          v89 = v37;
LABEL_125:
          sub_1D5D03180(v133, v37, v39);

          v91 = v247;
LABEL_126:
          sub_1D62218D8(v235, v236, v44);
          if (!v91)
          {
            v134 = v46 >> 61;
            if ((v46 >> 61) > 1)
            {
              if (v134 == 2)
              {
                v31 = v236;
                sub_1D62433FC(v235, v236, *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
                v247 = 0;

                sub_1D5D07BA8(v232, v89, v233);
              }

              else
              {
                if (v134 == 3)
                {
                  v230 = v43;
                  v231 = v89;
                  *&v234 = v30;
                  v135 = v232;
                  v136 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v137 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                  v138 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                  v139 = *(v136 + 24);
                  v140 = *(v136 + 32);
                  v141 = *(v136 + 40);
                  v142 = *(v136 + 64);
                  if (*(v136 + 66))
                  {
                    v143 = 8;
                  }

                  else
                  {
                    v143 = 0;
                  }

                  v144 = v143 & 0xFFFFFFF8 | (v142 >> 11) & 7;
                  if (v144 <= 3)
                  {
                    v145 = v236;
                    if ((v144 - 1) >= 2)
                    {
                      *v243 = *(v136 + 16);
                      *&v243[8] = v139;
                      if (v144)
                      {
                        v243[16] = v140;
                        FormatTagBinding.Command.bind(binder:context:)(v235, v236);
                      }

                      else
                      {
                        *&v243[16] = v140;
                        v243[24] = v141;
                        FormatGroupBinding.Command.bind(binder:context:)(v235, v236);
                      }
                    }
                  }

                  else
                  {
                    v145 = v236;
                    if (((1 << v144) & 0x330) == 0)
                    {
                      *v243 = *(v136 + 16);
                      *&v243[8] = v139;
                      *&v243[16] = v140;
                      if (v144 == 6)
                      {
                        v243[24] = v141;
                        FormatSportsEventBinding.Command.bind(binder:context:)(v235, v236);
                      }

                      else
                      {
                        *&v243[24] = v141;
                        *&v243[32] = *(v136 + 48);
                        *&v243[48] = v142 & 0xC7FF;
                        FormatString.bind(binder:context:)(v235, v236);
                      }
                    }
                  }

                  v185 = v235;
                  sub_1D62218D8(v235, v145, v137);
                  sub_1D625C2EC(v185, v145, v138);
                  v247 = 0;

                  sub_1D5D07BA8(v135, v231, v233);

                  v29 = v237;
                  v30 = v234;
                  a1 = v235;
                  v31 = v145;
                  goto LABEL_5;
                }

                v247 = 0;

                sub_1D5D07BA8(v232, v89, v233);

                v31 = v236;
              }

              v29 = v237;
              goto LABEL_169;
            }

            *&v234 = v30;
            v231 = v89;
            v230 = v43;
            if (!v134)
            {
              v146 = *(v46 + 40);
              v147 = *(v46 + 48);
              v148 = *(v46 + 56);
              v149 = *(v46 + 64);
              v150 = *(v46 + 72);
              if ((v146 & 4) != 0)
              {
                *v243 = *(v46 + 16);
                FormatTextContent.bind(binder:context:)(v235, v236);
              }

              else
              {
                sub_1D6245970(v235, v236, *(v46 + 16), *(v46 + 24), *(v46 + 32), v146);
              }

              v226 = v46;
              if ((v149 & 0x2000000000000000) != 0)
              {
                *v243 = v147;
                FormatSyncImageContent.bind(binder:context:)(v235, v236);
                v164 = v233;
                v165 = v232;
              }

              else
              {
                v161 = *(v147 + 32);
                *v243 = *(v147 + 16);
                *&v243[16] = v161;
                *&v243[32] = *(v147 + 48);
                *&v243[47] = *(v147 + 63);
                v162 = v235;
                v163 = v236;
                FormatCommandBinding.bind(binder:context:)(v235, v236);
                sub_1D6226080(v162, v163, v148);
                v164 = v233;
                *v243 = v149;

                FormatSyncImageContent.bind(binder:context:)(v162, v163);
                v165 = v232;
              }

              v176 = v150 >> 62;
              if ((v150 >> 62) > 1)
              {
                if (v176 == 2)
                {
                  sub_1D6245CC4(v235, v236, *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
                }

                v247 = 0;
              }

              else
              {
                if (v176)
                {
                  v179 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v180 = *(v179 + 32);
                  *v243 = *(v179 + 16);
                  *&v243[16] = v180;
                  *&v243[32] = *(v179 + 48);
                  *&v243[47] = *(v179 + 63);
                  FormatCommandBinding.bind(binder:context:)(v235, v236);
                  v247 = 0;
                }

                else
                {
                  v177 = swift_projectBox();
                  v178 = v228;
                  sub_1D62B50EC(v177, v228, type metadata accessor for FormatCommandOpenURL);
                  sub_1D5F86DA0(v236);
                  v247 = 0;
                  sub_1D62B51D0(v178, type metadata accessor for FormatCommandOpenURL);
                }
              }

              sub_1D5D07BA8(v165, v231, v164);

              v31 = v236;
              v29 = v237;
              v30 = v234;
LABEL_169:
              a1 = v235;
              goto LABEL_5;
            }

            v225 = v44;
            v224 = v45;
            v151 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v153 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v152 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v154 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v155 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v156 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
            if ((~v151 & 0xF000000000000007) == 0 && (*((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) == 7)
            {
              v31 = v236;
              v30 = v234;
            }

            else
            {
              v226 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
              v247 = v155;
              v158 = v156;
              v159 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v160 = *((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              *v243 = v160;
              *&v243[8] = v151;
              *&v243[16] = v159;
              *&v243[24] = v153;
              sub_1D62B7098(v160, v151, v159, v153);
              FormatMenuTitle.bind(binder:context:)(v235, v236);
              sub_1D62B7130(v160, v151, v159, v153);
              v31 = v236;
              v30 = v234;
              v156 = v158;
              v155 = v247;
              v154 = v226;
            }

            if ((v152 & 0x3000000000000007 & v155) == 0x3000000000000007)
            {
              goto LABEL_155;
            }

            *v243 = v152;
            *&v243[8] = v154;
            *&v243[16] = v155;
            v166 = v154;
            v247 = 0;
            v167.n128_f64[0] = sub_1D62B6FC0(v152, v154, v155);
            v168 = v247;
            FormatMenuImage.bind(binder:context:)(v235, v31, v167, v169, v170, v171, v172, v173);
            if (!v168)
            {
              sub_1D62B703C(v152, v166, v155);
LABEL_155:
              a1 = v235;
              sub_1D6223ECC(v235, v31, v156);
              v247 = 0;
              v174 = v231;
              v175 = v232;

              sub_1D5D07BA8(v175, v174, v233);
              goto LABEL_93;
            }

            sub_1D62B703C(v152, v166, v155);

            sub_1D5D07BA8(v232, v231, v233);
LABEL_221:

            return result;
          }

LABEL_206:

          sub_1D5D07BA8(v232, v89, v233);
          goto LABEL_221;
        }

        if (v52)
        {
          goto LABEL_122;
        }

        v87 = (v239[8] >> 3) & 7;
        if (v87 <= 1)
        {
          if (!v87)
          {
            goto LABEL_117;
          }

          goto LABEL_122;
        }

        if (v87 != 2 && v87 != 3 && v239[8] >> 6 && v239[8] >> 6 != 1)
        {
          v88 = v239[8] & 7;
          if (v88 > 1)
          {
            goto LABEL_122;
          }

          goto LABEL_59;
        }

        goto LABEL_117;
      }

      if (v52 <= 6)
      {
        if (v52 == 5)
        {
          goto LABEL_122;
        }

        if (v239[8] >> 6 && v239[8] >> 6 != 1)
        {
          v88 = v239[8] & 0x3F;
          if (v88 > 1)
          {
            goto LABEL_122;
          }

LABEL_59:
          if (v88)
          {
            v89 = v37;
            if ((~*(&v238 + 1) & 0xF000000000000007) != 0)
            {
              *v243 = *(&v238 + 1);
              v90 = *(&v238 + 1);
              sub_1D5D03180(v232, v37, v39);

              sub_1D5CFCFAC(v90);
              v91 = v247;
              FormatTextContent.bind(binder:context:)(v235, v236);
              if (v91)
              {
                goto LABEL_226;
              }

              goto LABEL_126;
            }

LABEL_124:
            v133 = v232;
            v37 = v89;
            goto LABEL_125;
          }

          goto LABEL_122;
        }

LABEL_117:
        if (v47 > 1u)
        {
          v89 = v37;
        }

        else
        {
          v89 = v37;
          if (v47 && (~v238 & 0xF000000000000007) != 0)
          {
            *v243 = v238;
            v132 = v238;
            sub_1D5D03180(v232, v37, v39);
            v226 = v46;

            sub_1D5CFCFAC(v132);
            v91 = v247;
            FormatTextContent.bind(binder:context:)(v235, v236);
            if (v91)
            {
LABEL_226:

              goto LABEL_206;
            }

            goto LABEL_183;
          }
        }

        goto LABEL_124;
      }

      if (v52 != 7 || !(*&v239[32] >> 14))
      {
        goto LABEL_122;
      }

      v226 = v46;
      v216 = v238;
      if (*&v239[32] >> 14 != 1)
      {
        v225 = v44;
        v224 = v45;
        v230 = v43;
        v231 = v37;
        v181 = *&v239[24];
        v182 = *&v239[32] & 0x7FF;
        v234 = *&v239[8];
        switch((*&v239[32] >> 7) & 0xE | (*&v239[32] >> 3) & 1)
        {
          case 2:
            sub_1D5D03180(v232, v231, v233);
            v195 = v50 >> 4;

            v91 = v247;
            v184 = v234;
            if (((1 << v195) & 0x1EF7) != 0)
            {
              v183 = v48;
              goto LABEL_174;
            }

            v183 = v48;
            if (v195 == 3)
            {
              *v243 = v216;
              *&v243[8] = v48;
              *&v243[16] = v49;
              sub_1D62B416C(v236);
              if (v91)
              {
                goto LABEL_233;
              }

              goto LABEL_198;
            }

            if ((v48 & 0x80) == 0)
            {
              goto LABEL_174;
            }

            LOBYTE(v245) = v48 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            if (swift_dynamicCast())
            {
              goto LABEL_191;
            }

            goto LABEL_195;
          case 3:
          case 4:
            v245 = v238;
            v246 = v47;
            v244 = 5;
            v183 = *(&v238 + 1);
            v189 = v238;
            sub_1D5D03180(v232, v231, v233);

            sub_1D62B5248(&v238, v243);

            v91 = v247;
            v190 = sub_1D703E0C8(&v245, &v244);
            if (v91)
            {

              goto LABEL_225;
            }

            v191 = v181;
            v192 = v217;
            sub_1D6BEBFEC(v189, v183, v190, 1, v217);

            sub_1D5B6EF64(v192, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v184 = v234;
            v181 = v191;
            goto LABEL_174;
          case 0xC:
            sub_1D5D03180(v232, v231, v233);

            v183 = v48;
            if ((v48 & 0x80) == 0)
            {
              goto LABEL_172;
            }

            LOBYTE(v245) = v48 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            if (swift_dynamicCast())
            {
LABEL_191:
              v193 = *&v243[24];
              v194 = *&v243[32];
              __swift_project_boxed_opaque_existential_1(v243, *&v243[24]);
              v91 = v247;
              (*(v194 + 8))(v235, v236, v193, v194);
              if (v91)
              {
                __swift_destroy_boxed_opaque_existential_1(v243);
LABEL_233:

                goto LABEL_224;
              }

              __swift_destroy_boxed_opaque_existential_1(v243);
            }

            else
            {
LABEL_195:
              memset(v243, 0, 40);
              sub_1D5BFB774(v243, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
              v91 = v247;
            }

LABEL_198:
            v183 = v48;
LABEL_173:
            v184 = v234;
LABEL_174:
            *v243 = v216;
            *&v243[8] = v183;
            *&v243[24] = v184;
            *&v243[16] = v49;
            *&v243[40] = v181;
            *&v243[48] = v182;
            FormatTextNodeBinding.bind(binder:context:)(v235, v236);
            if (!v91)
            {
              v89 = v231;
              v43 = v230;
              v45 = v224;
              v44 = v225;
LABEL_183:
              v46 = v226;
              goto LABEL_126;
            }

LABEL_224:

LABEL_225:
            sub_1D5D07BA8(v232, v231, v233);
            goto LABEL_221;
          default:
            sub_1D5D03180(v232, v231, v233);

            v183 = v48;
LABEL_172:
            v91 = v247;
            goto LABEL_173;
        }
      }

      *&v234 = v30;
      v245 = v238;
      v246 = v47;
      v244 = 5;
      v102 = v44;
      v103 = v238;
      sub_1D5D03180(v232, v37, v39);

      v104 = v102;

      sub_1D62B5248(&v238, v243);
      v105 = v247;
      v106 = sub_1D703E0C8(&v245, &v244);
      v247 = v105;
      if (v105)
      {

        sub_1D5D07BA8(v232, v42, v233);
        goto LABEL_219;
      }

      v224 = v106;
      v107 = v223;
      v108 = v236;
      v225 = v48;
      FormatOptionCollection.subscript.getter(v103, v48, v223);
      if ((*v221)(v107, 1, v229) == 1)
      {
        sub_1D5B6EF64(v107, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v44 = v104;
        if (*(v108 + 48))
        {
          v109 = 1;
          v110 = v220;
          v89 = v42;
LABEL_182:
          (*v219)(v110, v109, 1, v229);
          sub_1D5B6EF64(v110, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v91 = v247;
          v30 = v234;
          goto LABEL_183;
        }

        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v202 = swift_allocError();
        v203 = v225;
        *v204 = v216;
        v204[1] = v203;
        swift_storeEnumTagMultiPayload();
        v247 = v202;
        swift_willThrow();

        v205 = v42;
        v206 = v233;
        v207 = v232;
      }

      else
      {
        v230 = v43;
        v186 = v218;
        sub_1D5D5E33C(v107, v218, type metadata accessor for FormatOption);
        *v243 = *(v186 + 16);
        v187 = v224;

        FormatOptionValue.type.getter(v188, &v245);
        v44 = v104;
        if (sub_1D6183C84(v245, v187))
        {

          v110 = v220;
          sub_1D5D5E33C(v186, v220, type metadata accessor for FormatOption);
          v109 = 0;
          v89 = v42;
          v43 = v230;
          goto LABEL_182;
        }

        v247 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        v208 = swift_allocError();
        v209 = v186;
        v211 = v210;
        v231 = v42;
        v225 = v104;
        v213 = *v209;
        v212 = v209[1];
        *v243 = v209[2];

        FormatOptionValue.type.getter(v214, &v245);
        v215 = v245;
        *v211 = v213;
        *(v211 + 8) = v212;
        v205 = v231;
        v207 = v232;
        *(v211 + 16) = v215;
        *(v211 + 24) = v187;
        v206 = v233;
        swift_storeEnumTagMultiPayload();
        v247 = v208;
        swift_willThrow();
        sub_1D62B51D0(v209, type metadata accessor for FormatOption);
      }

      v197 = v207;
      v198 = v205;
      v199 = v206;
LABEL_218:
      sub_1D5D07BA8(v197, v198, v199);
      goto LABEL_219;
    }

LABEL_5:
    v30 += 4;
    if (!--v29)
    {
      return result;
    }
  }

  v237 = v29;
  if (!v41)
  {
    v53 = *(v40 + 32);
    *v243 = *(v40 + 16);
    *&v243[16] = v53;
    v54 = *(v40 + 64);
    *&v243[32] = *(v40 + 48);
    *&v243[48] = v54;
    v55 = *v243;
    v56 = *&v243[24];
    v233 = v39;
    v231 = v37;
    if ((v243[24] & 4) != 0)
    {
      *&v245 = *v243;
      sub_1D5D03180(v38, v37, v39);

      sub_1D5CFBAA8(v243, &v238);
      v61 = v247;
      FormatTextContent.bind(binder:context:)(a1, v31);
      if (v61)
      {
        sub_1D5D08954(v243);
        v196 = v38;
        goto LABEL_203;
      }
    }

    else
    {
      *&v234 = *&v243[16];
      v232 = *&v243[8];
      v57 = v38;
      v58 = v38;
      v59 = v37;
      v60 = v39;
      sub_1D5D03180(v58, v37, v39);

      sub_1D5CFBAA8(v243, &v238);
      v61 = v247;
      sub_1D6245970(a1, v236, v55, v232, v234, v56);
      if (v61)
      {
        sub_1D5D08954(v243);
        sub_1D5D07BA8(v57, v59, v60);
        goto LABEL_221;
      }

      v38 = v57;
      v31 = v236;
      a1 = v235;
    }

    v71 = *&v243[48];
    if ((*&v243[48] & 0x2000000000000000) == 0)
    {
      v72 = *&v243[40];
      v73 = *(*&v243[32] + 32);
      v238 = *(*&v243[32] + 16);
      *v239 = v73;
      *&v239[16] = *(*&v243[32] + 48);
      *&v239[31] = *(*&v243[32] + 63);
      FormatCommandBinding.bind(binder:context:)(a1, v31);
      sub_1D6226080(a1, v31, v72);
      *&v238 = v71;

      FormatSyncImageContent.bind(binder:context:)(a1, v31);
      v247 = 0;

      goto LABEL_85;
    }

    if (!(*&v243[32] >> 62))
    {
      v92 = *(*&v243[32] + 80);
      *&v239[32] = *(*&v243[32] + 64);
      v93 = *(*&v243[32] + 96);
      v240 = v92;
      v241 = v93;
      v242 = *(*&v243[32] + 112);
      v94 = *(*&v243[32] + 32);
      v238 = *(*&v243[32] + 16);
      *v239 = v94;
      *&v239[16] = *(*&v243[32] + 48);
      FormatSymbolImage.bind(binder:context:)(a1, v31);
      v247 = v61;
      goto LABEL_85;
    }

    v232 = v38;
    if (*&v243[32] >> 62 == 1)
    {
      v75 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v74 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v76 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      if (v76 <= 1)
      {
        if (*((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5E433E0(v75, v74, 1u);
          sub_1D620B270(a1, v31, v75);
          v247 = v61;
          v77 = v75;
          v78 = v74;
          v79 = 1;
        }

        else
        {
          sub_1D5E433E0(v75, v74, 0);
          sub_1D620B270(a1, v31, v75);
          v247 = v61;
          v77 = v75;
          v78 = v74;
          v79 = 0;
        }

        goto LABEL_83;
      }

      v247 = v61;
      if (v76 == 2)
      {
        sub_1D5E433E0(v75, v74, 2u);
        v111 = v247;
        sub_1D620B270(a1, v31, v75);
        if (!v111)
        {
          sub_1D620B270(a1, v31, v74);
          v247 = 0;
          v77 = v75;
          v78 = v74;
          v79 = 2;
LABEL_83:
          sub_1D5E4342C(v77, v78, v79);
          goto LABEL_84;
        }

        sub_1D5E4342C(v75, v74, 2u);
        sub_1D5D08954(v243);
        v196 = v232;
LABEL_203:
        sub_1D5D07BA8(v196, v231, v233);
        goto LABEL_221;
      }

LABEL_84:
      v38 = v232;
LABEL_85:
      v118 = *&v243[56] >> 62;
      if ((*&v243[56] >> 62) > 1)
      {
        if (v118 != 2)
        {
          goto LABEL_92;
        }

        v122 = v247;
        sub_1D6245CC4(a1, v31, *((*&v243[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((*&v243[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      }

      else
      {
        if (!v118)
        {
          v119 = swift_projectBox();
          v120 = v227;
          sub_1D62B50EC(v119, v227, type metadata accessor for FormatCommandOpenURL);
          v121 = v247;
          sub_1D5F86DA0(v31);
          v247 = v121;
          if (!v121)
          {
            sub_1D62B51D0(v120, type metadata accessor for FormatCommandOpenURL);
LABEL_92:
            sub_1D5D08954(v243);
            sub_1D5D07BA8(v38, v231, v233);
LABEL_93:

            v29 = v237;
            goto LABEL_5;
          }

          sub_1D62B51D0(v120, type metadata accessor for FormatCommandOpenURL);
LABEL_215:
          sub_1D5D08954(v243);
          sub_1D5D07BA8(v38, v231, v233);
          goto LABEL_219;
        }

        v123 = *((*&v243[56] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v124 = *(v123 + 16);
        v125 = *(v123 + 24);
        v126 = *(v123 + 32);
        v127 = *(v123 + 40);
        v128 = *(v123 + 64);
        if (*(v123 + 66))
        {
          v129 = 8;
        }

        else
        {
          v129 = 0;
        }

        v130 = v129 & 0xFFFFFFF8 | (v128 >> 11) & 7;
        if (v130 <= 4)
        {
          v122 = v247;
          if (v130 > 1)
          {
            if (v130 != 3 || *(v123 + 32) != 1 || (~v124 & 0xF000000000000007) == 0)
            {
              goto LABEL_92;
            }

            *&v238 = *(v123 + 16);

            FormatTextContent.bind(binder:context:)(a1, v31);
            v247 = v122;
            if (!v122)
            {

              goto LABEL_92;
            }

            goto LABEL_215;
          }

          if (v130)
          {
            goto LABEL_92;
          }

          v131 = (v127 >> 3) & 7;
          if (v131 <= 1)
          {
            if (v131)
            {
              goto LABEL_92;
            }
          }

          else if (v131 != 2 && v131 != 3)
          {
            *&v238 = v124;
            *(&v238 + 1) = v125;
            *v239 = v126;
            v239[8] = v127 & 0xC7;
            FormatSportsEventBinding.Command.bind(binder:context:)(a1, v31);
            goto LABEL_91;
          }

LABEL_186:
          *&v238 = v124;
          *(&v238 + 1) = v125;
          v239[0] = v126;
          FormatTagBinding.Command.bind(binder:context:)(a1, v31);
          goto LABEL_91;
        }

        v122 = v247;
        if (v130 <= 6)
        {
          if (v130 == 5)
          {
            goto LABEL_92;
          }

          if (v127 >> 6 && v127 >> 6 != 1)
          {
            sub_1D624011C(a1, v31, v124, v125, v126, v127 & 0x3F);
            goto LABEL_91;
          }

          goto LABEL_186;
        }

        if (v130 != 7)
        {
          goto LABEL_92;
        }

        *&v238 = *(v123 + 16);
        *(&v238 + 1) = v125;
        *v239 = v126;
        *&v239[8] = v127;
        *&v239[16] = *(v123 + 48);
        *&v239[32] = v128 & 0xC7FF;
        FormatString.bind(binder:context:)(a1, v31);
      }

LABEL_91:
      v247 = v122;
      if (v122)
      {
        goto LABEL_215;
      }

      goto LABEL_92;
    }

    v96 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v95 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v96 >> 62)
    {
      if (v96 >> 62 != 1)
      {
        v247 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v99 = v30;
        v116 = v96 & 0x3FFFFFFFFFFFFFFFLL;
        v117 = *(v116 + 24);
        *&v238 = *(v116 + 16);

        FormatSyncImageContent.bind(binder:context:)(a1, v31);

        sub_1D622B230(a1, v31, v117);

        v31 = v236;
        goto LABEL_80;
      }

      v97 = v96 & 0x3FFFFFFFFFFFFFFFLL;
      v98 = *(v97 + 64);
      if (v98 != 255)
      {
        v247 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v99 = v30;
        v101 = *(v97 + 56);
        *&v238 = *(v97 + 48);
        v100 = v238;
        *(&v238 + 1) = v101;
        v239[0] = v98;

        sub_1D5E433CC(v100, v101, v98);
        FormatBundleImageSize.bind(binder:context:)(a1, v236);
        sub_1D5E43440(v100, v101, v98);

        v31 = v236;
        a1 = v235;
LABEL_80:
        v30 = v99;
        v95 = v247;
      }
    }

    else
    {
      v112 = *((*&v243[32] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v113 = *(v96 + 80);
      *&v239[32] = *(v96 + 64);
      v114 = *(v96 + 96);
      v240 = v113;
      v241 = v114;
      v242 = *(v96 + 112);
      v115 = *(v96 + 32);
      v238 = *(v96 + 16);
      *v239 = v115;
      *&v239[16] = *(v96 + 48);

      FormatSymbolImage.bind(binder:context:)(a1, v31);

      v95 = v112;
    }

    sub_1D622B230(a1, v31, v95);
    v247 = v61;
    goto LABEL_84;
  }

  *&v234 = v30;
  v62 = v37;
  v63 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v238 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  *v239 = v63;
  v64 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  *&v239[16] = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  *&v239[32] = v64;
  *&v240 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v65 = v238;
  v66 = *v239;
  v67 = *&v239[8];
  if ((~*(&v238 + 1) & 0xF000000000000007) != 0 || (v239[8] & 7) != 7)
  {
    if ((v239[8] & 4) != 0)
    {
      *&v245 = v238;
      v69 = v39;
      sub_1D5D03180(v38, v37, v39);

      sub_1D62B72DC(&v238, v243);
      sub_1D62B738C(v65, *(&v65 + 1), v66, v67);
      v70 = v247;
      FormatTextContent.bind(binder:context:)(v235, v236);
    }

    else
    {
      v69 = v39;
      sub_1D5D03180(v38, v37, v39);

      sub_1D62B72DC(&v238, v243);
      sub_1D62B738C(v65, *(&v65 + 1), v66, v67);
      v70 = v247;
      sub_1D6245970(v235, v236, v65, *(&v65 + 1), v66, v67);
    }

    v247 = v70;
    if (v70)
    {
      sub_1D62B7110(v65, *(&v65 + 1), v66, v67);
      goto LABEL_211;
    }

    sub_1D62B7110(v65, *(&v65 + 1), v66, v67);
    v68 = v62;
  }

  else
  {
    v68 = v37;
    v69 = v39;
    sub_1D5D03180(v38, v37, v39);

    sub_1D62B72DC(&v238, v243);
  }

  v80 = *&v239[16];
  v81 = *&v239[32];
  if ((*&v239[16] & 0x3000000000000007 & *&v239[32]) == 0x3000000000000007)
  {
LABEL_45:
    a1 = v235;
    v31 = v236;
    v86 = v247;
    sub_1D6223ECC(v235, v236, v240);
    v247 = v86;
    if (v86)
    {
      sub_1D62B7338(&v238);
      v200 = v38;
      v201 = v68;
      goto LABEL_212;
    }

    sub_1D62B7338(&v238);
    sub_1D5D07BA8(v38, v68, v69);

    v29 = v237;
    v30 = v234;
    goto LABEL_5;
  }

  v82 = *&v239[24];
  if ((*&v239[32] & 0x2000000000000000) != 0)
  {
    *v243 = *&v239[16];
    sub_1D62B6FC0(*&v239[16], *&v239[24], *&v239[32]);
    v83 = v247;
    FormatSyncImageContent.bind(binder:context:)(v235, v236);
  }

  else
  {
    sub_1D62B6FC0(*&v239[16], *&v239[24], *&v239[32]);
    v83 = v247;
    sub_1D6209F10(v235, v236, v80, v82, v81, v84, v85);
  }

  v247 = v83;
  if (!v83)
  {
    sub_1D62B7020(v80, v82, v81);
    v68 = v62;
    goto LABEL_45;
  }

  sub_1D62B7020(v80, v82, v81);
LABEL_211:
  sub_1D62B7338(&v238);
  v200 = v38;
  v201 = v62;
LABEL_212:
  sub_1D5D07BA8(v200, v201, v69);
LABEL_219:

  return result;
}

void sub_1D6223ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v247 = a1;
  v248 = a2;
  v4 = type metadata accessor for FormatOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v224 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v224 - v15;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v241 = &v224 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v243 = &v224 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v242 = &v224 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v245 = &v224 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v244 = &v224 - v35;
  v36 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a3 + 16);
  if (!v40)
  {
    return;
  }

  v246 = v39;
  v232 = v12;
  v233 = v20;
  v234 = v8;
  v239 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v240 = v4;
  v41 = (a3 + 32);
  v238 = (v5 + 48);
  v236 = v16;
  v237 = (v5 + 56);
  v43 = v247;
  v42 = v248;
  v44 = v40;
  while (2)
  {
    v45 = v41[1];
    v265 = *v41;
    v266 = v45;
    v46 = v41[3];
    v267 = v41[2];
    v268 = v46;
    v47 = v265;
    v48 = *(&v266 + 1);
    if ((BYTE8(v266) & 4) != 0)
    {
      *&v251 = v265;
      sub_1D5CFBAA8(&v265, &v258);
      v51 = v269;
      FormatTextContent.bind(binder:context:)(v43, v42);
      if (v51)
      {
LABEL_169:
        v269 = v51;
        goto LABEL_170;
      }
    }

    else
    {
      v49 = *(&v265 + 1);
      v50 = v266;
      sub_1D5CFBAA8(&v265, &v258);
      v51 = v269;
      sub_1D6245970(v43, v42, v47, v49, v50, v48);
      if (v51)
      {
        goto LABEL_169;
      }

      v43 = v247;
      v42 = v248;
    }

    v52 = v268;
    if ((v268 & 0x2000000000000000) == 0)
    {
      v53 = *(&v267 + 1);
      v54 = *(v267 + 32);
      v258 = *(v267 + 16);
      v259 = v54;
      v260[0] = *(v267 + 48);
      *(v260 + 15) = *(v267 + 63);
      FormatCommandBinding.bind(binder:context:)(v43, v42);
      sub_1D6226080(v43, v42, v53);
      *&v258 = v52;

      FormatSyncImageContent.bind(binder:context:)(v43, v42);
      v269 = 0;
LABEL_65:

      goto LABEL_66;
    }

    if (v267 >> 62)
    {
      if (v267 >> 62 == 1)
      {
        v56 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v55 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v57 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v57 > 1)
        {
          v269 = v51;
          if (v57 == 2)
          {
            sub_1D5E433E0(v56, v55, 2u);
            v75 = v269;
            sub_1D620B270(v43, v42, v56);
            if (v75)
            {
              v269 = v75;
              sub_1D5E4342C(v56, v55, 2u);
              goto LABEL_170;
            }

            sub_1D620B270(v43, v42, v55);
            v269 = 0;
            sub_1D5E4342C(v56, v55, 2u);
          }
        }

        else
        {
          if (*((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            sub_1D5E433E0(v56, v55, 1u);
            sub_1D620B270(v43, v42, v56);
            v269 = v51;
            v58 = v56;
            v59 = v55;
            v60 = 1;
          }

          else
          {
            sub_1D5E433E0(v56, v55, 0);
            sub_1D620B270(v43, v42, v56);
            v269 = v51;
            v58 = v56;
            v59 = v55;
            v60 = 0;
          }

          sub_1D5E4342C(v58, v59, v60);
        }

        goto LABEL_66;
      }

      v68 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v68 >> 62))
      {
        v76 = *(v68 + 80);
        v260[1] = *(v68 + 64);
        v261 = v76;
        v262 = *(v68 + 96);
        v263 = *(v68 + 112);
        v77 = *(v68 + 32);
        v258 = *(v68 + 16);
        v259 = v77;
        v78 = *(v68 + 64);
        v260[0] = *(v68 + 48);
        v79 = *(v68 + 80);
        v80 = *(v68 + 96);
        v254 = v78;
        v255 = v79;
        v256 = v80;
        v257 = *(v68 + 112);
        v81 = *(v68 + 32);
        v251 = *(v68 + 16);
        v252 = v81;
        v253 = *(v68 + 48);
        swift_retain_n();

        sub_1D5D0322C(&v258, &v249);
        FormatSymbolImage.bind(binder:context:)(v43, v42);
        v269 = v51;
        sub_1D5D07BBC(&v258);

        v51 = v269;
        goto LABEL_63;
      }

      if (v68 >> 62 == 1)
      {
        v69 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v70 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v71 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v71 > 1)
        {
          if (v71 != 2)
          {

            v42 = v248;
            goto LABEL_63;
          }

          swift_retain_n();
          v235 = v67;

          v269 = v51;
          sub_1D5E433CC(v69, v70, 2u);
          v93 = v70;
          v94 = v248;
          v95 = v269;
          sub_1D620B270(v43, v248, v69);
          if (v95)
          {
            v269 = v95;

            sub_1D5E4342C(v69, v93, 2u);
            goto LABEL_198;
          }

          sub_1D620B270(v43, v94, v93);
          v269 = 0;
          v72 = v69;
          v73 = v93;
          v74 = 2;
        }

        else
        {
          v235 = *((v267 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v71)
          {
            swift_retain_n();

            sub_1D5E433CC(v69, v70, 1u);
            sub_1D620B270(v43, v248, v69);
            v269 = v51;
            v72 = v69;
            v73 = v70;
            v74 = 1;
          }

          else
          {
            swift_retain_n();

            sub_1D5E433CC(v69, v70, 0);
            sub_1D620B270(v43, v248, v69);
            v269 = v51;
            v72 = v69;
            v73 = v70;
            v74 = 0;
          }
        }

        sub_1D5E4342C(v72, v73, v74);

        v51 = v269;
        v42 = v248;
        v67 = v235;
LABEL_63:
        sub_1D622B230(v43, v42, v67);
        v269 = v51;
        if (v51)
        {

          goto LABEL_198;
        }

        goto LABEL_65;
      }

      v82 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v83 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v231 = v82;
      if (!(v82 >> 62))
      {
        v96 = *(v82 + 80);
        v260[1] = *(v82 + 64);
        v261 = v96;
        v262 = *(v82 + 96);
        v263 = *(v82 + 112);
        v97 = *(v82 + 32);
        v258 = *(v82 + 16);
        v259 = v97;
        v98 = *(v82 + 64);
        v260[0] = *(v82 + 48);
        v99 = *(v82 + 80);
        v100 = *(v82 + 96);
        v254 = v98;
        v255 = v99;
        v256 = v100;
        v257 = *(v82 + 112);
        v101 = *(v82 + 32);
        v251 = *(v82 + 16);
        v252 = v101;
        v253 = *(v82 + 48);
        swift_retain_n();
        v230 = v83;

        v235 = v68 & 0x3FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        sub_1D5D0322C(&v258, &v249);
        FormatSymbolImage.bind(binder:context:)(v43, v42);
        v269 = v51;
        sub_1D5D07BBC(&v258);

        v51 = v269;
LABEL_56:
        v83 = v230;
LABEL_61:
        sub_1D622B230(v43, v42, v83);
        v269 = v51;
        if (v51)
        {

          goto LABEL_170;
        }

        v51 = v269;
        goto LABEL_63;
      }

      if (v82 >> 62 == 1)
      {
        v230 = v83;
        v84 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v228 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v229 = (v82 & 0x3FFFFFFFFFFFFFFFLL);
        v85 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        if (v85 > 1)
        {
          if (v85 != 2)
          {
            swift_retain_n();

            v83 = v230;

            goto LABEL_61;
          }

          swift_retain_n();
          v235 = v67;

          swift_retain_n();

          v108 = v228;
          v269 = v51;
          sub_1D5E433CC(v84, v228, 2u);
          v227 = v84;
          v109 = v269;
          sub_1D620B270(v43, v42, v84);
          if (!v109)
          {
            sub_1D620B270(v43, v42, v108);
            sub_1D5E4342C(v227, v108, 2u);

            v51 = 0;
LABEL_55:
            v67 = v235;
            goto LABEL_56;
          }

          v269 = v109;

          v194 = v227;
          v195 = v108;
          v196 = 2;
        }

        else
        {
          v235 = v67;
          v269 = v51;
          if (v85)
          {
            swift_retain_n();

            swift_retain_n();

            v122 = v228;
            sub_1D5E433CC(v84, v228, 1u);
            v123 = v269;
            sub_1D620B270(v43, v42, v84);
            v269 = v123;
            if (v123)
            {

              sub_1D5E4342C(v84, v122, 1u);

              goto LABEL_198;
            }

            v90 = v84;
            v91 = v122;
            v92 = 1;
            goto LABEL_54;
          }

          swift_retain_n();

          swift_retain_n();

          v86 = v84;
          v87 = v84;
          v88 = v228;
          sub_1D5E433CC(v87, v228, 0);
          v89 = v269;
          sub_1D620B270(v43, v42, v86);
          v269 = v89;
          if (!v89)
          {
            v90 = v86;
            v91 = v88;
            v92 = 0;
LABEL_54:
            sub_1D5E4342C(v90, v91, v92);

            v51 = v269;
            goto LABEL_55;
          }

          v194 = v86;
          v195 = v88;
          v196 = 0;
        }

        sub_1D5E4342C(v194, v195, v196);
LABEL_188:

        goto LABEL_198;
      }

      v235 = v44;
      v269 = v51;
      v103 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v102 = *((v82 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v103 >> 62)
      {
        if (v103 >> 62 == 1)
        {
          v104 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          if (v104 == 255)
          {
            swift_retain_n();

            swift_retain_n();
          }

          else
          {
            v105 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v227 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            v225 = v105;
            *&v258 = v105;
            *(&v258 + 1) = v227;
            LOBYTE(v259) = v104;
            LODWORD(v228) = v104;
            swift_retain_n();

            swift_retain_n();
            v230 = v83;

            v226 = v103 & 0x3FFFFFFFFFFFFFFFLL;
            swift_retain_n();
            v229 = v102;

            v106 = v225;
            sub_1D5E433CC(v225, v227, v228);
            v107 = v269;
            FormatBundleImageSize.bind(binder:context:)(v247, v248);
            v269 = v107;
            if (v107)
            {

              sub_1D5E43440(v106, v227, v228);

              goto LABEL_188;
            }

            sub_1D5E43440(v106, v227, v228);

            v102 = v229;
            v83 = v230;
          }
        }

        else
        {
          v228 = v82 & 0x3FFFFFFFFFFFFFFFLL;
          v117 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          *&v258 = *((v103 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v227 = v258;
          swift_retain_n();
          v226 = v117;

          swift_retain_n();

          swift_retain_n();
          v230 = v83;

          v225 = v103 & 0x3FFFFFFFFFFFFFFFLL;
          swift_retain_n();
          v229 = v102;

          v119 = v247;
          v118 = v248;
          v120 = v269;
          FormatSyncImageContent.bind(binder:context:)(v247, v248);
          v269 = v120;
          if (v120)
          {

            goto LABEL_170;
          }

          v121 = v269;
          sub_1D622B230(v119, v118, v226);
          v269 = v121;
          if (v121)
          {

            goto LABEL_170;
          }

          v102 = v229;
          v83 = v230;
        }
      }

      else
      {
        v110 = *(v103 + 80);
        v260[1] = *(v103 + 64);
        v261 = v110;
        v262 = *(v103 + 96);
        v263 = *(v103 + 112);
        v111 = *(v103 + 32);
        v258 = *(v103 + 16);
        v259 = v111;
        v112 = *(v103 + 64);
        v260[0] = *(v103 + 48);
        v113 = *(v103 + 80);
        v114 = *(v103 + 96);
        v254 = v112;
        v255 = v113;
        v256 = v114;
        v257 = *(v103 + 112);
        v115 = *(v103 + 32);
        v251 = *(v103 + 16);
        v252 = v115;
        v253 = *(v103 + 48);
        swift_retain_n();
        v229 = v102;

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v258, &v249);
        v116 = v269;
        FormatSymbolImage.bind(binder:context:)(v247, v248);
        v269 = v116;
        if (v116)
        {

          sub_1D5D07BBC(&v258);

          goto LABEL_198;
        }

        sub_1D5D07BBC(&v258);

        v102 = v229;
      }

      v124 = v269;
      sub_1D622B230(v247, v248, v102);
      v269 = v124;
      if (v124)
      {

        goto LABEL_198;
      }

      v51 = v269;
      v43 = v247;
      v42 = v248;
      v44 = v235;
      goto LABEL_61;
    }

    v61 = *(v267 + 80);
    v260[1] = *(v267 + 64);
    v261 = v61;
    v262 = *(v267 + 96);
    v263 = *(v267 + 112);
    v62 = *(v267 + 32);
    v258 = *(v267 + 16);
    v259 = v62;
    v63 = *(v267 + 64);
    v260[0] = *(v267 + 48);
    v64 = *(v267 + 80);
    v65 = *(v267 + 96);
    v254 = v63;
    v255 = v64;
    v256 = v65;
    v257 = *(v267 + 112);
    v66 = *(v267 + 32);
    v251 = *(v267 + 16);
    v252 = v66;
    v253 = *(v267 + 48);
    sub_1D5D0322C(&v258, &v249);
    FormatSymbolImage.bind(binder:context:)(v43, v42);
    v269 = v51;
    sub_1D5D07BBC(&v258);
LABEL_66:
    v125 = *(&v268 + 1) >> 62;
    if ((*(&v268 + 1) >> 62) > 1)
    {
      if (v125 == 2)
      {
        v129 = *((*(&v268 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v130 = *((*(&v268 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        v131 = v269;
        sub_1D6245CC4(v43, v42, v129, v130);
        v269 = v131;
        if (v131)
        {

          goto LABEL_170;
        }
      }

      goto LABEL_73;
    }

    if (!v125)
    {
      v126 = swift_projectBox();
      v127 = v246;
      sub_1D62B50EC(v126, v246, type metadata accessor for FormatCommandOpenURL);
      v128 = v269;
      sub_1D5F86DA0(v42);
      v269 = v128;
      if (v128)
      {
        sub_1D62B51D0(v127, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_170;
      }

      sub_1D62B51D0(v127, type metadata accessor for FormatCommandOpenURL);
      goto LABEL_73;
    }

    v132 = *((*(&v268 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v133 = *(v132 + 32);
    v258 = *(v132 + 16);
    v259 = v133;
    v134 = *(v132 + 48);
    *(v260 + 15) = *(v132 + 63);
    v260[0] = v134;
    v135 = *(&v258 + 1);
    v136 = v258;
    v137 = v133;
    v138 = v260[1];
    if (BYTE2(v260[1]))
    {
      v139 = 8;
    }

    else
    {
      v139 = 0;
    }

    v140 = v139 & 0xFFFFFFF8 | (LOWORD(v260[1]) >> 11) & 7;
    if (v140 <= 4)
    {
      if (v140 > 1)
      {
        if (v140 != 3)
        {
          goto LABEL_145;
        }

        goto LABEL_110;
      }

      if (v140)
      {
        goto LABEL_145;
      }

      v141 = (DWORD2(v133) >> 3) & 7;
      if (v141 > 1)
      {
        if (v141 == 2 || v141 == 3 || !(BYTE8(v133) >> 6) || BYTE8(v133) >> 6 == 1)
        {
          goto LABEL_110;
        }

        v142 = BYTE8(v133) & 7;
        if (v142 > 1)
        {
          goto LABEL_93;
        }

LABEL_99:
        if (!v142)
        {
          goto LABEL_117;
        }

        v42 = v248;
        if ((~*(&v258 + 1) & 0xF000000000000007) == 0)
        {
          goto LABEL_73;
        }

        *&v249 = *(&v258 + 1);

        sub_1D62B5248(&v258, &v251);
        sub_1D5CFCFAC(v135);
        v143 = v269;
        FormatTextContent.bind(binder:context:)(v43, v42);
        v269 = v143;
        if (v143)
        {
          goto LABEL_180;
        }

LABEL_114:

        goto LABEL_123;
      }

      if (v141)
      {
        goto LABEL_117;
      }

LABEL_110:
      if (v133 > 1u)
      {
        v42 = v248;
        if (v133 == 2)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v42 = v248;
        if (v133)
        {
          if ((~v258 & 0xF000000000000007) != 0)
          {
            *&v249 = v258;

            sub_1D62B5248(&v258, &v251);
            sub_1D5CFCFAC(v136);
            v151 = v269;
            FormatTextContent.bind(binder:context:)(v43, v42);
            v269 = v151;
            if (v151)
            {
LABEL_180:

              goto LABEL_197;
            }

            goto LABEL_114;
          }

LABEL_73:
          sub_1D5D08954(&v265);
          goto LABEL_74;
        }
      }

      sub_1D5D085FC(&v258);
      goto LABEL_73;
    }

    if (v140 <= 6)
    {
      if (v140 == 5)
      {
        goto LABEL_145;
      }

      if (BYTE8(v133) >> 6 && BYTE8(v133) >> 6 != 1)
      {
        v142 = BYTE8(v133) & 0x3F;
        if (v142 > 1)
        {
LABEL_93:
          if (v142 != 2)
          {
LABEL_117:
            sub_1D5D085FC(&v258);
          }

          goto LABEL_145;
        }

        goto LABEL_99;
      }

      goto LABEL_110;
    }

    if (v140 != 7)
    {
      v42 = v248;
      goto LABEL_73;
    }

    if (!(LOWORD(v260[1]) >> 14))
    {
      goto LABEL_145;
    }

    if (LOWORD(v260[1]) >> 14 == 1)
    {
      v249 = v258;
      v250 = v133;
      v264 = 5;
      sub_1D62B5248(&v258, &v251);

      sub_1D62B5248(&v258, &v251);
      v144 = v269;
      v145 = sub_1D703E0C8(&v249, &v264);
      v269 = v144;
      if (v144)
      {
        goto LABEL_197;
      }

      v146 = v145;
      v235 = v44;
      v147 = v248;
      v148 = v245;
      FormatOptionCollection.subscript.getter(v136, v135, v245);
      if ((*v238)(v148, 1, v240) == 1)
      {

        sub_1D5B6EF64(v148, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v44 = v235;
        if ((*(v147 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v197 = swift_allocError();
          *v198 = v136;
          v198[1] = v135;
          swift_storeEnumTagMultiPayload();
          v269 = v197;
          swift_willThrow();

          goto LABEL_197;
        }

        v42 = v147;
        v149 = 1;
        v43 = v247;
        v150 = v244;
LABEL_122:
        (*v237)(v150, v149, 1, v240);
        sub_1D5B6EF64(v150, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_123:
        sub_1D5D085FC(&v258);

        goto LABEL_73;
      }

      v152 = v236;
      sub_1D5D5E33C(v148, v236, type metadata accessor for FormatOption);
      *&v251 = v152[2];

      FormatOptionValue.type.getter(v153, &v249);
      v154 = sub_1D6183C84(v249, v146);
      v43 = v247;
      v44 = v235;
      if (v154)
      {
        swift_bridgeObjectRelease_n();
        v150 = v244;
        sub_1D5D5E33C(v152, v244, type metadata accessor for FormatOption);
        v149 = 0;
        v42 = v248;
        goto LABEL_122;
      }

      v269 = type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      v199 = swift_allocError();
      v201 = v200;
      v202 = *v152;
      v203 = v152[1];
      *&v251 = v152[2];

      FormatOptionValue.type.getter(v204, &v249);
      v205 = v249;
      *v201 = v202;
      *(v201 + 8) = v203;
      *(v201 + 16) = v205;
      *(v201 + 24) = v146;
      swift_storeEnumTagMultiPayload();
      v269 = v199;
      swift_willThrow();

      v206 = v152;
LABEL_196:
      sub_1D62B51D0(v206, type metadata accessor for FormatOption);
      goto LABEL_197;
    }

    switch((LOWORD(v260[1]) >> 7) & 0xE | (LOWORD(v260[1]) >> 3) & 1)
    {
      case 1:
      case 5:
      case 6:
      case 7:
      case 9:
      case 0xA:
      case 0xB:
      case 0xD:

        goto LABEL_144;
      case 2:

        sub_1D62B5248(&v258, &v251);
        v167 = v138 >> 4;
        v168 = v269;
        if (((1 << v167) & 0x1EF7) != 0)
        {
          switch(v138 >> 4)
          {
            case 3:
              goto LABEL_156;
            case 8:
              goto LABEL_164;
            default:
              goto LABEL_144;
          }
        }

        if (v167 != 3)
        {
          if ((v135 & 0x80) != 0)
          {
            v235 = v135;
            LOBYTE(v249) = v135 & 0x3F;
            sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            if (swift_dynamicCast())
            {
              v191 = *(&v252 + 1);
              v192 = v253;
              __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
              v193 = v269;
              (*(v192 + 8))(v43, v248, v191, v192);
              v269 = v193;
              if (v193)
              {
LABEL_199:
                __swift_destroy_boxed_opaque_existential_1(&v251);
                goto LABEL_197;
              }

              __swift_destroy_boxed_opaque_existential_1(&v251);
              v168 = v269;
              v43 = v247;
            }

            else
            {
              *&v253 = 0;
              v251 = 0u;
              v252 = 0u;
              sub_1D5BFB774(&v251, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
              v168 = v269;
            }

            LOBYTE(v135) = v235;
          }

LABEL_164:
          v269 = v168;
          if (!(v135 >> 6) || v135 >> 6 == 1)
          {
            goto LABEL_144;
          }

          LOBYTE(v249) = v135 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if ((swift_dynamicCast() & 1) == 0)
          {
            *&v253 = 0;
            v251 = 0u;
            v252 = 0u;
            sub_1D5BFB774(&v251, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_144:
            sub_1D5D085FC(&v258);

LABEL_145:
            sub_1D5D08954(&v265);
            v42 = v248;
            goto LABEL_74;
          }

          v185 = *(&v252 + 1);
          v186 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
          v187 = *(v186 + 8);
          v188 = v43;
          v189 = v248;
LABEL_151:
          v190 = v269;
          v187(v188, v189, v185, v186);
          v269 = v190;
          if (v190)
          {
            goto LABEL_199;
          }

          __swift_destroy_boxed_opaque_existential_1(&v251);
          sub_1D5D085FC(&v258);

          sub_1D5D08954(&v265);
          v43 = v247;
          v42 = v248;
LABEL_74:
          v41 += 4;
          if (!--v44)
          {
            return;
          }

          continue;
        }

        *&v251 = v136;
        *(&v251 + 1) = v135;
        LOWORD(v252) = v137;
        sub_1D62B416C(v248);
        if (!v168)
        {
LABEL_156:
          *&v251 = v136;
          *(&v251 + 1) = v135;
          LOWORD(v252) = v137;
          v42 = v248;
          sub_1D62B416C(v248);
          v269 = v168;
          if (v168)
          {
            goto LABEL_197;
          }

          goto LABEL_123;
        }

        v269 = v168;
LABEL_197:
        sub_1D5D085FC(&v258);
LABEL_198:

LABEL_170:
        sub_1D5D08954(&v265);
        return;
      case 3:
      case 4:
        v249 = v258;
        v250 = v133;
        v264 = 5;
        sub_1D62B5248(&v258, &v251);

        sub_1D62B5248(&v258, &v251);

        v155 = v269;
        v156 = sub_1D703E0C8(&v249, &v264);
        v269 = v155;
        if (v155)
        {
          goto LABEL_191;
        }

        v231 = v156;
        v235 = v44;
        v157 = v248;
        v158 = v243;
        FormatOptionCollection.subscript.getter(v136, v135, v243);
        v159 = *v238;
        v160 = (*v238)(v158, 1, v240);
        v230 = v159;
        if (v160 == 1)
        {

          sub_1D5B6EF64(v158, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v157 + 48) & 1) == 0)
          {
            goto LABEL_192;
          }

          v161 = 1;
          v162 = v242;
        }

        else
        {
          v169 = v158;
          v170 = v232;
          sub_1D5D5E33C(v169, v232, type metadata accessor for FormatOption);
          *&v251 = *(v170 + 16);
          v171 = v231;

          FormatOptionValue.type.getter(v172, &v249);
          if ((sub_1D6183C84(v249, v171) & 1) == 0)
          {
            v209 = type metadata accessor for FormatDerivedDataError(0);
            v235 = v135;
            v269 = v209;
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            v210 = swift_allocError();
            v211 = v170;
            v213 = v212;
            v215 = *v211;
            v214 = v211[1];
            *&v251 = v211[2];

            FormatOptionValue.type.getter(v216, &v249);
            v217 = v249;
            *v213 = v215;
            *(v213 + 8) = v214;
            *(v213 + 16) = v217;
            *(v213 + 24) = v231;
            swift_storeEnumTagMultiPayload();
            v269 = v210;
            swift_willThrow();

            goto LABEL_195;
          }

          swift_bridgeObjectRelease_n();
          v162 = v242;
          sub_1D5D5E33C(v170, v242, type metadata accessor for FormatOption);
          v161 = 0;
        }

        v173 = *v237;
        v174 = v240;
        (*v237)(v162, v161, 1, v240);
        sub_1D5B6EF64(v162, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *&v249 = v136;
        *(&v249 + 1) = v135;
        v250 = v137;
        v264 = 5;
        sub_1D62B5248(&v258, &v251);

        v175 = v269;
        v176 = sub_1D703E0C8(&v249, &v264);
        v269 = v175;
        if (v175)
        {
LABEL_191:

          goto LABEL_197;
        }

        v231 = v176;
        v229 = v173;
        v177 = v233;
        FormatOptionCollection.subscript.getter(v136, v135, v233);
        if (v230(v177, 1, v174) == 1)
        {

          sub_1D5B6EF64(v177, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v44 = v235;
          if ((*(v248 + 48) & 1) == 0)
          {
LABEL_192:
            type metadata accessor for FormatLayoutError(0);
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
            v207 = swift_allocError();
            *v208 = v136;
            v208[1] = v135;
            swift_storeEnumTagMultiPayload();
            v269 = v207;
            swift_willThrow();

            goto LABEL_197;
          }

          v178 = 1;
          v43 = v247;
          v179 = v241;
          goto LABEL_143;
        }

        v180 = v234;
        sub_1D5D5E33C(v177, v234, type metadata accessor for FormatOption);
        *&v251 = v180[2];
        v181 = v231;

        FormatOptionValue.type.getter(v182, &v249);
        v183 = sub_1D6183C84(v249, v181);
        v43 = v247;
        v44 = v235;
        if (v183)
        {

          swift_bridgeObjectRelease_n();
          v179 = v241;
          sub_1D5D5E33C(v234, v241, type metadata accessor for FormatOption);
          v178 = 0;
LABEL_143:
          v229(v179, v178, 1, v240);
          sub_1D5B6EF64(v179, &qword_1EDF337F0, type metadata accessor for FormatOption);
          goto LABEL_144;
        }

        v269 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        v218 = swift_allocError();
        v220 = v219;
        v235 = v135;
        v211 = v234;
        v221 = v234[1];
        v248 = *v234;
        *&v251 = v234[2];

        FormatOptionValue.type.getter(v222, &v249);
        v223 = v249;
        *v220 = v248;
        *(v220 + 8) = v221;
        *(v220 + 16) = v223;
        *(v220 + 24) = v181;
        swift_storeEnumTagMultiPayload();
        v269 = v218;
        swift_willThrow();

LABEL_195:

        v206 = v211;
        goto LABEL_196;
      case 0xC:
        v163 = BYTE8(v258);

        if ((v135 & 0x80) == 0)
        {
          goto LABEL_147;
        }

        LOBYTE(v249) = v163 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v164 = *(&v252 + 1);
          v165 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
          v166 = v269;
          (*(v165 + 8))(v43, v248, v164, v165);
          v269 = v166;
          if (v166)
          {
            goto LABEL_199;
          }

          __swift_destroy_boxed_opaque_existential_1(&v251);
        }

        else
        {
          *&v253 = 0;
          v251 = 0u;
          v252 = 0u;
          sub_1D5BFB774(&v251, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

LABEL_147:
        v42 = v248;
        if (!(v163 >> 6) || v163 >> 6 == 1)
        {
          goto LABEL_123;
        }

        LOBYTE(v249) = v163 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v184 = v42;
          v185 = *(&v252 + 1);
          v186 = v253;
          __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
          v187 = *(v186 + 8);
          v188 = v43;
          v189 = v184;
          goto LABEL_151;
        }

        *&v253 = 0;
        v251 = 0u;
        v252 = 0u;
        sub_1D5BFB774(&v251, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        goto LABEL_123;
      default:

        sub_1D62B5248(&v258, &v251);
        goto LABEL_144;
    }
  }
}

void sub_1D6226080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a2;
  v5 = a1;
  v6 = 0;
  v261 = a3 + 32;
  v256 = *(a3 + 16);
  while (1)
  {
    v10 = v261 + 32 * v6;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v14 >> 62)
    {
      break;
    }

    v25 = *(v14 + 80);
    v276 = *(v14 + 64);
    v277 = v25;
    v278 = *(v14 + 96);
    v279 = *(v14 + 112);
    v26 = *(v14 + 32);
    v273 = *(v14 + 16);
    v274 = v26;
    v275 = *(v14 + 48);
    v27 = *(v14 + 96);
    v270 = *(v14 + 80);
    v271 = v27;
    v272 = *(v14 + 112);
    v28 = *(v14 + 32);
    v266 = *(v14 + 16);
    v267 = v28;
    v29 = *(v14 + 64);
    v268 = *(v14 + 48);
    v269 = v29;
    v30 = v11;
    sub_1D5D03180(v12, v11, v13);
    swift_retain_n();
    sub_1D5D0322C(&v273, v265);
    v31 = v280;
    FormatSymbolImage.bind(binder:context:)(v5, v4);
    v280 = v31;
    if (v31)
    {
      sub_1D5D07BA8(v12, v30, v13);

      sub_1D5D07BBC(&v273);
      goto LABEL_246;
    }

    sub_1D5D07BA8(v12, v30, v13);

    sub_1D5D07BBC(&v273);

LABEL_6:
    if (++v6 == v3)
    {
      return;
    }
  }

  if (v14 >> 62 != 1)
  {
    v33 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v260 = v6;
    v257 = *(v10 + 8);
    if (!(v33 >> 62))
    {
      v45 = *(v33 + 80);
      v276 = *(v33 + 64);
      v277 = v45;
      v278 = *(v33 + 96);
      v279 = *(v33 + 112);
      v46 = *(v33 + 32);
      v273 = *(v33 + 16);
      v274 = v46;
      v275 = *(v33 + 48);
      v47 = *(v33 + 96);
      v270 = *(v33 + 80);
      v271 = v47;
      v272 = *(v33 + 112);
      v48 = *(v33 + 32);
      v266 = *(v33 + 16);
      v267 = v48;
      v49 = *(v33 + 64);
      v268 = *(v33 + 48);
      v269 = v49;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      sub_1D5D0322C(&v273, v265);
      v50 = v280;
      FormatSymbolImage.bind(binder:context:)(v5, v4);
      v280 = v50;
      if (v50)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_246;
      }

      sub_1D5D07BBC(&v273);

      v51 = v32;
LABEL_232:
      v208 = v280;
      sub_1D622B230(v5, v4, v51);
      v280 = v208;
      if (v208)
      {

        sub_1D5D07BA8(v12, v257, v13);
LABEL_267:

        return;
      }

      sub_1D5D07BA8(v12, v257, v13);

      goto LABEL_5;
    }

    if (v33 >> 62 == 1)
    {
      v254 = *v10;
      v35 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v34 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 2u);
          v66 = v280;
          sub_1D620B270(a1, a2, v35);
          v280 = v66;
          if (v66)
          {

            sub_1D5D07BA8(v254, v257, v13);

            sub_1D5E4342C(v35, v34, 2u);
            goto LABEL_245;
          }

          sub_1D620B270(a1, a2, v34);
          v280 = 0;
          sub_1D5E4342C(v35, v34, 2u);

          v4 = a2;
          v5 = a1;
          v12 = v254;
          v3 = v256;
          v51 = v32;
        }

        else
        {
          v12 = *v10;
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();

          v51 = v32;

          v4 = a2;
          v5 = a1;
          v3 = v256;
        }
      }

      else
      {
        if (*((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v80 = *(v35 + 16);
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 1u);
          if (v80)
          {
            v81 = (v35 + 40);
            do
            {
              if ((*v81 & 1) == 0)
              {
                *&v273 = *(v81 - 1);
                v82 = v273;
                swift_retain_n();
                v83 = v280;
                FormatFloat.bind(binder:context:)(a1, a2);
                v280 = v83;
                if (v83)
                {
                  sub_1D62B72BC(v82, 0);

                  sub_1D5D07BA8(v254, v257, v13);

                  v212 = v35;
                  v213 = v34;
                  v214 = 1;
                  goto LABEL_244;
                }

                sub_1D62B72BC(v82, 0);
              }

              v81 += 16;
              --v80;
            }

            while (v80);
          }

          v84 = v35;
          v85 = v34;
          v86 = 1;
        }

        else
        {
          v36 = *(v35 + 16);
          sub_1D5D03180(v254, v11, v13);
          swift_retain_n();
          swift_retain_n();

          sub_1D5E433CC(v35, v34, 0);
          if (v36)
          {
            v37 = (v35 + 40);
            do
            {
              if ((*v37 & 1) == 0)
              {
                *&v273 = *(v37 - 1);
                v38 = v273;
                swift_retain_n();
                v39 = v280;
                FormatFloat.bind(binder:context:)(a1, a2);
                v280 = v39;
                if (v39)
                {
                  sub_1D62B72BC(v38, 0);

                  sub_1D5D07BA8(v254, v257, v13);

                  v212 = v35;
                  v213 = v34;
                  v214 = 0;
LABEL_244:
                  sub_1D5E4342C(v212, v213, v214);
LABEL_245:

LABEL_246:

                  return;
                }

                sub_1D62B72BC(v38, 0);
              }

              v37 += 16;
              --v36;
            }

            while (v36);
          }

          v84 = v35;
          v85 = v34;
          v86 = 0;
        }

        sub_1D5E4342C(v84, v85, v86);

        v12 = v254;
        v3 = v256;
        v4 = a2;
        v5 = a1;
        v51 = v32;
      }

      goto LABEL_232;
    }

    v52 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v53 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v53 >> 62))
    {
      v67 = *(v53 + 80);
      v276 = *(v53 + 64);
      v277 = v67;
      v278 = *(v53 + 96);
      v279 = *(v53 + 112);
      v68 = *(v53 + 32);
      v273 = *(v53 + 16);
      v274 = v68;
      v275 = *(v53 + 48);
      v69 = *(v53 + 96);
      v270 = *(v53 + 80);
      v271 = v69;
      v272 = *(v53 + 112);
      v70 = *(v53 + 32);
      v266 = *(v53 + 16);
      v267 = v70;
      v71 = *(v53 + 64);
      v268 = *(v53 + 48);
      v269 = v71;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();
      v55 = v54;

      swift_retain_n();
      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v72 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, v4);
      v280 = v72;
      if (v72)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_246;
      }

      sub_1D5D07BBC(&v273);

      v51 = v32;
      goto LABEL_69;
    }

    v253 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v53 >> 62 == 1)
    {
      v55 = v54;
      v57 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v56 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
      {
        v248 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v250 = v55;
        v19 = v280;
        if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v102 = *(v57 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v57, v248, 1u);
          if (v102)
          {
            v103 = (v57 + 40);
            do
            {
              if ((*v103 & 1) == 0)
              {
                *&v273 = *(v103 - 1);
                v104 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(a1, a2);
                if (v19)
                {
                  sub_1D62B72BC(v104, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v215 = v57;
                  v216 = v248;
                  v217 = 1;
                  goto LABEL_249;
                }

                sub_1D62B72BC(v104, 0);
              }

              v103 += 16;
              --v102;
            }

            while (v102);
          }

          v280 = v19;
          v105 = v57;
          v106 = v248;
          v107 = 1;
        }

        else
        {
          v58 = *(v57 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v57, v248, 0);
          if (v58)
          {
            v59 = (v57 + 40);
            do
            {
              if ((*v59 & 1) == 0)
              {
                *&v273 = *(v59 - 1);
                v65 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(a1, a2);
                if (v19)
                {
                  sub_1D62B72BC(v65, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v215 = v57;
                  v216 = v248;
                  v217 = 0;
LABEL_249:
                  sub_1D5E4342C(v215, v216, v217);

                  goto LABEL_239;
                }

                sub_1D62B72BC(v65, 0);
              }

              v59 += 16;
              --v58;
            }

            while (v58);
          }

          v280 = v19;
          v105 = v57;
          v106 = v248;
          v107 = 0;
        }

        sub_1D5E4342C(v105, v106, v107);

        v4 = a2;
        v51 = v253;
        v54 = v250;
        goto LABEL_230;
      }

      if (*((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        v51 = v253;

        v54 = v55;

        v4 = a2;
        goto LABEL_230;
      }

      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      sub_1D5E433CC(v57, v56, 2u);
      v87 = v280;
      sub_1D620B270(a1, a2, v57);
      v280 = v87;
      if (v87)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5E4342C(v57, v56, 2u);

        goto LABEL_245;
      }

      sub_1D620B270(a1, a2, v56);
      v280 = 0;
      sub_1D5E4342C(v57, v56, 2u);

      v4 = a2;
      v51 = v253;
LABEL_69:
      v54 = v55;
LABEL_230:
      v207 = v280;
      sub_1D622B230(a1, v4, v54);
      v280 = v207;
      if (v207)
      {

        sub_1D5D07BA8(v12, v257, v13);
LABEL_266:

        goto LABEL_267;
      }

      v5 = a1;
      v3 = v256;
      goto LABEL_232;
    }

    v255 = *v10;
    v73 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v74 = *((v53 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v73 >> 62))
    {
      v88 = *(v73 + 80);
      v276 = *(v73 + 64);
      v277 = v88;
      v278 = *(v73 + 96);
      v279 = *(v73 + 112);
      v89 = *(v73 + 32);
      v273 = *(v73 + 16);
      v274 = v89;
      v275 = *(v73 + 48);
      v90 = *(v73 + 96);
      v270 = *(v73 + 80);
      v271 = v90;
      v272 = *(v73 + 112);
      v91 = *(v73 + 32);
      v266 = *(v73 + 16);
      v267 = v91;
      v92 = *(v73 + 64);
      v268 = *(v73 + 48);
      v269 = v92;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v93 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, v4);
      v280 = v93;
      if (v93)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_246;
      }

      sub_1D5D07BBC(&v273);

LABEL_228:
      v206 = v280;
      sub_1D622B230(a1, v4, v74);
      v280 = v206;
      if (v206)
      {

        sub_1D5D07BA8(v255, v257, v13);

        goto LABEL_266;
      }

      v51 = v253;
      v12 = v255;
      goto LABEL_230;
    }

    v249 = v74;
    if (v73 >> 62 == 1)
    {
      v76 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v75 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v75, 2u);
          v108 = v280;
          sub_1D620B270(a1, a2, v76);
          v280 = v108;
          if (v108)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v76, v75, 2u);

            goto LABEL_245;
          }

          sub_1D620B270(a1, a2, v75);
          v280 = 0;
          sub_1D5E4342C(v76, v75, 2u);

          v4 = a2;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v4 = a2;
        }
      }

      else
      {
        v247 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v19 = v280;
        if (*((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          v123 = *(v76 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v247, 1u);
          if (v123)
          {
            v124 = (v76 + 40);
            do
            {
              if ((*v124 & 1) == 0)
              {
                *&v273 = *(v124 - 1);
                v125 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(a1, a2);
                if (v19)
                {
                  sub_1D62B72BC(v125, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v218 = v76;
                  v219 = v247;
                  v220 = 1;
LABEL_255:
                  sub_1D5E4342C(v218, v219, v220);

                  goto LABEL_239;
                }

                sub_1D62B72BC(v125, 0);

                v74 = v249;
              }

              v124 += 16;
              --v123;
            }

            while (v123);
          }

          v280 = v19;
          v126 = v76;
          v127 = v247;
          v128 = 1;
        }

        else
        {
          v77 = *(v76 + 16);
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v76, v247, 0);
          if (v77)
          {
            v78 = (v76 + 40);
            do
            {
              if ((*v78 & 1) == 0)
              {
                *&v273 = *(v78 - 1);
                v79 = v273;
                swift_retain_n();
                FormatFloat.bind(binder:context:)(a1, a2);
                if (v19)
                {
                  sub_1D62B72BC(v79, 0);

                  sub_1D5D07BA8(v12, v257, v13);

                  v218 = v76;
                  v219 = v247;
                  v220 = 0;
                  goto LABEL_255;
                }

                sub_1D62B72BC(v79, 0);

                v74 = v249;
              }

              v78 += 16;
              --v77;
            }

            while (v77);
          }

          v280 = v19;
          v126 = v76;
          v127 = v247;
          v128 = 0;
        }

        sub_1D5E4342C(v126, v127, v128);

        v4 = a2;
      }

      goto LABEL_228;
    }

    v94 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v95 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v94 >> 62))
    {
      v109 = *(v94 + 80);
      v276 = *(v94 + 64);
      v277 = v109;
      v278 = *(v94 + 96);
      v279 = *(v94 + 112);
      v110 = *(v94 + 32);
      v273 = *(v94 + 16);
      v274 = v110;
      v275 = *(v94 + 48);
      v111 = *(v94 + 96);
      v270 = *(v94 + 80);
      v271 = v111;
      v272 = *(v94 + 112);
      v112 = *(v94 + 32);
      v266 = *(v94 + 16);
      v267 = v112;
      v113 = *(v94 + 64);
      v268 = *(v94 + 48);
      v269 = v113;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v114 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v280 = v114;
      if (v114)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_246;
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_226;
    }

    if (v94 >> 62 == 1)
    {
      v251 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v244 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v251, v244, 2u);
          v129 = v280;
          sub_1D620B270(a1, a2, v251);
          v280 = v129;
          if (v129)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v251, v244, 2u);

            goto LABEL_246;
          }

          sub_1D620B270(a1, a2, v244);
          v280 = 0;
          sub_1D5E4342C(v251, v244, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else if (*((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v251, v244, 1u);
        v142 = v280;
        sub_1D620B270(a1, a2, v251);
        v280 = v142;
        if (v142)
        {

          sub_1D5D07BA8(v12, v257, v13);

          sub_1D5E4342C(v251, v244, 1u);

          goto LABEL_245;
        }

        sub_1D5E4342C(v251, v244, 1u);
      }

      else
      {
        v96 = *(v251 + 16);
        v262 = *(v10 + 16);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v251, v244, 0);
        if (v96)
        {
          v97 = (v251 + 40);
          do
          {
            if ((*v97 & 1) == 0)
            {
              v98 = v52;
              v99 = v95;
              *&v273 = *(v97 - 1);
              v100 = v273;
              swift_retain_n();
              v101 = v280;
              FormatFloat.bind(binder:context:)(a1, a2);
              v280 = v101;
              if (v101)
              {
                sub_1D62B72BC(v100, 0);

                sub_1D5D07BA8(v255, v257, v262);

                sub_1D5E4342C(v251, v244, 0);

                goto LABEL_245;
              }

              sub_1D62B72BC(v100, 0);

              v13 = v262;
              v95 = v99;
              v52 = v98;
            }

            v97 += 16;
            --v96;
          }

          while (v96);
        }

        sub_1D5E4342C(v251, v244, 0);
      }

LABEL_226:
      v205 = v280;
      sub_1D622B230(a1, a2, v95);
      v280 = v205;
      if (v205)
      {

        sub_1D5D07BA8(v255, v257, v13);

        goto LABEL_266;
      }

      v4 = a2;
      v74 = v249;
      goto LABEL_228;
    }

    v246 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v116 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v115 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v116 >> 62))
    {
      v130 = *(v116 + 80);
      v276 = *(v116 + 64);
      v277 = v130;
      v278 = *(v116 + 96);
      v279 = *(v116 + 112);
      v131 = *(v116 + 32);
      v273 = *(v116 + 16);
      v274 = v131;
      v275 = *(v116 + 48);
      v132 = *(v116 + 96);
      v270 = *(v116 + 80);
      v271 = v132;
      v272 = *(v116 + 112);
      v133 = *(v116 + 32);
      v266 = *(v116 + 16);
      v267 = v133;
      v134 = *(v116 + 64);
      v268 = *(v116 + 48);
      v269 = v134;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v135 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v280 = v135;
      if (v135)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

LABEL_224:
      v204 = v280;
      sub_1D622B230(a1, a2, v115);
      v280 = v204;
      if (v204)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_266;
      }

      v95 = v246;
      goto LABEL_226;
    }

    if (v116 >> 62 == 1)
    {
      v117 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v118 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 2u);
          v143 = v280;
          sub_1D620B270(a1, a2, v117);
          v280 = v143;
          if (v143)
          {

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v117, v118, 2u);

            goto LABEL_276;
          }

          sub_1D620B270(a1, a2, v118);
          v280 = 0;
          sub_1D5E4342C(v117, v118, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 1u);
          v157 = v280;
          sub_1D620B270(a1, a2, v117);
          v280 = v157;
          if (v157)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v221 = v117;
            v222 = v118;
            v223 = 1;
LABEL_275:
            sub_1D5E4342C(v221, v222, v223);

LABEL_276:

            goto LABEL_246;
          }

          v120 = v117;
          v121 = v118;
          v122 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v117, v118, 0);
          v119 = v280;
          sub_1D620B270(a1, a2, v117);
          v280 = v119;
          if (v119)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v221 = v117;
            v222 = v118;
            v223 = 0;
            goto LABEL_275;
          }

          v120 = v117;
          v121 = v118;
          v122 = 0;
        }

        sub_1D5E4342C(v120, v121, v122);
      }

      goto LABEL_224;
    }

    v245 = v115;
    v252 = v54;
    v136 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v137 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v136 >> 62))
    {
      v144 = *(v136 + 80);
      v276 = *(v136 + 64);
      v277 = v144;
      v278 = *(v136 + 96);
      v279 = *(v136 + 112);
      v145 = *(v136 + 32);
      v273 = *(v136 + 16);
      v274 = v145;
      v275 = *(v136 + 48);
      v146 = *(v136 + 96);
      v270 = *(v136 + 80);
      v271 = v146;
      v272 = *(v136 + 112);
      v147 = *(v136 + 32);
      v266 = *(v136 + 16);
      v267 = v147;
      v148 = *(v136 + 64);
      v268 = *(v136 + 48);
      v269 = v148;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v149 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v280 = v149;
      if (v149)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

LABEL_289:

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_222;
    }

    if (v136 >> 62 == 1)
    {
      v241 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v242 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 2u);
          v158 = v280;
          sub_1D620B270(a1, a2, v242);
          if (v158)
          {
            v280 = v158;

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v242, v241, 2u);

            goto LABEL_245;
          }

          sub_1D620B270(a1, a2, v241);
          v280 = 0;
          sub_1D5E4342C(v242, v241, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 1u);
          v169 = v280;
          sub_1D620B270(a1, a2, v242);
          v280 = v169;
          if (v169)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v224 = v242;
            v225 = v241;
            v226 = 1;
            goto LABEL_282;
          }

          v139 = v242;
          v140 = v241;
          v141 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v242, v241, 0);
          v138 = v280;
          sub_1D620B270(a1, a2, v242);
          v280 = v138;
          if (v138)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v224 = v242;
            v225 = v241;
            v226 = 0;
LABEL_282:
            sub_1D5E4342C(v224, v225, v226);

            goto LABEL_245;
          }

          v139 = v242;
          v140 = v241;
          v141 = 0;
        }

        sub_1D5E4342C(v139, v140, v141);
      }

      goto LABEL_222;
    }

    v150 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v151 = *((v136 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v150 >> 62))
    {
      v159 = *(v150 + 80);
      v276 = *(v150 + 64);
      v277 = v159;
      v278 = *(v150 + 96);
      v279 = *(v150 + 112);
      v160 = *(v150 + 32);
      v273 = *(v150 + 16);
      v274 = v160;
      v275 = *(v150 + 48);
      v161 = *(v150 + 96);
      v270 = *(v150 + 80);
      v271 = v161;
      v272 = *(v150 + 112);
      v162 = *(v150 + 32);
      v266 = *(v150 + 16);
      v267 = v162;
      v163 = *(v150 + 64);
      v268 = *(v150 + 48);
      v269 = v163;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v164 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v280 = v164;
      if (v164)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_289;
      }

      sub_1D5D07BBC(&v273);

      goto LABEL_220;
    }

    if (v150 >> 62 == 1)
    {
      v152 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v239 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 2u);
          v170 = v280;
          sub_1D620B270(a1, a2, v152);
          if (v170)
          {
            v280 = v170;

            sub_1D5D07BA8(v12, v257, v13);

            sub_1D5E4342C(v152, v239, 2u);

            goto LABEL_289;
          }

          sub_1D620B270(a1, a2, v239);
          v280 = 0;
          sub_1D5E4342C(v152, v239, 2u);
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
        }
      }

      else
      {
        if (*((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 1u);
          v184 = v280;
          sub_1D620B270(a1, a2, v152);
          v280 = v184;
          if (v184)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v227 = v152;
            v228 = v239;
            v229 = 1;
            goto LABEL_288;
          }

          v154 = v152;
          v155 = v239;
          v156 = 1;
        }

        else
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v152, v239, 0);
          v153 = v280;
          sub_1D620B270(a1, a2, v152);
          v280 = v153;
          if (v153)
          {

            sub_1D5D07BA8(v12, v257, v13);

            v227 = v152;
            v228 = v239;
            v229 = 0;
LABEL_288:
            sub_1D5E4342C(v227, v228, v229);

            goto LABEL_289;
          }

          v154 = v152;
          v155 = v239;
          v156 = 0;
        }

        sub_1D5E4342C(v154, v155, v156);
      }

      goto LABEL_220;
    }

    v240 = v151;
    v165 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v238 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v165 >> 62))
    {
      v171 = *(v165 + 80);
      v276 = *(v165 + 64);
      v277 = v171;
      v278 = *(v165 + 96);
      v279 = *(v165 + 112);
      v172 = *(v165 + 32);
      v273 = *(v165 + 16);
      v274 = v172;
      v275 = *(v165 + 48);
      v173 = *(v165 + 96);
      v270 = *(v165 + 80);
      v271 = v173;
      v272 = *(v165 + 112);
      v174 = *(v165 + 32);
      v266 = *(v165 + 16);
      v267 = v174;
      v175 = *(v165 + 64);
      v268 = *(v165 + 48);
      v269 = v175;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v176 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v280 = v176;
      if (v176)
      {

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

LABEL_299:

        goto LABEL_245;
      }

      sub_1D5D07BBC(&v273);

      v151 = v240;
      v167 = v238;
      goto LABEL_218;
    }

    v243 = v137;
    if (v165 >> 62 == 1)
    {
      v235 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v237 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
      {
        if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v151 = v240;

          v167 = v238;

          goto LABEL_218;
        }

        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 2u);

        v185 = v280;
        sub_1D620B270(a1, a2, v237);
        v280 = v185;
        if (v185 || (, , v186 = v280, sub_1D620B270(a1, a2, v235), (v280 = v186) != 0))
        {

          sub_1D5D07BA8(v12, v257, v13);

          sub_1D5E4342C(v237, v235, 2u);

          goto LABEL_299;
        }

        sub_1D5E4342C(v237, v235, 2u);
      }

      else if (*((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        v197 = *(v10 + 8);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 1u);
        v198 = v280;
        sub_1D620B270(a1, a2, v237);
        v280 = v198;
        if (v198)
        {

          sub_1D5D07BA8(v12, v197, v13);

          v231 = v235;
          v230 = v237;
          v232 = 1;
LABEL_297:
          sub_1D5E4342C(v230, v231, v232);

          goto LABEL_299;
        }

        sub_1D5E4342C(v237, v235, 1u);
      }

      else
      {
        v166 = *(v10 + 8);
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();
        v167 = v238;

        sub_1D5E433CC(v237, v235, 0);
        v168 = v280;
        sub_1D620B270(a1, a2, v237);
        v280 = v168;
        if (v168)
        {

          sub_1D5D07BA8(v12, v166, v13);

          v231 = v235;
          v230 = v237;
          v232 = 0;
          goto LABEL_297;
        }

        sub_1D5E4342C(v237, v235, 0);
      }

      v151 = v240;
LABEL_218:
      v201 = v280;
      sub_1D622B230(a1, a2, v167);
      v280 = v201;
      if (v201)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_289;
      }

LABEL_220:
      v202 = v280;
      sub_1D622B230(a1, a2, v151);
      v280 = v202;
      if (v202)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_245;
      }

LABEL_222:
      v203 = v280;
      sub_1D622B230(a1, a2, v137);
      v280 = v203;
      if (v203)
      {

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_266;
      }

      v54 = v252;
      v115 = v245;
      goto LABEL_224;
    }

    v177 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v236 = *((v165 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!(v177 >> 62))
    {
      v187 = *(v177 + 80);
      v276 = *(v177 + 64);
      v277 = v187;
      v278 = *(v177 + 96);
      v279 = *(v177 + 112);
      v188 = *(v177 + 32);
      v273 = *(v177 + 16);
      v274 = v188;
      v275 = *(v177 + 48);
      v189 = *(v177 + 96);
      v270 = *(v177 + 80);
      v271 = v189;
      v272 = *(v177 + 112);
      v190 = *(v177 + 32);
      v266 = *(v177 + 16);
      v267 = v190;
      v191 = *(v177 + 64);
      v268 = *(v177 + 48);
      v269 = v191;
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();
      v151 = v240;

      swift_retain_n();

      sub_1D5D0322C(&v273, v265);
      v192 = v280;
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      v193 = v192;
      if (v192)
      {
        v280 = v192;

        sub_1D5D07BA8(v12, v257, v13);

        sub_1D5D07BBC(&v273);

        goto LABEL_293;
      }

      sub_1D5D07BBC(&v273);

      v194 = v236;
      v167 = v238;
      goto LABEL_216;
    }

    if (v177 >> 62 == 1)
    {
      v178 = *(v10 + 8);
      v179 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v234 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v233 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      if (v233 > 1u)
      {
        if (*((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {
          sub_1D5D03180(v12, v11, v13);
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v167 = v238;
          v151 = v240;

          v194 = v236;

          v193 = v280;
          goto LABEL_216;
        }

        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 2u);
        v199 = v280;
        sub_1D620B270(a1, a2, v179);
        v280 = v199;
        if (v199)
        {
          goto LABEL_292;
        }

        sub_1D620B270(a1, a2, v234);
        v280 = 0;
        v181 = v179;
        v182 = v234;
        v183 = 2;
      }

      else if (*((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 1u);
        v200 = v280;
        sub_1D620B270(a1, a2, v179);
        v280 = v200;
        if (v200)
        {
LABEL_292:

          sub_1D5D07BA8(v12, v178, v13);

          sub_1D5E4342C(v179, v234, v233);

LABEL_293:

LABEL_294:

          goto LABEL_299;
        }

        v181 = v179;
        v182 = v234;
        v183 = 1;
      }

      else
      {
        sub_1D5D03180(v12, v11, v13);
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v179, v234, 0);
        v180 = v280;
        sub_1D620B270(a1, a2, v179);
        v280 = v180;
        if (v180)
        {
          goto LABEL_292;
        }

        v181 = v179;
        v182 = v234;
        v183 = 0;
      }

      sub_1D5E4342C(v181, v182, v183);

      v193 = v280;
      v167 = v238;
      v151 = v240;
    }

    else
    {
      v195 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v273 = *((v177 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5D03180(v12, v11, v13);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      v196 = v280;
      FormatSyncImageContent.bind(binder:context:)(a1, a2);
      v193 = v196;
      if (v196)
      {
        v280 = v196;

        sub_1D5D07BA8(v12, v257, v13);

        goto LABEL_294;
      }

      sub_1D622B230(a1, a2, v195);

      v151 = v240;
      v167 = v238;
    }

    v194 = v236;
LABEL_216:
    sub_1D622B230(a1, a2, v194);
    v280 = v193;
    v137 = v243;
    if (v193)
    {

      sub_1D5D07BA8(v12, v257, v13);

      goto LABEL_299;
    }

    goto LABEL_218;
  }

  v15 = v5;
  v16 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v17 = *(v16 + 48);
  v18 = *(v16 + 56);
  if (*(v16 + 64) > 1u)
  {
    if (*(v16 + 64) != 2)
    {
      v4 = a2;
      v5 = v15;
      goto LABEL_6;
    }

    v260 = v6;
    v19 = v280;
    v40 = *(v17 + 16);
    v41 = *v10;
    v258 = *(v10 + 8);
    sub_1D5D03180(v12, v11, v13);
    swift_retain_n();
    v42 = v18;
    sub_1D5E433CC(v17, v18, 2u);
    if (v40)
    {
      v43 = (v17 + 40);
      do
      {
        if ((*v43 & 1) == 0)
        {
          v44 = *(v43 - 1);
          *&v273 = v44;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(a1, a2);
          if (v19)
          {
LABEL_235:
            sub_1D62B72BC(v44, 0);

            sub_1D5D07BA8(v41, v258, v13);

            v209 = v17;
            v210 = v42;
            v211 = 2;
            goto LABEL_238;
          }

          sub_1D62B72BC(v44, 0);
        }

        v43 += 16;
        --v40;
      }

      while (v40);
    }

    v63 = *(v42 + 16);
    if (v63)
    {
      v64 = (v42 + 40);
      do
      {
        if ((*v64 & 1) == 0)
        {
          v44 = *(v64 - 1);
          *&v273 = v44;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(a1, a2);
          if (v19)
          {
            goto LABEL_235;
          }

          sub_1D62B72BC(v44, 0);
        }

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    v280 = v19;
    sub_1D5D07BA8(v41, v258, v13);

    v7 = v17;
    v8 = v42;
    v9 = 2;
    goto LABEL_4;
  }

  v259 = *(v16 + 56);
  v19 = v280;
  v20 = *v10;
  v21 = *(v10 + 8);
  v260 = v6;
  if (!*(v16 + 64))
  {
    v22 = *(v17 + 16);
    sub_1D5D03180(v20, v11, v13);
    swift_retain_n();
    sub_1D5E433CC(v17, v259, 0);
    if (v22)
    {
      v23 = (v17 + 40);
      do
      {
        if ((*v23 & 1) == 0)
        {
          *&v273 = *(v23 - 1);
          v24 = v273;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(a1, a2);
          if (v19)
          {
            sub_1D62B72BC(v24, 0);

            sub_1D5D07BA8(v20, v21, v13);

            v209 = v17;
            v210 = v259;
            v211 = 0;
            goto LABEL_238;
          }

          sub_1D62B72BC(v24, 0);
        }

        v23 += 16;
        --v22;
      }

      while (v22);
    }

    v280 = v19;
    sub_1D5D07BA8(v20, v21, v13);

    v7 = v17;
    v8 = v259;
    v9 = 0;
    goto LABEL_4;
  }

  v60 = *(v17 + 16);
  sub_1D5D03180(v20, v11, v13);
  swift_retain_n();
  sub_1D5E433CC(v17, v259, 1u);
  if (!v60)
  {
LABEL_51:
    v280 = v19;
    sub_1D5D07BA8(v20, v21, v13);

    v7 = v17;
    v8 = v259;
    v9 = 1;
LABEL_4:
    sub_1D5E4342C(v7, v8, v9);

    v4 = a2;
    v5 = a1;
    v3 = v256;
LABEL_5:
    v6 = v260;
    goto LABEL_6;
  }

  v61 = (v17 + 40);
  while ((*v61 & 1) != 0)
  {
LABEL_46:
    v61 += 16;
    if (!--v60)
    {
      goto LABEL_51;
    }
  }

  *&v273 = *(v61 - 1);
  v62 = v273;
  swift_retain_n();
  FormatFloat.bind(binder:context:)(a1, a2);
  if (!v19)
  {
    sub_1D62B72BC(v62, 0);

    goto LABEL_46;
  }

  sub_1D62B72BC(v62, 0);

  sub_1D5D07BA8(v20, v21, v13);

  v209 = v17;
  v210 = v259;
  v211 = 1;
LABEL_238:
  sub_1D5E4342C(v209, v210, v211);
LABEL_239:

  v280 = v19;
}

void sub_1D622B230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return;
  }

  v6 = a2;
  v7 = a1;
  v8 = 0;
  v176 = a3 + 32;
  v193 = a2;
  v174 = v5;
  while (1)
  {
    v12 = *(v176 + 24 * v8 + 16);
    if (!(v12 >> 62))
    {
      v19 = *(v12 + 80);
      v189 = *(v12 + 64);
      v190 = v19;
      v191 = *(v12 + 96);
      v192 = *(v12 + 112);
      v20 = *(v12 + 32);
      v186 = *(v12 + 16);
      v187 = v20;
      v188 = *(v12 + 48);
      v21 = *(v12 + 96);
      v183 = *(v12 + 80);
      v184 = v21;
      v185 = *(v12 + 112);
      v22 = *(v12 + 32);
      v179 = *(v12 + 16);
      v180 = v22;
      v23 = *(v12 + 64);
      v181 = *(v12 + 48);
      v182 = v23;
      swift_retain_n();

      sub_1D5D0322C(&v186, v178);
      FormatSymbolImage.bind(binder:context:)(v7, v6);
      if (v4)
      {

        sub_1D5D07BBC(&v186);
        goto LABEL_219;
      }

      sub_1D5D07BBC(&v186);

      goto LABEL_6;
    }

    if (v12 >> 62 != 1)
    {
      v175 = v8;
      v25 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v25 >> 62))
      {
        v36 = *(v25 + 80);
        v189 = *(v25 + 64);
        v190 = v36;
        v191 = *(v25 + 96);
        v192 = *(v25 + 112);
        v37 = *(v25 + 32);
        v186 = *(v25 + 16);
        v187 = v37;
        v188 = *(v25 + 48);
        v38 = *(v25 + 96);
        v183 = *(v25 + 80);
        v184 = v38;
        v185 = *(v25 + 112);
        v39 = *(v25 + 32);
        v179 = *(v25 + 16);
        v180 = v39;
        v40 = *(v25 + 64);
        v181 = *(v25 + 48);
        v182 = v40;
        swift_retain_n();

        swift_retain_n();
        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);
          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        goto LABEL_215;
      }

      if (v25 >> 62 == 1)
      {
        v26 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v28 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
        {
          if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
          {

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v28, 2u);
            v52 = v193;
            sub_1D620B270(a1, v193, v27);
            if (v4)
            {

              sub_1D5E4342C(v27, v28, 2u);

              goto LABEL_219;
            }

            sub_1D620B270(a1, v52, v28);
            v4 = 0;
            sub_1D5E4342C(v27, v28, 2u);

            v6 = v193;
            v24 = v26;
            v7 = a1;
          }

          else
          {

            swift_retain_n();

            v24 = v26;

            v6 = v193;
            v7 = a1;
          }
        }

        else
        {
          v172 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          v24 = v26;
          if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v64 = *(v27 + 16);

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v172, 1u);
            v7 = a1;
            if (v64)
            {
              v65 = (v27 + 40);
              do
              {
                if ((*v65 & 1) == 0)
                {
                  v66 = v7;
                  *&v186 = *(v65 - 1);
                  v67 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v66, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v67, 0);

                    v141 = v27;
                    v142 = v172;
                    v143 = 1;
                    goto LABEL_225;
                  }

                  sub_1D62B72BC(v67, 0);

                  v7 = a1;
                }

                v65 += 16;
                --v64;
              }

              while (v64);
            }

            v68 = v27;
            v69 = v172;
            v70 = 1;
          }

          else
          {
            v29 = *(v27 + 16);

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v172, 0);
            v7 = a1;
            if (v29)
            {
              v30 = (v27 + 40);
              do
              {
                if ((*v30 & 1) == 0)
                {
                  v31 = v7;
                  *&v186 = *(v30 - 1);
                  v32 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v31, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v32, 0);

                    v141 = v27;
                    v142 = v172;
                    v143 = 0;
LABEL_225:
                    sub_1D5E4342C(v141, v142, v143);
LABEL_229:

                    goto LABEL_219;
                  }

                  sub_1D62B72BC(v32, 0);

                  v7 = a1;
                }

                v30 += 16;
                --v29;
              }

              while (v29);
            }

            v68 = v27;
            v69 = v172;
            v70 = 0;
          }

          sub_1D5E4342C(v68, v69, v70);

          v6 = v193;
        }

        goto LABEL_215;
      }

      v171 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v41 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v42 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v41 >> 62))
      {
        v53 = *(v41 + 80);
        v189 = *(v41 + 64);
        v190 = v53;
        v191 = *(v41 + 96);
        v192 = *(v41 + 112);
        v54 = *(v41 + 32);
        v186 = *(v41 + 16);
        v187 = v54;
        v188 = *(v41 + 48);
        v55 = *(v41 + 96);
        v183 = *(v41 + 80);
        v184 = v55;
        v185 = *(v41 + 112);
        v56 = *(v41 + 32);
        v179 = *(v41 + 16);
        v180 = v56;
        v57 = *(v41 + 64);
        v181 = *(v41 + 48);
        v182 = v57;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();
        v24 = v171;

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_219;
        }

        sub_1D5D07BBC(&v186);

LABEL_114:
        v6 = v193;
LABEL_213:

        sub_1D622B230(v7, v6, v42);
        if (v4)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_219;
        }

        swift_bridgeObjectRelease_n();

LABEL_215:

        sub_1D622B230(v7, v6, v24);
        if (v4)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_219;
        }

        swift_bridgeObjectRelease_n();

        goto LABEL_5;
      }

      v173 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v41 >> 62 == 1)
      {
        v43 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v169 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          v24 = v171;
          if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v81 = *(v169 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v169, v43, 1u);
            if (v81)
            {
              v82 = (v169 + 40);
              do
              {
                if ((*v82 & 1) == 0)
                {
                  *&v186 = *(v82 - 1);
                  v83 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v83, 0);

                    v144 = v169;
                    v145 = v43;
                    v146 = 1;
                    goto LABEL_228;
                  }

                  sub_1D62B72BC(v83, 0);

                  v42 = v173;
                }

                v82 += 16;
                --v81;
              }

              while (v81);
            }

            v84 = v169;
            v85 = v43;
            v86 = 1;
          }

          else
          {
            v44 = *(v169 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v169, v43, 0);
            if (v44)
            {
              v45 = (v169 + 40);
              do
              {
                if ((*v45 & 1) == 0)
                {
                  *&v186 = *(v45 - 1);
                  v51 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v51, 0);

                    v144 = v169;
                    v145 = v43;
                    v146 = 0;
LABEL_228:
                    sub_1D5E4342C(v144, v145, v146);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v51, 0);

                  v42 = v173;
                }

                v45 += 16;
                --v44;
              }

              while (v44);
            }

            v84 = v169;
            v85 = v43;
            v86 = 0;
          }

          sub_1D5E4342C(v84, v85, v86);

          v6 = v193;
          v7 = a1;
          goto LABEL_213;
        }

        v24 = v171;
        if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v169, v43, 2u);
          v71 = v193;
          sub_1D620B270(v7, v193, v169);
          if (v4)
          {

            sub_1D5E4342C(v169, v43, 2u);

            goto LABEL_229;
          }

          sub_1D620B270(v7, v71, v43);
          v4 = 0;
          sub_1D5E4342C(v169, v43, 2u);

          v6 = v193;
          v42 = v173;
          goto LABEL_213;
        }

        swift_retain_n();
        swift_retain_n();

        goto LABEL_114;
      }

      v58 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v170 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v58 >> 62))
      {
        v72 = *(v58 + 80);
        v189 = *(v58 + 64);
        v190 = v72;
        v191 = *(v58 + 96);
        v192 = *(v58 + 112);
        v73 = *(v58 + 32);
        v186 = *(v58 + 16);
        v187 = v73;
        v188 = *(v58 + 48);
        v74 = *(v58 + 96);
        v183 = *(v58 + 80);
        v184 = v74;
        v185 = *(v58 + 112);
        v75 = *(v58 + 32);
        v179 = *(v58 + 16);
        v180 = v75;
        v76 = *(v58 + 64);
        v181 = *(v58 + 48);
        v182 = v76;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        v6 = v193;
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        v61 = v170;
        v24 = v171;
        goto LABEL_211;
      }

      if (v58 >> 62 == 1)
      {
        v59 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v167 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v24 = v171;
        v6 = v193;
        if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          v166 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v96 = *(v167 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            v61 = v170;

            sub_1D5E433CC(v167, v166, 1u);
            if (v96)
            {
              v97 = (v167 + 40);
              do
              {
                if ((*v97 & 1) == 0)
                {
                  *&v186 = *(v97 - 1);
                  v98 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v98, 0);

                    v148 = v166;
                    v147 = v167;
                    v149 = 1;
LABEL_235:
                    sub_1D5E4342C(v147, v148, v149);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v98, 0);

                  v42 = v173;
                  v61 = v170;
                }

                v97 += 16;
                --v96;
              }

              while (v96);
            }

            v100 = v166;
            v99 = v167;
            v101 = 1;
          }

          else
          {
            v60 = *(v167 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            v61 = v170;

            sub_1D5E433CC(v167, v166, 0);
            if (v60)
            {
              v62 = (v167 + 40);
              do
              {
                if ((*v62 & 1) == 0)
                {
                  *&v186 = *(v62 - 1);
                  v63 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v63, 0);

                    v148 = v166;
                    v147 = v167;
                    v149 = 0;
                    goto LABEL_235;
                  }

                  sub_1D62B72BC(v63, 0);

                  v42 = v173;
                  v61 = v170;
                }

                v62 += 16;
                --v60;
              }

              while (v60);
            }

            v100 = v166;
            v99 = v167;
            v101 = 0;
          }

          sub_1D5E4342C(v99, v100, v101);

          v6 = v193;
          v7 = a1;
          goto LABEL_211;
        }

        if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v61 = v170;

LABEL_211:

          sub_1D622B230(v7, v6, v61);
          if (v4)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_219;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_213;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v167, v59, 2u);
        sub_1D620B270(v7, v6, v167);
        if (v4)
        {

          sub_1D5E4342C(v167, v59, 2u);

          goto LABEL_229;
        }

        sub_1D620B270(v7, v6, v59);
        v4 = 0;
        sub_1D5E4342C(v167, v59, 2u);
LABEL_210:

        v61 = v170;
        goto LABEL_211;
      }

      v77 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v168 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = v171;
      if (!(v77 >> 62))
      {
        v87 = *(v77 + 80);
        v189 = *(v77 + 64);
        v190 = v87;
        v191 = *(v77 + 96);
        v192 = *(v77 + 112);
        v88 = *(v77 + 32);
        v186 = *(v77 + 16);
        v187 = v88;
        v188 = *(v77 + 48);
        v89 = *(v77 + 96);
        v183 = *(v77 + 80);
        v184 = v89;
        v185 = *(v77 + 112);
        v90 = *(v77 + 32);
        v179 = *(v77 + 16);
        v180 = v90;
        v91 = *(v77 + 64);
        v181 = *(v77 + 48);
        v182 = v91;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        v6 = v193;
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        v24 = v171;
        goto LABEL_207;
      }

      if (v77 >> 62 == 1)
      {
        v164 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v6 = v193;
        if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
        {
          if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
          {

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v114 = v168;

LABEL_208:

            sub_1D622B230(v7, v6, v114);
            if (v4)
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_219;
            }

            swift_bridgeObjectRelease_n();
            goto LABEL_210;
          }

          v163 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v164, v163, 2u);
          sub_1D620B270(v7, v6, v164);
          if (v4)
          {

            sub_1D5E4342C(v164, v163, 2u);

            goto LABEL_229;
          }

          sub_1D620B270(v7, v6, v163);
          v4 = 0;
          sub_1D5E4342C(v164, v163, 2u);
        }

        else
        {
          v162 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v111 = *(v164 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v164, v162, 1u);
            if (v111)
            {
              v112 = (v164 + 40);
              do
              {
                if ((*v112 & 1) == 0)
                {
                  *&v186 = *(v112 - 1);
                  v113 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v113, 0);

                    v151 = v162;
                    v150 = v164;
                    v152 = 1;
LABEL_241:
                    sub_1D5E4342C(v150, v151, v152);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v113, 0);

                  v42 = v173;
                }

                v112 += 16;
                --v111;
              }

              while (v111);
            }

            v116 = v162;
            v115 = v164;
            v117 = 1;
          }

          else
          {
            v78 = *(v164 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v164, v162, 0);
            if (v78)
            {
              v79 = (v164 + 40);
              do
              {
                if ((*v79 & 1) == 0)
                {
                  *&v186 = *(v79 - 1);
                  v80 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v80, 0);

                    v151 = v162;
                    v150 = v164;
                    v152 = 0;
                    goto LABEL_241;
                  }

                  sub_1D62B72BC(v80, 0);

                  v42 = v173;
                }

                v79 += 16;
                --v78;
              }

              while (v78);
            }

            v116 = v162;
            v115 = v164;
            v117 = 0;
          }

          sub_1D5E4342C(v115, v116, v117);

          v6 = v193;
          v7 = a1;
        }

LABEL_207:
        v114 = v168;
        goto LABEL_208;
      }

      v92 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v165 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = v193;
      if (!(v92 >> 62))
      {
        v102 = *(v92 + 80);
        v189 = *(v92 + 64);
        v190 = v102;
        v191 = *(v92 + 96);
        v192 = *(v92 + 112);
        v103 = *(v92 + 32);
        v186 = *(v92 + 16);
        v187 = v103;
        v188 = *(v92 + 48);
        v104 = *(v92 + 96);
        v183 = *(v92 + 80);
        v184 = v104;
        v185 = *(v92 + 112);
        v105 = *(v92 + 32);
        v179 = *(v92 + 16);
        v180 = v105;
        v106 = *(v92 + 64);
        v181 = *(v92 + 48);
        v182 = v106;
        swift_retain_n();
        v107 = v165;

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        goto LABEL_205;
      }

      if (v92 >> 62 == 1)
      {
        v159 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v160 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v125 = *(v160 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v160, v159, 1u);
            if (v125)
            {
              v126 = (v160 + 40);
              do
              {
                if ((*v126 & 1) == 0)
                {
                  *&v186 = *(v126 - 1);
                  v127 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v127, 0);

                    v154 = v159;
                    v153 = v160;
                    v155 = 1;
LABEL_247:
                    sub_1D5E4342C(v153, v154, v155);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v127, 0);

                  v42 = v173;
                }

                v126 += 16;
                --v125;
              }

              while (v125);
            }

            v129 = v159;
            v128 = v160;
            v130 = 1;
          }

          else
          {
            v93 = *(v160 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v160, v159, 0);
            if (v93)
            {
              v94 = (v160 + 40);
              do
              {
                if ((*v94 & 1) == 0)
                {
                  *&v186 = *(v94 - 1);
                  v95 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(a1, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v95, 0);

                    v154 = v159;
                    v153 = v160;
                    v155 = 0;
                    goto LABEL_247;
                  }

                  sub_1D62B72BC(v95, 0);

                  v42 = v173;
                }

                v94 += 16;
                --v93;
              }

              while (v93);
            }

            v129 = v159;
            v128 = v160;
            v130 = 0;
          }

          sub_1D5E4342C(v128, v129, v130);

          v6 = v193;
          v7 = a1;
          goto LABEL_204;
        }

        if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v107 = v165;

LABEL_205:

          sub_1D622B230(v7, v6, v107);
          if (v4)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_219;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_207;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v160, v159, 2u);
        sub_1D620B270(v7, v6, v160);
        if (v4)
        {

          sub_1D5E4342C(v160, v159, 2u);

          goto LABEL_229;
        }

        sub_1D620B270(v7, v6, v159);
        v4 = 0;
        sub_1D5E4342C(v160, v159, 2u);
LABEL_203:

LABEL_204:
        v107 = v165;
        goto LABEL_205;
      }

      v108 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v161 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v108 >> 62)
      {
        if (v108 >> 62 == 1)
        {
          v158 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          if (*((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
          {
            if (*((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
            {

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              v134 = v161;

LABEL_201:

              sub_1D622B230(v7, v6, v134);
              if (v4)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_229;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_203;
            }

            v156 = 2;
            v131 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v158, v131, 2u);
            sub_1D620B270(v7, v6, v158);
            if (v4)
            {
              v157 = v131;

LABEL_250:

              sub_1D5E4342C(v158, v157, v156);

LABEL_256:

              goto LABEL_229;
            }

            sub_1D620B270(v7, v6, v131);
            v4 = 0;
            sub_1D5E4342C(v158, v131, 2u);
          }

          else
          {
            v157 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            v156 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            if (v156)
            {
              v132 = *(v158 + 16);

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              sub_1D5E433CC(v158, v157, 1u);
              if (v132)
              {
                v133 = (v158 + 40);
                do
                {
                  if ((*v133 & 1) == 0)
                  {
                    v118 = *(v133 - 1);
                    *&v186 = v118;
                    swift_retain_n();
                    FormatFloat.bind(binder:context:)(v7, v193);
                    if (v4)
                    {
LABEL_249:
                      sub_1D62B72BC(v118, 0);

                      goto LABEL_250;
                    }

                    sub_1D62B72BC(v118, 0);

                    v42 = v173;
                  }

                  v133 += 16;
                  --v132;
                }

                while (v132);
              }

              v136 = v157;
              v135 = v158;
              v137 = 1;
            }

            else
            {
              v109 = *(v158 + 16);

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              sub_1D5E433CC(v158, v157, 0);
              if (v109)
              {
                v110 = (v158 + 40);
                do
                {
                  if ((*v110 & 1) == 0)
                  {
                    v118 = *(v110 - 1);
                    *&v186 = v118;
                    swift_retain_n();
                    FormatFloat.bind(binder:context:)(v7, v193);
                    if (v4)
                    {
                      goto LABEL_249;
                    }

                    sub_1D62B72BC(v118, 0);

                    v42 = v173;
                  }

                  v110 += 16;
                  --v109;
                }

                while (v109);
              }

              v136 = v157;
              v135 = v158;
              v137 = 0;
            }

            sub_1D5E4342C(v135, v136, v137);

            v6 = v193;
          }
        }

        else
        {
          v124 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          *&v186 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          FormatSyncImageContent.bind(binder:context:)(v7, v6);
          if (v4)
          {

            goto LABEL_229;
          }

          sub_1D622B230(v7, v6, v124);

          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v119 = *(v108 + 80);
        v189 = *(v108 + 64);
        v190 = v119;
        v191 = *(v108 + 96);
        v192 = *(v108 + 112);
        v120 = *(v108 + 32);
        v186 = *(v108 + 16);
        v187 = v120;
        v188 = *(v108 + 48);
        v121 = *(v108 + 96);
        v183 = *(v108 + 80);
        v184 = v121;
        v185 = *(v108 + 112);
        v122 = *(v108 + 32);
        v179 = *(v108 + 16);
        v180 = v122;
        v123 = *(v108 + 64);
        v181 = *(v108 + 48);
        v182 = v123;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_256;
        }

        sub_1D5D07BBC(&v186);
      }

      v134 = v161;
      goto LABEL_201;
    }

    v13 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v13 + 48);
    v14 = *(v13 + 56);
    if (*(v13 + 64) > 1u)
    {
      break;
    }

    v175 = v8;
    if (*(v13 + 64))
    {
      v46 = *(v15 + 16);

      swift_retain_n();
      sub_1D5E433CC(v15, v14, 1u);
      if (v46)
      {
        v47 = (v15 + 40);
        do
        {
          if ((*v47 & 1) == 0)
          {
            *&v186 = *(v47 - 1);
            v48 = v186;
            swift_retain_n();
            FormatFloat.bind(binder:context:)(a1, v193);
            if (v4)
            {
              sub_1D62B72BC(v48, 0);

              v138 = v15;
              v139 = v14;
              v140 = 1;
              goto LABEL_218;
            }

            sub_1D62B72BC(v48, 0);
          }

          v47 += 16;
          --v46;
        }

        while (v46);
      }

      v9 = v15;
      v10 = v14;
      v11 = 1;
    }

    else
    {
      v16 = *(v15 + 16);

      swift_retain_n();
      sub_1D5E433CC(v15, v14, 0);
      if (v16)
      {
        v17 = (v15 + 40);
        do
        {
          if ((*v17 & 1) == 0)
          {
            *&v186 = *(v17 - 1);
            v18 = v186;
            swift_retain_n();
            FormatFloat.bind(binder:context:)(a1, v193);
            if (v4)
            {
              sub_1D62B72BC(v18, 0);

              v138 = v15;
              v139 = v14;
              v140 = 0;
              goto LABEL_218;
            }

            sub_1D62B72BC(v18, 0);
          }

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      v9 = v15;
      v10 = v14;
      v11 = 0;
    }

LABEL_4:
    sub_1D5E4342C(v9, v10, v11);

    v6 = v193;
    v7 = a1;
LABEL_5:
    v5 = v174;
    v8 = v175;
LABEL_6:
    if (++v8 == v5)
    {
      return;
    }
  }

  if (*(v13 + 64) != 2)
  {
    v6 = v193;
    v7 = a1;
    goto LABEL_6;
  }

  v175 = v8;
  v33 = *(v15 + 16);

  swift_retain_n();
  sub_1D5E433CC(v15, v14, 2u);
  if (!v33)
  {
LABEL_54:
    v49 = *(v14 + 16);
    if (v49)
    {
      v50 = (v14 + 40);
      do
      {
        if ((*v50 & 1) == 0)
        {
          v35 = *(v50 - 1);
          *&v186 = v35;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(a1, v193);
          if (v4)
          {
            goto LABEL_217;
          }

          sub_1D62B72BC(v35, 0);
        }

        v50 += 16;
        --v49;
      }

      while (v49);
    }

    v9 = v15;
    v10 = v14;
    v11 = 2;
    goto LABEL_4;
  }

  v34 = (v15 + 40);
  while (2)
  {
    if (*v34)
    {
LABEL_33:
      v34 += 16;
      if (!--v33)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v35 = *(v34 - 1);
  *&v186 = v35;
  swift_retain_n();
  FormatFloat.bind(binder:context:)(a1, v193);
  if (!v4)
  {
    sub_1D62B72BC(v35, 0);

    goto LABEL_33;
  }

LABEL_217:
  sub_1D62B72BC(v35, 0);

  v138 = v15;
  v139 = v14;
  v140 = 2;
LABEL_218:
  sub_1D5E4342C(v138, v139, v140);
LABEL_219:
}

void sub_1D622E2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatOption(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v247 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v246 = &v229 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v229 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v249 = &v229 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v248 = &v229 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v229 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v254 = &v229 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v253 = &v229 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v229 - v37;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v251 = &v229 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v250 = &v229 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v256 = &v229 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v255 = &v229 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v262 = &v229 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v260 = &v229 - v56;
  if (!*(a3 + 16))
  {
    return;
  }

  v57 = *(a3 + 16);
  v252 = v38;
  v245 = v28;
  v242 = v18;
  v263 = (v9 + 56);
  v264 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v58 = (a3 + 48);
  v269 = v8;
  v270 = a2;
  v266 = a1;
  v59 = v8;
  v60 = v57;
  v61 = a2;
  while (1)
  {
    v62 = *(v58 - 1);
    v63 = *v58;
    v64 = *v58 >> 62;
    if (v64)
    {
      break;
    }

    if (*(v63 + 40))
    {
      v271 = v60;
      v74 = *(v63 + 16);
      v73 = *(v63 + 24);
      v75 = *(v63 + 32);
      v274 = v74;
      v275 = v73;
      v276 = v75;
      v278 = 6;
      sub_1D62B6164(v74, v73, v75, 1);
      sub_1D62B6164(v74, v73, v75, 1);

      v76 = sub_1D703E0C8(&v274, &v278);
      v273 = v4;
      if (v4)
      {
        sub_1D62B61A8(v74, v73, v75, 1);

        return;
      }

      v77 = v76;
      v267 = v75;
      v272 = v62;
      v78 = *(v61 + v264);
      v79 = *(v78 + 16);
      swift_beginAccess();
      if (*(*(v79 + 16) + 16) && (sub_1D5B69D90(v74, v73), (v80 & 1) != 0))
      {
        v268 = v58;
        swift_endAccess();
        v81 = v59;
        v82 = v254;
        sub_1D5D25108(v254);
        v83 = v82;
        v84 = v253;
        sub_1D5D5E33C(v83, v253, type metadata accessor for FormatOption);
        v85 = v84;
        v59 = v81;
        v86 = v262;
        sub_1D5D5E33C(v85, v262, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v78 + 24) + 16) || (sub_1D5B69D90(v74, v73), (v101 & 1) == 0))
        {
          swift_endAccess();
          v107 = *v263;
          v108 = v59;
          v109 = v262;
          (*v263)(v262, 1, 1, v108);

          sub_1D5B6EF64(v109, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v110 = v270;
          if (*(v270 + 48) == 1)
          {
            v111 = sub_1D62B61A8(v74, v73, v267, 1);
            v112 = v260;
            (v107)(v260, 1, 1, v108, v111);
            sub_1D5B6EF64(v112, &qword_1EDF337F0, type metadata accessor for FormatOption);

            a1 = v266;
            v60 = v271;
            v59 = v108;
            v61 = v110;
            v4 = v273;
            goto LABEL_3;
          }

          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          *v215 = v74;
          v215[1] = v73;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B61A8(v74, v73, v267, 1);
LABEL_98:

          return;
        }

        v268 = v58;
        swift_endAccess();
        v86 = v262;
        sub_1D5D25108(v262);
      }

      v102 = *v263;
      (*v263)(v86, 0, 1, v59);
      v103 = v59;
      v104 = v252;
      sub_1D5D5E33C(v86, v252, type metadata accessor for FormatOption);
      v274 = v104[2];

      FormatOptionValue.type.getter(v105, &v278);
      if ((sub_1D6183C84(v278, v77) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        v208 = swift_allocError();
        v210 = v209;
        v211 = v104[1];
        v271 = *v104;
        v212 = v104[2];
        v273 = v208;
        v274 = v212;

        FormatOptionValue.type.getter(v213, &v278);
        v214 = v278;
        *v210 = v271;
        *(v210 + 8) = v211;
        *(v210 + 16) = v214;
        *(v210 + 24) = v77;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B61A8(v74, v73, v267, 1);
        sub_1D62B51D0(v104, type metadata accessor for FormatOption);
        goto LABEL_98;
      }

      sub_1D62B61A8(v74, v73, v267, 1);

      v106 = v260;
      sub_1D5D5E33C(v104, v260, type metadata accessor for FormatOption);
      v102(v106, 0, 1, v103);
      sub_1D5B6EF64(v106, &qword_1EDF337F0, type metadata accessor for FormatOption);

      v4 = v273;
      v61 = v270;
      v60 = v271;
      a1 = v266;
      v59 = v103;
      v58 = v268;
    }

LABEL_3:
    v58 += 3;
    if (!--v60)
    {
      return;
    }
  }

  if (v64 == 1)
  {
    goto LABEL_3;
  }

  v65 = v63 & 0x3FFFFFFFFFFFFFFFLL;
  v67 = *(v65 + 16);
  v66 = *(v65 + 24);
  if (!(v67 >> 62))
  {
    if ((*(v67 + 40) & 1) == 0)
    {
      goto LABEL_23;
    }

    v268 = v58;
    v271 = v60;
    v87 = v67;
    v88 = *(v67 + 16);
    v90 = *(v87 + 24);
    v89 = *(v87 + 32);
    v274 = v88;
    v275 = v90;
    v276 = v89;
    v278 = 6;
    sub_1D62B6164(v88, v90, v89, 1);

    v259 = v65;

    sub_1D62B6164(v88, v90, v89, 1);
    v258 = v87;
    swift_retain_n();

    v91 = sub_1D703E0C8(&v274, &v278);
    if (v4)
    {
      sub_1D62B61A8(v88, v90, v89, 1);
    }

    else
    {
      v92 = v91;
      v272 = v62;
      v273 = 0;
      v93 = *(v270 + v264);
      v94 = *(v93 + 16);
      swift_beginAccess();
      if (*(*(v94 + 16) + 16))
      {
        sub_1D5B69D90(v88, v90);
        if (v95)
        {
          v265 = v66;
          swift_endAccess();
          v96 = v249;
          sub_1D5D25108(v249);
          v97 = v96;
          v98 = v248;
          sub_1D5D5E33C(v97, v248, type metadata accessor for FormatOption);
          v99 = v98;
          v100 = v256;
          sub_1D5D5E33C(v99, v256, type metadata accessor for FormatOption);
LABEL_40:
          v129 = *v263;
          v130 = v269;
          (*v263)(v100, 0, 1, v269);
          v131 = v100;
          v132 = v245;
          sub_1D5D5E33C(v131, v245, type metadata accessor for FormatOption);
          v274 = v132[2];

          FormatOptionValue.type.getter(v133, &v278);
          if ((sub_1D6183C84(v278, v92) & 1) == 0)
          {
            v273 = type metadata accessor for FormatDerivedDataError(0);
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v217 = v216;
            v218 = v132[1];
            v271 = *v132;
            v274 = v132[2];

            FormatOptionValue.type.getter(v219, &v278);
            v220 = v278;
            *v217 = v271;
            *(v217 + 8) = v218;
            *(v217 + 16) = v220;
            *(v217 + 24) = v92;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B61A8(v88, v90, v89, 1);

            sub_1D62B51D0(v132, type metadata accessor for FormatOption);

            goto LABEL_112;
          }

          sub_1D62B61A8(v88, v90, v89, 1);

          v134 = v255;
          sub_1D5D5E33C(v132, v255, type metadata accessor for FormatOption);
          v129(v134, 0, 1, v130);
          sub_1D5B6EF64(v134, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v4 = v273;
          v66 = v265;
          goto LABEL_44;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v93 + 24) + 16))
      {
        sub_1D5B69D90(v88, v90);
        if (v128)
        {
          v265 = v66;
          swift_endAccess();
          v100 = v256;
          sub_1D5D25108(v256);
          goto LABEL_40;
        }
      }

      swift_endAccess();
      v135 = *v263;
      v136 = v256;
      v137 = v269;
      (*v263)(v256, 1, 1, v269);

      sub_1D5B6EF64(v136, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v273;
      if (*(v270 + 48))
      {
        v138 = sub_1D62B61A8(v88, v90, v89, 1);
        v139 = v255;
        (v135)(v255, 1, 1, v137, v138);
        sub_1D5B6EF64(v139, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_44:
        v61 = v270;
        v60 = v271;
        a1 = v266;
        v58 = v268;
        goto LABEL_91;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v221 = v88;
      v221[1] = v90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B61A8(v88, v90, v89, 1);
    }

    goto LABEL_110;
  }

  if (v67 >> 62 == 1)
  {
LABEL_23:

LABEL_91:

    sub_1D622E2AC(a1, v61, v66);
    if (v4)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_112;
    }

    swift_bridgeObjectRelease_n();

    v59 = v269;
    goto LABEL_3;
  }

  v68 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v69 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v267 = v67 & 0x3FFFFFFFFFFFFFFFLL;
  v265 = v66;
  v261 = v68;
  if (!(v68 >> 62))
  {
    if ((*(v68 + 40) & 1) == 0)
    {
      goto LABEL_36;
    }

    v257 = v69;
    v258 = v67;
    v114 = *(v68 + 16);
    v113 = *(v68 + 24);
    v115 = *(v68 + 32);
    v274 = v114;
    v275 = v113;
    v276 = v115;
    v278 = 6;
    sub_1D62B6164(v114, v113, v115, 1);

    v259 = v65;

    swift_retain_n();

    v244 = v114;
    sub_1D62B6164(v114, v113, v115, 1);
    swift_retain_n();

    v116 = sub_1D703E0C8(&v274, &v278);
    if (v4)
    {
      sub_1D62B61A8(v244, v113, v115, 1);
    }

    else
    {
      v117 = v116;
      v268 = v58;
      v272 = v62;
      v273 = 0;
      v118 = *(v270 + v264);
      v119 = *(v118 + 16);
      swift_beginAccess();
      v120 = *(*(v119 + 16) + 16);
      v271 = v60;
      if (v120)
      {
        sub_1D5B69D90(v244, v113);
        if (v121)
        {
          v122 = v115;
          swift_endAccess();
          v123 = v247;
          sub_1D5D25108(v247);
          v124 = v123;
          v125 = v246;
          sub_1D5D5E33C(v124, v246, type metadata accessor for FormatOption);
          v126 = v251;
          sub_1D5D5E33C(v125, v251, type metadata accessor for FormatOption);
          v127 = v263;
LABEL_53:
          v150 = *v127;
          v151 = v269;
          (*v127)(v126, 0, 1, v269);
          v152 = v242;
          sub_1D5D5E33C(v126, v242, type metadata accessor for FormatOption);
          v274 = v152[2];

          FormatOptionValue.type.getter(v153, &v278);
          if ((sub_1D6183C84(v278, v117) & 1) == 0)
          {
            v273 = type metadata accessor for FormatDerivedDataError(0);
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v223 = v222;
            v224 = v152[1];
            v271 = *v152;
            v274 = v152[2];

            FormatOptionValue.type.getter(v225, &v278);
            v226 = v278;
            *v223 = v271;
            *(v223 + 8) = v224;
            *(v223 + 16) = v226;
            *(v223 + 24) = v117;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B61A8(v244, v113, v122, 1);

            sub_1D62B51D0(v152, type metadata accessor for FormatOption);

            goto LABEL_112;
          }

          sub_1D62B61A8(v244, v113, v122, 1);

          v154 = v250;
          sub_1D5D5E33C(v152, v250, type metadata accessor for FormatOption);
          v150(v154, 0, 1, v151);
          sub_1D5B6EF64(v154, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v4 = v273;
          goto LABEL_57;
        }
      }

      v122 = v115;
      swift_endAccess();
      swift_beginAccess();
      if (*(*(v118 + 24) + 16))
      {
        sub_1D5B69D90(v244, v113);
        if (v149)
        {
          swift_endAccess();
          v126 = v251;
          sub_1D5D25108(v251);
          v127 = v263;
          goto LABEL_53;
        }
      }

      swift_endAccess();
      v155 = *v263;
      v156 = v251;
      v157 = v269;
      (*v263)(v251, 1, 1, v269);

      sub_1D5B6EF64(v156, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v273;
      if (*(v270 + 48))
      {
        v158 = sub_1D62B61A8(v244, v113, v115, 1);
        v159 = v250;
        (v155)(v250, 1, 1, v157, v158);
        sub_1D5B6EF64(v159, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_57:
        v60 = v271;
        v61 = v270;
        a1 = v266;
        v58 = v268;
        v69 = v257;
        goto LABEL_89;
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v227 = v244;
      *v228 = v244;
      v228[1] = v113;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B61A8(v227, v113, v122, 1);
    }

LABEL_110:

    return;
  }

  if (v68 >> 62 == 1)
  {
LABEL_36:

    swift_retain_n();

LABEL_89:

    sub_1D622E2AC(a1, v61, v69);
    if (v4)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_112;
    }

    swift_bridgeObjectRelease_n();

    v66 = v265;
    goto LABEL_91;
  }

  v257 = v69;
  v70 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v71 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v244 = v68 & 0x3FFFFFFFFFFFFFFFLL;
  v243 = v70;
  if (!(v70 >> 62))
  {
    v258 = v67;
    v268 = v58;
    v271 = v60;
    v141 = *(v70 + 24);
    v142 = v65;
    v143 = *(v70 + 32);
    v144 = *(v70 + 40);
    v274 = *(v70 + 16);
    v140 = v274;
    v275 = v141;
    v276 = v143;
    v277 = v144;
    swift_retain_n();
    v241 = v71;

    v272 = v62;

    v259 = v142;

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v140, v141, v143, v144);
    sub_1D69BBC64(v270);
    if (!v4)
    {
      v273 = 0;
      sub_1D62B61A8(v140, v141, v143, v144);

      v60 = v271;
      v72 = v270;
      a1 = v266;
      v58 = v268;
      v71 = v241;
      goto LABEL_87;
    }

    sub_1D62B61A8(v140, v141, v143, v144);

    goto LABEL_112;
  }

  if (v70 >> 62 == 1)
  {
    v273 = v4;

    swift_retain_n();

    swift_retain_n();

    v72 = v270;
LABEL_87:

    v205 = v72;
    v206 = v72;
    v207 = v273;
    sub_1D622E2AC(a1, v206, v71);
    if (v207)
    {

      swift_bridgeObjectRelease_n();

      return;
    }

    swift_bridgeObjectRelease_n();

    v69 = v257;
    v61 = v205;
    v4 = 0;
    goto LABEL_89;
  }

  v145 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v240 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v239 = v70 & 0x3FFFFFFFFFFFFFFFLL;
  v241 = v71;
  v238 = v145;
  if (!(v145 >> 62))
  {
    v258 = v67;
    v268 = v58;
    v271 = v60;
    v161 = *(v145 + 24);
    v162 = v65;
    v163 = *(v145 + 32);
    v164 = *(v145 + 40);
    v274 = *(v145 + 16);
    v160 = v274;
    v275 = v161;
    v276 = v163;
    v277 = v164;
    swift_retain_n();

    v272 = v62;

    v259 = v162;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v160, v161, v163, v164);
    sub_1D69BBC64(v270);
    if (!v4)
    {
      v273 = 0;
      sub_1D62B61A8(v160, v161, v163, v164);

      v60 = v271;
      v148 = v270;
      a1 = v266;
      v58 = v268;
LABEL_84:
      v147 = v240;
      goto LABEL_85;
    }

    sub_1D62B61A8(v160, v161, v163, v164);

LABEL_112:

    return;
  }

  if (v145 >> 62 == 1)
  {
    v273 = v4;

    v146 = v240;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v147 = v146;

    v148 = v270;
LABEL_85:

    v202 = v148;
    v203 = v148;
    v204 = v273;
    sub_1D622E2AC(a1, v203, v147);
    v273 = v204;
    if (v204)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_117;
    }

    swift_bridgeObjectRelease_n();

    v71 = v241;
    v72 = v202;
    goto LABEL_87;
  }

  v166 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v165 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v236 = v145 & 0x3FFFFFFFFFFFFFFFLL;
  v237 = v165;
  v235 = v166;
  if (!(v166 >> 62))
  {
    v258 = v67;
    v268 = v58;
    v271 = v60;
    v169 = *(v166 + 24);
    v170 = v65;
    v171 = *(v166 + 32);
    v172 = *(v166 + 40);
    v274 = *(v166 + 16);
    v168 = v274;
    v275 = v169;
    v276 = v171;
    v277 = v172;
    swift_retain_n();

    v272 = v62;

    v259 = v170;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v168, v169, v171, v172);
    sub_1D69BBC64(v270);
    if (v4)
    {

      sub_1D62B61A8(v168, v169, v171, v172);

      goto LABEL_98;
    }

    v273 = 0;
    sub_1D62B61A8(v168, v169, v171, v172);

    v60 = v271;
    v167 = v270;
    a1 = v266;
    v58 = v268;
    goto LABEL_82;
  }

  if (v166 >> 62 == 1)
  {
    v273 = v4;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    v167 = v270;
LABEL_82:
    v198 = v237;

    v199 = v167;
    v200 = v167;
    v201 = v273;
    sub_1D622E2AC(a1, v200, v198);
    v273 = v201;
    if (v201)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_117;
    }

    swift_bridgeObjectRelease_n();

    v148 = v199;
    goto LABEL_84;
  }

  v174 = *((v166 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v173 = *((v166 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v233 = v166 & 0x3FFFFFFFFFFFFFFFLL;
  v234 = v173;
  v232 = v174;
  if (v174 >> 62)
  {
    if (v174 >> 62 == 1)
    {
      v273 = v4;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      v175 = v270;
      goto LABEL_80;
    }

    v182 = *((v174 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v181 = *((v174 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v231 = v174 & 0x3FFFFFFFFFFFFFFFLL;
    v230 = v181;
    v229 = v182;
    if (v182 >> 62)
    {
      if (v182 >> 62 == 1)
      {

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

LABEL_78:
        v194 = v230;

        sub_1D622E2AC(a1, v270, v194);
        if (v4)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_98;
        }

        v273 = 0;

        swift_bridgeObjectRelease_n();

        v175 = v270;
        goto LABEL_80;
      }

      v268 = v58;
      v188 = v60;
      v189 = v182 & 0x3FFFFFFFFFFFFFFFLL;
      v190 = v62;
      v191 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v192 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      v272 = v190;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D62493D8(v266, v270, v191, v192, v193);
      if (!v4)
      {

        a1 = v266;
        v60 = v188;
        goto LABEL_77;
      }

      v273 = v189;
      v259 = v65;
    }

    else
    {
      v258 = v67;
      v268 = v58;
      v271 = v60;
      v183 = v65;
      v185 = *(v182 + 24);
      v186 = *(v182 + 32);
      v187 = *(v182 + 40);
      v274 = *(v182 + 16);
      v184 = v274;
      v275 = v185;
      v276 = v186;
      v277 = v187;
      v273 = v182 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      v272 = v62;

      v259 = v183;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D62B6164(v184, v185, v186, v187);
      sub_1D69BBC64(v270);
      if (!v4)
      {
        sub_1D62B61A8(v184, v185, v186, v187);

        v60 = v271;
        a1 = v266;
LABEL_77:
        v58 = v268;
        goto LABEL_78;
      }

      sub_1D62B61A8(v184, v185, v186, v187);
    }

    goto LABEL_98;
  }

  v258 = v67;
  v268 = v58;
  v271 = v60;
  v176 = *(v174 + 24);
  v231 = *(v174 + 16);
  v177 = v65;
  v178 = *(v174 + 32);
  v179 = *(v174 + 40);
  v274 = v231;
  v275 = v176;
  v276 = v178;
  v277 = v179;
  swift_retain_n();

  v272 = v62;

  v259 = v177;

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();
  v180 = v231;

  sub_1D62B6164(v180, v176, v178, v179);
  sub_1D69BBC64(v270);
  if (v4)
  {

    sub_1D62B61A8(v231, v176, v178, v179);

    goto LABEL_98;
  }

  v273 = 0;
  sub_1D62B61A8(v180, v176, v178, v179);

  v60 = v271;
  v175 = v270;
  a1 = v266;
  v58 = v268;
LABEL_80:
  v195 = v234;

  v196 = v195;
  v197 = v273;
  sub_1D622E2AC(a1, v175, v196);
  v273 = v197;
  if (!v197)
  {

    swift_bridgeObjectRelease_n();

    v167 = v175;
    goto LABEL_82;
  }

  swift_bridgeObjectRelease_n();
LABEL_117:
}

void sub_1D6230D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(a3 + 16);
  if (v11)
  {
    v6 = 0;
    v12 = a3 + 32;
    while (1)
    {
      v7 = *(v12 + 24 * v6 + 16);
      v8 = *(v7 + 16);

      if (v8)
      {
        break;
      }

LABEL_3:
      ++v6;

      if (v6 == v11)
      {
        return;
      }
    }

    v9 = (v7 + 40);
    while (1)
    {
      if ((*v9 & 1) == 0)
      {
        v10 = *(v9 - 1);
        swift_retain_n();
        FormatFloat.bind(binder:context:)(a1, a2);
        sub_1D62B72BC(v10, 0);
        if (v3)
        {

          return;
        }
      }

      v9 += 16;
      if (!--v8)
      {
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1D6230E38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v7 = (a3 + 48);
    do
    {
      v15 = *v7;

      if (swift_dynamicCast())
      {
        v8 = *(&v13 + 1);
        v9 = v14;
        __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
        (*(v9 + 8))(v10, a2, v8, v9);

        result = __swift_destroy_boxed_opaque_existential_1(&v12);
        if (v4)
        {
          return result;
        }
      }

      else
      {

        v14 = 0;
        v12 = 0u;
        v13 = 0u;
        result = sub_1D5BFB774(&v12, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v7 += 24;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D6230F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0)
      {
        v12 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D623D6A4(a1, a2, v12);

        if (v3)
        {
          return;
        }
      }

      else if (*(v7 + 40))
      {
        v10 = *(v7 + 24);
        v9 = *(v7 + 32);
        v18 = v10;
        sub_1D5F586D0(v10, v9, 1);

        sub_1D5F586D0(v10, v9, 1);
        sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

        if (swift_dynamicCast())
        {
          v11 = v17;
          v13 = *(&v16 + 1);
          __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
          (*(v11 + 8))(a1, a2, v13, v11);
          if (v3)
          {
            sub_1D5F5870C(v10, v9, 1);
            sub_1D5F5870C(v10, v9, 1);
            __swift_destroy_boxed_opaque_existential_1(&v15);

            return;
          }

          __swift_destroy_boxed_opaque_existential_1(&v15);
        }

        else
        {
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        sub_1D6212E6C(a1, a2, v9);
        sub_1D5F5870C(v10, v9, 1);
        sub_1D5F5870C(v10, v9, 1);

        if (v3)
        {
          return;
        }
      }

      --v4;
    }

    while (v4);
  }
}

void sub_1D6231208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v172 = a1;
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v161 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v160 = &v158 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v158 - v16;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v168 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v167 = &v158 - v23;
  v24 = *(a3 + 16);
  if (!v24)
  {
    return;
  }

  v159 = v17;
  v164 = (v8 + 56);
  v165 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v25 = (a3 + 48);
  v205 = a2;
  v166 = v7;
  while (1)
  {
    v40 = *v25;
    v41 = *v25 >> 61;
    if (v41 <= 1)
    {
      if (v41)
      {
        v55 = v40 & 0x1FFFFFFFFFFFFFFFLL;
        v56 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v57 = *(v55 + 24);

        swift_retain_n();

        sub_1D6247DA4(v172, v205, v56, v57);

        if (v4)
        {
          return;
        }
      }

      else
      {
        v26 = *(v40 + 208);
        v201 = *(v40 + 192);
        v202 = v26;
        v27 = *(v40 + 240);
        v203 = *(v40 + 224);
        v204 = v27;
        v28 = *(v40 + 144);
        v197 = *(v40 + 128);
        v198 = v28;
        v29 = *(v40 + 176);
        v199 = *(v40 + 160);
        v200 = v29;
        v30 = *(v40 + 80);
        v193 = *(v40 + 64);
        v194 = v30;
        v31 = *(v40 + 112);
        v195 = *(v40 + 96);
        v196 = v31;
        v32 = *(v40 + 32);
        v190 = *(v40 + 16);
        v191 = v32;
        v192 = *(v40 + 48);
        v33 = *(v40 + 224);
        v187 = *(v40 + 208);
        v188 = v33;
        v189 = *(v40 + 240);
        v34 = *(v40 + 160);
        v183 = *(v40 + 144);
        v184 = v34;
        v35 = *(v40 + 192);
        v185 = *(v40 + 176);
        v186 = v35;
        v36 = *(v40 + 96);
        v179 = *(v40 + 80);
        v180 = v36;
        v37 = *(v40 + 128);
        v181 = *(v40 + 112);
        v182 = v37;
        v38 = *(v40 + 32);
        v175 = *(v40 + 16);
        v176 = v38;
        v39 = *(v40 + 64);
        v177 = *(v40 + 48);
        v178 = v39;
        swift_retain_n();

        sub_1D5EEBE38(&v190, v174);
        FormatRemoteVideo.bind(binder:context:)(v172, v205);

        sub_1D5EEBE94(&v190);

        if (v4)
        {
          return;
        }
      }

      goto LABEL_4;
    }

    v173 = *(v25 - 1);
    v171 = v24;
    if (v41 == 2)
    {
      v58 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = v58 >> 61;
      v169 = v58;
      v170 = v40 & 0x1FFFFFFFFFFFFFFFLL;
      if ((v58 >> 61) <= 1)
      {
        if (v60)
        {
          v120 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v121 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          swift_retain_n();
          swift_retain_n();

          sub_1D6247DA4(v172, v205, v120, v121);
          if (v4)
          {

            goto LABEL_77;
          }
        }

        else
        {
          v82 = *(v58 + 208);
          v201 = *(v58 + 192);
          v202 = v82;
          v83 = *(v58 + 240);
          v203 = *(v58 + 224);
          v204 = v83;
          v84 = *(v58 + 144);
          v197 = *(v58 + 128);
          v198 = v84;
          v85 = *(v58 + 176);
          v199 = *(v58 + 160);
          v200 = v85;
          v86 = *(v58 + 80);
          v193 = *(v58 + 64);
          v194 = v86;
          v87 = *(v58 + 112);
          v195 = *(v58 + 96);
          v196 = v87;
          v88 = *(v58 + 32);
          v190 = *(v58 + 16);
          v191 = v88;
          v192 = *(v58 + 48);
          v89 = *(v58 + 224);
          v187 = *(v58 + 208);
          v188 = v89;
          v189 = *(v58 + 240);
          v90 = *(v58 + 160);
          v183 = *(v58 + 144);
          v184 = v90;
          v91 = *(v58 + 192);
          v185 = *(v58 + 176);
          v186 = v91;
          v92 = *(v58 + 96);
          v179 = *(v58 + 80);
          v180 = v92;
          v93 = *(v58 + 128);
          v181 = *(v58 + 112);
          v182 = v93;
          v94 = *(v58 + 32);
          v175 = *(v58 + 16);
          v176 = v94;
          v95 = *(v58 + 64);
          v177 = *(v58 + 48);
          v178 = v95;

          swift_retain_n();

          swift_retain_n();
          sub_1D5EEBE38(&v190, v174);
          FormatRemoteVideo.bind(binder:context:)(v172, v205);
          if (v4)
          {

            sub_1D5EEBE94(&v190);

            goto LABEL_78;
          }

          sub_1D5EEBE94(&v190);
        }
      }

      else if (v60 == 2)
      {
        v110 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v190 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();

        swift_retain_n();
        v163 = v58 & 0x1FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        v111 = v172;
        v112 = v205;
        FormatVideoNodeContent.bind(binder:context:)(v172, v205);
        if (v4)
        {

          goto LABEL_77;
        }

        *&v190 = v110;

        FormatVideoNodeContent.bind(binder:context:)(v111, v112);
      }

      else if (v60 == 3)
      {
        v61 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v62 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v190 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v190 + 1) = v61;
        *&v191 = v62;

        swift_retain_n();

        swift_retain_n();
        sub_1D71580D8(v205);
        if (v4)
        {

          goto LABEL_77;
        }
      }

      else
      {
        v113 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v190 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v163 = v190;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        v114 = v172;
        v115 = v205;
        FormatVideoNodeContent.bind(binder:context:)(v172, v205);
        if (v4)
        {

LABEL_71:

LABEL_77:

          return;
        }

        sub_1D6231208(v114, v115, v113);

        swift_bridgeObjectRelease_n();
      }

      v122 = v59 >> 61;
      if ((v59 >> 61) <= 1)
      {
        if (!v122)
        {
          v125 = *(v59 + 208);
          v201 = *(v59 + 192);
          v202 = v125;
          v126 = *(v59 + 240);
          v203 = *(v59 + 224);
          v204 = v126;
          v127 = *(v59 + 144);
          v197 = *(v59 + 128);
          v198 = v127;
          v128 = *(v59 + 176);
          v199 = *(v59 + 160);
          v200 = v128;
          v129 = *(v59 + 80);
          v193 = *(v59 + 64);
          v194 = v129;
          v130 = *(v59 + 112);
          v195 = *(v59 + 96);
          v196 = v130;
          v131 = *(v59 + 32);
          v190 = *(v59 + 16);
          v191 = v131;
          v192 = *(v59 + 48);
          v132 = *(v59 + 224);
          v187 = *(v59 + 208);
          v188 = v132;
          v189 = *(v59 + 240);
          v133 = *(v59 + 160);
          v183 = *(v59 + 144);
          v184 = v133;
          v134 = *(v59 + 192);
          v185 = *(v59 + 176);
          v186 = v134;
          v135 = *(v59 + 96);
          v179 = *(v59 + 80);
          v180 = v135;
          v136 = *(v59 + 128);
          v181 = *(v59 + 112);
          v182 = v136;
          v137 = *(v59 + 32);
          v175 = *(v59 + 16);
          v176 = v137;
          v138 = *(v59 + 64);
          v177 = *(v59 + 48);
          v178 = v138;

          sub_1D5EEBE38(&v190, v174);
          FormatRemoteVideo.bind(binder:context:)(v172, v205);

          sub_1D5EEBE94(&v190);

          goto LABEL_62;
        }

        v148 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v149 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D6247DA4(v172, v205, v148, v149);
      }

      else if (v122 == 2)
      {
        v144 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v190 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();

        v145 = v205;
        FormatVideoNodeContent.bind(binder:context:)(v172, v205);

        *&v190 = v144;

        FormatVideoNodeContent.bind(binder:context:)(v172, v145);
      }

      else
      {
        if (v122 != 3)
        {
          v146 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          *&v190 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          v147 = v205;
          FormatVideoNodeContent.bind(binder:context:)(v172, v205);

          sub_1D6231208(v172, v147, v146);

          swift_bridgeObjectRelease_n();
          goto LABEL_62;
        }

        v123 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v124 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v190 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v190 + 1) = v123;
        *&v191 = v124;

        sub_1D71580D8(v205);
      }

      goto LABEL_62;
    }

    if (v41 != 3)
    {
      break;
    }

    v42 = (v40 & 0x1FFFFFFFFFFFFFFFLL);
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42[4];
    *&v190 = v44;
    *(&v190 + 1) = v43;
    *&v191 = v45;
    LOBYTE(v175) = 9;
    v170 = v43;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    swift_retain_n();
    v46 = sub_1D703E0C8(&v190, &v175);
    if (v4)
    {

      return;
    }

    v47 = v46;
    v169 = 0;
    v48 = *(v205 + v165);
    v49 = *(v48 + 16);
    swift_beginAccess();
    if (*(*(v49 + 16) + 16) && (sub_1D5B69D90(v44, v170), (v50 & 1) != 0))
    {
      v162 = v25;
      v163 = v47;
      swift_endAccess();
      v51 = v161;
      sub_1D5D25108(v161);
      v52 = v51;
      v53 = v160;
      sub_1D5D5E33C(v52, v160, type metadata accessor for FormatOption);
      v54 = v168;
      sub_1D5D5E33C(v53, v168, type metadata accessor for FormatOption);
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      if (!*(*(v48 + 24) + 16) || (sub_1D5B69D90(v44, v170), (v69 & 1) == 0))
      {
        v163 = v45;
        swift_endAccess();
        v77 = *v164;
        v78 = v168;
        v79 = v166;
        (*v164)(v168, 1, 1, v166);

        sub_1D5B6EF64(v78, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v80 = v169;
        if (*(v205 + 48) != 1)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v156 = v170;
          *v157 = v44;
          v157[1] = v156;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v81 = v167;
        v77(v167, 1, 1, v79);
        sub_1D5B6EF64(v81, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v4 = v80;
        v24 = v171;
        goto LABEL_4;
      }

      v162 = v25;
      v163 = v47;
      swift_endAccess();
      v54 = v168;
      sub_1D5D25108(v168);
    }

    v70 = *v164;
    v71 = v166;
    (*v164)(v54, 0, 1, v166);
    v72 = v159;
    sub_1D5D5E33C(v54, v159, type metadata accessor for FormatOption);
    v73 = v72;
    *&v190 = v72[2];
    v74 = v163;

    FormatOptionValue.type.getter(v75, &v175);
    if ((sub_1D6183C84(v175, v74) & 1) == 0)
    {
      v205 = type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      v169 = swift_allocError();
      v151 = v150;
      v152 = *v72;
      v153 = v72[1];
      *&v190 = v72[2];

      FormatOptionValue.type.getter(v154, &v175);
      v155 = v175;
      *v151 = v152;
      *(v151 + 8) = v153;
      *(v151 + 16) = v155;
      *(v151 + 24) = v74;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B51D0(v72, type metadata accessor for FormatOption);
      goto LABEL_78;
    }

    swift_bridgeObjectRelease_n();
    v76 = v167;
    sub_1D5D5E33C(v73, v167, type metadata accessor for FormatOption);
    v70(v76, 0, 1, v71);
    sub_1D5B6EF64(v76, &qword_1EDF337F0, type metadata accessor for FormatOption);

    v4 = v169;
    v24 = v171;
    v25 = v162;
LABEL_4:
    v25 += 3;
    if (!--v24)
    {
      return;
    }
  }

  v63 = v40 & 0x1FFFFFFFFFFFFFFFLL;
  v65 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v64 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v66 = v65 >> 61;
  if ((v65 >> 61) > 1)
  {
    v170 = v63;
    if (v66 == 2)
    {
      v116 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v118 = v172;
      *&v190 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v117 = v190;
      v162 = v116;

      v163 = v117;
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();
      v169 = v64;

      v119 = v205;
      FormatVideoNodeContent.bind(binder:context:)(v118, v205);
      if (v4)
      {

        goto LABEL_77;
      }

      *&v190 = v162;

      FormatVideoNodeContent.bind(binder:context:)(v118, v119);
    }

    else
    {
      if (v66 == 3)
      {
        v67 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v68 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v190 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v190 + 1) = v67;
        *&v191 = v68;

        swift_retain_n();
        swift_retain_n();

        sub_1D71580D8(v205);
        if (v4)
        {

          goto LABEL_77;
        }

LABEL_57:

        sub_1D6231208(v172, v205, v64);

        swift_bridgeObjectRelease_n();
LABEL_62:

        v24 = v171;
        goto LABEL_4;
      }

      v139 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v190 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v163 = v190;
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();
      v169 = v64;

      v140 = v172;
      v141 = v205;
      FormatVideoNodeContent.bind(binder:context:)(v172, v205);
      if (v4)
      {

        goto LABEL_71;
      }

      sub_1D6231208(v140, v141, v139);

      swift_bridgeObjectRelease_n();
    }

    v64 = v169;
    goto LABEL_57;
  }

  if (v66)
  {
    v142 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v143 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v170 = v63;
    swift_retain_n();
    swift_retain_n();

    sub_1D6247DA4(v172, v205, v142, v143);
    if (v4)
    {

      goto LABEL_77;
    }

    goto LABEL_57;
  }

  v96 = *(v65 + 208);
  v201 = *(v65 + 192);
  v202 = v96;
  v97 = *(v65 + 240);
  v203 = *(v65 + 224);
  v204 = v97;
  v98 = *(v65 + 144);
  v197 = *(v65 + 128);
  v198 = v98;
  v99 = *(v65 + 176);
  v199 = *(v65 + 160);
  v200 = v99;
  v100 = *(v65 + 80);
  v193 = *(v65 + 64);
  v194 = v100;
  v101 = *(v65 + 112);
  v195 = *(v65 + 96);
  v196 = v101;
  v102 = *(v65 + 32);
  v190 = *(v65 + 16);
  v191 = v102;
  v192 = *(v65 + 48);
  v103 = *(v65 + 224);
  v187 = *(v65 + 208);
  v188 = v103;
  v189 = *(v65 + 240);
  v104 = *(v65 + 160);
  v183 = *(v65 + 144);
  v184 = v104;
  v105 = *(v65 + 192);
  v185 = *(v65 + 176);
  v186 = v105;
  v106 = *(v65 + 96);
  v179 = *(v65 + 80);
  v180 = v106;
  v107 = *(v65 + 128);
  v181 = *(v65 + 112);
  v182 = v107;
  v108 = *(v65 + 32);
  v175 = *(v65 + 16);
  v176 = v108;
  v109 = *(v65 + 64);
  v177 = *(v65 + 48);
  v178 = v109;
  swift_retain_n();

  swift_retain_n();
  sub_1D5EEBE38(&v190, v174);
  FormatRemoteVideo.bind(binder:context:)(v172, v205);
  if (!v4)
  {
    sub_1D5EEBE94(&v190);

    goto LABEL_57;
  }

  sub_1D5EEBE94(&v190);

LABEL_78:
}