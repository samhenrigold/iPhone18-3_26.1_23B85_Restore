uint64_t sub_257D747BC()
{
  v1 = v0;
  v2 = sub_257BE9280(MEMORY[0x277D84F90]);
  v3 = [objc_opt_self() shared];
  v4 = [v3 doorAttributesClassifierProperties];

  if (!v4)
  {
    return v2;
  }

  *&v191 = 0xD000000000000017;
  *(&v191 + 1) = 0x8000000257EF93E0;
  v5 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
  }

  v188 = v191;
  v189 = v192;
  if (!*(&v192 + 1))
  {

    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    return v2;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v2;
  }

  v6 = v190;
  *&v188 = 0x746174536E65704FLL;
  *(&v188 + 1) = 0xE900000000000065;
  v7 = [v190 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x746174536E65704FLL;
    *(&v188 + 1) = 0xE900000000000065;
    v8 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v8)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v184 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v184 = sub_257ECFF10();
  }

  *&v188 = 1702521171;
  *(&v188 + 1) = 0xE400000000000000;
  v10 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 1702521171;
    *(&v188 + 1) = 0xE400000000000000;
    v11 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v183 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v183 = sub_257ECFF10();
  }

  *&v188 = 0x6874654D6E65704FLL;
  *(&v188 + 1) = 0xEA0000000000646FLL;
  v12 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x6874654D6E65704FLL;
    *(&v188 + 1) = 0xEA0000000000646FLL;
    v13 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v13)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v182 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v182 = sub_257ECFF10();
  }

  *&v188 = 0x646E6148726F6F44;
  *(&v188 + 1) = 0xEA0000000000656CLL;
  v14 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x646E6148726F6F44;
    *(&v188 + 1) = 0xEA0000000000656CLL;
    v15 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v15)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v181 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v181 = sub_257ECFF10();
  }

  *&v188 = 0x6863616F72707041;
  *(&v188 + 1) = 0xE800000000000000;
  v16 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x6863616F72707041;
    *(&v188 + 1) = 0xE800000000000000;
    v17 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v17)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v180 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v180 = sub_257ECFF10();
  }

  *&v188 = 0x6570616853;
  *(&v188 + 1) = 0xE500000000000000;
  v18 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x6570616853;
    *(&v188 + 1) = 0xE500000000000000;
    v19 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v19)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v187 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v187 = sub_257ECFF10();
  }

  *&v188 = 0x726F6C6F43;
  *(&v188 + 1) = 0xE500000000000000;
  v20 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x726F6C6F43;
    *(&v188 + 1) = 0xE500000000000000;
    v21 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v21)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v186 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v186 = sub_257ECFF10();
  }

  *&v188 = 0x776F646E6957;
  *(&v188 + 1) = 0xE600000000000000;
  v22 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    *&v188 = 0x776F646E6957;
    *(&v188 + 1) = 0xE600000000000000;
    v23 = [v6 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v23)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v185 = v190;
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v185 = sub_257ECFF10();
  }

  *&v188 = 0x6C6169726574614DLL;
  *(&v188 + 1) = 0xE800000000000000;
  v24 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v24)
  {
    v188 = 0u;
    v189 = 0u;
    sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v26 = sub_257ECFF10();
LABEL_45:
    v27 = *(v1 + 12);
    sub_257ECFA40();
    v179 = v26;
    if (v28 < v27)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      v31 = sub_257ECF4C0();
      v32 = sub_257ECF4C0();
      v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

      v34 = sub_257ECF500();
      v36 = v35;

      v37 = *(v1 + 88);
      LOBYTE(v191) = *(v1 + 24);
      sub_257D7C3D0();
      result = sub_257ED0280();
      if (!*(v37 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      result = sub_257C03F28(&v188);
      if ((v38 & 1) == 0)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v39 = (*(v37 + 56) + 16 * result);
      v40 = *v39;
      v41 = v39[1];

      sub_257C09D10(&v188);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v2;
      sub_257EC729C(v40, v41, v34, v36, isUniquelyReferenced_nonNull_native);

      v2 = v191;
    }

    v43 = *(v1 + 80);
    v44 = *(v1 + 84);
    sub_257ECFA40();
    if (v45 >= v44)
    {
LABEL_53:
      v60 = *(v1 + 72);
      v61 = *(v1 + 76);
      sub_257ECFA40();
      if (v62 >= v61)
      {
LABEL_57:
        v77 = *(v1 + 56);
        v78 = *(v1 + 60);
        sub_257ECFA40();
        if (v79 >= v78)
        {
LABEL_61:
          v94 = *(v1 + 40);
          v95 = *(v1 + 44);
          sub_257ECFA40();
          if (v96 >= v95)
          {
LABEL_65:
            v111 = *(v1 + 32);
            v112 = *(v1 + 36);
            sub_257ECFA40();
            if (v113 >= v112)
            {
LABEL_69:
              v128 = *(v1 + 64);
              v129 = *(v1 + 68);
              sub_257ECFA40();
              if (v130 >= v129 || v128 == 3)
              {
LABEL_74:
                v145 = *(v1 + 16);
                v146 = *(v1 + 20);
                sub_257ECFA40();
                if (v147 >= v146)
                {
LABEL_78:
                  v162 = *(v1 + 24);
                  v163 = *(v1 + 28);
                  sub_257ECFA40();
                  if (v164 >= v163)
                  {

                    return v2;
                  }

                  type metadata accessor for MAGUtilities();
                  v165 = swift_getObjCClassFromMetadata();
                  v166 = [objc_opt_self() bundleForClass_];
                  v167 = sub_257ECF4C0();
                  v168 = sub_257ECF4C0();
                  v169 = [v166 localizedStringForKey:v167 value:0 table:v168];

                  v170 = sub_257ECF500();
                  v172 = v171;

                  v173 = *(v1 + 88);
                  LOBYTE(v191) = v162;
                  sub_257D7C3D0();
                  result = sub_257ED0280();
                  if (*(v173 + 16))
                  {
                    result = sub_257C03F28(&v188);
                    if (v174)
                    {
                      v175 = (*(v173 + 56) + 16 * result);
                      v176 = *v175;
                      v177 = v175[1];

                      sub_257C09D10(&v188);
                      v178 = swift_isUniquelyReferenced_nonNull_native();
                      *&v191 = v2;
                      sub_257EC729C(v176, v177, v170, v172, v178);

                      v2 = v191;

                      return v2;
                    }

                    goto LABEL_101;
                  }

                  goto LABEL_99;
                }

                type metadata accessor for MAGUtilities();
                v148 = swift_getObjCClassFromMetadata();
                v149 = [objc_opt_self() bundleForClass_];
                v150 = sub_257ECF4C0();
                v151 = sub_257ECF4C0();
                v152 = [v149 localizedStringForKey:v150 value:0 table:v151];

                v153 = sub_257ECF500();
                v155 = v154;

                v156 = *(v1 + 88);
                LOBYTE(v191) = v145;
                sub_257D7C424();
                result = sub_257ED0280();
                if (*(v156 + 16))
                {
                  result = sub_257C03F28(&v188);
                  if ((v157 & 1) == 0)
                  {
LABEL_100:
                    __break(1u);
LABEL_101:
                    __break(1u);
                    goto LABEL_102;
                  }

                  v158 = (*(v156 + 56) + 16 * result);
                  v159 = *v158;
                  v160 = v158[1];

                  sub_257C09D10(&v188);
                  v161 = swift_isUniquelyReferenced_nonNull_native();
                  *&v191 = v2;
                  sub_257EC729C(v159, v160, v153, v155, v161);

                  v2 = v191;
                  goto LABEL_78;
                }

                goto LABEL_97;
              }

              type metadata accessor for MAGUtilities();
              v131 = swift_getObjCClassFromMetadata();
              v132 = [objc_opt_self() bundleForClass_];
              v133 = sub_257ECF4C0();
              v134 = sub_257ECF4C0();
              v135 = [v132 localizedStringForKey:v133 value:0 table:v134];

              v136 = sub_257ECF500();
              v138 = v137;

              v139 = *(v1 + 88);
              LOBYTE(v191) = v128;
              sub_257D7C478();
              result = sub_257ED0280();
              if (*(v139 + 16))
              {
                result = sub_257C03F28(&v188);
                if ((v140 & 1) == 0)
                {
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                v141 = (*(v139 + 56) + 16 * result);
                v142 = *v141;
                v143 = v141[1];

                sub_257C09D10(&v188);
                v144 = swift_isUniquelyReferenced_nonNull_native();
                *&v191 = v2;
                sub_257EC729C(v142, v143, v136, v138, v144);

                v2 = v191;
                goto LABEL_74;
              }

              goto LABEL_95;
            }

            type metadata accessor for MAGUtilities();
            v114 = swift_getObjCClassFromMetadata();
            v115 = [objc_opt_self() bundleForClass_];
            v116 = sub_257ECF4C0();
            v117 = sub_257ECF4C0();
            v118 = [v115 localizedStringForKey:v116 value:0 table:v117];

            v119 = sub_257ECF500();
            v121 = v120;

            v122 = *(v1 + 88);
            LOBYTE(v191) = v111;
            sub_257D7C4CC();
            result = sub_257ED0280();
            if (*(v122 + 16))
            {
              result = sub_257C03F28(&v188);
              if ((v123 & 1) == 0)
              {
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

              v124 = (*(v122 + 56) + 16 * result);
              v125 = *v124;
              v126 = v124[1];

              sub_257C09D10(&v188);
              v127 = swift_isUniquelyReferenced_nonNull_native();
              *&v191 = v2;
              sub_257EC729C(v125, v126, v119, v121, v127);

              v2 = v191;
              goto LABEL_69;
            }

            goto LABEL_93;
          }

          type metadata accessor for MAGUtilities();
          v97 = swift_getObjCClassFromMetadata();
          v98 = [objc_opt_self() bundleForClass_];
          v99 = sub_257ECF4C0();
          v100 = sub_257ECF4C0();
          v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

          v102 = sub_257ECF500();
          v104 = v103;

          v105 = *(v1 + 88);
          LOBYTE(v191) = v94;
          sub_257D7C520();
          result = sub_257ED0280();
          if (*(v105 + 16))
          {
            result = sub_257C03F28(&v188);
            if ((v106 & 1) == 0)
            {
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }

            v107 = (*(v105 + 56) + 16 * result);
            v108 = *v107;
            v109 = v107[1];

            sub_257C09D10(&v188);
            v110 = swift_isUniquelyReferenced_nonNull_native();
            *&v191 = v2;
            sub_257EC729C(v108, v109, v102, v104, v110);

            v2 = v191;
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        type metadata accessor for MAGUtilities();
        v80 = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        v82 = sub_257ECF4C0();
        v83 = sub_257ECF4C0();
        v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

        v85 = sub_257ECF500();
        v87 = v86;

        v88 = *(v1 + 88);
        LOBYTE(v191) = v77;
        sub_257D7C574();
        result = sub_257ED0280();
        if (*(v88 + 16))
        {
          result = sub_257C03F28(&v188);
          if ((v89 & 1) == 0)
          {
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v90 = (*(v88 + 56) + 16 * result);
          v91 = *v90;
          v92 = v90[1];

          sub_257C09D10(&v188);
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *&v191 = v2;
          sub_257EC729C(v91, v92, v85, v87, v93);

          v2 = v191;
          goto LABEL_61;
        }

        goto LABEL_89;
      }

      type metadata accessor for MAGUtilities();
      v63 = swift_getObjCClassFromMetadata();
      v64 = [objc_opt_self() bundleForClass_];
      v65 = sub_257ECF4C0();
      v66 = sub_257ECF4C0();
      v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

      v68 = sub_257ECF500();
      v70 = v69;

      v71 = *(v1 + 88);
      LOBYTE(v191) = v60;
      sub_257D7C5C8();
      result = sub_257ED0280();
      if (*(v71 + 16))
      {
        result = sub_257C03F28(&v188);
        if ((v72 & 1) == 0)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v73 = (*(v71 + 56) + 16 * result);
        v74 = *v73;
        v75 = v73[1];

        sub_257C09D10(&v188);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *&v191 = v2;
        sub_257EC729C(v74, v75, v68, v70, v76);

        v2 = v191;
        goto LABEL_57;
      }

      goto LABEL_87;
    }

    type metadata accessor for MAGUtilities();
    v46 = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v48 = sub_257ECF4C0();
    v49 = sub_257ECF4C0();
    v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

    v51 = sub_257ECF500();
    v53 = v52;

    v54 = *(v1 + 88);
    LOBYTE(v191) = v43;
    sub_257D7C61C();
    result = sub_257ED0280();
    if (*(v54 + 16))
    {
      result = sub_257C03F28(&v188);
      if ((v55 & 1) == 0)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v56 = (*(v54 + 56) + 16 * result);
      v57 = *v56;
      v58 = v56[1];

      sub_257C09D10(&v188);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v2;
      sub_257EC729C(v57, v58, v51, v53, v59);

      v2 = v191;
      goto LABEL_53;
    }

    goto LABEL_85;
  }

  sub_257ED0160();
  swift_unknownObjectRelease();
  sub_257BE4084(&v188, &unk_27F8F62F0, &unk_257ED9D30);
  *&v188 = 0x6C6169726574614DLL;
  *(&v188 + 1) = 0xE800000000000000;
  v25 = [v6 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v25)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v191, &v188);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v26 = v190;
    goto LABEL_45;
  }

LABEL_110:
  __break(1u);
  return result;
}

void sub_257D7634C()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 doorAttributesClassifierProperties];

  if (!v2)
  {
    return;
  }

  *&v95 = 0xD000000000000017;
  *(&v95 + 1) = 0x8000000257EF93E0;
  v3 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
  }

  v90 = v96;
  v89 = v95;
  if (!*(&v96 + 1))
  {
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    goto LABEL_11;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return;
  }

  v88 = v0;
  v4 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0, &qword_257EDB558);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EE2EF0;
  *(v5 + 32) = 5;
  *&v89 = 0x6570616853;
  *(&v89 + 1) = 0xE500000000000000;
  v6 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x6570616853;
    *(&v89 + 1) = 0xE500000000000000;
    v7 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_101;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v8 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v8 = sub_257ECFF10();
  }

  *(v5 + 40) = v8;
  *(v5 + 48) = 0;
  *&v89 = 0x6863616F72707041;
  *(&v89 + 1) = 0xE800000000000000;
  v9 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x6863616F72707041;
    *(&v89 + 1) = 0xE800000000000000;
    v10 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v10)
    {
      goto LABEL_102;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v11 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v11 = sub_257ECFF10();
  }

  *(v5 + 56) = v11;
  *(v5 + 64) = 3;
  *&v89 = 0x6874654D6E65704FLL;
  *(&v89 + 1) = 0xEA0000000000646FLL;
  v12 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x6874654D6E65704FLL;
    *(&v89 + 1) = 0xEA0000000000646FLL;
    v13 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v13)
    {
      goto LABEL_103;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v14 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v14 = sub_257ECFF10();
  }

  *(v5 + 72) = v14;
  *(v5 + 80) = 6;
  *&v89 = 1702521171;
  *(&v89 + 1) = 0xE400000000000000;
  v15 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 1702521171;
    *(&v89 + 1) = 0xE400000000000000;
    v16 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v16)
    {
      goto LABEL_104;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v17 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v17 = sub_257ECFF10();
  }

  *(v5 + 88) = v17;
  *(v5 + 96) = 2;
  *&v89 = 0x646E6148726F6F44;
  *(&v89 + 1) = 0xEA0000000000656CLL;
  v18 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x646E6148726F6F44;
    *(&v89 + 1) = 0xEA0000000000656CLL;
    v19 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_105;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v20 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v20 = sub_257ECFF10();
  }

  *(v5 + 104) = v20;
  *(v5 + 112) = 7;
  *&v89 = 0x776F646E6957;
  *(&v89 + 1) = 0xE600000000000000;
  v21 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x776F646E6957;
    *(&v89 + 1) = 0xE600000000000000;
    v22 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v22)
    {
      goto LABEL_106;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v23 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v23 = sub_257ECFF10();
  }

  *(v5 + 120) = v23;
  *(v5 + 128) = 1;
  *&v89 = 0x726F6C6F43;
  *(&v89 + 1) = 0xE500000000000000;
  v24 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x726F6C6F43;
    *(&v89 + 1) = 0xE500000000000000;
    v25 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v25)
    {
      goto LABEL_107;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v26 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v26 = sub_257ECFF10();
  }

  *(v5 + 136) = v26;
  *(v5 + 144) = 8;
  *&v89 = 0x6C6169726574614DLL;
  *(&v89 + 1) = 0xE800000000000000;
  v27 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v82 = v2;
  v81 = v4;
  if (v27)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    *&v89 = 0x6C6169726574614DLL;
    *(&v89 + 1) = 0xE800000000000000;
    v28 = [v4 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (!v28)
    {
      goto LABEL_108;
    }

    sub_257ED0160();
    swift_unknownObjectRelease();
    sub_257BEBE08(&v95, &v89);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    swift_dynamicCast();
    v29 = v93;
  }

  else
  {
    v90 = 0u;
    v89 = 0u;
    sub_257BE4084(&v89, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
    v29 = sub_257ECFF10();
  }

  *(v5 + 152) = v29;
  v30 = sub_257BE82F8(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0, &qword_257EDB560);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B70, &unk_257EE73F8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_257EE2EF0;
  *(v31 + 32) = 5;
  v85 = *(v88 + 8);
  *(v31 + 36) = *(v88 + 12);
  *(v31 + 40) = 0;
  v84 = *(v88 + 16);
  *(v31 + 44) = *(v88 + 20);
  *(v31 + 48) = 3;
  v83 = *(v88 + 32);
  *(v31 + 52) = *(v88 + 36);
  *(v31 + 56) = 6;
  v32 = *(v88 + 40);
  *(v31 + 60) = *(v88 + 44);
  *(v31 + 64) = 2;
  v33 = *(v88 + 64);
  *(v31 + 68) = *(v88 + 68);
  *(v31 + 72) = 7;
  v34 = *(v88 + 72);
  *(v31 + 76) = *(v88 + 76);
  *(v31 + 80) = 1;
  v35 = *(v88 + 80);
  *(v31 + 84) = *(v88 + 84);
  *(v31 + 88) = 8;
  v36 = *(v88 + 24);
  *(v31 + 92) = *(v88 + 28);
  v37 = sub_257BE83FC(v31);
  swift_setDeallocating();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B18, &qword_257EE7370);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_257EE2EF0;
  *(v38 + 32) = 5;
  *(v38 + 64) = &type metadata for DoorAttributeModelHeads.Shape;
  *(v38 + 40) = v85;
  *(v38 + 72) = 0;
  *(v38 + 104) = &type metadata for DoorAttributeModelHeads.Approach;
  *(v38 + 80) = v84;
  *(v38 + 112) = 3;
  *(v38 + 144) = &type metadata for DoorAttributeModelHeads.OpenMethod;
  *(v38 + 120) = v83;
  *(v38 + 152) = 6;
  *(v38 + 184) = &type metadata for DoorAttributeModelHeads.Size;
  *(v38 + 160) = v32;
  *(v38 + 192) = 2;
  *(v38 + 224) = &type metadata for DoorAttributeModelHeads.DoorHandle;
  *(v38 + 200) = v33;
  *(v38 + 232) = 7;
  *(v38 + 264) = &type metadata for DoorAttributeModelHeads.Window;
  *(v38 + 240) = v34;
  *(v38 + 272) = 1;
  *(v38 + 304) = &type metadata for DoorAttributeModelHeads.Color;
  *(v38 + 280) = v35;
  *(v38 + 312) = 8;
  *(v38 + 344) = &type metadata for DoorAttributeModelHeads.Material;
  *(v38 + 320) = v36;
  v39 = sub_257BE8424(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5630, &qword_257EDA588);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = (*v88 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v41 = v40[1];
  v42 = v40[2];
  *&v89 = *v40;
  *(&v89 + 1) = v41;
  *&v90 = v42;
  v43 = qword_2815447E0;

  if (v43 != -1)
  {
LABEL_94:
    v44 = swift_once();
  }

  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
  sub_257ECFD50();

  v49 = v95;
  v50 = *(v95 + 16);
  if (!v50)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_87:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_257ED6D30;
    *&v89 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257D7CDE8();
    v76 = sub_257ECF420();
    v78 = v77;

    *(v75 + 56) = MEMORY[0x277D837D0];
    *(v75 + 64) = sub_257BFB13C();
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    sub_257ECF540();
    v79 = sub_257ECF4C0();

    v80 = [v79 axCapitalizeFirstLetter];

    if (!v80)
    {
      goto LABEL_96;
    }

    sub_257ECF500();

    return;
  }

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
  v87 = v39;
  v86 = v30;
  while (1)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v53 = *(v49 + 32 + v51);
    if (v53 != 4)
    {
      if (!*(v37 + 16))
      {
        goto LABEL_90;
      }

      v54 = sub_257C09E78();
      if ((v55 & 1) == 0)
      {
        goto LABEL_91;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_92;
      }

      v56 = *(*(v37 + 56) + 4 * v54);
      v57 = sub_257C09E78();
      if ((v58 & 1) == 0)
      {
        goto LABEL_93;
      }

      v59 = *(*(v30 + 56) + 8 * v57);
      sub_257ECFA40();
      v61 = v60;

      if (v61 <= v56)
      {
        break;
      }
    }

LABEL_46:
    if (v50 == ++v51)
    {
      goto LABEL_87;
    }
  }

  if (*(v39 + 16) && (v62 = sub_257C09E78(), (v63 & 1) != 0))
  {
    sub_257BE41F4(*(v39 + 56) + 32 * v62, &v95);
    if (v53 > 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    if (v53 > 1)
    {
LABEL_57:
      if (v53 == 2)
      {
        sub_257C3D6F8(&v95, &v93);
        if (!v94)
        {
          goto LABEL_98;
        }

        sub_257BEBE08(&v93, &v89);
        swift_dynamicCast();
        if (v91 != 3)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v53 != 7)
        {
          goto LABEL_76;
        }

        sub_257C3D6F8(&v95, &v93);
        if (!v94)
        {
          goto LABEL_97;
        }

        sub_257BEBE08(&v93, &v89);
        swift_dynamicCast();
        if (v91)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_45;
    }
  }

  if (v53)
  {
    sub_257C3D6F8(&v95, &v93);
    if (!v94)
    {
      goto LABEL_99;
    }

    sub_257BEBE08(&v93, &v89);
    swift_dynamicCast();
    if (v91 != 9)
    {
      sub_257C3D6F8(&v95, &v93);
      if (!v94)
      {
        goto LABEL_109;
      }

      sub_257BEBE08(&v93, &v89);
      swift_dynamicCast();
      if (v91 != 7)
      {
        sub_257C3D6F8(&v95, &v93);
        if (!v94)
        {
          goto LABEL_110;
        }

        sub_257BEBE08(&v93, &v89);
        swift_dynamicCast();
        if (v91 != 6)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_45;
  }

  sub_257C3D6F8(&v95, &v93);
  if (!v94)
  {
    goto LABEL_100;
  }

  sub_257BEBE08(&v93, &v89);
  swift_dynamicCast();
  if (!v91)
  {
LABEL_45:
    sub_257BE4084(&v95, &unk_27F8F62F0, &unk_257ED9D30);
    goto LABEL_46;
  }

LABEL_76:
  sub_257C3D6F8(&v95, &v91);
  if (v92)
  {
    v64 = *(v88 + 88);
    sub_257BEBE08(&v91, &v93);
    swift_dynamicCast();
    if (*(v64 + 16) && (v65 = sub_257C03F28(&v89), (v66 & 1) != 0))
    {
      v67 = (*(v64 + 56) + 16 * v65);
      v69 = *v67;
      v68 = v67[1];
    }

    else
    {
      v69 = 0;
      v68 = 0xE000000000000000;
    }

    sub_257C09D10(&v89);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_257BFCB3C(0, *(v52 + 2) + 1, 1, v52);
    }

    v70 = v52;
    v71 = *(v52 + 2);
    v72 = v70;
    v73 = *(v70 + 3);
    if (v71 >= v73 >> 1)
    {
      v72 = sub_257BFCB3C((v73 > 1), v71 + 1, 1, v72);
    }

    sub_257BE4084(&v95, &unk_27F8F62F0, &unk_257ED9D30);
    *(v72 + 2) = v71 + 1;
    v74 = &v72[16 * v71];
    v52 = v72;
    *(v74 + 4) = v69;
    *(v74 + 5) = v68;
    v39 = v87;
    v30 = v86;
    goto LABEL_46;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
}

unint64_t sub_257D77B3C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D7C7DC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_257D77B68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D7C7EC(*a1);
  *a2 = result;
  return result;
}

void sub_257D77B94(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      sub_257C09CB4(*(a1 + 48) + 40 * v12, &v26);
      v13 = (*(a1 + 56) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v24 = v26;
      v25 = v27;
      v16 = v28;
      v17 = *(&v27 + 1);

      if (!v17)
      {
        return;
      }

      v26 = v24;
      v27 = v25;
      v28 = v16;
      v18 = sub_257C03F28(&v26);
      v20 = v19;
      sub_257C09D10(&v26);
      if ((v20 & 1) == 0)
      {

        return;
      }

      v21 = (*(a2 + 56) + 16 * v18);
      if (*v21 == v15 && v14 == v21[1])
      {
      }

      else
      {
        v23 = sub_257ED0640();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_257D77D44(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 48) + v12);
      v14 = (*(a1 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];

      if (v15 == 1)
      {
        return;
      }

      v17 = sub_257C03FE4(v13);
      if ((v18 & 1) == 0)
      {
LABEL_27:

        return;
      }

      v19 = (*(a2 + 56) + 16 * v17);
      v20 = v19[1];
      if (v20)
      {
        if (!v15)
        {
          return;
        }

        if (*v19 == v16 && v20 == v15)
        {
        }

        else
        {
          v22 = sub_257ED0640();

          if ((v22 & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_27;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_257D78028()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257D78084(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v50 = &v49 - v9;
  v10 = sub_257ECDA30();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECCB70();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20, v21, v22, v23);
  v24 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v49 - v30;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v32 = objc_allocWithZone(MEMORY[0x277CBFF38]);
  v52 = a1;
  sub_257ECC3F0();
  v51 = [v32 init];
  v33 = [objc_opt_self() shared];
  v34 = [v33 doorAttributesClassifierModelPath];

  if (v34)
  {
    sub_257ECCB20();

    v35 = sub_257ECF930();
    v36 = v50;
    (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
    (*(v18 + 16))(v24, v31, v17);
    v37 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v38 = (v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    (*(v18 + 32))(v39 + v37, v24, v17);
    v40 = v51;
    *(v39 + v38) = v51;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v41 = v40;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v36, &unk_257EE73F0, v39);

    (*(v18 + 8))(v31, v17);
    return v2;
  }

  else
  {
    v43 = v49;
    v44 = v10;
    v45 = v51;
    sub_257ECD450();
    v46 = sub_257ECDA20();
    v47 = sub_257ECFBD0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_257BAC000, v46, v47, "Door Attributes Classifier URL is not available", v48, 2u);
      MEMORY[0x259C74820](v48, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v16, v44);
    return v2;
  }
}

uint64_t sub_257D784B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68, 0x277CBFF20);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257D78694;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257D78694()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257D7D26C;
  }

  else
  {
    v2 = sub_257D7D278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D787B0()
{
  v0 = sub_257ECDA30();
  v45 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v43 - v11;
  v13 = sub_257ECCB70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16, v17, v18, v19);
  v20 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v27 = &v43 - v26;
  v28 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v29 = [objc_opt_self() shared];
  v30 = [v29 doorAttributesClassifierModelPath];

  if (v30)
  {
    sub_257ECCB20();

    v31 = sub_257ECF930();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    (*(v14 + 16))(v20, v27, v13);
    v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    (*(v14 + 32))(v34 + v32, v20, v13);
    *(v34 + v33) = v28;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
    v35 = v28;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v12, &unk_257EE73D8, v34);

    return (*(v14 + 8))(v27, v13);
  }

  else
  {
    v37 = v28;
    v39 = v44;
    v38 = v45;
    sub_257ECD450();
    v40 = sub_257ECDA20();
    v41 = sub_257ECFBD0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_257BAC000, v40, v41, "Door Attributes Classifier URL is not available", v42, 2u);
      MEMORY[0x259C74820](v42, -1, -1);
    }

    else
    {
    }

    return (*(v38 + 8))(v39, v0);
  }
}

uint64_t sub_257D78B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68, 0x277CBFF20);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257D78D74;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257D78D74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257D78E90;
  }

  else
  {
    v2 = sub_257D78FFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D78E90()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_257BE4084(v1, &qword_27F8F5F30, &qword_257EDA9E0);
  sub_257ECD450();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBD0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Door Attributes Classifier cannot be compiled", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257D78FFC()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[2];
  (*(v4 + 56))(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  v8 = v7;
  v9 = sub_257D7CA0C(v3, v8);

  if (v1)
  {
  }

  else if (v9)
  {
    v20 = v0[3];
    (*(v0[10] + 8))(v0[12], v0[9]);
    v21 = *(v20 + 16);
    *(v20 + 16) = v9;

    goto LABEL_8;
  }

  sub_257ECD450();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v12)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "Door Attributes Classifier failed to initialize.", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
LABEL_8:

  v22 = v0[1];

  return v22();
}

void sub_257D79228(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v426 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 16);
  if (!v8)
  {
    sub_257D787B0();
    v8 = *(v6 + 16);
    if (!v8)
    {
      return;
    }
  }

  v409 = v8;
  v9 = [v409 modelDescription];
  v10 = [v9 inputDescriptionsByName];

  sub_257BD2C2C(0, &qword_27F8F8AF0, 0x277CBFEE0);
  v11 = sub_257ECF3D0();

  v12 = sub_257DF8B9C(v11);
  v14 = v13;

  if (!v14)
  {

    return;
  }

  v408 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620, &unk_257EDCD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = objc_opt_self();

  v17 = [v16 featureValueWithPixelBuffer_];
  *(inited + 72) = sub_257BD2C2C(0, &qword_27F8F8AF8, 0x277CBFEF8);
  *(inited + 48) = v17;
  v18 = sub_257BE9040(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F55E8, &qword_257EDA540);
  v19 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v20 = sub_257D7C2E8(v18);
  v21 = v20;
  if (!v20)
  {

    return;
  }

  *&v419 = 0;
  v22 = [v409 predictionFromFeatures:v20 error:&v419];
  if (!v22)
  {
    v96 = v419;

    v97 = sub_257ECC9F0();

    swift_willThrow();
    return;
  }

  v23 = v22;
  v405 = v21;
  v24 = v419;
  v25 = sub_257BEA370(MEMORY[0x277D84F90]);
  v406 = v23;
  v26 = [v23 featureNames];
  v27 = sub_257ECFA70();

  v28 = 0;
  v30 = v27 + 56;
  v29 = *(v27 + 56);
  v407 = v27;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v404 = a3;
  if ((v32 & v29) != 0)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_18:
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v36 >= v34)
    {

      if (v25[2])
      {
        v49 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F02BF0);
        if (v50)
        {
          v51 = *(v25[7] + 16 * v49);
          if (v51 >= 5)
          {
            LOBYTE(v52) = 5;
          }

          else
          {
            v52 = *(v25[7] + 16 * v49);
          }

          if (v25[2])
          {
            v403 = v52;
            v53 = *(v6 + 24);
            sub_257ECC3F0();
            v6 = 0xD000000000000018;
            v54 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02C10);
            if (v55)
            {
              v56 = *(v25[7] + 16 * v54);
              if (v56 > 1)
              {
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              if (v25[2])
              {
                v57 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02C10);
                if (v58)
                {
                  v401 = v56;
                  if (v25[2])
                  {
                    v59 = *(v25[7] + 16 * v57 + 8);
                    v60 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C30);
                    if (v61)
                    {
                      if (*(v25[7] + 16 * v60) > 2uLL)
                      {
                        goto LABEL_138;
                      }

                      v400 = *(v25[7] + 16 * v60);
                      if (v25[2])
                      {
                        v62 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C30);
                        if (v63)
                        {
                          if (v25[2])
                          {
                            v64 = *(v25[7] + 16 * v62 + 8);
                            v65 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C50);
                            if (v66)
                            {
                              v67 = sub_257D7C7DC(*(v25[7] + 16 * v65));
                              if (v67 == 6)
                              {
                                goto LABEL_139;
                              }

                              v399 = v67;
                              if (v25[2])
                              {
                                v68 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C50);
                                if (v69)
                                {
                                  if (v51 > 4)
                                  {
                                    goto LABEL_140;
                                  }

                                  if (v25[2])
                                  {
                                    v70 = *(v25[7] + 16 * v68 + 8);
                                    v71 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F02BF0);
                                    if (v72)
                                    {
                                      if (v25[2])
                                      {
                                        v73 = *(v25[7] + 16 * v71 + 8);
                                        v74 = sub_257C03F6C(0xD000000000000017, 0x8000000257F02C70);
                                        if (v75)
                                        {
                                          if (*(v25[7] + 16 * v74) > 1uLL)
                                          {
LABEL_130:
                                            __break(1u);
                                            goto LABEL_131;
                                          }

                                          v398 = *(v25[7] + 16 * v74);
                                          if (v25[2])
                                          {
                                            v76 = sub_257C03F6C(0xD000000000000017, 0x8000000257F02C70);
                                            if (v77)
                                            {
                                              if (v25[2])
                                              {
                                                v78 = *(v25[7] + 16 * v76 + 8);
                                                v79 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C90);
                                                if (v80)
                                                {
                                                  v81 = *(v25[7] + 16 * v79);
                                                  if (v81 > 1)
                                                  {
LABEL_131:
                                                    __break(1u);
                                                    goto LABEL_132;
                                                  }

                                                  if (v25[2])
                                                  {
                                                    v82 = sub_257C03F6C(0xD00000000000001BLL, 0x8000000257F02C90);
                                                    if (v83)
                                                    {
                                                      if (v25[2])
                                                      {
                                                        v84 = *(v25[7] + 16 * v82 + 8);
                                                        v85 = sub_257C03F6C(0xD00000000000001DLL, 0x8000000257F02CB0);
                                                        if (v86)
                                                        {
                                                          if (*(v25[7] + 16 * v85) > 2uLL)
                                                          {
                                                            goto LABEL_141;
                                                          }

                                                          v397 = *(v25[7] + 16 * v85);
                                                          if (v25[2])
                                                          {
                                                            v87 = sub_257C03F6C(0xD00000000000001DLL, 0x8000000257F02CB0);
                                                            if (v88)
                                                            {
                                                              v89 = *(v25[7] + 16 * v87 + 8);
                                                              if (((v51 < 5) & (1u >> v51)) != 0)
                                                              {
                                                                if (!v25[2])
                                                                {
LABEL_132:
                                                                  __break(1u);
                                                                  goto LABEL_133;
                                                                }

                                                                v90 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F03410);
                                                                if ((v91 & 1) == 0)
                                                                {
LABEL_133:
                                                                  __break(1u);
LABEL_134:
                                                                  __break(1u);
                                                                  goto LABEL_135;
                                                                }

                                                                v92 = *(v25[7] + 16 * v90);
                                                                if (v92 > 3)
                                                                {
                                                                  goto LABEL_143;
                                                                }

                                                                if (!v25[2])
                                                                {
                                                                  goto LABEL_134;
                                                                }

                                                                v93 = sub_257C03F6C(0xD00000000000001ELL, 0x8000000257F03410);
                                                                if ((v94 & 1) == 0)
                                                                {
LABEL_135:
                                                                  __break(1u);
LABEL_136:
                                                                  __break(1u);
                                                                }

                                                                v95 = *(v25[7] + 16 * v93 + 8);
                                                              }

                                                              else
                                                              {
                                                                v95 = 1.0;
                                                                LOBYTE(v92) = 3;
                                                              }

                                                              if (v25[2])
                                                              {
                                                                v98 = sub_257C03F6C(0xD000000000000019, 0x8000000257F02CD0);
                                                                if (v99)
                                                                {
                                                                  v100 = *(v25[7] + 16 * v98);
                                                                  if (v100 > 1)
                                                                  {
                                                                    goto LABEL_136;
                                                                  }

                                                                  if (v25[2])
                                                                  {
                                                                    v101 = sub_257C03F6C(0xD000000000000019, 0x8000000257F02CD0);
                                                                    if (v102)
                                                                    {
                                                                      if (v25[2])
                                                                      {
                                                                        v396 = *(v25[7] + 16 * v101 + 8);
                                                                        v103 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02CF0);
                                                                        if (v104)
                                                                        {
                                                                          v105 = sub_257D7C7EC(*(v25[7] + 16 * v103));
                                                                          if (v105 == 10)
                                                                          {
                                                                            goto LABEL_142;
                                                                          }

                                                                          if (v25[2])
                                                                          {
                                                                            v392 = v105;
                                                                            v393 = v100;
                                                                            v394 = v92;
                                                                            v395 = v53;
                                                                            v6 = sub_257C03F6C(0xD000000000000018, 0x8000000257F02CF0);
                                                                            v107 = v106;

                                                                            if (v107)
                                                                            {
                                                                              v391 = *(v25[7] + 16 * v6 + 8);
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B00, &unk_257EE7360);
                                                                              v108 = swift_allocObject();
                                                                              *(v108 + 16) = xmmword_257EE7270;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C7FC();
                                                                              sub_257ED0280();
                                                                              type metadata accessor for MAGUtilities();
                                                                              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                                                                              v110 = objc_opt_self();
                                                                              v111 = [v110 bundleForClass_];
                                                                              v112 = sub_257ECF4C0();
                                                                              v113 = sub_257ECF4C0();
                                                                              v114 = [v111 localizedStringForKey:v112 value:0 table:v113];

                                                                              v115 = sub_257ECF500();
                                                                              v117 = v116;

                                                                              *(v108 + 72) = v115;
                                                                              *(v108 + 80) = v117;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v118 = [v110 bundleForClass_];
                                                                              v119 = sub_257ECF4C0();
                                                                              v120 = sub_257ECF4C0();
                                                                              v121 = [v118 localizedStringForKey:v119 value:0 table:v120];

                                                                              v122 = sub_257ECF500();
                                                                              v124 = v123;

                                                                              *(v108 + 128) = v122;
                                                                              *(v108 + 136) = v124;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C424();
                                                                              sub_257ED0280();
                                                                              v125 = [v110 &selRef:ObjCClassFromMetadata setValues:? + 3];
                                                                              v126 = sub_257ECF4C0();
                                                                              v127 = sub_257ECF4C0();
                                                                              v128 = [v125 localizedStringForKey:v126 value:0 table:v127];

                                                                              v129 = sub_257ECF500();
                                                                              v131 = v130;

                                                                              *(v108 + 184) = v129;
                                                                              *(v108 + 192) = v131;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v132 = [v110 &selRef:ObjCClassFromMetadata setValues:? + 3];
                                                                              v133 = sub_257ECF4C0();
                                                                              v134 = sub_257ECF4C0();
                                                                              v135 = [v132 localizedStringForKey:v133 value:0 table:v134];

                                                                              v136 = sub_257ECF500();
                                                                              v138 = v137;

                                                                              *(v108 + 240) = v136;
                                                                              *(v108 + 248) = v138;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v139 = [v110 bundleForClass_];
                                                                              v140 = sub_257ECF4C0();
                                                                              v141 = sub_257ECF4C0();
                                                                              v142 = [v139 localizedStringForKey:v140 value:0 table:v141];

                                                                              v143 = sub_257ECF500();
                                                                              v145 = v144;

                                                                              *(v108 + 296) = v143;
                                                                              *(v108 + 304) = v145;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C3D0();
                                                                              sub_257ED0280();
                                                                              v146 = [v110 bundleForClass_];
                                                                              v147 = sub_257ECF4C0();
                                                                              v148 = sub_257ECF4C0();
                                                                              v149 = [v146 localizedStringForKey:v147 value:0 table:v148];

                                                                              v150 = sub_257ECF500();
                                                                              v152 = v151;

                                                                              *(v108 + 352) = v150;
                                                                              *(v108 + 360) = v152;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v153 = [v110 bundleForClass_];
                                                                              v154 = sub_257ECF4C0();
                                                                              v155 = sub_257ECF4C0();
                                                                              v156 = [v153 localizedStringForKey:v154 value:0 table:v155];

                                                                              v157 = sub_257ECF500();
                                                                              v159 = v158;

                                                                              *(v108 + 408) = v157;
                                                                              *(v108 + 416) = v159;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v160 = ObjCClassFromMetadata;
                                                                              v161 = [v110 bundleForClass_];
                                                                              v162 = sub_257ECF4C0();
                                                                              v163 = sub_257ECF4C0();
                                                                              v164 = [v161 localizedStringForKey:v162 value:0 table:v163];

                                                                              v165 = sub_257ECF500();
                                                                              v167 = v166;

                                                                              *(v108 + 464) = v165;
                                                                              *(v108 + 472) = v167;
                                                                              LOBYTE(v419) = 3;
                                                                              sub_257ED0280();
                                                                              v168 = v110;
                                                                              v169 = [v110 bundleForClass_];
                                                                              v170 = sub_257ECF4C0();
                                                                              v171 = sub_257ECF4C0();
                                                                              v172 = [v169 localizedStringForKey:v170 value:0 table:v171];

                                                                              v173 = sub_257ECF500();
                                                                              v175 = v174;

                                                                              *(v108 + 520) = v173;
                                                                              *(v108 + 528) = v175;
                                                                              LOBYTE(v419) = 4;
                                                                              sub_257ED0280();
                                                                              v176 = [v110 bundleForClass_];
                                                                              v177 = sub_257ECF4C0();
                                                                              v178 = sub_257ECF4C0();
                                                                              v179 = [v176 localizedStringForKey:v177 value:0 table:v178];

                                                                              v180 = sub_257ECF500();
                                                                              v182 = v181;

                                                                              *(v108 + 576) = v180;
                                                                              *(v108 + 584) = v182;
                                                                              LOBYTE(v419) = 5;
                                                                              sub_257ED0280();
                                                                              v183 = v160;
                                                                              v184 = [v168 bundleForClass_];
                                                                              v185 = sub_257ECF4C0();
                                                                              v186 = sub_257ECF4C0();
                                                                              v187 = [v184 localizedStringForKey:v185 value:0 table:v186];

                                                                              v188 = sub_257ECF500();
                                                                              v190 = v189;

                                                                              *(v108 + 632) = v188;
                                                                              *(v108 + 640) = v190;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C4CC();
                                                                              sub_257ED0280();
                                                                              v191 = [v168 bundleForClass_];
                                                                              v192 = sub_257ECF4C0();
                                                                              v193 = sub_257ECF4C0();
                                                                              v194 = [v191 localizedStringForKey:v192 value:0 table:v193];

                                                                              v195 = sub_257ECF500();
                                                                              v197 = v196;

                                                                              *(v108 + 688) = v195;
                                                                              *(v108 + 696) = v197;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v198 = [v168 bundleForClass_];
                                                                              v199 = sub_257ECF4C0();
                                                                              v200 = sub_257ECF4C0();
                                                                              v201 = [v198 localizedStringForKey:v199 value:0 table:v200];

                                                                              v202 = sub_257ECF500();
                                                                              v204 = v203;

                                                                              *(v108 + 744) = v202;
                                                                              *(v108 + 752) = v204;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v205 = [v168 bundleForClass_];
                                                                              v206 = sub_257ECF4C0();
                                                                              v207 = sub_257ECF4C0();
                                                                              v208 = [v205 localizedStringForKey:v206 value:0 table:v207];

                                                                              v209 = sub_257ECF500();
                                                                              v211 = v210;

                                                                              *(v108 + 800) = v209;
                                                                              *(v108 + 808) = v211;
                                                                              LOBYTE(v419) = 3;
                                                                              sub_257ED0280();
                                                                              v212 = [v168 bundleForClass_];
                                                                              v213 = sub_257ECF4C0();
                                                                              v214 = sub_257ECF4C0();
                                                                              v215 = [v212 localizedStringForKey:v213 value:0 table:v214];

                                                                              v216 = sub_257ECF500();
                                                                              v218 = v217;

                                                                              *(v108 + 856) = v216;
                                                                              *(v108 + 864) = v218;
                                                                              LOBYTE(v419) = 4;
                                                                              sub_257ED0280();
                                                                              v219 = [v168 bundleForClass_];
                                                                              v220 = sub_257ECF4C0();
                                                                              v221 = sub_257ECF4C0();
                                                                              v222 = [v219 localizedStringForKey:v220 value:0 table:v221];

                                                                              v223 = sub_257ECF500();
                                                                              v225 = v224;

                                                                              *(v108 + 912) = v223;
                                                                              *(v108 + 920) = v225;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C520();
                                                                              sub_257ED0280();
                                                                              v226 = [v168 bundleForClass_];
                                                                              v227 = sub_257ECF4C0();
                                                                              v228 = sub_257ECF4C0();
                                                                              v229 = [v226 localizedStringForKey:v227 value:0 table:v228];

                                                                              v230 = sub_257ECF500();
                                                                              v232 = v231;

                                                                              *(v108 + 968) = v230;
                                                                              *(v108 + 976) = v232;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v233 = [v168 bundleForClass_];
                                                                              v234 = sub_257ECF4C0();
                                                                              v235 = sub_257ECF4C0();
                                                                              v236 = [v233 localizedStringForKey:v234 value:0 table:v235];

                                                                              v237 = sub_257ECF500();
                                                                              v239 = v238;

                                                                              *(v108 + 1024) = v237;
                                                                              *(v108 + 1032) = v239;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C850();
                                                                              sub_257ED0280();
                                                                              v240 = [v168 bundleForClass_];
                                                                              v241 = sub_257ECF4C0();
                                                                              v242 = sub_257ECF4C0();
                                                                              v243 = [v240 localizedStringForKey:v241 value:0 table:v242];

                                                                              v244 = sub_257ECF500();
                                                                              v246 = v245;

                                                                              *(v108 + 1080) = v244;
                                                                              *(v108 + 1088) = v246;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v247 = [v168 bundleForClass_];
                                                                              v248 = sub_257ECF4C0();
                                                                              v249 = sub_257ECF4C0();
                                                                              v250 = [v247 localizedStringForKey:v248 value:0 table:v249];

                                                                              v251 = sub_257ECF500();
                                                                              v253 = v252;

                                                                              *(v108 + 1136) = v251;
                                                                              *(v108 + 1144) = v253;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C574();
                                                                              sub_257ED0280();
                                                                              v254 = [v168 bundleForClass_];
                                                                              v255 = sub_257ECF4C0();
                                                                              v256 = sub_257ECF4C0();
                                                                              v257 = [v254 localizedStringForKey:v255 value:0 table:v256];

                                                                              v258 = sub_257ECF500();
                                                                              v260 = v259;

                                                                              *(v108 + 1192) = v258;
                                                                              *(v108 + 1200) = v260;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v261 = [v168 bundleForClass_];
                                                                              v262 = sub_257ECF4C0();
                                                                              v263 = sub_257ECF4C0();
                                                                              v264 = [v261 localizedStringForKey:v262 value:0 table:v263];

                                                                              v265 = sub_257ECF500();
                                                                              v267 = v266;

                                                                              *(v108 + 1248) = v265;
                                                                              *(v108 + 1256) = v267;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v268 = [v168 bundleForClass_];
                                                                              v269 = sub_257ECF4C0();
                                                                              v270 = sub_257ECF4C0();
                                                                              v271 = [v268 localizedStringForKey:v269 value:0 table:v270];

                                                                              v272 = sub_257ECF500();
                                                                              v274 = v273;

                                                                              *(v108 + 1304) = v272;
                                                                              *(v108 + 1312) = v274;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C478();
                                                                              sub_257ED0280();
                                                                              v275 = [v168 bundleForClass_];
                                                                              v276 = sub_257ECF4C0();
                                                                              v277 = sub_257ECF4C0();
                                                                              v278 = [v275 localizedStringForKey:v276 value:0 table:v277];

                                                                              v279 = sub_257ECF500();
                                                                              v281 = v280;

                                                                              *(v108 + 1360) = v279;
                                                                              *(v108 + 1368) = v281;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v282 = [v168 bundleForClass_];
                                                                              v283 = sub_257ECF4C0();
                                                                              v284 = sub_257ECF4C0();
                                                                              v285 = [v282 localizedStringForKey:v283 value:0 table:v284];

                                                                              v286 = sub_257ECF500();
                                                                              v288 = v287;

                                                                              *(v108 + 1416) = v286;
                                                                              *(v108 + 1424) = v288;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v289 = [v168 bundleForClass_];
                                                                              v290 = sub_257ECF4C0();
                                                                              v291 = sub_257ECF4C0();
                                                                              v292 = [v289 localizedStringForKey:v290 value:0 table:v291];

                                                                              v293 = sub_257ECF500();
                                                                              v295 = v294;

                                                                              *(v108 + 1472) = v293;
                                                                              *(v108 + 1480) = v295;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C5C8();
                                                                              sub_257ED0280();
                                                                              v296 = [v168 bundleForClass_];
                                                                              v297 = sub_257ECF4C0();
                                                                              v298 = sub_257ECF4C0();
                                                                              v299 = [v296 localizedStringForKey:v297 value:0 table:v298];

                                                                              v300 = sub_257ECF500();
                                                                              v302 = v301;

                                                                              *(v108 + 1528) = v300;
                                                                              *(v108 + 1536) = v302;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v303 = [v168 bundleForClass_];
                                                                              v304 = sub_257ECF4C0();
                                                                              v305 = sub_257ECF4C0();
                                                                              v306 = [v303 localizedStringForKey:v304 value:0 table:v305];

                                                                              v307 = sub_257ECF500();
                                                                              v309 = v308;

                                                                              *(v108 + 1584) = v307;
                                                                              *(v108 + 1592) = v309;
                                                                              LOBYTE(v419) = 0;
                                                                              sub_257D7C61C();
                                                                              sub_257ED0280();
                                                                              v310 = [v168 bundleForClass_];
                                                                              v311 = sub_257ECF4C0();
                                                                              v312 = sub_257ECF4C0();
                                                                              v313 = [v310 localizedStringForKey:v311 value:0 table:v312];

                                                                              v314 = sub_257ECF500();
                                                                              v316 = v315;

                                                                              *(v108 + 1640) = v314;
                                                                              *(v108 + 1648) = v316;
                                                                              LOBYTE(v419) = 1;
                                                                              sub_257ED0280();
                                                                              v317 = [v168 bundleForClass_];
                                                                              v318 = sub_257ECF4C0();
                                                                              v319 = sub_257ECF4C0();
                                                                              v320 = [v317 localizedStringForKey:v318 value:0 table:v319];

                                                                              v321 = sub_257ECF500();
                                                                              v323 = v322;

                                                                              *(v108 + 1696) = v321;
                                                                              *(v108 + 1704) = v323;
                                                                              LOBYTE(v419) = 2;
                                                                              sub_257ED0280();
                                                                              v324 = [v168 bundleForClass_];
                                                                              v325 = sub_257ECF4C0();
                                                                              v326 = sub_257ECF4C0();
                                                                              v327 = [v324 localizedStringForKey:v325 value:0 table:v326];

                                                                              v328 = sub_257ECF500();
                                                                              v330 = v329;

                                                                              *(v108 + 1752) = v328;
                                                                              *(v108 + 1760) = v330;
                                                                              LOBYTE(v419) = 3;
                                                                              sub_257ED0280();
                                                                              v331 = [v168 bundleForClass_];
                                                                              v332 = sub_257ECF4C0();
                                                                              v333 = sub_257ECF4C0();
                                                                              v334 = [v331 localizedStringForKey:v332 value:0 table:v333];

                                                                              v335 = sub_257ECF500();
                                                                              v337 = v336;

                                                                              *(v108 + 1808) = v335;
                                                                              *(v108 + 1816) = v337;
                                                                              LOBYTE(v419) = 4;
                                                                              sub_257ED0280();
                                                                              v338 = [v168 bundleForClass_];
                                                                              v339 = sub_257ECF4C0();
                                                                              v340 = sub_257ECF4C0();
                                                                              v341 = [v338 localizedStringForKey:v339 value:0 table:v340];

                                                                              v342 = sub_257ECF500();
                                                                              v344 = v343;

                                                                              *(v108 + 1864) = v342;
                                                                              *(v108 + 1872) = v344;
                                                                              LOBYTE(v419) = 5;
                                                                              sub_257ED0280();
                                                                              v345 = [v168 bundleForClass_];
                                                                              v346 = sub_257ECF4C0();
                                                                              v347 = sub_257ECF4C0();
                                                                              v348 = [v345 localizedStringForKey:v346 value:0 table:v347];

                                                                              v349 = sub_257ECF500();
                                                                              v351 = v350;

                                                                              *(v108 + 1920) = v349;
                                                                              *(v108 + 1928) = v351;
                                                                              LOBYTE(v419) = 6;
                                                                              sub_257ED0280();
                                                                              v352 = [v168 bundleForClass_];
                                                                              v353 = sub_257ECF4C0();
                                                                              v354 = sub_257ECF4C0();
                                                                              v355 = [v352 localizedStringForKey:v353 value:0 table:v354];

                                                                              v356 = sub_257ECF500();
                                                                              v358 = v357;

                                                                              *(v108 + 1976) = v356;
                                                                              *(v108 + 1984) = v358;
                                                                              LOBYTE(v419) = 7;
                                                                              sub_257ED0280();
                                                                              v359 = [v168 bundleForClass_];
                                                                              v360 = sub_257ECF4C0();
                                                                              v361 = sub_257ECF4C0();
                                                                              v362 = [v359 localizedStringForKey:v360 value:0 table:v361];

                                                                              v363 = sub_257ECF500();
                                                                              v365 = v364;

                                                                              *(v108 + 2032) = v363;
                                                                              *(v108 + 2040) = v365;
                                                                              LOBYTE(v419) = 8;
                                                                              sub_257ED0280();
                                                                              v366 = [v168 bundleForClass_];
                                                                              v367 = sub_257ECF4C0();
                                                                              v368 = sub_257ECF4C0();
                                                                              v369 = [v366 localizedStringForKey:v367 value:0 table:v368];

                                                                              v370 = sub_257ECF500();
                                                                              v372 = v371;

                                                                              *(v108 + 2088) = v370;
                                                                              *(v108 + 2096) = v372;
                                                                              LOBYTE(v419) = 9;
                                                                              sub_257ED0280();
                                                                              v373 = [v168 bundleForClass_];
                                                                              v374 = sub_257ECF4C0();
                                                                              v375 = sub_257ECF4C0();
                                                                              v376 = [v373 localizedStringForKey:v374 value:0 table:v375];

                                                                              v377 = sub_257ECF500();
                                                                              v379 = v378;

                                                                              *(v108 + 2144) = v377;
                                                                              *(v108 + 2152) = v379;
                                                                              v380 = sub_257BEA240(v108);
                                                                              swift_setDeallocating();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5640, &qword_257EDA598);
                                                                              swift_arrayDestroy();
                                                                              swift_deallocClassInstance();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B18, &qword_257EE7370);
                                                                              v381 = swift_initStackObject();
                                                                              *(v381 + 16) = xmmword_257EE2EF0;
                                                                              *(v381 + 32) = 5;
                                                                              *(v381 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B20, &qword_257EE7378);
                                                                              *(v381 + 40) = &type metadata for DoorAttributeModelHeads.Shape;
                                                                              *(v381 + 72) = 0;
                                                                              *(v381 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B28, &qword_257EE7380);
                                                                              *(v381 + 80) = &type metadata for DoorAttributeModelHeads.Approach;
                                                                              *(v381 + 112) = 3;
                                                                              *(v381 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B30, &qword_257EE7388);
                                                                              *(v381 + 120) = &type metadata for DoorAttributeModelHeads.OpenMethod;
                                                                              *(v381 + 152) = 6;
                                                                              *(v381 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B38, &qword_257EE7390);
                                                                              *(v381 + 160) = &type metadata for DoorAttributeModelHeads.Size;
                                                                              *(v381 + 192) = 2;
                                                                              *(v381 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B40, &qword_257EE7398);
                                                                              *(v381 + 200) = &type metadata for DoorAttributeModelHeads.DoorHandle;
                                                                              *(v381 + 232) = 7;
                                                                              *(v381 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B48, &qword_257EE73A0);
                                                                              *(v381 + 240) = &type metadata for DoorAttributeModelHeads.Window;
                                                                              *(v381 + 272) = 1;
                                                                              *(v381 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B50, &qword_257EE73A8);
                                                                              *(v381 + 280) = &type metadata for DoorAttributeModelHeads.Color;
                                                                              *(v381 + 312) = 8;
                                                                              *(v381 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8B58, &unk_257EE73B0);
                                                                              *(v381 + 320) = &type metadata for DoorAttributeModelHeads.Material;
                                                                              v382 = sub_257BE8424(v381);
                                                                              swift_setDeallocating();
                                                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5630, &qword_257EDA588);
                                                                              swift_arrayDestroy();
                                                                              *&v410 = v395;
                                                                              BYTE8(v410) = v401;
                                                                              HIDWORD(v410) = v59;
                                                                              LOBYTE(v411) = v400;
                                                                              DWORD1(v411) = v64;
                                                                              BYTE8(v411) = v399;
                                                                              HIDWORD(v411) = v70;
                                                                              LOBYTE(v412) = v403;
                                                                              DWORD1(v412) = v73;
                                                                              BYTE8(v412) = v398;
                                                                              HIDWORD(v412) = v78;
                                                                              LOBYTE(v413) = v81;
                                                                              DWORD1(v413) = v84;
                                                                              BYTE8(v413) = v397;
                                                                              HIDWORD(v413) = v89;
                                                                              LOBYTE(v414) = v394;
                                                                              *(&v414 + 1) = v95;
                                                                              BYTE8(v414) = v393;
                                                                              HIDWORD(v414) = v396;
                                                                              LOBYTE(v415) = v392;
                                                                              DWORD1(v415) = v391;
                                                                              *(&v415 + 1) = v380;
                                                                              v416 = v382;
                                                                              v425 = v382;
                                                                              v423 = v414;
                                                                              v424 = v415;
                                                                              v421 = v412;
                                                                              v422 = v413;
                                                                              v419 = v410;
                                                                              v420 = v411;
                                                                              v25 = v404;
                                                                              v6 = *v404;
                                                                              sub_257C22CE8(&v410, v417);
                                                                              sub_257C22CE8(&v410, v417);
                                                                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                                                              *v404 = v6;
                                                                              if (isUniquelyReferenced_nonNull_native)
                                                                              {
LABEL_86:
                                                                                if ((v408 & 0x8000000000000000) != 0)
                                                                                {
                                                                                  __break(1u);
                                                                                }

                                                                                else if (*(v6 + 16) > v408)
                                                                                {
                                                                                  v384 = type metadata accessor for DetectedDoor(0);
                                                                                  v385 = v6 + ((*(*(v384 - 8) + 80) + 32) & ~*(*(v384 - 8) + 80)) + *(*(v384 - 8) + 72) * v408 + *(v384 + 44);
                                                                                  v387 = *v385;
                                                                                  v386 = *(v385 + 16);
                                                                                  v417[2] = *(v385 + 32);
                                                                                  v389 = *(v385 + 64);
                                                                                  v388 = *(v385 + 80);
                                                                                  v390 = *(v385 + 48);
                                                                                  v418 = *(v385 + 96);
                                                                                  v417[4] = v389;
                                                                                  v417[5] = v388;
                                                                                  v417[3] = v390;
                                                                                  v417[0] = v387;
                                                                                  v417[1] = v386;
                                                                                  *v385 = v419;
                                                                                  *(v385 + 16) = v420;
                                                                                  *(v385 + 32) = v421;
                                                                                  *(v385 + 48) = v422;
                                                                                  *(v385 + 64) = v423;
                                                                                  *(v385 + 80) = v424;
                                                                                  *(v385 + 96) = v425;
                                                                                  sub_257BE4084(v417, &qword_27F8F8B60, &unk_257EE73C0);
                                                                                  swift_unknownObjectRelease();

                                                                                  sub_257D7C8A4(&v410);
                                                                                  sub_257D7C8A4(&v410);

                                                                                  return;
                                                                                }

                                                                                __break(1u);
                                                                                goto LABEL_129;
                                                                              }

LABEL_126:
                                                                              v6 = sub_257C7DEC4(v6);
                                                                              *v25 = v6;
                                                                              goto LABEL_86;
                                                                            }

LABEL_125:
                                                                            __break(1u);
                                                                            goto LABEL_126;
                                                                          }

LABEL_124:
                                                                          __break(1u);
                                                                          goto LABEL_125;
                                                                        }

LABEL_123:
                                                                        __break(1u);
                                                                        goto LABEL_124;
                                                                      }

LABEL_122:
                                                                      __break(1u);
                                                                      goto LABEL_123;
                                                                    }

LABEL_121:
                                                                    __break(1u);
                                                                    goto LABEL_122;
                                                                  }

LABEL_120:
                                                                  __break(1u);
                                                                  goto LABEL_121;
                                                                }

LABEL_119:
                                                                __break(1u);
                                                                goto LABEL_120;
                                                              }

LABEL_118:
                                                              __break(1u);
                                                              goto LABEL_119;
                                                            }

LABEL_117:
                                                            __break(1u);
                                                            goto LABEL_118;
                                                          }

LABEL_116:
                                                          __break(1u);
                                                          goto LABEL_117;
                                                        }

LABEL_115:
                                                        __break(1u);
                                                        goto LABEL_116;
                                                      }

LABEL_114:
                                                      __break(1u);
                                                      goto LABEL_115;
                                                    }

LABEL_113:
                                                    __break(1u);
                                                    goto LABEL_114;
                                                  }

LABEL_112:
                                                  __break(1u);
                                                  goto LABEL_113;
                                                }

LABEL_111:
                                                __break(1u);
                                                goto LABEL_112;
                                              }

LABEL_110:
                                              __break(1u);
                                              goto LABEL_111;
                                            }

LABEL_109:
                                            __break(1u);
                                            goto LABEL_110;
                                          }

LABEL_108:
                                          __break(1u);
                                          goto LABEL_109;
                                        }

LABEL_107:
                                        __break(1u);
                                        goto LABEL_108;
                                      }

LABEL_106:
                                      __break(1u);
                                      goto LABEL_107;
                                    }

LABEL_105:
                                    __break(1u);
                                    goto LABEL_106;
                                  }

LABEL_104:
                                  __break(1u);
                                  goto LABEL_105;
                                }

LABEL_103:
                                __break(1u);
                                goto LABEL_104;
                              }

LABEL_102:
                              __break(1u);
                              goto LABEL_103;
                            }

LABEL_101:
                            __break(1u);
                            goto LABEL_102;
                          }

LABEL_100:
                          __break(1u);
                          goto LABEL_101;
                        }

LABEL_99:
                        __break(1u);
                        goto LABEL_100;
                      }

LABEL_98:
                      __break(1u);
                      goto LABEL_99;
                    }

LABEL_97:
                    __break(1u);
                    goto LABEL_98;
                  }

LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v33 = *(v30 + 8 * v36);
    ++v28;
  }

  while (!v33);
  v35 = v25;
  v28 = v36;
  while (1)
  {
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = (*(v407 + 48) + ((v28 << 10) | (16 * v37)));
    v40 = *v38;
    v39 = v38[1];

    if ((sub_257D7C04C(0x5F64616568, 0xE500000000000000, v40, v39) & 1) == 0 || (*&v419 = v40, *(&v419 + 1) = v39, strcpy(&v410, "probabilities"), HIWORD(v410) = -4864, sub_257BDAB08(), (sub_257ED0150() & 1) == 0))
    {
LABEL_16:

      v25 = v35;
      if (!v33)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v41 = sub_257ECF4C0();
    v42 = [v406 featureValueForName_];

    if (!v42)
    {
      break;
    }

    v43 = [v42 multiArrayValue];

    if (!v43)
    {
      goto LABEL_16;
    }

    v44 = v43;
    sub_257D7C670(v44);
    v402 = v45;
    v47 = v46;

    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v419 = v35;
    sub_257EC7B3C(v402, v40, v39, v48, v47);

    v25 = v419;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_17:
    v35 = v25;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_257D7C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_257ECF660();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_257ECF660();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_257ED0640();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_257ECF660();
      v7 = v9;
    }

    while (v9);
  }

  sub_257ECF660();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_257D7C1A8()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_257D7C238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_257D7C280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_257D7C2E8(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECF3C0();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_257D7C3D0()
{
  result = qword_27F8F8AB0;
  if (!qword_27F8F8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AB0);
  }

  return result;
}

unint64_t sub_257D7C424()
{
  result = qword_27F8F8AB8;
  if (!qword_27F8F8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AB8);
  }

  return result;
}

unint64_t sub_257D7C478()
{
  result = qword_27F8F8AC0;
  if (!qword_27F8F8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AC0);
  }

  return result;
}

unint64_t sub_257D7C4CC()
{
  result = qword_27F8F8AC8;
  if (!qword_27F8F8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AC8);
  }

  return result;
}

unint64_t sub_257D7C520()
{
  result = qword_27F8F8AD0;
  if (!qword_27F8F8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AD0);
  }

  return result;
}

unint64_t sub_257D7C574()
{
  result = qword_27F8F8AD8;
  if (!qword_27F8F8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AD8);
  }

  return result;
}

unint64_t sub_257D7C5C8()
{
  result = qword_27F8F8AE0;
  if (!qword_27F8F8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AE0);
  }

  return result;
}

unint64_t sub_257D7C61C()
{
  result = qword_27F8F8AE8;
  if (!qword_27F8F8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8AE8);
  }

  return result;
}

void sub_257D7C670(void *a1)
{
  v2 = [a1 shape];
  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
  v3 = sub_257ECF810();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](1, v3);
  }

  else
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = *(v3 + 40);
  }

  v5 = v4;

  v13 = 0;
  v14 = 1;
  MEMORY[0x259C725F0](v5, &v13);
  if (v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v13;

  if (v6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = v7 + 1;
      v10 = [a1 objectAtIndexedSubscript_];
      sub_257ECFA40();
      v12 = v11;

      if (v8 < v12)
      {
        v8 = v12;
      }

      ++v7;
    }

    while (v6 != v9);
  }
}

unint64_t sub_257D7C7DC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_257D7C7EC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_257D7C7FC()
{
  result = qword_27F8F8B08;
  if (!qword_27F8F8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B08);
  }

  return result;
}

unint64_t sub_257D7C850()
{
  result = qword_27F8F8B10;
  if (!qword_27F8F8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B10);
  }

  return result;
}

uint64_t sub_257D7C8D4(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257BE3DE0;

  return sub_257D78B98(a1, v7, v8, v1 + v5, v9, v10);
}

id sub_257D7CA0C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_257ECCB70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257D7CCB0(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257C167C4;

  return sub_257D784B8(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_257D7CDE8()
{
  result = qword_27F8F6D70;
  if (!qword_27F8F6D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9D90, &qword_257EDEFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D70);
  }

  return result;
}

unint64_t sub_257D7CF00()
{
  result = qword_27F8F8B78;
  if (!qword_27F8F8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B78);
  }

  return result;
}

unint64_t sub_257D7CF58()
{
  result = qword_27F8F8B80;
  if (!qword_27F8F8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B80);
  }

  return result;
}

unint64_t sub_257D7CFB0()
{
  result = qword_27F8F8B88;
  if (!qword_27F8F8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B88);
  }

  return result;
}

unint64_t sub_257D7D008()
{
  result = qword_27F8F8B90;
  if (!qword_27F8F8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B90);
  }

  return result;
}

unint64_t sub_257D7D060()
{
  result = qword_27F8F8B98;
  if (!qword_27F8F8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8B98);
  }

  return result;
}

unint64_t sub_257D7D0B8()
{
  result = qword_27F8F8BA0;
  if (!qword_27F8F8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BA0);
  }

  return result;
}

unint64_t sub_257D7D110()
{
  result = qword_27F8F8BA8;
  if (!qword_27F8F8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BA8);
  }

  return result;
}

unint64_t sub_257D7D168()
{
  result = qword_27F8F8BB0;
  if (!qword_27F8F8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BB0);
  }

  return result;
}

unint64_t sub_257D7D1C0()
{
  result = qword_27F8F8BB8;
  if (!qword_27F8F8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BB8);
  }

  return result;
}

unint64_t sub_257D7D218()
{
  result = qword_27F8F8BC0;
  if (!qword_27F8F8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BC0);
  }

  return result;
}

unint64_t sub_257D7D28C()
{
  result = qword_27F8F8BC8;
  if (!qword_27F8F8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BC8);
  }

  return result;
}

unint64_t sub_257D7D2E4()
{
  result = qword_27F8F8BD0;
  if (!qword_27F8F8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BD0);
  }

  return result;
}

uint64_t sub_257D7D3A4()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913018);
  __swift_project_value_buffer(v0, qword_27F913018);
  return sub_257ECCA00();
}

uint64_t sub_257D7D408(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_257ECDA30();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v2[13] = swift_task_alloc();
  v2[14] = sub_257ECF900();
  v2[15] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D7D538, v5, v4);
}

void sub_257D7D538()
{
  v30 = v0;

  v1 = _s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0();
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 40);
    while (v4 < *(v2 + 2))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      swift_bridgeObjectRetain_n();
      sub_257ECC360();
      if (v7 == v0[2] && v6 == v0[3])
      {

LABEL_14:

        v24 = v0[13];
        v25 = sub_257ECF930();
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
        v26 = sub_257ECF8F0();
        v27 = swift_allocObject();
        v28 = MEMORY[0x277D85700];
        *(v27 + 16) = v26;
        *(v27 + 24) = v28;
        *(v27 + 32) = v7;
        *(v27 + 40) = v6;
        *(v27 + 48) = 0;
        sub_257C3FBD4(0, 0, v24, &unk_257EE7C28, v27);

        sub_257ECC350();

        v23 = v0[1];
        goto LABEL_15;
      }

      v9 = sub_257ED0640();

      if (v9)
      {
        goto LABEL_14;
      }

      ++v4;

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_257ECD340();
    sub_257ECC3F0();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBE0();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      sub_257ECC360();
      v18 = sub_257BF1FC8(v0[6], v0[7], &v29);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_257BAC000, v10, v11, "Cannot handle requested unknown activity entity: %s", v16, 0xCu);
      v19 = __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C74820](v17, -1, -1, v19);
      MEMORY[0x259C74820](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    sub_257ECC360();
    v20 = v0[4];
    v21 = v0[5];
    sub_257BEBEF0();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    *(v22 + 24) = 3;
    swift_willThrow();

    v23 = v0[1];
LABEL_15:

    v23();
  }
}

uint64_t sub_257D7D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_257ECDA30();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  sub_257ECF900();
  *(v6 + 80) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return MEMORY[0x2822009F8](sub_257D7D9A0, v9, v8);
}

uint64_t sub_257D7D9A0()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_257D7DA80;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D7DA80()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_257D7DBFC;
  }

  else
  {
    v5 = sub_257D7DB94;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D7DB94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D7DBFC()
{
  v1 = v0[14];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartActivityAppIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D7DD78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4660 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D7DE20(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8BF8, &qword_257EE7C38);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C00, &qword_257EE7C40);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  sub_257ECC5F0();
  sub_257ECC5E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C08, &unk_257EE7C70);
  sub_257ECC5D0();

  sub_257ECC5E0();
  sub_257ECC600();
  return sub_257ECC5C0();
}

uint64_t sub_257D7DFC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257BE3DE0;

  return sub_257D7D408(a1, v4);
}

uint64_t sub_257D7E060@<X0>(uint64_t *a2@<X8>)
{
  result = sub_257D7E0D4();
  *a2 = result;
  return result;
}

uint64_t sub_257D7E088(uint64_t a1)
{
  v2 = sub_257CF9768();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D7E0D4()
{
  v38 = sub_257ECC610();
  v0 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v1, v2, v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98, &unk_257EDEB90);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v21 - 8, v22, v23, v24, v25);
  v27 = &v37 - v26;
  v28 = sub_257ECCA30();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8BE8, &qword_257EE7C08);
  sub_257ECCA00();
  (*(v29 + 56))(v27, 1, 1, v28);
  v34 = sub_257ECC340();
  v39 = 0;
  v40 = 0;
  v35 = *(*(v34 - 8) + 56);
  v35(v20, 1, 1, v34);
  v35(v13, 1, 1, v34);
  (*(v0 + 104))(v6, *MEMORY[0x277CBA308], v38);
  sub_257D7E3C8();
  return sub_257ECC3A0();
}

unint64_t sub_257D7E3C8()
{
  result = qword_27F8F8BF0;
  if (!qword_27F8F8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8BF0);
  }

  return result;
}

uint64_t sub_257D7E41C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257BE3DE0;

  return sub_257D7D8A8(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for ActionListItem(uint64_t a1)
{
  result = qword_27F8F8C10;
  if (!qword_27F8F8C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D7E568(uint64_t a1)
{
  result = sub_257ECCCF0();
  if (v2 <= 0x3F)
  {
    result = sub_257ECCC80();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257D7E63C()
{
  v1 = v0 + *(type metadata accessor for ActionListItem(0) + 20);
  v2 = *(v1 + 16);
  if (v2 <= 3)
  {
    if (*(v1 + 16) > 1u)
    {
      return 0xD000000000000011;
    }

    if (*(v1 + 16))
    {
      return 0x5A207473756A6441;
    }

    return 0x6341207472617453;
  }

  if (*(v1 + 16) <= 5u)
  {
    if (v2 == 4)
    {
      return 0x43207473756A6441;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  if (v2 == 6)
  {
    return 0x46207473756A6441;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  if (*v1 <= 3uLL)
  {
    if (v5 <= 1)
    {
      if (v5 | v4)
      {
        return 0x5420746365746544;
      }

      else
      {
        return 0x6562697263736544;
      }
    }

    if (!(v5 ^ 2 | v4))
    {
      return 0xD000000000000015;
    }

    return 0xD000000000000014;
  }

  if (v5 <= 5)
  {
    if (v5 ^ 4 | v4)
    {
      return 0xD000000000000016;
    }

    return 0xD000000000000014;
  }

  if (v5 ^ 6 | v4)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_257D7E8C8()
{
  v1 = (v0 + *(type metadata accessor for ActionListItem(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 3)
  {
    if (*(v1 + 16) > 5u)
    {
      if (v3 != 6)
      {
        return MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v22 = 0xD000000000000011;
      v23 = 0x8000000257F03490;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();

      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v17 = sub_257ECF500();
      v19 = v18;

      MEMORY[0x259C72150](v17, v19);
      goto LABEL_23;
    }

    if (v3 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v9 = 0x8000000257F034D0;
      v10 = 0xD000000000000014;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v9 = 0x8000000257F034B0;
      v10 = 0xD000000000000017;
    }

LABEL_16:
    v22 = v10;
    v23 = v9;
    if (v2)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v2)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x259C72150](v20, v21);
LABEL_23:

    MEMORY[0x259C72150](34, 0xE100000000000000);
    result = v8;
    v7 = v23;
    *(v8 + 32) = v22;
    goto LABEL_24;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v11 = "Increase flashlight: ";
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED6D30;
      sub_257ED02D0();

      v11 = "Increase brightness: ";
    }

    v9 = (v11 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000016;
    goto LABEL_16;
  }

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_257ED6D30;
    sub_257ED02D0();

    v9 = 0x8000000257F03530;
    v10 = 0xD000000000000010;
    goto LABEL_16;
  }

  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  MEMORY[0x259C72150](v2, v4);
  MEMORY[0x259C72150](34, 0xE100000000000000);
  result = v5;
  v7 = 0xE700000000000000;
  *(v5 + 32) = 0x22203A656D614ELL;
LABEL_24:
  *(result + 40) = v7;
  return result;
}

uint64_t sub_257D7ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C30, &qword_257EE7D68);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v18 - v13;
  sub_257D7EF38(a1, a2, a3, &v18 - v13);
  sub_257ECE550();
  sub_257D80C00();
  sub_257ECEBC0();

  sub_257BE4084(v14, &qword_27F8F8C30, &qword_257EE7D68);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v16 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C20, &qword_257EE7D60) + 36));
  sub_257ECE100();
  sub_257ECC3F0();
  sub_257ECC3F0();

  result = sub_257ECF910();
  *v16 = &unk_257EE7D98;
  v16[1] = v15;
  return result;
}

uint64_t sub_257D7EF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C78, &qword_257EE7D88);
  MEMORY[0x28223BE20](v40, v8, v9, v10, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C88, &qword_257EE7DC0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v37 - v19;
  v42 = a1;
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80, &qword_257EE7DB8);
  sub_257ECEE60();
  v21 = *(v41 + 16);

  if (v21)
  {
    *v13 = sub_257ECE5B0();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C90, &qword_257EE7DC8);
    sub_257D7F294(a1, a2, a3, &v13[*(v22 + 44)]);
    sub_257BE401C(v13, v20, &qword_27F8F8C78, &qword_257EE7D88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C58, &qword_257EE7D78);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78, &qword_257EE7D88, MEMORY[0x277CE1198]);
    sub_257ECE6F0();
    return sub_257BE4084(v13, &qword_27F8F8C78, &qword_257EE7D88);
  }

  else
  {
    sub_257ECE550();
    v24 = sub_257ECEAD0();
    v26 = v25;
    v28 = v27;
    sub_257ECE9C0();
    v29 = sub_257ECEAC0();
    v38 = v30;
    v39 = a4;
    v31 = v29;
    v33 = v32;
    v35 = v34;

    sub_257C0300C(v24, v26, v28 & 1);

    KeyPath = swift_getKeyPath();
    *v20 = v31;
    *(v20 + 1) = v33;
    v20[16] = v35 & 1;
    *(v20 + 3) = v38;
    *(v20 + 4) = KeyPath;
    v20[40] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C58, &qword_257EE7D78);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78, &qword_257EE7D88, MEMORY[0x277CE1198]);
    return sub_257ECE6F0();
  }
}

uint64_t sub_257D7F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v120 = a3;
  v140 = a4;
  v138 = sub_257ECE2C0();
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v6, v7, v8, v9);
  v137 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98, &qword_257EE7E00);
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v11, v12, v13, v14);
  v118 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA0, &qword_257EE7E08);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v117 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA8, &qword_257EE7E10);
  MEMORY[0x28223BE20](v127, v24, v25, v26, v27);
  v29 = &v117 - v28;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CB0, &qword_257EE7E18);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v30, v31, v32, v33);
  v124 = &v117 - v34;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CB8, &qword_257EE7E20) - 8;
  MEMORY[0x28223BE20](v132, v35, v36, v37, v38);
  v128 = &v117 - v39;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CC0, &qword_257EE7E28) - 8;
  MEMORY[0x28223BE20](v123, v40, v41, v42, v43);
  v122 = &v117 - v44;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CC8, &qword_257EE7E30) - 8;
  MEMORY[0x28223BE20](v134, v45, v46, v47, v48);
  v136 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v130 = &v117 - v55;
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  v131 = &v117 - v61;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CD0, &qword_257EE7E38);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v62, v63, v64, v65);
  v125 = &v117 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v68, v69, v70, v71);
  v117 = &v117 - v72;
  *&v145[0] = a1;
  *(&v145[0] + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80, &qword_257EE7DB8);
  sub_257ECEE60();
  *&v145[0] = v144;
  v141 = v145;
  v142 = sub_257D7FCBC;
  v143 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CD8, &qword_257EE7E40);
  sub_257D8123C();
  sub_257ECEA80();

  sub_257ECE550();
  v73 = swift_allocObject();
  v73[2] = a1;
  v73[3] = a2;
  v73[4] = v120;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v74 = v118;
  sub_257ECEEC0();
  sub_257ECF060();
  sub_257ECE2F0();
  (*(v126 + 32))(v23, v74, v129);
  v75 = &v23[*(v17 + 44)];
  v76 = v145[5];
  *(v75 + 4) = v145[4];
  *(v75 + 5) = v76;
  *(v75 + 6) = v145[6];
  v77 = v145[1];
  *v75 = v145[0];
  *(v75 + 1) = v77;
  v78 = v145[3];
  *(v75 + 2) = v145[2];
  *(v75 + 3) = v78;
  v79 = sub_257ECE930();
  sub_257ECDF40();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  sub_257D81340(v23, v29);
  v88 = &v29[*(v127 + 36)];
  *v88 = v79;
  *(v88 + 1) = v81;
  *(v88 + 2) = v83;
  *(v88 + 3) = v85;
  *(v88 + 4) = v87;
  v88[40] = 0;
  v89 = v137;
  sub_257ECE2B0();
  sub_257D813B0();
  sub_257D815CC(&qword_27F8F8D10, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v90 = v124;
  v91 = v138;
  sub_257ECEB60();
  (*(v139 + 8))(v89, v91);
  sub_257BE4084(v29, &qword_27F8F8CA8, &qword_257EE7E10);
  v92 = sub_257ECE790();
  v93 = v128;
  (*(v133 + 32))(v128, v90, v135);
  *(v93 + *(v132 + 44)) = v92;
  v94 = v122;
  v95 = &v122[*(v123 + 44)];
  v96 = *(sub_257ECE2D0() + 20);
  v97 = *MEMORY[0x277CE0118];
  v98 = sub_257ECE570();
  (*(*(v98 - 8) + 104))(&v95[v96], v97, v98);
  __asm { FMOV            V0.2D, #8.0 }

  *v95 = _Q0;
  *&v95[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D18, &qword_257EE7E50) + 56)] = 256;
  sub_257C0DD14(v93, v94, &qword_27F8F8CB8, &qword_257EE7E20);
  v104 = sub_257ECED40();
  v105 = v130;
  sub_257C0DD14(v94, v130, &qword_27F8F8CC0, &qword_257EE7E28);
  *(v105 + *(v134 + 44)) = v104;
  v106 = v131;
  sub_257C0DD14(v105, v131, &qword_27F8F8CC8, &qword_257EE7E30);
  v107 = v119;
  v108 = *(v119 + 16);
  v109 = v125;
  v110 = v117;
  v111 = v121;
  v108(v125, v117, v121);
  v112 = v136;
  sub_257BE401C(v106, v136, &qword_27F8F8CC8, &qword_257EE7E30);
  v113 = v140;
  v108(v140, v109, v111);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D20, &qword_257EE7E58);
  sub_257BE401C(v112, &v113[*(v114 + 48)], &qword_27F8F8CC8, &qword_257EE7E30);
  sub_257BE4084(v106, &qword_27F8F8CC8, &qword_257EE7E30);
  v115 = *(v107 + 8);
  v115(v110, v111);
  sub_257BE4084(v112, &qword_27F8F8CC8, &qword_257EE7E30);
  return (v115)(v109, v111);
}

uint64_t sub_257D7FCBC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_257ECE5C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D48, &qword_257EE7E70);
  return sub_257D7FD14(a2 + *(v3 + 44));
}

uint64_t sub_257D7FD14@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D50, &qword_257EE7E78);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v47 = &v39 - v15;
  v48 = sub_257ECE500();
  v51 = 1;
  sub_257D8018C(&v60);
  v54 = *&v61[16];
  v55 = *&v61[32];
  v52 = v60;
  v53 = *v61;
  v57[1] = *v61;
  v57[2] = *&v61[16];
  v57[3] = *&v61[32];
  v57[4] = *&v61[48];
  v56 = *&v61[48];
  v57[0] = v60;
  sub_257BE401C(&v52, v58, &qword_27F8F8D58, &unk_257EE7E80);
  sub_257BE4084(v57, &qword_27F8F8D58, &unk_257EE7E80);
  *&v50[23] = v53;
  *&v50[39] = v54;
  *&v50[55] = v55;
  *&v50[71] = v56;
  *&v50[7] = v52;
  v49 = v51;
  *&v60 = sub_257D7E63C();
  *(&v60 + 1) = v16;
  sub_257BDAB08();
  v17 = sub_257ECEAF0();
  v19 = v18;
  v21 = v20;
  sub_257ECEA60();
  v41 = sub_257ECEAC0();
  v23 = v22;
  v42 = v24;
  v43 = v25;

  sub_257C0300C(v17, v19, v21 & 1);

  *&v60 = sub_257D7E8C8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257BD2D4C(&qword_27F8F8D60, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83980]);
  v26 = v47;
  sub_257ECEF80();
  v27 = v45;
  v40 = *(v46 + 16);
  v28 = v44;
  v40(v44, v26, v45);
  v58[0] = v48;
  v58[1] = 0;
  v59[0] = v49;
  *&v59[1] = *v50;
  *&v59[17] = *&v50[16];
  *&v59[65] = *&v50[64];
  *&v59[49] = *&v50[48];
  *&v59[33] = *&v50[32];
  v29 = *&v50[79];
  *&v59[80] = *&v50[79];
  v30 = *v59;
  *a2 = v48;
  *(a2 + 16) = v30;
  v31 = *&v59[16];
  v32 = *&v59[32];
  v33 = *&v59[64];
  *(a2 + 64) = *&v59[48];
  *(a2 + 80) = v33;
  *(a2 + 32) = v31;
  *(a2 + 48) = v32;
  v34 = v41;
  *(a2 + 96) = v29;
  *(a2 + 104) = v34;
  *(a2 + 112) = v23;
  LOBYTE(v26) = v42 & 1;
  *(a2 + 120) = v42 & 1;
  *(a2 + 128) = v43;
  v35 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D68, &qword_257EE7EB0) + 64));
  v36 = v27;
  v40(v35, v28, v27);
  sub_257BE401C(v58, &v60, &qword_27F8F8D70, &unk_257EE7EB8);
  sub_257BD1B90(v34, v23, v26);
  v37 = *(v46 + 8);

  v37(v47, v36);
  v37(v28, v36);
  sub_257C0300C(v34, v23, v26);

  *&v61[33] = *&v50[32];
  *&v61[49] = *&v50[48];
  *v62 = *&v50[64];
  *&v61[1] = *v50;
  v60 = v48;
  v61[0] = v49;
  *&v62[15] = *&v50[79];
  *&v61[17] = *&v50[16];
  return sub_257BE4084(&v60, &qword_27F8F8D70, &unk_257EE7EB8);
}

double sub_257D8018C@<D0>(uint64_t a1@<X8>)
{
  sub_257ECE550();
  v2 = sub_257ECEAD0();
  v4 = v3;
  v6 = v5;
  sub_257ECEA60();
  v24 = sub_257ECEAC0();
  v25 = v7;
  v9 = v8;
  v23 = v10;

  sub_257C0300C(v2, v4, v6 & 1);

  type metadata accessor for ActionListItem(0);
  sub_257ECCC60();
  sub_257BDAB08();
  v11 = sub_257ECEAF0();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_257ECE7A0();
  v15 = sub_257ECEAB0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_257C0300C(v11, v13, v4 & 1);

  *a1 = v24;
  *(a1 + 8) = v9;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_257BD1B90(v24, v9, v23 & 1);

  sub_257BD1B90(v15, v17, v19 & 1);

  sub_257C0300C(v15, v17, v19 & 1);

  sub_257C0300C(v24, v9, v23 & 1);

  return result;
}

void sub_257D803A4(uint64_t a2@<X8>)
{
  sub_257BDAB08();

  v3 = sub_257ECEAF0();
  v5 = v4;
  v7 = v6;
  sub_257ECE9B0();
  v8 = sub_257ECEAC0();
  v10 = v9;
  v12 = v11;

  sub_257C0300C(v3, v5, v7 & 1);

  sub_257ECE7A0();
  v13 = sub_257ECEAB0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_257C0300C(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
}

double sub_257D804DC(uint64_t a1, uint64_t a2)
{
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80, &qword_257EE7DB8);
  sub_257ECEE60();

  sub_257ECEE70();

  return result;
}

uint64_t sub_257D80580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_257ECF900();
  v3[8] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D8061C, v5, v4);
}

uint64_t sub_257D8061C()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];

  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;
  sub_257ECC3F0();
  sub_257ECC3F0();

  v4 = sub_257ECF570();
  v6 = v5;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_257EE7DA8;
  *(v8 + 24) = v7;
  swift_beginAccess();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v8, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v12;
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_257D807C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  v5 = type metadata accessor for ActionListItem(0);
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = *a1;
  *(v3 + 128) = *(a1 + 16);
  sub_257ECF900();
  *(v3 + 120) = sub_257ECF8F0();
  v7 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D808C8, v7, v6);
}

uint64_t sub_257D808C8()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 128);

  sub_257CCE9D4(v2, v1, v7);
  sub_257ECCCE0();
  v8 = v3 + *(v5 + 20);
  *v8 = v2;
  *(v8 + 8) = v1;
  *(v8 + 16) = v7;
  sub_257ECCC70();
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  sub_257ECC3F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C80, &qword_257EE7DB8);
  sub_257ECEE60();
  v9 = *(v0 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_257BFDF84(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_257BFDF84((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v9[2] = v11 + 1;
  sub_257D81014(v13, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
  *(v0 + 32) = v14;
  *(v0 + 40) = v15;
  *(v0 + 56) = v9;
  sub_257ECEE70();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_257D80A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C20, &qword_257EE7D60);
  sub_257D80B08();
  return sub_257ECE250();
}

unint64_t sub_257D80B08()
{
  result = qword_27F8F8C28;
  if (!qword_27F8F8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C20, &qword_257EE7D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C30, &qword_257EE7D68);
    sub_257D80C00();
    swift_getOpaqueTypeConformance2();
    sub_257D815CC(&qword_27F8F4978, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C28);
  }

  return result;
}

unint64_t sub_257D80C00()
{
  result = qword_27F8F8C38;
  if (!qword_27F8F8C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C30, &qword_257EE7D68);
    sub_257D80C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C38);
  }

  return result;
}

unint64_t sub_257D80C84()
{
  result = qword_27F8F8C40;
  if (!qword_27F8F8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C48, &qword_257EE7D70);
    sub_257D80D3C();
    sub_257BD2D4C(&qword_27F8F8C70, &qword_27F8F8C78, &qword_257EE7D88, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C40);
  }

  return result;
}

unint64_t sub_257D80D3C()
{
  result = qword_27F8F8C50;
  if (!qword_27F8F8C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8C58, &qword_257EE7D78);
    sub_257BD2D4C(&qword_27F8F8C60, &qword_27F8F8C68, &qword_257EE7D80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8C50);
  }

  return result;
}

uint64_t sub_257D80DF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_257BE3DE0;

  return sub_257D80580(v2, v3, v4);
}

uint64_t sub_257D80E9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_257BE3DE0;

  return sub_257D807C0(a1, v4, v5);
}

uint64_t sub_257D80F4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257C167C4;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257D81014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionListItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D81078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257ECE3F0();
  *a1 = result;
  return result;
}

uint64_t sub_257D810CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_257ECC3F0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8D28, &qword_257EE7E60);
  v7 = sub_257ECCCF0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CF0, &qword_257EE7E48);
  v9 = sub_257D8151C();
  v10 = sub_257BD2D4C(&qword_27F8F8CE8, &qword_27F8F8CF0, &qword_257EE7E48, MEMORY[0x277CE1198]);
  v11 = sub_257D815CC(&qword_27F8F8D40, type metadata accessor for ActionListItem, &unk_257EE7CD4);
  return sub_257ECEF90(&v13, sub_257D814F4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_257D8123C()
{
  result = qword_27F8F8CE0;
  if (!qword_27F8F8CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CD8, &qword_257EE7E40);
    sub_257BD2D4C(&qword_27F8F8CE8, &qword_27F8F8CF0, &qword_257EE7E48, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8CE0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_257D81340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8CA0, &qword_257EE7E08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257D813B0()
{
  result = qword_27F8F8CF8;
  if (!qword_27F8F8CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CA8, &qword_257EE7E10);
    sub_257D8143C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8CF8);
  }

  return result;
}

unint64_t sub_257D8143C()
{
  result = qword_27F8F8D00;
  if (!qword_27F8F8D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8CA0, &qword_257EE7E08);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98, &qword_257EE7E00, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D00);
  }

  return result;
}

unint64_t sub_257D8151C()
{
  result = qword_27F8F8D30;
  if (!qword_27F8F8D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8D28, &qword_257EE7E60);
    sub_257BD2D4C(&qword_27F8F8D38, &qword_27F8FA530, &qword_257EE7E68, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D30);
  }

  return result;
}

uint64_t sub_257D815CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257D81614()
{
  if (qword_281543D60 != -1)
  {
    swift_once();
  }

  if (qword_281548060 == 2)
  {
    v0 = 0;
  }

  else
  {
    if (qword_281548060)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_257ED0640();
    }
  }

  byte_27F8F8D88 = v0 & 1;
}

void sub_257D816EC()
{
  if (qword_281543D60 != -1)
  {
    swift_once();
  }

  if (qword_281548060 == 2)
  {
    v0 = 0;
  }

  else
  {
    if (qword_281548060)
    {
      v0 = sub_257ED0640();
    }

    else
    {
      v0 = 1;
    }
  }

  byte_27F8F8D89 = v0 & 1;
}

BOOL static MAGDeviceUtilities.isVM()()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v1 = 8;
  v2[0] = 0;
  sysctlbyname("kern.hv_vmm_present", v2, &v1, 0, 0);
  return v2[0] == 1;
}

uint64_t URL.isImage.getter()
{
  v0 = sub_257ECD8B0();
  v30 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECC930();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780, &unk_257EDAA30);
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v21 = &v29 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788, &unk_257EDE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v23 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v24 = v23;
  sub_257BF2B04(inited);
  swift_setDeallocating();
  sub_257BF32AC(inited + 32);
  sub_257ECCAA0();

  sub_257ECC910();
  (*(v8 + 8))(v14, v7);
  v25 = v30;
  if ((*(v30 + 48))(v21, 1, v0) == 1)
  {
    sub_257D81B08(v21);
    v26 = 0;
  }

  else
  {
    sub_257ECD880();
    v26 = sub_257ECD8A0();
    v27 = *(v25 + 8);
    v27(v6, v0);
    v27(v21, v0);
  }

  return v26 & 1;
}

uint64_t sub_257D81B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780, &unk_257EDAA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257D81B70(uint64_t a1, uint64_t a2)
{
  if ((v2[1] & 0x8000000000000000) != 0)
  {
    v3 = *v2;
    v11 = MEMORY[0x277D84F90];
    v4 = 1 << *(*v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        sub_257C5714C(v11);

        return;
      }

      v6 = *(v3 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        do
        {
LABEL_13:
          v6 &= v6 - 1;

          sub_257EB0738(v10);
        }

        while (v6);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

id FurnitureDetectionResult.hash(into:)(__int128 *a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(v3 - 8);
  v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    MEMORY[0x259C732E0](1, v9);
    sub_257C9BE54(a1, v12);
    return sub_257ED07E0();
  }

  v13 = *(v1 + 80);
  MEMORY[0x259C732E0](0, v9);
  result = [v12 identifier];
  if (result)
  {
    v15 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v4 + 8))(v11, v3);
    sub_257C9C120(a1, v13);
    return sub_257ED07E0();
  }

  __break(1u);
  return result;
}

uint64_t FurnitureDetectionResult.hashValue.getter()
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257D81E7C()
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257D81EC0(uint64_t a1)
{
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v2);
  return sub_257ED0800();
}

id DetectedFurniture.hash(into:)(__int128 *a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 80);
  result = [*v1 identifier];
  if (result)
  {
    v14 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v4 + 8))(v11, v3);
    sub_257C9C120(a1, v12);
    return sub_257ED07E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DetectedFurniture.hashValue.getter()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 80);
  sub_257ED07B0();
  result = [v9 identifier];
  if (result)
  {
    v12 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v8, v1);
    sub_257C9C120(v14, v10);
    sub_257ED07E0();
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257D821A4(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 80);
  sub_257ED07B0();
  result = [v10 identifier];
  if (result)
  {
    v13 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v3 + 8))(v9, v2);
    sub_257C9C120(v15, v11);
    sub_257ED07E0();
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16MagnifierSupport24FurnitureDetectionResultO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v36 = a1[2];
  v37 = v3;
  v4 = a1[3];
  *v38 = a1[4];
  *&v38[12] = *(a1 + 76);
  v5 = a1[1];
  v34 = *a1;
  v35 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v41 = a2[2];
  v42 = v6;
  v8 = a2[3];
  *v43 = a2[4];
  *&v43[12] = *(a2 + 76);
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v44[0] = v34;
  v44[1] = v2;
  *(v45 + 12) = *(a1 + 76);
  v44[2] = v36;
  v44[3] = v4;
  v10 = a2[4];
  v45[5] = v8;
  v46[0] = v10;
  *(v46 + 12) = *(a2 + 76);
  v45[3] = v7;
  v45[4] = v41;
  v45[0] = a1[4];
  v45[2] = v39;
  v11 = v34;
  if ((HIDWORD(v34) & 0x80000000) != 0)
  {
    if ((HIDWORD(v39) & 0x80000000) != 0)
    {
      v14 = *(&v34 + 2);
      v15 = *(&v39 + 2);
      v16 = v39;
      sub_257C58DDC(&v34, v27);
      sub_257C58DDC(&v39, v27);
      sub_257C93E84(v11, v16);
      v18 = v17;
      sub_257D82838(v44);
      if (v18)
      {
        v12 = v14 == v15;
        return v12 & 1;
      }

      goto LABEL_6;
    }

LABEL_5:
    sub_257C58DDC(&v34, v27);
    sub_257C58DDC(&v39, v27);
    sub_257D82838(v44);
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  if ((*(&v39 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v27[0] = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = *v38;
  v32 = *&v38[16];
  v33 = *&v38[24];
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v24 = *v43;
  v25 = *&v43[16];
  v26 = *&v43[24];
  sub_257C58DDC(&v39, v19);
  sub_257C58DDC(&v34, v19);
  sub_257C58DDC(&v34, v19);
  sub_257C58DDC(&v39, v19);
  v12 = _s16MagnifierSupport17DetectedFurnitureV2eeoiySbAC_ACtFZ_0(v27, &v20);
  sub_257D82838(v44);
  sub_257C58E38(&v39);
  sub_257C58E38(&v34);
  return v12 & 1;
}

uint64_t _s16MagnifierSupport17DetectedFurnitureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  v24[0] = *a1;
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v19[0] = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v15 = v24[0];
  v16 = v8;
  LOBYTE(v8) = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(v24, v19);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_257C943E4(v6, v13);
  return v17 & (v7 == v14);
}

unint64_t sub_257D825C0()
{
  result = qword_27F8F8D90;
  if (!qword_27F8F8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D90);
  }

  return result;
}

unint64_t sub_257D82618()
{
  result = qword_27F8F8D98;
  if (!qword_27F8F8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8D98);
  }

  return result;
}

__n128 __swift_memcpy92_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_257D8269C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_257D826EC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 92) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0;
      *(a1 + 8) = (v4 >> 1) << 32;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 76) = 0u;
      return result;
    }

    *(a1 + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257D82788(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t sub_257D827D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257D82838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6670, &qword_257EDCE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257D828A4()
{
  result = qword_27F8F8DA0;
  if (!qword_27F8F8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8DA0);
  }

  return result;
}

unint64_t sub_257D828FC()
{
  result = qword_27F8F8DA8;
  if (!qword_27F8F8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8DA8);
  }

  return result;
}

uint64_t sub_257D829BC()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913030);
  __swift_project_value_buffer(v0, qword_27F913030);
  return sub_257ECCA00();
}

uint64_t sub_257D82A20()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257D82B10, v3, v2);
}

uint64_t sub_257D82B10()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EE0F90;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D82BF4;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D82BF4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D82D34;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D82D34()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete PointAndSpeakIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D82EB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4678 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D82F58(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D8302C, v3, v2);
}

uint64_t sub_257D8302C()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE81D0, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D83140(uint64_t a1)
{
  v2 = sub_257CF9714();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D8318C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D82A20();
}

uint64_t sub_257D83238()
{
  result = sub_257ECF4C0();
  qword_27F913048 = result;
  return result;
}

double sub_257D832D0()
{
  v0 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v7 = v40;
  if (v40)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_257ECF4C0();

    v11 = sub_257ECF4C0();
    v7 = [v9 localizedStringForKey:v10 value:0 table:v11];

    if (!v7)
    {
      sub_257ECF500();
      v7 = sub_257ECF4C0();
    }
  }

  [v0 setAccessibilityValue_];

  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);

  sub_257ECFD50();

  if (v40)
  {
    v18 = swift_beginAccess();
    MEMORY[0x28223BE20](v18, v19, v20, v21, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v41 + 16))
    {
      v23 = sub_257C03F6C(v39, v40);
      if (v24)
      {
        v25 = *(*(v41 + 56) + 296 * v23);

        if ((v25 & 1) == 0 || v39 == 0xD000000000000010 && v40 == 0x8000000257EFBEB0)
        {
        }

        else
        {
          v32 = sub_257ED0640();

          if ((v32 & 1) == 0)
          {
            v33 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton;
            v34 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton);
            v35 = objc_opt_self();
            v36 = v34;
            v37 = [v35 systemYellowColor];
            [v36 setBackgroundColor_];

            v29 = *(v38 + v33);
            v30 = sub_257DE0CC0();
LABEL_18:
            v31 = v30;
            [v29 setImage:v30 forState:0];

            return result;
          }
        }

        v26 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton;
        v27 = qword_281544A78;
        v28 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton);
        if (v27 != -1)
        {
          swift_once();
        }

        [v28 setBackgroundColor_];

        v29 = *(v38 + v26);
        v30 = sub_257DE0C70();
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_257D83838()
{
  v1 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  v2 = [v1 contextMenuInteraction];

  [v2 dismissMenu];
  v3 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
  v4 = [v3 contextMenuInteraction];

  [v4 dismissMenu];
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (v5)
  {
    v7 = v5;
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    [v6 removeInteraction_];

    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton) setAccessibilityCustomActions_];
  }
}

void sub_257D839A4()
{
  v0 = objc_opt_self();
  swift_beginAccess();
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);

  v1 = sub_257ECF7F0();

  v17 = v0;
  [v0 deactivateConstraints_];

  sub_257D8885C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v18 = *v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v18 == 1)
  {

    MEMORY[0x28223BE20](v9, v10, v11, v12, v13);

    sub_257ECFD50();

    v14 = sub_257C592D0(2u, v19);

    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_257D88DE0();
    goto LABEL_17;
  }

  v15 = *(v19 + 16);

  if (v15 > 1)
  {
    if (v15 == 2)
    {
LABEL_15:
      sub_257D8A398();
      goto LABEL_17;
    }

    if (v15 == 3)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    if (v15 == 1)
    {
      sub_257D8C708();
    }
  }

  else
  {
    sub_257D8C2CC();
  }

LABEL_17:

  v16 = sub_257ECF7F0();

  [v17 activateConstraints_];
}

id sub_257D83D6C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ViewSnapshotsButton()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlpha_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257D83E24()
{
  v0 = [objc_allocWithZone(type metadata accessor for MFHapticButton()) init];
  v17 = sub_257D841C4;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D842B0;
  v16 = &block_descriptor_28;
  v1 = _Block_copy(&v13);
  v2 = v0;
  [v2 _setAccessibilityTraitsBlock_];
  _Block_release(v1);
  v17 = sub_257D842F0;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D47A84;
  v16 = &block_descriptor_31;
  v3 = _Block_copy(&v13);
  [v2 _setAccessibilityIdentifierBlock_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_257D98310;
  v18 = v4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_257D84440;
  v16 = &block_descriptor_37;
  v5 = _Block_copy(&v13);

  [v2 _setAccessibilityPathBlock_];
  _Block_release(v5);
  v6 = v2;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v8 setCornerCurve_];

  v9 = [v6 layer];
  [v9 setMasksToBounds_];

  v10 = v6;
  if (sub_257D84490(v2))
  {
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v11 = sub_257ECF7F0();
  }

  else
  {
    v11 = 0;
  }

  [v10 setAccessibilityCustomActions_];

  return v10;
}

uint64_t sub_257D841C4()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = *MEMORY[0x277D76548];
  if (v2 == 1)
  {
    v1 = *MEMORY[0x277D76580];
    if (result)
    {
      if ((v1 & ~result) == 0)
      {
        return result;
      }
    }

    else if (!v1)
    {
      return 0;
    }

    return v1 | result;
  }

  return result;
}

uint64_t sub_257D842B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257D842F0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v1)
  {
    return 0x65736F6C43;
  }

  else
  {
    return 0x65727574706143;
  }
}

id sub_257D843CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong _accessibilityCirclePathBasedOnBoundsWidth];

  return v3;
}

id sub_257D84440(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257D84490(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_257ECF500();
    v7 = sub_257ECF4C0();
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D75088]);
  v15[4] = sub_257D98318;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_257D96328;
  v15[3] = &block_descriptor_46_0;
  v11 = _Block_copy(v15);
  v12 = v1;
  sub_257ECC3F0();
  v13 = [v10 initWithName:v7 actionHandler:v11];

  _Block_release(v11);

  *(v2 + 32) = v13;
  return v2;
}

uint64_t sub_257D846D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction);
  if (v3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v3;
      [v5 bounds];
    }

    else
    {
      v6 = v3;
    }

    UIRectGetCenter();
    [v6 _presentMenuAtLocation_];
  }

  return 1;
}

uint64_t sub_257D847B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong contextMenuInteraction];

    if (v4)
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
      }

      UIRectGetCenter();
      [v4 _presentMenuAtLocation_];
    }
  }

  return 1;
}

uint64_t sub_257D848BC(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v12[0])
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_257ECF500();
    v7 = sub_257ECF4C0();
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(MEMORY[0x277D75088]);
  v12[4] = sub_257D96E30;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_257D96328;
  v12[3] = &block_descriptor_19_0;
  v10 = _Block_copy(v12);
  sub_257ECC3F0();
  v11 = [v9 initWithName:v7 actionHandler:v10];

  _Block_release(v10);

  result = v2;
  *(v2 + 32) = v11;
  return result;
}

uint64_t sub_257D84B68(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 31;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong contextMenuInteraction];

    if (v12)
    {
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
      }

      UIRectGetCenter();
      [v12 _presentMenuAtLocation_];
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v15 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
  swift_beginAccess();
  v23[0] = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v16 = sub_257ECF110();
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  *(&v22 - 2) = v23;
  *(&v22 - 1) = v15;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v23[1] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  return 1;
}

id sub_257D84E54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  if (v3)
  {
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v4 = sub_257ECF7F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_257D84F00(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257D84F64(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257D84FC4()
{
  v0 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  sub_257ECDAB0();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  sub_257ECF500();
  sub_257ECDA60();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_opt_self() systemYellowColor];
  [v8 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FC0, &qword_257EE85E0);
  sub_257BD2D4C(&qword_27F8F8FC8, &qword_27F8F8FC0, &qword_257EE85E0, MEMORY[0x277D83660]);
  sub_257ECDA80();
  v14 = sub_257ECDA40();
  sub_257ECDAC0();
  sub_257ECDAF0();

  v15 = sub_257ECDA70();
  [v15 setUserInteractionEnabled_];

  sub_257ECDAA0();
  sub_257ECDA90();

  return v8;
}

id sub_257D85250()
{
  v0 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v63 - v10;
  v12 = sub_257ECFFA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ED0030();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  sub_257ED0020();
  (*(v13 + 104))(v19, *MEMORY[0x277D74FD8], v12);
  sub_257ECFFB0();
  v29 = [objc_opt_self() configurationWithWeight_];
  v30 = sub_257ECF4C0();
  v31 = [objc_opt_self() systemImageNamed_];

  v64 = v29;
  if (v31)
  {
    v32 = [v31 imageWithConfiguration_];
  }

  sub_257ED0010();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  sub_257ECFFF0();
  v35 = [v33 systemYellowColor];
  sub_257ED0000();
  (*(v21 + 16))(v11, v27, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_257ED0050();
  v36 = v28;
  [v36 setNeedsUpdateConfiguration];
  v37 = v36;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_257ECF4C0();
  v41 = sub_257ECF4C0();
  v63 = v20;
  v42 = v41;
  v43 = [v39 localizedStringForKey:v40 value:0 table:v41];

  if (!v43)
  {
    sub_257ECF500();
    v43 = sub_257ECF4C0();
  }

  [v37 setAccessibilityLabel_];

  sub_257ECDAC0();
  v44 = objc_allocWithZone(sub_257ECDB00());
  v45 = sub_257ECDAE0();
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 setClipsToBounds_];
  v46 = [v45 layer];
  [v46 setCornerCurve_];

  [v37 addSubview_];
  [v37 sendSubviewToBack_];
  v47 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_257EDBE40;
  v49 = [v45 widthAnchor];
  v50 = [v37 widthAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v48 + 32) = v51;
  v52 = [v45 heightAnchor];
  v53 = [v37 heightAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v48 + 40) = v54;
  v55 = [v45 centerXAnchor];
  v56 = [v37 centerXAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v48 + 48) = v57;
  v58 = [v45 centerYAnchor];

  v59 = [v37 centerYAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v48 + 56) = v60;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v61 = sub_257ECF7F0();

  [v47 activateConstraints_];

  (*(v21 + 8))(v27, v63);
  return v37;
}

uint64_t sub_257D859BC()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount);
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount + 8) != 1)
  {
    return *v1;
  }

  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  sub_257C73204();
  v3 = *(v2 + 16);

  result = v3;
  *v1 = v3;
  v1[8] = 0;
  return result;
}

void sub_257D85A48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0, &qword_257EE8680);
  v77 = *(v17 - 8);
  v78 = v17;
  *&v22 = MEMORY[0x28223BE20](v17, v18, v19, v20, v21).n128_u64[0];
  v24 = &v75 - v23;
  v80.receiver = v1;
  v80.super_class = ObjectType;
  objc_msgSendSuper2(&v80, sel_viewDidLoad, v22);
  v25 = [v1 view];
  if (!v25)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 setClipsToBounds_];

  sub_257D8651C(v27);
  sub_257C7C61C();
  v28 = [v1 view];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
    v31 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
    [v30 addSubview_];

    v32 = v30;
    v33 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
    [v32 addSubview_];

    v34 = v32;
    v35 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v34 addSubview_];

    v36 = v34;
    v37 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v36 addSubview_];

    v38 = v36;
    v39 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);
    [v38 addSubview_];

    v40 = v38;
    v41 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel, sub_257D98004);
    [v40 addSubview_];

    v42 = v40;
    v43 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
    [v42 addSubview_];

    v44 = v42;
    v45 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
    [v44 addSubview_];

    v46 = v44;
    v47 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);
    [v46 addSubview_];

    v48 = v46;
    v49 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel, sub_257D97820);
    [v48 addSubview_];
  }

  sub_257D839A4();
  v50 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  v51 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction;
  v52 = *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction] = v50;

  v53 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
  if (!*&v1[v51])
  {
    goto LABEL_14;
  }

  v54 = v53;
  v75 = v29;
  [v53 addInteraction_];

  v55 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton] setContextMenuInteractionEnabled_];
  v56 = [*&v1[v55] centerXAnchor];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v58 = v57;
  v59 = [v57 centerXAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  v61 = *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint] = v60;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  sub_257ECDD30();
  swift_endAccess();
  v62 = [objc_opt_self() mainRunLoop];
  aBlock[0] = v62;
  v63 = sub_257ED0080();
  (*(*(v63 - 8) + 56))(v9, 1, 1, v63);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BE4084(v9, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v76 + 8))(v16, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0, &qword_257EE8680, MEMORY[0x277CBCD60]);
  v64 = v78;
  v65 = sub_257ECDE50();

  (*(v77 + 8))(v24, v64);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameModeSubscription] = v65;

  [*&v1[v55] addTarget:v1 action:sel_didTapSnapshotButton_ forControlEvents:64];
  v66 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  [v66 addTarget:v1 action:sel_didTapDetectionModeButton_ forControlEvents:64];

  [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton] addTarget:v1 action:sel_didTapBackButton_ forControlEvents:64];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v67 = aBlock[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v68 = aBlock[0];
  v69 = [v1 view];
  if (!v69)
  {
    goto LABEL_16;
  }

  v70 = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(aBlock[0]))
  {
    v71 = 7471104;
  }

  else
  {
    v71 = 0;
  }

  v72 = objc_opt_self();
  v73 = swift_allocObject();
  *(v73 + 16) = v67;
  *(v73 + 17) = v68;
  *(v73 + 24) = v1;
  aBlock[4] = sub_257D9A694;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_178;
  v74 = _Block_copy(aBlock);
  v1;

  [v72 transitionWithView:v70 duration:v71 options:v74 animations:0 completion:0.0];
  _Block_release(v74);

  sub_257D87528();
}

void sub_257D8651C(uint64_t a1)
{
  sub_257D14A40(a1);
  v2 = sub_257ECF4C0();
  v87 = objc_opt_self();
  v3 = [v87 _systemImageNamed_];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 configurationWithPointSize:4 weight:-1 scale:25.0];
    v7 = [v5 imageByApplyingSymbolConfiguration_];
  }

  sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = v1;
  v10 = sub_257ECFF90();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v10 setState_];
  [v10 setAttributes_];
  v11 = v10;
  v12 = sub_257ECF4C0();
  [v11 setAccessibilityIdentifier_];
  v86 = v11;

  sub_257D14A40(v13);
  v14 = sub_257ECF4C0();
  v15 = [v87 systemImageNamed_];

  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 configurationWithPointSize:4 weight:-1 scale:25.0];
    v19 = [v17 imageByApplyingSymbolConfiguration_];
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = v9;
  v22 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v22 setState_];
  [v22 setAttributes_];
  v23 = v22;
  v24 = sub_257ECF4C0();
  [v23 setAccessibilityIdentifier_];
  v85 = v23;

  sub_257D14A40(v25);
  v26 = sub_257ECF4C0();
  v27 = [v87 systemImageNamed_];

  if (v27)
  {
    v28 = objc_opt_self();
    v29 = v27;
    v30 = [v28 configurationWithPointSize:4 weight:-1 scale:25.0];
    v31 = [v29 imageByApplyingSymbolConfiguration_];
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v21;
  v33 = v21;
  v34 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v34 setState_];
  [v34 setAttributes_];
  v35 = v34;
  v36 = sub_257ECF4C0();
  [v35 setAccessibilityIdentifier_];

  sub_257D14A40(v37);
  v38 = sub_257ECF4C0();
  v39 = [v87 systemImageNamed_];

  if (v39)
  {
    v40 = objc_opt_self();
    v41 = v39;
    v42 = [v40 configurationWithPointSize:4 weight:-1 scale:25.0];
    v43 = [v41 imageByApplyingSymbolConfiguration_];
  }

  v84 = v35;
  v44 = swift_allocObject();
  *(v44 + 16) = v33;
  v45 = v33;
  v46 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v46 setState_];
  [v46 setAttributes_];
  v47 = v46;
  v48 = sub_257ECF4C0();
  [v47 setAccessibilityIdentifier_];

  sub_257D14A40(v49);
  v50 = sub_257ECF4C0();
  v51 = [v87 systemImageNamed_];

  if (v51)
  {
    v52 = objc_opt_self();
    v53 = v51;
    v54 = [v52 configurationWithPointSize:4 weight:-1 scale:25.0];
    v55 = [v53 imageByApplyingSymbolConfiguration_];
  }

  v56 = swift_allocObject();
  *(v56 + 16) = v45;
  v57 = v45;
  v58 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v58 setState_];
  [v58 setAttributes_];
  v59 = v58;
  v60 = sub_257ECF4C0();
  [v59 setAccessibilityIdentifier_];

  sub_257D14A40(v61);
  v62 = sub_257ECF4C0();
  v63 = [v87 systemImageNamed_];

  if (v63)
  {
    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 configurationWithPointSize:4 weight:-1 scale:25.0];
    v67 = [v65 imageByApplyingSymbolConfiguration_];
  }

  v68 = swift_allocObject();
  *(v68 + 16) = v57;
  v57;
  v69 = sub_257ECFF90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  [v69 setState_];
  [v69 setAttributes_];
  v70 = v69;
  v71 = sub_257ECF4C0();
  [v70 setAccessibilityIdentifier_];

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v72 = byte_27F8F78A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v73 = swift_allocObject();
  if (v72 == 1)
  {
    *(v73 + 16) = xmmword_257EDED80;
    *(v73 + 32) = v70;
    *(v73 + 40) = v59;
    *(v73 + 48) = v84;
    *(v73 + 56) = v47;
    v74 = v86;
    *(v73 + 64) = v85;
    *(v73 + 72) = v86;
    v75 = v85;
    v76 = v84;
    v77 = v47;
  }

  else
  {
    *(v73 + 16) = xmmword_257EDED10;
    *(v73 + 32) = v70;
    *(v73 + 40) = v59;
    v74 = v86;
    *(v73 + 48) = v86;
  }

  v78 = v74;
  v79 = v59;
  v80 = v70;

  sub_257ED0660();
  sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);

  sub_257BD2C2C(0, qword_281543E10, 0x277D75710);
  v83 = v73;
  v81 = sub_257ECFEA0();
  v82 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  [v82 setMenu_];
}

void sub_257D872EC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v5 = aBlock[0];
    v6 = [v4 view];
    if (v6)
    {
      v7 = v6;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(aBlock[0]))
      {
        v8 = 7471104;
      }

      else
      {
        v8 = 0;
      }

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 17) = v5;
      *(v10 + 24) = v4;
      aBlock[4] = sub_257D9A694;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_258;
      v11 = _Block_copy(aBlock);
      v12 = v4;

      [v9 transitionWithView:v7 duration:v8 options:v11 animations:0 completion:0.0];
      _Block_release(v11);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257D87528()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v79 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v96 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v97 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v79 - v19;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v98 = objc_opt_self();
  v21 = [v98 mainRunLoop];
  v99 = v21;
  v92 = sub_257ED0080();
  v22 = *(v92 - 8);
  v87 = *(v22 + 56);
  v84 = v22 + 56;
  v87(v6, 1, 1, v92);
  v93 = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  v94 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  v95 = sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BE4084(v6, &unk_27F8F4DB0, &unk_257ED8210);

  v89 = *(v96 + 8);
  v96 += 8;
  v89(v13, v7);
  swift_allocObject();
  v23 = v85;
  swift_unknownObjectWeakInit();
  v90 = sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v24 = sub_257ECDE50();

  v25 = *(v97 + 8);
  v97 += 8;
  v91 = v25;
  v25(v20, v14);
  *(v23 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameReviewSubscription) = v24;

  v26 = v20;
  v88 = qword_281548348;
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v27 = [v98 mainRunLoop];
  v99 = v27;
  v83 = v6;
  v87(v6, 1, 1, v92);
  v81 = v7;
  sub_257ECDDF0();
  sub_257BE4084(v6, &unk_27F8F4DB0, &unk_257ED8210);

  v89(v13, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_257ECDE50();

  v91(v20, v14);
  *(v23 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeSubscription) = v28;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v29 = [v98 mainRunLoop];
  v99 = v29;
  v30 = v83;
  v87(v83, 1, 1, v92);
  v31 = v81;
  sub_257ECDDF0();
  sub_257BE4084(v30, &unk_27F8F4DB0, &unk_257ED8210);

  v32 = v13;
  v33 = v89;
  v89(v13, v31);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v14;
  v34 = v26;
  v35 = sub_257ECDE50();

  v91(v26, v14);
  *(v23 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_peopleDetectionSubscription) = v35;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v36 = [v98 mainRunLoop];
  v99 = v36;
  v37 = v83;
  v38 = v87;
  v87(v83, 1, 1, v92);
  v39 = v81;
  v80 = v32;
  sub_257ECDDF0();
  sub_257BE4084(v37, &unk_27F8F4DB0, &unk_257ED8210);

  v40 = v32;
  v41 = v39;
  v33(v40, v39);
  swift_allocObject();
  v42 = v85;
  swift_unknownObjectWeakInit();
  v43 = v82;
  v44 = sub_257ECDE50();

  v45 = v91;
  v91(v34, v43);
  *(v42 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_doorDetectionSubscription) = v44;

  swift_beginAccess();
  v46 = v80;
  sub_257ECDD30();
  swift_endAccess();
  v47 = [v98 mainRunLoop];
  v99 = v47;
  v48 = v83;
  v38(v83, 1, 1, v92);
  sub_257ECDDF0();
  sub_257BE4084(v48, &unk_27F8F4DB0, &unk_257ED8210);

  v89(v46, v41);
  swift_allocObject();
  v49 = v85;
  swift_unknownObjectWeakInit();
  v50 = v34;
  v51 = sub_257ECDE50();

  v45(v34, v43);
  *(v49 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_objectUnderstandingSubscription) = v51;

  swift_beginAccess();
  v52 = v80;
  sub_257ECDD30();
  swift_endAccess();
  v53 = [v98 mainRunLoop];
  v99 = v53;
  v54 = v83;
  v55 = v92;
  v87(v83, 1, 1, v92);
  v56 = v81;
  sub_257ECDDF0();
  sub_257BE4084(v54, &unk_27F8F4DB0, &unk_257ED8210);

  v89(v52, v56);
  swift_allocObject();
  v57 = v85;
  swift_unknownObjectWeakInit();
  v58 = v82;
  v59 = sub_257ECDE50();

  v91(v50, v58);
  *(v57 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_textDetectionSubscription) = v59;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v60 = [v98 mainRunLoop];
  v99 = v60;
  v61 = v83;
  v62 = v55;
  v63 = v87;
  v87(v83, 1, 1, v62);
  v64 = v81;
  sub_257ECDDF0();
  sub_257BE4084(v61, &unk_27F8F4DB0, &unk_257ED8210);

  v65 = v64;
  v89(v52, v64);
  swift_allocObject();
  v66 = v85;
  swift_unknownObjectWeakInit();
  v67 = v82;
  v68 = sub_257ECDE50();

  v91(v50, v67);
  *(v66 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_imageCaptionDetectionSubscription) = v68;

  swift_beginAccess();
  v69 = v80;
  sub_257ECDD30();
  swift_endAccess();
  v70 = [v98 mainRunLoop];
  v99 = v70;
  v71 = v83;
  v63(v83, 1, 1, v92);
  v72 = v65;
  sub_257ECDDF0();
  sub_257BE4084(v71, &unk_27F8F4DB0, &unk_257ED8210);

  v89(v69, v65);
  swift_allocObject();
  v73 = v85;
  swift_unknownObjectWeakInit();
  v74 = v82;
  v75 = sub_257ECDE50();

  v91(v50, v74);
  *(v73 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_pointSpeakSubscription) = v75;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v76 = [v98 mainRunLoop];
  v99 = v76;
  v87(v71, 1, 1, v92);
  sub_257ECDDF0();
  sub_257BE4084(v71, &unk_27F8F4DB0, &unk_257ED8210);

  v89(v69, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_257ECDE50();

  v91(v50, v74);
  *(v73 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeAvailabilitySubscription) = v77;

  v78 = [objc_opt_self() defaultCenter];
  if (qword_27F8F4680 != -1)
  {
    swift_once();
  }

  [v78 addObserver:v73 selector:? name:? object:?];
}

void sub_257D88594(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v3 = v11[0];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v11[0]))
    {
      v6 = 7471104;
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v11[0];
    *(v8 + 17) = v3;
    *(v8 + 24) = v1;
    v11[4] = sub_257D9A694;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_257D231C0;
    v11[3] = &block_descriptor_168;
    v9 = _Block_copy(v11);
    v10 = v1;

    [v7 transitionWithView:v5 duration:v6 options:v9 animations:0 completion:0.0];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_257D8885C()
{
  v1 = [v0 view];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v28 = *v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  if (!sub_257C592D0(0, v29))
  {
    v13 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v13 removeFromSuperview];

    v12 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v12 removeFromSuperview];
LABEL_9:

    if (sub_257C592D0(1u, v29))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v1)
  {
    v9 = v1;
    v10 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
    [v9 addSubview_];

    v11 = v9;
    v12 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    [v11 addSubview_];

    goto LABEL_9;
  }

  if (!sub_257C592D0(1u, v29))
  {
LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v28 != 1)
    {
      v20 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
      [v20 removeFromSuperview];

      v21 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
      [v21 removeFromSuperview];

      v19 = sub_257D83D6C();
      [v19 removeFromSuperview];
LABEL_14:

      goto LABEL_15;
    }

LABEL_11:
    if (!v1)
    {
      goto LABEL_15;
    }

    v14 = v1;
    v15 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    [v14 addSubview_];

    v16 = v14;
    v17 = sub_257D83D6C();
    [v16 addSubview_];

    v18 = v16;
    v19 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    [v18 addSubview_];

    goto LABEL_14;
  }

LABEL_15:
  v22 = sub_257C592D0(2u, v29);

  if (v22)
  {
    if (!v1)
    {
      return;
    }

    v23 = v1;
    v24 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
    [v23 addSubview_];

    v25 = v23;
    v26 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    [v25 addSubview_];

    v1 = v25;
  }

  else
  {
    v27 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
    [v27 removeFromSuperview];

    v25 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    [v25 removeFromSuperview];
  }
}

void sub_257D88DE0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v186 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v182 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v184 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v190)
  {
    sub_257D98414(v189, v190, v191, v192);
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);

    v7 = v6;
    v8 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel;
    v9 = sub_257D97820;
LABEL_7:
    v11 = sub_257D84F64(v8, v9);

    v188 = v11;
    v12 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

    v13 = v12;
    v14 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);

    v15 = v14;
    v16 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

    v17 = v16;
    v18 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);

    v187 = v18;
    v19 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);

    v183 = v19;
    v20 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
    v21 = sub_257D97B28;
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v189 == 1)
  {
    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);

    v7 = v10;
    v8 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
    v9 = sub_257D98004;
    goto LABEL_7;
  }

  v172 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

  v7 = v172;
  v173 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);

  v188 = v173;
  v174 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

  v13 = v174;
  v175 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);

  v15 = v175;
  v176 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

  v17 = v176;
  v177 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);

  v187 = v177;
  v178 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);

  v183 = v178;
  v20 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v21 = sub_257D98320;
LABEL_8:
  v22 = sub_257D84F64(v20, v21);

  v181 = v22;
  v23 = [v0 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v180 = v15;
  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v193.origin.x = v26;
  v193.origin.y = v28;
  v193.size.width = v30;
  v193.size.height = v32;
  Width = CGRectGetWidth(v193);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_257EE81E0;
  v35 = [v7 topAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v39;
  v40 = [v7 widthAnchor];
  v41 = [v40 constraintEqualToConstant_];

  *(v34 + 40) = v41;
  v42 = [v7 heightAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v34 + 48) = v43;
  v185 = v7;
  v44 = [v7 leadingAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v48;
  v49 = [v188 leadingAnchor];
  v50 = [v0 view];
  if (!v50)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v51 = v50;
  v179 = v17;
  v52 = [v50 leadingAnchor];

  v53 = [v49 constraintGreaterThanOrEqualToAnchor_];
  *(v34 + 64) = v53;
  v54 = [v188 trailingAnchor];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintLessThanOrEqualToAnchor_];
  *(v34 + 72) = v58;
  v59 = [v188 topAnchor];

  v60 = [v7 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:6.0];

  *(v34 + 80) = v61;
  v62 = [v13 topAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v64 = v63;
  v65 = (Width + -272.0) / 3.0;
  v66 = [v63 topAnchor];

  v67 = [v62 constraintEqualToAnchor_];
  *(v34 + 88) = v67;
  v68 = [v13 widthAnchor];
  v69 = [v68 constraintEqualToConstant_];

  *(v34 + 96) = v69;
  v70 = [v13 heightAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v34 + 104) = v71;
  v72 = [v13 leadingAnchor];
  v73 = [v7 trailingAnchor];

  v74 = [v72 constraintEqualToAnchor:v73 constant:v65];
  *(v34 + 112) = v74;
  v75 = [v15 centerXAnchor];
  v76 = [v13 centerXAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v34 + 120) = v77;
  v78 = [v15 topAnchor];

  v79 = [v13 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:6.0];

  *(v34 + 128) = v80;
  v81 = [v17 topAnchor];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v83 = v82;
  v84 = [v82 topAnchor];

  v85 = [v81 constraintEqualToAnchor_];
  *(v34 + 136) = v85;
  v86 = [v17 widthAnchor];
  v87 = [v86 constraintEqualToConstant_];

  *(v34 + 144) = v87;
  v88 = [v17 heightAnchor];
  v89 = [v88 constraintEqualToConstant_];

  *(v34 + 152) = v89;
  v90 = [v17 trailingAnchor];
  v91 = [v183 leadingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:-v65];

  *(v34 + 160) = v92;
  v93 = [v187 centerXAnchor];
  v94 = [v17 centerXAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v34 + 168) = v95;
  v96 = [v187 topAnchor];

  v97 = [v17 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:6.0];

  *(v34 + 176) = v98;
  v99 = [v183 topAnchor];
  v100 = [v0 view];
  if (!v100)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v101 = v100;
  v102 = [v100 topAnchor];

  v103 = [v99 constraintEqualToAnchor_];
  *(v34 + 184) = v103;
  v104 = [v183 widthAnchor];
  v105 = [v104 constraintEqualToConstant_];

  *(v34 + 192) = v105;
  v106 = [v183 heightAnchor];
  v107 = [v106 constraintEqualToConstant_];

  *(v34 + 200) = v107;
  v108 = [v183 trailingAnchor];
  v109 = [v0 view];
  if (!v109)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v110 = v109;
  v111 = [v109 trailingAnchor];

  v112 = [v108 constraintEqualToAnchor_];
  *(v34 + 208) = v112;
  v113 = [v181 leadingAnchor];
  v114 = [v0 view];
  if (!v114)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v115 = v114;
  v116 = [v114 leadingAnchor];

  v117 = [v113 constraintGreaterThanOrEqualToAnchor_];
  *(v34 + 216) = v117;
  v118 = [v181 trailingAnchor];
  v119 = [v0 view];
  if (!v119)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v120 = v119;
  v121 = [v119 trailingAnchor];

  v122 = [v118 constraintLessThanOrEqualToAnchor_];
  *(v34 + 224) = v122;
  v123 = [v181 topAnchor];

  v124 = [v183 bottomAnchor];
  v125 = [v123 constraintEqualToAnchor:v124 constant:6.0];

  *(v34 + 232) = v125;
  v126 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v0[v126] = v34;

  if (sub_257D96E38())
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDED80;
    v128 = [v188 centerXAnchor];
    v129 = [v7 centerXAnchor];
    v130 = [v128 constraintEqualToAnchor_];

    *(inited + 32) = v130;
    v131 = [v181 centerXAnchor];
    v132 = [v183 centerXAnchor];
    v133 = [v131 constraintEqualToAnchor_];

    *(inited + 40) = v133;
    v134 = v15;
    v135 = [v15 leadingAnchor];
    v136 = v187;
    v137 = v179;
    v138 = v13;
    v139 = [v13 leadingAnchor];
    v140 = [v135 constraintGreaterThanOrEqualToAnchor_];

    *(inited + 48) = v140;
    v141 = [v180 trailingAnchor];
    v142 = [v13 trailingAnchor];
    v143 = [v141 constraintLessThanOrEqualToAnchor_];

    *(inited + 56) = v143;
    v144 = [v187 leadingAnchor];
    v145 = v185;
    v146 = [v179 leadingAnchor];
    v147 = [v144 constraintGreaterThanOrEqualToAnchor_];

    *(inited + 64) = v147;
    v148 = [v187 trailingAnchor];
    v149 = [v179 trailingAnchor];
    v150 = [v148 constraintLessThanOrEqualToAnchor_];

    *(inited + 72) = v150;
    swift_beginAccess();
    sub_257EB0EBC(inited);
    swift_endAccess();
    v151 = v183;
LABEL_24:

    return;
  }

  v152 = swift_initStackObject();
  *(v152 + 16) = xmmword_257EE81F0;
  v153 = [v188 leadingAnchor];
  v154 = [v0 view];
  if (!v154)
  {
    goto LABEL_37;
  }

  v155 = v154;
  v156 = [v154 leadingAnchor];

  v157 = [v153 constraintEqualToAnchor_];
  *(v152 + 32) = v157;
  v158 = [v181 trailingAnchor];
  v159 = [v0 view];
  if (v159)
  {
    v160 = v159;
    v161 = [v159 trailingAnchor];

    v162 = [v158 constraintEqualToAnchor_];
    *(v152 + 40) = v162;
    v134 = v15;
    v163 = [v15 leadingAnchor];
    v164 = [v188 trailingAnchor];
    v165 = [v163 constraintGreaterThanOrEqualToAnchor_];

    *(v152 + 48) = v165;
    v166 = [v187 leadingAnchor];
    v167 = [v15 trailingAnchor];
    v168 = [v166 constraintGreaterThanOrEqualToAnchor_];

    *(v152 + 56) = v168;
    v169 = [v187 trailingAnchor];
    v170 = [v181 leadingAnchor];
    v171 = [v169 constraintLessThanOrEqualToAnchor_];

    *(v152 + 64) = v171;
    swift_beginAccess();
    sub_257EB0EBC(v152);
    swift_endAccess();
    v138 = v13;
    v136 = v187;
    v137 = v179;
    v151 = v183;
    v145 = v185;
    goto LABEL_24;
  }

LABEL_38:
  __break(1u);
}

void sub_257D8A398()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v240)
  {
    sub_257D98414(v239, v240, v241, v242);
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);

    v7 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel;
    v8 = sub_257D97820;
LABEL_7:
    v9 = sub_257D84F64(v7, v8);

    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    v236 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v239 == 1)
  {
    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);

    v7 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
    v8 = sub_257D98004;
    goto LABEL_7;
  }

  v223 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v238 = *v223;
  v224 = qword_2815447E0;

  if (v224 != -1)
  {
    v225 = swift_once();
  }

  MEMORY[0x28223BE20](v225, v226, v227, v228, v229);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  if (sub_257C592D0(0, v237))
  {
    v230 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

    v9 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    v231 = sub_257C592D0(1u, v237);

    if (v231)
    {
      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

      v232 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel;
      v233 = sub_257D9740C;
    }

    else
    {
      v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

      v232 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel;
      v233 = sub_257D97500;
    }

    v236 = sub_257D84F64(v232, v233);
    v6 = v230;
  }

  else
  {

    v6 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

    v9 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
    v10 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

    v236 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
  }

LABEL_8:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257EE8200;
  v12 = [v6 topAnchor];
  v13 = [v1 view];
  v14 = v13;
  v15 = v6;
  v234 = v6;
  v235 = v9;
  if (v238 == 1)
  {
    if (v13)
    {
      v16 = [v13 topAnchor];

      v17 = [v12 constraintEqualToAnchor_];
      *(v11 + 32) = v17;
      v18 = [v15 widthAnchor];
      v19 = [v18 constraintEqualToConstant_];

      *(v11 + 40) = v19;
      v20 = [v15 heightAnchor];
      v21 = [v20 constraintEqualToConstant_];

      *(v11 + 48) = v21;
      v22 = [v15 leadingAnchor];
      v23 = [v1 view];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 leadingAnchor];

        v26 = [v22 constraintEqualToAnchor_];
        *(v11 + 56) = v26;
        v27 = [v9 leadingAnchor];
        v28 = [v1 view];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 leadingAnchor];

          v31 = [v27 constraintGreaterThanOrEqualToAnchor_];
          *(v11 + 64) = v31;
          v32 = [v9 trailingAnchor];
          v33 = [v1 view];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 trailingAnchor];

            v36 = [v32 constraintLessThanOrEqualToAnchor_];
            *(v11 + 72) = v36;
            v37 = [v9 topAnchor];
            v38 = [v15 bottomAnchor];
            v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

            *(v11 + 80) = v39;
            v40 = [v10 &selRef_dataForKey_];
            v41 = [v1 view];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 &selRef_dataForKey_];

              v44 = [v40 constraintEqualToAnchor_];
              *(v11 + 88) = v44;
              v45 = [v10 widthAnchor];
              v46 = [v45 constraintEqualToConstant_];

              *(v11 + 96) = v46;
              v47 = [v10 heightAnchor];
              v48 = [v47 constraintEqualToConstant_];

              *(v11 + 104) = v48;
              v49 = [v10 centerXAnchor];
              v50 = [v1 view];
              if (v50)
              {
                v51 = v50;
                v52 = [v50 centerXAnchor];

                v53 = [v49 constraintEqualToAnchor_];
                *(v11 + 112) = v53;
                v54 = [v236 centerXAnchor];
                v55 = [v10 centerXAnchor];
                v56 = [v54 constraintEqualToAnchor_];

                *(v11 + 120) = v56;
                v57 = [v236 leadingAnchor];
                v58 = [v1 view];
                if (v58)
                {
                  v59 = v58;
                  v60 = [v58 leadingAnchor];

                  v61 = [v57 constraintGreaterThanOrEqualToAnchor_];
                  *(v11 + 128) = v61;
                  v62 = [v236 trailingAnchor];
                  v63 = [v1 view];
                  if (v63)
                  {
                    v64 = v63;
                    v65 = [v63 trailingAnchor];

                    v66 = [v62 constraintLessThanOrEqualToAnchor_];
                    *(v11 + 136) = v66;
                    v67 = [v236 topAnchor];
                    v68 = [v10 bottomAnchor];
                    v69 = [v67 constraintEqualToAnchor:v68 constant:6.0];

                    *(v11 + 144) = v69;
                    v70 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
                    v71 = [v70 &selRef_dataForKey_];

                    v72 = [v1 view];
                    if (v72)
                    {
                      v73 = v72;
                      v74 = [v72 &selRef_dataForKey_];

                      v75 = [v71 constraintEqualToAnchor_];
                      *(v11 + 152) = v75;
                      v76 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton;
                      v77 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton] widthAnchor];
                      v78 = [v77 constraintEqualToConstant_];

                      *(v11 + 160) = v78;
                      v79 = [*&v1[v76] heightAnchor];
                      v80 = [v79 constraintEqualToConstant_];

                      *(v11 + 168) = v80;
                      v81 = [*&v1[v76] &selRef_setImage_forState_ + 4];
                      v82 = [v1 view];
                      if (v82)
                      {
                        v83 = v82;
                        v84 = [v82 &selRef_setImage_forState_ + 4];

                        v85 = [v81 constraintEqualToAnchor_];
                        *(v11 + 176) = v85;
                        v86 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
                        v87 = [v86 leadingAnchor];

                        v88 = [v1 view];
                        if (v88)
                        {
                          v89 = v88;
                          v90 = [v88 leadingAnchor];

                          v91 = [v87 constraintGreaterThanOrEqualToAnchor_];
                          *(v11 + 184) = v91;
                          v92 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
                          v93 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel] &selRef_setImage_forState_ + 4];
                          v94 = [v1 view];
                          if (v94)
                          {
                            v95 = v94;
                            v96 = [v94 &selRef_setImage_forState_ + 4];

                            v97 = [v93 constraintLessThanOrEqualToAnchor_];
                            *(v11 + 192) = v97;
                            v98 = [*&v1[v92] topAnchor];
                            v99 = [*&v1[v76] bottomAnchor];
                            v100 = [v98 constraintEqualToAnchor:v99 constant:6.0];

                            *(v11 + 200) = v100;
                            v101 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
                            swift_beginAccess();
                            *&v1[v101] = v11;

                            if (sub_257D96E38())
                            {
                              v102 = [v235 centerXAnchor];
                              v103 = [v234 centerXAnchor];
                              v104 = &selRef_imageByApplyingSymbolConfiguration_;
                              v105 = [v102 constraintEqualToAnchor_];

                              v106 = swift_beginAccess();
                              MEMORY[0x259C72300](v106);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                                v104 = &selRef_imageByApplyingSymbolConfiguration_;
                              }

LABEL_40:
                              sub_257ECF860();
                              swift_endAccess();
                              v194 = [*&v1[v92] centerXAnchor];
                              v195 = [*&v1[v76] centerXAnchor];
                              v196 = [v194 v104[204]];

                              v197 = swift_beginAccess();
                              MEMORY[0x259C72300](v197);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                              }

                              sub_257ECF860();
                              swift_endAccess();
                              v198 = v234;
                              goto LABEL_55;
                            }

                            v199 = [v235 leadingAnchor];
                            v200 = [v1 view];
                            if (v200)
                            {
                              v201 = v200;
                              v202 = [v200 leadingAnchor];

                              v203 = [v199 constraintEqualToAnchor_];
                              v204 = swift_beginAccess();
                              MEMORY[0x259C72300](v204);
                              if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                              {
                                sub_257ECF830();
                              }

                              sub_257ECF860();
                              swift_endAccess();
                              v205 = [*&v1[v92] trailingAnchor];
                              v206 = [v1 view];
                              if (v206)
                              {
                                v207 = v206;
                                v208 = [v206 trailingAnchor];

                                v209 = [v205 constraintEqualToAnchor_];
                                v210 = swift_beginAccess();
                                MEMORY[0x259C72300](v210);
                                v198 = v234;
                                if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
LABEL_54:
                                  sub_257ECF860();
                                  swift_endAccess();
LABEL_55:

                                  return;
                                }

LABEL_48:
                                sub_257ECF830();
                                goto LABEL_54;
                              }

                              goto LABEL_90;
                            }

                            goto LABEL_88;
                          }

                          goto LABEL_86;
                        }

                        goto LABEL_84;
                      }

                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }

                  goto LABEL_78;
                }

                goto LABEL_76;
              }

              goto LABEL_74;
            }

            goto LABEL_72;
          }

          goto LABEL_70;
        }

        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v13)
  {
    goto LABEL_65;
  }

  v107 = [v13 topAnchor];

  v108 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v108;
  v109 = [v15 widthAnchor];
  v110 = [v109 constraintEqualToConstant_];

  *(v11 + 40) = v110;
  v111 = [v15 heightAnchor];
  v112 = [v111 constraintEqualToConstant_];

  *(v11 + 48) = v112;
  v113 = [v15 leadingAnchor];
  v114 = [v1 view];
  if (!v114)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v115 = v114;
  v116 = [v114 leadingAnchor];

  v117 = [v113 constraintEqualToAnchor_];
  *(v11 + 56) = v117;
  v118 = [v9 leadingAnchor];
  v119 = [v1 view];
  if (!v119)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v120 = v119;
  v121 = [v119 leadingAnchor];

  v122 = [v118 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 64) = v122;
  v123 = [v9 trailingAnchor];
  v124 = [v1 view];
  if (!v124)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v125 = v124;
  v126 = [v124 trailingAnchor];

  v127 = [v123 constraintLessThanOrEqualToAnchor_];
  *(v11 + 72) = v127;
  v128 = [v9 topAnchor];
  v129 = [v15 bottomAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:6.0];

  *(v11 + 80) = v130;
  v131 = [v10 &selRef_dataForKey_];
  v132 = [v1 view];
  if (!v132)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v133 = v132;
  v134 = [v132 &selRef_dataForKey_];

  v135 = [v131 constraintEqualToAnchor_];
  *(v11 + 88) = v135;
  v136 = [v10 widthAnchor];
  v137 = [v136 constraintEqualToConstant_];

  *(v11 + 96) = v137;
  v138 = [v10 heightAnchor];
  v139 = [v138 constraintEqualToConstant_];

  *(v11 + 104) = v139;
  v140 = [v10 centerXAnchor];
  v141 = [v1 view];
  if (!v141)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v142 = v141;
  v143 = [v141 centerXAnchor];

  v144 = [v140 constraintEqualToAnchor_];
  *(v11 + 112) = v144;
  v145 = [v236 centerXAnchor];
  v146 = [v10 centerXAnchor];
  v147 = [v145 constraintEqualToAnchor_];

  *(v11 + 120) = v147;
  v148 = [v236 leadingAnchor];
  v149 = [v1 view];
  if (!v149)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v150 = v149;
  v151 = [v149 leadingAnchor];

  v152 = [v148 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 128) = v152;
  v153 = [v236 trailingAnchor];
  v154 = [v1 &off_279854AF8];
  if (!v154)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v155 = v154;
  v156 = [v154 trailingAnchor];

  v157 = [v153 constraintLessThanOrEqualToAnchor_];
  *(v11 + 136) = v157;
  v158 = [v236 topAnchor];
  v159 = [v10 bottomAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:6.0];

  *(v11 + 144) = v160;
  v161 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v162 = [v161 &selRef_dataForKey_];

  v163 = [v1 &off_279854AF8];
  if (!v163)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v164 = v163;
  v165 = [v163 &selRef_dataForKey_];

  v166 = [v162 constraintEqualToAnchor_];
  *(v11 + 152) = v166;
  v76 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v167 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v168 = [v167 constraintEqualToConstant_];

  *(v11 + 160) = v168;
  v169 = [*&v1[v76] heightAnchor];
  v170 = [v169 constraintEqualToConstant_];

  *(v11 + 168) = v170;
  v171 = [*&v1[v76] trailingAnchor];
  v172 = [v1 &off_279854AF8];
  if (!v172)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v173 = v172;
  v174 = [v172 trailingAnchor];

  v175 = [v171 constraintEqualToAnchor_];
  *(v11 + 176) = v175;
  v176 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v177 = [v176 leadingAnchor];

  v178 = [v1 &off_279854AF8];
  if (!v178)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v179 = v178;
  v180 = [v178 leadingAnchor];

  v181 = [v177 constraintGreaterThanOrEqualToAnchor_];
  *(v11 + 184) = v181;
  v92 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v182 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] trailingAnchor];
  v183 = [v1 &off_279854AF8];
  if (!v183)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v184 = v183;
  v185 = [v183 trailingAnchor];

  v186 = [v182 constraintLessThanOrEqualToAnchor_];
  *(v11 + 192) = v186;
  v187 = [*&v1[v92] topAnchor];
  v188 = [*&v1[v76] bottomAnchor];
  v189 = [v187 constraintEqualToAnchor:v188 constant:6.0];

  *(v11 + 200) = v189;
  v101 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v1[v101] = v11;

  if (sub_257D96E38())
  {
    v190 = [v235 centerXAnchor];
    v191 = [v234 centerXAnchor];
    v104 = &selRef_imageByApplyingSymbolConfiguration_;
    v192 = [v190 constraintEqualToAnchor_];

    v193 = swift_beginAccess();
    MEMORY[0x259C72300](v193);
    if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
      v104 = &selRef_imageByApplyingSymbolConfiguration_;
    }

    goto LABEL_40;
  }

  v211 = [v235 leadingAnchor];
  v212 = [v1 view];
  if (!v212)
  {
    goto LABEL_89;
  }

  v213 = v212;
  v214 = [v212 leadingAnchor];

  v215 = [v211 constraintEqualToAnchor_];
  v216 = swift_beginAccess();
  MEMORY[0x259C72300](v216);
  if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
  v217 = [*&v1[v92] trailingAnchor];
  v218 = [v1 view];
  if (v218)
  {
    v219 = v218;
    v220 = [v218 trailingAnchor];

    v221 = [v217 constraintEqualToAnchor_];
    v222 = swift_beginAccess();
    MEMORY[0x259C72300](v222);
    v198 = v234;
    if (*((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v1[v101] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_91:
  __break(1u);
}

void sub_257D8C2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257EE8210;
  v2 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v3 = [v2 topAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v9 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v1 + 40) = v10;
  v11 = [*&v0[v8] heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v8] centerXAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [v14 centerXAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v1 + 56) = v17;
  v18 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v19 = [v18 centerXAnchor];

  v20 = [*&v0[v8] centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 64) = v21;
  v22 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v23 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] leadingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 72) = v27;
  v28 = [*&v0[v22] trailingAnchor];
  v29 = [v0 view];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 trailingAnchor];

    v32 = [v28 constraintLessThanOrEqualToAnchor_];
    *(v1 + 80) = v32;
    v33 = [*&v0[v22] topAnchor];
    v34 = [*&v0[v8] bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:6.0];

    *(v1 + 88) = v35;
    v36 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
    swift_beginAccess();
    *&v0[v36] = v1;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_257D8C708()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_281544FE0 != -1)
  {
    v98 = v3;
    swift_once();
    v3 = v98;
  }

  v4 = v3;
  swift_beginAccess();
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  if (sub_257C592D0(0, v100))
  {
    v11 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);

    v12 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
    v2 = v11;
    v13 = v4;
  }

  else
  {
    v13 = v4;
    if (sub_257C592D0(1u, v100))
    {
      v14 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);

      v15 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel;
      v16 = sub_257D9740C;
    }

    else
    {
      if (!sub_257C592D0(2u, v100))
      {
        goto LABEL_13;
      }

      v14 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);

      v15 = &OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel;
      v16 = sub_257D97500;
    }

    v12 = sub_257D84F64(v15, v16);
    v2 = v14;
  }

  v13 = v12;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257EE8220;
  v18 = [v2 topAnchor];
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_36;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v2 widthAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v17 + 40) = v24;
  v25 = [v2 heightAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v17 + 48) = v26;
  v27 = [v2 leadingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v17 + 56) = v31;
  v32 = [v13 leadingAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v34 = v33;
  v35 = [v33 leadingAnchor];

  v36 = [v32 constraintGreaterThanOrEqualToAnchor_];
  *(v17 + 64) = v36;
  v37 = [v13 trailingAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v37 constraintLessThanOrEqualToAnchor_];
  *(v17 + 72) = v41;
  v99 = v13;
  v42 = [v13 topAnchor];
  v43 = [v2 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:6.0];

  *(v17 + 80) = v44;
  v45 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  v46 = [v45 topAnchor];

  v47 = [v1 view];
  if (!v47)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v48 = v47;
  v49 = [v47 topAnchor];

  v50 = [v46 constraintEqualToAnchor_];
  *(v17 + 88) = v50;
  v51 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton;
  v52 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton] widthAnchor];
  v53 = [v52 constraintEqualToConstant_];

  *(v17 + 96) = v53;
  v54 = [*&v1[v51] heightAnchor];
  v55 = [v54 constraintEqualToConstant_];

  *(v17 + 104) = v55;
  v56 = [*&v1[v51] trailingAnchor];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v58 = v57;
  v59 = [v57 trailingAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  *(v17 + 112) = v60;
  v61 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  v62 = [v61 leadingAnchor];

  v63 = [v1 view];
  if (!v63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v64 = v63;
  v65 = [v63 leadingAnchor];

  v66 = [v62 constraintGreaterThanOrEqualToAnchor_];
  *(v17 + 120) = v66;
  v67 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel;
  v68 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel] trailingAnchor];
  v69 = [v1 &off_279854AF8];
  if (!v69)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v70 = v69;
  v71 = [v69 trailingAnchor];

  v72 = [v68 constraintLessThanOrEqualToAnchor_];
  *(v17 + 128) = v72;
  v73 = [*&v1[v67] topAnchor];
  v74 = [*&v1[v51] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:6.0];

  *(v17 + 136) = v75;
  v76 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_cameraTrayLayoutConstraints;
  swift_beginAccess();
  *&v1[v76] = v17;

  if (sub_257D96E38())
  {

    v77 = [v99 centerXAnchor];
    v78 = [v2 centerXAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    v80 = swift_beginAccess();
    MEMORY[0x259C72300](v80);
    if (*((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v81 = [*&v1[v67] centerXAnchor];
    v82 = [*&v1[v51] centerXAnchor];
    v83 = [v81 constraintEqualToAnchor_];

    v84 = swift_beginAccess();
    MEMORY[0x259C72300](v84);
    if (*((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    swift_endAccess();
    v85 = v99;
LABEL_34:

    return;
  }

  v85 = v99;
  v86 = [v99 leadingAnchor];
  v87 = [v1 &off_279854AF8];
  if (!v87)
  {
    goto LABEL_43;
  }

  v88 = v87;
  v89 = [v87 leadingAnchor];

  v90 = [v86 constraintEqualToAnchor_];
  v91 = swift_beginAccess();
  MEMORY[0x259C72300](v91);
  if (*((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
  v92 = [*&v1[v67] trailingAnchor];
  v93 = [v1 &off_279854AF8];
  if (v93)
  {
    v94 = v93;

    v95 = [v94 trailingAnchor];

    v96 = [v92 constraintEqualToAnchor_];
    v97 = swift_beginAccess();
    MEMORY[0x259C72300](v97);
    if (*((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
      v85 = v99;
    }

    sub_257ECF860();
    swift_endAccess();
    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
}

void sub_257D8D414(char a1, char a2, uint64_t a3)
{
  if (!a1)
  {
    if (a2)
    {
      v5 = sub_257DE1380();
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      v13 = sub_257ECF4C0();
      v14 = [objc_opt_self() imageNamed:v13 inBundle:v12];

      if (v14)
      {
        v5 = sub_257DE0B50();
      }

      else
      {
        v5 = 0;
      }
    }

    v148 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    v230 = v5;
    [v148 setImage:v5 forState:0];

    v149 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton;
    v150 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton);
    type metadata accessor for MAGUtilities();
    v151 = swift_getObjCClassFromMetadata();
    v152 = objc_opt_self();
    v153 = v150;
    v154 = [v152 bundleForClass_];
    v155 = sub_257ECF4C0();
    v156 = sub_257ECF4C0();
    v157 = [v154 localizedStringForKey:v155 value:0 table:v156];

    sub_257ECF500();
    v158 = sub_257ECF4C0();

    [v153 setAccessibilityLabel_];

    v227 = v149;
    v159 = *(a3 + v149);
    v160 = objc_opt_self();
    v161 = v159;
    v222 = v151;
    v162 = [v160 bundleForClass_];
    if (a2)
    {
      v163 = sub_257ECF4C0();
      v164 = sub_257ECF4C0();
      v165 = [v162 localizedStringForKey:v163 value:0 table:v164];

      if (!v165)
      {
        sub_257ECF500();
        v165 = sub_257ECF4C0();
      }

      v166 = *MEMORY[0x277D74010];
      v167 = AXAttributedStringForBetterPronuciation();

      if (v167)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    v168 = sub_257ECF4C0();
    v169 = sub_257ECF4C0();
    v167 = [v162 localizedStringForKey:v168 value:0 table:v169];

LABEL_60:
    sub_257ECF500();

    v170 = sub_257ECF4C0();

    [v161 setAccessibilityHint_];

    v171 = *(a3 + v149);
    if (a2)
    {
      v172 = objc_opt_self();
      v173 = v171;
      v174 = [v172 blackColor];
    }

    else
    {
      v175 = qword_281544A78;
      v173 = v171;
      if (v175 != -1)
      {
        swift_once();
      }

      v174 = qword_281548308;
    }

    [v173 setBackgroundColor_];

    v176 = *(a3 + v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_257ED6D30;
    v178 = objc_opt_self();
    v179 = v176;
    v180 = [v178 bundleForClass_];
    v181 = sub_257ECF4C0();
    v182 = sub_257ECF4C0();
    v183 = [v180 &selRef:v181 reloadSections:0 withRowAnimation:v182 + 4];

    v184 = sub_257ECF500();
    v186 = v185;

    *(v177 + 32) = v184;
    *(v177 + 40) = v186;
    v187 = sub_257ECF7F0();

    [v179 setAccessibilityUserInputLabels_];

    v188 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    v189 = [objc_opt_self() bundleForClass_];
    v190 = sub_257ECF4C0();
    v191 = sub_257ECF4C0();
    v192 = [v189 &selRef:v190 reloadSections:0 withRowAnimation:v191 + 4];

    sub_257ECF500();
    v193 = sub_257ECF4C0();

    [v188 setText_];

    v194 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);
    [v194 setHidden_];

    v195 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel, sub_257D98004);
    [v195 setHidden_];

    v196 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
    [v196 setHidden_];

    v197 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
    [v197 setHidden_];

    v198 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);
    [v198 setHidden_];

    v199 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel, sub_257D97820);
    [v199 setHidden_];

    [*(a3 + v227) setAlpha_];
    v200 = sub_257D83D6C();
    [v200 setAlpha_];

    v201 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton;
    [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton) setEnabled_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v231 == 1)
    {
      v202 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton) setHidden_];
      v203 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel) setHidden_];
      v204 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton) setHidden_];
      v205 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel) setHidden_];
      [*(a3 + v202) setAlpha_];
      [*(a3 + v203) setAlpha_];
      [*(a3 + v227) setAlpha_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel) setAlpha_];
      v206 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton, sub_257D98474);
      [v206 setAlpha_];

      [*(a3 + v204) setAlpha_];
      [*(a3 + v205) setAlpha_];
      v207 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
      [v207 setEnabled_];

      v208 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
      [v208 setEnabled_];

      v209 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
      [v209 setHidden_];

      v210 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
      [v210 setHidden_];

      v211 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
      [v211 setHidden_];

      v212 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
      [v212 setHidden_];

      v213 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton, sub_257D98708);
      [v213 setHidden_];

      v214 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel, sub_257D98A10);
      [v214 setHidden_];

      sub_257D8FB78();
    }

    else
    {
      v215 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
      [v215 setEnabled_];

      v216 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
      [v216 setEnabled_];

      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton) setHidden_];
      [*(a3 + v201) setHidden_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel) setHidden_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel) setHidden_];
      v217 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
      [v217 setHidden_];

      v218 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
      [v218 setHidden_];

      v219 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
      [v219 setHidden_];

      v220 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
      [v220 setHidden_];
    }

    [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView) setHidden_];
    [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton) setHidden_];
    v221 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint);
    v69 = v230;
    if (v221)
    {
      [v221 setActive_];
    }

    sub_257D839A4();
    goto LABEL_73;
  }

  if (a1 == 1)
  {
    if (a2)
    {
      v4 = sub_257DE1380();
    }

    else
    {
      type metadata accessor for MAGUtilities();
      v7 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      v9 = sub_257ECF4C0();
      v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

      if (v10)
      {
        v4 = sub_257DE0B50();
      }

      else
      {
        v4 = 0;
      }
    }

    v70 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
    v229 = v4;
    [v70 setImage:v4 forState:0];

    v71 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton;
    v72 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton);
    type metadata accessor for MAGUtilities();
    v73 = swift_getObjCClassFromMetadata();
    v74 = objc_opt_self();
    v75 = v72;
    v76 = [v74 bundleForClass_];
    v77 = sub_257ECF4C0();
    v78 = sub_257ECF4C0();
    v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

    sub_257ECF500();
    v80 = sub_257ECF4C0();

    [v75 setAccessibilityLabel_];

    v226 = v71;
    v81 = *(a3 + v71);
    v82 = objc_opt_self();
    v83 = v81;
    v84 = [v82 bundleForClass_];
    if (a2)
    {
      v85 = sub_257ECF4C0();
      v86 = sub_257ECF4C0();
      v87 = [v84 localizedStringForKey:v85 value:0 table:v86];

      if (!v87)
      {
        sub_257ECF500();
        v87 = sub_257ECF4C0();
      }

      v88 = *MEMORY[0x277D74010];
      v89 = AXAttributedStringForBetterPronuciation();

      if (v89)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    v90 = sub_257ECF4C0();
    v91 = sub_257ECF4C0();
    v89 = [v84 localizedStringForKey:v90 value:0 table:v91];

LABEL_39:
    sub_257ECF500();

    v92 = sub_257ECF4C0();

    [v83 setAccessibilityHint_];

    v93 = *(a3 + v71);
    if (a2)
    {
      v94 = objc_opt_self();
      v95 = v93;
      v96 = [v94 blackColor];
    }

    else
    {
      v97 = qword_281544A78;
      v95 = v93;
      if (v97 != -1)
      {
        swift_once();
      }

      v96 = qword_281548308;
    }

    [v95 setBackgroundColor_];

    v98 = *(a3 + v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_257ED6D30;
    v100 = objc_opt_self();
    v101 = v98;
    v102 = [v100 bundleForClass_];
    v103 = sub_257ECF4C0();
    v104 = sub_257ECF4C0();
    v105 = [v102 &selRef:v103 reloadSections:0 withRowAnimation:v104 + 4];

    v106 = sub_257ECF500();
    v108 = v107;

    *(v99 + 32) = v106;
    *(v99 + 40) = v108;
    v109 = sub_257ECF7F0();

    [v101 setAccessibilityUserInputLabels_];

    v110 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
    v111 = [objc_opt_self() bundleForClass_];
    v112 = sub_257ECF4C0();
    v113 = sub_257ECF4C0();
    v114 = [v111 &selRef:v112 reloadSections:0 withRowAnimation:v113 + 4];

    sub_257ECF500();
    v115 = sub_257ECF4C0();

    [v110 setText_];

    v116 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);
    [v116 setHidden_];

    v117 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel, sub_257D98004);
    [v117 setHidden_];

    v118 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);
    [v118 setHidden_];

    v119 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel, sub_257D97820);
    [v119 setHidden_];

    v120 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
    [v120 setHidden_];

    v121 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
    [v121 setHidden_];

    [*(a3 + v226) setAlpha_];
    v122 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton, sub_257D98474);
    [v122 setAlpha_];

    v123 = sub_257D83D6C();
    [v123 setAlpha_];

    v124 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton;
    [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton) setEnabled_];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v231 == 1)
    {
      v125 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton) setHidden_];
      v126 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel) setHidden_];
      v127 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton) setHidden_];
      v128 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel;
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel) setHidden_];
      [*(a3 + v125) setAlpha_];
      [*(a3 + v126) setAlpha_];
      [*(a3 + v226) setAlpha_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel) setAlpha_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton) setAlpha_];
      [*(a3 + v127) setAlpha_];
      [*(a3 + v128) setAlpha_];
      v129 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
      [v129 setEnabled_];

      v130 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
      [v130 setEnabled_];

      v131 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
      [v131 setHidden_];

      v132 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
      [v132 setHidden_];

      v133 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
      [v133 setHidden_];

      v134 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
      [v134 setHidden_];

      v135 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton, sub_257D98708);
      [v135 setHidden_];

      v136 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel, sub_257D98A10);
      [v136 setHidden_];

      sub_257D8FB78();
    }

    else
    {
      v137 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
      [v137 setEnabled_];

      v138 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
      [v138 setEnabled_];

      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton) setHidden_];
      [*(a3 + v124) setHidden_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel) setHidden_];
      [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel) setHidden_];
      v139 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
      [v139 setHidden_];

      v140 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
      [v140 setHidden_];

      v141 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
      [v141 setHidden_];

      v142 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
      [v142 setHidden_];

      v143 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton, sub_257D98708);
      [v143 setHidden_];

      v144 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel, sub_257D98A10);
      [v144 setHidden_];
    }

    v69 = v229;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v145 = sub_257D859BC();
      sub_257E25150(v145);
      swift_unknownObjectRelease();
    }

    sub_257D839A4();
    v146 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint);
    if (v146)
    {
      v147 = v146;
      [v147 setActive_];
    }

    goto LABEL_73;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v232)
  {
    sub_257D98414(v231, v232, v233, v234);
    v6 = sub_257DE1504();
  }

  else
  {
    v6 = sub_257DE14D4();
  }

  v15 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton, sub_257D83E24);
  v228 = v6;
  [v15 setImage:v6 forState:0];

  v16 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton;
  v17 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotButton);
  type metadata accessor for MAGUtilities();
  v18 = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = v17;
  v225 = v18;
  v21 = [v19 bundleForClass_];
  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = &unk_279854000;
  v25 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v26 = v16;
  sub_257ECF500();

  v27 = sub_257ECF4C0();

  [v20 setAccessibilityLabel_];

  v28 = *(a3 + v16);
  if (v232)
  {
    v29 = objc_opt_self();
    v30 = v28;
    v31 = [v29 bundleForClass_];
    v32 = sub_257ECF4C0();
    v33 = sub_257ECF4C0();
    v34 = [v31 &selRef:v32 reloadSections:0 withRowAnimation:v33 + 4];

    if (!v34)
    {
      sub_257ECF500();
      v34 = sub_257ECF4C0();
    }

    v26 = v16;
    v24 = &unk_279854000;
  }

  else
  {
    v30 = v28;
    v34 = 0;
  }

  [v30 setAccessibilityHint_];

  v35 = *(a3 + v26);
  if (v232)
  {
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 blackColor];
    v39 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  }

  else
  {
    v40 = qword_281544A78;
    v37 = v35;
    v39 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    if (v40 != -1)
    {
      swift_once();
    }

    v38 = qword_281548308;
  }

  [v37 setBackgroundColor_];

  v41 = *(a3 + v26);
  v42 = v41;
  if (v232 || sub_257D84490(v41))
  {
    sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
    v43 = sub_257ECF7F0();
  }

  else
  {
    v43 = 0;
  }

  [v42 setAccessibilityCustomActions_];

  v44 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel, sub_257D9740C);
  v45 = [objc_opt_self() v39[230]];
  v46 = v232 != 0;
  v47 = v232 == 0;
  v48 = sub_257ECF4C0();
  v49 = sub_257ECF4C0();
  v50 = [v45 v24[453]];

  sub_257ECF500();
  v51 = sub_257ECF4C0();

  [v44 setText_];

  v52 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareButton, sub_257D97C1C);
  [v52 setHidden_];

  v53 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___shareLabel, sub_257D98004);
  [v53 setHidden_];

  v54 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentButton, sub_257D975F4);
  [v54 setHidden_];

  v55 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___redoDocumentLabel, sub_257D97820);
  [v55 setHidden_];

  v56 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton, sub_257D97914);
  [v56 setHidden_];

  v57 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel, sub_257D97B28);
  [v57 setHidden_];

  [*(a3 + v26) setAlpha_];
  v58 = sub_257D83D6C();
  [v58 setAlpha_];

  [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___viewSnapshotsButton) setEnabled_];
  [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerButton) setHidden_];
  [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___readerLabel) setHidden_];
  [*(a3 + v26) setAlpha_];
  [*(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotLabel) setAlpha_];
  v59 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___snapshotModeButton, sub_257D98474);
  [v59 setAlpha_];

  v60 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeButton, sub_257D965FC);
  [v60 setEnabled_];

  v61 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___detectionModeLabel, sub_257D97500);
  [v61 setEnabled_];

  v62 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activitiesButton, sub_257D969E8);
  [v62 setHidden_];

  v63 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___activityLabel, sub_257D97318);
  [v63 setHidden_];

  v64 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneButton, sub_257D98708);
  [v64 setHidden_];

  v65 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___microphoneLabel, sub_257D98A10);
  [v65 setHidden_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v66 = sub_257D84F00(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsButton, sub_257D980F8);
  [v66 setHidden_];

  v67 = sub_257D84F64(&OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___controlsLabel, sub_257D98320);
  [v67 setHidden_];

  v68 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotConstraint);
  if (v68)
  {
    [v68 setActive_];
  }

  sub_257D839A4();
  v69 = v228;
LABEL_73:
}