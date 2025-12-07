uint64_t sub_45C68()
{
  sub_45950();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsListViewModel(uint64_t a1)
{
  result = qword_79188;
  if (!qword_79188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45D14(uint64_t a1)
{
  sub_45EB8(319, &qword_79198, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v1 <= 0x3F)
  {
    sub_45EB8(319, &unk_791A0, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v2 <= 0x3F)
    {
      sub_53A48();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_45EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_54998();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_45F0C(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v221 = a3;
  v7 = sub_53B58();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v210 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v218 = &v200 - v11;
  v12 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  v13 = __chkstk_darwin(v12);
  v220 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v219 = &v200 - v15;
  v16 = sub_44BC(&qword_790E0, &qword_5A4E0);
  v17 = __chkstk_darwin(v16 - 8);
  v213 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v211 = &v200 - v20;
  __chkstk_darwin(v19);
  v22 = &v200 - v21;
  v23 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  v216 = v23;
  sub_4790(v3 + v23, v22, &qword_790E0, &qword_5A4E0);
  v24 = sub_53B88();
  v212 = *(v24 - 8);
  v25 = *(v212 + 48);
  v217 = v24;
  v215 = v212 + 48;
  v214 = v25;
  LODWORD(v23) = (v25)(v22, 1);
  v26 = sub_47F8(v22, &qword_790E0, &qword_5A4E0);
  if (v23 == 1)
  {
    v27 = a1;
    v28 = v221;
    if (qword_76FE8 != -1)
    {
      swift_once();
    }

    v29 = a2;
    v30 = sub_53C38();
    sub_7700(v30, qword_7BC18);

    v31 = sub_53C18();
    v32 = sub_54828();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_54D48();
      v36 = sub_18710(v34, v35, &v226);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
      _os_log_impl(&dword_0, v31, v32, "%s.%s: deferring url load", v33, 0x16u);
      swift_arrayDestroy();
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v200 - 2) = v4;
    *(&v200 - 1) = v27;
    v226 = v4;
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
    sub_53A18();

    v38 = swift_getKeyPath();
    __chkstk_darwin(v38);
    *(&v200 - 4) = v4;
    *(&v200 - 3) = v29;
    *(&v200 - 2) = v28;
    v226 = v4;
    sub_53A18();

    return;
  }

  if (!a1)
  {
    if (a2)
    {
      (a2)(v26);
    }

    return;
  }

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v39 = sub_53C38();
  v40 = sub_7700(v39, qword_7BC18);

  v41 = sub_53C18();
  v42 = sub_54828();

  v43 = os_log_type_enabled(v41, v42);
  v209 = v40;
  v207 = v7;
  v208 = v8;
  v206 = v12;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    *v44 = 136315907;
    v45 = sub_54D48();
    v47 = a2;
    v48 = sub_18710(v45, v46, &v226);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
    *(v44 + 22) = 2160;
    *(v44 + 24) = 1752392040;
    *(v44 + 32) = 2081;
    v49 = sub_545D8();
    v51 = sub_18710(v49, v50, &v226);

    *(v44 + 34) = v51;
    a2 = v47;
    _os_log_impl(&dword_0, v41, v42, "Start (%s.%s) url: '%{private,mask.hash}s'…", v44, 0x2Au);
    swift_arrayDestroy();
  }

  v52 = sub_53C18();
  v53 = sub_54828();

  v54 = os_log_type_enabled(v52, v53);
  if (a2)
  {
    if (!v54)
    {
      goto LABEL_20;
    }

    v55 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    *v55 = 136315394;
    v56 = sub_54D48();
    v58 = a2;
    v59 = sub_18710(v56, v57, &v226);

    *(v55 + 4) = v59;
    a2 = v58;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
    v60 = "%s.%s: completion block present";
  }

  else
  {
    if (!v54)
    {
      goto LABEL_20;
    }

    v55 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    *v55 = 136315394;
    v61 = sub_54D48();
    v63 = sub_18710(v61, v62, &v226);

    *(v55 + 4) = v63;
    a2 = 0;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
    v60 = "%s.%s: completion block not present";
  }

  _os_log_impl(&dword_0, v52, v53, v60, v55, 0x16u);
  swift_arrayDestroy();

LABEL_20:

  *&v222[0] = 1752457584;
  *(&v222[0] + 1) = 0xE400000000000000;
  sub_54A58();
  if (*(a1 + 2) && (v64 = sub_1BE7C(&v226), (v65 & 1) != 0))
  {
    sub_CAF4(*(a1 + 7) + 32 * v64, &v228);
  }

  else
  {
    v228 = 0u;
    v229 = 0u;
  }

  sub_1C37C(&v226);
  if (*(&v229 + 1))
  {
    if (swift_dynamicCast())
    {
      v67 = v226;
      v66 = v227;

      v68 = sub_53C18();
      v69 = sub_54828();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v205 = v67;
        v71 = v70;
        v226 = swift_slowAlloc();
        *v71 = 136315394;
        v72 = sub_54D48();
        v74 = a2;
        v75 = sub_18710(v72, v73, &v226);

        *(v71 + 4) = v75;
        a2 = v74;
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
        _os_log_impl(&dword_0, v68, v69, "%s.%s: path component is present.", v71, 0x16u);
        swift_arrayDestroy();

        v67 = v205;
      }

      v76 = v208;
      v226 = v67;
      v227 = v66;
      *&v228 = 47;
      *(&v228 + 1) = 0xE100000000000000;
      v77 = sub_A700();
      v78 = sub_549A8();
      v79 = v78;
      v80 = *(v78 + 2);
      if (v80)
      {
        v202 = v77;
        v81 = *(v78 + 4);
        v82 = *(v78 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v225 = v79;
        v204 = a2;
        v203 = v66;
        if (isUniquelyReferenced_nonNull_native && (v80 - 1) <= *(v79 + 3) >> 1)
        {
          v205 = v79;
        }

        else
        {
          v205 = sub_23D40(isUniquelyReferenced_nonNull_native, v80, 1, v79);
          v225 = v205;
        }

        sub_5175C(0, 1, 0);
        v103 = 0;
        while (v103 != 45)
        {
          v104 = *(&off_6E0F0 + v103 + 32);
          if (sub_6104(*(&off_6E0F0 + v103 + 32)) == v81 && v105 == v82)
          {

LABEL_68:
            LOBYTE(v226) = v104;
            sub_53CF8();
            v118 = sub_3F1A4();
            v119 = sub_C3CC(v118);

            v120 = v119;
            v121 = *(v119 + 2) + 1;
            v122 = 32;
            v123 = v207;
            v124 = v220;
            v125 = v219;
            while (--v121)
            {
              v126 = v120[v122];
              v122 += 104;
              if (v126 == v104)
              {

                sub_D4BC(v104, v125);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_5181C(v125);
                  v127 = 0;
                }

                else
                {
                  (*(v76 + 8))(v125, v123);
                  *&v228 = 0x6574616D696E61;
                  *(&v228 + 1) = 0xE700000000000000;

                  sub_54A58();
                  *(&v229 + 1) = &type metadata for Bool;
                  LOBYTE(v228) = 1;
                  sub_CB50(&v228, v222);
                  v136 = swift_isUniquelyReferenced_nonNull_native();
                  v223 = a1;
                  sub_4DD6C(v222, &v226, v136);
                  sub_1C37C(&v226);
                  v219 = v223;
                  v226 = v205;

                  sub_44BC(&qword_793D0, &qword_5A8D8);
                  sub_489C(&qword_793D8, &qword_793D0, &qword_5A8D8, &protocol conformance descriptor for [A]);
                  v137 = sub_545F8();
                  v139 = v138;

                  v140 = HIBYTE(v139) & 0xF;
                  if ((v139 & 0x2000000000000000) == 0)
                  {
                    v140 = v137 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v140)
                  {
                    *&v228 = 1752457584;
                    *(&v228 + 1) = 0xE400000000000000;
                    sub_54A58();
                    *(&v229 + 1) = &type metadata for String;
                    *&v228 = v137;
                    *(&v228 + 1) = v139;
                    sub_CB50(&v228, v222);
                    v141 = v219;
                    v142 = swift_isUniquelyReferenced_nonNull_native();
                    v223 = v141;
                    sub_4DD6C(v222, &v226, v142);
                    sub_1C37C(&v226);
                    v127 = v223;
                  }

                  else
                  {

                    v127 = v219;
                  }

                  v123 = v207;
                }

                sub_D4BC(v104, v124);
                if (swift_getEnumCaseMultiPayload())
                {

                  v144 = sub_53C18();
                  v145 = sub_54828();
                  if (os_log_type_enabled(v144, v145))
                  {
                    v146 = swift_slowAlloc();
                    v147 = swift_slowAlloc();
                    v226 = v147;
                    *v146 = 136446210;
                    v148 = sub_6E88(v104);
                    v150 = sub_18710(v148, v149, &v226);
                    v124 = v220;

                    *(v146 + 4) = v150;
                    _os_log_impl(&dword_0, v144, v145, "Attempting to deep link into %{public}s which is not supported.", v146, 0xCu);
                    sub_777C(v147);
                  }

                  v151 = v204;
                  if (v204)
                  {
                    v204();
                  }

                  sub_5181C(v124);
                  goto LABEL_119;
                }

                (*(v76 + 32))(v218, v124, v123);

                v152 = sub_53C18();
                v153 = sub_54828();

                v154 = os_log_type_enabled(v152, v153);
                v201 = a1;
                if (v154)
                {
                  v155 = swift_slowAlloc();
                  v226 = swift_slowAlloc();
                  *v155 = 136315394;
                  v156 = sub_54D48();
                  v158 = sub_18710(v156, v157, &v226);
                  v123 = v207;

                  *(v155 + 4) = v158;
                  v76 = v208;
                  *(v155 + 12) = 2080;
                  *(v155 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
                  _os_log_impl(&dword_0, v152, v153, "%s.%s: found recipe", v155, 0x16u);
                  swift_arrayDestroy();
                }

                v159 = v218;
                if (v127)
                {

                  v160 = sub_53C18();
                  v161 = sub_54828();

                  if (os_log_type_enabled(v160, v161))
                  {
                    v162 = swift_slowAlloc();
                    v220 = swift_slowAlloc();
                    v226 = v220;
                    *v162 = 136315907;
                    v163 = sub_54D48();
                    v165 = sub_18710(v163, v164, &v226);

                    *(v162 + 4) = v165;
                    *(v162 + 12) = 2080;
                    *(v162 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
                    *(v162 + 22) = 2081;
                    v219 = v127;
                    v166 = sub_545D8();
                    v168 = sub_18710(v166, v167, &v226);

                    *(v162 + 24) = v168;
                    *(v162 + 32) = 2081;
                    v76 = v208;
                    swift_beginAccess();
                    sub_4B704(&qword_793C8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                    v169 = sub_54BB8();
                    v171 = sub_18710(v169, v170, &v226);

                    *(v162 + 34) = v171;
                    v123 = v207;
                    _os_log_impl(&dword_0, v160, v161, "%s.%s: calling pending url dict: %{private}s, on recipe: %{private}s", v162, 0x2Au);
                    swift_arrayDestroy();

                    v159 = v218;
                  }

                  swift_beginAccess();
                  v172 = v210;
                  sub_53B18();

                  swift_beginAccess();
                  (*(v76 + 40))(v159, v172, v123);
                }

                v173 = sub_53C18();
                v174 = sub_54828();

                if (os_log_type_enabled(v173, v174))
                {
                  v175 = swift_slowAlloc();
                  v226 = swift_slowAlloc();
                  *v175 = 136315394;
                  v176 = sub_54D48();
                  v178 = sub_18710(v176, v177, &v226);

                  *(v175 + 4) = v178;
                  *(v175 + 12) = 2080;
                  *(v175 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
                  _os_log_impl(&dword_0, v173, v174, "%s.%s: appending recipe to path", v175, 0x16u);
                  swift_arrayDestroy();
                }

                a1 = v201;
                v179 = v213;
                v180 = v211;
                sub_4790(v4 + v216, v211, &qword_790E0, &qword_5A4E0);
                v181 = v214(v180, 1, v217);
                sub_47F8(v180, &qword_790E0, &qword_5A4E0);
                v182 = v207;
                if (v181 == 1)
                {

                  v183 = sub_53C18();
                  v184 = sub_54808();

                  if (os_log_type_enabled(v183, v184))
                  {
                    v185 = swift_slowAlloc();
                    v220 = swift_slowAlloc();
                    v226 = v220;
                    *v185 = 136315394;
                    v186 = sub_54D48();
                    v188 = a1;
                    v189 = sub_18710(v186, v187, &v226);

                    *(v185 + 4) = v189;
                    a1 = v188;
                    v179 = v213;
                    *(v185 + 12) = 2080;
                    *(v185 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v226);
                    _os_log_impl(&dword_0, v183, v184, "%s.%s: appendSettingsNavigationPath function is nil", v185, 0x16u);
                    swift_arrayDestroy();

                    v182 = v207;
                  }
                }

                sub_4790(v4 + v216, v179, &qword_790E0, &qword_5A4E0);
                v190 = v217;
                if (v214(v179, 1, v217) != 1)
                {

                  v191 = v218;
                  swift_beginAccess();
                  sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
                  sub_53B78();
                  (*(v212 + 8))(v179, v190);
                  (*(v208 + 8))(v191, v182);
                  v151 = v204;
LABEL_119:

                  v192 = sub_53C18();
                  v193 = sub_54828();

                  if (os_log_type_enabled(v192, v193))
                  {
                    v194 = swift_slowAlloc();
                    v220 = swift_slowAlloc();
                    v224 = v220;
                    *v194 = 136315394;
                    v195 = sub_54D48();
                    v197 = sub_18710(v195, v196, &v224);

                    *(v194 + 4) = v197;
                    *(v194 + 12) = 2080;
                    *(v194 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v224);
                    _os_log_impl(&dword_0, v192, v193, "%s.%s: updating selection", v194, 0x16u);
                    swift_arrayDestroy();
                  }

                  v198 = *(v4 + 16);
                  if (v198 == 45 || v198 != v104)
                  {
                    v199 = swift_getKeyPath();
                    __chkstk_darwin(v199);
                    *(&v200 - 2) = v4;
                    *(&v200 - 8) = v104;
                    v224 = v4;
                    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
                    sub_53A18();
                  }

                  else
                  {
                    *(v4 + 16) = v104;
                  }

                  if (v151)
                  {
                    v151();
                  }

                  goto LABEL_86;
                }

                goto LABEL_128;
              }
            }

            v128 = sub_53C18();
            v129 = sub_54828();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v226 = v131;
              *v130 = 136446210;
              v132 = sub_6E88(v104);
              v134 = sub_18710(v132, v133, &v226);

              *(v130 + 4) = v134;
              _os_log_impl(&dword_0, v128, v129, "Cannot link to '%{public}s' as it is not an item in the list.", v130, 0xCu);
              sub_777C(v131);
            }

            if (v204)
            {
              v204();
            }

            if (*(v4 + 16) == 45)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          }

          ++v103;
          v107 = sub_54BD8();

          if (v107)
          {
            goto LABEL_68;
          }
        }

        v108 = sub_53C18();
        v109 = sub_54828();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v226 = v111;
          *v110 = 136446210;
          *(v110 + 4) = sub_18710(v81, v82, &v226);
          _os_log_impl(&dword_0, v108, v109, "Cannot find enum for identifier %{public}s", v110, 0xCu);
          sub_777C(v111);
        }

        v112 = v204;
        v230._countAndFlagsBits = 35;
        v230._object = 0xE100000000000000;
        if (sub_54708(v230))
        {
          v226 = v81;
          v227 = v82;
          *&v228 = 35;
          *(&v228 + 1) = 0xE100000000000000;
          v113 = sub_549A8();

          v114 = *(v113 + 16);
          if (v114)
          {
            v115 = (v113 + 16 + 16 * v114);
            v116 = *v115;
            v117 = v115[1];

            sub_4844C(v116, v117);
          }
        }

        if (v112)
        {
          (v112)(v143);
        }

        if (*(v4 + 16) == 45)
        {
          goto LABEL_86;
        }
      }

      else
      {

        v100 = sub_53C18();
        v101 = sub_54828();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_0, v100, v101, "No first path component (likely linking to root of pane).", v102, 2u);
        }

        if (a2)
        {
          a2();
        }

        if (*(v4 + 16) == 45)
        {
          goto LABEL_86;
        }
      }

LABEL_85:
      v135 = swift_getKeyPath();
      __chkstk_darwin(v135);
      *(&v200 - 2) = v4;
      *(&v200 - 8) = 45;
      v226 = v4;
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &unk_5A688);
      sub_53A18();

LABEL_86:
      sub_48620(v4, a1);
      return;
    }
  }

  else
  {
    sub_47F8(&v228, &qword_793C0, &qword_5A8A8);
  }

  v84 = sub_53C18();
  v85 = sub_54828();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "No path component.", v86, 2u);
  }

  *&v222[0] = 1953460082;
  *(&v222[0] + 1) = 0xE400000000000000;
  sub_54A58();
  if (*(a1 + 2) && (v87 = sub_1BE7C(&v226), (v88 & 1) != 0))
  {
    sub_CAF4(*(a1 + 7) + 32 * v87, &v228);
  }

  else
  {
    v228 = 0u;
    v229 = 0u;
  }

  sub_1C37C(&v226);
  if (!*(&v229 + 1))
  {
    v89 = sub_47F8(&v228, &qword_793C0, &qword_5A8A8);
    goto LABEL_82;
  }

  v89 = swift_dynamicCast();
  if ((v89 & 1) == 0)
  {
    goto LABEL_82;
  }

  *&v228 = 35;
  *(&v228 + 1) = 0xE100000000000000;
  sub_A700();
  v90 = sub_549A8();

  if (v90[2] != 2)
  {
    goto LABEL_81;
  }

  v92 = v90[6];
  v91 = v90[7];
  swift_bridgeObjectRetain_n();

  v93 = sub_53C18();
  v94 = sub_54828();
  if (!os_log_type_enabled(v93, v94))
  {

    if (!v91)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v201 = a1;
  v95 = a2;
  v96 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v226 = v97;
  *v96 = 136446210;
  if (v91)
  {
    v98 = v97;
    v99 = sub_18710(v92, v91, &v226);

    *(v96 + 4) = v99;
    _os_log_impl(&dword_0, v93, v94, "Found scroll offset string %{public}s", v96, 0xCu);
    sub_777C(v98);

    a2 = v95;
    a1 = v201;
LABEL_80:
    sub_4844C(v92, v91);
LABEL_81:

LABEL_82:
    if (a2)
    {
      (a2)(v89);
    }

    if (*(v4 + 16) == 45)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_4844C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  while (v4 != 45)
  {
    v5 = *(&off_6E0F0 + v4 + 32);
    if (sub_6104(v5) == v3 && v6 == a2)
    {

LABEL_10:
      if (qword_76FE8 != -1)
      {
        swift_once();
      }

      v9 = sub_53C38();
      sub_7700(v9, qword_7BC18);
      v10 = sub_53C18();
      v11 = sub_54828();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136446210;
        v14 = sub_6104(v5);
        v16 = sub_18710(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v10, v11, "Scrolling to offset %{public}s", v12, 0xCu);
        sub_777C(v13);
      }

      v18 = v5;
      return sub_53CF8();
    }

    ++v4;
    v8 = sub_54BD8();

    if (v8)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_48620(void *a1, uint64_t a2)
{
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v3 = sub_53C38();
  sub_7700(v3, qword_7BC18);

  oslog = sub_53C18();
  v4 = sub_54828();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315907;
    v6 = sub_54D48();
    v8 = sub_18710(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_18710(0xD00000000000001CLL, 0x800000000005EBA0, &v13);
    *(v5 + 22) = 2160;
    *(v5 + 24) = 1752392040;
    *(v5 + 32) = 2081;
    if (!a2)
    {
      __break(1u);
      return;
    }

    v9 = sub_545D8();
    v11 = sub_18710(v9, v10, &v13);

    *(v5 + 34) = v11;
    _os_log_impl(&dword_0, oslog, v4, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v5, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_48864(uint64_t a1, uint64_t a2)
{
  v2[58] = a1;
  v2[59] = a2;
  v3 = sub_54508();
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  sub_44BC(&qword_79398, &qword_5A830);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v4 = sub_53B58();
  v2[65] = v4;
  v2[66] = *(v4 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  v2[71] = swift_task_alloc();
  v5 = sub_53EA8();
  v2[72] = v5;
  v2[73] = *(v5 - 8);
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();

  return _swift_task_switch(sub_48A74, 0, 0);
}

uint64_t sub_48A74()
{
  v1 = sub_53868();
  *(v0 + 608) = v1;
  v2 = *(v1 - 8);
  *(v0 + 616) = v2;
  v3 = swift_task_alloc();
  *(v0 + 624) = v3;
  sub_44BC(&qword_793A0, &qword_5A838);
  v4 = swift_task_alloc();
  v5 = sub_539A8();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  sub_54578();
  sub_53838();
  (*(v6 + 8))(v7, v5);

  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 584);
    v10 = *(v0 + 576);
    sub_47F8(v4, &qword_793A0, &qword_5A838);

    sub_54568();
    sub_54598();
    (*(v9 + 8))(v8, v10);
LABEL_21:

    v36 = *(v0 + 8);

    return v36();
  }

  (*(v2 + 32))(v3, v4, v1);

  sub_54568();
  *(v0 + 384) = sub_53848();
  *(v0 + 392) = v11;
  *(v0 + 400) = 47;
  *(v0 + 408) = 0xE100000000000000;
  *(v0 + 632) = sub_A700();
  v12 = sub_549A8();

  v16 = 0;
  v17 = *(v12 + 16);
LABEL_4:
  *(v0 + 640) = _swiftEmptyArrayStorage;
  v18 = (v12 + 40 + 16 * v16);
  while (1)
  {
    if (v17 == v16)
    {

      v25 = _swiftEmptyArrayStorage[2];
      *(v0 + 648) = v25;
      if (!v25)
      {
LABEL_19:

        v30 = *(v0 + 624);
        v31 = *(v0 + 616);
        v32 = *(v0 + 608);
        v33 = *(v0 + 600);
        v34 = *(v0 + 584);
        v35 = *(v0 + 576);
        sub_54598();
        (*(v34 + 8))(v33, v35);
        (*(v31 + 8))(v30, v32);
LABEL_20:

        goto LABEL_21;
      }

      *(v0 + 656) = 0;
      v26 = *(v0 + 640);
      if (!v26[2])
      {
        goto LABEL_37;
      }

      v27 = v26[5];
      *(v0 + 664) = v27;
      v28 = v26[4];
      swift_bridgeObjectRetain_n();
      v29 = sub_D0C4(v28, v27);
      if (v29 == 41)
      {

        goto LABEL_19;
      }

      v38 = v29;
      if (sub_CB74(v29) == 0xD000000000000010 && 0x800000000005AE30 == v39)
      {
      }

      else
      {
        v41 = sub_54BD8();

        if ((v41 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (![objc_opt_self() nudityDetectionRowEnabled])
      {
        v45 = *(v0 + 624);
        v46 = *(v0 + 616);
        v47 = *(v0 + 608);
        v48 = *(v0 + 600);
        v49 = *(v0 + 584);
        v50 = *(v0 + 576);

        sub_54598();
        (*(v49 + 8))(v48, v50);
        (*(v46 + 8))(v45, v47);
        goto LABEL_20;
      }

LABEL_32:
      *(v0 + 756) = sub_CB60(v38);
      *(v0 + 672) = sub_547A8();
      *(v0 + 680) = sub_54798();
      v42 = sub_54788();
      v44 = v43;
      isUniquelyReferenced_nonNull_native = sub_490B8;
      v14 = v42;
      v15 = v44;

      return _swift_task_switch(isUniquelyReferenced_nonNull_native, v14, v15);
    }

    if (v16 >= *(v12 + 16))
    {
      break;
    }

    v20 = *(v18 - 1);
    v19 = *v18;
    v18 += 2;
    ++v16;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_4DD4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_4DD4C((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v20;
      v24[5] = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v14, v15);
}

uint64_t sub_490B8()
{
  v1 = *(v0 + 756);

  if (v1 > 7)
  {
    if (v1 != 8)
    {
      if (v1 == 37)
      {
        v2 = sub_51B1C;
        goto LABEL_13;
      }

      if (v1 == 38)
      {
        v2 = sub_49208;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
    v3 = objc_opt_self();
    v4 = sub_54638();
    *(v0 + 688) = [v3 applicationWithBundleIdentifier:v4];

    v2 = sub_495DC;
    goto LABEL_13;
  }

  if (v1 == 2 || v1 == 5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v2 = sub_49428;
LABEL_13:

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_49208()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v0[90] = v1;
  sub_E444(0, &qword_78DB0, NSBundle_ptr);
  v2 = sub_548D8();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  sub_538D8();

  v4 = sub_54638();
  v0[91] = v4;

  v0[2] = v0;
  v0[7] = v0 + 754;
  v0[3] = sub_49A04;
  v5 = swift_continuation_init();
  v0[25] = sub_44BC(&qword_78D08, &unk_597A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_367C8;
  v0[21] = &unk_70748;
  v0[22] = v5;
  [v1 evaluatePolicy:2 localizedReason:v4 reply:{v0 + 18, 0x800000000005E740}];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_49428()
{
  v14 = v0;
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v1 = sub_53C38();
  sub_7700(v1, qword_7BC18);
  v2 = sub_53C18();
  v3 = sub_54828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 756);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_6E88(v4);
    v9 = sub_18710(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "No authorization needed for %s.", v5, 0xCu);
    sub_777C(v6);
  }

  *(v0 + 744) = sub_54798();
  v11 = sub_54788();

  return _swift_task_switch(sub_49BC4, v11, v10);
}

uint64_t sub_495DC()
{
  v15 = v0;
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v1 = sub_53C38();
  *(v0 + 696) = sub_7700(v1, qword_7BC18);
  v2 = sub_53C18();
  v3 = sub_54828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 756);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_6E88(v4);
    v9 = sub_18710(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "App Protection Authorization needed for %s.", v5, 0xCu);
    sub_777C(v6);
  }

  v10 = *(v0 + 688);
  v11 = [objc_opt_self() sharedGuard];
  *(v0 + 704) = v11;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 755;
  *(v0 + 88) = sub_49844;
  v12 = swift_continuation_init();
  *(v0 + 264) = sub_44BC(&qword_78D08, &unk_597A0);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_367C8;
  *(v0 + 232) = &unk_70770;
  *(v0 + 240) = v12;
  [v11 authenticateForSubject:v10 completion:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_49844()
{
  v1 = *(*v0 + 112);
  *(*v0 + 712) = v1;
  if (v1)
  {

    v2 = sub_4A9C4;
  }

  else
  {
    v2 = sub_49968;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_49968()
{
  v1 = *(v0 + 704);
  sub_3ACCC(*(v0 + 688));

  *(v0 + 744) = sub_54798();
  v3 = sub_54788();

  return _swift_task_switch(sub_49BC4, v3, v2);
}

uint64_t sub_49A04()
{
  v1 = *(*v0 + 48);
  *(*v0 + 736) = v1;
  if (v1)
  {

    v2 = sub_4AC60;
  }

  else
  {
    v2 = sub_49B28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_49B28()
{
  v1 = *(v0 + 728);

  *(v0 + 744) = sub_54798();
  v3 = sub_54788();

  return _swift_task_switch(sub_49BC4, v3, v2);
}

uint64_t sub_49BC4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 756);

  sub_D4BC(v2, v1);

  return _swift_task_switch(sub_49C40, 0, 0);
}

uint64_t sub_49C40()
{
  v137 = v0;
  v1 = *(v0 + 568);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(v0 + 616);
      v128 = *(v0 + 608);
      v131 = *(v0 + 624);
      v4 = *(v0 + 600);
      v5 = *(v0 + 584);
      v126 = *(v0 + 576);
      v6 = *(v0 + 488);
      v7 = *(v0 + 496);
      v8 = *(v0 + 480);

      (*(v6 + 32))(v7, v1, v8);
      sub_54588();
      (*(v6 + 8))(v7, v8);
      (*(v5 + 8))(v4, v126);
      (*(v3 + 8))(v131, v128);
LABEL_44:

      v86 = *(v0 + 8);

      return v86();
    }

    *(v0 + 752) = *v1;
    sub_36574();
    v27 = sub_53E98();
    goto LABEL_38;
  }

  v9 = *(v0 + 512);
  v10 = *(v0 + 480);
  v11 = *(v0 + 488);
  (*(*(v0 + 528) + 16))(*(v0 + 552), v1, *(v0 + 520));
  sub_53B28();
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) != 1)
  {
    v62 = *(v0 + 504);
    v63 = *(v0 + 480);
    sub_47F8(*(v0 + 512), &qword_79398, &qword_5A830);
    sub_53B28();
    v27 = v12(v62, 1, v63);
    if (v27 != 1)
    {
      v64 = *(v0 + 616);
      v65 = *(v0 + 600);
      v66 = *(v0 + 584);
      v130 = *(v0 + 568);
      v133 = *(v0 + 624);
      v121 = *(v0 + 552);
      v123 = *(v0 + 576);
      v67 = *(v0 + 528);
      v68 = *(v0 + 520);
      v69 = *(v0 + 504);
      v70 = *(v0 + 488);
      v125 = *(v0 + 480);
      v127 = *(v0 + 608);

      sub_54588();
      v71 = *(v67 + 8);
      v71(v121, v68);
      (*(v66 + 8))(v65, v123);
      (*(v64 + 8))(v133, v127);
      (*(v70 + 8))(v69, v125);
      v71(v130, v68);
      goto LABEL_44;
    }

    goto LABEL_77;
  }

  v13 = *(v0 + 640);
  v14 = *(v0 + 568);
  v15 = *(v0 + 544);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 512);
  v19 = *(v0 + 656) + 1;
  v118 = *(v16 + 8);
  v118(*(v0 + 552), v17);

  sub_47F8(v18, &qword_79398, &qword_5A830);
  (*(v16 + 32))(v15, v14, v17);
  if (v19 >= *(v13 + 16) || (v20 = *(v0 + 640) + 16 * *(v0 + 656), v22 = *(v20 + 48), v21 = *(v20 + 56), , sub_D0C4(v22, v21) != 41))
  {
    v72 = *(v0 + 544);
    v73 = *(v0 + 520);
    sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_53E98();
    v27 = v118(v72, v73);
LABEL_38:
    v74 = *(v0 + 656) + 1;
    if (v74 == *(v0 + 648))
    {
LABEL_42:

LABEL_43:
      v80 = *(v0 + 624);
      v81 = *(v0 + 616);
      v82 = *(v0 + 608);
      v83 = *(v0 + 600);
      v84 = *(v0 + 584);
      v85 = *(v0 + 576);
      sub_54598();
      (*(v84 + 8))(v83, v85);
      (*(v81 + 8))(v80, v82);
      goto LABEL_44;
    }

    *(v0 + 656) = v74;
    v75 = *(v0 + 640);
    if (v74 < *(v75 + 16))
    {
      v76 = v75 + 16 * v74;
      v77 = *(v76 + 40);
      *(v0 + 664) = v77;
      v78 = *(v76 + 32);
      swift_bridgeObjectRetain_n();
      v79 = sub_D0C4(v78, v77);
      if (v79 == 41)
      {

        goto LABEL_42;
      }

      v88 = v79;
      if (sub_CB74(v79) == 0xD000000000000010 && 0x800000000005AE30 == v89)
      {
      }

      else
      {
        v91 = sub_54BD8();

        if ((v91 & 1) == 0)
        {
LABEL_55:
          *(v0 + 756) = sub_CB60(v88);
          *(v0 + 672) = sub_547A8();
          *(v0 + 680) = sub_54798();
          v92 = sub_54788();
          v94 = v93;
          v27 = sub_490B8;
          v28 = v92;
          v29 = v94;

          return _swift_task_switch(v27, v28, v29);
        }
      }

      if (![objc_opt_self() nudityDetectionRowEnabled])
      {
        v95 = *(v0 + 624);
        v96 = *(v0 + 616);
        v97 = *(v0 + 608);
        v98 = *(v0 + 600);
        v99 = *(v0 + 584);
        v100 = *(v0 + 576);

        sub_54598();
        (*(v99 + 8))(v98, v100);
        (*(v96 + 8))(v95, v97);
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v23 = sub_53828();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v25 = sub_53818();
  v26 = *(v25 - 8);
  v27 = swift_task_alloc();
  v30 = v27;
  v132 = v24[2];
  if (!v132)
  {
    countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_60:
    v101 = *(v0 + 656);
    v102 = *(v0 + 640);

    *(v0 + 753) = 1;
    sub_54A58();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_4DEB8(v134, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v104 = *(v102 + 16);
    if (v104 > v101)
    {
      v105 = countAndFlagsBits;
      v106 = *(v0 + 640);
      v107 = *(v0 + 656) + 1;
      *(v0 + 352) = v106;
      *(v0 + 360) = v106 + 32;
      *(v0 + 368) = v107;
      *(v0 + 376) = (2 * v104) | 1;
      sub_44BC(&qword_793B0, &qword_5A848);
      sub_489C(&qword_793B8, &qword_793B0, &qword_5A848, &protocol conformance descriptor for ArraySlice<A>);
      v108 = sub_545F8();
      v110 = v109;

      v111._countAndFlagsBits = sub_53858();
      if (v111._object)
      {
        v134[0]._countAndFlagsBits = 35;
        v134[0]._object = 0xE100000000000000;
        sub_546D8(v111);

        sub_546D8(v134[0]);
      }

      v112 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v112 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v112)
      {
        *(v0 + 416) = v108;
        *(v0 + 424) = v110;
        sub_54A58();
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v136 = countAndFlagsBits;
        sub_4DEB8(v134, 1752457584, 0xE400000000000000, v113);
        v105 = v136;
      }

      else
      {
      }

      v114 = *(v0 + 544);
      v115 = *(v0 + 536);
      v116 = *(v0 + 520);
      sub_4AF3C(v105);

      sub_53B18();

      sub_4B704(qword_78D28, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_53E98();
      v118(v115, v116);
      v118(v114, v116);
      goto LABEL_43;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return _swift_task_switch(v27, v28, v29);
  }

  v31 = 0;
  v119 = (v0 + 312);
  v129 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  countAndFlagsBits = &_swiftEmptyDictionarySingleton;
  v122 = (v26 + 8);
  v124 = v25;
  v117 = v24;
  v120 = v26;
  while (1)
  {
    if (v31 >= v24[2])
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    (*(v26 + 16))(v30, &v129[*(v26 + 72) * v31], v25);
    v33 = sub_537F8();
    v35 = v34;
    v36 = sub_53808();
    if (!v37 || (*(v0 + 432) = v36, *(v0 + 440) = v37, v38 = sub_549B8(), v40 = v39, , !v40))
    {
      v49 = sub_1BE04(v33, v35);
      v51 = v50;

      if (v51)
      {
        v134[0]._countAndFlagsBits = countAndFlagsBits;
        v26 = v120;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_C218();
          countAndFlagsBits = v134[0]._countAndFlagsBits;
        }

        v52 = countAndFlagsBits[7] + 40 * v49;
        v53 = *v52;
        v54 = *(v52 + 16);
        *(v0 + 304) = *(v52 + 32);
        *(v0 + 272) = v53;
        *(v0 + 288) = v54;
        sub_108C0(v49, countAndFlagsBits);
        v25 = v124;
        (*v122)(v30, v124);
      }

      else
      {
        v25 = v124;
        (*v122)(v30, v124);
        *(v0 + 304) = 0;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0u;
        v26 = v120;
      }

      v27 = sub_47F8(v0 + 272, &qword_793A8, &qword_5A840);
      goto LABEL_15;
    }

    *(v0 + 448) = v38;
    *(v0 + 456) = v40;
    sub_54A58();
    v41 = v134[1];
    *v119 = v134[0];
    *(v0 + 328) = v41;
    *(v0 + 344) = v135;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = sub_1BE04(v33, v35);
    v44 = countAndFlagsBits[2];
    v45 = (v28 & 1) == 0;
    v27 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_73;
    }

    v46 = v28;
    if (countAndFlagsBits[3] < v27)
    {
      break;
    }

    if (v42)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_C218();
      if ((v46 & 1) == 0)
      {
LABEL_32:
        countAndFlagsBits[(v43 >> 6) + 8] |= 1 << v43;
        v55 = (countAndFlagsBits[6] + 16 * v43);
        *v55 = v33;
        v55[1] = v35;
        v56 = countAndFlagsBits[7] + 40 * v43;
        v57 = *(v0 + 344);
        v58 = *(v0 + 328);
        *v56 = *v119;
        *(v56 + 16) = v58;
        *(v56 + 32) = v57;
        v25 = v124;
        v27 = (*v122)(v30, v124);
        v59 = countAndFlagsBits[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_75;
        }

        countAndFlagsBits[2] = v61;
        goto LABEL_34;
      }
    }

LABEL_30:

    sub_5153C(v119, countAndFlagsBits[7] + 40 * v43);
    v25 = v124;
    v27 = (*v122)(v30, v124);
LABEL_34:
    v24 = v117;
    v26 = v120;
LABEL_15:
    if (v132 == ++v31)
    {
      goto LABEL_60;
    }
  }

  sub_B75C(v27, v42);
  v47 = sub_1BE04(v33, v35);
  if ((v46 & 1) == (v48 & 1))
  {
    v43 = v47;
    if ((v46 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  return sub_54C08();
}

uint64_t sub_4A9C4(uint64_t a1)
{
  v23 = v1;
  v2 = *(v1 + 704);
  swift_willThrow();

  swift_errorRetain();
  v3 = sub_53C18();
  v4 = sub_54808();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 756);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136315394;
    v9 = sub_6E88(v5);
    v11 = sub_18710(v9, v10, &v22);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_0, v3, v4, "An error occurred while authenticating for item '%s' via AppProtection: %@", v6, 0x16u);
    sub_47F8(v7, &qword_78D10, &qword_59690);

    sub_777C(v8);
  }

  v13 = *(v1 + 688);
  v14 = *(v1 + 624);
  v15 = *(v1 + 616);
  v16 = *(v1 + 608);
  v17 = *(v1 + 600);
  v18 = *(v1 + 584);
  v19 = *(v1 + 576);
  sub_54598();
  sub_3ACCC(v13);

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_4AC60(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 728);
  v3 = *(v1 + 720);
  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v4 = sub_53C38();
  sub_7700(v4, qword_7BC18);
  swift_errorRetain();
  v5 = sub_53C18();
  v6 = sub_54808();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 756);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    v11 = sub_6E88(v7);
    v13 = sub_18710(v11, v12, &v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_0, v5, v6, "An error occurred while authenticating for item '%s' via LocalAuthentication: %@", v8, 0x16u);
    sub_47F8(v9, &qword_78D10, &qword_59690);

    sub_777C(v10);
  }

  v15 = *(v1 + 624);
  v16 = *(v1 + 616);
  v17 = *(v1 + 608);
  v18 = *(v1 + 600);
  v19 = *(v1 + 584);
  v20 = *(v1 + 576);
  sub_54598();

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_4AF3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_44BC(&qword_772F8, &qword_57298);
    v2 = sub_54B88();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_CA98(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_CB50(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_CB50(v35, v24);
    result = sub_54A38(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_CB50(v24, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_4B228(uint64_t a1, uint64_t a2)
{

  sub_53CF8();
}

uint64_t sub_4B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_77DF0, &unk_57BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_4B318()
{
  result = qword_792D8;
  if (!qword_792D8)
  {
    sub_E444(255, &qword_792C8, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_792D8);
  }

  return result;
}

uint64_t sub_4B374()
{
  v7 = sub_54868();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_54838();
  __chkstk_darwin(v3);
  v4 = sub_54498();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  sub_54488();
  v8 = _swiftEmptyArrayStorage;
  sub_4B704(&qword_79378, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_44BC(&qword_79380, &qword_5A810);
  sub_489C(&qword_79388, &qword_79380, &qword_5A810, &protocol conformance descriptor for [A]);
  sub_549E8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_54898();
  qword_79130 = result;
  return result;
}

unint64_t sub_4B5E8()
{
  result = qword_792E8;
  if (!qword_792E8)
  {
    sub_E444(255, &qword_775E0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_792E8);
  }

  return result;
}

uint64_t sub_4B650()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4B694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_4B83C(*a1, v2, v3);
  return sub_3FACC(v1, v2, v3);
}

uint64_t sub_4B6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4B704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4B798()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  sub_4B83C(v1, v3, v4);
  return sub_4B7F0(v5, v6, v7);
}

uint64_t sub_4B7F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4B83C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4B8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 112);
    v51 = *(a1 + 96);
    v52 = v3;
    v53 = *(a1 + 128);
    v4 = *(a1 + 48);
    v47 = *(a1 + 32);
    v48 = v4;
    v5 = *(a1 + 80);
    v49 = *(a1 + 64);
    v50 = v5;
    v6 = *(a2 + 48);
    v54 = *(a2 + 32);
    v55 = v6;
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    v60 = *(a2 + 128);
    v58 = v9;
    v59 = v10;
    v56 = v7;
    v57 = v8;
    if (v47 != v54)
    {
      return 0;
    }

    v11 = (a2 + 136);
    v12 = (a1 + 136);
    while (1)
    {
      v13 = v53;
      v14 = BYTE7(v51) >> 6;
      if (v14 > 1)
      {
        break;
      }

      if (v14)
      {
        if (((BYTE7(v58) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v54) != BYTE8(v47))
        {
          return 0;
        }

        v42 = *(&v52 + 1);
        v44 = v52;
        v40 = v53;
        v38 = v59;
        v18 = v60;
        sub_A650(&v54, v46);
        sub_A650(&v47, v46);
        if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
        {
          goto LABEL_101;
        }

        if (v13 == 255)
        {
          sub_A6AC(&v54);
          sub_A6AC(&v47);
          if (v18 != 255)
          {
            return 0;
          }

          goto LABEL_88;
        }

        if (v18 == 255)
        {
          goto LABEL_101;
        }

        if (v13 <= 1u)
        {
          v20 = *(&v38 + 1);
          v21 = v38;
          if (v13)
          {
            if (v18 != 1)
            {
              goto LABEL_101;
            }

            goto LABEL_83;
          }

          if (v18)
          {
            goto LABEL_101;
          }

          sub_2D070(v38, *(&v38 + 1), 0);
          v24 = sub_54328();
          sub_7CAC(v38, *(&v38 + 1), 0);
        }

        else
        {
          v20 = *(&v38 + 1);
          v21 = v38;
          if (v13 == 2)
          {
            if (v18 != 2)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v13 != 3)
            {
              sub_A6AC(&v54);
              sub_A6AC(&v47);
              if (v18 != 4 || v38 != 0)
              {
                return 0;
              }

              goto LABEL_88;
            }

            if (v18 != 3)
            {
              goto LABEL_101;
            }
          }

LABEL_83:
          if (v44 == v21 && v42 == v20)
          {
            sub_A6AC(&v54);
            sub_A6AC(&v47);
            goto LABEL_88;
          }

          LOBYTE(v24) = sub_54BD8();
        }

        sub_A6AC(&v54);
        sub_A6AC(&v47);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

LABEL_88:
        v25 = v18 >> 8;
        if (v40 >> 8 == 2)
        {
          if (v25 != 2)
          {
            return 0;
          }
        }

        else if (v25 == 2 || ((v25 ^ (v40 >> 8)) & 1) != 0)
        {
          return 0;
        }

        goto LABEL_97;
      }

      *&v43 = *(&v50 + 1);
      v15 = v58;
      if (v58 >> 62 || BYTE8(v54) != BYTE8(v47))
      {
        return 0;
      }

      *(&v43 + 1) = v50;
      v45 = v57;
      v16 = v51;
      sub_A650(&v54, v46);
      sub_A650(&v47, v46);
      if ((sub_541B8() & 1) == 0)
      {
        goto LABEL_101;
      }

      if (v16 == 255)
      {
        sub_A6AC(&v54);
        sub_A6AC(&v47);
        if (v15 != 255)
        {
          return 0;
        }

        goto LABEL_97;
      }

      if (v15 == 255)
      {
        goto LABEL_101;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (v15 != 2)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v16 != 3)
          {
            sub_A6AC(&v54);
            sub_A6AC(&v47);
            if (v15 != 4 || v45 != 0)
            {
              return 0;
            }

            goto LABEL_97;
          }

          if (v15 != 3)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_66;
      }

      if (v16)
      {
        if (v15 != 1)
        {
          goto LABEL_101;
        }

LABEL_66:
        if (v43 != __PAIR128__(v45, *(&v45 + 1)))
        {
          goto LABEL_94;
        }

LABEL_81:
        sub_A6AC(&v54);
        sub_A6AC(&v47);
        goto LABEL_97;
      }

      if (v15)
      {
        goto LABEL_101;
      }

      sub_2D070(v45, *(&v45 + 1), 0);
      v22 = sub_54328();
      sub_7CAC(v45, *(&v45 + 1), 0);
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      if (!--v2)
      {
        return 1;
      }

      v26 = v12[5];
      v51 = v12[4];
      v52 = v26;
      v27 = v12[1];
      v47 = *v12;
      v48 = v27;
      v28 = v12[3];
      v49 = v12[2];
      v50 = v28;
      v29 = v11[1];
      v54 = *v11;
      v55 = v29;
      v30 = v11[2];
      v31 = v11[3];
      v32 = v11[4];
      v33 = v11[5];
      v34 = *(v11 + 48);
      v11 = (v11 + 104);
      v35 = *(v12 + 48);
      v12 = (v12 + 104);
      v53 = v35;
      v60 = v34;
      v58 = v32;
      v59 = v33;
      v56 = v30;
      v57 = v31;
      if (v47 != v54)
      {
        return 0;
      }
    }

    if (v14 != 2)
    {
      if (v58 >> 62 != 3 || BYTE8(v54) != BYTE8(v47))
      {
        return 0;
      }

      sub_A650(&v54, v46);
      sub_A650(&v47, v46);
      v19 = sub_541B8();
LABEL_95:
      v23 = v19;
LABEL_96:
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_97;
    }

    if (((BYTE7(v58) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v54) != BYTE8(v47))
    {
      return 0;
    }

    *&v41 = *(&v52 + 1);
    *(&v41 + 1) = v52;
    v17 = v53;
    v39 = v60;
    v37 = v59;
    sub_A650(&v54, v46);
    sub_A650(&v47, v46);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
LABEL_101:
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      return 0;
    }

    if (v17 == 255)
    {
      sub_A6AC(&v54);
      sub_A6AC(&v47);
      if (v39 != 255)
      {
        return 0;
      }

      goto LABEL_97;
    }

    if (v39 == 255)
    {
      goto LABEL_101;
    }

    if (v17 <= 1u)
    {
      if (!v17)
      {
        if (v39)
        {
          goto LABEL_101;
        }

        sub_2D070(v37, *(&v37 + 1), 0);
        v23 = sub_54328();
        sub_7CAC(v37, *(&v37 + 1), 0);
        goto LABEL_96;
      }

      if (v39 != 1)
      {
        goto LABEL_101;
      }

      if (v41 != __PAIR128__(v37, *(&v37 + 1)))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v17 == 2)
      {
        if (v39 != 2)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v17 != 3)
        {
          sub_A6AC(&v54);
          sub_A6AC(&v47);
          if (v39 != 4 || v37 != 0)
          {
            return 0;
          }

          goto LABEL_97;
        }

        if (v39 != 3)
        {
          goto LABEL_101;
        }
      }

      if (v41 != __PAIR128__(v37, *(&v37 + 1)))
      {
LABEL_94:
        v19 = sub_54BD8();
        goto LABEL_95;
      }
    }

    goto LABEL_81;
  }

  return 1;
}

uint64_t sub_4C0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v82 = *(a1 + 32);
  v83 = v3;
  v4 = *(a1 + 80);
  v84 = *(a1 + 64);
  v85 = v4;
  v64 = a2 + 32;
  v65 = a1 + 32;
  v5 = *(a1 + 96);
  v6 = *(a2 + 80);
  v89 = *(a2 + 64);
  v90 = v6;
  v91 = *(a2 + 96);
  v7 = *(a2 + 32);
  v88 = *(a2 + 48);
  v86 = v5;
  v87 = v7;
  if (v82 != v7)
  {
    return 0;
  }

  v8 = 1;
  v59 = v2;
  while (1)
  {
    v9 = v89;
    v68 = v8;
    if (v84)
    {
      if (!v89)
      {
        return 0;
      }

      v10 = *(&v87 + 1);
      v11 = v88;
      sub_C990(&v82, v77);
      sub_C990(&v87, v77);
      sub_8A1C(v10, v11, SBYTE8(v11), v9);
      LOBYTE(v77[0]) = BYTE8(v11) & 1;
      v12 = sub_541B8();
      sub_84F8(v10, v11, BYTE8(v11) & 1);

      if ((v12 & 1) == 0)
      {
LABEL_122:
        sub_C9EC(&v87);
        sub_C9EC(&v82);
        return 0;
      }
    }

    else
    {
      if (v89)
      {
        return 0;
      }

      sub_C990(&v82, v77);
      result = sub_C990(&v87, v77);
    }

    if (v86)
    {
      if (!v91)
      {
        goto LABEL_122;
      }

      v14 = BYTE8(v85);
      v15 = *(&v89 + 1);
      v16 = v90;
      sub_4088(*(&v89 + 1), v90, BYTE8(v90) & 1);

      LOBYTE(v77[0]) = v14 & 1;
      v17 = sub_541B8();
      sub_84F8(v15, v16, BYTE8(v16) & 1);

      if ((v17 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (v91)
    {
      goto LABEL_122;
    }

    v18 = *(&v86 + 1);
    v19 = *(&v91 + 1);
    v20 = *(*(&v86 + 1) + 16);
    if (v20 != *(*(&v91 + 1) + 16))
    {
      goto LABEL_122;
    }

    if (v20 && *(&v86 + 1) != *(&v91 + 1))
    {
      break;
    }

LABEL_117:
    sub_C9EC(&v87);
    sub_C9EC(&v82);
    if (v68 == v59)
    {
      return 1;
    }

    v8 = v68 + 1;
    v49 = *(v65 + 80 * v68 + 16);
    v82 = *(v65 + 80 * v68);
    v83 = v49;
    v50 = *(v65 + 80 * v68 + 48);
    v84 = *(v65 + 80 * v68 + 32);
    v85 = v50;
    v51 = *(v65 + 80 * v68 + 64);
    v52 = (v64 + 80 * v68);
    v53 = v52[3];
    v89 = v52[2];
    v90 = v53;
    v91 = v52[4];
    v54 = *v52;
    v88 = v52[1];
    v86 = v51;
    v87 = v54;
    if (v82 != v54)
    {
      return 0;
    }
  }

  if (*(*(&v86 + 1) + 16))
  {
    v21 = 0;
    v22 = *(&v86 + 1) + 32;
    v23 = *(&v91 + 1) + 32;
    v69 = v20 - 1;
    v62 = *(&v91 + 1);
    v63 = *(&v86 + 1);
    while (1)
    {
      v24 = *v22;
      v25 = *(v22 + 32);
      v72[1] = *(v22 + 16);
      v72[2] = v25;
      v26 = *(v22 + 48);
      v27 = *(v22 + 64);
      v28 = *(v22 + 80);
      v76 = *(v22 + 96);
      v74 = v27;
      v75 = v28;
      v73 = v26;
      v72[0] = v24;
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_125;
      }

      v29 = *(v23 + 32);
      v30 = *v23;
      v77[1] = *(v23 + 16);
      v77[2] = v29;
      v77[0] = v30;
      v31 = *(v23 + 48);
      v32 = *(v23 + 64);
      v33 = *(v23 + 80);
      v81 = *(v23 + 96);
      v79 = v32;
      v80 = v33;
      v78 = v31;
      if (LOBYTE(v72[0]) != LOBYTE(v77[0]))
      {
        goto LABEL_122;
      }

      v34 = *(&v73 + 1);
      v35 = v76;
      v36 = BYTE7(v74) >> 6;
      if (v36 > 1)
      {
        break;
      }

      v66 = v74;
      v70 = v21;
      if (v36)
      {
        if (((BYTE7(v79) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v77[0]) != BYTE8(v72[0]))
        {
          goto LABEL_122;
        }

        *&v58 = *(&v75 + 1);
        *(&v58 + 1) = v75;
        v56 = v80;
        v61 = v81;
        sub_A650(v72, v71);
        sub_A650(v77, v71);
        if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
        {
          goto LABEL_121;
        }

        v41 = v35;
        if (v35 == 255)
        {
          sub_A6AC(v77);
          result = sub_A6AC(v72);
          v19 = v62;
          v18 = v63;
          v42 = v70;
          if (v61 != 255)
          {
            goto LABEL_122;
          }

          goto LABEL_109;
        }

        if (v61 == 255)
        {
          goto LABEL_121;
        }

        if (v35 <= 1u)
        {
          if (v35)
          {
            if (v61 != 1)
            {
              goto LABEL_121;
            }

            goto LABEL_105;
          }

          if (v61)
          {
            goto LABEL_121;
          }

          sub_7C6C(v56, *(&v56 + 1), 0);
          v47 = sub_54328();
          sub_7CAC(v56, *(&v56 + 1), 0);
        }

        else
        {
          if (v35 == 2)
          {
            if (v61 != 2)
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v35 != 3)
            {
              sub_A6AC(v77);
              result = sub_A6AC(v72);
              v19 = v62;
              v18 = v63;
              v42 = v70;
              v41 = v35;
              if (v61 != 4 || v56 != 0)
              {
                goto LABEL_122;
              }

              goto LABEL_109;
            }

            if (v61 != 3)
            {
              goto LABEL_121;
            }
          }

LABEL_105:
          if (v58 == __PAIR128__(v56, *(&v56 + 1)))
          {
            sub_A6AC(v77);
            result = sub_A6AC(v72);
            v19 = v62;
            v18 = v63;
            v42 = v70;
            v41 = v35;
            goto LABEL_109;
          }

          LOBYTE(v47) = sub_54BD8();
        }

        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        v41 = v35;
        if ((v47 & 1) == 0)
        {
          goto LABEL_122;
        }

LABEL_109:
        v48 = v61 >> 8;
        if (v41 >> 8 == 2)
        {
          if (v48 != 2)
          {
            goto LABEL_122;
          }
        }

        else if (v48 == 2 || ((v48 ^ (v41 >> 8)) & 1) != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      v37 = v79;
      if (v79 >> 62 || BYTE8(v77[0]) != BYTE8(v72[0]))
      {
        goto LABEL_122;
      }

      v38 = v73;
      v60 = *(&v78 + 1);
      v39 = v78;
      sub_A650(v72, v71);
      sub_A650(v77, v71);
      if ((sub_541B8() & 1) == 0)
      {
        goto LABEL_121;
      }

      if (v66 == 255)
      {
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v40 = v37 == 255;
LABEL_67:
        v19 = v62;
        v18 = v63;
        v42 = v70;
        if (!v40)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      if (v37 == 255)
      {
        goto LABEL_121;
      }

      if (v66 > 1)
      {
        if (v66 == 2)
        {
          if (v37 != 2)
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v66 != 3)
          {
            sub_A6AC(v77);
            result = sub_A6AC(v72);
            v19 = v62;
            v18 = v63;
            v42 = v70;
            if (v37 != 4 || __PAIR128__(v60, v39) != 0)
            {
              goto LABEL_122;
            }

            goto LABEL_114;
          }

          if (v37 != 3)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_85;
      }

      if (v66)
      {
        if (v37 != 1)
        {
          goto LABEL_121;
        }

LABEL_85:
        if (v38 != v39 || v34 != v60)
        {
LABEL_101:
          v46 = sub_54BD8();
LABEL_102:
          sub_A6AC(v77);
          result = sub_A6AC(v72);
          v19 = v62;
          v18 = v63;
          v42 = v70;
          if ((v46 & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_114;
        }

LABEL_100:
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        goto LABEL_114;
      }

      if (v37)
      {
        goto LABEL_121;
      }

      sub_7C6C(v39, v60, 0);
      v45 = sub_54328();
      sub_7CAC(v39, v60, 0);
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v19 = v62;
      v18 = v63;
      v42 = v70;
      if ((v45 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_114:
      if (v69 == v42)
      {
        goto LABEL_117;
      }

      v23 += 104;
      v22 += 104;
      v21 = v42 + 1;
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_124;
      }
    }

    if (v36 != 2)
    {
      if (v79 >> 62 != 3)
      {
        goto LABEL_122;
      }

      if (BYTE8(v77[0]) != BYTE8(v72[0]))
      {
        goto LABEL_122;
      }

      v43 = v21;
      sub_A650(v72, v71);
      sub_A650(v77, v71);
      v44 = sub_541B8();
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v42 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_114;
    }

    if (((BYTE7(v79) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v77[0]) != BYTE8(v72[0]))
    {
      goto LABEL_122;
    }

    *&v57 = *(&v75 + 1);
    *(&v57 + 1) = v75;
    v70 = v21;
    v67 = v81;
    v55 = v80;
    sub_A650(v72, v71);
    sub_A650(v77, v71);
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
LABEL_121:
      sub_A6AC(v77);
      sub_A6AC(v72);
      goto LABEL_122;
    }

    if (v35 == 255)
    {
      sub_A6AC(v77);
      result = sub_A6AC(v72);
      v40 = v67 == 255;
      goto LABEL_67;
    }

    if (v67 == 255)
    {
      goto LABEL_121;
    }

    if (v35 <= 1u)
    {
      if (!v35)
      {
        if (v67)
        {
          goto LABEL_121;
        }

        sub_7C6C(v55, *(&v55 + 1), 0);
        v46 = sub_54328();
        sub_7CAC(v55, *(&v55 + 1), 0);
        goto LABEL_102;
      }

      if (v67 != 1)
      {
        goto LABEL_121;
      }
    }

    else if (v35 == 2)
    {
      if (v67 != 2)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (v35 != 3)
      {
        sub_A6AC(v77);
        result = sub_A6AC(v72);
        v19 = v62;
        v18 = v63;
        v42 = v70;
        if (v67 != 4 || v55 != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

      if (v67 != 3)
      {
        goto LABEL_121;
      }
    }

    if (v57 != __PAIR128__(v55, *(&v55 + 1)))
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_4CBA8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v66 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v67 = v7;
  v69 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v72 = (v6 - 1) & v6;
LABEL_12:
      v11 = (*(result + 56) + 80 * (v8 | (v3 << 6)));
      v13 = v11[3];
      v12 = v11[4];
      v14 = v11[2];
      v92 = v11[1];
      v91 = *v11;
      v93 = v14;
      v94 = v13;
      v95 = v12;
      v83 = v13;
      v84 = v92;
      v80 = v14;
      v82 = v91;
      v15 = v12;
      sub_C990(&v91, v86);
      if (!*(&v15 + 1))
      {
        return 1;
      }

      v102 = v82;
      v103 = v84;
      v104 = v80;
      v105 = v83;
      v106 = v15;
      v16 = sub_1C54C();
      if ((v17 & 1) == 0)
      {
        goto LABEL_132;
      }

      v18 = (*(v2 + 56) + 80 * v16);
      v98[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v100 = v18[3];
      v101 = v19;
      v98[1] = v21;
      v99 = v20;
      if (LOBYTE(v98[0]) != v102)
      {
        goto LABEL_132;
      }

      v22 = v104;
      if (v99)
      {
        if (!v104)
        {
          goto LABEL_132;
        }

        v23 = *(&v102 + 1);
        v24 = v103;
        sub_C990(v98, &v91);
        sub_8A1C(v23, v24, SBYTE8(v24), v22);
        LOBYTE(v91) = BYTE8(v24) & 1;
        v25 = sub_541B8();
        sub_84F8(v23, v24, BYTE8(v24) & 1);

        if ((v25 & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v104)
        {
          goto LABEL_132;
        }

        result = sub_C990(v98, &v91);
      }

      if (v101)
      {
        if (!v106)
        {
          goto LABEL_131;
        }

        v26 = BYTE8(v100);
        v27 = *(&v104 + 1);
        v28 = v105;
        sub_4088(*(&v104 + 1), v105, BYTE8(v105) & 1);

        LOBYTE(v91) = v26 & 1;
        v29 = sub_541B8();
        sub_84F8(v27, v28, BYTE8(v28) & 1);

        if ((v29 & 1) == 0)
        {
LABEL_130:
          sub_C9EC(&v102);
          v60 = v98;
LABEL_133:
          sub_C9EC(v60);
          return 0;
        }
      }

      else if (v106)
      {
LABEL_131:
        sub_C9EC(v98);
LABEL_132:
        v60 = &v102;
        goto LABEL_133;
      }

      v30 = *(&v101 + 1);
      v31 = *(&v106 + 1);
      v32 = *(*(&v101 + 1) + 16);
      if (v32 != *(*(&v106 + 1) + 16))
      {
        goto LABEL_130;
      }

      if (v32 && *(&v101 + 1) != *(&v106 + 1))
      {
        break;
      }

LABEL_126:
      sub_C9EC(&v102);
      sub_C9EC(v98);
      v2 = a2;
      result = v69;
      v7 = v67;
      v6 = v72;
      if (!v72)
      {
        goto LABEL_7;
      }
    }

    if (*(*(&v101 + 1) + 16))
    {
      v33 = 0;
      v34 = *(&v101 + 1) + 32;
      v35 = *(&v106 + 1) + 32;
      v73 = v32 - 1;
      v74 = *(&v106 + 1);
      v70 = *(&v101 + 1);
      while (1)
      {
        v36 = *v34;
        v37 = *(v34 + 32);
        v86[1] = *(v34 + 16);
        v86[2] = v37;
        v38 = *(v34 + 48);
        v39 = *(v34 + 64);
        v40 = *(v34 + 80);
        v90 = *(v34 + 96);
        v88 = v39;
        v89 = v40;
        v87 = v38;
        v86[0] = v36;
        if (v33 >= *(v31 + 16))
        {
          goto LABEL_137;
        }

        v41 = *(v35 + 32);
        v42 = *v35;
        v92 = *(v35 + 16);
        v93 = v41;
        v91 = v42;
        v43 = *(v35 + 48);
        v44 = *(v35 + 64);
        v45 = *(v35 + 80);
        v97 = *(v35 + 96);
        v95 = v44;
        v96 = v45;
        v94 = v43;
        if (LOBYTE(v86[0]) != v91)
        {
          goto LABEL_130;
        }

        v46 = *(&v87 + 1);
        v47 = BYTE7(v88) >> 6;
        if (v47 > 1)
        {
          break;
        }

        v81 = v88;
        v78 = v87;
        v79 = v33;
        if (v47)
        {
          if (((BYTE7(v95) << 48) & 0xC0000000000000) != 0x40000000000000 || BYTE8(v91) != BYTE8(v86[0]))
          {
            goto LABEL_130;
          }

          *&v65 = *(&v89 + 1);
          *(&v65 + 1) = v89;
          v77 = v90;
          v62 = v96;
          v50 = v97;
          sub_A650(v86, v85);
          sub_A650(&v91, v85);
          if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
          {
            goto LABEL_129;
          }

          if (v77 == 255)
          {
            sub_A6AC(&v91);
            result = sub_A6AC(v86);
            v30 = v70;
            v31 = v74;
            v51 = v79;
            if (v50 != 255)
            {
              goto LABEL_130;
            }

            goto LABEL_118;
          }

          if (v50 == 255)
          {
            goto LABEL_129;
          }

          if (v77 <= 1u)
          {
            if (v77)
            {
              if (v50 != 1)
              {
                goto LABEL_129;
              }

              goto LABEL_114;
            }

            if (v50)
            {
              goto LABEL_129;
            }

            sub_7C6C(v62, *(&v62 + 1), 0);
            v56 = sub_54328();
            sub_7CAC(v62, *(&v62 + 1), 0);
          }

          else
          {
            if (v77 == 2)
            {
              if (v50 != 2)
              {
                goto LABEL_129;
              }
            }

            else
            {
              if (v77 != 3)
              {
                sub_A6AC(&v91);
                result = sub_A6AC(v86);
                v30 = v70;
                v31 = v74;
                v51 = v79;
                if (v50 != 4 || v62 != 0)
                {
                  goto LABEL_130;
                }

                goto LABEL_118;
              }

              if (v50 != 3)
              {
                goto LABEL_129;
              }
            }

LABEL_114:
            if (v65 == __PAIR128__(v62, *(&v62 + 1)))
            {
              sub_A6AC(&v91);
              result = sub_A6AC(v86);
              v30 = v70;
              v31 = v74;
              v51 = v79;
              goto LABEL_118;
            }

            LOBYTE(v56) = sub_54BD8();
          }

          sub_A6AC(&v91);
          result = sub_A6AC(v86);
          v30 = v70;
          v31 = v74;
          v51 = v79;
          if ((v56 & 1) == 0)
          {
            goto LABEL_130;
          }

LABEL_118:
          v59 = v50 >> 8;
          if (v77 >> 8 == 2)
          {
            if (v59 != 2)
            {
              goto LABEL_130;
            }
          }

          else if (v59 == 2 || ((v59 ^ (v77 >> 8)) & 1) != 0)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        v48 = v95;
        if (v95 >> 62 || BYTE8(v91) != BYTE8(v86[0]))
        {
          goto LABEL_130;
        }

        v75 = *(&v94 + 1);
        v71 = v94;
        sub_A650(v86, v85);
        sub_A650(&v91, v85);
        if ((sub_541B8() & 1) == 0)
        {
          goto LABEL_129;
        }

        if (v81 == 255)
        {
          sub_A6AC(&v91);
          result = sub_A6AC(v86);
          v49 = v48 == 255;
LABEL_76:
          v30 = v70;
          v31 = v74;
          v51 = v79;
          if (!v49)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v48 == 255)
        {
          goto LABEL_129;
        }

        if (v81 > 1)
        {
          if (v81 == 2)
          {
            if (v48 != 2)
            {
              goto LABEL_129;
            }
          }

          else
          {
            if (v81 != 3)
            {
              sub_A6AC(&v91);
              result = sub_A6AC(v86);
              v30 = v70;
              v31 = v74;
              v51 = v79;
              if (v48 != 4)
              {
                goto LABEL_130;
              }

              v57 = v75;
              v58 = v71;
              goto LABEL_102;
            }

            if (v48 != 3)
            {
              goto LABEL_129;
            }
          }

LABEL_93:
          if (v78 != v71 || v46 != v75)
          {
LABEL_110:
            v55 = sub_54BD8();
LABEL_111:
            sub_A6AC(&v91);
            result = sub_A6AC(v86);
            v30 = v70;
            v31 = v74;
            v51 = v79;
            if ((v55 & 1) == 0)
            {
              goto LABEL_130;
            }

            goto LABEL_123;
          }

LABEL_109:
          sub_A6AC(&v91);
          result = sub_A6AC(v86);
          v30 = v70;
          v31 = v74;
          v51 = v79;
          goto LABEL_123;
        }

        if (v81)
        {
          if (v48 != 1)
          {
            goto LABEL_129;
          }

          goto LABEL_93;
        }

        if (v48)
        {
          goto LABEL_129;
        }

        sub_7C6C(v71, v75, 0);
        v54 = sub_54328();
        sub_7CAC(v71, v75, 0);
        sub_A6AC(&v91);
        result = sub_A6AC(v86);
        v30 = v70;
        v31 = v74;
        v51 = v79;
        if ((v54 & 1) == 0)
        {
          goto LABEL_130;
        }

LABEL_123:
        if (v73 == v51)
        {
          goto LABEL_126;
        }

        v35 += 104;
        v34 += 104;
        v33 = v51 + 1;
        if (v33 >= *(v30 + 16))
        {
          goto LABEL_136;
        }
      }

      if (v47 != 2)
      {
        if (v95 >> 62 != 3)
        {
          goto LABEL_130;
        }

        if (BYTE8(v91) != BYTE8(v86[0]))
        {
          goto LABEL_130;
        }

        v52 = v33;
        sub_A650(v86, v85);
        sub_A650(&v91, v85);
        v53 = sub_541B8();
        sub_A6AC(&v91);
        result = sub_A6AC(v86);
        v51 = v52;
        v31 = v74;
        if ((v53 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_123;
      }

      if (((BYTE7(v95) << 48) & 0xC0000000000000) != 0x80000000000000 || BYTE8(v91) != BYTE8(v86[0]))
      {
        goto LABEL_130;
      }

      *&v64 = *(&v89 + 1);
      *(&v64 + 1) = v89;
      v79 = v33;
      v76 = v90;
      v63 = v97;
      v61 = v96;
      sub_A650(v86, v85);
      sub_A650(&v91, v85);
      if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
      {
LABEL_129:
        sub_A6AC(&v91);
        sub_A6AC(v86);
        goto LABEL_130;
      }

      if (v76 == 255)
      {
        sub_A6AC(&v91);
        result = sub_A6AC(v86);
        v49 = v63 == 255;
        goto LABEL_76;
      }

      if (v63 == 255)
      {
        goto LABEL_129;
      }

      if (v76 <= 1u)
      {
        if (!v76)
        {
          if (v63)
          {
            goto LABEL_129;
          }

          sub_7C6C(v61, *(&v61 + 1), 0);
          v55 = sub_54328();
          sub_7CAC(v61, *(&v61 + 1), 0);
          goto LABEL_111;
        }

        if (v63 != 1)
        {
          goto LABEL_129;
        }
      }

      else if (v76 == 2)
      {
        if (v63 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v76 != 3)
        {
          sub_A6AC(&v91);
          result = sub_A6AC(v86);
          v30 = v70;
          v31 = v74;
          v51 = v79;
          if (v63 != 4)
          {
            goto LABEL_130;
          }

          v57 = *(&v61 + 1);
          v58 = v61;
LABEL_102:
          if (v57 | v58)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v63 != 3)
        {
          goto LABEL_129;
        }
      }

      if (v64 != __PAIR128__(v61, *(&v61 + 1)))
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }
  }

  else
  {
LABEL_7:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return 1;
      }

      v10 = *(v66 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v72 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_4D714(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v37 = result;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; v3 = v12)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v3 << 6);
LABEL_15:
    v15 = *(v37 + 56) + 104 * v10;
    v17 = *(v15 + 16);
    v16 = *(v15 + 32);
    *v47 = *v15;
    *&v47[16] = v17;
    v18 = *(v15 + 96);
    v20 = *(v15 + 64);
    v19 = *(v15 + 80);
    v21 = *(v15 + 48);
    *&v47[32] = v16;
    *&v47[48] = v21;
    *&v47[64] = v20;
    *&v47[80] = v19;
    *&v47[96] = v18;
    v42 = v21;
    v43 = *&v47[16];
    v39 = v16;
    v40 = *v47;
    v41 = v19;
    v38 = v20;
    sub_A650(v47, v45);
    v23 = v38;
    v22 = v39;
    v24 = v40;
    v12 = v3;
LABEL_16:
    if (*(&v24 + 1) >> 6 == 0xFFFFFFFFLL)
    {
      v25 = vmovn_s64(vcgtq_u64(xmmword_5A590, vzip1q_s64(v23, v22)));
      if (v25.i8[4] & 1) != 0 && (v25.i8[0])
      {
        return 1;
      }
    }

    *v47 = v24;
    *&v47[16] = v43;
    *&v47[32] = v22;
    *&v47[48] = v42;
    *&v47[64] = v23;
    *&v47[80] = v41;
    *&v47[96] = v18;
    v26 = sub_1C54C();
    if ((v27 & 1) == 0 || (v28 = *(a2 + 56) + 104 * v26, v30 = *(v28 + 16), v29 = *(v28 + 32), v45[0] = *v28, v45[1] = v30, v45[2] = v29, v32 = *(v28 + 64), v31 = *(v28 + 80), v33 = *(v28 + 48), v46 = *(v28 + 96), v45[4] = v32, v45[5] = v31, v45[3] = v33, LOBYTE(v45[0]) != v47[0]))
    {
      sub_A6AC(v47);
      return 0;
    }

    v34 = *(v28 + 56);
    v48[2] = *(v28 + 40);
    v48[3] = v34;
    v49[0] = *(v28 + 72);
    *(v49 + 10) = *(v28 + 82);
    v35 = *(v28 + 24);
    v48[0] = *(v28 + 8);
    v48[1] = v35;
    v50[2] = *&v47[40];
    v50[3] = *&v47[56];
    v51[0] = *&v47[72];
    *(v51 + 10) = *&v47[82];
    v50[0] = *&v47[8];
    v50[1] = *&v47[24];
    sub_A650(v45, v44);
    v36 = sub_78C8(v48, v50);
    sub_A6AC(v47);
    result = sub_A6AC(v45);
    if (!v36)
    {
      return 0;
    }
  }

  if (i <= v3 + 1)
  {
    v11 = v3 + 1;
  }

  else
  {
    v11 = i;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v13 >= i)
    {
      v18 = 0;
      v7 = 0;
      v42 = 0u;
      v43 = 0u;
      v24 = xmmword_5A580;
      v22 = 0uLL;
      v23 = 0uLL;
      v41 = 0u;
      goto LABEL_16;
    }

    v14 = *(v4 + 8 * v13);
    ++v3;
    if (v14)
    {
      v7 = (v14 - 1) & v14;
      v10 = __clz(__rbit64(v14)) | (v13 << 6);
      v3 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4DA00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v43 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v44 = v7;
  v45 = result;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v52 = (v6 - 1) & v6;
LABEL_16:
    v51 = v3;
    v11 = v8 | (v3 << 6);
    v12 = *(*(result + 56) + 8 * v11);
    v13 = *(*(result + 48) + 8 * v11);

    v14 = sub_1BEC0(v13);
    v16 = v15;

    if ((v16 & 1) == 0 || (v17 = *(*(v2 + 56) + 8 * v14), v18 = *(v17 + 16), v18 != *(v12 + 16)))
    {
LABEL_44:

      return 0;
    }

    if (v18 && v17 != v12)
    {
      v19 = v17 + 32;
      v54 = v12 + 32;

      v20 = 0;
      v48 = v2;
      v49 = result;
      v50 = v12;
      v46 = v19;
      v47 = v18;
      while (v20 < *(result + 16))
      {
        if (v20 >= *(v12 + 16))
        {
          goto LABEL_49;
        }

        v21 = *(v19 + 8 * v20);
        v22 = *(v54 + 8 * v20);
        if (v21 != v22)
        {
          if (*(v21 + 16) != *(v22 + 16))
          {

            goto LABEL_44;
          }

          v53 = v20;
          v23 = v21 + 64;
          v24 = 1 << *(v21 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v21 + 64);
          v27 = (v24 + 63) >> 6;

          v28 = 0;
          while (v26)
          {
            v29 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
LABEL_38:
            v32 = v29 | (v28 << 6);
            v33 = *(v21 + 56);
            v34 = v21;
            v35 = (*(v21 + 48) + 16 * v32);
            v36 = *v35;
            v37 = v35[1];
            v38 = *(v33 + 8 * v32);

            v39 = sub_1BE04(v36, v37);
            v41 = v40;

            if (v41)
            {
              v42 = *(*(v22 + 56) + 8 * v39);
              v21 = v34;
              if (v42 == v38)
              {
                continue;
              }
            }

            goto LABEL_44;
          }

          v30 = v28;
          while (1)
          {
            v28 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v28 >= v27)
            {

              v2 = v48;
              result = v49;
              v12 = v50;
              v19 = v46;
              v18 = v47;
              v20 = v53;
              goto LABEL_22;
            }

            v31 = *(v23 + 8 * v28);
            ++v30;
            if (v31)
            {
              v29 = __clz(__rbit64(v31));
              v26 = (v31 - 1) & v31;
              goto LABEL_38;
            }
          }

          __break(1u);
          goto LABEL_47;
        }

LABEL_22:
        if (++v20 == v18)
        {

          goto LABEL_8;
        }
      }

      goto LABEL_48;
    }

LABEL_8:

    v7 = v44;
    result = v45;
    v3 = v51;
    v6 = v52;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v43 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
      goto LABEL_16;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

char *sub_4DD2C(char *a1, int64_t a2, char a3)
{
  result = sub_FAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4DD4C(char *a1, int64_t a2, char a3)
{
  result = sub_F994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_4DD6C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BE7C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_C074();
      goto LABEL_7;
    }

    sub_B4A4(v13, a3 & 1);
    v19 = sub_1BE7C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_CA98(a2, v21);
      return sub_10AC0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_54C08();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_777C(v17);

  return sub_CB50(a1, v17);
}

uint64_t sub_4DEB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BE04(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_C218();
      v11 = v19;
      goto LABEL_8;
    }

    sub_B75C(v16, a4 & 1);
    v11 = sub_1BE04(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_54C08();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_5153C(a1, v22);
  }

  else
  {
    sub_10B3C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_4E000(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      v14 = 16 * v12;
      v15 = v13 + 16 * v12;
      if (result != v13 || result >= v15)
      {
        v17 = a3;
        v18 = a5;
        v19 = a4;
        result = memmove(result, v13, v14);
        a4 = v19;
        a5 = v18;
        a3 = v17;
      }

      v20 = *(v8 + 16);
      v11 = __OFADD__(v20, v7);
      v21 = v20 + v7;
      if (!v11)
      {
        *(v8 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    *(v9 + 8) = a5 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_4E0D4(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v17[4] = &off_70408;
  v17[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id] = 10;
  v5 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap;
  *&a2[v5] = sub_50FAC(_swiftEmptyArrayStorage);
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount] = 0;
  sub_89B8(v17, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator]);
  v6 = [objc_allocWithZone(DASession) init];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session] = v6;
  v16.receiver = a2;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, "init");
  v8 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session;
  v9 = *&v7[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  aBlock[4] = sub_510E8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF24;
  aBlock[3] = &unk_70590;
  v11 = _Block_copy(aBlock);
  v12 = v7;
  v13 = v9;

  [v13 setEventHandler:v11];
  _Block_release(v11);

  [*&v7[v8] activate];
  sub_777C(v17);
  return v12;
}

id sub_4E29C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v20[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v20[4] = &off_70408;
  v20[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id] = 4;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables] = &_swiftEmptySetSingleton;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers] = &_swiftEmptySetSingleton;
  v8 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID];
  *v8 = 0xD000000000000016;
  v8[1] = 0x800000000005EAF0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount] = 0;
  sub_89B8(v20, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator]);
  v9 = [objc_allocWithZone(FPAccessControlManager) init];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager] = v9;
  v19.receiver = a2;
  v19.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = objc_opt_self();
  v12 = v10;
  result = [v11 defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = v12;
    [v14 addObserver:v15];

    v16 = sub_547D8();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    sub_12270(0, 0, v7, &unk_5A800, v17);

    sub_777C(v20);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_4E4F0(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v29[4] = &off_70408;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id] = 5;
  v6 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthKitUIAuthorizationDidUpdateNotification];
  *v6 = 0xD000000000000026;
  v6[1] = 0x800000000005EAC0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_notifyToken] = 0;
  v29[3] = v5;
  v29[0] = a1;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_studiesCount] = 0;
  v7 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString];
  sub_54078();
  LOWORD(v26) = 256;
  *v7 = sub_541D8();
  *(v7 + 1) = v8;
  v7[16] = v9 & 1;
  *(v7 + 3) = v10;
  sub_89B8(v29, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator]);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthStore;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthStore] = v11;
  v13 = [objc_allocWithZone(HKSourceListDataSource) initWithHealthStore:v11];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource] = v13;
  v14 = [objc_allocWithZone(HKAuthorizationStore) initWithHealthStore:*&a2[v12]];
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthAuthorizationStore] = v14;
  v28.receiver = a2;
  v28.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v28, "init");
  v16 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource;
  v17 = *&v15[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource];
  v18 = v15;
  [v17 fetchSources];
  [*&v15[v16] registerObserver:v18];
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);

  v19 = sub_54878();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_51204;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF90;
  aBlock[3] = &unk_706A8;
  v21 = _Block_copy(aBlock);

  v22 = sub_546B8();

  v23 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_notifyToken;
  swift_beginAccess();
  notify_register_dispatch((v22 + 32), &v18[v23], v19, v21);
  swift_endAccess();

  _Block_release(v21);

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v25 = result;
    [result addObserver:v18];

    sub_777C(v29);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4E854(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v18[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v18[4] = &off_70408;
  v18[0] = a1;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id] = 0;
  v8 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_findMy];
  *v8 = 0xD00000000000002FLL;
  v8[1] = 0x800000000005EB10;
  v9 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundleId];
  *v9 = 0x6449656C646E7542;
  v9[1] = 0xE800000000000000;
  v10 = &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundlePath];
  *v10 = 0x6150656C646E7542;
  v10[1] = 0xEA00000000006874;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables] = &_swiftEmptySetSingleton;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState] = 0;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled] = 0;
  a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount] = 0;
  *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount] = 0;
  sub_89B8(v18, &a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator]);
  v17.receiver = a2;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, "init");
  sub_547B8();
  v12 = sub_547D8();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v14 = v11;
  sub_18D0C(0, 0, v7, &unk_57850, v13);

  sub_47F8(v7, &qword_777B8, &qword_57750);
  sub_777C(v18);
  return v14;
}

uint64_t sub_4EAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-1] - v5;
  v11[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v11[4] = &off_70408;
  v11[0] = a1;
  *(a2 + 16) = 7;
  *(a2 + 24) = 0;
  sub_89B8(v11, a2 + 40);
  *(a2 + 32) = [objc_allocWithZone(DASession) init];
  v7 = sub_547D8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_12270(0, 0, v6, &unk_5A7E0, v8);

  sub_777C(v11);
  return a2;
}

uint64_t sub_4EC58(uint64_t a1, uint64_t a2)
{
  v23[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v23[4] = &off_70408;
  v23[0] = a1;
  *(a2 + 16) = 23;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = &_swiftEmptySetSingleton;
  *(a2 + 44) = 0;
  *(a2 + 88) = 0xD00000000000001CLL;
  *(a2 + 96) = 0x800000000005D2C0;
  *(a2 + 104) = 0xD000000000000028;
  *(a2 + 112) = 0x800000000005EA90;
  sub_89B8(v23, a2 + 48);
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v4 = sub_54878();
  v21 = sub_510F0;
  v22 = a2;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_3EF90;
  v20 = &unk_705B8;
  v5 = _Block_copy(&aBlock);

  v6 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v6 + 32), (a2 + 44), v4, v5);
  swift_endAccess();

  _Block_release(v5);

  v7 = sub_54878();
  v21 = sub_510F8;
  v22 = a2;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_3EF90;
  v20 = &unk_705E0;
  v8 = _Block_copy(&aBlock);

  v9 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v9 + 32), (a2 + 40), v7, v8);
  swift_endAccess();

  _Block_release(v8);

  if (&_SRIsDataCollectionEnabled)
  {
    v10 = sub_44BC(&qword_777B8, &qword_57750);
    __chkstk_darwin(v10 - 8);
    v12 = &v16 - v11;
    sub_547B8();
    v13 = sub_547D8();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;

    sub_18D0C(0, 0, v12, &unk_579D0, v14);

    sub_47F8(v12, &qword_777B8, &qword_57750);
    sub_777C(v23);
  }

  else
  {
    sub_777C(v23);
  }

  return a2;
}

uint64_t sub_4F010(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v8 = sub_44BC(&qword_79288, &qword_5A6C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_44BC(&qword_79358, &qword_5A7E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = sub_44BC(&qword_79360, &unk_5A7F0);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  v33[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v33[4] = &off_70408;
  v33[0] = a3;
  *(a4 + 40) = &_swiftEmptySetSingleton;
  *(a4 + 48) = 0;
  *(a4 + 52) = 0;
  *(a4 + 96) = 0xD00000000000001CLL;
  *(a4 + 104) = 0x800000000005D2C0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = 0;
  sub_89B8(v33, a4 + 56);
  swift_beginAccess();

  sub_44BC(&qword_77DE8, &qword_57BB8);
  v31 = a2;
  sub_53D28();
  swift_endAccess();
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v19 = sub_54878();
  v32 = v19;
  v20 = sub_54858();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_489C(&qword_79368, &qword_79358, &qword_5A7E8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_4B5E8();
  sub_53D78();
  sub_47F8(v10, &qword_79288, &qword_5A6C8);
  (*(v12 + 8))(v14, v11);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79370, &qword_79360, &unk_5A7F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v21 = v28;
  sub_53D98();

  (*(v29 + 8))(v18, v21);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  if (v30 == 1)
  {
    v22 = sub_548B8();
    v23 = *(v22 - 8);
    __chkstk_darwin(v22);
    v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = [objc_opt_self() defaultCenter];
    if (qword_76FA8 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_weakInit();

    sub_11EB8();
    sub_53D98();

    (*(v23 + 8))(v25, v22);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();

    sub_1ED98();
  }

  else
  {
  }

  sub_777C(v33);
  return a4;
}

uint64_t sub_4F604(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_79288, &qword_5A6C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_44BC(&qword_79358, &qword_5A7E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_44BC(&qword_79360, &unk_5A7F0);
  v16 = *(v15 - 8);
  v24 = v15;
  v25 = v16;
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  v27[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v27[4] = &off_70408;
  v27[0] = a3;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0xD00000000000001CLL;
  *(a4 + 120) = 0x800000000005D2C0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_89B8(v27, a4 + 72);
  swift_beginAccess();

  sub_44BC(&qword_77DE8, &qword_57BB8);
  sub_53D28();
  swift_endAccess();
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v19 = sub_54878();
  v26 = v19;
  v20 = sub_54858();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_489C(&qword_79368, &qword_79358, &qword_5A7E8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_4B5E8();
  sub_53D78();
  sub_47F8(v10, &qword_79288, &qword_5A6C8);
  (*(v12 + 8))(v14, v11);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79370, &qword_79360, &unk_5A7F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v21 = v24;
  v22 = sub_53D98();

  (*(v25 + 8))(v18, v21);
  sub_777C(v27);
  *(a4 + 56) = v22;

  return a4;
}

uint64_t sub_4FA00(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v6[4] = &off_70408;
  v6[0] = a1;
  *(a2 + 16) = 40;
  *(a2 + 64) = sub_54638();
  *(a2 + 72) = AMFIShouldShowDeveloperModeSettings();
  sub_89B8(v6, a2 + 24);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, a2, sub_24344, *(a2 + 64), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_777C(v6);
  return a2;
}

uint64_t sub_4FAC4(uint64_t a1, uint64_t a2)
{
  v25[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v25[4] = &off_70408;
  v25[0] = a1;
  v23 = a2;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  a2 += 64;
  *(a2 - 48) = 5;
  sub_89B8(v25, a2 - 40);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_548B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultCenter];
  if (qword_76FB8 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v12 = [objc_opt_self() mainRunLoop];
  v24 = v12;
  v13 = sub_44BC(&qword_792C0, &qword_5A730);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_54968();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v15, &qword_792C0, &qword_5A730);
  (*(v8 + 8))(v10, v7);

  swift_allocObject();
  v17 = v23;
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v22;
  sub_53D98();

  (*(v21 + 8))(v6, v18);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v25);
  return v17;
}

uint64_t sub_4FECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v30[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v30[4] = &off_70408;
  v30[0] = a1;
  *(a2 + 16) = 37;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  v28 = a2 + 64;
  *(a2 + 72) = 0;
  sub_89B8(v30, a2 + 24);
  sub_547B8();
  v7 = sub_547D8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;

  sub_18D0C(0, 0, v6, &unk_5A7D8, v9);

  sub_47F8(v6, &qword_777B8, &qword_57750);
  v10 = sub_44BC(&qword_79338, &unk_5A7C8);
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_548B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultCenter];
  if (qword_76FC0 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v18 = [objc_opt_self() mainRunLoop];
  v29 = v18;
  v19 = sub_44BC(&qword_792C0, &qword_5A730);
  __chkstk_darwin(v19 - 8);
  v21 = &v25 - v20;
  v22 = sub_54968();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v21, &qword_792C0, &qword_5A730);
  (*(v14 + 8))(v16, v13);

  swift_allocObject();
  swift_weakInit();

  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v27;
  sub_53D98();

  (*(v26 + 8))(v12, v23);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v30);
  return a2;
}

uint64_t sub_50408(uint64_t a1, uint64_t a2)
{
  v23[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v23[4] = &off_70408;
  v23[0] = a1;
  *(a2 + 16) = 36;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  sub_89B8(v23, a2 + 24);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_548B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultCenter];
  sub_548C8();

  v13 = [objc_opt_self() mainRunLoop];
  v22 = v13;
  v14 = sub_44BC(&qword_792C0, &qword_5A730);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_54968();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v16, &qword_792C0, &qword_5A730);
  (*(v9 + 8))(v11, v8);

  swift_allocObject();
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v20;
  sub_53D98();

  (*(v21 + 8))(v7, v18);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v23);
  return a2;
}

uint64_t sub_507D8(uint64_t a1, uint64_t a2)
{
  v25[3] = type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  v25[4] = &off_70408;
  v25[0] = a1;
  v23 = a2;
  *(a2 + 64) = &_swiftEmptySetSingleton;
  a2 += 64;
  *(a2 - 48) = 38;
  sub_89B8(v25, a2 - 40);
  v4 = sub_44BC(&qword_79338, &unk_5A7C8);
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_548B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  sub_548C8();

  v12 = [objc_opt_self() mainRunLoop];
  v24 = v12;
  v13 = sub_44BC(&qword_792C0, &qword_5A730);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_54968();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_E444(0, &qword_792C8, NSRunLoop_ptr);
  sub_11EB8();
  sub_4B318();
  sub_53D78();
  sub_47F8(v15, &qword_792C0, &qword_5A730);
  (*(v8 + 8))(v10, v7);

  swift_allocObject();
  v17 = v23;
  swift_weakInit();
  sub_489C(&qword_79340, &qword_79338, &unk_5A7C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v22;
  sub_53D98();

  (*(v21 + 8))(v6, v18);
  swift_beginAccess();
  sub_53CB8();
  swift_endAccess();

  sub_777C(v25);
  return v17;
}

uint64_t sub_50BE0(uint64_t *a1)
{
  v1 = *a1;
  v10[3] = v1;
  v10[4] = &off_70408;
  v10[0] = a1;
  type metadata accessor for InputAccessoriesListItemProvider();
  v2 = swift_allocObject();
  v3 = sub_50D68(v10, v1);
  __chkstk_darwin(v3);
  v5 = (v9 - v4);
  (*(v6 + 16))(v9 - v4);
  v7 = *v5;
  v9[3] = v1;
  v9[4] = &off_70408;
  v9[0] = v7;
  *(v2 + 16) = 41;
  sub_89B8(v9, v2 + 24);
  if (sub_2850())
  {
    sub_53A08();
  }

  sub_777C(v9);
  sub_777C(v10);
  return v2;
}

uint64_t sub_50D68(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_50DB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_50DD0()
{
  result = qword_79320;
  if (!qword_79320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79320);
  }

  return result;
}

uint64_t sub_50E38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_267B4(a1, v4, v5, v6);
}

unint64_t sub_50F04()
{
  result = qword_79348;
  if (!qword_79348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79348);
  }

  return result;
}

unint64_t sub_50F58()
{
  result = qword_79350;
  if (!qword_79350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79350);
  }

  return result;
}

unint64_t sub_50FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_772D8, &unk_57280);
    v3 = sub_54B88();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BE04(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_510B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51100()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_51140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_1C550(a1, v4, v5, v6);
}

uint64_t sub_51210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_11F5C(a1, v4, v5, v6);
}

uint64_t sub_512CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_5130C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_772E0, &qword_5A820);
    v3 = sub_54B88();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1BEC0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_51404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_79390, &qword_5A818);
    v3 = sub_54B88();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BE04(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_51500()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_515D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_515E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_5162C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_793F0, &qword_5AA60);
    v3 = sub_54B88();
    v4 = a1 + 32;

    while (1)
    {
      sub_4790(v4, &v13, &qword_793F8, &qword_5AA68);
      v5 = v13;
      v6 = v14;
      result = sub_1BE04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_CB50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5175C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_5181C(uint64_t a1)
{
  v2 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51878()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_515D4(v1, v3);
  return sub_515E4(v4, v5);
}

uint64_t sub_518C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5194C()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

unint64_t sub_519B4()
{
  result = qword_793E0;
  if (!qword_793E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_793E0);
  }

  return result;
}

unint64_t sub_51A0C()
{
  result = qword_793E8;
  if (!qword_793E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_793E8);
  }

  return result;
}

id sub_51B54()
{
  type metadata accessor for FindPrivacyAndSecuritySettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_7BBF8 = result;
  return result;
}

uint64_t sub_51BAC()
{
  v0 = sub_53908();
  sub_51C48(v0, qword_7BC00);
  v1 = sub_7700(v0, qword_7BC00);
  *v1 = type metadata accessor for FindPrivacyAndSecuritySettingsClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_51C48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_51CF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_53C38();
  sub_51C48(v5, a2);
  sub_7700(v5, a2);

  return sub_53C28();
}

uint64_t sub_51D80()
{
  v0 = sub_53C38();
  sub_51C48(v0, qword_7BC48);
  sub_7700(v0, qword_7BC48);

  return sub_53C28();
}

BOOL sub_51F00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v21[1] = a8;
  v8 = sub_53FD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_53FC8();
  v12 = sub_541A8();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);
  v21[5] = v12;
  v21[6] = v14;
  sub_53FC8();
  v16 = sub_541A8();
  v18 = v17;
  v15(v11, v8);
  v21[2] = v16;
  v21[3] = v18;
  sub_A700();
  v19 = sub_549C8();

  return v19 == -1;
}

unint64_t sub_520A4()
{
  result = qword_794A8;
  if (!qword_794A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_794A8);
  }

  return result;
}

unint64_t sub_52120()
{
  result = qword_79548;
  if (!qword_79548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79548);
  }

  return result;
}

uint64_t sub_52190(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_547A8();
  v2[3] = sub_54798();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_52258;

  return sub_48864(a1, a2);
}

uint64_t sub_52258()
{

  v1 = sub_54788();

  return _swift_task_switch(sub_52394, v1, v0);
}

uint64_t sub_52394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_523F4()
{
  v0 = sub_44BC(&qword_79550, &qword_5ABA8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for PrivacyAndSecuritySettingsList(0);
  sub_525C8();

  sub_545A8();
  sub_526CC();

  sub_54538();
  return (*(v1 + 8))(v3, v0);
}

char *sub_5254C@<X0>(char **a1@<X8>)
{
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
  swift_allocObject();
  result = sub_44070();
  *a1 = result;
  return result;
}

void *sub_5258C@<X0>(uint64_t *a1@<X8>)
{

  return sub_3BCD4(a1);
}

unint64_t sub_525C8()
{
  result = qword_79558;
  if (!qword_79558)
  {
    type metadata accessor for PrivacyAndSecuritySettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79558);
  }

  return result;
}

uint64_t sub_52620(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13F74;

  return sub_52190(a1, a2);
}

unint64_t sub_526CC()
{
  result = qword_79560;
  if (!qword_79560)
  {
    sub_4590(&qword_79550, &qword_5ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79560);
  }

  return result;
}

uint64_t sub_52740()
{
  sub_4590(&qword_79550, &qword_5ABA8);
  sub_526CC();
  return swift_getOpaqueTypeConformance2();
}

char *sub_527A4()
{
  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel;
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel);
  }

  else
  {
    v3 = v0;
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel(0);
    swift_allocObject();
    v2 = sub_44070();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_52820@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_44BC(&qword_795C0, &qword_5AC28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
  swift_beginAccess();
  sub_53118(v1 + v9, v8);
  v10 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_3E388(v8, a1);
  }

  sub_53188(v8);
  sub_527A4();
  sub_3BCD4(a1);
  sub_531F0(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_53254(v6, v1 + v9);
  return swift_endAccess();
}

void sub_529CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  sub_52820(v5);
  v6 = objc_allocWithZone(sub_44BC(&qword_795B8, &qword_5AC20));
  v7 = sub_540B8();
  v8 = [v7 view];
  if (!v8)
  {
    v9 = v7;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 addSubview:v9];

    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;

      [v9 setFrame:{0.0, 0.0, v15, v17}];
      [v9 setAutoresizingMask:18];
      [v1 addChildViewController:v7];
      [v7 didMoveToParentViewController:v1];

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_52F04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsController(uint64_t a1)
{
  result = qword_795A0;
  if (!qword_795A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_52FDC(uint64_t a1)
{
  sub_53078(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_53078(uint64_t a1)
{
  if (!qword_795B0)
  {
    type metadata accessor for PrivacyAndSecuritySettingsList(255);
    v1 = sub_54998();
    if (!v2)
    {
      atomic_store(v1, &qword_795B0);
    }
  }
}

uint64_t sub_530D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_53118(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53188(uint64_t a1)
{
  v2 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_531F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53254(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_795C0, &qword_5AC28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_532F0(int a1, int a2, int a3, int a4)
{
  if (qword_7BB98 == -1)
  {
    if (qword_7BBA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_537B8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_7BBA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_7BB90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_537D0();
    a3 = v10;
    a4 = v9;
    v8 = dword_7BB80 < v11;
    if (dword_7BB80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_7BB84 > a3)
      {
        return 1;
      }

      if (dword_7BB84 >= a3)
      {
        return dword_7BB88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_7BB80 < a2;
  if (dword_7BB80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_53484(uint64_t result)
{
  v1 = qword_7BBA0;
  if (qword_7BBA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_7BBA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_7BB80, &dword_7BB84, &dword_7BB88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}