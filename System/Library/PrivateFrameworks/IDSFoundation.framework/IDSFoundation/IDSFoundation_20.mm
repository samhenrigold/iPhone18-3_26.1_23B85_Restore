uint64_t LinkEngineConnectBestController.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

void *LinkEngineConnectBestController.init(fallbackDelay:disconnectDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_1A7DCA318(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v205 = a7;
  v220 = a6;
  v227 = a5;
  v214 = a2;
  v213 = a1;
  v12 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v182 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v181 = v173 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v196 = v173 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v211 = v173 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v195 = v173 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v194 = v173 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v210 = v173 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v173 - v27;
  v228 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v228);
  v187 = v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v173 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v209 = v173 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v208 = v173 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v207 = v173 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v189 = v173 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v215 = v173 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v193 = v173 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v206 = v173 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v202 = v173 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v229 = v173 - v50;
  v51 = sub_1A7E22CF0();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v186 = v173 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v185 = v173 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v180 = v173 - v57;
  v58 = sub_1A7CC7FFC(&qword_1EB2B5B78, &unk_1A7E488D0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v201 = v173 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v184 = v173 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v173 - v63;
  v65 = *(a8 - 8);
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = v173 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v65 + 16))(v69, a3, a8, v67);
  v70 = *v227;
  if (v70 != 1)
  {
    v221 = v69;
    v176 = v65;
    v71 = v205[5];
    v179 = v205[4];
    v178 = v71;
    v183 = v52;
    v72 = *(v52 + 56);
    v200 = v64;
    v222 = v51;
    v199 = v52 + 56;
    v198 = v72;
    v72(v64, 1, 1, v51);
    v219 = v28;
    v174 = v32;
    v177 = a8;
    if (a4 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A7E22DA0())
    {
      v74 = type metadata accessor for LinkStateComponent(0);
      v75 = 0;
      v218 = a4 & 0xC000000000000001;
      v197 = a4 & 0xFFFFFFFFFFFFFF8;
      v217 = v74 - 8;
      v212 = (v183 + 16);
      v173[1] = v214 + 2;
      v203 = (v183 + 8);
      v191 = v214 + 1;
      v175 = (v183 + 32);
      v190 = v214 + 3;
      *&v76 = 136315394;
      v192 = v76;
      v216 = a4;
      v204 = i;
      while (v218)
      {
        v77 = MEMORY[0x1AC562480](v75, a4);
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_78;
        }

LABEL_13:
        os_unfair_lock_lock((v77 + 40));
        v79 = *(v77 + 48);
        v227 = (v77 + 48);
        v80 = *(v79 + 16);
        v224 = v78;
        if (v80 && (v81 = sub_1A7CD0DFC(v74), (v82 & 1) != 0))
        {
          sub_1A7B0CD10(*(v79 + 56) + 32 * v81, &v230);
        }

        else
        {
          v230 = 0u;
          v231 = 0u;
        }

        os_unfair_lock_unlock((v77 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        v83 = v219;
        v84 = swift_dynamicCast();
        v85 = *(v74 - 8);
        v225 = *(v85 + 56);
        v225(v83, v84 ^ 1u, 1, v74);
        v226 = *(v85 + 48);
        if (v226(v83, 1, v74))
        {
          sub_1A7CC9970(v83, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
          if (!v70)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v90 = v75;
          v91 = v202;
          sub_1A7CD0EC4(v83, v202);
          sub_1A7CC9970(v83, &qword_1EB2B4A80, &unk_1A7E41910);
          v92 = v91;
          v75 = v90;
          sub_1A7CF4888(v92, v229, type metadata accessor for LinkState);
          if (!v70)
          {
LABEL_24:
            v223 = v75;
            sub_1A7CD0EC4(v229, v215);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 2)
            {
              v94 = v208;
              if ((EnumCaseMultiPayload - 4) < 2)
              {
                goto LABEL_52;
              }

              if ((*(v215 + 9) & 1) == 0)
              {
                sub_1A7CD0E68(v229);

                goto LABEL_64;
              }

              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v99 = sub_1A7E22060();
              sub_1A7B0CB00(v99, qword_1EB2B2CC8);
              v100 = v174;
              sub_1A7CD0EC4(v229, v174);

              v101 = sub_1A7E22040();
              v102 = sub_1A7E228F0();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                *&v230 = v188;
                *v103 = v192;
                v104 = v102;
                v105 = *(v77 + 16);
                v106 = *(v77 + 24);

                v107 = sub_1A7B0CB38(v105, v106, &v230);

                *(v103 + 4) = v107;
                *(v103 + 12) = 2080;
                v108 = LinkState.description.getter();
                v110 = v109;
                sub_1A7CD0E68(v100);
                v111 = sub_1A7B0CB38(v108, v110, &v230);

                *(v103 + 14) = v111;
                _os_log_impl(&dword_1A7AD9000, v101, v104, "%s: %s -> connecting (reconnect)", v103, 0x16u);
                v112 = v188;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v112, -1, -1);
                MEMORY[0x1AC5654B0](v103, -1, -1);
              }

              else
              {

                sub_1A7CD0E68(v100);
              }

              v161 = v182;
              v162 = v181;
              v163 = v187;
              (*v212)(v187, v220, v222);
              swift_storeEnumTagMultiPayload();
              sub_1A7CD0EC4(v163, v162);
              v225(v162, 0, 1, v74);
              os_unfair_lock_lock((v77 + 40));
              sub_1A7CD1F00(v162, v161, &qword_1EB2B4A80, &unk_1A7E41910);
              v164 = v226(v161, 1, v74);
              i = v204;
              if (v164 == 1)
              {
                sub_1A7CC9970(v161, &qword_1EB2B4A80, &unk_1A7E41910);
                v230 = 0u;
                v231 = 0u;
              }

              else
              {
                *(&v231 + 1) = v74;
                v165 = sub_1A7CC98BC(&v230);
                sub_1A7CF4888(v161, v165, type metadata accessor for LinkStateComponent);
              }

              a4 = v216;
              sub_1A7CC8D74(&v230, v74);
              os_unfair_lock_unlock((v77 + 40));
              sub_1A7CD0E68(v187);
              sub_1A7CC9970(v162, &qword_1EB2B4A80, &unk_1A7E41910);
              ObjectType = swift_getObjectType();
              v214[2](v77, ObjectType);
            }

            else
            {
              v94 = v208;
              if (!EnumCaseMultiPayload)
              {
                v135 = v185;
                v136 = v215;
                v137 = v222;
                (*v212)(v185, v215, v222);
                sub_1A7E22CE0();
                if (sub_1A7E232A0())
                {
                  v138 = v201;
                  sub_1A7E22CD0();

                  v139 = *v203;
                  (*v203)(v135, v137);
                  sub_1A7CD0E68(v229);
                  v140 = v200;
                  sub_1A7CC9970(v200, &qword_1EB2B5B78, &unk_1A7E488D0);
                  v70 = 1;
                  v198(v138, 0, 1, v137);
                  sub_1A7D25AEC(v138, v140);
                  v139(v215, v137);
                }

                else
                {

                  v160 = *v203;
                  (*v203)(v135, v137);
                  sub_1A7CD0E68(v229);
                  v160(v136, v137);
LABEL_64:
                  v70 = 0;
                }

LABEL_66:
                a4 = v216;
                v75 = v223;
                goto LABEL_6;
              }

              if (EnumCaseMultiPayload == 1)
              {
                v95 = v186;
                v96 = v222;
                (*v175)(v186, v215, v222);
                sub_1A7E22CE0();
                if (sub_1A7E232A0())
                {
                  v97 = v201;
                  sub_1A7E22CD0();

                  (*v203)(v95, v96);
                  sub_1A7CD0E68(v229);
                  v98 = v200;
                  sub_1A7CC9970(v200, &qword_1EB2B5B78, &unk_1A7E488D0);
                  v70 = 1;
                  v198(v97, 0, 1, v96);
                  sub_1A7D25AEC(v97, v98);
                }

                else
                {

                  (*v203)(v95, v96);
                  sub_1A7CD0E68(v229);
                  v70 = 2;
                }

                goto LABEL_66;
              }

              (*v203)(v215, v222);
LABEL_52:
              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v141 = sub_1A7E22060();
              sub_1A7B0CB00(v141, qword_1EB2B2CC8);
              sub_1A7CD0EC4(v229, v94);

              v142 = sub_1A7E22040();
              v143 = sub_1A7E228F0();

              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                *&v230 = v188;
                *v144 = v192;
                v145 = *(v77 + 16);
                v146 = *(v77 + 24);

                v147 = sub_1A7B0CB38(v145, v146, &v230);

                *(v144 + 4) = v147;
                *(v144 + 12) = 2080;
                v148 = LinkState.description.getter();
                v150 = v149;
                sub_1A7CD0E68(v94);
                v151 = sub_1A7B0CB38(v148, v150, &v230);

                *(v144 + 14) = v151;
                _os_log_impl(&dword_1A7AD9000, v142, v143, "%s: %s -> connecting", v144, 0x16u);
                v152 = v188;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v152, -1, -1);
                MEMORY[0x1AC5654B0](v144, -1, -1);
              }

              else
              {

                sub_1A7CD0E68(v94);
              }

              v153 = v196;
              i = v204;
              v154 = v209;
              (*v212)(v209, v220, v222);
              swift_storeEnumTagMultiPayload();
              v155 = v211;
              sub_1A7CD0EC4(v154, v211);
              v225(v155, 0, 1, v74);
              os_unfair_lock_lock((v77 + 40));
              sub_1A7CD1F00(v155, v153, &qword_1EB2B4A80, &unk_1A7E41910);
              if (v226(v153, 1, v74) == 1)
              {
                sub_1A7CC9970(v153, &qword_1EB2B4A80, &unk_1A7E41910);
                v230 = 0u;
                v231 = 0u;
              }

              else
              {
                *(&v231 + 1) = v74;
                v156 = sub_1A7CC98BC(&v230);
                sub_1A7CF4888(v153, v156, type metadata accessor for LinkStateComponent);
              }

              a4 = v216;
              sub_1A7CC8D74(&v230, v74);
              os_unfair_lock_unlock((v77 + 40));
              sub_1A7CD0E68(v209);
              sub_1A7CC9970(v211, &qword_1EB2B4A80, &unk_1A7E41910);
              v157 = swift_getObjectType();
              v214[1](v77, v157);
            }

            v158 = v201;
            sub_1A7E22CD0();

            sub_1A7CD0E68(v229);
            v159 = v200;
            sub_1A7CC9970(v200, &qword_1EB2B5B78, &unk_1A7E488D0);
            v70 = 1;
            v198(v158, 0, 1, v222);
            sub_1A7D25AEC(v158, v159);
            v75 = v223;
            goto LABEL_6;
          }
        }

        if (v70 != 2)
        {
          sub_1A7CD0E68(v229);

          goto LABEL_73;
        }

        os_unfair_lock_lock((v77 + 40));
        v86 = *v227;
        if (*(*v227 + 16))
        {
          v87 = sub_1A7CD0DFC(v74);
          v88 = v210;
          if (v89)
          {
            sub_1A7B0CD10(*(v86 + 56) + 32 * v87, &v230);
          }

          else
          {
            v230 = 0u;
            v231 = 0u;
          }
        }

        else
        {
          v230 = 0u;
          v231 = 0u;
          v88 = v210;
        }

        os_unfair_lock_unlock((v77 + 40));
        v113 = swift_dynamicCast();
        v225(v88, v113 ^ 1u, 1, v74);
        if (v226(v88, 1, v74))
        {
          sub_1A7CC9970(v88, &qword_1EB2B4A80, &unk_1A7E41910);
          v114 = v206;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v115 = v193;
          sub_1A7CD0EC4(v88, v193);
          sub_1A7CC9970(v88, &qword_1EB2B4A80, &unk_1A7E41910);
          v114 = v206;
          sub_1A7CF4888(v115, v206, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() >= 2)
        {
          sub_1A7CD0E68(v229);

          sub_1A7CD0E68(v114);
          v70 = 2;
          a4 = v216;
        }

        else
        {
          (*v203)(v114, v222);
          if (qword_1EB2B2CC0 != -1)
          {
            swift_once();
          }

          v223 = v75;
          v116 = sub_1A7E22060();
          sub_1A7B0CB00(v116, qword_1EB2B2CC8);

          v117 = sub_1A7E22040();
          v118 = sub_1A7E228F0();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v188 = swift_slowAlloc();
            *&v230 = v188;
            *v119 = v192;
            v120 = *(v77 + 16);
            v121 = *(v77 + 24);

            v122 = sub_1A7B0CB38(v120, v121, &v230);

            *(v119 + 4) = v122;
            *(v119 + 12) = 2080;
            v123 = v189;
            LinkEngineLink.state.getter(v189);
            v124 = LinkState.description.getter();
            v126 = v125;
            sub_1A7CD0E68(v123);
            v127 = sub_1A7B0CB38(v124, v126, &v230);

            *(v119 + 14) = v127;
            _os_log_impl(&dword_1A7AD9000, v117, v118, "%s: %s -> disconnecting", v119, 0x16u);
            v128 = v188;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v128, -1, -1);
            MEMORY[0x1AC5654B0](v119, -1, -1);
          }

          v129 = v195;
          v130 = v194;
          v131 = v207;
          (*v212)(v207, v220, v222);
          swift_storeEnumTagMultiPayload();
          sub_1A7CD0EC4(v131, v130);
          v225(v130, 0, 1, v74);
          os_unfair_lock_lock((v77 + 40));
          sub_1A7CD1F00(v130, v129, &qword_1EB2B4A80, &unk_1A7E41910);
          v132 = v226(v129, 1, v74);
          i = v204;
          if (v132 == 1)
          {
            sub_1A7CC9970(v129, &qword_1EB2B4A80, &unk_1A7E41910);
            v230 = 0u;
            v231 = 0u;
          }

          else
          {
            *(&v231 + 1) = v74;
            v133 = sub_1A7CC98BC(&v230);
            sub_1A7CF4888(v129, v133, type metadata accessor for LinkStateComponent);
          }

          a4 = v216;
          v75 = v223;
          sub_1A7CC8D74(&v230, v74);
          os_unfair_lock_unlock((v77 + 40));
          sub_1A7CD0E68(v207);
          sub_1A7CC9970(v130, &qword_1EB2B4A80, &unk_1A7E41910);
          v134 = swift_getObjectType();
          v214[3](v77, v134);

          sub_1A7CD0E68(v229);
          v70 = 2;
        }

LABEL_6:
        ++v75;
        if (v224 == i)
        {
          goto LABEL_73;
        }
      }

      if (v75 >= *(v197 + 16))
      {
        goto LABEL_79;
      }

      v77 = *(a4 + 8 * v75 + 32);

      v78 = v75 + 1;
      if (!__OFADD__(v75, 1))
      {
        goto LABEL_13;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      ;
    }

LABEL_73:
    v167 = v200;
    v168 = v184;
    sub_1A7CD1F00(v200, v184, &qword_1EB2B5B78, &unk_1A7E488D0);
    v169 = v183;
    v170 = v222;
    if ((*(v183 + 48))(v168, 1, v222) == 1)
    {
      sub_1A7CC9970(v167, &qword_1EB2B5B78, &unk_1A7E488D0);
      v167 = v168;
      a8 = v177;
    }

    else
    {
      v171 = v180;
      (*(v169 + 32))(v180, v168, v170);
      a8 = v177;
      (*(a9 + 24))(v171, v177, a9);
      (*(v169 + 8))(v171, v170);
    }

    sub_1A7CC9970(v167, &qword_1EB2B5B78, &unk_1A7E488D0);
    v65 = v176;
    v69 = v221;
  }

  return (*(v65 + 8))(v69, a8);
}

unint64_t sub_1A7DCBC7C()
{
  result = qword_1EB2B7820;
  if (!qword_1EB2B7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7820);
  }

  return result;
}

uint64_t sub_1A7DCBD30()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C30);
  sub_1A7B0CB00(v0, qword_1EB2B2C30);
  return sub_1A7E22050();
}

uint64_t IDSGLDefaultLinkConnector.__allocating_init(connector:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void IDSGLDefaultLinkConnector.startConnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B2C30);

  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v73 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
    _os_log_impl(&dword_1A7AD9000, v5, v6, "Start connecting link %s...", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  LinkEngineLink.definition.getter(&v73);
  v9 = v73;
  if (v73)
  {
    v11 = *(&v73 + 1);
    v10 = v74;
    sub_1A7CE0478(v74, &v73);
    v12 = v73;
    if (v73)
    {
      v65 = v9;

      v13 = sub_1A7E22040();
      v14 = sub_1A7E228F0();

      if (os_log_type_enabled(v13, v14))
      {
        v66 = v12;
        v15 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v2;
        *&v73 = v63;
        *v15 = 136315138;
        v78[0] = v66;
        v16 = LinkEndpoint.uniqueID.getter();
        v18 = a1;
        v19 = v11;
        v20 = v10;
        v21 = sub_1A7B0CB38(v16, v17, &v73);

        *(v15 + 4) = v21;
        v10 = v20;
        v11 = v19;
        a1 = v18;
        _os_log_impl(&dword_1A7AD9000, v13, v14, "    have an idsResolvedEndpoint: %s", v15, 0xCu);
        sub_1A7B0CD6C(v63);
        v2 = v64;
        MEMORY[0x1AC5654B0](v63, -1, -1);
        v22 = v15;
        v12 = v66;
        MEMORY[0x1AC5654B0](v22, -1, -1);
      }

      v9 = v65;
    }

    else
    {

      v12 = v10;
    }

    sub_1A7CE0318(v11, &v73);
    if (*(&v74 + 1))
    {
      sub_1A7CC99E0(&v73, v77);
      sub_1A7CE23DC(&v73);
      sub_1A7B14FF0(v77, v78);
      sub_1A7CE0318(v12, &v73);
      if (*(&v74 + 1))
      {
        sub_1A7CC99E0(&v73, &v71);
        sub_1A7CE23DC(&v73);
        sub_1A7B14FF0(&v71, v77);
        sub_1A7CC99E0(v78, &v71);
        sub_1A7CC99E0(v77, v70);
        sub_1A7CDB7B8(v9, v11, v10);

        sub_1A7CDB7B8(v9, v11, v10);

        v26 = sub_1A7E22040();
        v27 = sub_1A7E228F0();
        v66 = v12;
        if (!os_log_type_enabled(v26, v27))
        {

          sub_1A7CDB84C(v9, v11, v10);

          sub_1A7CDB84C(v9, v11, v10);

          sub_1A7B0CD6C(&v71);
          sub_1A7B0CD6C(v70);
LABEL_41:
          v59 = v79;
          v65 = v80;
          v64 = sub_1A7CC9878(v78, v79);
          sub_1A7CE0318(v11, &v73);
          if (*(&v74 + 1))
          {
            v60 = WORD4(v75);
            v61 = sub_1A7CE23DC(&v73);
          }

          else
          {
            v61 = sub_1A7CC9970(&v73, &qword_1EB2B5030, &unk_1A7E52250);
            v60 = 0;
          }

          MEMORY[0x1EEE9AC00](v61);
          v62[2] = v77;
          v62[3] = v66;
          v62[4] = v2;
          v62[5] = a1;
          v62[6] = v9;
          v62[7] = v11;
          v62[8] = v10;
          IPAddress.withSockaddrStorage<A>(forPort:block:)(v60, sub_1A7DCE940, v62, v59, MEMORY[0x1E69E7CA8] + 8, v65, MEMORY[0x1E69E7CA8]);
          sub_1A7CDB84C(v9, v11, v10);

          sub_1A7B0CD6C(v77);
          sub_1A7B0CD6C(v78);
          return;
        }

        v64 = v10;
        v65 = v9;
        v28 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69[0] = v63;
        *v28 = 136315906;
        v29 = sub_1A7CC9878(&v71, v72);
        v30 = MEMORY[0x1EEE9AC00](v29);
        (*(v32 + 16))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        v33 = sub_1A7E222F0();
        v35 = v34;
        sub_1A7B0CD6C(&v71);
        v36 = sub_1A7B0CB38(v33, v35, v69);

        *(v28 + 4) = v36;
        *(v28 + 12) = 512;
        if (*(v11 + 16) && (v37 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v38 & 1) != 0))
        {
          sub_1A7B0CD10(*(v11 + 56) + 32 * v37, v68);
          sub_1A7B1503C(v68, v67);
          sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
          if (swift_dynamicCast())
          {
            if (*(&v74 + 1))
            {
              v39 = WORD4(v75);
              sub_1A7CE23DC(&v73);
LABEL_32:
              v45 = v64;
              v44 = v65;
              sub_1A7CDB84C(v65, v11, v64);
              *(v28 + 14) = v39;
              sub_1A7CDB84C(v44, v11, v45);
              *(v28 + 16) = 2080;
              v46 = sub_1A7CC9878(v70, v70[3]);
              v47 = MEMORY[0x1EEE9AC00](v46);
              (*(v49 + 16))(&v63 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
              v50 = sub_1A7E222F0();
              v52 = v51;
              sub_1A7B0CD6C(v70);
              v53 = sub_1A7B0CB38(v50, v52, v69);

              *(v28 + 18) = v53;
              *(v28 + 26) = 512;
              v54 = v66;
              if (v66[2].isa && (v55 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v56 & 1) != 0))
              {
                sub_1A7B0CD10(v54[7].isa + 32 * v55, v68);
                sub_1A7B1503C(v68, v67);
                sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
                if (swift_dynamicCast())
                {
                  v10 = v64;
                  if (*(&v74 + 1))
                  {
                    v57 = WORD4(v75);
                    sub_1A7CE23DC(&v73);
LABEL_40:

                    *(v28 + 28) = v57;

                    _os_log_impl(&dword_1A7AD9000, v26, v27, "    connecting link for %s:%hu ->  %s:%hu", v28, 0x1Eu);
                    v58 = v63;
                    swift_arrayDestroy();
                    MEMORY[0x1AC5654B0](v58, -1, -1);
                    MEMORY[0x1AC5654B0](v28, -1, -1);

                    v9 = v65;
                    goto LABEL_41;
                  }

LABEL_39:
                  sub_1A7CC9970(&v73, &qword_1EB2B5030, &unk_1A7E52250);
                  v57 = 0;
                  goto LABEL_40;
                }

                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
              }

              else
              {
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
              }

              v10 = v64;
              goto LABEL_39;
            }
          }

          else
          {
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
        }

        sub_1A7CC9970(&v73, &qword_1EB2B5030, &unk_1A7E52250);
        v39 = 0;
        goto LABEL_32;
      }

      sub_1A7CDB84C(v9, v11, v10);
      sub_1A7CC9970(&v73, &qword_1EB2B5030, &unk_1A7E52250);
      sub_1A7B0CD6C(v78);
    }

    else
    {
      sub_1A7CDB84C(v9, v11, v10);

      sub_1A7CC9970(&v73, &qword_1EB2B5030, &unk_1A7E52250);
    }

    v40 = sub_1A7E22040();
    v41 = sub_1A7E228F0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v73 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
      _os_log_impl(&dword_1A7AD9000, v40, v41, "    no ip addresses for link %s; skipping", v42, 0xCu);
      sub_1A7B0CD6C(v43);
      MEMORY[0x1AC5654B0](v43, -1, -1);
      MEMORY[0x1AC5654B0](v42, -1, -1);
    }
  }

  else
  {

    v66 = sub_1A7E22040();
    v23 = sub_1A7E228E0();

    if (os_log_type_enabled(v66, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v73 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), &v73);
      _os_log_impl(&dword_1A7AD9000, v66, v23, "    no definition for link %s; skipping", v24, 0xCu);
      sub_1A7B0CD6C(v25);
      MEMORY[0x1AC5654B0](v25, -1, -1);
      MEMORY[0x1AC5654B0](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A7DCC924@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a9;
  v16 = a2[3];
  v22 = a2[4];
  sub_1A7CC9878(a2, v16);
  sub_1A7CE0318(a3, &v23);
  if (v24)
  {
    v17 = v25;
    v18 = sub_1A7CE23DC(&v23);
  }

  else
  {
    v18 = sub_1A7CC9970(&v23, &qword_1EB2B5030, &unk_1A7E52250);
    v17 = 0;
  }

  MEMORY[0x1EEE9AC00](v18);
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a1;
  return IPAddress.withSockaddrStorage<A>(forPort:block:)(v17, sub_1A7DCEAB8, v20, v16, MEMORY[0x1E69E7CA8] + 8, v22, v21);
}

void sub_1A7DCCA48(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  aBlock[6] = a4;
  aBlock[7] = a5;
  aBlock[8] = a6;
  LinkDefinition.idsLinkType.getter(&v59);
  if (!v59)
  {
    v14 = a7[5];
    v47 = a7[4];
    v48 = v14;
    v15 = a7[7];
    v49 = a7[6];
    v50 = v15;
    v16 = a7[1];
    v43 = *a7;
    v44 = v16;
    v17 = a7[3];
    v45 = a7[2];
    v46 = v17;
    v18 = *a1;
    v19 = a1[1];
    v20 = a1[3];
    v53 = a1[2];
    v54 = v20;
    v51 = v18;
    v52 = v19;
    v21 = a1[4];
    v22 = a1[5];
    v23 = a1[7];
    v57 = a1[6];
    v58 = v23;
    v55 = v21;
    v56 = v22;
    if (qword_1EB2B2C28 != -1)
    {
      swift_once();
    }

    v24 = sub_1A7E22060();
    sub_1A7B0CB00(v24, qword_1EB2B2C30);

    v25 = sub_1A7E22040();
    v26 = sub_1A7E228F0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      v28 = a2;
      v29 = aBlock[0];
      *v27 = 136315138;
      *(v27 + 4) = sub_1A7B0CB38(*(a3 + 16), *(a3 + 24), aBlock);
      _os_log_impl(&dword_1A7AD9000, v25, v26, "Start connecting relay link %s", v27, 0xCu);
      sub_1A7B0CD6C(v29);
      v30 = v29;
      a2 = v28;
      MEMORY[0x1AC5654B0](v30, -1, -1);
      MEMORY[0x1AC5654B0](v27, -1, -1);
    }

    v31 = swift_allocObject();
    v32 = v48;
    *(v31 + 80) = v47;
    *(v31 + 96) = v32;
    v33 = v50;
    *(v31 + 112) = v49;
    *(v31 + 128) = v33;
    v34 = v44;
    *(v31 + 16) = v43;
    *(v31 + 32) = v34;
    v35 = v46;
    *(v31 + 48) = v45;
    *(v31 + 64) = v35;
    v36 = v54;
    *(v31 + 176) = v53;
    *(v31 + 192) = v36;
    v37 = v52;
    *(v31 + 144) = v51;
    *(v31 + 160) = v37;
    v38 = v58;
    *(v31 + 240) = v57;
    *(v31 + 256) = v38;
    v39 = v56;
    *(v31 + 208) = v55;
    *(v31 + 224) = v39;
    *(v31 + 272) = a2;
    *(v31 + 280) = a3;
    *(v31 + 288) = a4;
    *(v31 + 296) = a5;
    *(v31 + 304) = a6;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1A7DCEADC;
    *(v40 + 24) = v31;
    aBlock[4] = sub_1A7DCF320;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A7DBB524;
    aBlock[3] = &unk_1F1AB7F08;
    v41 = _Block_copy(aBlock);

    IDSTransportThreadAddBlock(v41);
    _Block_release(v41);
  }
}

void sub_1A7DCCD68(__int128 *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v126 = a1;
  v156 = *MEMORY[0x1E69E9840];
  v8 = sub_1A7CC7FFC(&qword_1EB2B63F0, &qword_1A7E49D48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v117[-v9];
  v12 = *a2;
  v11 = a2[1];
  v13 = *a2;
  v127 = a2[2];
  v14 = sub_1A7CE0528(v13, &v151);
  v15 = v151;
  v124 = a4;
  if (!v151)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  *&v151 = 13160;
  *(&v151 + 1) = 0xE200000000000000;
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v151;
  v16 = sub_1A7DB1A5C(sub_1A7CF67EC, &v117[-32], v15);

  v122 = v4;
  v125 = a3;
  if (v16)
  {
    goto LABEL_7;
  }

  v17 = sub_1A7CE0528(v12, &v151);
  v18 = v151;
  if (!v151)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  *&v151 = 7365749;
  *(&v151 + 1) = 0xE300000000000000;
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v151;
  v19 = sub_1A7DB1A5C(sub_1A7CF680C, &v117[-32], v18);

  if (v19)
  {
LABEL_7:
    v20 = 4;
    v21 = 2;
  }

  else
  {
    v74 = sub_1A7CE0528(v12, &v151);
    v75 = v151;
    if (!v151)
    {
      v75 = MEMORY[0x1E69E7CC0];
    }

    *&v151 = 12904;
    *(&v151 + 1) = 0xE200000000000000;
    MEMORY[0x1EEE9AC00](v74);
    v116 = &v151;
    v76 = sub_1A7DB1A5C(sub_1A7CF680C, &v117[-32], v75);

    if (v76)
    {
      v20 = 768;
      v21 = 3;
    }

    else
    {
      v104 = sub_1A7CE0528(v12, &v151);
      v105 = v151;
      if (!v151)
      {
        v105 = MEMORY[0x1E69E7CC0];
      }

      *&v151 = 7365492;
      *(&v151 + 1) = 0xE300000000000000;
      MEMORY[0x1EEE9AC00](v104);
      v116 = &v151;
      v106 = sub_1A7DB1A5C(sub_1A7CF680C, &v117[-32], v105);

      if (v106)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      if (v106)
      {
        v20 = 768;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  v22 = &v136;
  sub_1A7CE0318(v11, &v151);
  v123 = v12;
  if (*(&v152 + 1))
  {
    sub_1A7CC99E0(&v151, &v146);
    sub_1A7CE23DC(&v151);
    sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
    v23 = sub_1A7E220D0();
    v24 = swift_dynamicCast();
    (*(*(v23 - 8) + 56))(v10, v24 ^ 1u, 1, v23);
  }

  else
  {
    sub_1A7CC9970(&v151, &qword_1EB2B5030, &unk_1A7E52250);
    v23 = sub_1A7E220D0();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  }

  sub_1A7E220D0();
  v25 = (*(*(v23 - 8) + 48))(v10, 1, v23);
  sub_1A7CC9970(v10, &qword_1EB2B63F0, &qword_1A7E49D48);
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = v20 | v26;
  *&v151 = v11;
  v28 = LinkEndpoint.isCellular.getter();
  LocalMTU = GLUtilGetLocalMTU(v27 | 0x20u, v28 & 1);
  sub_1A7CE072C(v11, &v129);
  if (v130)
  {
    v30 = 0;
  }

  else
  {
    v30 = v129;
  }

  sub_1A7CE03D4(v11, &v146);
  v154 = v149;
  v155 = v150;
  v152 = v147;
  v153 = v148;
  v151 = v146;
  if (!*(&v150 + 1) || (v31 = v152, v32 = BYTE8(v152), sub_1A7CC9970(&v151, &qword_1EB2B5038, &unk_1A7E431C0), (v32 & 1) != 0))
  {
    v31 = -1;
    goto LABEL_22;
  }

  if (v31 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_133;
  }

  if (v31 > 0x7FFFFFFF)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_22:
  v33 = objc_allocWithZone(IDSStunCandidate);
  v10 = &selRef_hasAllocbindResponse;
  v34 = [v33 initWithType:3 transport:v21 radioAccessTechnology:v30 mtu:LocalMTU index:v31 address:v125 external:?];
  if (!v34)
  {
    __break(1u);
LABEL_139:
    __break(1u);
  }

  v32 = v34;
  sub_1A7CE03D4(v11, &v141);
  v146 = v141;
  v147 = v142;
  v148 = v143;
  v149 = v144;
  v150 = v145;
  if (*(&v145 + 1) && (v35 = *(&v146 + 1), , sub_1A7CC9970(&v146, &qword_1EB2B5038, &unk_1A7E431C0), v35))
  {
    v36 = sub_1A7E22260();
  }

  else
  {
    v36 = 0;
  }

  [v32 setInterfaceName_];

  sub_1A7CE03D4(v11, &v136);
  v144 = v139;
  v145 = v140;
  v142 = v137;
  v143 = v138;
  v141 = v136;
  if (*(&v140 + 1))
  {
    v37 = v144;
    v38 = BYTE8(v144);
    sub_1A7CC9970(&v141, &qword_1EB2B5038, &unk_1A7E431C0);
    if ((v38 & 1) == 0)
    {
      if (v37 >= 0xFFFFFFFF80000000)
      {
        if (v37 <= 0x7FFFFFFF)
        {
          goto LABEL_32;
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }
  }

  v37 = 0;
LABEL_32:
  [v32 setDelegatedIndex_];
  sub_1A7CE03D4(v11, &v131);
  v139 = v134;
  v140 = v135;
  v138 = v133;
  v136 = v131;
  v137 = v132;
  if (*(&v135 + 1) && (v39 = *(&v138 + 1), , sub_1A7CC9970(&v136, &qword_1EB2B5038, &unk_1A7E431C0), v39))
  {
    v40 = sub_1A7E22260();
  }

  else
  {
    v40 = 0;
  }

  [v32 setDelegatedInterfaceName_];

  sub_1A7CE0668(v11, &v131);
  [v32 setIsNAT64_];
  v41 = 1280 - GLUtilGetLinkOverhead(v20 | 0x1Au);
  if ((v41 & 0xFFFF0000) != 0)
  {
    goto LABEL_136;
  }

  v42 = objc_allocWithZone(IDSStunCandidate);
  v43 = [v42 initWithType:3 transport:v21 radioAccessTechnology:9 mtu:v41 index:0xFFFFFFFFLL address:0 external:v124];
  if (!v43)
  {
    goto LABEL_139;
  }

  v10 = v43;
  v44 = v127;
  sub_1A7CE0668(v127, &v131);
  v22 = v126;
  if (v131 != 2 && (v131 & 1) != 0)
  {
    [v10 setIsNAT64_];
  }

  sub_1A7CE0720(v44, &v131);
  if (v131 == 2 || (v131 & 1) == 0)
  {
    v47 = 0;
LABEL_50:
    v55 = 0;
    goto LABEL_51;
  }

  v45 = sub_1A7DCEB68(v22);
  if (!v45)
  {
    [v10 setIsRealloc_];
    v47 = 0;
    goto LABEL_126;
  }

  v47 = *(v45 + 16);
  v46 = *(v45 + 24);

  [v10 setIsRealloc_];
  if (!v46)
  {
LABEL_126:
    if (qword_1EB2B2C28 != -1)
    {
      swift_once();
    }

    v107 = sub_1A7E22060();
    sub_1A7B0CB00(v107, qword_1EB2B2C30);

    v108 = sub_1A7E22040();
    v109 = sub_1A7E228E0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v121 = v10;
      v111 = v110;
      v112 = swift_slowAlloc();
      v120 = v47;
      v113 = v112;
      *&v131 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_1A7B0CB38(*(v22 + 2), *(v22 + 3), &v131);
      _os_log_impl(&dword_1A7AD9000, v108, v109, "is realloc but no original link found for %s", v111, 0xCu);
      sub_1A7B0CD6C(v113);
      v114 = v113;
      v47 = v120;
      MEMORY[0x1AC5654B0](v114, -1, -1);
      v115 = v111;
      v10 = v121;
      MEMORY[0x1AC5654B0](v115, -1, -1);
    }

    goto LABEL_50;
  }

  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v48 = sub_1A7E22060();
  sub_1A7B0CB00(v48, qword_1EB2B2C30);

  v49 = sub_1A7E22040();
  v50 = sub_1A7E228F0();

  v124 = v46;

  v118 = v50;
  v119 = v49;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v121 = v10;
    v52 = v51;
    v53 = swift_slowAlloc();
    v120 = v47;
    v54 = v53;
    *&v131 = v53;
    *v52 = 136315394;
    v55 = v124;

    v56 = sub_1A7B0CB38(v120, v55, &v131);

    *(v52 + 4) = v56;
    v22 = v126;
    v44 = v127;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_1A7B0CB38(*(v22 + 2), *(v22 + 3), &v131);
    v57 = v119;
    _os_log_impl(&dword_1A7AD9000, v119, v118, "replacing link %s with %s", v52, 0x16u);
    swift_arrayDestroy();
    v58 = v54;
    v47 = v120;
    MEMORY[0x1AC5654B0](v58, -1, -1);
    v59 = v52;
    v10 = v121;
    MEMORY[0x1AC5654B0](v59, -1, -1);
  }

  else
  {

    v55 = v124;
  }

LABEL_51:
  sub_1A7CE0874(v11, &v131);
  if ((BYTE1(v132) & 1) == 0 && (v132 & 1) == 0)
  {
    [v32 setPrefix_];
  }

  sub_1A7CE07D8(v44, &v131);
  v60 = *(&v132 + 1);
  if (!*(&v132 + 1))
  {

    goto LABEL_103;
  }

  v61 = v123;
  v124 = v55;
  v125 = v32;
  v63 = *(&v131 + 1);
  v62 = v132;
  v64 = v131;

  v127 = v64;
  sub_1A7D25988(v64, v63, v62, v60);
  if (!v63)
  {

    v32 = v125;
    v22 = v126;
LABEL_103:
    if (qword_1EB2B2C28 == -1)
    {
LABEL_104:
      v77 = sub_1A7E22060();
      sub_1A7B0CB00(v77, qword_1EB2B2C30);

      v78 = sub_1A7E22040();
      v79 = sub_1A7E228E0();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = v10;
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v131 = v82;
        *v81 = 136315138;
        *(v81 + 4) = sub_1A7B0CB38(*(v22 + 2), *(v22 + 3), &v131);
        _os_log_impl(&dword_1A7AD9000, v78, v79, "No relay session ID on relay link with id %s", v81, 0xCu);
        sub_1A7B0CD6C(v82);
        MEMORY[0x1AC5654B0](v82, -1, -1);
        MEMORY[0x1AC5654B0](v81, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_137:
    swift_once();
    goto LABEL_104;
  }

  v120 = v47;
  v121 = v10;
  sub_1A7CE0528(v61, &v131);
  v65 = v131;
  if (!v131)
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);
  v123 = v65;
  v67 = 0;
  if (v66)
  {
    v68 = (v65 + 40);
    v69 = v63;
    do
    {
      v71 = *(v68 - 1);
      v70 = *v68;
      v72 = v71 == 13160 && v70 == 0xE200000000000000;
      if (v72 || (sub_1A7E230D0() & 1) != 0)
      {
        v67 |= 0x11uLL;
      }

      else
      {
        v73 = v71 == 12904 && v70 == 0xE200000000000000;
        if (v73 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 0x22uLL;
        }

        else if (v71 == 7365749 && v70 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 1uLL;
        }

        else if (v71 == 7365492 && v70 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 2uLL;
        }

        else if (v71 == 0x736C742D656B6166 && v70 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 0x32uLL;
        }

        else if (v71 == 0x7032702D736469 && v70 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 0x300uLL;
        }

        else if (v71 == 0x72762D736469 && v70 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 0x200uLL;
        }

        else if (v71 == 0x616C65722D736469 && v70 == 0xE900000000000079 || (sub_1A7E230D0() & 1) != 0)
        {
          v67 |= 0x100uLL;
        }
      }

      v68 += 2;
      --v66;
    }

    while (v66);
  }

  else
  {
    v69 = v63;
  }

  if (qword_1EB2B2C28 != -1)
  {
    swift_once();
  }

  v83 = sub_1A7E22060();
  sub_1A7B0CB00(v83, qword_1EB2B2C30);
  v84 = v126;

  v85 = v125;
  v86 = v121;
  v87 = sub_1A7E22040();
  v88 = sub_1A7E228F0();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v131 = v123;
    *v89 = 136316162;
    *(v89 + 4) = sub_1A7B0CB38(*(v84 + 2), *(v84 + 3), &v131);
    *(v89 + 12) = 2080;
    v128 = v67;
    type metadata accessor for IDSGLLinkNetworkProtocol(0);
    v91 = sub_1A7E222F0();
    v93 = sub_1A7B0CB38(v91, v92, &v131);
    LODWORD(v119) = v88;
    v94 = v93;

    *(v89 + 14) = v94;
    v95 = v127;
    *(v89 + 22) = 2080;
    *(v89 + 24) = sub_1A7B0CB38(v95, v69, &v131);
    *(v89 + 32) = 2112;
    *(v89 + 34) = v85;
    *(v89 + 42) = 2112;
    *(v89 + 44) = v86;
    v96 = v121;
    *v90 = v125;
    v90[1] = v96;
    v97 = v85;
    v98 = v86;
    _os_log_impl(&dword_1A7AD9000, v87, v119, "... calling underlying connector to connect relay link %s over %s for relySessionID %s from %@ to %@", v89, 0x34u);
    sub_1A7CC7FFC(&qword_1EB2B57A0, qword_1A7E45740);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v90, -1, -1);
    v99 = v123;
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v99, -1, -1);
    MEMORY[0x1AC5654B0](v89, -1, -1);
  }

  v100 = *(v122 + 16);
  v101 = sub_1A7E22260();
  v102 = sub_1A7E22260();

  if (v124)
  {
    v103 = sub_1A7E22260();
  }

  else
  {
    v103 = 0;
  }

  [v100 connectRelayLinkFromCandidate:v85 toCandidate:v86 withUniqueID:v101 relaySessionID:v102 glLinkProtocol:v67 replacesLinkWithUniqueID:v103];
}

uint64_t IDSGLDefaultLinkConnector.startDisconnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  result = LinkEngineLink.definition.getter(&v11);
  v5 = v11;
  if (v11)
  {
    v7 = v12;
    v6 = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    LinkDefinition.idsLinkType.getter(&v17);
    if (!v17)
    {
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = a1;
      v8[4] = v5;
      v8[5] = v7;
      v8[6] = v6;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1A7DCE968;
      *(v9 + 24) = v8;
      v15 = sub_1A7DCE974;
      v16 = v9;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1A7DBB524;
      v14 = &unk_1F1AB7D00;
      v10 = _Block_copy(&v11);

      sub_1A7CDB7B8(v5, v7, v6);

      IDSTransportThreadAddBlock(v10);
      _Block_release(v10);
    }

    return sub_1A7CDB84C(v5, v7, v6);
  }

  return result;
}

uint64_t IDSGLDefaultLinkConnector.startReconnectingLink(_:)(uint64_t a1)
{
  v2 = v1;
  result = LinkEngineLink.definition.getter(&v11);
  v5 = v11;
  if (v11)
  {
    v7 = v12;
    v6 = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    LinkDefinition.idsLinkType.getter(&v17);
    if (!v17)
    {
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = a1;
      v8[4] = v5;
      v8[5] = v7;
      v8[6] = v6;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1A7DCE9EC;
      *(v9 + 24) = v8;
      v15 = sub_1A7DCF320;
      v16 = v9;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1A7DBB524;
      v14 = &unk_1F1AB7D78;
      v10 = _Block_copy(&v11);

      sub_1A7CDB7B8(v5, v7, v6);

      IDSTransportThreadAddBlock(v10);
      _Block_release(v10);
    }

    return sub_1A7CDB84C(v5, v7, v6);
  }

  return result;
}

void sub_1A7DCE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v15 = *(a1 + 16);
  v17 = sub_1A7E22260();
  sub_1A7CE0528(a3, &v18);
  if (v18)
  {
    v7 = v18;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = v11 == 13160 && v12 == 0xE200000000000000;
      if (v13 || (sub_1A7E230D0() & 1) != 0)
      {
        v9 |= 0x11uLL;
      }

      else
      {
        v14 = v11 == 12904 && v12 == 0xE200000000000000;
        if (v14 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x22uLL;
        }

        else if (v11 == 7365749 && v12 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 1uLL;
        }

        else if (v11 == 7365492 && v12 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 2uLL;
        }

        else if (v11 == 0x736C742D656B6166 && v12 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x32uLL;
        }

        else if (v11 == 0x7032702D736469 && v12 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x300uLL;
        }

        else if (v11 == 0x72762D736469 && v12 == 0xE600000000000000 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x200uLL;
        }

        else if (v11 == 0x616C65722D736469 && v12 == 0xE900000000000079 || (sub_1A7E230D0() & 1) != 0)
        {
          v9 |= 0x100uLL;
        }
      }

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [v15 *a6];
}

double IDSGLDefaultLinkConnector.removeLink(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7DCEA20;
  *(v5 + 24) = v4;
  v8[4] = sub_1A7DCF320;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A7DBB524;
  v8[3] = &unk_1F1AB7DF0;
  v6 = _Block_copy(v8);

  IDSTransportThreadAddBlock(v6);
  _Block_release(v6);

  return result;
}

void sub_1A7DCE760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = sub_1A7E22260();
  [v2 linkEngineDidRemoveLinkWithUniqueID_];
}

uint64_t IDSGLDefaultLinkConnector.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1A7DCE820(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7DCF30C;
  *(v5 + 24) = v4;
  v8[4] = sub_1A7DCF320;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A7DBB524;
  v8[3] = &unk_1F1AB7E90;
  v6 = _Block_copy(v8);

  IDSTransportThreadAddBlock(v6);
  _Block_release(v6);

  return result;
}

uint64_t sub_1A7DCE97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7DCE994()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A7DCEA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A7DCEADC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 304);
  v3 = *(v0 + 96);
  v14[4] = *(v0 + 80);
  v14[5] = v3;
  v4 = *(v0 + 128);
  v14[6] = *(v0 + 112);
  v14[7] = v4;
  v5 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v5;
  v6 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v6;
  v7 = *(v0 + 224);
  v13[4] = *(v0 + 208);
  v13[5] = v7;
  v8 = *(v0 + 256);
  v13[6] = *(v0 + 240);
  v13[7] = v8;
  v9 = *(v0 + 160);
  v13[0] = *(v0 + 144);
  v13[1] = v9;
  v10 = *(v0 + 192);
  v13[2] = *(v0 + 176);
  v13[3] = v10;
  v11 = *(v0 + 288);
  v12 = v2;
  sub_1A7DCCD68(v1, &v11, v14, v13);
}

uint64_t sub_1A7DCEB68(uint64_t a1)
{
  v2 = a1;
  sub_1A7DCF24C(a1 + 32, &v54);
  Strong = swift_weakLoadStrong();
  sub_1A7DCF2A8(&v54);
  if (!Strong)
  {
    return 0;
  }

  os_unfair_lock_lock((Strong + 16));
  v4 = *(Strong + 24);

  os_unfair_lock_unlock((Strong + 16));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_12:
    v1 = *(*(v4 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v1 + 40));
    v11 = *(v1 + 48);
    if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v13 & 1) != 0))
    {
      sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v54);
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v1 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      LOBYTE(v52) = 2;
      goto LABEL_6;
    }

    if (v52 == 2 || (v52 & 1) == 0)
    {
LABEL_6:
    }

    else
    {
      os_unfair_lock_lock((v2 + 40));
      v14 = *(v2 + 48);
      if (*(v14 + 16) && (v15 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v16 & 1) != 0))
      {
        sub_1A7B0CD10(*(v14 + 56) + 32 * v15, &v54);
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      os_unfair_lock_unlock((v2 + 40));
      if ((swift_dynamicCast() & 1) == 0)
      {
        v52 = 1uLL;
        v53 = 0;
LABEL_30:

        goto LABEL_31;
      }

      if (v52 == 1)
      {
        goto LABEL_30;
      }

      v49 = v2;
      v18 = *(&v52 + 1);
      v50 = v52;
      v17 = v53;
      sub_1A7CDB7B8(v52, *(&v52 + 1), v53);
      v48 = v18;
      sub_1A7CDBC48(v50, v18, v17);
      if (v50)
      {
        v47 = v17;
        os_unfair_lock_lock((v1 + 40));
        v19 = *(v1 + 48);
        v2 = v49;
        if (*(v19 + 16) && (v20 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v21 & 1) != 0))
        {
          sub_1A7B0CD10(*(v19 + 56) + 32 * v20, &v54);
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        os_unfair_lock_unlock((v1 + 40));
        if ((swift_dynamicCast() & 1) == 0)
        {
          v52 = 1uLL;
          v53 = 0;
          goto LABEL_43;
        }

        if (v52 == 1)
        {
LABEL_43:

          sub_1A7CDB84C(v50, v48, v47);
LABEL_31:
          sub_1A7CDBC48(v52, *(&v52 + 1), v53);
        }

        else
        {
          v22 = *(&v52 + 1);
          v23 = v53;
          v46 = v52;
          sub_1A7CDB7B8(v52, *(&v52 + 1), v53);
          v44 = v22;
          v45 = v23;
          sub_1A7CDBC48(v46, v22, v23);
          if (v46)
          {
            if (*(v47 + 16) && (v24 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID), (v25 & 1) != 0) && (sub_1A7B0CD10(*(v47 + 56) + 32 * v24, &v52), sub_1A7B1503C(&v52, v51), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) != 0) && (v26 = *(&v55 + 1)) != 0)
            {
              v27 = *(&v54 + 1);
              v39 = v55;
              v41 = v54;

              sub_1A7D25988(v41, v27, v39, v26);
            }

            else
            {
              v41 = 0;
              v27 = 0;
            }

            v28 = v45;
            if (!*(v45 + 16))
            {
              goto LABEL_56;
            }

            v29 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID);
            v28 = v45;
            if ((v30 & 1) == 0)
            {
              goto LABEL_56;
            }

            sub_1A7B0CD10(*(v45 + 56) + 32 * v29, &v52);
            sub_1A7B1503C(&v52, v51);
            sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v28 = v45;
LABEL_56:
              if (!v27)
              {
                goto LABEL_61;
              }

              goto LABEL_57;
            }

            v28 = v45;
            if (!*(&v55 + 1))
            {
              goto LABEL_56;
            }

            v31 = *(&v54 + 1);
            v36 = *(&v55 + 1);
            v37 = v55;
            v40 = v54;

            sub_1A7D25988(v40, v31, v37, v36);
            if (!v27)
            {
              if (v31)
              {
                sub_1A7CDB84C(v46, v44, v45);
                sub_1A7CDB84C(v50, v48, v47);

                goto LABEL_6;
              }

LABEL_61:
              *&v54 = v48;
              v32 = LinkEndpoint.uniqueID.getter();
              v43 = v33;
              *&v52 = v44;
              if (v32 == LinkEndpoint.uniqueID.getter() && v43 == v34)
              {
                goto LABEL_70;
              }

              v38 = sub_1A7E230D0();

              sub_1A7CDB84C(v46, v44, v45);
              sub_1A7CDB84C(v50, v48, v47);

              if (v38)
              {

                return v1;
              }

              goto LABEL_6;
            }

            v28 = v45;
            if (v31)
            {
              if (v41 == v40 && v27 == v31)
              {
              }

              else
              {
                v42 = sub_1A7E230D0();

                if ((v42 & 1) == 0)
                {
                  sub_1A7CDB84C(v46, v44, v45);
                  sub_1A7CDB84C(v50, v48, v47);
                  goto LABEL_6;
                }
              }

              goto LABEL_61;
            }

LABEL_57:
            sub_1A7CDB84C(v46, v44, v28);
            sub_1A7CDB84C(v50, v48, v47);
          }

          else
          {

            sub_1A7CDB84C(v50, v48, v47);
          }
        }
      }

      else
      {

        v2 = v49;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_70:

  sub_1A7CDB84C(v46, v44, v45);
  sub_1A7CDB84C(v50, v48, v47);

  return v1;
}

uint64_t type metadata accessor for IDSToolPacketLogDumpCommand(uint64_t a1)
{
  result = qword_1EB2B7828;
  if (!qword_1EB2B7828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7DCF398()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC328);
  sub_1A7B0CB00(v3, qword_1EB2DC328);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7DCF4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6944746C75736572 && a2 == 0xEF79726F74636572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DCF580(uint64_t a1)
{
  v2 = sub_1A7DD1008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DCF5BC(uint64_t a1)
{
  v2 = sub_1A7DD1008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DCF5F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7898, &qword_1A7E52650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1008();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v9 = sub_1A7E22EF0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1A7B0CD6C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A7DCF774(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7888, &qword_1A7E52648);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1008();
  sub_1A7E23260();
  sub_1A7E22FF0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A7DCF8B0()
{
  v1[12] = v0;
  sub_1A7CC7FFC(&qword_1EB2B6DF8, &qword_1A7E4D9B0);
  v1[13] = swift_task_alloc();
  v2 = sub_1A7E21850();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_1A7E21940();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  type metadata accessor for IDSToolRequest(0);
  v1[20] = swift_task_alloc();
  type metadata accessor for IDSToolOptions(0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DCFA68, 0, 0);
}

uint64_t sub_1A7DCFA68()
{
  *(v0 + 184) = sub_1A7CC7FFC(&qword_1EB2B5A40, &unk_1A7E4F310);
  sub_1A7E21DC0();
  *(v0 + 192) = sub_1A7CC7FFC(&qword_1EB2B5A88, &qword_1A7E4F430);
  sub_1A7E21FC0();
  v1 = nullsub_15;
  if (!*(v0 + 73))
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4720 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*(v0 + 73) == 1)
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4728 != -1)
    {
LABEL_9:
      swift_once();
      v1 = sub_1A7D2B464;
    }
  }

LABEL_6:
  v2 = v1;
  sub_1A7DD0DB4(*(v0 + 176), type metadata accessor for IDSToolOptions);
  *(v0 + 40) = &type metadata for CLIDefaultPrinter;
  *(v0 + 48) = &protocol witness table for CLIDefaultPrinter;
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  sub_1A7CC9878((v0 + 16), &type metadata for CLIDefaultPrinter);
  v4._object = 0x80000001A7EB14D0;
  v4._countAndFlagsBits = 0xD000000000000021;
  CLIPrinter.print(_:)(v4);
  *v3 = 0;
  type metadata accessor for IDSToolRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1A7DCFC8C;
  v6 = *(v0 + 160);

  return idsToolInvoke(request:)(v0 + 56, v6);
}

uint64_t sub_1A7DCFC8C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  sub_1A7DD0DB4(*(v2 + 160), type metadata accessor for IDSToolRequest);
  if (v0)
  {
    v3 = sub_1A7DD046C;
  }

  else
  {
    v3 = sub_1A7DCFDD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7DCFDD4()
{
  v1 = *(v0 + 64);
  *(v0 + 216) = *(v0 + 56);
  *(v0 + 224) = v1;
  if (*(v0 + 72))
  {
    if (v1)
    {
      sub_1A7CC9878((v0 + 16), *(v0 + 40));
      v2._object = 0x80000001A7EB1500;
      v2._countAndFlagsBits = 0xD00000000000002CLL;
      CLIPrinter.print(_:)(v2);
      if (qword_1EB2B2DB0 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 144);
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      v8 = *(v0 + 104);
      v9 = qword_1EB2DC088;
      *(v0 + 232) = qword_1EB2DC088;
      (*(v7 + 104))(v5, *MEMORY[0x1E6968F58], v6);
      (*(v3 + 56))(v8, 1, 1, v4);

      sub_1A7E21900();

      return MEMORY[0x1EEE6DFA0](sub_1A7DD001C, v9, 0);
    }
  }

  else
  {
    sub_1A7D3B848();
  }

  sub_1A7DD0CB8();
  swift_allocError();
  swift_willThrow();
  sub_1A7B0CD6C((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A7DD001C()
{
  v1 = v0[26];
  sub_1A7D05EC0(v0[19], v0 + 2);
  v0[30] = v1;
  (*(v0[18] + 8))(v0[19], v0[17]);
  if (v1)
  {
    sub_1A7D3B848();
    v2 = sub_1A7DD0528;
  }

  else
  {
    v2 = sub_1A7DD00F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DD00F4()
{
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  MEMORY[0x1AC561C90](0x737365636F72702FLL, 0xEB000000002F6465);
  sub_1A7CC9878((v0 + 16), *(v0 + 40));
  sub_1A7E22B70();

  MEMORY[0x1AC561C90](v10, v11);
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001A7EB1530;
  CLIPrinter.print(_:)(v1);

  sub_1A7E21DC0();
  sub_1A7E21FC0();
  if (!*(v0 + 74))
  {

    v2 = qword_1EB2B4720;
    goto LABEL_5;
  }

  if (*(v0 + 74) == 1)
  {

    v2 = qword_1EB2B4728;
LABEL_5:
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1A7DD0DB4(*(v0 + 168), type metadata accessor for IDSToolOptions);
    goto LABEL_8;
  }

  v4 = *(v0 + 240);
  sub_1A7DD0DB4(*(v0 + 168), type metadata accessor for IDSToolOptions);
  sub_1A7CC7FFC(&qword_1EB2B5CF8, &qword_1A7E523D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  sub_1A7E21600();
  swift_allocObject();
  sub_1A7E215F0();
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  sub_1A7DD0D0C();
  v6 = sub_1A7E215E0();
  v8 = v7;

  if (!v4)
  {
    *(v5 + 56) = MEMORY[0x1E6969080];
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1A7E231D0();

LABEL_8:
    sub_1A7B0CD6C((v0 + 16));

    v3 = *(v0 + 8);
    goto LABEL_11;
  }

  *(v5 + 16) = 0;

  sub_1A7B0CD6C((v0 + 16));

  v3 = *(v0 + 8);
LABEL_11:

  return v3();
}

uint64_t sub_1A7DD046C()
{
  sub_1A7B0CD6C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DD0528()
{
  sub_1A7B0CD6C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DD05E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5A40, &unk_1A7E4F310);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7858, &qword_1A7E523D8);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for IDSToolPacketLogDumpCommand(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions(0);
  sub_1A7DD0C70(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions, &unk_1A7E4ABC8);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD0D60();
  v13 = v20;
  sub_1A7E23250();
  if (!v13)
  {
    v14 = v18;
    sub_1A7DA2CD4();
    sub_1A7E22F30();
    (*(v19 + 8))(v8, v6);
    (*(v14 + 40))(v12, v5, v3);
    sub_1A7DD0E14(v12, v17);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7DD0DB4(v12, type metadata accessor for IDSToolPacketLogDumpCommand);
}

uint64_t sub_1A7DD0900(uint64_t a1)
{
  v2 = sub_1A7DD0D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD093C(uint64_t a1)
{
  v2 = sub_1A7DD0D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD0978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7DCF8B0();
}

uint64_t sub_1A7DD0A04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4880 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E21F80();
  v4 = sub_1A7B0CB00(v3, qword_1EB2DC328);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1A7DD0AAC(double a1)
{
  v1 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions(0);
  sub_1A7DD0C70(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions, &unk_1A7E4ABC8);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7DD0C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A7DD0CB8()
{
  result = qword_1EB2B7848;
  if (!qword_1EB2B7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7848);
  }

  return result;
}

unint64_t sub_1A7DD0D0C()
{
  result = qword_1EB2B7850;
  if (!qword_1EB2B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7850);
  }

  return result;
}

unint64_t sub_1A7DD0D60()
{
  result = qword_1EB2B7860;
  if (!qword_1EB2B7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7860);
  }

  return result;
}

uint64_t sub_1A7DD0DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7DD0E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolPacketLogDumpCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7DD0EAC()
{
  result = qword_1EB2B7868;
  if (!qword_1EB2B7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7868);
  }

  return result;
}

unint64_t sub_1A7DD0F04()
{
  result = qword_1EB2B7870;
  if (!qword_1EB2B7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7870);
  }

  return result;
}

unint64_t sub_1A7DD0F5C()
{
  result = qword_1EB2B7878;
  if (!qword_1EB2B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7878);
  }

  return result;
}

unint64_t sub_1A7DD0FB4()
{
  result = qword_1EB2B7880;
  if (!qword_1EB2B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7880);
  }

  return result;
}

unint64_t sub_1A7DD1008()
{
  result = qword_1EB2B7890;
  if (!qword_1EB2B7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7890);
  }

  return result;
}

unint64_t sub_1A7DD1070()
{
  result = qword_1EB2B78A0;
  if (!qword_1EB2B78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78A0);
  }

  return result;
}

unint64_t sub_1A7DD10C8()
{
  result = qword_1EB2B78A8;
  if (!qword_1EB2B78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78A8);
  }

  return result;
}

unint64_t sub_1A7DD1120()
{
  result = qword_1EB2B78B0;
  if (!qword_1EB2B78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78B0);
  }

  return result;
}

uint64_t sub_1A7DD1174(uint64_t a1)
{
  v2 = sub_1A7DD17E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD11B0(uint64_t a1)
{
  v2 = sub_1A7DD17E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD11EC()
{
  if (*v0)
  {
    return 0x64657261656C63;
  }

  else
  {
    return 1886221668;
  }
}

uint64_t sub_1A7DD1220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1886221668 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657261656C63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DD12FC(uint64_t a1)
{
  v2 = sub_1A7DD1790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD1338(uint64_t a1)
{
  v2 = sub_1A7DD1790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD1390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646C6F46706D74 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DD1420(uint64_t a1)
{
  v2 = sub_1A7DD1838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD145C(uint64_t a1)
{
  v2 = sub_1A7DD1838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolPacketLogResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B78B8, &qword_1A7E52760);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B78C0, &qword_1A7E52768);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B78C8, &qword_1A7E52770);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD1790();
  sub_1A7E23260();
  if (v12)
  {
    v23 = 0;
    sub_1A7DD1838();
    sub_1A7E22F80();
    v13 = v22;
    sub_1A7E22FF0();
    (*(v21 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_1A7DD17E4();
    v15 = v17;
    sub_1A7E22F80();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A7DD1790()
{
  result = qword_1EB2B78D0;
  if (!qword_1EB2B78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78D0);
  }

  return result;
}

unint64_t sub_1A7DD17E4()
{
  result = qword_1EB2B78D8;
  if (!qword_1EB2B78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78D8);
  }

  return result;
}

unint64_t sub_1A7DD1838()
{
  result = qword_1EB2B78E0;
  if (!qword_1EB2B78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B78E0);
  }

  return result;
}

uint64_t IDSToolPacketLogResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B78E8, &qword_1A7E52778);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B78F0, &qword_1A7E52780);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B78F8, &unk_1A7E52788);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v35 = a1;
  sub_1A7CC9878(a1, v14);
  sub_1A7DD1790();
  v15 = v34;
  sub_1A7E23250();
  if (v15)
  {
    return sub_1A7B0CD6C(v35);
  }

  v34 = v11;
  v16 = sub_1A7E22F70();
  v17 = (2 * *(v16 + 16)) | 1;
  v36 = v16;
  v37 = v16 + 32;
  v38 = 0;
  v39 = v17;
  v18 = sub_1A7CDB538();
  v19 = v10;
  if (v18 == 2 || v38 != v39 >> 1)
  {
    v22 = sub_1A7E22BD0();
    swift_allocError();
    v24 = v23;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v24 = &type metadata for IDSToolPacketLogResponse;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v34 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v35);
  }

  if (v18)
  {
    v40 = 1;
    sub_1A7DD17E4();
    sub_1A7E22E70();
    v20 = 0;
    v21 = v34;
    (*(v31 + 8))(v6, v30);
    (*(v21 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v27 = 0;
  }

  else
  {
    v40 = 0;
    sub_1A7DD1838();
    sub_1A7E22E70();
    v26 = v34;
    v20 = sub_1A7E22EF0();
    v27 = v28;
    (*(v32 + 8))(v9, v7);
    (*(v26 + 8))(v13, v19);
    swift_unknownObjectRelease();
  }

  v29 = v33;
  *v33 = v20;
  v29[1] = v27;
  return sub_1A7B0CD6C(v35);
}

uint64_t sub_1A7DD1DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DD1E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A7DD1E70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1A7DD1E88(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A7DD1EEC()
{
  result = qword_1EB2B7900;
  if (!qword_1EB2B7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7900);
  }

  return result;
}

unint64_t sub_1A7DD1F44()
{
  result = qword_1EB2B7908;
  if (!qword_1EB2B7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7908);
  }

  return result;
}

unint64_t sub_1A7DD1F9C()
{
  result = qword_1EB2B7910;
  if (!qword_1EB2B7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7910);
  }

  return result;
}

unint64_t sub_1A7DD1FF4()
{
  result = qword_1EB2B7918;
  if (!qword_1EB2B7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7918);
  }

  return result;
}

unint64_t sub_1A7DD204C()
{
  result = qword_1EB2B7920;
  if (!qword_1EB2B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7920);
  }

  return result;
}

unint64_t sub_1A7DD20A4()
{
  result = qword_1EB2B7928;
  if (!qword_1EB2B7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7928);
  }

  return result;
}

unint64_t sub_1A7DD20FC()
{
  result = qword_1EB2B7930;
  if (!qword_1EB2B7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7930);
  }

  return result;
}

unint64_t sub_1A7DD2154()
{
  result = qword_1EB2B7938;
  if (!qword_1EB2B7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7938);
  }

  return result;
}

void sub_1A7DD21BC(void *a1, char *a2)
{
  v29 = *a2;
  v28 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = *v2;
  sub_1A7CC9878(a1, a1[3]);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v11);
  if (*(v10 + 16))
  {
    if (v9)
    {
      v12 = 0x100000000000000;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0x1000000000000;
    if ((v8 & 1) == 0)
    {
      v13 = 0;
    }

    v14 = 0x10000000000;
    if ((v7 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x100000000;
    if ((v6 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if ((v5 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v4 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 256;
    if ((v28 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFFELL | v29 & 1 | v17 | v16 | v15 | v14 | v13;
    v20 = sub_1A7CF4CB8(v19 | v12);
    v21 = sub_1A7CF5100(v19 | v12, v10);
    v22 = a1[3];
    v23 = a1[4];
    sub_1A7CC9878(a1, v22);
    v30[3] = &type metadata for CLIIndented;
    v30[4] = sub_1A7CF7858();
    v24 = swift_allocObject();
    v30[0] = v24;
    *(v24 + 40) = &type metadata for CLITable;
    v25 = sub_1A7CF78AC();
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = 0;
    *(v24 + 36) = 0;
    *(v24 + 48) = v25;
    *(v24 + 56) = 538976288;
    *(v24 + 64) = 0xE400000000000000;
    CLIPrinter.print(_:)(v30, v22, v23);
    sub_1A7B0CD6C(v30);
  }

  else
  {
    sub_1A7CC9878(a1, a1[3]);
    v26._countAndFlagsBits = 0x6C206F4E20202020;
    v26._object = 0xED00002E736B6E69;
    CLIPrinter.print(_:)(v26);
  }

  sub_1A7CC9878(a1, a1[3]);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v27);
}

uint64_t LinkEngineLink.isPendingRemoval.getter()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBDDC((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  return swift_dynamicCast() & v3;
}

void sub_1A7DD246C(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 10);
  v5 = &type metadata for LinkIsPendingRemoval;
  v4[0] = v2;
  sub_1A7CC8D74(v4, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v3 + 10);
}

void LinkEngineLink.isPendingRemoval.setter(char a1)
{
  v2 = v1;
  os_unfair_lock_lock(v2 + 10);
  v5 = &type metadata for LinkIsPendingRemoval;
  v4[0] = a1;
  sub_1A7CC8D74(v4, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v2 + 10);
}

void (*LinkEngineLink.isPendingRemoval.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  *(a1 + 8) = LinkEngineLink.isPendingRemoval.getter() & 1;
  return sub_1A7DD2588;
}

void sub_1A7DD2588(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 10);
  v4 = &type metadata for LinkIsPendingRemoval;
  v3[0] = v2;
  sub_1A7CC8D74(v3, &type metadata for LinkIsPendingRemoval);

  os_unfair_lock_unlock(v1 + 10);
}

uint64_t LinkDefinition.idsLinkType.getter@<X0>(char *a1@<X8>)
{
  sub_1A7CE0528(*v1, &v16);
  if (v16)
  {
    v3 = v16;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];

    if (v6)
    {
      if (v7 == 0x616C65722D736469 && v6 == 0xE900000000000079)
      {
      }

      else
      {
        v9 = sub_1A7E230D0();

        if ((v9 & 1) == 0)
        {
          if (v7 == 0x72762D736469 && v6 == 0xE600000000000000)
          {
          }

          else
          {
            v11 = sub_1A7E230D0();

            if ((v11 & 1) == 0)
            {
              if (v7 == 0x7032702D736469 && v6 == 0xE700000000000000)
              {

LABEL_31:
                v15 = 2;
                goto LABEL_27;
              }

              v13 = sub_1A7E230D0();

              if (v13)
              {
                goto LABEL_31;
              }

              goto LABEL_24;
            }
          }

          v15 = 1;
          goto LABEL_27;
        }
      }

      v15 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();

LABEL_24:
  v15 = 3;
LABEL_27:
  *a1 = v15;
  return result;
}

uint64_t IDSGLLinkType.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

unint64_t sub_1A7DD2878()
{
  result = qword_1EB2B7940;
  if (!qword_1EB2B7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7940);
  }

  return result;
}

__n128 LinkDefinition.toolRepresentation.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v13[2] = v1[1];
  LinkEndpoint.toolRepresentation.getter(v14);
  v13[1] = v4;
  LinkEndpoint.toolRepresentation.getter(v16);
  sub_1A7CE0528(v3, v13);
  v5 = v13[0];
  if (!v13[0])
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v14[5];
  *(a1 + 64) = v14[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v15;
  v7 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v7;
  v8 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v8;
  v9 = v16[1];
  *(a1 + 104) = v16[0];
  *(a1 + 120) = v9;
  v10 = v16[3];
  *(a1 + 136) = v16[2];
  result = v16[4];
  v12 = v16[5];
  *(a1 + 200) = v17;
  *(a1 + 184) = v12;
  *(a1 + 168) = result;
  *(a1 + 152) = v10;
  *(a1 + 208) = v5;
  return result;
}

uint64_t LinkState.cli.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = LinkState.description.getter();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v10 = 1;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *(a1 + 17) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 2;
        return result;
      }

      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v10 = 4;
    }

    *(a1 + 17) = v10;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v9 = 2;
        *(a1 + 40) = 2;
      }

      else
      {
        *(a1 + 40) = 2;
        v9 = 4;
      }
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      v9 = 6;
    }

    *(a1 + 17) = v9;
    v11 = sub_1A7E22CF0();
    return (*(*(v11 - 8) + 8))(v5, v11);
  }

  return result;
}

uint64_t LinkState.cliSummary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      *a1 = 0x64656C696146;
      *(a1 + 8) = 0xE600000000000000;
      v9 = 256;
    }

    else
    {
      if (result == 4)
      {
        strcpy(a1, "Not Connected");
        *(a1 + 14) = -4864;
        *(a1 + 16) = 0;
LABEL_14:
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 2;
        return result;
      }

      strcpy(a1, "Disconnected");
      *(a1 + 13) = 0;
      *(a1 + 14) = -5120;
      v9 = 1024;
    }

    *(a1 + 16) = v9;
    goto LABEL_14;
  }

  if (result)
  {
    if (result == 1)
    {
      *a1 = 0x657463656E6E6F43;
      *(a1 + 8) = 0xE900000000000064;
      v8 = 512;
    }

    else
    {
      strcpy(a1, "Disconnecting");
      *(a1 + 14) = -4864;
      v8 = 1024;
    }
  }

  else
  {
    *a1 = 0x697463656E6E6F43;
    *(a1 + 8) = 0xEA0000000000676ELL;
    v8 = 1536;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  v10 = sub_1A7E22CF0();
  return (*(*(v10 - 8) + 8))(v6, v10);
}

uint64_t IDSInterfaceType.description.getter()
{
  v1 = 0x6465726957;
  v2 = 0x72616C756C6C6543;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 1766222167;
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

uint64_t IDSRadioAccessTechnology.interfaceType.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == 9)
  {
    v2 = 0;
  }

  if (result == 10)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1A7DD2E14(uint64_t a1)
{
  v2 = sub_1A7DD35E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2E50(uint64_t a1)
{
  v2 = sub_1A7DD35E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD2E8C()
{
  v1 = 0x6465726977;
  v2 = 0x72616C756C6C6563;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 1768319351;
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

uint64_t sub_1A7DD2EFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7DD4348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DD2F24(uint64_t a1)
{
  v2 = sub_1A7DD353C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2F60(uint64_t a1)
{
  v2 = sub_1A7DD353C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD2F9C(uint64_t a1)
{
  v2 = sub_1A7DD3590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD2FD8(uint64_t a1)
{
  v2 = sub_1A7DD3590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD3014(uint64_t a1)
{
  v2 = sub_1A7DD3638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD3050(uint64_t a1)
{
  v2 = sub_1A7DD3638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD308C(uint64_t a1)
{
  v2 = sub_1A7DD368C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD30C8(uint64_t a1)
{
  v2 = sub_1A7DD368C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSInterfaceType.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7948, &qword_1A7E52C30);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7950, &qword_1A7E52C38);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7958, &qword_1A7E52C40);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7960, &qword_1A7E52C48);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B7968, &qword_1A7E52C50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD353C();
  sub_1A7E23260();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1A7DD35E4();
      v18 = v27;
      sub_1A7E22F80();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1A7DD3590();
      v18 = v30;
      sub_1A7E22F80();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1A7DD3638();
    v18 = v24;
    sub_1A7E22F80();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1A7DD368C();
  sub_1A7E22F80();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1A7DD353C()
{
  result = qword_1EB2B7970;
  if (!qword_1EB2B7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7970);
  }

  return result;
}

unint64_t sub_1A7DD3590()
{
  result = qword_1EB2B7978;
  if (!qword_1EB2B7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7978);
  }

  return result;
}

unint64_t sub_1A7DD35E4()
{
  result = qword_1EB2B7980;
  if (!qword_1EB2B7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7980);
  }

  return result;
}

unint64_t sub_1A7DD3638()
{
  result = qword_1EB2B7988;
  if (!qword_1EB2B7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7988);
  }

  return result;
}

unint64_t sub_1A7DD368C()
{
  result = qword_1EB2B7990;
  if (!qword_1EB2B7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7990);
  }

  return result;
}

uint64_t IDSInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSInterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = sub_1A7CC7FFC(&qword_1EB2B7998, &qword_1A7E52C58);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = sub_1A7CC7FFC(&qword_1EB2B79A0, &qword_1A7E52C60);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = sub_1A7CC7FFC(&qword_1EB2B79A8, &qword_1A7E52C68);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B79B0, &qword_1A7E52C70);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B79B8, &unk_1A7E52C78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  sub_1A7CC9878(a1, v14);
  sub_1A7DD353C();
  v15 = v46;
  sub_1A7E23250();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1A7E22F70();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1A7CDB544();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1A7E22BD0();
      swift_allocError();
      v28 = v27;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v28 = &type metadata for IDSInterfaceType;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_1A7B0CD6C(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1A7DD3638();
        v32 = v35;
        sub_1A7E22E70();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1A7DD368C();
        v25 = v35;
        sub_1A7E22E70();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return sub_1A7B0CD6C(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1A7DD35E4();
      v31 = v35;
      sub_1A7E22E70();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1A7DD3590();
      v33 = v35;
      sub_1A7E22E70();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return sub_1A7B0CD6C(v47);
}

unint64_t sub_1A7DD3DC4()
{
  result = qword_1EB2B79C0;
  if (!qword_1EB2B79C0)
  {
    sub_1A7CC9830(&qword_1EB2B79C8, &qword_1A7E52C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79C0);
  }

  return result;
}

unint64_t sub_1A7DD3E2C()
{
  result = qword_1EB2B2FA8;
  if (!qword_1EB2B2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2FA8);
  }

  return result;
}

uint64_t sub_1A7DD3EB0()
{
  v1 = 0x6465726957;
  v2 = 0x72616C756C6C6543;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    v1 = 1766222167;
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

unint64_t sub_1A7DD3F84()
{
  result = qword_1EB2B79D0;
  if (!qword_1EB2B79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79D0);
  }

  return result;
}

unint64_t sub_1A7DD3FDC()
{
  result = qword_1EB2B79D8;
  if (!qword_1EB2B79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79D8);
  }

  return result;
}

unint64_t sub_1A7DD4034()
{
  result = qword_1EB2B79E0;
  if (!qword_1EB2B79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79E0);
  }

  return result;
}

unint64_t sub_1A7DD408C()
{
  result = qword_1EB2B79E8;
  if (!qword_1EB2B79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79E8);
  }

  return result;
}

unint64_t sub_1A7DD40E4()
{
  result = qword_1EB2B79F0;
  if (!qword_1EB2B79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79F0);
  }

  return result;
}

unint64_t sub_1A7DD413C()
{
  result = qword_1EB2B79F8;
  if (!qword_1EB2B79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B79F8);
  }

  return result;
}

unint64_t sub_1A7DD4194()
{
  result = qword_1EB2B7A00;
  if (!qword_1EB2B7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A00);
  }

  return result;
}

unint64_t sub_1A7DD41EC()
{
  result = qword_1EB2B7A08;
  if (!qword_1EB2B7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A08);
  }

  return result;
}

unint64_t sub_1A7DD4244()
{
  result = qword_1EB2B7A10;
  if (!qword_1EB2B7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A10);
  }

  return result;
}

unint64_t sub_1A7DD429C()
{
  result = qword_1EB2B7A18;
  if (!qword_1EB2B7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A18);
  }

  return result;
}

unint64_t sub_1A7DD42F4()
{
  result = qword_1EB2B7A20;
  if (!qword_1EB2B7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A20);
  }

  return result;
}

uint64_t sub_1A7DD4348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A7DD44B0()
{
  v1 = 0x61746C6564;
  if (*v0 != 1)
  {
    v1 = 0x52746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F706572;
  }
}

uint64_t sub_1A7DD4510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7DD5760(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DD4538(uint64_t a1)
{
  v2 = sub_1A7DD4AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD4574(uint64_t a1)
{
  v2 = sub_1A7DD4AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD45B0(uint64_t a1)
{
  v2 = sub_1A7DD4B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD45EC(uint64_t a1)
{
  v2 = sub_1A7DD4B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD4628(uint64_t a1)
{
  v2 = sub_1A7DD4BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD4664(uint64_t a1)
{
  v2 = sub_1A7DD4BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD46A0(uint64_t a1)
{
  v2 = sub_1A7DD4BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD46DC(uint64_t a1)
{
  v2 = sub_1A7DD4BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolQualityMeasurerRequest.encode(to:)(void *a1)
{
  v24 = sub_1A7CC7FFC(&qword_1EB2B7A28, &qword_1A7E531C0);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v20 = &v17 - v3;
  v23 = sub_1A7CC7FFC(&qword_1EB2B7A30, &qword_1A7E531C8);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v19 = &v17 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7A38, &qword_1A7E531D0);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7A40, &qword_1A7E531D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD4AFC();
  sub_1A7E23260();
  if (v12 == 2)
  {
    v28 = 2;
    sub_1A7DD4B50();
    v13 = v20;
    sub_1A7E22F80();
    (*(v22 + 8))(v13, v24);
    return (*(v9 + 8))(v11, v8);
  }

  if (v12 == 1)
  {
    v26 = 0;
    sub_1A7DD4BF8();
    sub_1A7E22F80();
    (*(v17 + 8))(v7, v18);
    return (*(v9 + 8))(v11, v8);
  }

  v27 = 1;
  sub_1A7DD4BA4();
  v15 = v19;
  sub_1A7E22F80();
  v25 = v12;
  sub_1A7D563DC();
  v16 = v23;
  sub_1A7E22FD0();
  (*(v21 + 8))(v15, v16);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A7DD4AFC()
{
  result = qword_1EB2B7A48;
  if (!qword_1EB2B7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A48);
  }

  return result;
}

unint64_t sub_1A7DD4B50()
{
  result = qword_1EB2B7A50;
  if (!qword_1EB2B7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A50);
  }

  return result;
}

unint64_t sub_1A7DD4BA4()
{
  result = qword_1EB2B7A58;
  if (!qword_1EB2B7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A58);
  }

  return result;
}

unint64_t sub_1A7DD4BF8()
{
  result = qword_1EB2B7A60;
  if (!qword_1EB2B7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A60);
  }

  return result;
}

uint64_t LEToolQualityMeasurerRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v39 = sub_1A7CC7FFC(&qword_1EB2B7A68, &qword_1A7E531E0);
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v36 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7A70, &qword_1A7E531E8);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7A78, &qword_1A7E531F0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B7A80, &unk_1A7E531F8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = a1[3];
  v47 = a1;
  sub_1A7CC9878(a1, v15);
  sub_1A7DD4AFC();
  v16 = v46;
  sub_1A7E23250();
  if (v16)
  {
    return sub_1A7B0CD6C(v47);
  }

  v37 = v8;
  v38 = 0;
  v18 = v43;
  v17 = v44;
  v46 = v12;
  v19 = v45;
  v20 = sub_1A7E22F70();
  v21 = (2 * *(v20 + 16)) | 1;
  v48 = v20;
  v49 = v20 + 32;
  v50 = 0;
  v51 = v21;
  v22 = sub_1A7CDB540();
  if (v22 == 3 || v50 != v51 >> 1)
  {
    v25 = sub_1A7E22BD0();
    swift_allocError();
    v27 = v26;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v27 = &type metadata for LEToolQualityMeasurerRequest;
    v28 = v14;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v22)
  {
    LOBYTE(v52) = 0;
    sub_1A7DD4BF8();
    v28 = v14;
    v30 = v38;
    sub_1A7E22E70();
    if (!v30)
    {
      (*(v40 + 8))(v10, v37);
      (*(v46 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v31 = 1;
      goto LABEL_17;
    }

LABEL_9:
    (*(v46 + 8))(v28, v11);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v47);
  }

  if (v22 != 1)
  {
    LOBYTE(v52) = 2;
    sub_1A7DD4B50();
    v28 = v14;
    v32 = v38;
    sub_1A7E22E70();
    v33 = v46;
    if (v32)
    {
      goto LABEL_9;
    }

    (*(v17 + 8))(v18, v39);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v31 = 2;
LABEL_17:
    v34 = v19;
    goto LABEL_18;
  }

  LOBYTE(v52) = 1;
  sub_1A7DD4BA4();
  v23 = v38;
  sub_1A7E22E70();
  v24 = v46;
  if (v23)
  {
    (*(v46 + 8))(v14, v11);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v47);
  }

  v34 = v19;
  sub_1A7D165B8();
  v35 = v41;
  sub_1A7E22ED0();
  (*(v42 + 8))(v7, v35);
  (*(v24 + 8))(v14, v11);
  swift_unknownObjectRelease();
  v31 = v52;
LABEL_18:
  *v34 = v31;
  return sub_1A7B0CD6C(v47);
}

uint64_t sub_1A7DD529C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DD52C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DD5328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1A7DD5378(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_1A7DD53F4()
{
  result = qword_1EB2B7A88;
  if (!qword_1EB2B7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A88);
  }

  return result;
}

unint64_t sub_1A7DD544C()
{
  result = qword_1EB2B7A90;
  if (!qword_1EB2B7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A90);
  }

  return result;
}

unint64_t sub_1A7DD54A4()
{
  result = qword_1EB2B7A98;
  if (!qword_1EB2B7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7A98);
  }

  return result;
}

unint64_t sub_1A7DD54FC()
{
  result = qword_1EB2B7AA0;
  if (!qword_1EB2B7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AA0);
  }

  return result;
}

unint64_t sub_1A7DD5554()
{
  result = qword_1EB2B7AA8;
  if (!qword_1EB2B7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AA8);
  }

  return result;
}

unint64_t sub_1A7DD55AC()
{
  result = qword_1EB2B7AB0;
  if (!qword_1EB2B7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AB0);
  }

  return result;
}

unint64_t sub_1A7DD5604()
{
  result = qword_1EB2B7AB8;
  if (!qword_1EB2B7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AB8);
  }

  return result;
}

unint64_t sub_1A7DD565C()
{
  result = qword_1EB2B7AC0;
  if (!qword_1EB2B7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AC0);
  }

  return result;
}

unint64_t sub_1A7DD56B4()
{
  result = qword_1EB2B7AC8;
  if (!qword_1EB2B7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AC8);
  }

  return result;
}

unint64_t sub_1A7DD570C()
{
  result = qword_1EB2B7AD0;
  if (!qword_1EB2B7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AD0);
  }

  return result;
}

uint64_t sub_1A7DD5760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52746361706D6F63 && a2 == 0xED000074726F7065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t IPAddress.withSockaddrStorage<A>(forPort:block:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v57 = a5;
  v60 = a3;
  v59 = a2;
  v58 = a1;
  v61 = a7;
  v72 = *MEMORY[0x1E69E9840];
  v8 = sub_1A7CC7FFC(&qword_1EB2B63F0, &qword_1A7E49D48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v51 - v9;
  v55 = sub_1A7E220D0();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A7CC7FFC(&qword_1EB2B6400, &qword_1A7E49D58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = sub_1A7E220A0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v14 + 16);
  v26(v20, v62, a4, v23);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 56);
  if (v27)
  {
    v28(v13, 0, 1, v21);
    v29 = (*(v22 + 32))(v25, v13, v21);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    MEMORY[0x1EEE9AC00](v29);
    v30 = v57;
    *(&v51 - 8) = a4;
    *(&v51 - 7) = v30;
    *(&v51 - 6) = v56;
    *(&v51 - 20) = v58;
    v31 = v59;
    *(&v51 - 4) = v25;
    *(&v51 - 3) = v31;
    v50 = v60;
    type metadata accessor for sockaddr_storage(0);
    v33 = v32;
    v34 = sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
    sub_1A7DD5F20(&v64, sub_1A7DD6838, (&v51 - 10), v33, v34, v30, MEMORY[0x1E69E7288], &v63);
    return (*(v22 + 8))(v25, v21);
  }

  else
  {
    v35 = v56;
    v36 = v57;
    v28(v13, 1, 1, v21);
    sub_1A7CC9970(v13, &qword_1EB2B6400, &qword_1A7E49D58);
    (v26)(v17, v62, a4);
    v37 = v52;
    v38 = v55;
    v39 = swift_dynamicCast();
    v40 = v54;
    v41 = *(v54 + 56);
    if (v39)
    {
      v41(v37, 0, 1, v38);
      v42 = v53;
      v43 = (*(v40 + 32))(v53, v37, v38);
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      MEMORY[0x1EEE9AC00](v43);
      *(&v51 - 8) = a4;
      *(&v51 - 7) = v36;
      *(&v51 - 6) = v35;
      v44 = v42;
      *(&v51 - 20) = v58;
      v45 = v59;
      *(&v51 - 4) = v42;
      *(&v51 - 3) = v45;
      v50 = v60;
      type metadata accessor for sockaddr_storage(0);
      v47 = v46;
      v48 = sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
      sub_1A7DD5F20(&v64, sub_1A7DD67B8, (&v51 - 10), v47, v48, v36, MEMORY[0x1E69E7288], &v63);
      return (*(v40 + 8))(v44, v38);
    }

    else
    {
      v41(v37, 1, 1, v38);
      sub_1A7CC9970(v37, &qword_1EB2B63F0, &qword_1A7E49D48);
      result = sub_1A7E22DD0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A7DD5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1A7DD5FFC()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2CF0);
  sub_1A7B0CB00(v0, qword_1EB2B2CF0);
  return sub_1A7E22050();
}

void ipAddressFromSockaddrStorage(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7CC7FFC(&qword_1EB2B63F0, &qword_1A7E49D48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B63F8, &qword_1A7E49D50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v36 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B6400, &qword_1A7E49D58);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v36 - v11;
  v13 = *(a1 + 1);
  if (v13 == 30)
  {
    v23 = *(a1 + 16);
    v36[0] = *(a1 + 8);
    v36[1] = v23;
    v24 = sub_1A7DD6CD8(v36, 0x10uLL);
    v26 = v25;
    v27 = sub_1A7E220F0();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    sub_1A7D5164C(v24, v26);
    sub_1A7E220E0();
    v28 = sub_1A7E220D0();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v6, 1, v28) == 1)
    {
      sub_1A7CC7E50(v24, v26);
      v20 = &qword_1EB2B63F0;
      v21 = &qword_1A7E49D48;
      v22 = v6;
      goto LABEL_7;
    }

    v34 = MEMORY[0x1E6977B30];
    *(a2 + 24) = v28;
    *(a2 + 32) = v34;
    v35 = sub_1A7CC98BC(a2);
    (*(v29 + 32))(v35, v6, v28);
    v33 = v24;
    v32 = v26;
  }

  else
  {
    if (v13 != 2)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    LODWORD(v36[0]) = *(a1 + 4);
    v14 = sub_1A7DF6EAC(v36, v36 + 4);
    v16 = v15;
    v17 = sub_1A7E220F0();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_1A7D5164C(v14, v16 & 0xFFFFFFFFFFFFFFLL);
    sub_1A7E220B0();
    v18 = sub_1A7E220A0();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12, 1, v18) == 1)
    {
      sub_1A7CC7E50(v14, v16 & 0xFFFFFFFFFFFFFFLL);
      v20 = &qword_1EB2B6400;
      v21 = &qword_1A7E49D58;
      v22 = v12;
LABEL_7:
      sub_1A7CC9970(v22, v20, v21);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      return;
    }

    v30 = MEMORY[0x1E6977B28];
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    v31 = sub_1A7CC98BC(a2);
    (*(v19 + 32))(v31, v12, v18);
    v32 = v16 & 0xFFFFFFFFFFFFFFLL;
    v33 = v14;
  }

  sub_1A7CC7E50(v33, v32);
}

void __swiftcall IPAddress.sockaddrStorage(forPort:)(sockaddr_storage *__return_ptr retstr, Swift::UInt16 forPort)
{
  v4 = v3;
  v5 = v2;
  v6 = forPort;
  type metadata accessor for sockaddr_storage(0);
  IPAddress.withSockaddrStorage<A>(forPort:block:)(v6, sub_1A7DD6510, 0, v5, v8, v4, v13);
  v9 = v13[5];
  *&retstr->__ss_pad2[48] = v13[4];
  *&retstr->__ss_pad2[64] = v9;
  v10 = v13[7];
  *&retstr->__ss_pad2[80] = v13[6];
  *&retstr->__ss_pad2[96] = v10;
  v11 = v13[1];
  *&retstr->ss_len = v13[0];
  *retstr->__ss_pad2 = v11;
  v12 = v13[3];
  *&retstr->__ss_pad2[16] = v13[2];
  *&retstr->__ss_pad2[32] = v12;
}

__n128 sub_1A7DD6510@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1A7DD6534(_WORD *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(_WORD *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *a1 = 528;
  a1[1] = bswap32(a2) >> 16;
  v12 = sub_1A7E22090();
  v14 = v13;
  sub_1A7DD65E0(v12, v13, (a1 + 2), (a1 + 4));
  sub_1A7CC7E50(v12, v14);
  result = a4(a1);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

void sub_1A7DD65E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B7AD8, &qword_1A7E53678);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v17 = a1;
  v18 = a2;
  if (!a3)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v9);
  *&v15[-32] = &v17;
  *&v15[-24] = a3;
  *&v15[-16] = a4;
  *&v15[-8] = a3;
  if ((sub_1A7DD6B40(sub_1A7DD6E30, &v15[-48], a1, a2) & 1) == 0)
  {
    return;
  }

  v12 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  sub_1A7D5164C(v17, v18);
LABEL_8:
  sub_1A7E21A50();
  sub_1A7E21A40();
  sub_1A7DD6E50();
  sub_1A7E22A00();
  v13 = 0;
  if (v16)
  {
LABEL_12:
    *&v11[*(v8 + 36)] = v13;
    sub_1A7CC9970(v11, &qword_1EB2B7AD8, &qword_1A7E53678);
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      *(a3 + v14) = v15[6];
      sub_1A7E22A00();
      ++v14;
      if (v16 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A7DD67B8(_WORD *a1, void *a2)
{
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  *a1 = 7708;
  a1[1] = bswap32(v6) >> 16;
  sub_1A7DD6874((a1 + 4), (a1 + 12), v7);
  result = v8(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1A7DD6874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_1A7E220D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2B2CE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1A7E22060();
  sub_1A7B0CB00(v9, qword_1EB2B2CF0);
  (*(v6 + 16))(v8, a3, v5);
  v10 = sub_1A7E22040();
  v11 = sub_1A7E228F0();
  if (!os_log_type_enabled(v10, v11))
  {
    (*(v6 + 8))(v8, v5);
LABEL_16:

    v22 = sub_1A7E220C0();
    v24 = v23;
    sub_1A7DD65E0(v22, v23, a1, v26);
    return sub_1A7CC7E50(v22, v24);
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  v13 = sub_1A7E220C0();
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      sub_1A7CC7E50(v13, v14);
      v17 = 0;
      goto LABEL_15;
    }

    v18 = *(v13 + 16);
    v25 = *(v13 + 24);
    v13 = sub_1A7CC7E50(v13, v14);
    v19 = __OFSUB__(v25, v18);
    v17 = v25 - v18;
    if (!v19)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    sub_1A7CC7E50(v13, v14);
    v17 = v16;
LABEL_15:
    (*(v6 + 8))(v8, v5);
    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A7AD9000, v10, v11, "withSockaddr: ipv6: copying %ld bytes...", v12, 0xCu);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    goto LABEL_16;
  }

  v25 = HIDWORD(v13);
  v20 = v13;
  result = sub_1A7CC7E50(v13, v14);
  if (!__OFSUB__(v25, v20))
  {
    v17 = v25 - v20;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t IPAddress.withSockaddr<A>(forPort:block:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a2;
  v8[6] = a3;
  return IPAddress.withSockaddrStorage<A>(forPort:block:)(a1, sub_1A7DD6D88, v8, a4, a5, a6, a7);
}

uint64_t sub_1A7DD6B40(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1A7DD6EA8(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_1A7DD6C94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

unint64_t sub_1A7DD6CD8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1A7DF6EAC(a1, &a1[a2]);
  }

  sub_1A7E21680();
  swift_allocObject();
  sub_1A7E21620();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1A7E219A0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A7DD6D88(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = a1[5];
  v17 = a1[4];
  v18 = v5;
  v6 = a1[7];
  v19 = a1[6];
  v20 = v6;
  v7 = a1[1];
  v13 = *a1;
  v14 = v7;
  v8 = a1[3];
  v15 = a1[2];
  v16 = v8;
  v10[2] = v2;
  v11 = v3;
  v12 = v4;
  return sockaddr_storage.withSockaddr<A>(_:)(sub_1A7DD6E08, v10, v3);
}

void *sub_1A7DD6E30(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

unint64_t sub_1A7DD6E50()
{
  result = qword_1EB2B63D0;
  if (!qword_1EB2B63D0)
  {
    sub_1A7E21A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63D0);
  }

  return result;
}

uint64_t sub_1A7DD6EA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1A7E21630();
  v8 = result;
  if (result)
  {
    result = sub_1A7E21660();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1A7E21650();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1A7DD6C94(v8, v14, a4) & 1;
}

uint64_t sub_1A7DD6F68(uint64_t a1)
{
  v2 = sub_1A7DD74DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD6FA4(uint64_t a1)
{
  v2 = sub_1A7DD74DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD6FE0()
{
  if (*v0)
  {
    return 0x7261656C63;
  }

  else
  {
    return 1886221668;
  }
}

uint64_t sub_1A7DD7010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1886221668 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DD70E8(uint64_t a1)
{
  v2 = sub_1A7DD7488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD7124(uint64_t a1)
{
  v2 = sub_1A7DD7488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DD7160(uint64_t a1)
{
  v2 = sub_1A7DD7530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DD719C(uint64_t a1)
{
  v2 = sub_1A7DD7530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolPacketLogRequest.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7AE0, &qword_1A7E53680);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7AE8, &qword_1A7E53688);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7AF0, &qword_1A7E53690);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD7488();
  sub_1A7E23260();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A7DD74DC();
    v14 = v18;
    sub_1A7E22F80();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A7DD7530();
    sub_1A7E22F80();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A7DD7488()
{
  result = qword_1EB2B7AF8;
  if (!qword_1EB2B7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7AF8);
  }

  return result;
}

unint64_t sub_1A7DD74DC()
{
  result = qword_1EB2B7B00;
  if (!qword_1EB2B7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B00);
  }

  return result;
}

unint64_t sub_1A7DD7530()
{
  result = qword_1EB2B7B08;
  if (!qword_1EB2B7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B08);
  }

  return result;
}

uint64_t IDSToolPacketLogRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSToolPacketLogRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B7B10, &qword_1A7E53698);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7B18, &qword_1A7E536A0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7B20, &unk_1A7E536A8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DD7488();
  v12 = v31;
  sub_1A7E23250();
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
    v16 = sub_1A7E22F70();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A7CDB538();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A7E22BD0();
      swift_allocError();
      v22 = v21;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v22 = &type metadata for IDSToolPacketLogRequest;
      sub_1A7E22E90();
      sub_1A7E22BC0();
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
        sub_1A7DD74DC();
        sub_1A7E22E70();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A7DD7530();
        sub_1A7E22E70();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return sub_1A7B0CD6C(v13);
}

unint64_t sub_1A7DD7AB8()
{
  result = qword_1EB2B7B28;
  if (!qword_1EB2B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B28);
  }

  return result;
}

unint64_t sub_1A7DD7B80()
{
  result = qword_1EB2B7B30;
  if (!qword_1EB2B7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B30);
  }

  return result;
}

unint64_t sub_1A7DD7BD8()
{
  result = qword_1EB2B7B38;
  if (!qword_1EB2B7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B38);
  }

  return result;
}

unint64_t sub_1A7DD7C30()
{
  result = qword_1EB2B7B40;
  if (!qword_1EB2B7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B40);
  }

  return result;
}

unint64_t sub_1A7DD7C88()
{
  result = qword_1EB2B7B48;
  if (!qword_1EB2B7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B48);
  }

  return result;
}

unint64_t sub_1A7DD7CE0()
{
  result = qword_1EB2B7B50;
  if (!qword_1EB2B7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B50);
  }

  return result;
}

unint64_t sub_1A7DD7D38()
{
  result = qword_1EB2B7B58;
  if (!qword_1EB2B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B58);
  }

  return result;
}

unint64_t sub_1A7DD7D90()
{
  result = qword_1EB2B7B60;
  if (!qword_1EB2B7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B60);
  }

  return result;
}

uint64_t LinkEngineEntity.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (*(a4 + 8))(a2, a4);
  if (*(v8 + 16) && (v9 = sub_1A7CD0DFC(a1), (v10 & 1) != 0))
  {
    sub_1A7B0CD10(*(v8 + 56) + 32 * v9, v14);

    sub_1A7B1503C(v14, v15);
    sub_1A7B1503C(v15, v14);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    v11 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a5, v11 ^ 1u, 1, a3);
  }

  else
  {

    v13 = *(*(a3 - 8) + 56);

    return v13(a5, 1, 1, a3);
  }
}

uint64_t LinkEngineEntity.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A7DD8484(a1, a2, a3, a4, a5);
  v6 = sub_1A7E229A0();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1A7DD7FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A7DD8484(a1, a2, a4, a3, a5);
  v6 = sub_1A7E229A0();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t (*sub_1A7DD804C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D9177C;
}

void (*LinkEngineEntity.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1A7E229A0();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  LinkEngineEntity.subscript.getter(a2, a3, a4, a5, v17);
  return sub_1A7DD8230;
}

void sub_1A7DD8230(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_1A7DD8484(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1A7DD8484((*a1)[8], v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*sub_1A7DD8344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D93198;
}

uint64_t (*sub_1A7DD83E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = LinkEngineEntity.subscript.modify(v10, a2, a4, a3, a5);
  return sub_1A7D93198;
}

uint64_t sub_1A7DD8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A7E229A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-v13];
  (*(v11 + 16))(&v19[-v13], a1, v10, v12);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a4;
    v16 = sub_1A7CC98BC(&v20);
    (*(v15 + 32))(v16, v14, a4);
  }

  v17 = (*(a5 + 24))(v19, a3, a5);
  sub_1A7CC8D74(&v20, a2);
  return v17(v19, 0);
}

uint64_t IDSLinksQualityReport.links.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A7DD8734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A7DD877C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void LEToolQualityMeasurerResponse.print(to:style:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      sub_1A7CC9878(a1, a1[3]);
      v25 = v3;
      v26 = v4;
    }

    else
    {
      sub_1A7CC9878(a1, a1[3]);
      v25 = 0x6C75736572206F4ELL;
      v26 = 0xE900000000000074;
    }

    CLIPrinter.print(_:)(*&v25);
  }

  else
  {
    if (*(v1 + 16))
    {
      v27 = a1[3];
      v28 = a1[4];
      sub_1A7CC9878(a1, v27);
      *&v67 = 0x61746C6544;
      *(&v67 + 1) = 0xE500000000000000;
      LOWORD(v68) = 1;
      *(&v68 + 1) = 0;
      *&v69 = 0;
      BYTE8(v69) = 2;
      CLIPrinter.print(_:)(&v67, v27, v28);

      v29 = *(v4 + 64);
      v58 = v4 + 64;
      v30 = 1 << *(v4 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v29;
      v33 = (v30 + 63) >> 6;
      v59 = v4;

      v34 = 0;
      while (v32)
      {
        v35 = v34;
        v36 = v59;
LABEL_24:
        v37 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v38 = v37 | (v35 << 6);
        v39 = *(v36 + 56);
        v40 = (*(v36 + 48) + 24 * v38);
        v42 = *v40;
        v41 = v40[1];
        v60 = v40[2];
        v43 = (v39 + 16 * v38);
        v44 = v43[1];
        *&v61 = *v43;
        sub_1A7CC9878(a1, a1[3]);

        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v45);
        sub_1A7CC9878(a1, a1[3]);
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v46);
        v47 = a1[3];
        v48 = a1[4];
        v49 = sub_1A7CC9878(a1, v47);
        MEMORY[0x1EEE9AC00](v49);
        *&v56 = v42;
        *(&v56 + 1) = v41;
        v57 = v60;
        CLIPrinter.print(_:)(sub_1A7DDAE54, v55, v47, v48);

        sub_1A7CC9878(a1, a1[3]);
        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v50);
        v51 = a1[3];
        v52 = a1[4];
        sub_1A7CC9878(a1, v51);
        v53 = sub_1A7DDA6AC();
        v54 = sub_1A7DDAB24(v61, v44);

        *(&v68 + 1) = &type metadata for CLITable;
        *&v69 = sub_1A7CF78AC();
        *&v67 = v53;
        *(&v67 + 1) = v54;
        LODWORD(v68) = 0;
        BYTE4(v68) = 0;
        CLIPrinter.print(_:)(&v67, v51, v52);
        sub_1A7B0CD6C(&v67);
      }

      v36 = v59;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {
LABEL_28:

          return;
        }

        v32 = *(v58 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = v3 + 64;
      v6 = 1 << *(v3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v3 + 64);
      v9 = (v6 + 63) >> 6;
      v60 = *v1;

      v10 = 0;
      while (v8)
      {
        v11 = v10;
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(v60 + 56) + 104 * (v12 | (v11 << 6));
        v67 = *v13;
        v68 = *(v13 + 16);
        v70 = *(v13 + 48);
        v71 = *(v13 + 64);
        v72 = *(v13 + 80);
        v73 = *(v13 + 96);
        v69 = *(v13 + 32);
        v61 = v67;
        v14 = v68;
        sub_1A7CC9878(a1, a1[3]);
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v15);
        sub_1A7CC9878(a1, a1[3]);
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v16);
        v17 = a1[3];
        v18 = a1[4];
        v19 = sub_1A7CC9878(a1, v17);
        MEMORY[0x1EEE9AC00](v19);
        v56 = v61;
        v57 = v14;
        CLIPrinter.print(_:)(sub_1A7DDACD4, v55, v17, v18);
        sub_1A7CC9878(a1, a1[3]);
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v20);
        v21 = a1[3];
        v22 = a1[4];
        sub_1A7CC9878(a1, v21);
        v23 = sub_1A7DDA6AC();
        v24 = sub_1A7DDA918(&v67);
        v65 = &type metadata for CLITable;
        v66 = sub_1A7CF78AC();
        v62[0] = v23;
        v62[1] = v24;
        v63 = 0;
        v64 = 0;
        CLIPrinter.print(_:)(v62, v21, v22);
        sub_1A7B0CD6C(v62);
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          goto LABEL_28;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1A7DD8DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 >> 13;
  if (v9 >> 13 <= 1)
  {
    if (v10)
    {
      v47 = *a1;
      v48 = *(a1 + 8);
      sub_1A7CF6318(0x6552207374617453, 0xED00007473657571, 0, 4);
      v50 = v49;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A7E418C0;
      *(v51 + 32) = 0;
      *(v51 + 40) = 0;
      *(v51 + 48) = 1;
      *(v51 + 56) = v50;
      *(v51 + 64) = 0;
      *(v51 + 68) = 0;
      sub_1A7DDA068(v47, v48);
      v53 = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1A7E418C0;
      *(v54 + 32) = 0;
      *(v54 + 40) = 0;
      *(v54 + 48) = 1;
      *(v54 + 56) = v53;
      *(v54 + 64) = 0;
      *(v54 + 68) = 0;
      v68 = 0.0;
      v69 = 0xE000000000000000;
      sub_1A7E227A0();
      MEMORY[0x1AC561C90](0x73646E6F63657320, 0xE800000000000000);
      sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1A7E418C0;
      *(v55 + 32) = 0;
      *(v55 + 40) = 0xE000000000000000;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      *(v55 + 72) = 2;
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1A7E418C0;
      *(v56 + 32) = 0;
      *(v56 + 40) = 0;
      *(v56 + 48) = 1;
      *(v56 + 56) = v55;
      *(v56 + 64) = 0;
      *(v56 + 68) = 0;
      v67 = v51;
      v19 = &v67;
      sub_1A7DDF370(v54);
      v20 = v56;
    }

    else
    {
      v68 = *a1;
      v69 = v5;
      v70 = v7;
      v71 = v6;
      v72 = v8;
      v73 = v9 & 0x1FFF;
      sub_1A7CF6318(0x65736E65707845, 0xE700000000000000, 0, 4);
      v22 = v21;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A7E418C0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      *(v23 + 48) = 1;
      *(v23 + 56) = v22;
      *(v23 + 64) = 0;
      *(v23 + 68) = 0;
      sub_1A7DD94DC(&v68);
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A7E418C0;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 1;
      *(v26 + 56) = v25;
      *(v26 + 64) = 0;
      *(v26 + 68) = 0;
      v27 = sub_1A7DD956C(&v68);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1A7E418C0;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      *(v28 + 48) = 1;
      *(v28 + 56) = v27;
      *(v28 + 64) = 0;
      *(v28 + 68) = 0;
      v62 = v23;
      v19 = &v62;
      sub_1A7DDF370(v26);
      v20 = v28;
    }
  }

  else if (v10 == 2)
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    sub_1A7CF6318(0x53206C616E676953, 0xEF6874676E657274, 0, 4);
    v32 = v31;
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1A7E418C0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 48) = 1;
    *(v33 + 56) = v32;
    *(v33 + 64) = 0;
    *(v33 + 68) = 0;
    sub_1A7DD9F4C(v29);
    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1A7E418C0;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0;
    *(v36 + 48) = 1;
    *(v36 + 56) = v35;
    *(v36 + 64) = 0;
    *(v36 + 68) = 0;
    sub_1A7DD9FD8(v29, v30);
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1A7E418C0;
    *(v39 + 32) = 0;
    *(v39 + 40) = 0;
    *(v39 + 48) = 1;
    *(v39 + 56) = v38;
    *(v39 + 64) = 0;
    *(v39 + 68) = 0;
    v65 = v33;
    v19 = &v65;
    sub_1A7DDF370(v36);
    v20 = v39;
  }

  else
  {
    v68 = *a1;
    v69 = v5;
    v70 = v7;
    v71 = v6;
    v72 = v8;
    if (v10 == 3)
    {
      sub_1A7CF6318(0x7374656B636150, 0xE700000000000000, 0, 4);
      v12 = v11;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A7E418C0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 1;
      *(v13 + 56) = v12;
      *(v13 + 64) = 0;
      *(v13 + 68) = 0;
      sub_1A7DD94DC(&v68);
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A7E418C0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      *(v16 + 48) = 1;
      *(v16 + 56) = v15;
      *(v16 + 64) = 0;
      *(v16 + 68) = 0;
      v17 = sub_1A7DD9BDC(&v68);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A7E418C0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 1;
      *(v18 + 56) = v17;
      *(v18 + 64) = 0;
      *(v18 + 68) = 0;
      v64 = v13;
      v19 = &v64;
      sub_1A7DDF370(v16);
    }

    else
    {
      sub_1A7CF6318(0x7473727542, 0xE500000000000000, 0, 4);
      v41 = v40;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1A7E418C0;
      *(v42 + 32) = 0;
      *(v42 + 40) = 0;
      *(v42 + 48) = 1;
      *(v42 + 56) = v41;
      *(v42 + 64) = 0;
      *(v42 + 68) = 0;
      sub_1A7DD9858(&v68);
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1A7E418C0;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = 1;
      *(v45 + 56) = v44;
      *(v45 + 64) = 0;
      *(v45 + 68) = 0;
      v46 = sub_1A7DD9940(&v68);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1A7E418C0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 1;
      *(v18 + 56) = v46;
      *(v18 + 64) = 0;
      *(v18 + 68) = 0;
      v63 = v42;
      v19 = &v63;
      sub_1A7DDF370(v45);
    }

    v20 = v18;
  }

  sub_1A7DDF370(v20);
  v57 = *v19;
  if (!a3)
  {
    sub_1A7CF6318(0x6C61636F4CLL, 0xE500000000000000, 0, 2);
LABEL_16:
    v60 = v59;
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1A7E418C0;
    *(v58 + 32) = 0;
    *(v58 + 40) = 0;
    *(v58 + 48) = 1;
    *(v58 + 56) = v60;
    *(v58 + 64) = 0;
    *(v58 + 68) = 0;
    goto LABEL_17;
  }

  if (a3 != 1)
  {
    v59 = sub_1A7DDA15C(a2, a3);
    goto LABEL_16;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v66 = v57;
  sub_1A7DDF370(v58);
  return v66;
}

double sub_1A7DD94DC(double *a1)
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v1 = swift_allocObject();
  *&result = 1;
  *(v1 + 16) = xmmword_1A7E418C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 1536;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2;
  return result;
}

uint64_t sub_1A7DD956C(uint64_t a1)
{
  v2 = *(a1 + 41);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_1A7E418C0;
  v5 = 0x7274736E6F636E55;
  if (v2)
  {
    v5 = 0x69617274736E6F43;
  }

  v6 = 0xED000064656E6961;
  if (v2)
  {
    v6 = 0xEB0000000064656ELL;
  }

  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0;
  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  *(v3 + 49) = v7;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 2;
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 32;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  if (*(a1 + 40))
  {
    v9 = 0x7669736E65707845;
  }

  else
  {
    v9 = 0x736E706578656E55;
  }

  if (*(a1 + 40))
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v10 = 0xEB00000000657669;
  }

  if (*(a1 + 40))
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 49) = v11;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 2;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A7E418C0;
  *(v13 + 32) = 32;
  *(v13 + 40) = 0xE100000000000000;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2;
  v23 = *(a1 + 8);
  v14 = v23;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1A7E418C0;
  *(v15 + 32) = v14;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 2;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1A7E418C0;
  *(v16 + 32) = 540945696;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 2;
  v22 = *(a1 + 24);
  v17 = v22;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1A7E418C0;
  *(v18 + 32) = v17;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 2;
  v21 = v4;
  sub_1A7DDACF4(&v23, v20);
  sub_1A7DDACF4(&v22, v20);
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v13);
  sub_1A7DDF090(v15);
  sub_1A7DDF090(v16);
  sub_1A7DDF090(v18);
  return v21;
}

double sub_1A7DD9858(double *a1)
{
  MEMORY[0x1AC561C90](91, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v1 = swift_allocObject();
  *&result = 1;
  *(v1 + 16) = xmmword_1A7E418C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 1536;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2;
  return result;
}

uint64_t sub_1A7DD9940(uint64_t a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A7E418C0;
  *(v1 + 32) = 0x203A545452;
  *(v1 + 40) = 0xE500000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2;
  sub_1A7E227A0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  *(v3 + 32) = 8251;
  *(v3 + 40) = 0xE200000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 2;
  sub_1A7DDAD50();
  v4 = sub_1A7E22A90();
  v6 = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1A7E418C0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = 768;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 2;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = 2109216;
  *(v8 + 40) = 0xE300000000000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 2;
  v9 = sub_1A7E22A90();
  v11 = v10;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 768;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 2;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A7E418C0;
  strcpy((v13 + 32), " packets acked");
  *(v13 + 47) = -18;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v3);
  sub_1A7DDF090(v7);
  sub_1A7DDF090(v8);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v13);
  return v1;
}

uint64_t sub_1A7DD9BDC(void *a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A7E418C0;
  *(v22 + 32) = 0x20746E6573;
  *(v22 + 40) = 0xE500000000000000;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 72) = 2;
  v1 = sub_1A7E23090();
  v3 = v2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = 0x7374656B63617020;
  *(v5 + 40) = 0xEA00000000002820;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 2;
  v6 = sub_1A7E23090();
  v8 = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = 768;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 2;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = 0xD000000000000012;
  *(v10 + 40) = 0x80000001A7EB15B0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  v11 = sub_1A7E23090();
  v13 = v12;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1A7E418C0;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  *(v14 + 48) = 768;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 2;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1A7E418C0;
  *(v15 + 32) = 0x7374656B63617020;
  *(v15 + 40) = 0xEA00000000002820;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 2;
  v16 = sub_1A7E23090();
  v18 = v17;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1A7E418C0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *(v19 + 48) = 768;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 2;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A7E418C0;
  *(v20 + 32) = 0x29736574796220;
  *(v20 + 40) = 0xE700000000000000;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v5);
  sub_1A7DDF090(v9);
  sub_1A7DDF090(v10);
  sub_1A7DDF090(v14);
  sub_1A7DDF090(v15);
  sub_1A7DDF090(v19);
  sub_1A7DDF090(v20);
  return v22;
}

double sub_1A7DD9F4C(double a1)
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v1 = swift_allocObject();
  *&result = 1;
  *(v1 + 16) = xmmword_1A7E418C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 1536;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 2;
  return result;
}

double sub_1A7DD9FD8(double a1, double a2)
{
  sub_1A7E227A0();
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = 768;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  return result;
}

double sub_1A7DDA068(double a1, double a2)
{
  MEMORY[0x1AC561C90](91, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = 1536;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  return result;
}

uint64_t sub_1A7DDA15C(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 1280;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;

  return v4;
}

uint64_t IDSLinksQualityReportBuilder.Report.print(to:style:)(void *a1)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v4 = v1[5];
  v28 = v1[4];
  v29 = v4;
  v30 = *(v1 + 12);
  v5 = v1[3];
  v26 = v1[2];
  v27 = v5;
  sub_1A7CC9878(a1, a1[3]);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v6);
  sub_1A7CC9878(a1, a1[3]);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_1A7CC9878(a1, v8);
  v17 = v24;
  v18 = v25;
  CLIPrinter.print(_:)(sub_1A7DDAE54, v16, v8, v9);
  sub_1A7CC9878(a1, a1[3]);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v10);
  v11 = a1[3];
  v12 = a1[4];
  sub_1A7CC9878(a1, v11);
  v13 = sub_1A7DDA6AC();
  v14 = sub_1A7DDA918(&v24);
  v22 = &type metadata for CLITable;
  v23 = sub_1A7CF78AC();
  v19[0] = v13;
  v19[1] = v14;
  v20 = 0;
  v21 = 0;
  CLIPrinter.print(_:)(v19, v11, v12);
  return sub_1A7B0CD6C(v19);
}

uint64_t sub_1A7DDA36C()
{
  sub_1A7CF6318(0x6D6572757361654DLL, 0xEB00000000746E65, 1, 4);
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  sub_1A7CF6318(1701669204, 0xE400000000000000, 1, 6);
  v4 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 68) = 0;
  sub_1A7CF6318(1635017028, 0xE400000000000000, 1, 0);
  v7 = v6;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;
  *(v8 + 68) = 0;
  sub_1A7CF6318(0x656372756F53, 0xE600000000000000, 1, 0);
  v10 = v9;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = v10;
  *(v11 + 64) = 0;
  *(v11 + 68) = 0;
  sub_1A7DDF370(inited);
  sub_1A7DDF370(v8);
  sub_1A7DDF370(v11);
  return v2;
}

uint64_t sub_1A7DDA52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = 769;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 10272;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  v7 = sub_1A7E23090();
  v9 = v8;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 256;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = 14889;
  *(v11 + 40) = 0xE200000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  sub_1A7DDF090(inited);
  sub_1A7DDF090(v10);
  sub_1A7DDF090(v11);
  return v5;
}

uint64_t sub_1A7DDA6AC()
{
  sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
  v0 = swift_allocObject();
  v4 = vdupq_n_s64(1uLL);
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = v4;
  *(v0 + 48) = 2;
  *(v0 + 56) = 1;
  *(v0 + 64) = v4;
  *(v0 + 80) = 2304;
  *(v0 + 82) = 1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v4;
  *(inited + 48) = 2;
  *(inited + 56) = 1;
  *(inited + 64) = v4;
  *(inited + 80) = 1792;
  *(inited + 82) = 1;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = v4;
  *(v2 + 48) = 2;
  *(v2 + 56) = 1;
  *(v2 + 64) = v4;
  *(v2 + 80) = 0;
  *(v2 + 82) = 1;
  sub_1A7DDF27C(inited);
  sub_1A7DDF27C(v2);
  return v0;
}

uint64_t sub_1A7DDA7B8()
{
  sub_1A7CF6318(0x6D6572757361654DLL, 0xEB00000000746E65, 1, 4);
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  sub_1A7CF6318(1701669204, 0xE400000000000000, 1, 6);
  v4 = v3;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 68) = 0;
  sub_1A7CF6318(1635017028, 0xE400000000000000, 1, 0);
  v7 = v6;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;
  *(v8 + 68) = 0;
  sub_1A7DDF370(inited);
  sub_1A7DDF370(v8);
  return v2;
}

uint64_t sub_1A7DDA918(uint64_t a1)
{
  v2 = sub_1A7DDA36C();
  sub_1A7CC7FFC(&qword_1EB2B4AD8, &qword_1A7E41A18);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  *(v3 + 32) = v2;
  v22 = v3;
  *(v3 + 40) = 2304;
  v4 = *(a1 + 96);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v7;
      v24 = v5;
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      v11 = *(v6 + 8);
      v12 = *(v6 + 16);
      v13 = *(v6 + 24);
      v14 = *(v6 + 32);
      v25[0] = *v6;
      v10 = v25[0];
      v25[1] = v11;
      v25[2] = v12;
      v25[3] = v13;
      v25[4] = v14;
      v26 = *(v6 + 40);
      v15 = v26;

      sub_1A7D52320(v10, v11, v12, v13, v14, v15);
      v16 = sub_1A7DD8DA8(v25, v8, v9);

      sub_1A7D52368(v10, v11, v12, v13, v14, v15);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A7E418C0;
      *(v17 + 32) = v16;
      v7 = v23;
      *(v17 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A7CCD0AC(0, v23[2] + 1, 1, v23);
      }

      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1A7CCD0AC((v18 > 1), v19 + 1, 1, v7);
      }

      v6 += 64;
      v7[2] = v19 + 1;
      v7[v19 + 4] = v17;
      v5 = v24 - 1;
    }

    while (v24 != 1);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1A7CF37D0(v7);

  sub_1A7DDF188(v20);
  return v22;
}

uint64_t sub_1A7DDAB24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7DDA7B8();
  sub_1A7CC7FFC(&qword_1EB2B4AD8, &qword_1A7E41A18);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 2304;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v6[1];
      v16 = *v6;
      v17[0] = v8;
      *(v17 + 10) = *(v6 + 26);
      sub_1A7DDADA4(&v16, v15);
      v9 = sub_1A7DD8DA8(&v16, 0, 1);
      sub_1A7DDAE00(&v16);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = v9;
      *(v10 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A7CCD0AC(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1A7CCD0AC((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      *&v7[8 * v12 + 32] = v10;
      v6 += 3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1A7CF37D0(v7);

  v15[0] = v4;
  sub_1A7DDF188(v13);
  return v15[0];
}

unint64_t sub_1A7DDAD50()
{
  result = qword_1EB2B7B68;
  if (!qword_1EB2B7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B68);
  }

  return result;
}

uint64_t sub_1A7DDAE58()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C78);
  sub_1A7B0CB00(v0, qword_1EB2B2C78);
  return sub_1A7E22050();
}

uint64_t _IDSRelayLinkProvider.localEndpoints.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_1A7DDAF1C(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 16));
  *(v3 + 24) = v2;

  os_unfair_lock_unlock((v3 + 16));
}

void _IDSRelayLinkProvider.localEndpoints.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 24) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t (*_IDSRelayLinkProvider.localEndpoints.modify(void *a1))()
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7DDB020;
}

void sub_1A7DDB020(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 16));
    *(v3 + 24) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    *(v3 + 24) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t _IDSRelayLinkProvider.remoteEndpoints.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 32);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_1A7DDB0EC(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 16));
  *(v3 + 32) = v2;

  os_unfair_lock_unlock((v3 + 16));
}

void _IDSRelayLinkProvider.remoteEndpoints.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 32) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t (*_IDSRelayLinkProvider.remoteEndpoints.modify(void *a1))()
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7DDB1F0;
}

void sub_1A7DDB1F0(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 16));
    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t _IDSRelayLinkProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *(result + 32) = v1;
  return result;
}

uint64_t _IDSRelayLinkProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v2;
  return result;
}

Swift::Void __swiftcall _IDSRelayLinkProvider.setLocalCandidates(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (!(a1._rawValue >> 62))
  {
    v5 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_1A7E22DA0();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC562480](v8, a1._rawValue);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1._rawValue + v8 + 4);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      LinkEndpoint.init(_:isRemote:relaySessionID:)(v9, 0, 0);
      v10 = v23;
      if (v23)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A7CCE450(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1A7CCE450((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    *&v7[8 * v12 + 32] = v10;
  }

  while (v6 != v5);
LABEL_24:
  os_unfair_lock_lock((v2 + 16));
  *(v2 + 24) = v7;

  os_unfair_lock_unlock((v2 + 16));
  if (qword_1EB2B2C70 != -1)
  {
    swift_once();
  }

  v13 = sub_1A7E22060();
  sub_1A7B0CB00(v13, qword_1EB2B2C78);

  oslog = sub_1A7E22040();
  v14 = sub_1A7E228F0();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    os_unfair_lock_lock((v2 + 16));
    v17 = *(v2 + 24);

    os_unfair_lock_unlock((v2 + 16));
    v18 = MEMORY[0x1AC561E20](v17, &type metadata for LinkEndpoint);
    v20 = v19;

    v21 = sub_1A7B0CB38(v18, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1A7AD9000, oslog, v14, "_IDSRelayLinkProvider: Local endpoints: %s", v15, 0xCu);
    sub_1A7B0CD6C(v16);
    MEMORY[0x1AC5654B0](v16, -1, -1);
    MEMORY[0x1AC5654B0](v15, -1, -1);
  }
}

Swift::Void __swiftcall _IDSRelayLinkProvider.setRemoteCandidates(_:withRelaySessionID:)(Swift::OpaquePointer _, Swift::String_optional withRelaySessionID)
{
  object = withRelaySessionID.value._object;
  countAndFlagsBits = withRelaySessionID.value._countAndFlagsBits;
  v6 = _._rawValue & 0xFFFFFFFFFFFFFF8;
  if (!(_._rawValue >> 62))
  {
    v7 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_1A7E22DA0();
  v27 = v2;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((_._rawValue & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC562480](v9, _._rawValue);
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(_._rawValue + v9 + 4);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12.value._countAndFlagsBits = countAndFlagsBits;
      v12.value._object = object;
      LinkEndpoint.init(_:isRemote:relaySessionID:)(v11, 1, v12);
      v13 = v29;
      if (v29)
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A7CCE450(0, *(v2 + 2) + 1, 1, v2);
    }

    v15 = *(v2 + 2);
    v14 = *(v2 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v17 = sub_1A7CCE450((v14 > 1), v15 + 1, 1, v2);
      v16 = v15 + 1;
      v2 = v17;
    }

    *(v2 + 2) = v16;
    *&v2[8 * v15 + 32] = v13;
  }

  while (v8 != v7);
LABEL_23:
  os_unfair_lock_lock(v27 + 4);
  *(v27 + 4) = v2;

  os_unfair_lock_unlock(v27 + 4);
  if (qword_1EB2B2C70 != -1)
  {
    swift_once();
  }

  v18 = sub_1A7E22060();
  sub_1A7B0CB00(v18, qword_1EB2B2C78);

  oslog = sub_1A7E22040();
  v19 = sub_1A7E228F0();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    os_unfair_lock_lock(v27 + 4);
    v22 = *(v27 + 4);

    os_unfair_lock_unlock(v27 + 4);
    v23 = MEMORY[0x1AC561E20](v22, &type metadata for LinkEndpoint);
    v25 = v24;

    v26 = sub_1A7B0CB38(v23, v25, &v29);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1A7AD9000, oslog, v19, "_IDSRelayLinkProvider: Remote endpoints: %s", v20, 0xCu);
    sub_1A7B0CD6C(v21);
    MEMORY[0x1AC5654B0](v21, -1, -1);
    MEMORY[0x1AC5654B0](v20, -1, -1);
  }
}

uint64_t _IDSRelayLinkProvider.__deallocating_deinit()
{
  sub_1A7DDBB78(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_1A7DDB93C()
{
  *(v0 + OBJC_IVAR___IDSRelayLinkProvider_provider) = 0;
  v5.super_class = IDSRelayLinkProvider;
  v1 = objc_msgSendSuper2(&v5, sel_init);
  type metadata accessor for _IDSRelayLinkProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v3;
  *&v1[OBJC_IVAR___IDSRelayLinkProvider_provider] = v2;

  return v1;
}

uint64_t sub_1A7DDBC1C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1AC5654B0);
  }

  return result;
}

uint64_t sub_1A7DDBC30(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    JUMPOUT(0x1AC5654B0);
  }

  return result;
}

__n128 sub_1A7DDBC48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1A7DDBC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A7DDBCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t LinkEndpoint.family.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1A7E220D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A7E220A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  sub_1A7CE0318(*v1, &v17);
  if (v19)
  {
    sub_1A7CC99E0(&v17, v16);
    sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
    if (swift_dynamicCast())
    {
      (*(v8 + 8))(v10, v7);
      sub_1A7B0CD6C(v16);
      result = sub_1A7CE23DC(&v17);
      *a1 = 0;
      return result;
    }

    if (swift_dynamicCast())
    {
      (*(v4 + 8))(v6, v3);
      sub_1A7B0CD6C(v16);
      result = sub_1A7CE23DC(&v17);
      v14 = 1;
    }

    else
    {
      sub_1A7B0CD6C(v16);
      result = sub_1A7CE23DC(&v17);
      v14 = 2;
    }
  }

  else
  {
    sub_1A7CC9970(&v17, &qword_1EB2B5030, &unk_1A7E52250);
    sub_1A7CE03B8(v11, &v17);
    result = v18;
    if (v18)
    {
      v13 = v17;

      *a1 = v13;
      return result;
    }

    v14 = 3;
  }

  *a1 = v14;
  return result;
}

uint64_t LinkEndpoint.port.setter(__int16 a1)
{
  sub_1A7CE0318(*v1, &v20);
  if (v21)
  {
    v22 = a1;
    sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030, &unk_1A7E52250);
    if (*(&v17 + 1))
    {
      v3 = swift_allocObject();
      v4 = v17;
      v3[1] = v16;
      v3[2] = v4;
      v5 = v19;
      v3[3] = v18;
      v3[4] = v5;
      v6 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v16, &qword_1EB2B5030, &unk_1A7E52250);
      v3 = 0;
      v6 = 0;
      *(&v16 + 1) = 0;
      *&v17 = 0;
    }

    *&v16 = v3;
    *(&v17 + 1) = v6;
    sub_1A7CC8D74(&v16, &type metadata for LinkEndpointIP);
  }

  else
  {
    sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030, &unk_1A7E52250);
    sub_1A7CD1F00(&v16, &v12, &qword_1EB2B5030, &unk_1A7E52250);
    if (*(&v13 + 1))
    {
      v7 = swift_allocObject();
      v8 = v13;
      v7[1] = v12;
      v7[2] = v8;
      v9 = v15;
      v7[3] = v14;
      v7[4] = v9;
      v10 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v12, &qword_1EB2B5030, &unk_1A7E52250);
      v7 = 0;
      v10 = 0;
      *(&v12 + 1) = 0;
      *&v13 = 0;
    }

    *&v12 = v7;
    *(&v13 + 1) = v10;
    sub_1A7CC8D74(&v12, &type metadata for LinkEndpointIP);
    sub_1A7CC9970(&v16, &qword_1EB2B5030, &unk_1A7E52250);
  }

  return sub_1A7CC9970(&v20, &qword_1EB2B5030, &unk_1A7E52250);
}

uint64_t LinkEndpointIP.init(ip:port:)@<X0>(__int128 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1346976304;
  *(a3 + 56) = 0xE400000000000000;
  result = sub_1A7B14FF0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

double LinkEndpoint.ip.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v5 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v8);
    sub_1A7B1503C(v8, &v7);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1A7CC99E0(&v9, a1);
        sub_1A7CE23DC(&v9);
        return result;
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1A7CC9970(&v9, &qword_1EB2B5030, &unk_1A7E52250);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t LinkEndpoint.port.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v3 & 1) != 0))
  {
    sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7);
    sub_1A7B1503C(v7, &v6);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        v4 = WORD4(v10);
        sub_1A7CE23DC(&v8);
        return v4;
      }
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1A7CC9970(&v8, &qword_1EB2B5030, &unk_1A7E52250);
  return 0;
}

uint64_t LinkEndpointIP.ip.setter(__int128 *a1)
{
  sub_1A7B0CD6C(v1);

  return sub_1A7B14FF0(a1, v1);
}

uint64_t LinkEndpointIP.Family.description.getter()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 913723465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 880169033;
  }
}

IDSFoundation::LinkEndpointIP::Family_optional __swiftcall LinkEndpointIP.Family.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x1030003030302uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A7DDC480()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](qword_1A7E53D28[v1]);
  return sub_1A7E23240();
}

uint64_t sub_1A7DDC508(uint64_t a1)
{
  v2 = *v1;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](qword_1A7E53D28[v2]);
  return sub_1A7E23240();
}

uint64_t sub_1A7DDC624()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 913723465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 880169033;
  }
}

uint64_t LinkEndpointIP.family.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A7E220D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7E220A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC99E0(v2, v14);
  sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
  if (swift_dynamicCast())
  {
    *a1 = 0;
    (*(v9 + 8))(v11, v8);
  }

  else if (swift_dynamicCast())
  {
    *a1 = 1;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    *a1 = 2;
  }

  return sub_1A7B0CD6C(v14);
}

uint64_t LinkEndpointIP.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkEndpointIP.uniqueID.getter(double a1)
{
  v2 = sub_1A7E220A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC99E0(v1, v14);
  sub_1A7CC7FFC(&qword_1EB2B5048, &qword_1A7E431D0);
  v6 = swift_dynamicCast();
  v12 = 0;
  v13 = 0xE000000000000000;
  if (v6)
  {
    MEMORY[0x1AC561C90](4018249, 0xE300000000000000);
    sub_1A7CC9878(v1, *(v1 + 24));
    sub_1A7E230B0();
    MEMORY[0x1AC561C90](58, 0xE100000000000000);
    HIWORD(v11) = *(v1 + 40);
    v7 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v7);

    v8 = v12;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1AC561C90](1530744905, 0xE400000000000000);
    sub_1A7CC9878(v1, *(v1 + 24));
    sub_1A7E230B0();
    MEMORY[0x1AC561C90](14941, 0xE200000000000000);
    HIWORD(v11) = *(v1 + 40);
    v9 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v9);

    v8 = v12;
  }

  sub_1A7B0CD6C(v14);
  return v8;
}

uint64_t sub_1A7DDCA88()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkEndpointIPFamily.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LinkEndpointIPFamily.uniqueID.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v2 = 913723465;
    v1 = 0xE400000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 880169033;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x796C696D61465049;
}

IDSFoundation::LinkEndpointIPFamily __swiftcall LinkEndpointIPFamily.init(family:)(IDSFoundation::LinkEndpointIPFamily family)
{
  v2 = **&family.family;
  *(v1 + 8) = 0x696D614650493A30;
  *(v1 + 16) = 0xEA0000000000796CLL;
  *v1 = v2;
  return family;
}

uint64_t sub_1A7DDCBEC()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v2 = 913723465;
    v1 = 0xE400000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 880169033;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x796C696D61465049;
}

double sub_1A7DDCC8C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A7CE0318(*a1, &v4);
  if (v5)
  {
    sub_1A7CC99E0(&v4, a2);
    sub_1A7CE23DC(&v4);
  }

  else
  {
    sub_1A7CC9970(&v4, &qword_1EB2B5030, &unk_1A7E52250);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t LinkEndpoint.ip.setter(uint64_t a1)
{
  sub_1A7CD1F00(a1, &v24, &qword_1EB2B6E08, &unk_1A7E4D9B8);
  if (*(&v25 + 1))
  {
    sub_1A7B14FF0(&v24, v28);
    sub_1A7CE0318(*v1, &v24);
    if (*(&v25 + 1))
    {
      sub_1A7DB9778(&v24, v28);
      sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030, &unk_1A7E52250);
      if (*(&v21 + 1))
      {
        v3 = swift_allocObject();
        v4 = v21;
        v3[1] = v20;
        v3[2] = v4;
        v5 = v23;
        v3[3] = v22;
        v3[4] = v5;
        v6 = &type metadata for LinkEndpointIP;
      }

      else
      {
        sub_1A7CC9970(&v20, &qword_1EB2B5030, &unk_1A7E52250);
        v3 = 0;
        v6 = 0;
        *(&v20 + 1) = 0;
        *&v21 = 0;
      }

      *&v20 = v3;
      *(&v21 + 1) = v6;
      sub_1A7CC8D74(&v20, &type metadata for LinkEndpointIP);
      sub_1A7CC9970(a1, &qword_1EB2B6E08, &unk_1A7E4D9B8);
      sub_1A7B0CD6C(v28);
    }

    else
    {
      sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030, &unk_1A7E52250);
      sub_1A7CD1F00(&v20, &v16, &qword_1EB2B5030, &unk_1A7E52250);
      if (*(&v17 + 1))
      {
        v11 = swift_allocObject();
        v12 = v17;
        v11[1] = v16;
        v11[2] = v12;
        v13 = v19;
        v11[3] = v18;
        v11[4] = v13;
        v14 = &type metadata for LinkEndpointIP;
      }

      else
      {
        sub_1A7CC9970(&v16, &qword_1EB2B5030, &unk_1A7E52250);
        v11 = 0;
        v14 = 0;
        *(&v16 + 1) = 0;
        *&v17 = 0;
      }

      *&v16 = v11;
      *(&v17 + 1) = v14;
      sub_1A7CC8D74(&v16, &type metadata for LinkEndpointIP);
      sub_1A7CC9970(a1, &qword_1EB2B6E08, &unk_1A7E4D9B8);
      sub_1A7CC9970(&v20, &qword_1EB2B5030, &unk_1A7E52250);
      sub_1A7B0CD6C(v28);
    }
  }

  else
  {
    sub_1A7CC9970(&v24, &qword_1EB2B6E08, &unk_1A7E4D9B8);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    sub_1A7CD1F00(&v24, &v20, &qword_1EB2B5030, &unk_1A7E52250);
    if (*(&v21 + 1))
    {
      v7 = swift_allocObject();
      v8 = v21;
      v7[1] = v20;
      v7[2] = v8;
      v9 = v23;
      v7[3] = v22;
      v7[4] = v9;
      v10 = &type metadata for LinkEndpointIP;
    }

    else
    {
      sub_1A7CC9970(&v20, &qword_1EB2B5030, &unk_1A7E52250);
      v7 = 0;
      v10 = 0;
      *(&v20 + 1) = 0;
      *&v21 = 0;
    }

    *&v20 = v7;
    *(&v21 + 1) = v10;
    sub_1A7CC8D74(&v20, &type metadata for LinkEndpointIP);
    sub_1A7CC9970(a1, &qword_1EB2B6E08, &unk_1A7E4D9B8);
  }

  return sub_1A7CC9970(&v24, &qword_1EB2B5030, &unk_1A7E52250);
}

void (*LinkEndpoint.ip.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  sub_1A7CE0318(*v1, v3);
  if (*(v4 + 24))
  {
    sub_1A7CC99E0(v4, v4 + 64);
    sub_1A7CE23DC(v4);
  }

  else
  {
    sub_1A7CC9970(v4, &qword_1EB2B5030, &unk_1A7E52250);
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0;
  }

  return sub_1A7DDD0DC;
}

void sub_1A7DDD0DC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A7CD1F00(v2 + 64, v2, &qword_1EB2B6E08, &unk_1A7E4D9B8);
    LinkEndpoint.ip.setter(v2);
    sub_1A7CC9970(v2 + 64, &qword_1EB2B6E08, &unk_1A7E4D9B8);
  }

  else
  {
    LinkEndpoint.ip.setter(v2 + 64);
  }

  free(v2);
}

uint64_t sub_1A7DDD168@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  sub_1A7CE0318(*a1, &v5);
  if (v6)
  {
    v3 = v7;
    result = sub_1A7CE23DC(&v5);
  }

  else
  {
    result = sub_1A7CC9970(&v5, &qword_1EB2B5030, &unk_1A7E52250);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void (*LinkEndpoint.port.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  sub_1A7CE0318(*v1, v3);
  if (*(v4 + 24))
  {
    v5 = *(v4 + 40);
    sub_1A7CE23DC(v4);
  }

  else
  {
    sub_1A7CC9970(v4, &qword_1EB2B5030, &unk_1A7E52250);
    v5 = 0;
  }

  *(v4 + 72) = v5;
  return sub_1A7DDD288;
}

void sub_1A7DDD288(uint64_t a1)
{
  v1 = *a1;
  LinkEndpoint.port.setter(*(*a1 + 72));

  free(v1);
}

unint64_t sub_1A7DDD2CC()
{
  result = qword_1EB2B7B88;
  if (!qword_1EB2B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B88);
  }

  return result;
}

unint64_t sub_1A7DDD350()
{
  result = qword_1EB2B7B90;
  if (!qword_1EB2B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7B90);
  }

  return result;
}

uint64_t sockaddr_storage.withSockaddr<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v8 = v3[3];
  v14[2] = v3[2];
  v14[3] = v8;
  v16 = a3;
  v17 = a1;
  v18 = a2;
  type metadata accessor for sockaddr_storage(0);
  v10 = v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  return sub_1A7DD5F20(v14, sub_1A7DDD654, v15, v10, v11, a3, MEMORY[0x1E69E7288], &v13);
}

uint64_t sub_1A7DDD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x1EEE9AC00](a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_1A7DDD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for sockaddr(0);
  v12 = v11;
  v18 = a4;
  v19 = a2;
  v20 = a3;
  type metadata accessor for sockaddr_storage(0);
  v14 = v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  result = sub_1A7DDD498(v12, 1, sub_1A7DDD678, v17, a1, v14, v12, v15, a4, MEMORY[0x1E69E7288], &v21);
  if (v5)
  {
    *a5 = v21;
  }

  return result;
}

uint64_t sub_1A7DDD678(uint64_t a1, void *a2)
{
  result = (*(v2 + 24))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1A7DDD6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = a4;
  *(v4 + 152) = a1;
  v6 = sub_1A7E22CF0();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = sub_1A7E22D10();
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();
  sub_1A7E222E0();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = sub_1A7E215C0();
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 248) = v8;
  *(v4 + 256) = v9;
  *(v4 + 44) = *(a3 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1A7DDD848, 0, 0);
}

uint64_t sub_1A7DDD848()
{
  v1 = *(v0 + 256);
  if (v1 != 3)
  {
    v3 = *(v0 + 44);
    goto LABEL_13;
  }

  sub_1A7CC7FFC(&qword_1EB2B5A88, &qword_1A7E4F430);
  sub_1A7E21FC0();
  v1 = *(v0 + 42);
  if (!*(v0 + 42))
  {
    if (qword_1EB2B4720 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB2B53E8;
    goto LABEL_11;
  }

  if (v1 == 1)
  {
    if (qword_1EB2B4728 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB2B53F1;
LABEL_11:
    v1 = *v2;
    v3 = *(v2 + 8);
    goto LABEL_13;
  }

  v3 = 0;
LABEL_13:
  *(v0 + 45) = v3;
  *(v0 + 264) = v1;
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_1A7DDD9B4;
  v5 = *(v0 + 152);

  return idsToolInvoke(request:)(v0 + 16, v5);
}

uint64_t sub_1A7DDD9B4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1A7DDE21C;
  }

  else
  {
    v2 = sub_1A7DDDAC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DDDAC8(double a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (*(v1 + 264) == 2)
  {
    v30 = *(v1 + 280);
    v5 = *(v1 + 168);
    sub_1A7E21600();
    swift_allocObject();
    sub_1A7E215F0();
    *(v1 + 144) = MEMORY[0x1E69E7CC0];
    sub_1A7DDEB78(&qword_1EB2B7BB8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
    sub_1A7CC7FFC(&qword_1EB2B7BC0, &qword_1A7E53E30);
    sub_1A7DDEBC0();
    sub_1A7E22AC0();
    sub_1A7E215D0();
    sub_1A7CC9878(v5, v5[3]);
    *(v1 + 96) = v3;
    *(v1 + 104) = v2;
    *(v1 + 112) = v4;
    sub_1A7D3B7F4();
    v6 = sub_1A7E215E0();
    if (v30)
    {

      sub_1A7D3B848();

      v8 = *(v1 + 8);
LABEL_16:

      return v8();
    }

    v11 = v6;
    v12 = v7;
    sub_1A7D3B848();
    sub_1A7E222D0();
    v13 = sub_1A7E222B0();
    v15 = v14;
    sub_1A7CC7E50(v11, v12);
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (!v15)
    {
      v15 = 0xE000000000000000;
    }

    v17 = v15;
    CLIPrinter.print(_:)(*&v16);
  }

  else
  {
    *(v1 + 33) = *(v1 + 264);
    v9 = *(v1 + 45);
    v10 = *(v1 + 168);
    *(v1 + 48) = v3;
    *(v1 + 56) = v2;
    *(v1 + 64) = v4;
    *(v1 + 41) = v9;
    IDSToolResponse.print(to:style:)(v10, v1 + 33);
    sub_1A7D3B848();
  }

  type metadata accessor for IDSToolOptions(0);
  sub_1A7CC7FFC(&qword_1EB2B5A48, &unk_1A7E53E20);
  sub_1A7E21FC0();
  if ((*(v1 + 43) & 1) == 0)
  {

    v8 = *(v1 + 8);
    goto LABEL_16;
  }

  v19 = *(v1 + 184);
  v18 = *(v1 + 192);
  v20 = *(v1 + 176);
  sub_1A7CC7FFC(&qword_1EB2B66F0, &qword_1A7E4AB80);
  sub_1A7E22010();
  v21 = sub_1A7E23290();
  v23 = v22;
  sub_1A7E23170();
  *(v1 + 120) = v21;
  *(v1 + 128) = v23;
  *(v1 + 80) = 0;
  *(v1 + 72) = 0;
  *(v1 + 88) = 1;
  v24 = sub_1A7DDEB78(&qword_1EB2B2880, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A7E23150();
  sub_1A7DDEB78(&qword_1EB2B2888, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A7E22D20();
  v25 = *(v19 + 8);
  *(v1 + 288) = v25;
  *(v1 + 296) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v20);
  v26 = swift_task_alloc();
  *(v1 + 304) = v26;
  *v26 = v1;
  v26[1] = sub_1A7DDDFAC;
  v28 = *(v1 + 200);
  v27 = *(v1 + 208);

  return MEMORY[0x1EEE6DE58](v28, v1 + 72, v27, v24);
}

uint64_t sub_1A7DDDFAC()
{
  v2 = *v1;
  *(v2 + 312) = v0;

  if (v0)
  {
    (*(v2 + 288))(*(v2 + 200), *(v2 + 176));

    return MEMORY[0x1EEE6DFA0](sub_1A7DDE168, 0, 0);
  }

  else
  {
    v4 = *(v2 + 216);
    v3 = *(v2 + 224);
    v5 = *(v2 + 208);
    (*(v2 + 288))(*(v2 + 200), *(v2 + 176));
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    *(v2 + 272) = v6;
    *v6 = v2;
    v6[1] = sub_1A7DDD9B4;
    v7 = *(v2 + 152);

    return idsToolInvoke(request:)(v2 + 16, v7);
  }
}

uint64_t sub_1A7DDE168()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7DDE21C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t idsToolInvoke(request:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DDE384, 0, 0);
}

uint64_t sub_1A7DDE384()
{
  sub_1A7E21750();
  swift_allocObject();
  sub_1A7E21740();
  type metadata accessor for IDSToolRequest(0);
  sub_1A7DDEB78(&qword_1EB2B7B98, type metadata accessor for IDSToolRequest, &protocol conformance descriptor for IDSToolRequest);
  v1 = sub_1A7E21730();
  v3 = v2;
  v0[28] = 0;
  v0[29] = v1;
  v0[30] = v2;

  v6 = [objc_opt_self() shared];
  v7 = [v6 delegate];
  v0[31] = v7;

  if (v7)
  {
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[25];
    v11 = sub_1A7E219F0();
    v0[32] = v11;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1A7DDE6B0;
    swift_continuation_init();
    v0[17] = v10;
    v12 = sub_1A7CC98BC(v0 + 14);
    sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
    sub_1A7E22600();
    (*(v9 + 32))(v12, v8, v10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A7DDE990;
    v0[13] = &unk_1F1AB8D60;
    [v7 sendToolMessage:v11 completionHandler:?];
    (*(v9 + 8))(v12, v10);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1A7DDEABC();
    swift_allocError();
    swift_willThrow();
    sub_1A7CC7E50(v1, v3);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A7DDE6B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1A7DDE8F4;
  }

  else
  {
    v2 = sub_1A7DDE7C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7DDE7C0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  swift_unknownObjectRelease();

  sub_1A7E21720();
  swift_allocObject();
  sub_1A7E21710();
  sub_1A7DDEA68();
  sub_1A7E21700();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  if (v2)
  {
    sub_1A7CC7E50(v5, v6);
    sub_1A7CC7E50(v3, v4);
  }

  else
  {
    v8 = *(v0 + 184);
    sub_1A7CC7E50(v5, v6);
    sub_1A7CC7E50(v3, v4);

    v9 = *(v0 + 160);
    *v8 = *(v0 + 144);
    *(v8 + 16) = v9;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A7DDE8F4(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[30];
  v4 = v1[29];
  swift_willThrow();
  sub_1A7CC7E50(v4, v3);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

void sub_1A7DDE990(uint64_t a1, void *a2, void *a3)
{
  sub_1A7CC9878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
    sub_1A7E22610();
  }

  else
  {
    v6 = a2;
    sub_1A7E21A10();

    sub_1A7CC7FFC(&qword_1EB2B61D0, &unk_1A7E432D0);
    sub_1A7E22620();
  }
}

unint64_t sub_1A7DDEA68()
{
  result = qword_1EB2B7BA0;
  if (!qword_1EB2B7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BA0);
  }

  return result;
}

unint64_t sub_1A7DDEABC()
{
  result = qword_1EB2B7BA8;
  if (!qword_1EB2B7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BA8);
  }

  return result;
}

unint64_t sub_1A7DDEB24()
{
  result = qword_1EB2B7BB0;
  if (!qword_1EB2B7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BB0);
  }

  return result;
}

uint64_t sub_1A7DDEB78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A7DDEBC0()
{
  result = qword_1EB2B7BC8;
  if (!qword_1EB2B7BC8)
  {
    sub_1A7CC9830(&qword_1EB2B7BC0, &qword_1A7E53E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7BC8);
  }

  return result;
}

uint64_t sub_1A7DDEC24(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1A7CCE918(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    (a1)(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A7CCE918((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LinkEngineStateLog.log(_:indentation:)(IDSFoundation::LinkEngineStateLog _, Swift::String indentation)
{
  v2 = *_.loggedState._rawValue;
  v3 = *(*_.loggedState._rawValue + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    object = indentation._object;
    countAndFlagsBits = indentation._countAndFlagsBits;
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v3, 0);
    v4 = v13;
    v7 = (v2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x1AC561C90](v8, v9);

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A7CCE918((v10 > 1), v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = countAndFlagsBits;
      *(v12 + 40) = object;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  sub_1A7DDEE7C(v4);
}

uint64_t sub_1A7DDEE7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCCAA4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDEF70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCCCE0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF090(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC2B0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF188(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC75C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF27C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A7CCC644(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 56 * v7 + 32), (v6 + 32), 56 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF370(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCC868(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}