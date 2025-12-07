uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v158 = a11;
            v159 = a12;
            v161 = a9;
            v165 = a10;
            v167 = Strong;
            v163 = a5;
            v22 = *a2;
            v23 = a2[1];
            v24 = a2[4];
            v25 = a2[5];
            v14.i32[0] = *(a2 + 14);
            v152 = a2[8];
            v154 = a2[6];
            v149 = a2[9];
            v26 = a2[11];
            v15 = a2[12];
            v147 = *(a2 + 104);
            v156 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v27 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_81;
          }

LABEL_42:

          return 0;
        }

        v170 = Strong;
        v164 = a5;
        v54 = *a2;
        v55 = a2[1];
        v56 = a2[4];
        v57 = a2[5];
        v58 = a2[8];
        v59 = a2[9];
        v148 = *(a2 + 80);
        v151 = a2[7];
        v153 = a2[11];
        v155 = a2[12];
        v157 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v60 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v54);
          if (v75)
          {
            v61 = (*(v75 + 232))();
            v76 = *(v61 + 16);

            MEMORY[0x1C68F9740](v76, 0);
            *(v61 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v61);

            goto LABEL_46;
          }

          v60 = makeEntity(for:)(v54);
LABEL_32:
          v61 = v60;
LABEL_46:
          type metadata accessor for AnimationPlaybackController();
          v77 = swift_allocObject();
          *(v77 + 40) = 0;
          swift_weakInit();
          *(v77 + 16) = v55;
          swift_weakAssign();

          *(v77 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v61 + 16));
          v78 = Hasher._finalize()();

          *(v77 + 24) = v78;
          v79 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v57, v79, v80, &v207);

          if (v58 && REBindPointBoundComponent())
          {
            Entity = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v82 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (v133)
              {
                v83 = (*(v133 + 232))();
                v134 = *(v83 + 16);

                MEMORY[0x1C68F9740](v134, 0);
                *(v83 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v83);

                goto LABEL_52;
              }

              v82 = makeEntity(for:)(Entity);
            }

            v83 = v82;
          }

          else
          {
            v83 = 0;
          }

LABEL_52:
          specialized ActionEventData.action<A>()(a7, a8, a9, a10, &v202);
          if (!*(&v204 + 1))
          {
            goto LABEL_150;
          }

          *&v171[8] = v202;
          v171[24] = v203 & 1;
          v172 = v204;
          *&v173 = v205;
          BYTE8(v173) = v206 & 1;
          BYTE9(v173) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12) & 1;
          *v171 = v77;
          *&v174 = v83;
          BYTE8(v174) = v148;
          v175 = vcvtq_f64_f32(v59);
          *&v176 = v170;
          *(&v176 + 1) = v151;
          *&v177 = 0xBFF0000000000000;
          BYTE8(v177) = 0;
          goto LABEL_113;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v169 = Strong;
        v164 = a5;
        v42 = *a2;
        v43 = a2[1];
        v44 = a2[4];
        v45 = a2[5];
        v46 = a2[7];
        v47 = a2[8];
        v150 = *(a2 + 72);
        v153 = a2[10];
        v155 = a2[11];
        v157 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v48 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v42);
          if (v120)
          {
            v49 = (*(v120 + 232))();
            v121 = *(v49 + 16);

            MEMORY[0x1C68F9740](v121, 0);
            *(v49 + 16) = v42;
            MEMORY[0x1C68F9740](v42, v49);

            goto LABEL_105;
          }

          v48 = makeEntity(for:)(v42);
        }

        v49 = v48;
LABEL_105:
        type metadata accessor for AnimationPlaybackController();
        v122 = swift_allocObject();
        *(v122 + 40) = 0;
        swift_weakInit();
        *(v122 + 16) = v43;
        swift_weakAssign();

        *(v122 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v49 + 16));
        v123 = Hasher._finalize()();

        *(v122 + 24) = v123;
        v124 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v44, 0, v45, v124, v125, &v207);

        if (v46 && REBindPointBoundComponent())
        {
          v126 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v127 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            specialized static Entity.entityInfoType(_:)(v126);
            if (v141)
            {
              v128 = (*(v141 + 232))();
              v142 = *(v128 + 16);

              MEMORY[0x1C68F9740](v142, 0);
              *(v128 + 16) = v126;
              MEMORY[0x1C68F9740](v126, v128);

              goto LABEL_111;
            }

            v127 = makeEntity(for:)(v126);
          }

          v128 = v127;
        }

        else
        {
          v128 = 0;
        }

LABEL_111:
        specialized ActionEventData.action<A>()(a7, a8, a9, a10, &v202);
        if (!*(&v204 + 1))
        {
          goto LABEL_150;
        }

        *&v171[8] = v202;
        v171[24] = v203 & 1;
        v172 = v204;
        *&v173 = v205;
        BYTE8(v173) = v206 & 1;
        BYTE9(v173) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12) & 1;
        *v171 = v122;
        *&v174 = v128;
        BYTE8(v174) = v150;
        v175 = vcvtq_f64_f32(v47);
        *&v177 = 0;
        v176 = v169;
        BYTE8(v177) = 1;
LABEL_113:
        *&v178 = v153;
        BYTE8(v178) = 0;
        *&v179 = v155;
        BYTE8(v179) = 0;
        v182 = v209;
        v183 = v210;
        v184 = v211;
        v181 = v208;
        v180 = v207;
        v185 = v157;
        v164(v171);
        goto LABEL_114;
      }

      v158 = a11;
      v160 = a12;
      v162 = a9;
      v166 = a10;
      v168 = Strong;
      v163 = a5;
      v39 = *a2;
      v63 = a2[1];
      v64 = a2[4];
      v68 = a2[5];
      v69 = a2[8];
      v154 = a2[7];
      v14 = a2[9];
      LOBYTE(v152) = *(a2 + 80);
      v156 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v70 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_62:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v39);
      if (v89)
      {
        v71 = (*(v89 + 232))();
        v90 = *(v71 + 16);

        MEMORY[0x1C68F9740](v90, 0);
        *(v71 + 16) = v39;
        MEMORY[0x1C68F9740](v39, v71);

        goto LABEL_65;
      }

      v70 = makeEntity(for:)(v39);
LABEL_38:
      v71 = v70;
LABEL_65:
      type metadata accessor for AnimationPlaybackController();
      v91 = swift_allocObject();
      *(v91 + 40) = 0;
      swift_weakInit();
      *(v91 + 16) = v63;
      swift_weakAssign();

      *(v91 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v71 + 16));
      v92 = Hasher._finalize()();

      *(v91 + 24) = v92;
      v93 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v68, v93, v94, &v207);

      if (v69 && REBindPointBoundComponent())
      {
        v95 = REComponentGetEntity();
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v96 = swift_dynamicCastClassUnconditional();
LABEL_69:
          v97 = v96;
          goto LABEL_71;
        }

        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        specialized static Entity.entityInfoType(_:)(v95);
        if (!v135)
        {
          v96 = makeEntity(for:)(v95);
          goto LABEL_69;
        }

        v97 = (*(v135 + 232))();
        v136 = *(v97 + 16);

        MEMORY[0x1C68F9740](v136, 0);
        *(v97 + 16) = v95;
        MEMORY[0x1C68F9740](v95, v97);
      }

      else
      {
        v97 = 0;
      }

LABEL_71:
      specialized ActionEventData.action<A>()(a7, a8, v162, v166, &v202);
      if (*(&v204 + 1))
      {
        v98 = v202;
        v171[24] = v203 & 1;
        v172 = v204;
        *&v173 = v205;
        BYTE8(v173) = v206 & 1;
        BYTE9(v173) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v158, v160) & 1;
        *&v171[8] = v98;
        *v171 = v91;
        *&v174 = v97;
        BYTE8(v174) = v152;
        v175 = vcvtq_f64_f32(v14);
        *&v176 = v168;
        *(&v176 + 1) = v154;
        v99 = 0xBFF0000000000000;
        *&v177 = 0xBFF0000000000000;
        BYTE8(v177) = 0;
        *&v178 = 0xBFF0000000000000;
LABEL_92:
        BYTE8(v178) = 0;
        *&v179 = v99;
        BYTE8(v179) = 0;
        v182 = v209;
        v183 = v210;
        v184 = v211;
        v181 = v208;
        v180 = v207;
        v185 = v156;
        v163(v171);
LABEL_114:

        v198 = v182;
        v199 = v183;
        v200 = v184;
        v201 = v185;
        v194 = v178;
        v195 = v179;
        v196 = v180;
        v197 = v181;
        v190 = v174;
        v191 = v175;
        v192 = v176;
        v193 = v177;
        v186 = *v171;
        v187 = *&v171[16];
        v188 = v172;
        v189 = v173;
LABEL_149:
        outlined destroy of BodyTrackingComponent?(&v186, a13, a14);
        return 0;
      }

LABEL_150:

      outlined consume of SetEntityPropertyAction<Bool>?(v202, *(&v202 + 1), v203, v204, 0);
      return 0;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v35 = a9;
        v166 = a10;
        v168 = Strong;
        v163 = a5;
        v36 = *a2;
        v37 = a2[1];
        v160 = a2[4];
        v38 = a2[5];
        v39 = a2[7];
        v162 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v40 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v36);
          if (v114)
          {
            v41 = (*(v114 + 232))();
            v115 = *(v41 + 16);

            MEMORY[0x1C68F9740](v115, 0);
            *(v41 + 16) = v36;
            MEMORY[0x1C68F9740](v36, v41);

LABEL_96:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v37;
            swift_weakAssign();

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v41 + 16));
            v116 = Hasher._finalize()();

            *(v68 + 24) = v116;
            v117 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v38, v117, v118, &v207);

            if (!v39)
            {
              goto LABEL_138;
            }

            if (REBindPointBoundComponent())
            {
              v69 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_99;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

LABEL_136:
              specialized static Entity.entityInfoType(_:)(v69);
              if (!v139)
              {
                v119 = makeEntity(for:)(v69);
                goto LABEL_100;
              }

              v39 = (*(v139 + 232))();
              v140 = *(v39 + 16);

              MEMORY[0x1C68F9740](v140, 0);
              *(v39 + 16) = v69;
              MEMORY[0x1C68F9740](v69, v39);

LABEL_138:
              specialized ActionEventData.action<A>()(a7, a8, v35, v166, &v202);
              if (*(&v204 + 1))
              {
                *&v171[8] = v202;
                v171[24] = v203 & 1;
                v172 = v204;
                *&v173 = v205;
                BYTE8(v173) = v206 & 1;
                BYTE9(v173) = 1;
                *v171 = v68;
                *&v174 = v39;
                BYTE8(v174) = 0;
                v175 = 0uLL;
                *&v177 = 0;
                v176 = v168;
                BYTE8(v177) = 1;
                *&v178 = v160;
                BYTE8(v178) = 0;
                *&v179 = 0;
                BYTE8(v179) = 1;
                v182 = v209;
                v183 = v210;
                v184 = v211;
                v181 = v208;
                v180 = v207;
                v185 = v162;
                v163(v171);

                v198 = v182;
                v199 = v183;
                v200 = v184;
                v201 = v185;
                v194 = v178;
                v195 = v179;
                v196 = v180;
                v197 = v181;
                v190 = v174;
                v191 = v175;
                v192 = v176;
                v193 = v177;
                v186 = *v171;
                v187 = *&v171[16];
                v188 = v172;
                v189 = v173;
                goto LABEL_149;
              }

              goto LABEL_150;
            }

            goto LABEL_101;
          }

          v40 = makeEntity(for:)(v36);
        }

        v41 = v40;
        goto LABEL_96;
      }

      v35 = a9;
      v166 = a10;
      v168 = Strong;
      v163 = a5;
      v62 = *a2;
      v63 = a2[1];
      v64 = a2[3];
      v160 = a2[4];
      v65 = a2[5];
      v39 = a2[7];
      v162 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v62);
        if (v84)
        {
          v67 = (*(v84 + 232))();
          v85 = *(v67 + 16);

          MEMORY[0x1C68F9740](v85, 0);
          *(v67 + 16) = v62;
          MEMORY[0x1C68F9740](v62, v67);

LABEL_57:
          type metadata accessor for AnimationPlaybackController();
          v68 = swift_allocObject();
          *(v68 + 40) = 0;
          swift_weakInit();
          *(v68 + 16) = v63;
          swift_weakAssign();

          *(v68 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v67 + 16));
          v86 = Hasher._finalize()();

          *(v68 + 24) = v86;
          v87 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v65, v87, v88, &v207);

          if (!v39)
          {
            goto LABEL_138;
          }

          if (REBindPointBoundComponent())
          {
            v69 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_99:
              type metadata accessor for Entity();
              v119 = swift_dynamicCastClassUnconditional();
LABEL_100:
              v39 = v119;
              goto LABEL_138;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_62;
            }

            goto LABEL_136;
          }

LABEL_101:
          v39 = 0;
          goto LABEL_138;
        }

        v66 = makeEntity(for:)(v62);
      }

      v67 = v66;
      goto LABEL_57;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v161 = a9;
      v165 = a10;
      v167 = Strong;
      v163 = a5;
      v50 = *a2;
      v51 = a2[1];
      v25 = a2[3];
      v24 = a2[5];
      v159 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v52 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v50);
        if (v129)
        {
          v53 = (*(v129 + 232))();
          v130 = *(v53 + 16);

          MEMORY[0x1C68F9740](v130, 0);
          *(v53 + 16) = v50;
          MEMORY[0x1C68F9740](v50, v53);

LABEL_119:
          type metadata accessor for AnimationPlaybackController();
          v26 = swift_allocObject();
          *(v26 + 40) = 0;
          swift_weakInit();
          *(v26 + 16) = v51;
          swift_weakAssign();

          *(v26 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v53 + 16));
          v131 = Hasher._finalize()();

          *(v26 + 24) = v131;
          if (!v24)
          {
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            v103 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_122;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_179:
              __break(1u);
              return result;
            }

LABEL_145:
            specialized static Entity.entityInfoType(_:)(v103);
            if (!v143)
            {
              v132 = makeEntity(for:)(v103);
              goto LABEL_123;
            }

            v24 = (*(v143 + 232))();
            v144 = *(v24 + 16);

            MEMORY[0x1C68F9740](v144, 0);
            *(v24 + 16) = v103;
            MEMORY[0x1C68F9740](v103, v24);

LABEL_147:
            v145 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v25, v145, v146, &v207);

            specialized ActionEventData.action<A>()(a7, a8, v161, v165, &v202);
            if (*(&v204 + 1))
            {
              *&v171[8] = v202;
              v171[24] = v203 & 1;
              v172 = v204;
              *&v173 = v205;
              BYTE8(v173) = v206 & 1;
              BYTE9(v173) = 1;
              *v171 = v26;
              *&v174 = v24;
              BYTE8(v174) = 0;
              v175 = 0uLL;
              *&v177 = 0;
              v176 = v167;
              BYTE8(v177) = 1;
              *&v178 = 0;
              BYTE8(v178) = 1;
              *&v179 = 0;
              BYTE8(v179) = 1;
              v182 = v209;
              v183 = v210;
              v184 = v211;
              v181 = v208;
              v180 = v207;
              v185 = v159;
              v163(v171);

              v198 = v182;
              v199 = v183;
              v200 = v184;
              v201 = v185;
              v194 = v178;
              v195 = v179;
              v196 = v180;
              v197 = v181;
              v190 = v174;
              v191 = v175;
              v192 = v176;
              v193 = v177;
              v186 = *v171;
              v187 = *&v171[16];
              v188 = v172;
              v189 = v173;
              goto LABEL_149;
            }

            goto LABEL_150;
          }

          goto LABEL_124;
        }

        v52 = makeEntity(for:)(v50);
      }

      v53 = v52;
      goto LABEL_119;
    }

    v161 = a9;
    v165 = a10;
    v167 = Strong;
    v163 = a5;
    v72 = *a2;
    v23 = a2[1];
    v22 = a2[2];
    v25 = a2[3];
    v24 = a2[5];
    v159 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v73 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v72);
      if (v100)
      {
        v74 = (*(v100 + 232))();
        v101 = *(v74 + 16);

        MEMORY[0x1C68F9740](v101, 0);
        *(v74 + 16) = v72;
        MEMORY[0x1C68F9740](v72, v74);

LABEL_76:
        type metadata accessor for AnimationPlaybackController();
        v26 = swift_allocObject();
        *(v26 + 40) = 0;
        swift_weakInit();
        *(v26 + 16) = v23;
        swift_weakAssign();

        *(v26 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v74 + 16));
        v102 = Hasher._finalize()();

        *(v26 + 24) = v102;
        if (!v24)
        {
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v103 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_122:
            type metadata accessor for Entity();
            v132 = swift_dynamicCastClassUnconditional();
LABEL_123:
            v24 = v132;
            goto LABEL_147;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_81:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v22);
              if (v104)
              {
                v28 = (*(v104 + 232))();
                v105 = *(v28 + 16);

                MEMORY[0x1C68F9740](v105, 0);
                *(v28 + 16) = v22;
                MEMORY[0x1C68F9740](v22, v28);

LABEL_84:
                type metadata accessor for AnimationPlaybackController();
                v106 = swift_allocObject();
                *(v106 + 40) = 0;
                swift_weakInit();
                *(v106 + 16) = v23;
                swift_weakAssign();

                *(v106 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v28 + 16));
                v107 = Hasher._finalize()();

                *(v106 + 24) = v107;
                v108 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v24, 0, v25, v108, v109, &v207);

                if (!v26 || !REBindPointBoundComponent())
                {
                  v112 = 0;
                  goto LABEL_90;
                }

                v110 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v111 = swift_dynamicCastClassUnconditional();
LABEL_88:
                  v112 = v111;
                  goto LABEL_90;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v110);
                  if (!v137)
                  {
                    v111 = makeEntity(for:)(v110);
                    goto LABEL_88;
                  }

                  v112 = (*(v137 + 232))();
                  v138 = *(v112 + 16);

                  MEMORY[0x1C68F9740](v138, 0);
                  *(v112 + 16) = v110;
                  MEMORY[0x1C68F9740](v110, v112);

LABEL_90:
                  specialized ActionEventData.action<A>()(a7, a8, v161, v165, &v202);
                  if (*(&v204 + 1))
                  {
                    v113 = v202;
                    v171[24] = v203 & 1;
                    v172 = v204;
                    *&v173 = v205;
                    BYTE8(v173) = v206 & 1;
                    BYTE9(v173) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v158, v159) & 1;
                    *&v171[8] = v113;
                    *v171 = v106;
                    *&v174 = v112;
                    BYTE8(v174) = v147;
                    v175 = vcvtq_f64_f32(v15);
                    *&v176 = v167;
                    *(&v176 + 1) = v149;
                    *&v177 = v14.f32[0];
                    BYTE8(v177) = 0;
                    v99 = v152;
                    *&v178 = v154;
                    goto LABEL_92;
                  }

                  goto LABEL_150;
                }

                goto LABEL_176;
              }

              v27 = makeEntity(for:)(v22);
LABEL_8:
              v28 = v27;
              goto LABEL_84;
            }

            goto LABEL_170;
          }

          goto LABEL_145;
        }

LABEL_124:
        v24 = 0;
        goto LABEL_147;
      }

      v73 = makeEntity(for:)(v72);
    }

    v74 = v73;
    goto LABEL_76;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static AnimationLogger.logger);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v186 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v186);
    _os_log_impl(&dword_1C1358000, v30, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1C6902A30](v33, -1, -1);
    MEMORY[0x1C6902A30](v32, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v174 = a5;
            v11 = *a2;
            v10 = *(a2 + 1);
            v12 = *(a2 + 4);
            v13 = *(a2 + 5);
            v14 = a2[14];
            v166 = *(a2 + 8);
            v169 = *(a2 + 6);
            v163 = *(a2 + 9);
            v15 = *(a2 + 11);
            v16 = *(a2 + 24);
            v161 = *(a2 + 104);
            v172 = *(a2 + 10);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v17 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v11);
              if (v103)
              {
                v18 = (*(v103 + 232))();
                v104 = *(v18 + 16);

                MEMORY[0x1C68F9740](v104, 0);
                *(v18 + 16) = v11;
                MEMORY[0x1C68F9740](v11, v18);

                goto LABEL_78;
              }

              v17 = makeEntity(for:)(v11);
LABEL_8:
              v18 = v17;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v105 = swift_allocObject();
              *(v105 + 40) = 0;
              swift_weakInit();
              *(v105 + 16) = v10;
              swift_weakAssign();

              *(v105 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v18 + 16));
              v106 = Hasher._finalize()();

              *(v105 + 24) = v106;
              v107 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v12, 0, v13, v107, v108, &v321);

              if (!v15)
              {
LABEL_143:
                specialized ActionEventData.action<A>()(&v191);
                v317 = v203;
                v318 = v204;
                v319 = v205;
                v320 = v206;
                v313 = v199;
                v314 = v200;
                v315 = v201;
                v316 = v202;
                v309 = v195;
                v310 = v196;
                v311 = v197;
                v312 = v198;
                v305 = v191;
                v306 = v192;
                v307 = v193;
                v308 = v194;
                if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
                {

                  __dst[12] = v203;
                  __dst[13] = v204;
                  __dst[14] = v205;
                  __dst[15] = v206;
                  __dst[8] = v199;
                  __dst[9] = v200;
                  __dst[10] = v201;
                  __dst[11] = v202;
                  __dst[4] = v195;
                  __dst[5] = v196;
                  __dst[6] = v197;
                  __dst[7] = v198;
                  __dst[0] = v191;
                  __dst[1] = v192;
                  v134 = v193;
                  v135 = v194;
                  goto LABEL_168;
                }

                __src[13] = v203;
                __src[14] = v204;
                __src[15] = v205;
                __src[16] = v206;
                __src[9] = v199;
                __src[10] = v200;
                __src[11] = v201;
                __src[12] = v202;
                __src[5] = v195;
                __src[6] = v196;
                __src[7] = v197;
                __src[8] = v198;
                __src[1] = v191;
                __src[2] = v192;
                __src[3] = v193;
                __src[4] = v194;
                LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
                *&__src[0] = v105;
                *(&__src[17] + 1) = v15;
                LOBYTE(__src[18]) = v161;
                *(&__src[18] + 8) = vcvtq_f64_f32(v16);
                *(&__src[19] + 1) = v9;
                *&__src[20] = v163;
                *(&__src[20] + 1) = v14;
                LOBYTE(__src[21]) = 0;
                LOBYTE(__src[22]) = 0;
                *(&__src[21] + 1) = v169;
                *(&__src[22] + 1) = v166;
                LOBYTE(__src[23]) = 0;
                *(&__src[25] + 8) = v323;
                *(&__src[26] + 8) = v324;
                *(&__src[27] + 8) = v325;
                *(&__src[23] + 8) = v321;
                *(&__src[24] + 8) = v322;
                goto LABEL_161;
              }

              if (!REBindPointBoundComponent())
              {
                v15 = 0;
                goto LABEL_143;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v110 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v15 = v110;
                goto LABEL_143;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(Entity);
                if (v149)
                {
                  v15 = (*(v149 + 232))();
                  v150 = *(v15 + 16);

                  MEMORY[0x1C68F9740](v150, 0);
                  *(v15 + 16) = Entity;
                  MEMORY[0x1C68F9740](Entity, v15);

                  goto LABEL_143;
                }

                v110 = makeEntity(for:)(Entity);
                goto LABEL_82;
              }

              goto LABEL_203;
            }

            goto LABEL_195;
          }

LABEL_42:

          return 0;
        }

        v174 = a5;
        v47 = *a2;
        v46 = *(a2 + 1);
        v48 = *(a2 + 4);
        v49 = *(a2 + 5);
        v50 = *(a2 + 8);
        v51 = *(a2 + 18);
        v162 = *(a2 + 80);
        v165 = *(a2 + 7);
        v167 = *(a2 + 11);
        v170 = *(a2 + 12);
        v172 = *(a2 + 6);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v52 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v47);
          if (v72)
          {
            v53 = (*(v72 + 232))();
            v73 = *(v53 + 16);

            MEMORY[0x1C68F9740](v73, 0);
            *(v53 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v53);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v46;
            swift_weakAssign();

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v53 + 16));
            v75 = Hasher._finalize()();

            *(v74 + 24) = v75;
            v76 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v76, v77, &v321);

            if (v50)
            {
              if (REBindPointBoundComponent())
              {
                v78 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v79 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_199:
                    __break(1u);
                    goto LABEL_200;
                  }

                  specialized static Entity.entityInfoType(_:)(v78);
                  if (v132)
                  {
                    v50 = (*(v132 + 232))();
                    v133 = *(v50 + 16);

                    MEMORY[0x1C68F9740](v133, 0);
                    *(v50 + 16) = v78;
                    MEMORY[0x1C68F9740](v78, v50);

                    goto LABEL_118;
                  }

                  v79 = makeEntity(for:)(v78);
                }

                v50 = v79;
              }

              else
              {
                v50 = 0;
              }
            }

LABEL_118:
            specialized ActionEventData.action<A>()(&v175);
            v317 = v187;
            v318 = v188;
            v319 = v189;
            v320 = v190;
            v313 = v183;
            v314 = v184;
            v315 = v185;
            v316 = v186;
            v309 = v179;
            v310 = v180;
            v311 = v181;
            v312 = v182;
            v305 = v175;
            v306 = v176;
            v307 = v177;
            v308 = v178;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
            {

              __dst[12] = v187;
              __dst[13] = v188;
              __dst[14] = v189;
              __dst[15] = v190;
              __dst[8] = v183;
              __dst[9] = v184;
              __dst[10] = v185;
              __dst[11] = v186;
              __dst[4] = v179;
              __dst[5] = v180;
              __dst[6] = v181;
              __dst[7] = v182;
              __dst[0] = v175;
              __dst[1] = v176;
              v134 = v177;
              v135 = v178;
LABEL_168:
              __dst[2] = v134;
              __dst[3] = v135;
              v159 = &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMd;
              v160 = &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMR;
LABEL_173:
              outlined destroy of BodyTrackingComponent?(__dst, v159, v160);
              return 0;
            }

            __src[13] = v187;
            __src[14] = v188;
            __src[15] = v189;
            __src[16] = v190;
            __src[9] = v183;
            __src[10] = v184;
            __src[11] = v185;
            __src[12] = v186;
            __src[5] = v179;
            __src[6] = v180;
            __src[7] = v181;
            __src[8] = v182;
            __src[1] = v175;
            __src[2] = v176;
            __src[3] = v177;
            __src[4] = v178;
            LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
            *&__src[0] = v74;
            *(&__src[17] + 1) = v50;
            LOBYTE(__src[18]) = v162;
            *(&__src[18] + 8) = vcvtq_f64_f32(v51);
            *(&__src[19] + 1) = v9;
            *&__src[20] = v165;
            LOBYTE(__src[21]) = 0;
            *(&__src[20] + 1) = 0xBFF0000000000000;
            goto LABEL_159;
          }

          v52 = makeEntity(for:)(v47);
LABEL_32:
          v53 = v52;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_192;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v174 = a5;
        v33 = *a2;
        v32 = *(a2 + 1);
        v34 = *(a2 + 4);
        v35 = *(a2 + 5);
        v36 = *(a2 + 7);
        v37 = *(a2 + 16);
        v164 = *(a2 + 72);
        v167 = *(a2 + 10);
        v170 = *(a2 + 11);
        v172 = *(a2 + 6);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          specialized static Entity.entityInfoType(_:)(v33);
          if (v118)
          {
            v39 = (*(v118 + 232))();
            v119 = *(v39 + 16);

            MEMORY[0x1C68F9740](v119, 0);
            *(v39 + 16) = v33;
            MEMORY[0x1C68F9740](v33, v39);

LABEL_94:
            type metadata accessor for AnimationPlaybackController();
            v120 = swift_allocObject();
            *(v120 + 40) = 0;
            swift_weakInit();
            *(v120 + 16) = v32;
            swift_weakAssign();

            *(v120 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v39 + 16));
            v121 = Hasher._finalize()();

            *(v120 + 24) = v121;
            v122 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v34, 0, v35, v122, v123, &v321);

            if (v36)
            {
              if (REBindPointBoundComponent())
              {
                v124 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v125 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_205:
                    __break(1u);
                    goto LABEL_206;
                  }

                  specialized static Entity.entityInfoType(_:)(v124);
                  if (v153)
                  {
                    v36 = (*(v153 + 232))();
                    v154 = *(v36 + 16);

                    MEMORY[0x1C68F9740](v154, 0);
                    *(v36 + 16) = v124;
                    MEMORY[0x1C68F9740](v124, v36);

                    goto LABEL_156;
                  }

                  v125 = makeEntity(for:)(v124);
                }

                v36 = v125;
              }

              else
              {
                v36 = 0;
              }
            }

LABEL_156:
            specialized ActionEventData.action<A>()(&v223);
            v317 = v235;
            v318 = v236;
            v319 = v237;
            v320 = v238;
            v313 = v231;
            v314 = v232;
            v315 = v233;
            v316 = v234;
            v309 = v227;
            v310 = v228;
            v311 = v229;
            v312 = v230;
            v305 = v223;
            v306 = v224;
            v307 = v225;
            v308 = v226;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
            {

              __dst[12] = v235;
              __dst[13] = v236;
              __dst[14] = v237;
              __dst[15] = v238;
              __dst[8] = v231;
              __dst[9] = v232;
              __dst[10] = v233;
              __dst[11] = v234;
              __dst[4] = v227;
              __dst[5] = v228;
              __dst[6] = v229;
              __dst[7] = v230;
              __dst[0] = v223;
              __dst[1] = v224;
              v134 = v225;
              v135 = v226;
              goto LABEL_168;
            }

            __src[13] = v235;
            __src[14] = v236;
            __src[15] = v237;
            __src[16] = v238;
            __src[9] = v231;
            __src[10] = v232;
            __src[11] = v233;
            __src[12] = v234;
            __src[5] = v227;
            __src[6] = v228;
            __src[7] = v229;
            __src[8] = v230;
            __src[1] = v223;
            __src[2] = v224;
            __src[3] = v225;
            __src[4] = v226;
            LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
            *&__src[0] = v120;
            *(&__src[17] + 1) = v36;
            LOBYTE(__src[18]) = v164;
            *(&__src[18] + 8) = vcvtq_f64_f32(v37);
            *(&__src[19] + 1) = v9;
            __src[20] = 0uLL;
            LOBYTE(__src[21]) = 1;
LABEL_159:
            *(&__src[21] + 1) = v167;
            LOBYTE(__src[22]) = 0;
            LOBYTE(__src[23]) = 0;
            *(&__src[25] + 8) = v323;
            *(&__src[26] + 8) = v324;
            *(&__src[27] + 8) = v325;
            *(&__src[23] + 8) = v321;
            *(&__src[24] + 8) = v322;
            v142 = v170;
            goto LABEL_160;
          }

          v38 = makeEntity(for:)(v33);
        }

        v39 = v38;
        goto LABEL_94;
      }

      v174 = a5;
      v60 = *a2;
      v59 = *(a2 + 1);
      v61 = *(a2 + 4);
      v62 = *(a2 + 5);
      v63 = *(a2 + 8);
      v171 = *(a2 + 7);
      v64 = *(a2 + 18);
      v168 = *(a2 + 80);
      v172 = *(a2 + 6);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        specialized static Entity.entityInfoType(_:)(v60);
        if (v88)
        {
          v66 = (*(v88 + 232))();
          v89 = *(v66 + 16);

          MEMORY[0x1C68F9740](v89, 0);
          *(v66 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v66);

LABEL_62:
          type metadata accessor for AnimationPlaybackController();
          v90 = swift_allocObject();
          *(v90 + 40) = 0;
          swift_weakInit();
          *(v90 + 16) = v59;
          swift_weakAssign();

          *(v90 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v66 + 16));
          v91 = Hasher._finalize()();

          *(v90 + 24) = v91;
          v92 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v62, v92, v93, &v321);

          if (v63)
          {
            if (REBindPointBoundComponent())
            {
              v94 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v95 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_201:
                  __break(1u);
                  goto LABEL_202;
                }

                specialized static Entity.entityInfoType(_:)(v94);
                if (v140)
                {
                  v63 = (*(v140 + 232))();
                  v141 = *(v63 + 16);

                  MEMORY[0x1C68F9740](v141, 0);
                  *(v63 + 16) = v94;
                  MEMORY[0x1C68F9740](v94, v63);

                  goto LABEL_130;
                }

                v95 = makeEntity(for:)(v94);
              }

              v63 = v95;
            }

            else
            {
              v63 = 0;
            }
          }

LABEL_130:
          specialized ActionEventData.action<A>()(&v207);
          v317 = v219;
          v318 = v220;
          v319 = v221;
          v320 = v222;
          v313 = v215;
          v314 = v216;
          v315 = v217;
          v316 = v218;
          v309 = v211;
          v310 = v212;
          v311 = v213;
          v312 = v214;
          v305 = v207;
          v306 = v208;
          v307 = v209;
          v308 = v210;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
          {

            __dst[12] = v219;
            __dst[13] = v220;
            __dst[14] = v221;
            __dst[15] = v222;
            __dst[8] = v215;
            __dst[9] = v216;
            __dst[10] = v217;
            __dst[11] = v218;
            __dst[4] = v211;
            __dst[5] = v212;
            __dst[6] = v213;
            __dst[7] = v214;
            __dst[0] = v207;
            __dst[1] = v208;
            v134 = v209;
            v135 = v210;
            goto LABEL_168;
          }

          __src[13] = v219;
          __src[14] = v220;
          __src[15] = v221;
          __src[16] = v222;
          __src[9] = v215;
          __src[10] = v216;
          __src[11] = v217;
          __src[12] = v218;
          __src[5] = v211;
          __src[6] = v212;
          __src[7] = v213;
          __src[8] = v214;
          __src[1] = v207;
          __src[2] = v208;
          __src[3] = v209;
          __src[4] = v210;
          LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
          *&__src[0] = v90;
          *(&__src[17] + 1) = v63;
          LOBYTE(__src[18]) = v168;
          *(&__src[18] + 8) = vcvtq_f64_f32(v64);
          *(&__src[19] + 1) = v9;
          *&__src[20] = v171;
          v142 = 0xBFF0000000000000;
          LOBYTE(__src[21]) = 0;
          *(&__src[20] + 1) = 0xBFF0000000000000;
          *(&__src[21] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[22]) = 0;
          LOBYTE(__src[23]) = 0;
          *(&__src[25] + 8) = v323;
          *(&__src[26] + 8) = v324;
          *(&__src[27] + 8) = v325;
          *(&__src[23] + 8) = v321;
          *(&__src[24] + 8) = v322;
LABEL_160:
          *(&__src[22] + 1) = v142;
LABEL_161:
          *(&__src[28] + 1) = v172;
LABEL_172:
          v174(__src);

          memcpy(__dst, __src, sizeof(__dst));
          v159 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd;
          v160 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR;
          goto LABEL_173;
        }

        v65 = makeEntity(for:)(v60);
      }

      v66 = v65;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v174 = a5;
        v26 = *a2;
        v25 = *(a2 + 1);
        v27 = *(a2 + 5);
        v28 = *(a2 + 6);
        v29 = *(a2 + 7);
        v173 = *(a2 + 4);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v30 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }

          specialized static Entity.entityInfoType(_:)(v26);
          if (v111)
          {
            v31 = (*(v111 + 232))();
            v112 = *(v31 + 16);

            MEMORY[0x1C68F9740](v112, 0);
            *(v31 + 16) = v26;
            MEMORY[0x1C68F9740](v26, v31);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v82 = swift_allocObject();
            *(v82 + 40) = 0;
            swift_weakInit();
            *(v82 + 16) = v25;
            swift_weakAssign();

            *(v82 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v31 + 16));
            v113 = Hasher._finalize()();

            *(v82 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v27, v114, v115, &v321);

            if (v29)
            {
              if (REBindPointBoundComponent())
              {
                v116 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v117 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_204:
                    __break(1u);
                    goto LABEL_205;
                  }

                  specialized static Entity.entityInfoType(_:)(v116);
                  if (v151)
                  {
                    v29 = (*(v151 + 232))();
                    v152 = *(v29 + 16);

                    MEMORY[0x1C68F9740](v152, 0);
                    *(v29 + 16) = v116;
                    MEMORY[0x1C68F9740](v116, v29);

                    goto LABEL_149;
                  }

                  v117 = makeEntity(for:)(v116);
                }

                v29 = v117;
              }

              else
              {
                v29 = 0;
              }
            }

LABEL_149:
            specialized ActionEventData.action<A>()(&v255);
            v317 = v267;
            v318 = v268;
            v319 = v269;
            v320 = v270;
            v313 = v263;
            v314 = v264;
            v315 = v265;
            v316 = v266;
            v309 = v259;
            v310 = v260;
            v311 = v261;
            v312 = v262;
            v305 = v255;
            v306 = v256;
            v307 = v257;
            v308 = v258;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
            {

              __dst[12] = v267;
              __dst[13] = v268;
              __dst[14] = v269;
              __dst[15] = v270;
              __dst[8] = v263;
              __dst[9] = v264;
              __dst[10] = v265;
              __dst[11] = v266;
              __dst[4] = v259;
              __dst[5] = v260;
              __dst[6] = v261;
              __dst[7] = v262;
              __dst[0] = v255;
              __dst[1] = v256;
              v134 = v257;
              v135 = v258;
              goto LABEL_168;
            }

            __src[13] = v267;
            __src[14] = v268;
            __src[15] = v269;
            __src[16] = v270;
            __src[9] = v263;
            __src[10] = v264;
            __src[11] = v265;
            __src[12] = v266;
            __src[5] = v259;
            __src[6] = v260;
            __src[7] = v261;
            __src[8] = v262;
            __src[1] = v255;
            __src[2] = v256;
            v138 = v257;
            v139 = v258;
LABEL_152:
            __src[3] = v138;
            __src[4] = v139;
            LOBYTE(__src[17]) = 1;
            *&__src[0] = v82;
            *(&__src[17] + 1) = v29;
            LOBYTE(__src[18]) = 0;
            *&__src[19] = 0;
            *(&__src[18] + 1) = 0;
            *(&__src[19] + 1) = v9;
            __src[20] = 0uLL;
            LOBYTE(__src[21]) = 1;
            *(&__src[21] + 1) = v173;
            LOBYTE(__src[22]) = 0;
LABEL_171:
            LOBYTE(__src[23]) = 1;
            *(&__src[25] + 8) = v323;
            *(&__src[26] + 8) = v324;
            *(&__src[27] + 8) = v325;
            *(&__src[23] + 8) = v321;
            *(&__src[24] + 8) = v322;
            *(&__src[22] + 1) = 0;
            *(&__src[28] + 1) = v28;
            goto LABEL_172;
          }

          v30 = makeEntity(for:)(v26);
        }

        v31 = v30;
        goto LABEL_86;
      }

      v174 = a5;
      v55 = *a2;
      v54 = *(a2 + 1);
      v56 = *(a2 + 5);
      v28 = *(a2 + 6);
      v29 = *(a2 + 7);
      v173 = *(a2 + 4);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v57 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        specialized static Entity.entityInfoType(_:)(v55);
        if (v80)
        {
          v58 = (*(v80 + 232))();
          v81 = *(v58 + 16);

          MEMORY[0x1C68F9740](v81, 0);
          *(v58 + 16) = v55;
          MEMORY[0x1C68F9740](v55, v58);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v82 = swift_allocObject();
          *(v82 + 40) = 0;
          swift_weakInit();
          *(v82 + 16) = v54;
          swift_weakAssign();

          *(v82 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v58 + 16));
          v83 = Hasher._finalize()();

          *(v82 + 24) = v83;
          v84 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v56, v84, v85, &v321);

          if (v29)
          {
            if (REBindPointBoundComponent())
            {
              v86 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v87 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_200:
                  __break(1u);
                  goto LABEL_201;
                }

                specialized static Entity.entityInfoType(_:)(v86);
                if (v136)
                {
                  v29 = (*(v136 + 232))();
                  v137 = *(v29 + 16);

                  MEMORY[0x1C68F9740](v137, 0);
                  *(v29 + 16) = v86;
                  MEMORY[0x1C68F9740](v86, v29);

                  goto LABEL_124;
                }

                v87 = makeEntity(for:)(v86);
              }

              v29 = v87;
            }

            else
            {
              v29 = 0;
            }
          }

LABEL_124:
          specialized ActionEventData.action<A>()(&v239);
          v317 = v251;
          v318 = v252;
          v319 = v253;
          v320 = v254;
          v313 = v247;
          v314 = v248;
          v315 = v249;
          v316 = v250;
          v309 = v243;
          v310 = v244;
          v311 = v245;
          v312 = v246;
          v305 = v239;
          v306 = v240;
          v307 = v241;
          v308 = v242;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
          {

            __dst[12] = v251;
            __dst[13] = v252;
            __dst[14] = v253;
            __dst[15] = v254;
            __dst[8] = v247;
            __dst[9] = v248;
            __dst[10] = v249;
            __dst[11] = v250;
            __dst[4] = v243;
            __dst[5] = v244;
            __dst[6] = v245;
            __dst[7] = v246;
            __dst[0] = v239;
            __dst[1] = v240;
            v134 = v241;
            v135 = v242;
            goto LABEL_168;
          }

          __src[13] = v251;
          __src[14] = v252;
          __src[15] = v253;
          __src[16] = v254;
          __src[9] = v247;
          __src[10] = v248;
          __src[11] = v249;
          __src[12] = v250;
          __src[5] = v243;
          __src[6] = v244;
          __src[7] = v245;
          __src[8] = v246;
          __src[1] = v239;
          __src[2] = v240;
          v138 = v241;
          v139 = v242;
          goto LABEL_152;
        }

        v57 = makeEntity(for:)(v55);
      }

      v58 = v57;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v174 = a5;
      v41 = *a2;
      v40 = *(a2 + 1);
      v42 = *(a2 + 3);
      v28 = *(a2 + 4);
      v43 = *(a2 + 5);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v44 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        specialized static Entity.entityInfoType(_:)(v41);
        if (v126)
        {
          v45 = (*(v126 + 232))();
          v127 = *(v45 + 16);

          MEMORY[0x1C68F9740](v127, 0);
          *(v45 + 16) = v41;
          MEMORY[0x1C68F9740](v41, v45);

LABEL_102:
          type metadata accessor for AnimationPlaybackController();
          v98 = swift_allocObject();
          *(v98 + 40) = 0;
          swift_weakInit();
          *(v98 + 16) = v40;
          swift_weakAssign();

          *(v98 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v45 + 16));
          v128 = Hasher._finalize()();

          *(v98 + 24) = v128;
          if (v43)
          {
            if (REBindPointBoundComponent())
            {
              v129 = v28;
              v130 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v131 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_206:
                  __break(1u);
                  return result;
                }

                specialized static Entity.entityInfoType(_:)(v130);
                if (v155)
                {
                  v43 = (*(v155 + 232))();
                  v156 = *(v43 + 16);

                  MEMORY[0x1C68F9740](v156, 0);
                  *(v43 + 16) = v130;
                  MEMORY[0x1C68F9740](v130, v43);

                  goto LABEL_165;
                }

                v131 = makeEntity(for:)(v130);
              }

              v43 = v131;
LABEL_165:
              v28 = v129;
              goto LABEL_166;
            }

            v43 = 0;
          }

LABEL_166:
          v157 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v42, v157, v158, &v321);

          specialized ActionEventData.action<A>()(&v289);
          v317 = v301;
          v318 = v302;
          v319 = v303;
          v320 = v304;
          v313 = v297;
          v314 = v298;
          v315 = v299;
          v316 = v300;
          v309 = v293;
          v310 = v294;
          v311 = v295;
          v312 = v296;
          v305 = v289;
          v306 = v290;
          v307 = v291;
          v308 = v292;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
          {

            __dst[12] = v301;
            __dst[13] = v302;
            __dst[14] = v303;
            __dst[15] = v304;
            __dst[8] = v297;
            __dst[9] = v298;
            __dst[10] = v299;
            __dst[11] = v300;
            __dst[4] = v293;
            __dst[5] = v294;
            __dst[6] = v295;
            __dst[7] = v296;
            __dst[0] = v289;
            __dst[1] = v290;
            v134 = v291;
            v135 = v292;
            goto LABEL_168;
          }

          __src[13] = v301;
          __src[14] = v302;
          __src[15] = v303;
          __src[16] = v304;
          __src[9] = v297;
          __src[10] = v298;
          __src[11] = v299;
          __src[12] = v300;
          __src[5] = v293;
          __src[6] = v294;
          __src[7] = v295;
          __src[8] = v296;
          __src[1] = v289;
          __src[2] = v290;
          v147 = v291;
          v148 = v292;
LABEL_170:
          __src[3] = v147;
          __src[4] = v148;
          LOBYTE(__src[17]) = 1;
          *&__src[0] = v98;
          *(&__src[17] + 1) = v43;
          LOBYTE(__src[18]) = 0;
          *&__src[19] = 0;
          *(&__src[18] + 1) = 0;
          *(&__src[19] + 1) = v9;
          __src[20] = 0uLL;
          LOBYTE(__src[21]) = 1;
          *(&__src[21] + 1) = 0;
          LOBYTE(__src[22]) = 1;
          goto LABEL_171;
        }

        v44 = makeEntity(for:)(v41);
      }

      v45 = v44;
      goto LABEL_102;
    }

    v174 = a5;
    v68 = *a2;
    v67 = *(a2 + 1);
    v69 = *(a2 + 3);
    v28 = *(a2 + 4);
    v43 = *(a2 + 5);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v70 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      specialized static Entity.entityInfoType(_:)(v68);
      if (v96)
      {
        v71 = (*(v96 + 232))();
        v97 = *(v71 + 16);

        MEMORY[0x1C68F9740](v97, 0);
        *(v71 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v71);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v98 = swift_allocObject();
        *(v98 + 40) = 0;
        swift_weakInit();
        *(v98 + 16) = v67;
        swift_weakAssign();

        *(v98 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v71 + 16));
        v99 = Hasher._finalize()();

        *(v98 + 24) = v99;
        if (v43)
        {
          if (REBindPointBoundComponent())
          {
            v100 = v28;
            v101 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v102 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
                goto LABEL_204;
              }

              specialized static Entity.entityInfoType(_:)(v101);
              if (v143)
              {
                v43 = (*(v143 + 232))();
                v144 = *(v43 + 16);

                MEMORY[0x1C68F9740](v144, 0);
                *(v43 + 16) = v101;
                MEMORY[0x1C68F9740](v101, v43);

                goto LABEL_136;
              }

              v102 = makeEntity(for:)(v101);
            }

            v43 = v102;
LABEL_136:
            v28 = v100;
            goto LABEL_137;
          }

          v43 = 0;
        }

LABEL_137:
        v145 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v69, v145, v146, &v321);

        specialized ActionEventData.action<A>()(&v271);
        v317 = v283;
        v318 = v284;
        v319 = v285;
        v320 = v286;
        v313 = v279;
        v314 = v280;
        v315 = v281;
        v316 = v282;
        v309 = v275;
        v310 = v276;
        v311 = v277;
        v312 = v278;
        v305 = v271;
        v306 = v272;
        v307 = v273;
        v308 = v274;
        if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v305) == 1)
        {

          __dst[12] = v283;
          __dst[13] = v284;
          __dst[14] = v285;
          __dst[15] = v286;
          __dst[8] = v279;
          __dst[9] = v280;
          __dst[10] = v281;
          __dst[11] = v282;
          __dst[4] = v275;
          __dst[5] = v276;
          __dst[6] = v277;
          __dst[7] = v278;
          __dst[0] = v271;
          __dst[1] = v272;
          v134 = v273;
          v135 = v274;
          goto LABEL_168;
        }

        __src[13] = v283;
        __src[14] = v284;
        __src[15] = v285;
        __src[16] = v286;
        __src[9] = v279;
        __src[10] = v280;
        __src[11] = v281;
        __src[12] = v282;
        __src[5] = v275;
        __src[6] = v276;
        __src[7] = v277;
        __src[8] = v278;
        __src[1] = v271;
        __src[2] = v272;
        v147 = v273;
        v148 = v274;
        goto LABEL_170;
      }

      v70 = makeEntity(for:)(v68);
    }

    v71 = v70;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static AnimationLogger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&__dst[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6, void (*a7)(__int128 *__return_ptr, __n128), unsigned int (*a8)(__int128 *), uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v199 = a7;
            v191 = a13;
            v192 = a14;
            v193 = a11;
            v194 = a12;
            v21 = *a2;
            v22 = *(a2 + 1);
            v23 = *(a2 + 4);
            v24 = *(a2 + 5);
            v25 = a2[14];
            v180 = *(a2 + 8);
            v184 = *(a2 + 6);
            v177 = *(a2 + 9);
            v26 = *(a2 + 11);
            v188 = *(a2 + 10);
            v27 = *(a2 + 24);
            v175 = *(a2 + 104);
            v195 = a5;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v28 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v21);
              if (v120)
              {
                v29 = (*(v120 + 232))();
                v121 = *(v29 + 16);

                MEMORY[0x1C68F9740](v121, 0);
                *(v29 + 16) = v21;
                MEMORY[0x1C68F9740](v21, v29);

                goto LABEL_82;
              }

              v28 = makeEntity(for:)(v21);
LABEL_8:
              v29 = v28;
LABEL_82:
              type metadata accessor for AnimationPlaybackController();
              v122 = swift_allocObject();
              *(v122 + 40) = 0;
              swift_weakInit();
              *(v122 + 16) = v22;
              swift_weakAssign();

              *(v122 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v29 + 16));
              v123 = Hasher._finalize()();

              *(v122 + 24) = v123;
              v124 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v23, 0, v24, v124, v125, &v299);

              if (!v26)
              {
LABEL_147:
                (v199)(&v217, v126);
                v295 = v223;
                v296 = v224;
                v297 = v225;
                v298 = v226;
                v291 = v219;
                v292 = v220;
                v293 = v221;
                v294 = v222;
                v289 = v217;
                v290 = v218;
                if (a8(&v289) == 1)
                {

                  __dst[6] = v223;
                  __dst[7] = v224;
                  __dst[8] = v225;
                  __dst[9] = v226;
                  __dst[2] = v219;
                  __dst[3] = v220;
                  __dst[4] = v221;
                  __dst[5] = v222;
                  v102 = v217;
                  v103 = v218;
                  goto LABEL_166;
                }

                __src[7] = v223;
                __src[8] = v224;
                __src[9] = v225;
                __src[10] = v226;
                __src[3] = v219;
                __src[4] = v220;
                __src[5] = v221;
                __src[6] = v222;
                __src[1] = v217;
                __src[2] = v218;
                LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
                *&__src[0] = v122;
                *(&__src[11] + 1) = v26;
                LOBYTE(__src[12]) = v175;
                *(&__src[12] + 8) = vcvtq_f64_f32(v27);
                *(&__src[13] + 1) = v20;
                *&__src[14] = v177;
                *(&__src[14] + 1) = v25;
                LOBYTE(__src[15]) = 0;
                LOBYTE(__src[16]) = 0;
                *(&__src[15] + 1) = v184;
                *(&__src[16] + 1) = v180;
                LOBYTE(__src[17]) = 0;
                goto LABEL_150;
              }

              v126 = REBindPointBoundComponent();
              if (!v126)
              {
                v26 = 0;
                goto LABEL_147;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v126 = swift_dynamicCastClassUnconditional();
LABEL_86:
                v26 = v126;
                goto LABEL_147;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(Entity);
                if (v162)
                {
                  v26 = (*(v162 + 232))();
                  v163 = *(v26 + 16);

                  MEMORY[0x1C68F9740](v163, 0);
                  *(v26 + 16) = Entity;
                  MEMORY[0x1C68F9740](Entity, v26);

                  goto LABEL_147;
                }

                v126 = makeEntity(for:)(Entity);
                goto LABEL_86;
              }

              goto LABEL_200;
            }

            goto LABEL_192;
          }

LABEL_42:

          return 0;
        }

        v203 = a7;
        v191 = a13;
        v192 = a14;
        v193 = a11;
        v194 = a12;
        v57 = *a2;
        v58 = *(a2 + 1);
        v59 = *(a2 + 4);
        v60 = *(a2 + 5);
        v61 = *(a2 + 8);
        v62 = *(a2 + 18);
        v176 = *(a2 + 80);
        v186 = *(a2 + 11);
        v188 = *(a2 + 6);
        v179 = *(a2 + 7);
        v182 = *(a2 + 12);
        v195 = a5;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v63 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v57);
          if (v84)
          {
            v64 = (*(v84 + 232))();
            v85 = *(v64 + 16);

            MEMORY[0x1C68F9740](v85, 0);
            *(v64 + 16) = v57;
            MEMORY[0x1C68F9740](v57, v64);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v86 = swift_allocObject();
            *(v86 + 40) = 0;
            swift_weakInit();
            *(v86 + 16) = v58;
            swift_weakAssign();

            *(v86 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v64 + 16));
            v87 = Hasher._finalize()();

            *(v86 + 24) = v87;
            v88 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v60, v88, v89, &v299);

            if (v61)
            {
              v90 = REBindPointBoundComponent();
              if (v90)
              {
                v91 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v90 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_196:
                    __break(1u);
                    goto LABEL_197;
                  }

                  specialized static Entity.entityInfoType(_:)(v91);
                  if (v148)
                  {
                    v61 = (*(v148 + 232))();
                    v149 = *(v61 + 16);

                    MEMORY[0x1C68F9740](v149, 0);
                    *(v61 + 16) = v91;
                    MEMORY[0x1C68F9740](v91, v61);

                    goto LABEL_125;
                  }

                  v90 = makeEntity(for:)(v91);
                }

                v61 = v90;
              }

              else
              {
                v61 = 0;
              }
            }

LABEL_125:
            (v203)(&v207, v90);
            v295 = v213;
            v296 = v214;
            v297 = v215;
            v298 = v216;
            v291 = v209;
            v292 = v210;
            v293 = v211;
            v294 = v212;
            v289 = v207;
            v290 = v208;
            if (a8(&v289) == 1)
            {

              __dst[6] = v213;
              __dst[7] = v214;
              __dst[8] = v215;
              __dst[9] = v216;
              __dst[2] = v209;
              __dst[3] = v210;
              __dst[4] = v211;
              __dst[5] = v212;
              v102 = v207;
              v103 = v208;
              goto LABEL_166;
            }

            __src[7] = v213;
            __src[8] = v214;
            __src[9] = v215;
            __src[10] = v216;
            __src[3] = v209;
            __src[4] = v210;
            __src[5] = v211;
            __src[6] = v212;
            __src[1] = v207;
            __src[2] = v208;
            LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
            *&__src[0] = v86;
            *(&__src[11] + 1) = v61;
            LOBYTE(__src[12]) = v176;
            *(&__src[12] + 8) = vcvtq_f64_f32(v62);
            *(&__src[13] + 1) = v20;
            *&__src[14] = v179;
            *(&__src[14] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[15]) = 0;
            LOBYTE(__src[16]) = 0;
            v150 = v182;
            *(&__src[15] + 1) = v186;
LABEL_137:
            *(&__src[16] + 1) = v150;
            LOBYTE(__src[17]) = 0;
LABEL_150:
            *(&__src[19] + 8) = v301;
            *(&__src[20] + 8) = v302;
            *(&__src[21] + 8) = v303;
LABEL_160:
            *(&__src[17] + 8) = v299;
            *(&__src[18] + 8) = v300;
            *(&__src[22] + 1) = v188;
            v195(__src);
            goto LABEL_169;
          }

          v63 = makeEntity(for:)(v57);
LABEL_32:
          v64 = v63;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_189;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v201 = a7;
        v191 = a13;
        v192 = a14;
        v193 = a11;
        v194 = a12;
        v43 = *a2;
        v44 = *(a2 + 1);
        v45 = *(a2 + 4);
        v46 = *(a2 + 5);
        v47 = *(a2 + 7);
        v48 = *(a2 + 16);
        v178 = *(a2 + 72);
        v185 = *(a2 + 10);
        v188 = *(a2 + 6);
        v181 = *(a2 + 11);
        v195 = a5;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v49 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          specialized static Entity.entityInfoType(_:)(v43);
          if (v135)
          {
            v50 = (*(v135 + 232))();
            v136 = *(v50 + 16);

            MEMORY[0x1C68F9740](v136, 0);
            *(v50 + 16) = v43;
            MEMORY[0x1C68F9740](v43, v50);

LABEL_103:
            type metadata accessor for AnimationPlaybackController();
            v137 = swift_allocObject();
            *(v137 + 40) = 0;
            swift_weakInit();
            *(v137 + 16) = v44;
            swift_weakAssign();

            *(v137 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v50 + 16));
            v138 = Hasher._finalize()();

            *(v137 + 24) = v138;
            v139 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v45, 0, v46, v139, v140, &v299);

            if (v47)
            {
              v141 = REBindPointBoundComponent();
              if (v141)
              {
                v142 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v141 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_202:
                    __break(1u);
                    goto LABEL_203;
                  }

                  specialized static Entity.entityInfoType(_:)(v142);
                  if (v166)
                  {
                    v47 = (*(v166 + 232))();
                    v167 = *(v47 + 16);

                    MEMORY[0x1C68F9740](v167, 0);
                    *(v47 + 16) = v142;
                    MEMORY[0x1C68F9740](v142, v47);

                    goto LABEL_157;
                  }

                  v141 = makeEntity(for:)(v142);
                }

                v47 = v141;
              }

              else
              {
                v47 = 0;
              }
            }

LABEL_157:
            (v201)(&v237, v141);
            v295 = v243;
            v296 = v244;
            v297 = v245;
            v298 = v246;
            v291 = v239;
            v292 = v240;
            v293 = v241;
            v294 = v242;
            v289 = v237;
            v290 = v238;
            if (a8(&v289) == 1)
            {

              __dst[6] = v243;
              __dst[7] = v244;
              __dst[8] = v245;
              __dst[9] = v246;
              __dst[2] = v239;
              __dst[3] = v240;
              __dst[4] = v241;
              __dst[5] = v242;
              v102 = v237;
              v103 = v238;
              goto LABEL_166;
            }

            __src[7] = v243;
            __src[8] = v244;
            __src[9] = v245;
            __src[10] = v246;
            __src[3] = v239;
            __src[4] = v240;
            __src[5] = v241;
            __src[6] = v242;
            __src[1] = v237;
            __src[2] = v238;
            LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
            *&__src[0] = v137;
            *(&__src[11] + 1) = v47;
            LOBYTE(__src[12]) = v178;
            *(&__src[12] + 8) = vcvtq_f64_f32(v48);
            *(&__src[13] + 1) = v20;
            __src[14] = 0uLL;
            LOBYTE(__src[15]) = 1;
            LOBYTE(__src[16]) = 0;
            *(&__src[15] + 1) = v185;
            *(&__src[16] + 1) = v181;
            LOBYTE(__src[17]) = 0;
            *(&__src[20] + 8) = v302;
            *(&__src[21] + 8) = v303;
            *(&__src[19] + 8) = v301;
            goto LABEL_160;
          }

          v49 = makeEntity(for:)(v43);
        }

        v50 = v49;
        goto LABEL_103;
      }

      v205 = a7;
      v191 = a13;
      v192 = a14;
      v193 = a11;
      v194 = a12;
      v71 = *a2;
      v72 = *(a2 + 1);
      v73 = *(a2 + 4);
      v74 = *(a2 + 5);
      v75 = *(a2 + 8);
      v187 = *(a2 + 7);
      v188 = *(a2 + 6);
      v76 = *(a2 + 18);
      v183 = *(a2 + 80);
      v195 = a5;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v77 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        specialized static Entity.entityInfoType(_:)(v71);
        if (v106)
        {
          v78 = (*(v106 + 232))();
          v107 = *(v78 + 16);

          MEMORY[0x1C68F9740](v107, 0);
          *(v78 + 16) = v71;
          MEMORY[0x1C68F9740](v71, v78);

LABEL_66:
          type metadata accessor for AnimationPlaybackController();
          v108 = swift_allocObject();
          *(v108 + 40) = 0;
          swift_weakInit();
          *(v108 + 16) = v72;
          swift_weakAssign();

          *(v108 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v78 + 16));
          v109 = Hasher._finalize()();

          *(v108 + 24) = v109;
          v110 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v73, 0, v74, v110, v111, &v299);

          if (v75)
          {
            v112 = REBindPointBoundComponent();
            if (v112)
            {
              v113 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v112 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_198:
                  __break(1u);
                  goto LABEL_199;
                }

                specialized static Entity.entityInfoType(_:)(v113);
                if (v153)
                {
                  v75 = (*(v153 + 232))();
                  v154 = *(v75 + 16);

                  MEMORY[0x1C68F9740](v154, 0);
                  *(v75 + 16) = v113;
                  MEMORY[0x1C68F9740](v113, v75);

                  goto LABEL_134;
                }

                v112 = makeEntity(for:)(v113);
              }

              v75 = v112;
            }

            else
            {
              v75 = 0;
            }
          }

LABEL_134:
          (v205)(&v227, v112);
          v295 = v233;
          v296 = v234;
          v297 = v235;
          v298 = v236;
          v291 = v229;
          v292 = v230;
          v293 = v231;
          v294 = v232;
          v289 = v227;
          v290 = v228;
          if (a8(&v289) == 1)
          {

            __dst[6] = v233;
            __dst[7] = v234;
            __dst[8] = v235;
            __dst[9] = v236;
            __dst[2] = v229;
            __dst[3] = v230;
            __dst[4] = v231;
            __dst[5] = v232;
            v102 = v227;
            v103 = v228;
            goto LABEL_166;
          }

          __src[7] = v233;
          __src[8] = v234;
          __src[9] = v235;
          __src[10] = v236;
          __src[3] = v229;
          __src[4] = v230;
          __src[5] = v231;
          __src[6] = v232;
          __src[1] = v227;
          __src[2] = v228;
          LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
          *&__src[0] = v108;
          *(&__src[11] + 1) = v75;
          LOBYTE(__src[12]) = v183;
          *(&__src[12] + 8) = vcvtq_f64_f32(v76);
          *(&__src[13] + 1) = v20;
          *&__src[14] = v187;
          v150 = 0xBFF0000000000000;
          *(&__src[14] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[15]) = 0;
          LOBYTE(__src[16]) = 0;
          *(&__src[15] + 1) = 0xBFF0000000000000;
          goto LABEL_137;
        }

        v77 = makeEntity(for:)(v71);
      }

      v78 = v77;
      goto LABEL_66;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v200 = a7;
        v191 = a13;
        v192 = a14;
        v194 = a12;
        v196 = a5;
        v193 = a11;
        v36 = *a2;
        v37 = *(a2 + 1);
        v38 = *(a2 + 4);
        v39 = *(a2 + 5);
        v189 = *(a2 + 6);
        v40 = *(a2 + 7);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v41 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          specialized static Entity.entityInfoType(_:)(v36);
          if (v128)
          {
            v42 = (*(v128 + 232))();
            v129 = *(v42 + 16);

            MEMORY[0x1C68F9740](v129, 0);
            *(v42 + 16) = v36;
            MEMORY[0x1C68F9740](v36, v42);

            goto LABEL_90;
          }

          v41 = makeEntity(for:)(v36);
        }

        v42 = v41;
LABEL_90:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v37;
        swift_weakAssign();

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v42 + 16));
        v130 = Hasher._finalize()();

        *(v94 + 24) = v130;
        v131 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v39, v131, v132, &v299);

        if (v40 && REBindPointBoundComponent())
        {
          v133 = REComponentGetEntity();
          v99 = v196;
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v134 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_201:
              __break(1u);
              goto LABEL_202;
            }

            specialized static Entity.entityInfoType(_:)(v133);
            if (v164)
            {
              v101 = (*(v164 + 232))();
              v165 = *(v101 + 16);

              MEMORY[0x1C68F9740](v165, 0);
              *(v101 + 16) = v133;
              MEMORY[0x1C68F9740](v133, v101);

              goto LABEL_96;
            }

            v134 = makeEntity(for:)(v133);
          }

          v101 = v134;
        }

        else
        {
          v101 = 0;
          v99 = v196;
        }

LABEL_96:
        (v200)(&v257);
        v295 = v263;
        v296 = v264;
        v297 = v265;
        v298 = v266;
        v291 = v259;
        v292 = v260;
        v293 = v261;
        v294 = v262;
        v289 = v257;
        v290 = v258;
        if (a8(&v289) == 1)
        {

          __dst[6] = v263;
          __dst[7] = v264;
          __dst[8] = v265;
          __dst[9] = v266;
          __dst[2] = v259;
          __dst[3] = v260;
          __dst[4] = v261;
          __dst[5] = v262;
          v102 = v257;
          v103 = v258;
          goto LABEL_166;
        }

        __src[7] = v263;
        __src[8] = v264;
        __src[9] = v265;
        __src[10] = v266;
        __src[3] = v259;
        __src[4] = v260;
        __src[5] = v261;
        __src[6] = v262;
        v104 = v257;
        v105 = v258;
        goto LABEL_99;
      }

      v204 = a7;
      v191 = a13;
      v192 = a14;
      v194 = a12;
      v198 = a5;
      v193 = a11;
      v65 = *a2;
      v66 = *(a2 + 1);
      v38 = *(a2 + 4);
      v67 = *(a2 + 5);
      v189 = *(a2 + 6);
      v68 = *(a2 + 7);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v69 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        specialized static Entity.entityInfoType(_:)(v65);
        if (v92)
        {
          v70 = (*(v92 + 232))();
          v93 = *(v70 + 16);

          MEMORY[0x1C68F9740](v93, 0);
          *(v70 + 16) = v65;
          MEMORY[0x1C68F9740](v65, v70);

          goto LABEL_54;
        }

        v69 = makeEntity(for:)(v65);
      }

      v70 = v69;
LABEL_54:
      type metadata accessor for AnimationPlaybackController();
      v94 = swift_allocObject();
      *(v94 + 40) = 0;
      swift_weakInit();
      *(v94 + 16) = v66;
      swift_weakAssign();

      *(v94 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v70 + 16));
      v95 = Hasher._finalize()();

      *(v94 + 24) = v95;
      v96 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v67, v96, v97, &v299);

      if (v68 && REBindPointBoundComponent())
      {
        v98 = REComponentGetEntity();
        v99 = v198;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v100 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          specialized static Entity.entityInfoType(_:)(v98);
          if (v151)
          {
            v101 = (*(v151 + 232))();
            v152 = *(v101 + 16);

            MEMORY[0x1C68F9740](v152, 0);
            *(v101 + 16) = v98;
            MEMORY[0x1C68F9740](v98, v101);

            goto LABEL_60;
          }

          v100 = makeEntity(for:)(v98);
        }

        v101 = v100;
      }

      else
      {
        v101 = 0;
        v99 = v198;
      }

LABEL_60:
      (v204)(&v247);
      v295 = v253;
      v296 = v254;
      v297 = v255;
      v298 = v256;
      v291 = v249;
      v292 = v250;
      v293 = v251;
      v294 = v252;
      v289 = v247;
      v290 = v248;
      if (a8(&v289) == 1)
      {

        __dst[6] = v253;
        __dst[7] = v254;
        __dst[8] = v255;
        __dst[9] = v256;
        __dst[2] = v249;
        __dst[3] = v250;
        __dst[4] = v251;
        __dst[5] = v252;
        v102 = v247;
        v103 = v248;
LABEL_166:
        __dst[0] = v102;
        __dst[1] = v103;
        v173 = v191;
        v174 = v192;
LABEL_170:
        outlined destroy of BodyTrackingComponent?(__dst, v173, v174);
        return 0;
      }

      __src[7] = v253;
      __src[8] = v254;
      __src[9] = v255;
      __src[10] = v256;
      __src[3] = v249;
      __src[4] = v250;
      __src[5] = v251;
      __src[6] = v252;
      v104 = v247;
      v105 = v248;
LABEL_99:
      __src[1] = v104;
      __src[2] = v105;
      LOBYTE(__src[11]) = 1;
      *&__src[0] = v94;
      *(&__src[11] + 1) = v101;
      LOBYTE(__src[12]) = 0;
      *&__src[13] = 0;
      *(&__src[12] + 1) = 0;
      *(&__src[13] + 1) = v20;
      __src[14] = 0uLL;
      LOBYTE(__src[15]) = 1;
      LOBYTE(__src[16]) = 0;
      *(&__src[15] + 1) = v38;
      *(&__src[16] + 1) = 0;
      LOBYTE(__src[17]) = 1;
      *(&__src[20] + 8) = v302;
      *(&__src[21] + 8) = v303;
      *(&__src[18] + 8) = v300;
      *(&__src[19] + 8) = v301;
      *(&__src[17] + 8) = v299;
      *(&__src[22] + 1) = v189;
      v99(__src);
LABEL_169:

      memcpy(__dst, __src, sizeof(__dst));
      v173 = v193;
      v174 = v194;
      goto LABEL_170;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v202 = a7;
      v191 = a13;
      v192 = a14;
      v197 = a5;
      v193 = a11;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a2 + 3);
      v54 = *(a2 + 5);
      v190 = *(a2 + 4);
      v194 = a12;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v55 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        specialized static Entity.entityInfoType(_:)(v51);
        if (v143)
        {
          v56 = (*(v143 + 232))();
          v144 = *(v56 + 16);

          MEMORY[0x1C68F9740](v144, 0);
          *(v56 + 16) = v51;
          MEMORY[0x1C68F9740](v51, v56);

LABEL_111:
          type metadata accessor for AnimationPlaybackController();
          v116 = swift_allocObject();
          *(v116 + 40) = 0;
          swift_weakInit();
          *(v116 + 16) = v52;
          swift_weakAssign();

          *(v116 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v56 + 16));
          v145 = Hasher._finalize()();

          *(v116 + 24) = v145;
          if (v54)
          {
            if (REBindPointBoundComponent())
            {
              v146 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v147 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_203:
                  __break(1u);
                  return result;
                }

                specialized static Entity.entityInfoType(_:)(v146);
                if (v168)
                {
                  v54 = (*(v168 + 232))();
                  v169 = *(v54 + 16);

                  MEMORY[0x1C68F9740](v169, 0);
                  *(v54 + 16) = v146;
                  MEMORY[0x1C68F9740](v146, v54);

                  goto LABEL_164;
                }

                v147 = makeEntity(for:)(v146);
              }

              v54 = v147;
            }

            else
            {
              v54 = 0;
            }
          }

LABEL_164:
          v170 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v53, v170, v171, &v299);

          (v202)(&v279, v172);
          v295 = v285;
          v296 = v286;
          v297 = v287;
          v298 = v288;
          v291 = v281;
          v292 = v282;
          v293 = v283;
          v294 = v284;
          v289 = v279;
          v290 = v280;
          if (a8(&v289) == 1)
          {

            __dst[6] = v285;
            __dst[7] = v286;
            __dst[8] = v287;
            __dst[9] = v288;
            __dst[2] = v281;
            __dst[3] = v282;
            __dst[4] = v283;
            __dst[5] = v284;
            v102 = v279;
            v103 = v280;
            goto LABEL_166;
          }

          __src[7] = v285;
          __src[8] = v286;
          __src[9] = v287;
          __src[10] = v288;
          __src[3] = v281;
          __src[4] = v282;
          __src[5] = v283;
          __src[6] = v284;
          v160 = v279;
          v161 = v280;
          goto LABEL_168;
        }

        v55 = makeEntity(for:)(v51);
      }

      v56 = v55;
      goto LABEL_111;
    }

    v206 = a7;
    v191 = a13;
    v192 = a14;
    v197 = a5;
    v193 = a11;
    v79 = *a2;
    v80 = *(a2 + 1);
    v81 = *(a2 + 3);
    v54 = *(a2 + 5);
    v190 = *(a2 + 4);
    v194 = a12;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v82 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      specialized static Entity.entityInfoType(_:)(v79);
      if (v114)
      {
        v83 = (*(v114 + 232))();
        v115 = *(v83 + 16);

        MEMORY[0x1C68F9740](v115, 0);
        *(v83 + 16) = v79;
        MEMORY[0x1C68F9740](v79, v83);

LABEL_74:
        type metadata accessor for AnimationPlaybackController();
        v116 = swift_allocObject();
        *(v116 + 40) = 0;
        swift_weakInit();
        *(v116 + 16) = v80;
        swift_weakAssign();

        *(v116 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v83 + 16));
        v117 = Hasher._finalize()();

        *(v116 + 24) = v117;
        if (v54)
        {
          if (REBindPointBoundComponent())
          {
            v118 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v119 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
                goto LABEL_201;
              }

              specialized static Entity.entityInfoType(_:)(v118);
              if (v155)
              {
                v54 = (*(v155 + 232))();
                v156 = *(v54 + 16);

                MEMORY[0x1C68F9740](v156, 0);
                *(v54 + 16) = v118;
                MEMORY[0x1C68F9740](v118, v54);

                goto LABEL_141;
              }

              v119 = makeEntity(for:)(v118);
            }

            v54 = v119;
          }

          else
          {
            v54 = 0;
          }
        }

LABEL_141:
        v157 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v81, v157, v158, &v299);

        (v206)(&v267, v159);
        v295 = v273;
        v296 = v274;
        v297 = v275;
        v298 = v276;
        v291 = v269;
        v292 = v270;
        v293 = v271;
        v294 = v272;
        v289 = v267;
        v290 = v268;
        if (a8(&v289) == 1)
        {

          __dst[6] = v273;
          __dst[7] = v274;
          __dst[8] = v275;
          __dst[9] = v276;
          __dst[2] = v269;
          __dst[3] = v270;
          __dst[4] = v271;
          __dst[5] = v272;
          v102 = v267;
          v103 = v268;
          goto LABEL_166;
        }

        __src[7] = v273;
        __src[8] = v274;
        __src[9] = v275;
        __src[10] = v276;
        __src[3] = v269;
        __src[4] = v270;
        __src[5] = v271;
        __src[6] = v272;
        v160 = v267;
        v161 = v268;
LABEL_168:
        __src[1] = v160;
        __src[2] = v161;
        LOBYTE(__src[11]) = 1;
        *&__src[0] = v116;
        *(&__src[11] + 1) = v54;
        LOBYTE(__src[12]) = 0;
        *&__src[13] = 0;
        *(&__src[12] + 1) = 0;
        *(&__src[13] + 1) = v20;
        __src[14] = 0uLL;
        LOBYTE(__src[15]) = 1;
        LOBYTE(__src[16]) = 1;
        *(&__src[15] + 1) = 0;
        *(&__src[16] + 1) = 0;
        LOBYTE(__src[17]) = 1;
        *(&__src[20] + 8) = v302;
        *(&__src[21] + 8) = v303;
        *(&__src[18] + 8) = v300;
        *(&__src[19] + 8) = v301;
        *(&__src[17] + 8) = v299;
        *(&__src[22] + 1) = v190;
        v197(__src);
        goto LABEL_169;
      }

      v82 = makeEntity(for:)(v79);
    }

    v83 = v82;
    goto LABEL_74;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static AnimationLogger.logger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&__dst[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v31, v32, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1C6902A30](v34, -1, -1);
    MEMORY[0x1C6902A30](v33, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v152 = a5;
            v13 = *a2;
            v12 = a2[1];
            v14 = a2[4];
            v15 = a2[5];
            v5.i32[0] = *(a2 + 14);
            v146 = a2[8];
            v149 = a2[6];
            v143 = a2[9];
            v16 = a2[11];
            v6 = a2[12];
            v141 = *(a2 + 104);
            v151 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v17 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v152 = a5;
        v45 = *a2;
        v44 = a2[1];
        v46 = a2[4];
        v47 = a2[5];
        v48 = a2[8];
        v49 = a2[9];
        v142 = *(a2 + 80);
        v145 = a2[11];
        v148 = a2[7];
        v150 = a2[12];
        v151 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v50 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v45);
          if (v66)
          {
            v51 = (*(v66 + 232))();
            v67 = *(v51 + 16);

            MEMORY[0x1C68F9740](v67, 0);
            *(v51 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v51);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v44;
            swift_weakAssign();

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v51 + 16));
            v69 = Hasher._finalize()();

            *(v68 + 24) = v69;
            v70 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v46, 0, v47, v70, v71, &v161);

            if (v48)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v73 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_175:
                    __break(1u);
                    goto LABEL_176;
                  }

                  specialized static Entity.entityInfoType(_:)(Entity);
                  if (v117)
                  {
                    v48 = (*(v117 + 232))();
                    v118 = *(v48 + 16);

                    MEMORY[0x1C68F9740](v118, 0);
                    *(v48 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v48);

                    goto LABEL_116;
                  }

                  v73 = makeEntity(for:)(Entity);
                }

                v48 = v73;
              }

              else
              {
                v48 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v155);
            if (v160 == 1)
            {
              goto LABEL_147;
            }

            __src[3] = v157;
            __src[4] = v158;
            __src[5] = v159;
            __src[6] = v160;
            __src[1] = v155;
            __src[2] = v156;
            v119 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
            *(&__src[16] + 8) = v164;
            *(&__src[17] + 8) = v165;
            *(&__src[8] + 8) = vcvtq_f64_f32(v49);
            v120 = v161;
            *(&__src[14] + 8) = v162;
            *(&__src[15] + 8) = v163;
            LOBYTE(__src[7]) = v119 & 1;
            *&__src[0] = v68;
            *(&__src[7] + 1) = v48;
            LOBYTE(__src[8]) = v142;
            *(&__src[9] + 1) = v11;
            *&__src[10] = v148;
            *(&__src[10] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[11]) = 0;
            v121 = v145;
            goto LABEL_139;
          }

          v50 = makeEntity(for:)(v45);
LABEL_32:
          v51 = v50;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v152 = a5;
        v33 = *a2;
        v32 = a2[1];
        v34 = a2[4];
        v35 = a2[5];
        v36 = a2[7];
        v37 = a2[8];
        v144 = *(a2 + 72);
        v147 = a2[10];
        v150 = a2[11];
        v151 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          specialized static Entity.entityInfoType(_:)(v33);
          if (v105)
          {
            v39 = (*(v105 + 232))();
            v106 = *(v39 + 16);

            MEMORY[0x1C68F9740](v106, 0);
            *(v39 + 16) = v33;
            MEMORY[0x1C68F9740](v33, v39);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v107 = swift_allocObject();
            *(v107 + 40) = 0;
            swift_weakInit();
            *(v107 + 16) = v32;
            swift_weakAssign();

            *(v107 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v39 + 16));
            v108 = Hasher._finalize()();

            *(v107 + 24) = v108;
            v109 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v34, 0, v35, v109, v110, &v161);

            if (v36)
            {
              if (REBindPointBoundComponent())
              {
                v111 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v112 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  specialized static Entity.entityInfoType(_:)(v111);
                  if (v132)
                  {
                    v36 = (*(v132 + 232))();
                    v133 = *(v36 + 16);

                    MEMORY[0x1C68F9740](v133, 0);
                    *(v36 + 16) = v111;
                    MEMORY[0x1C68F9740](v111, v36);

                    goto LABEL_136;
                  }

                  v112 = makeEntity(for:)(v111);
                }

                v36 = v112;
              }

              else
              {
                v36 = 0;
              }
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v155);
            if (v160 == 1)
            {
              goto LABEL_147;
            }

            __src[3] = v157;
            __src[4] = v158;
            __src[5] = v159;
            __src[6] = v160;
            __src[1] = v155;
            __src[2] = v156;
            v134 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
            *(&__src[16] + 8) = v164;
            *(&__src[17] + 8) = v165;
            *(&__src[8] + 8) = vcvtq_f64_f32(v37);
            v120 = v161;
            *(&__src[14] + 8) = v162;
            *(&__src[15] + 8) = v163;
            LOBYTE(__src[7]) = v134 & 1;
            *&__src[0] = v107;
            *(&__src[7] + 1) = v36;
            LOBYTE(__src[8]) = v144;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v11;
            LOBYTE(__src[11]) = 1;
            v121 = v147;
LABEL_139:
            *(&__src[11] + 1) = v121;
            LOBYTE(__src[12]) = 0;
            v125 = v150;
            goto LABEL_140;
          }

          v38 = makeEntity(for:)(v33);
        }

        v39 = v38;
        goto LABEL_95;
      }

      v152 = a5;
      v58 = *a2;
      v52 = a2[1];
      v54 = a2[4];
      v59 = a2[5];
      v29 = a2[8];
      v149 = a2[7];
      v5 = a2[9];
      LOBYTE(v146) = *(a2 + 80);
      v151 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v60 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      specialized static Entity.entityInfoType(_:)(v58);
      if (v79)
      {
        v61 = (*(v79 + 232))();
        v80 = *(v61 + 16);

        MEMORY[0x1C68F9740](v80, 0);
        *(v61 + 16) = v58;
        MEMORY[0x1C68F9740](v58, v61);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v81 = swift_allocObject();
        *(v81 + 40) = 0;
        swift_weakInit();
        *(v81 + 16) = v52;
        swift_weakAssign();

        *(v81 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v61 + 16));
        v82 = Hasher._finalize()();

        *(v81 + 24) = v82;
        v83 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v54, 0, v59, v83, v84, &v161);

        if (v29)
        {
          if (REBindPointBoundComponent())
          {
            v85 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v86 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              specialized static Entity.entityInfoType(_:)(v85);
              if (v122)
              {
                v29 = (*(v122 + 232))();
                v123 = *(v29 + 16);

                MEMORY[0x1C68F9740](v123, 0);
                *(v29 + 16) = v85;
                MEMORY[0x1C68F9740](v85, v29);

                goto LABEL_121;
              }

              v86 = makeEntity(for:)(v85);
            }

            v29 = v86;
          }

          else
          {
            v29 = 0;
          }
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v155);
        if (v160 == 1)
        {
          goto LABEL_147;
        }

        __src[3] = v157;
        __src[4] = v158;
        __src[5] = v159;
        __src[6] = v160;
        __src[1] = v155;
        __src[2] = v156;
        v124 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
        *(&__src[16] + 8) = v164;
        *(&__src[17] + 8) = v165;
        *(&__src[8] + 8) = vcvtq_f64_f32(v5);
        v120 = v161;
        *(&__src[14] + 8) = v162;
        *(&__src[15] + 8) = v163;
        LOBYTE(__src[7]) = v124 & 1;
        *&__src[0] = v81;
        *(&__src[7] + 1) = v29;
        LOBYTE(__src[8]) = v146;
        *(&__src[9] + 1) = v11;
        *&__src[10] = v149;
        v125 = 0xBFF0000000000000;
        *(&__src[10] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[12]) = 0;
LABEL_140:
        *(&__src[12] + 1) = v125;
        LOBYTE(__src[13]) = 0;
        goto LABEL_141;
      }

      v60 = makeEntity(for:)(v58);
LABEL_38:
      v61 = v60;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v152 = a5;
        v26 = *a2;
        v25 = a2[1];
        v27 = a2[5];
        v28 = a2[6];
        v29 = a2[7];
        v151 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v30 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v26);
          if (v99)
          {
            v31 = (*(v99 + 232))();
            v100 = *(v31 + 16);

            MEMORY[0x1C68F9740](v100, 0);
            *(v31 + 16) = v26;
            MEMORY[0x1C68F9740](v26, v31);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v58 = swift_allocObject();
            *(v58 + 40) = 0;
            swift_weakInit();
            *(v58 + 16) = v25;
            swift_weakAssign();

            *(v58 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v31 + 16));
            v101 = Hasher._finalize()();

            *(v58 + 24) = v101;
            v102 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v27, v102, v103, &v161);

            if (v29)
            {
              if (REBindPointBoundComponent())
              {
                v59 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v30 = makeEntity(for:)(v26);
        }

        v31 = v30;
        goto LABEL_86;
      }

      v152 = a5;
      v53 = *a2;
      v52 = a2[1];
      v54 = a2[3];
      v55 = a2[5];
      v28 = a2[6];
      v29 = a2[7];
      v151 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v56 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        specialized static Entity.entityInfoType(_:)(v53);
        if (v74)
        {
          v57 = (*(v74 + 232))();
          v75 = *(v57 + 16);

          MEMORY[0x1C68F9740](v75, 0);
          *(v57 + 16) = v53;
          MEMORY[0x1C68F9740](v53, v57);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v58 = swift_allocObject();
          *(v58 + 40) = 0;
          swift_weakInit();
          *(v58 + 16) = v52;
          swift_weakAssign();

          *(v58 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v57 + 16));
          v76 = Hasher._finalize()();

          *(v58 + 24) = v76;
          v77 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v55, v77, v78, &v161);

          if (v29)
          {
            if (REBindPointBoundComponent())
            {
              v59 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v104 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v29 = v104;
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v59);
              if (v129)
              {
                v29 = (*(v129 + 232))();
                v130 = *(v29 + 16);

                MEMORY[0x1C68F9740](v130, 0);
                *(v29 + 16) = v59;
                MEMORY[0x1C68F9740](v59, v29);

                goto LABEL_131;
              }

              v104 = makeEntity(for:)(v59);
              goto LABEL_90;
            }

LABEL_91:
            v29 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v155);
          if (v160 == 1)
          {
            goto LABEL_147;
          }

          __src[3] = v157;
          __src[4] = v158;
          __src[5] = v159;
          __src[6] = v160;
          __src[1] = v155;
          __src[2] = v156;
          *(&__src[16] + 8) = v164;
          *(&__src[17] + 8) = v165;
          v131 = v161;
          *(&__src[14] + 8) = v162;
          *(&__src[15] + 8) = v163;
          LOBYTE(__src[7]) = 1;
          *&__src[0] = v58;
          *(&__src[7] + 1) = v29;
          LOBYTE(__src[8]) = 0;
          *(&__src[8] + 1) = 0;
          *&__src[9] = 0;
          __src[10] = 0uLL;
          *(&__src[9] + 1) = v11;
          LOBYTE(__src[11]) = 1;
          *(&__src[11] + 1) = v151;
          LOBYTE(__src[12]) = 0;
          goto LABEL_149;
        }

        v56 = makeEntity(for:)(v53);
      }

      v57 = v56;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v152 = a5;
      v41 = *a2;
      v40 = a2[1];
      v13 = a2[3];
      v28 = a2[4];
      v14 = a2[5];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v42 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        specialized static Entity.entityInfoType(_:)(v41);
        if (v113)
        {
          v43 = (*(v113 + 232))();
          v114 = *(v43 + 16);

          MEMORY[0x1C68F9740](v114, 0);
          *(v43 + 16) = v41;
          MEMORY[0x1C68F9740](v41, v43);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v15 = swift_allocObject();
          *(v15 + 40) = 0;
          swift_weakInit();
          *(v15 + 16) = v40;
          swift_weakAssign();

          *(v15 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v43 + 16));
          v115 = Hasher._finalize()();

          *(v15 + 24) = v115;
          if (v14)
          {
            if (REBindPointBoundComponent())
            {
              v12 = v28;
              v90 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v42 = makeEntity(for:)(v41);
      }

      v43 = v42;
      goto LABEL_103;
    }

    v152 = a5;
    v63 = *a2;
    v62 = a2[1];
    v16 = a2[2];
    v13 = a2[3];
    v28 = a2[4];
    v14 = a2[5];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v64 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v87)
      {
        v65 = (*(v87 + 232))();
        v88 = *(v65 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v65 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v65);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v15 = swift_allocObject();
        *(v15 + 40) = 0;
        swift_weakInit();
        *(v15 + 16) = v62;
        swift_weakAssign();

        *(v15 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v65 + 16));
        v89 = Hasher._finalize()();

        *(v15 + 24) = v89;
        if (v14)
        {
          if (REBindPointBoundComponent())
          {
            v12 = v28;
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v116 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v13);
                if (v91)
                {
                  v18 = (*(v91 + 232))();
                  v92 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v92, 0);
                  *(v18 + 16) = v13;
                  MEMORY[0x1C68F9740](v13, v18);

                  goto LABEL_78;
                }

                v17 = makeEntity(for:)(v13);
LABEL_8:
                v18 = v17;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v93 = swift_allocObject();
                *(v93 + 40) = 0;
                swift_weakInit();
                *(v93 + 16) = v12;
                swift_weakAssign();

                *(v93 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v18 + 16));
                v94 = Hasher._finalize()();

                *(v93 + 24) = v94;
                v95 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v15, v95, v96, &v161);

                if (!v16)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v16 = 0;
                  goto LABEL_126;
                }

                v97 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v98 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v16 = v98;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v97);
                  if (!v126)
                  {
                    v98 = makeEntity(for:)(v97);
                    goto LABEL_82;
                  }

                  v16 = (*(v126 + 232))();
                  v127 = *(v16 + 16);

                  MEMORY[0x1C68F9740](v127, 0);
                  *(v16 + 16) = v97;
                  MEMORY[0x1C68F9740](v97, v16);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v155);
                  if (v160 != 1)
                  {
                    __src[3] = v157;
                    __src[4] = v158;
                    __src[5] = v159;
                    __src[6] = v160;
                    __src[1] = v155;
                    __src[2] = v156;
                    v128 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
                    *(&__src[16] + 8) = v164;
                    *(&__src[17] + 8) = v165;
                    *(&__src[8] + 8) = vcvtq_f64_f32(v6);
                    *(&__src[10] + 1) = v5.f32[0];
                    v120 = v161;
                    *(&__src[14] + 8) = v162;
                    LOBYTE(__src[7]) = v128 & 1;
                    *&__src[0] = v93;
                    *(&__src[7] + 1) = v16;
                    LOBYTE(__src[8]) = v141;
                    *(&__src[9] + 1) = v11;
                    *&__src[10] = v143;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[11] + 1) = v149;
                    LOBYTE(__src[12]) = 0;
                    *(&__src[12] + 1) = v146;
                    LOBYTE(__src[13]) = 0;
                    *(&__src[15] + 8) = v163;
LABEL_141:
                    *(&__src[13] + 8) = v120;
                    *(&__src[18] + 1) = v151;
LABEL_150:
                    v152(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    v139 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMd;
                    v140 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMR;
                    goto LABEL_151;
                  }

LABEL_147:

                  __dst[2] = v157;
                  __dst[3] = v158;
                  __dst[4] = v159;
                  __dst[5] = v160;
                  __dst[0] = v155;
                  __dst[1] = v156;
                  v139 = &_s17RealityFoundation14FromToByActionVySfGSgMd;
                  v140 = &_s17RealityFoundation14FromToByActionVySfGSgMR;
LABEL_151:
                  outlined destroy of BodyTrackingComponent?(__dst, v139, v140);
                  return 0;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v90);
            if (v135)
            {
              v14 = (*(v135 + 232))();
              v136 = *(v14 + 16);

              MEMORY[0x1C68F9740](v136, 0);
              *(v14 + 16) = v90;
              MEMORY[0x1C68F9740](v90, v14);

              goto LABEL_145;
            }

            v116 = makeEntity(for:)(v90);
LABEL_107:
            v14 = v116;
LABEL_145:
            v28 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v137 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v137, v138, &v161);

        specialized ActionEventData.action<A>()(&v155);
        if (v160 == 1)
        {
          goto LABEL_147;
        }

        __src[3] = v157;
        __src[4] = v158;
        __src[5] = v159;
        __src[6] = v160;
        __src[1] = v155;
        __src[2] = v156;
        *(&__src[16] + 8) = v164;
        *(&__src[17] + 8) = v165;
        v131 = v161;
        *(&__src[14] + 8) = v162;
        *(&__src[15] + 8) = v163;
        LOBYTE(__src[7]) = 1;
        *&__src[0] = v15;
        *(&__src[7] + 1) = v14;
        LOBYTE(__src[8]) = 0;
        *(&__src[8] + 1) = 0;
        *&__src[9] = 0;
        __src[10] = 0uLL;
        *(&__src[9] + 1) = v11;
        LOBYTE(__src[11]) = 1;
        *(&__src[11] + 1) = 0;
        LOBYTE(__src[12]) = 1;
LABEL_149:
        *(&__src[12] + 1) = 0;
        LOBYTE(__src[13]) = 1;
        *(&__src[13] + 8) = v131;
        *(&__src[18] + 1) = v28;
        goto LABEL_150;
      }

      v64 = makeEntity(for:)(v63);
    }

    v65 = v64;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static AnimationLogger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&__dst[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_148;
          }

          v150 = a5;
          v13 = *a2;
          v12 = a2[1];
          v14 = a2[4];
          v15 = a2[5];
          v5.i32[0] = *(a2 + 14);
          v144 = a2[8];
          v147 = a2[6];
          v141 = a2[9];
          v16 = a2[11];
          v6 = a2[12];
          v139 = *(a2 + 104);
          v149 = a2[10];
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v17 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v150 = a5;
        v45 = *a2;
        v44 = a2[1];
        v46 = a2[4];
        v47 = a2[5];
        v48 = a2[8];
        v49 = a2[9];
        v140 = *(a2 + 80);
        v143 = a2[11];
        v146 = a2[7];
        v148 = a2[12];
        v149 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v50 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v45);
          if (v66)
          {
            v51 = (*(v66 + 232))();
            v67 = *(v51 + 16);

            MEMORY[0x1C68F9740](v67, 0);
            *(v51 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v51);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v44;
            swift_weakAssign();

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v51 + 16));
            v69 = Hasher._finalize()();

            *(v68 + 24) = v69;
            v70 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v46, 0, v47, v70, v71, &v158);

            if (!v48)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v73 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v48 = v73;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v117)
              {
                v73 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v48 = (*(v117 + 232))();
              v118 = *(v48 + 16);

              MEMORY[0x1C68F9740](v118, 0);
              *(v48 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v48);
            }

            else
            {
              v48 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v153);
            if ((~v155 & 0xFF00000000) != 0)
            {
              __src[3] = v155;
              __src[4] = v156;
              __src[5] = *v157;
              *(&__src[5] + 13) = *&v157[13];
              __src[1] = v153;
              __src[2] = v154;
              v119 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
              *(&__src[16] + 8) = v162;
              *(&__src[7] + 8) = vcvtq_f64_f32(v49);
              v120 = v158;
              *(&__src[13] + 8) = v159;
              *(&__src[14] + 8) = v160;
              *(&__src[15] + 8) = v161;
              BYTE5(__src[6]) = v119 & 1;
              *&__src[0] = v68;
              *(&__src[6] + 1) = v48;
              LOBYTE(__src[7]) = v140;
              *(&__src[8] + 1) = v11;
              *&__src[9] = v146;
              *(&__src[9] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[10]) = 0;
              v121 = v143;
LABEL_139:
              *(&__src[10] + 1) = v121;
              LOBYTE(__src[11]) = 0;
              v125 = v148;
              goto LABEL_140;
            }

            goto LABEL_147;
          }

          v50 = makeEntity(for:)(v45);
LABEL_32:
          v51 = v50;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_148;
        }

        v150 = a5;
        v33 = *a2;
        v32 = a2[1];
        v34 = a2[4];
        v35 = a2[5];
        v36 = a2[7];
        v37 = a2[8];
        v142 = *(a2 + 72);
        v145 = a2[10];
        v148 = a2[11];
        v149 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          specialized static Entity.entityInfoType(_:)(v33);
          if (v105)
          {
            v39 = (*(v105 + 232))();
            v106 = *(v39 + 16);

            MEMORY[0x1C68F9740](v106, 0);
            *(v39 + 16) = v33;
            MEMORY[0x1C68F9740](v33, v39);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v107 = swift_allocObject();
            *(v107 + 40) = 0;
            swift_weakInit();
            *(v107 + 16) = v32;
            swift_weakAssign();

            *(v107 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v39 + 16));
            v108 = Hasher._finalize()();

            *(v107 + 24) = v108;
            v109 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v34, 0, v35, v109, v110, &v158);

            if (!v36)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v111 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v112 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v36 = v112;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              specialized static Entity.entityInfoType(_:)(v111);
              if (!v132)
              {
                v112 = makeEntity(for:)(v111);
                goto LABEL_99;
              }

              v36 = (*(v132 + 232))();
              v133 = *(v36 + 16);

              MEMORY[0x1C68F9740](v133, 0);
              *(v36 + 16) = v111;
              MEMORY[0x1C68F9740](v111, v36);
            }

            else
            {
              v36 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v153);
            if ((~v155 & 0xFF00000000) != 0)
            {
              __src[3] = v155;
              __src[4] = v156;
              __src[5] = *v157;
              *(&__src[5] + 13) = *&v157[13];
              __src[1] = v153;
              __src[2] = v154;
              v134 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
              *(&__src[16] + 8) = v162;
              *(&__src[7] + 8) = vcvtq_f64_f32(v37);
              v120 = v158;
              *(&__src[13] + 8) = v159;
              *(&__src[14] + 8) = v160;
              *(&__src[15] + 8) = v161;
              BYTE5(__src[6]) = v134 & 1;
              *&__src[0] = v107;
              *(&__src[6] + 1) = v36;
              LOBYTE(__src[7]) = v142;
              __src[9] = 0uLL;
              *(&__src[8] + 1) = v11;
              LOBYTE(__src[10]) = 1;
              v121 = v145;
              goto LABEL_139;
            }

LABEL_147:

LABEL_148:

            return 0;
          }

          v38 = makeEntity(for:)(v33);
        }

        v39 = v38;
        goto LABEL_95;
      }

      v150 = a5;
      v58 = *a2;
      v52 = a2[1];
      v54 = a2[4];
      v59 = a2[5];
      v29 = a2[8];
      v147 = a2[7];
      v5 = a2[9];
      LOBYTE(v144) = *(a2 + 80);
      v149 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v60 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      specialized static Entity.entityInfoType(_:)(v58);
      if (v79)
      {
        v61 = (*(v79 + 232))();
        v80 = *(v61 + 16);

        MEMORY[0x1C68F9740](v80, 0);
        *(v61 + 16) = v58;
        MEMORY[0x1C68F9740](v58, v61);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v81 = swift_allocObject();
        *(v81 + 40) = 0;
        swift_weakInit();
        *(v81 + 16) = v52;
        swift_weakAssign();

        *(v81 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v61 + 16));
        v82 = Hasher._finalize()();

        *(v81 + 24) = v82;
        v83 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v54, 0, v59, v83, v84, &v158);

        if (!v29)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v85 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v86 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v29 = v86;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v85);
          if (!v122)
          {
            v86 = makeEntity(for:)(v85);
            goto LABEL_66;
          }

          v29 = (*(v122 + 232))();
          v123 = *(v29 + 16);

          MEMORY[0x1C68F9740](v123, 0);
          *(v29 + 16) = v85;
          MEMORY[0x1C68F9740](v85, v29);
        }

        else
        {
          v29 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v153);
        if ((~v155 & 0xFF00000000) != 0)
        {
          __src[3] = v155;
          __src[4] = v156;
          __src[5] = *v157;
          *(&__src[5] + 13) = *&v157[13];
          __src[1] = v153;
          __src[2] = v154;
          v124 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
          *(&__src[16] + 8) = v162;
          *(&__src[7] + 8) = vcvtq_f64_f32(v5);
          v120 = v158;
          *(&__src[13] + 8) = v159;
          *(&__src[14] + 8) = v160;
          *(&__src[15] + 8) = v161;
          BYTE5(__src[6]) = v124 & 1;
          *&__src[0] = v81;
          *(&__src[6] + 1) = v29;
          LOBYTE(__src[7]) = v144;
          *(&__src[8] + 1) = v11;
          *&__src[9] = v147;
          v125 = 0xBFF0000000000000;
          *(&__src[9] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[10]) = 0;
          *(&__src[10] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[11]) = 0;
LABEL_140:
          *(&__src[11] + 1) = v125;
          LOBYTE(__src[12]) = 0;
          goto LABEL_141;
        }

        goto LABEL_147;
      }

      v60 = makeEntity(for:)(v58);
LABEL_38:
      v61 = v60;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_148;
        }

        v150 = a5;
        v26 = *a2;
        v25 = a2[1];
        v27 = a2[5];
        v28 = a2[6];
        v29 = a2[7];
        v149 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v30 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v26);
          if (v99)
          {
            v31 = (*(v99 + 232))();
            v100 = *(v31 + 16);

            MEMORY[0x1C68F9740](v100, 0);
            *(v31 + 16) = v26;
            MEMORY[0x1C68F9740](v26, v31);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v58 = swift_allocObject();
            *(v58 + 40) = 0;
            swift_weakInit();
            *(v58 + 16) = v25;
            swift_weakAssign();

            *(v58 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v31 + 16));
            v101 = Hasher._finalize()();

            *(v58 + 24) = v101;
            v102 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v27, v102, v103, &v158);

            if (v29)
            {
              if (REBindPointBoundComponent())
              {
                v59 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v30 = makeEntity(for:)(v26);
        }

        v31 = v30;
        goto LABEL_86;
      }

      v150 = a5;
      v53 = *a2;
      v52 = a2[1];
      v54 = a2[3];
      v55 = a2[5];
      v28 = a2[6];
      v29 = a2[7];
      v149 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v56 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        specialized static Entity.entityInfoType(_:)(v53);
        if (v74)
        {
          v57 = (*(v74 + 232))();
          v75 = *(v57 + 16);

          MEMORY[0x1C68F9740](v75, 0);
          *(v57 + 16) = v53;
          MEMORY[0x1C68F9740](v53, v57);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v58 = swift_allocObject();
          *(v58 + 40) = 0;
          swift_weakInit();
          *(v58 + 16) = v52;
          swift_weakAssign();

          *(v58 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v57 + 16));
          v76 = Hasher._finalize()();

          *(v58 + 24) = v76;
          v77 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v55, v77, v78, &v158);

          if (v29)
          {
            if (REBindPointBoundComponent())
            {
              v59 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v104 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v29 = v104;
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v59);
              if (v129)
              {
                v29 = (*(v129 + 232))();
                v130 = *(v29 + 16);

                MEMORY[0x1C68F9740](v130, 0);
                *(v29 + 16) = v59;
                MEMORY[0x1C68F9740](v59, v29);

                goto LABEL_131;
              }

              v104 = makeEntity(for:)(v59);
              goto LABEL_90;
            }

LABEL_91:
            v29 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v153);
          if ((~v155 & 0xFF00000000) == 0)
          {
            goto LABEL_147;
          }

          *(&__src[16] + 8) = v162;
          __src[3] = v155;
          __src[4] = v156;
          __src[5] = *v157;
          __src[1] = v153;
          __src[2] = v154;
          v131 = v158;
          *(&__src[13] + 8) = v159;
          *(&__src[14] + 8) = v160;
          *(&__src[15] + 8) = v161;
          *(&__src[5] + 13) = *&v157[13];
          BYTE5(__src[6]) = 1;
          *&__src[0] = v58;
          *(&__src[6] + 1) = v29;
          LOBYTE(__src[7]) = 0;
          *(&__src[7] + 8) = 0uLL;
          __src[9] = 0uLL;
          *(&__src[8] + 1) = v11;
          LOBYTE(__src[10]) = 1;
          *(&__src[10] + 1) = v149;
          LOBYTE(__src[11]) = 0;
          goto LABEL_150;
        }

        v56 = makeEntity(for:)(v53);
      }

      v57 = v56;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_148;
      }

      v150 = a5;
      v41 = *a2;
      v40 = a2[1];
      v13 = a2[3];
      v28 = a2[4];
      v14 = a2[5];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v42 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        specialized static Entity.entityInfoType(_:)(v41);
        if (v113)
        {
          v43 = (*(v113 + 232))();
          v114 = *(v43 + 16);

          MEMORY[0x1C68F9740](v114, 0);
          *(v43 + 16) = v41;
          MEMORY[0x1C68F9740](v41, v43);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v15 = swift_allocObject();
          *(v15 + 40) = 0;
          swift_weakInit();
          *(v15 + 16) = v40;
          swift_weakAssign();

          *(v15 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v43 + 16));
          v115 = Hasher._finalize()();

          *(v15 + 24) = v115;
          if (v14)
          {
            if (REBindPointBoundComponent())
            {
              v12 = v28;
              v90 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v42 = makeEntity(for:)(v41);
      }

      v43 = v42;
      goto LABEL_103;
    }

    v150 = a5;
    v63 = *a2;
    v62 = a2[1];
    v16 = a2[2];
    v13 = a2[3];
    v28 = a2[4];
    v14 = a2[5];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v64 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v87)
      {
        v65 = (*(v87 + 232))();
        v88 = *(v65 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v65 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v65);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v15 = swift_allocObject();
        *(v15 + 40) = 0;
        swift_weakInit();
        *(v15 + 16) = v62;
        swift_weakAssign();

        *(v15 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v65 + 16));
        v89 = Hasher._finalize()();

        *(v15 + 24) = v89;
        if (v14)
        {
          if (REBindPointBoundComponent())
          {
            v12 = v28;
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v116 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v13);
                if (v91)
                {
                  v18 = (*(v91 + 232))();
                  v92 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v92, 0);
                  *(v18 + 16) = v13;
                  MEMORY[0x1C68F9740](v13, v18);

                  goto LABEL_78;
                }

                v17 = makeEntity(for:)(v13);
LABEL_8:
                v18 = v17;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v93 = swift_allocObject();
                *(v93 + 40) = 0;
                swift_weakInit();
                *(v93 + 16) = v12;
                swift_weakAssign();

                *(v93 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v18 + 16));
                v94 = Hasher._finalize()();

                *(v93 + 24) = v94;
                v95 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v15, v95, v96, &v158);

                if (!v16)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v16 = 0;
                  goto LABEL_126;
                }

                v97 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v98 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v16 = v98;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v97);
                  if (!v126)
                  {
                    v98 = makeEntity(for:)(v97);
                    goto LABEL_82;
                  }

                  v16 = (*(v126 + 232))();
                  v127 = *(v16 + 16);

                  MEMORY[0x1C68F9740](v127, 0);
                  *(v16 + 16) = v97;
                  MEMORY[0x1C68F9740](v97, v16);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v153);
                  if ((~v155 & 0xFF00000000) != 0)
                  {
                    __src[3] = v155;
                    __src[4] = v156;
                    __src[5] = *v157;
                    *(&__src[5] + 13) = *&v157[13];
                    __src[1] = v153;
                    __src[2] = v154;
                    v128 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
                    *(&__src[16] + 8) = v162;
                    *(&__src[7] + 8) = vcvtq_f64_f32(v6);
                    *(&__src[9] + 1) = v5.f32[0];
                    v120 = v158;
                    *(&__src[13] + 8) = v159;
                    *(&__src[14] + 8) = v160;
                    BYTE5(__src[6]) = v128 & 1;
                    *&__src[0] = v93;
                    *(&__src[6] + 1) = v16;
                    LOBYTE(__src[7]) = v139;
                    *(&__src[8] + 1) = v11;
                    *&__src[9] = v141;
                    LOBYTE(__src[10]) = 0;
                    *(&__src[10] + 1) = v147;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[11] + 1) = v144;
                    LOBYTE(__src[12]) = 0;
                    *(&__src[15] + 8) = v161;
LABEL_141:
                    *(&__src[12] + 8) = v120;
                    *(&__src[17] + 1) = v149;
LABEL_151:
                    v150(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMd, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMR);
                    return 0;
                  }

                  goto LABEL_147;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v90);
            if (v135)
            {
              v14 = (*(v135 + 232))();
              v136 = *(v14 + 16);

              MEMORY[0x1C68F9740](v136, 0);
              *(v14 + 16) = v90;
              MEMORY[0x1C68F9740](v90, v14);

              goto LABEL_145;
            }

            v116 = makeEntity(for:)(v90);
LABEL_107:
            v14 = v116;
LABEL_145:
            v28 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v137 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v137, v138, &v158);

        specialized ActionEventData.action<A>()(&v153);
        if ((~v155 & 0xFF00000000) == 0)
        {
          goto LABEL_147;
        }

        *(&__src[16] + 8) = v162;
        __src[3] = v155;
        __src[4] = v156;
        __src[5] = *v157;
        __src[1] = v153;
        __src[2] = v154;
        v131 = v158;
        *(&__src[13] + 8) = v159;
        *(&__src[14] + 8) = v160;
        *(&__src[15] + 8) = v161;
        *(&__src[5] + 13) = *&v157[13];
        BYTE5(__src[6]) = 1;
        *&__src[0] = v15;
        *(&__src[6] + 1) = v14;
        LOBYTE(__src[7]) = 0;
        *(&__src[7] + 8) = 0uLL;
        __src[9] = 0uLL;
        *(&__src[8] + 1) = v11;
        LOBYTE(__src[10]) = 1;
        *(&__src[10] + 1) = 0;
        LOBYTE(__src[11]) = 1;
LABEL_150:
        *(&__src[11] + 1) = 0;
        LOBYTE(__src[12]) = 1;
        *(&__src[12] + 8) = v131;
        *(&__src[17] + 1) = v28;
        goto LABEL_151;
      }

      v64 = makeEntity(for:)(v63);
    }

    v65 = v64;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static AnimationLogger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    __dst[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_147;
          }

          v15 = *a2;
          v14 = a2[1];
          v16 = a2[4];
          v17 = a2[5];
          v6.i32[0] = *(a2 + 14);
          v161 = a2[8];
          v164 = a2[6];
          v157 = a2[9];
          v18 = a2[11];
          v7 = a2[12];
          v154 = *(a2 + 104);
          v166 = a2[10];
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v19 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v47 = *a2;
        v46 = a2[1];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[8];
        v51 = a2[9];
        v155 = *(a2 + 80);
        v159 = a2[11];
        v163 = a2[7];
        v165 = a2[12];
        v166 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v52 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v47);
          if (v68)
          {
            v53 = (*(v68 + 232))();
            v69 = *(v53 + 16);

            MEMORY[0x1C68F9740](v69, 0);
            *(v53 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v53);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v70 = swift_allocObject();
            *(v70 + 40) = 0;
            swift_weakInit();
            *(v70 + 16) = v46;
            swift_weakAssign();

            *(v70 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v53 + 16));
            v71 = Hasher._finalize()();

            *(v70 + 24) = v71;
            v72 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v72, v73, &v186);

            if (!v50)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v75 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v50 = v75;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v119)
              {
                v75 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v50 = (*(v119 + 232))();
              v120 = *(v50 + 16);

              MEMORY[0x1C68F9740](v120, 0);
              *(v50 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v50);
            }

            else
            {
              v50 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(v181);
            v121 = v184 | (v185 << 32);
            if ((v121 & 0xFF0000000000) != 0x20000000000)
            {
              v122 = v181[0];
              v153 = v182;
              v168 = a5;
              v123 = v183;
              v124 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
              v172 = v153;
              *&v175[8] = vcvtq_f64_f32(v51);
              v125 = v186;
              *&v179[24] = v187;
              v126 = v189;
              *&v179[40] = v188;
              LODWORD(v171) = v122;
              v173 = v123;
              LODWORD(v174) = v121;
              BYTE4(v174) = BYTE4(v121);
              BYTE5(v174) = BYTE5(v121) & 1;
              BYTE6(v174) = v124 & 1;
              *&v170 = v70;
              *(&v174 + 1) = v50;
              v175[0] = v155;
              *&v175[24] = v13;
              *&v176 = v163;
              *(&v176 + 1) = 0xBFF0000000000000;
              LOBYTE(v177) = 0;
              v127 = v159;
LABEL_139:
              *(&v177 + 1) = v127;
              LOBYTE(v178) = 0;
              v134 = v165;
              goto LABEL_140;
            }

            goto LABEL_146;
          }

          v52 = makeEntity(for:)(v47);
LABEL_32:
          v53 = v52;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_147;
        }

        v35 = *a2;
        v34 = a2[1];
        v36 = a2[4];
        v37 = a2[5];
        v38 = a2[7];
        v39 = a2[8];
        v158 = *(a2 + 72);
        v162 = a2[10];
        v165 = a2[11];
        v166 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v40 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v35);
          if (v107)
          {
            v41 = (*(v107 + 232))();
            v108 = *(v41 + 16);

            MEMORY[0x1C68F9740](v108, 0);
            *(v41 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v41);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v109 = swift_allocObject();
            *(v109 + 40) = 0;
            swift_weakInit();
            *(v109 + 16) = v34;
            swift_weakAssign();

            *(v109 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v41 + 16));
            v110 = Hasher._finalize()();

            *(v109 + 24) = v110;
            v111 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v37, v111, v112, &v186);

            if (!v38)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v113 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v114 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v38 = v114;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              specialized static Entity.entityInfoType(_:)(v113);
              if (!v141)
              {
                v114 = makeEntity(for:)(v113);
                goto LABEL_99;
              }

              v38 = (*(v141 + 232))();
              v142 = *(v38 + 16);

              MEMORY[0x1C68F9740](v142, 0);
              *(v38 + 16) = v113;
              MEMORY[0x1C68F9740](v113, v38);
            }

            else
            {
              v38 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(v181);
            v143 = v184 | (v185 << 32);
            if ((v143 & 0xFF0000000000) != 0x20000000000)
            {
              v144 = v181[0];
              v156 = v182;
              v145 = v183;
              v168 = a5;
              v146 = *(&v183 + 1);
              v147 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
              v172 = v156;
              *&v175[8] = vcvtq_f64_f32(v39);
              v125 = v186;
              *&v179[24] = v187;
              v126 = v189;
              *&v179[40] = v188;
              LODWORD(v171) = v144;
              *&v173 = v145;
              *(&v173 + 1) = v146;
              LODWORD(v174) = v143;
              BYTE4(v174) = BYTE4(v143);
              BYTE5(v174) = BYTE5(v143) & 1;
              BYTE6(v174) = v147 & 1;
              *&v170 = v109;
              *(&v174 + 1) = v38;
              v175[0] = v158;
              v176 = 0uLL;
              *&v175[24] = v13;
              LOBYTE(v177) = 1;
              v127 = v162;
              goto LABEL_139;
            }

LABEL_146:

LABEL_147:

            return 0;
          }

          v40 = makeEntity(for:)(v35);
        }

        v41 = v40;
        goto LABEL_95;
      }

      v60 = *a2;
      v54 = a2[1];
      v56 = a2[4];
      v61 = a2[5];
      v31 = a2[8];
      v164 = a2[7];
      v6 = a2[9];
      LOBYTE(v161) = *(a2 + 80);
      v166 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v62 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v60);
      if (v81)
      {
        v63 = (*(v81 + 232))();
        v82 = *(v63 + 16);

        MEMORY[0x1C68F9740](v82, 0);
        *(v63 + 16) = v60;
        MEMORY[0x1C68F9740](v60, v63);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v83 = swift_allocObject();
        *(v83 + 40) = 0;
        swift_weakInit();
        *(v83 + 16) = v54;
        swift_weakAssign();

        *(v83 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v63 + 16));
        v84 = Hasher._finalize()();

        *(v83 + 24) = v84;
        v85 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v61, v85, v86, &v186);

        if (!v31)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v87 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v88 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v31 = v88;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v87);
          if (!v128)
          {
            v88 = makeEntity(for:)(v87);
            goto LABEL_66;
          }

          v31 = (*(v128 + 232))();
          v129 = *(v31 + 16);

          MEMORY[0x1C68F9740](v129, 0);
          *(v31 + 16) = v87;
          MEMORY[0x1C68F9740](v87, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(v181);
        v130 = v184 | (v185 << 32);
        if ((v130 & 0xFF0000000000) != 0x20000000000)
        {
          v131 = v181[0];
          v160 = v182;
          v168 = a5;
          v132 = v183;
          v133 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
          v172 = v160;
          *&v175[8] = vcvtq_f64_f32(v6);
          v125 = v186;
          *&v179[24] = v187;
          v126 = v189;
          *&v179[40] = v188;
          LODWORD(v171) = v131;
          v173 = v132;
          LODWORD(v174) = v130;
          BYTE4(v174) = BYTE4(v130);
          BYTE5(v174) = BYTE5(v130) & 1;
          BYTE6(v174) = v133 & 1;
          *&v170 = v83;
          *(&v174 + 1) = v31;
          v175[0] = v161;
          *&v175[24] = v13;
          *&v176 = v164;
          v134 = 0xBFF0000000000000;
          *(&v176 + 1) = 0xBFF0000000000000;
          LOBYTE(v177) = 0;
          *(&v177 + 1) = 0xBFF0000000000000;
          LOBYTE(v178) = 0;
LABEL_140:
          *(&v178 + 1) = v134;
          v179[0] = 0;
          *&v179[56] = v126;
          *&v179[72] = v190;
          *&v179[8] = v125;
          goto LABEL_141;
        }

        goto LABEL_146;
      }

      v62 = makeEntity(for:)(v60);
LABEL_38:
      v63 = v62;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_147;
        }

        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v167 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v28);
          if (v101)
          {
            v33 = (*(v101 + 232))();
            v102 = *(v33 + 16);

            MEMORY[0x1C68F9740](v102, 0);
            *(v33 + 16) = v28;
            MEMORY[0x1C68F9740](v28, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v60 = swift_allocObject();
            *(v60 + 40) = 0;
            swift_weakInit();
            *(v60 + 16) = v27;
            swift_weakAssign();

            *(v60 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v103 = Hasher._finalize()();

            *(v60 + 24) = v103;
            v104 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v104, v105, &v186);

            if (v31)
            {
              if (REBindPointBoundComponent())
              {
                v61 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v55 = *a2;
      v54 = a2[1];
      v56 = a2[3];
      v57 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v167 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v58 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v55);
        if (v76)
        {
          v59 = (*(v76 + 232))();
          v77 = *(v59 + 16);

          MEMORY[0x1C68F9740](v77, 0);
          *(v59 + 16) = v55;
          MEMORY[0x1C68F9740](v55, v59);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v60 = swift_allocObject();
          *(v60 + 40) = 0;
          swift_weakInit();
          *(v60 + 16) = v54;
          swift_weakAssign();

          *(v60 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v59 + 16));
          v78 = Hasher._finalize()();

          *(v60 + 24) = v78;
          v79 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v57, v79, v80, &v186);

          if (v31)
          {
            if (REBindPointBoundComponent())
            {
              v61 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v106 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v31 = v106;
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v61);
              if (v138)
              {
                v31 = (*(v138 + 232))();
                v139 = *(v31 + 16);

                MEMORY[0x1C68F9740](v139, 0);
                *(v31 + 16) = v61;
                MEMORY[0x1C68F9740](v61, v31);

                goto LABEL_131;
              }

              v106 = makeEntity(for:)(v61);
              goto LABEL_90;
            }

LABEL_91:
            v31 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(v181);
          v140 = v184 | (v185 << 32);
          if ((v140 & 0xFF0000000000) == 0x20000000000)
          {
            goto LABEL_146;
          }

          v173 = v183;
          *&v179[24] = v187;
          *&v179[40] = v188;
          *&v179[56] = v189;
          *&v179[72] = v190;
          LODWORD(v171) = v181[0];
          v172 = v182;
          LODWORD(v174) = v184;
          BYTE4(v174) = BYTE4(v140);
          BYTE5(v174) = BYTE5(v140) & 1;
          BYTE6(v174) = 1;
          *&v170 = v60;
          *(&v174 + 1) = v31;
          v175[0] = 0;
          *&v175[8] = 0;
          *&v175[16] = 0;
          v176 = 0uLL;
          *&v175[24] = v13;
          LOBYTE(v177) = 1;
          *(&v177 + 1) = v167;
          LOBYTE(v178) = 0;
          *(&v178 + 1) = 0;
          v179[0] = 1;
          *&v179[8] = v186;
          *&v179[88] = v30;
          goto LABEL_149;
        }

        v58 = makeEntity(for:)(v55);
      }

      v59 = v58;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_147;
      }

      v43 = *a2;
      v42 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v169 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v44 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v43);
        if (v115)
        {
          v45 = (*(v115 + 232))();
          v116 = *(v45 + 16);

          MEMORY[0x1C68F9740](v116, 0);
          *(v45 + 16) = v43;
          MEMORY[0x1C68F9740](v43, v45);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v42;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v45 + 16));
          v117 = Hasher._finalize()();

          *(v17 + 24) = v117;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v92 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

            goto LABEL_108;
          }

          goto LABEL_145;
        }

        v44 = makeEntity(for:)(v43);
      }

      v45 = v44;
      goto LABEL_103;
    }

    v65 = *a2;
    v64 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v169 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v66 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v65);
      if (v89)
      {
        v67 = (*(v89 + 232))();
        v90 = *(v67 + 16);

        MEMORY[0x1C68F9740](v90, 0);
        *(v67 + 16) = v65;
        MEMORY[0x1C68F9740](v65, v67);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v64;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v91 = Hasher._finalize()();

        *(v17 + 24) = v91;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v92 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v118 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v118;
              goto LABEL_145;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v15);
                if (v93)
                {
                  v20 = (*(v93 + 232))();
                  v94 = *(v20 + 16);

                  MEMORY[0x1C68F9740](v94, 0);
                  *(v20 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v20);

                  goto LABEL_78;
                }

                v19 = makeEntity(for:)(v15);
LABEL_8:
                v20 = v19;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v95 = swift_allocObject();
                *(v95 + 40) = 0;
                swift_weakInit();
                *(v95 + 16) = v14;
                swift_weakAssign();

                *(v95 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v20 + 16));
                v96 = Hasher._finalize()();

                *(v95 + 24) = v96;
                v97 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v97, v98, &v186);

                if (!v18)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v18 = 0;
                  goto LABEL_126;
                }

                v99 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v100 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v18 = v100;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  specialized static Entity.entityInfoType(_:)(v99);
                  if (!v135)
                  {
                    v100 = makeEntity(for:)(v99);
                    goto LABEL_82;
                  }

                  v18 = (*(v135 + 232))();
                  v136 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v136, 0);
                  *(v18 + 16) = v99;
                  MEMORY[0x1C68F9740](v99, v18);

LABEL_126:
                  specialized ActionEventData.action<A>()(v181);
                  v137 = v184 | (v185 << 32);
                  if ((v137 & 0xFF0000000000) != 0x20000000000)
                  {
                    v168 = a5;
                    LODWORD(v171) = v181[0];
                    v172 = v182;
                    v173 = v183;
                    LODWORD(v174) = v184;
                    BYTE4(v174) = BYTE4(v137);
                    BYTE5(v174) = BYTE5(v137) & 1;
                    BYTE6(v174) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR) & 1;
                    *&v170 = v95;
                    *(&v174 + 1) = v18;
                    v175[0] = v154;
                    *&v175[8] = vcvtq_f64_f32(v7);
                    *&v175[24] = v13;
                    *&v176 = v157;
                    *(&v176 + 1) = v6.f32[0];
                    LOBYTE(v177) = 0;
                    *(&v177 + 1) = v164;
                    LOBYTE(v178) = 0;
                    *(&v178 + 1) = v161;
                    v179[0] = 0;
                    *&v179[24] = v187;
                    *&v179[40] = v188;
                    *&v179[56] = v189;
                    *&v179[72] = v190;
                    *&v179[8] = v186;
LABEL_141:
                    *&v179[88] = v166;
                    v168(&v170);
LABEL_150:

                    v180[12] = *&v179[32];
                    v180[13] = *&v179[48];
                    v180[14] = *&v179[64];
                    v180[15] = *&v179[80];
                    v180[8] = v177;
                    v180[9] = v178;
                    v180[10] = *v179;
                    v180[11] = *&v179[16];
                    v180[4] = v174;
                    v180[5] = *v175;
                    v180[6] = *&v175[16];
                    v180[7] = v176;
                    v180[0] = v170;
                    v180[1] = v171;
                    v180[2] = v172;
                    v180[3] = v173;
                    outlined destroy of BodyTrackingComponent?(v180, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMd, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMR);
                    return 0;
                  }

                  goto LABEL_146;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v92);
            if (v148)
            {
              v16 = (*(v148 + 232))();
              v149 = *(v16 + 16);

              MEMORY[0x1C68F9740](v149, 0);
              *(v16 + 16) = v92;
              MEMORY[0x1C68F9740](v92, v16);

              goto LABEL_145;
            }

            v118 = makeEntity(for:)(v92);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_145:
        v150 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v150, v151, &v186);

        specialized ActionEventData.action<A>()(v181);
        v152 = v184 | (v185 << 32);
        if ((v152 & 0xFF0000000000) == 0x20000000000)
        {
          goto LABEL_146;
        }

        v173 = v183;
        *&v179[24] = v187;
        *&v179[40] = v188;
        *&v179[56] = v189;
        *&v179[72] = v190;
        LODWORD(v171) = v181[0];
        v172 = v182;
        LODWORD(v174) = v184;
        BYTE4(v174) = BYTE4(v152);
        BYTE5(v174) = BYTE5(v152) & 1;
        BYTE6(v174) = 1;
        *&v170 = v17;
        *(&v174 + 1) = v16;
        v175[0] = 0;
        *&v175[8] = 0;
        *&v175[16] = 0;
        v176 = 0uLL;
        *&v175[24] = v13;
        LOBYTE(v177) = 1;
        *(&v177 + 1) = 0;
        LOBYTE(v178) = 1;
        *(&v178 + 1) = 0;
        v179[0] = 1;
        *&v179[8] = v186;
        *&v179[88] = v169;
LABEL_149:
        a5(&v170);
        goto LABEL_150;
      }

      v66 = makeEntity(for:)(v65);
    }

    v67 = v66;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v180[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v180);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v175 = a2[8];
            v178 = a2[6];
            v171 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v167 = *(a2 + 104);
            v180 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v48 = Strong;
        v50 = *a2;
        v49 = a2[1];
        v51 = a2[4];
        v52 = a2[5];
        v53 = a2[8];
        v54 = a2[9];
        v168 = *(a2 + 80);
        v173 = a2[11];
        v177 = a2[7];
        v179 = a2[12];
        v180 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v50);
          if (v71)
          {
            v56 = (*(v71 + 232))();
            v72 = *(v56 + 16);

            MEMORY[0x1C68F9740](v72, 0);
            *(v56 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v73 = swift_allocObject();
            *(v73 + 40) = 0;
            swift_weakInit();
            *(v73 + 16) = v49;
            swift_weakAssign();

            *(v73 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v74 = Hasher._finalize()();

            *(v73 + 24) = v74;
            v75 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v52, v75, v76, &v199);

            if (!v53)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v78 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v53 = v78;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v122)
              {
                v78 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v53 = (*(v122 + 232))();
              v123 = *(v53 + 16);

              MEMORY[0x1C68F9740](v123, 0);
              *(v53 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v53);
            }

            else
            {
              v53 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v195);
            v124 = v196;
            if (v196 != 0xFF)
            {
              v125 = *(&v195 + 1);
              v126 = v198;
              v127 = HIDWORD(v196);
              v164 = v197;
              v165 = v195;
              v182 = a5;
              v128 = *(&v197 + 1);
              v129 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
              *&v189[8] = vcvtq_f64_f32(v54);
              v130 = v199;
              *&v193[24] = v200;
              *&v193[40] = v201;
              *&v193[56] = v202;
              *&v193[72] = v203;
              LOBYTE(v186) = v124 & 1;
              DWORD1(v186) = v127;
              *&v187 = v164;
              *(&v187 + 1) = v128;
              LOWORD(v188) = v126 & 0x101;
              BYTE2(v188) = v129 & 1;
              *&v185 = v165;
              *(&v185 + 1) = v125;
              *&v184 = v73;
              *(&v188 + 1) = v53;
              v189[0] = v168;
              *&v189[24] = v48;
              *&v190 = v177;
              *(&v190 + 1) = 0xBFF0000000000000;
              LOBYTE(v191) = 0;
              v131 = v173;
LABEL_139:
              *(&v191 + 1) = v131;
              LOBYTE(v192) = 0;
              v139 = v179;
              goto LABEL_140;
            }

            goto LABEL_137;
          }

          v55 = makeEntity(for:)(v50);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = Strong;
        v37 = *a2;
        v36 = a2[1];
        v38 = a2[4];
        v39 = a2[5];
        v40 = a2[7];
        v41 = a2[8];
        v172 = *(a2 + 72);
        v176 = a2[10];
        v179 = a2[11];
        v180 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v37);
          if (v110)
          {
            v43 = (*(v110 + 232))();
            v111 = *(v43 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v43 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v43);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v112 = swift_allocObject();
            *(v112 + 40) = 0;
            swift_weakInit();
            *(v112 + 16) = v36;
            swift_weakAssign();

            *(v112 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v113 = Hasher._finalize()();

            *(v112 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v39, v114, v115, &v199);

            if (!v40)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v116 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v117 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v40 = v117;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              specialized static Entity.entityInfoType(_:)(v116);
              if (!v150)
              {
                v117 = makeEntity(for:)(v116);
                goto LABEL_99;
              }

              v40 = (*(v150 + 232))();
              v151 = *(v40 + 16);

              MEMORY[0x1C68F9740](v151, 0);
              *(v40 + 16) = v116;
              MEMORY[0x1C68F9740](v116, v40);
            }

            else
            {
              v40 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v195);
            v124 = v196;
            if (v196 != 0xFF)
            {
              v182 = a5;
              v155 = *(&v195 + 1);
              v156 = v198;
              v157 = HIDWORD(v196);
              v166 = v197;
              v170 = v195;
              v158 = *(&v197 + 1);
              v159 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
              *&v189[8] = vcvtq_f64_f32(v41);
              v130 = v199;
              *&v193[24] = v200;
              *&v193[40] = v201;
              *&v193[56] = v202;
              *&v193[72] = v203;
              LOBYTE(v186) = v124 & 1;
              DWORD1(v186) = v157;
              *&v187 = v166;
              *(&v187 + 1) = v158;
              LOWORD(v188) = v156 & 0x101;
              BYTE2(v188) = v159 & 1;
              *&v185 = v170;
              *(&v185 + 1) = v155;
              *&v184 = v112;
              *(&v188 + 1) = v40;
              v189[0] = v172;
              v190 = 0uLL;
              *&v189[24] = v35;
              LOBYTE(v191) = 1;
              v131 = v176;
              goto LABEL_139;
            }

LABEL_137:

            v153 = *(&v195 + 1);
            v152 = v195;
            v154 = v124;
LABEL_147:
            outlined consume of OrbitEntityAction?(v152, v153, v154);
            return 0;
          }

          v42 = makeEntity(for:)(v37);
        }

        v43 = v42;
        goto LABEL_95;
      }

      v27 = Strong;
      v63 = *a2;
      v57 = a2[1];
      v59 = a2[4];
      v64 = a2[5];
      v32 = a2[8];
      v178 = a2[7];
      v6 = a2[9];
      LOBYTE(v175) = *(a2 + 80);
      v180 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v84)
      {
        v66 = (*(v84 + 232))();
        v85 = *(v66 + 16);

        MEMORY[0x1C68F9740](v85, 0);
        *(v66 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v66);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v86 = swift_allocObject();
        *(v86 + 40) = 0;
        swift_weakInit();
        *(v86 + 16) = v57;
        swift_weakAssign();

        *(v86 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v66 + 16));
        v87 = Hasher._finalize()();

        *(v86 + 24) = v87;
        v88 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v64, v88, v89, &v199);

        if (!v32)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v90 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v91 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v32 = v91;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v90);
          if (!v132)
          {
            v91 = makeEntity(for:)(v90);
            goto LABEL_66;
          }

          v32 = (*(v132 + 232))();
          v133 = *(v32 + 16);

          MEMORY[0x1C68F9740](v133, 0);
          *(v32 + 16) = v90;
          MEMORY[0x1C68F9740](v90, v32);
        }

        else
        {
          v32 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v195);
        v124 = v196;
        if (v196 != 0xFF)
        {
          v134 = *(&v195 + 1);
          v135 = v198;
          v136 = HIDWORD(v196);
          v169 = v197;
          v174 = v195;
          v182 = a5;
          v137 = *(&v197 + 1);
          v138 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
          *&v189[8] = vcvtq_f64_f32(v6);
          v130 = v199;
          *&v193[24] = v200;
          *&v193[40] = v201;
          *&v193[56] = v202;
          *&v193[72] = v203;
          LOBYTE(v186) = v124 & 1;
          DWORD1(v186) = v136;
          *&v187 = v169;
          *(&v187 + 1) = v137;
          LOWORD(v188) = v135 & 0x101;
          BYTE2(v188) = v138 & 1;
          *&v185 = v174;
          *(&v185 + 1) = v134;
          *&v184 = v86;
          *(&v188 + 1) = v32;
          v189[0] = v175;
          *&v189[24] = v27;
          *&v190 = v178;
          v139 = 0xBFF0000000000000;
          *(&v190 + 1) = 0xBFF0000000000000;
          LOBYTE(v191) = 0;
          *(&v191 + 1) = 0xBFF0000000000000;
          LOBYTE(v192) = 0;
LABEL_140:
          *(&v192 + 1) = v139;
          v193[0] = 0;
          goto LABEL_141;
        }

        goto LABEL_137;
      }

      v65 = makeEntity(for:)(v63);
LABEL_38:
      v66 = v65;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v27 = Strong;
        v29 = *a2;
        v28 = a2[1];
        v30 = a2[5];
        v31 = a2[6];
        v32 = a2[7];
        v181 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v33 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v29);
          if (v104)
          {
            v34 = (*(v104 + 232))();
            v105 = *(v34 + 16);

            MEMORY[0x1C68F9740](v105, 0);
            *(v34 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v34);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v28;
            swift_weakAssign();

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v34 + 16));
            v106 = Hasher._finalize()();

            *(v63 + 24) = v106;
            v107 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v30, v107, v108, &v199);

            if (!v32)
            {
              goto LABEL_131;
            }

            if (REBindPointBoundComponent())
            {
              v64 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v64);
              if (!v147)
              {
                v109 = makeEntity(for:)(v64);
                goto LABEL_90;
              }

              v32 = (*(v147 + 232))();
              v148 = *(v32 + 16);

              MEMORY[0x1C68F9740](v148, 0);
              *(v32 + 16) = v64;
              MEMORY[0x1C68F9740](v64, v32);

LABEL_131:
              specialized ActionEventData.action<A>()(&v195);
              v149 = v196;
              if (v196 != 0xFF)
              {
                v185 = v195;
                *&v193[24] = v200;
                *&v193[40] = v201;
                *&v193[56] = v202;
                *&v193[72] = v203;
                LOBYTE(v186) = v196 & 1;
                DWORD1(v186) = HIDWORD(v196);
                v187 = v197;
                LOWORD(v188) = v198 & 0x101;
                BYTE2(v188) = 1;
                *&v184 = v63;
                *(&v188 + 1) = v32;
                v189[0] = 0;
                *&v189[8] = 0;
                *&v189[16] = 0;
                v190 = 0uLL;
                *&v189[24] = v27;
                LOBYTE(v191) = 1;
                *(&v191 + 1) = v181;
                LOBYTE(v192) = 0;
                *(&v192 + 1) = 0;
                v193[0] = 1;
                *&v193[8] = v199;
                *&v193[88] = v31;
LABEL_149:
                a5(&v184);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_91;
          }

          v33 = makeEntity(for:)(v29);
        }

        v34 = v33;
        goto LABEL_86;
      }

      v27 = Strong;
      v58 = *a2;
      v57 = a2[1];
      v59 = a2[3];
      v60 = a2[5];
      v31 = a2[6];
      v32 = a2[7];
      v181 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v58);
        if (v79)
        {
          v62 = (*(v79 + 232))();
          v80 = *(v62 + 16);

          MEMORY[0x1C68F9740](v80, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v81 = Hasher._finalize()();

          *(v63 + 24) = v81;
          v82 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v82, v83, &v199);

          if (!v32)
          {
            goto LABEL_131;
          }

          if (REBindPointBoundComponent())
          {
            v64 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v109 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v32 = v109;
              goto LABEL_131;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_129;
          }

LABEL_91:
          v32 = 0;
          goto LABEL_131;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v45 = *a2;
      v44 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v183 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v45);
        if (v118)
        {
          v47 = (*(v118 + 232))();
          v119 = *(v47 + 16);

          MEMORY[0x1C68F9740](v119, 0);
          *(v47 + 16) = v45;
          MEMORY[0x1C68F9740](v45, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v44;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v120 = Hasher._finalize()();

          *(v17 + 24) = v120;
          if (!v16)
          {
            goto LABEL_145;
          }

          if (REBindPointBoundComponent())
          {
            v95 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_179:
              __break(1u);
              return result;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v95);
            if (!v160)
            {
              v121 = makeEntity(for:)(v95);
              goto LABEL_107;
            }

            v16 = (*(v160 + 232))();
            v161 = *(v16 + 16);

            MEMORY[0x1C68F9740](v161, 0);
            *(v16 + 16) = v95;
            MEMORY[0x1C68F9740](v95, v16);

LABEL_145:
            v162 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v162, v163, &v199);

            specialized ActionEventData.action<A>()(&v195);
            v149 = v196;
            if (v196 != 0xFF)
            {
              v185 = v195;
              *&v193[24] = v200;
              *&v193[40] = v201;
              *&v193[56] = v202;
              *&v193[72] = v203;
              LOBYTE(v186) = v196 & 1;
              DWORD1(v186) = HIDWORD(v196);
              v187 = v197;
              LOWORD(v188) = v198 & 0x101;
              BYTE2(v188) = 1;
              *&v184 = v17;
              *(&v188 + 1) = v16;
              v189[0] = 0;
              *&v189[8] = 0;
              *&v189[16] = 0;
              v190 = 0uLL;
              *&v189[24] = v13;
              LOBYTE(v191) = 1;
              *(&v191 + 1) = 0;
              LOBYTE(v192) = 1;
              *(&v192 + 1) = 0;
              v193[0] = 1;
              *&v193[8] = v199;
              *&v193[88] = v183;
              goto LABEL_149;
            }

LABEL_146:

            v153 = *(&v195 + 1);
            v152 = v195;
            v154 = v149;
            goto LABEL_147;
          }

          goto LABEL_108;
        }

        v46 = makeEntity(for:)(v45);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v13 = Strong;
    v68 = *a2;
    v67 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v183 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v69 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v68);
      if (v92)
      {
        v70 = (*(v92 + 232))();
        v93 = *(v70 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v70 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v70);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v67;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v70 + 16));
        v94 = Hasher._finalize()();

        *(v17 + 24) = v94;
        if (!v16)
        {
          goto LABEL_145;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          v95 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v121 = swift_dynamicCastClassUnconditional();
LABEL_107:
            v16 = v121;
            goto LABEL_145;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v15);
              if (v96)
              {
                v20 = (*(v96 + 232))();
                v97 = *(v20 + 16);

                MEMORY[0x1C68F9740](v97, 0);
                *(v20 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v20);

                goto LABEL_78;
              }

              v19 = makeEntity(for:)(v15);
LABEL_8:
              v20 = v19;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v98 = swift_allocObject();
              *(v98 + 40) = 0;
              swift_weakInit();
              *(v98 + 16) = v14;
              swift_weakAssign();

              *(v98 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v20 + 16));
              v99 = Hasher._finalize()();

              *(v98 + 24) = v99;
              v100 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v100, v101, &v199);

              if (!v18)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v18 = 0;
                goto LABEL_126;
              }

              v102 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v103 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v18 = v103;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v102);
                if (!v140)
                {
                  v103 = makeEntity(for:)(v102);
                  goto LABEL_82;
                }

                v18 = (*(v140 + 232))();
                v141 = *(v18 + 16);

                MEMORY[0x1C68F9740](v141, 0);
                *(v18 + 16) = v102;
                MEMORY[0x1C68F9740](v102, v18);

LABEL_126:
                specialized ActionEventData.action<A>()(&v195);
                v124 = v196;
                if (v196 != 0xFF)
                {
                  v142 = v195;
                  v143 = v198;
                  v144 = HIDWORD(v196);
                  v182 = a5;
                  v145 = v197;
                  v146 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
                  *&v189[8] = vcvtq_f64_f32(v7);
                  *(&v190 + 1) = v6.f32[0];
                  v130 = v199;
                  *&v193[24] = v200;
                  *&v193[40] = v201;
                  LOBYTE(v186) = v124 & 1;
                  DWORD1(v186) = v144;
                  v187 = v145;
                  LOWORD(v188) = v143 & 0x101;
                  BYTE2(v188) = v146 & 1;
                  v185 = v142;
                  *&v184 = v98;
                  *(&v188 + 1) = v18;
                  v189[0] = v167;
                  *&v189[24] = v13;
                  *&v190 = v171;
                  LOBYTE(v191) = 0;
                  *(&v191 + 1) = v178;
                  LOBYTE(v192) = 0;
                  *(&v192 + 1) = v175;
                  v193[0] = 0;
                  *&v193[56] = v202;
                  *&v193[72] = v203;
LABEL_141:
                  *&v193[8] = v130;
                  *&v193[88] = v180;
                  v182(&v184);
LABEL_150:

                  v194[12] = *&v193[32];
                  v194[13] = *&v193[48];
                  v194[14] = *&v193[64];
                  v194[15] = *&v193[80];
                  v194[8] = v191;
                  v194[9] = v192;
                  v194[10] = *v193;
                  v194[11] = *&v193[16];
                  v194[4] = v188;
                  v194[5] = *v189;
                  v194[6] = *&v189[16];
                  v194[7] = v190;
                  v194[0] = v184;
                  v194[1] = v185;
                  v194[2] = v186;
                  v194[3] = v187;
                  outlined destroy of BodyTrackingComponent?(v194, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMd, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMR);
                  return 0;
                }

                goto LABEL_137;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

          goto LABEL_143;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_145;
      }

      v69 = makeEntity(for:)(v68);
    }

    v70 = v69;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v194[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v194);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v162 = a2[8];
            v165 = a2[6];
            v159 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v157 = *(a2 + 104);
            v167 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v47 = *a2;
        v46 = a2[1];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[8];
        v51 = a2[9];
        v158 = *(a2 + 80);
        v161 = a2[11];
        v164 = a2[7];
        v166 = a2[12];
        v167 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v52 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v47);
          if (v68)
          {
            v53 = (*(v68 + 232))();
            v69 = *(v53 + 16);

            MEMORY[0x1C68F9740](v69, 0);
            *(v53 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v53);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v70 = swift_allocObject();
            *(v70 + 40) = 0;
            swift_weakInit();
            *(v70 + 16) = v46;
            swift_weakAssign();

            *(v70 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v53 + 16));
            v71 = Hasher._finalize()();

            *(v70 + 24) = v71;
            v72 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v72, v73, &v185);

            if (!v50)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v75 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v50 = v75;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v119)
              {
                v75 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v50 = (*(v119 + 232))();
              v120 = *(v50 + 16);

              MEMORY[0x1C68F9740](v120, 0);
              *(v50 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v50);
            }

            else
            {
              v50 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v182);
            v121 = v183;
            if (v183 != 0xFF)
            {
              v122 = v182;
              v123 = v184;
              v169 = a5;
              v124 = *(&v184 + 1);
              v125 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
              *&v176[8] = vcvtq_f64_f32(v51);
              v126 = v185;
              *&v180[24] = v186;
              *&v180[40] = v187;
              *&v180[56] = v188;
              *&v180[72] = v189;
              v172 = v122;
              LOBYTE(v173) = v121 & 1;
              *&v174 = v123;
              *(&v174 + 1) = v124;
              LOBYTE(v175) = v125 & 1;
              *&v171 = v70;
              *(&v175 + 1) = v50;
              v176[0] = v158;
              *&v176[24] = v13;
              *&v177 = v164;
              *(&v177 + 1) = 0xBFF0000000000000;
              LOBYTE(v178) = 0;
              v127 = v161;
LABEL_139:
              *(&v178 + 1) = v127;
              LOBYTE(v179) = 0;
              v134 = v166;
              goto LABEL_140;
            }

            goto LABEL_137;
          }

          v52 = makeEntity(for:)(v47);
LABEL_32:
          v53 = v52;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v35 = *a2;
        v34 = a2[1];
        v36 = a2[4];
        v37 = a2[5];
        v38 = a2[7];
        v39 = a2[8];
        v160 = *(a2 + 72);
        v163 = a2[10];
        v166 = a2[11];
        v167 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v40 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v35);
          if (v107)
          {
            v41 = (*(v107 + 232))();
            v108 = *(v41 + 16);

            MEMORY[0x1C68F9740](v108, 0);
            *(v41 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v41);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v109 = swift_allocObject();
            *(v109 + 40) = 0;
            swift_weakInit();
            *(v109 + 16) = v34;
            swift_weakAssign();

            *(v109 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v41 + 16));
            v110 = Hasher._finalize()();

            *(v109 + 24) = v110;
            v111 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v37, v111, v112, &v185);

            if (!v38)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v113 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v114 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v38 = v114;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              specialized static Entity.entityInfoType(_:)(v113);
              if (!v144)
              {
                v114 = makeEntity(for:)(v113);
                goto LABEL_99;
              }

              v38 = (*(v144 + 232))();
              v145 = *(v38 + 16);

              MEMORY[0x1C68F9740](v145, 0);
              *(v38 + 16) = v113;
              MEMORY[0x1C68F9740](v113, v38);
            }

            else
            {
              v38 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v182);
            v121 = v183;
            if (v183 != 0xFF)
            {
              v149 = v182;
              v169 = a5;
              v150 = *(&v182 + 1);
              v151 = v184;
              v152 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
              *&v176[8] = vcvtq_f64_f32(v39);
              v126 = v185;
              *&v180[24] = v186;
              *&v180[40] = v187;
              *&v180[56] = v188;
              *&v180[72] = v189;
              *&v172 = v149;
              *(&v172 + 1) = v150;
              LOBYTE(v173) = v121 & 1;
              v174 = v151;
              LOBYTE(v175) = v152 & 1;
              *&v171 = v109;
              *(&v175 + 1) = v38;
              v176[0] = v160;
              v177 = 0uLL;
              *&v176[24] = v13;
              LOBYTE(v178) = 1;
              v127 = v163;
              goto LABEL_139;
            }

LABEL_137:

            v147 = *(&v182 + 1);
            v146 = v182;
            v148 = v121;
LABEL_147:
            outlined consume of OrbitEntityAction?(v146, v147, v148);
            return 0;
          }

          v40 = makeEntity(for:)(v35);
        }

        v41 = v40;
        goto LABEL_95;
      }

      v60 = *a2;
      v54 = a2[1];
      v56 = a2[4];
      v61 = a2[5];
      v31 = a2[8];
      v165 = a2[7];
      v6 = a2[9];
      LOBYTE(v162) = *(a2 + 80);
      v167 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v62 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      specialized static Entity.entityInfoType(_:)(v60);
      if (v81)
      {
        v63 = (*(v81 + 232))();
        v82 = *(v63 + 16);

        MEMORY[0x1C68F9740](v82, 0);
        *(v63 + 16) = v60;
        MEMORY[0x1C68F9740](v60, v63);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v83 = swift_allocObject();
        *(v83 + 40) = 0;
        swift_weakInit();
        *(v83 + 16) = v54;
        swift_weakAssign();

        *(v83 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v63 + 16));
        v84 = Hasher._finalize()();

        *(v83 + 24) = v84;
        v85 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v61, v85, v86, &v185);

        if (!v31)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v87 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v88 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v31 = v88;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          specialized static Entity.entityInfoType(_:)(v87);
          if (!v128)
          {
            v88 = makeEntity(for:)(v87);
            goto LABEL_66;
          }

          v31 = (*(v128 + 232))();
          v129 = *(v31 + 16);

          MEMORY[0x1C68F9740](v129, 0);
          *(v31 + 16) = v87;
          MEMORY[0x1C68F9740](v87, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v182);
        v121 = v183;
        if (v183 != 0xFF)
        {
          v130 = v182;
          v169 = a5;
          v131 = *(&v182 + 1);
          v132 = v184;
          v133 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
          *&v176[8] = vcvtq_f64_f32(v6);
          v126 = v185;
          *&v180[24] = v186;
          *&v180[40] = v187;
          *&v180[56] = v188;
          *&v180[72] = v189;
          *&v172 = v130;
          *(&v172 + 1) = v131;
          LOBYTE(v173) = v121 & 1;
          v174 = v132;
          LOBYTE(v175) = v133 & 1;
          *&v171 = v83;
          *(&v175 + 1) = v31;
          v176[0] = v162;
          *&v176[24] = v13;
          *&v177 = v165;
          v134 = 0xBFF0000000000000;
          *(&v177 + 1) = 0xBFF0000000000000;
          LOBYTE(v178) = 0;
          *(&v178 + 1) = 0xBFF0000000000000;
          LOBYTE(v179) = 0;
LABEL_140:
          *(&v179 + 1) = v134;
          v180[0] = 0;
          goto LABEL_141;
        }

        goto LABEL_137;
      }

      v62 = makeEntity(for:)(v60);
LABEL_38:
      v63 = v62;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v168 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          specialized static Entity.entityInfoType(_:)(v28);
          if (v101)
          {
            v33 = (*(v101 + 232))();
            v102 = *(v33 + 16);

            MEMORY[0x1C68F9740](v102, 0);
            *(v33 + 16) = v28;
            MEMORY[0x1C68F9740](v28, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v60 = swift_allocObject();
            *(v60 + 40) = 0;
            swift_weakInit();
            *(v60 + 16) = v27;
            swift_weakAssign();

            *(v60 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v103 = Hasher._finalize()();

            *(v60 + 24) = v103;
            v104 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v104, v105, &v185);

            if (!v31)
            {
              goto LABEL_131;
            }

            if (REBindPointBoundComponent())
            {
              v61 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v61);
              if (!v141)
              {
                v106 = makeEntity(for:)(v61);
                goto LABEL_90;
              }

              v31 = (*(v141 + 232))();
              v142 = *(v31 + 16);

              MEMORY[0x1C68F9740](v142, 0);
              *(v31 + 16) = v61;
              MEMORY[0x1C68F9740](v61, v31);

LABEL_131:
              specialized ActionEventData.action<A>()(&v182);
              v143 = v183;
              if (v183 != 0xFF)
              {
                v172 = v182;
                *&v180[24] = v186;
                *&v180[40] = v187;
                *&v180[56] = v188;
                *&v180[72] = v189;
                LOBYTE(v173) = v183 & 1;
                v174 = v184;
                LOBYTE(v175) = 1;
                *&v171 = v60;
                *(&v175 + 1) = v31;
                v176[0] = 0;
                *&v176[8] = 0;
                *&v176[16] = 0;
                v177 = 0uLL;
                *&v176[24] = v13;
                LOBYTE(v178) = 1;
                *(&v178 + 1) = v168;
                LOBYTE(v179) = 0;
                *(&v179 + 1) = 0;
                v180[0] = 1;
                *&v180[8] = v185;
                *&v180[88] = v30;
LABEL_149:
                a5(&v171);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_91;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v55 = *a2;
      v54 = a2[1];
      v56 = a2[3];
      v57 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v168 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v58 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        specialized static Entity.entityInfoType(_:)(v55);
        if (v76)
        {
          v59 = (*(v76 + 232))();
          v77 = *(v59 + 16);

          MEMORY[0x1C68F9740](v77, 0);
          *(v59 + 16) = v55;
          MEMORY[0x1C68F9740](v55, v59);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v60 = swift_allocObject();
          *(v60 + 40) = 0;
          swift_weakInit();
          *(v60 + 16) = v54;
          swift_weakAssign();

          *(v60 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v59 + 16));
          v78 = Hasher._finalize()();

          *(v60 + 24) = v78;
          v79 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v57, v79, v80, &v185);

          if (!v31)
          {
            goto LABEL_131;
          }

          if (REBindPointBoundComponent())
          {
            v61 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v106 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v31 = v106;
              goto LABEL_131;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_129;
          }

LABEL_91:
          v31 = 0;
          goto LABEL_131;
        }

        v58 = makeEntity(for:)(v55);
      }

      v59 = v58;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v43 = *a2;
      v42 = a2[1];
      v15 = a2[3];
      v16 = a2[5];
      v170 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v44 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        specialized static Entity.entityInfoType(_:)(v43);
        if (v115)
        {
          v45 = (*(v115 + 232))();
          v116 = *(v45 + 16);

          MEMORY[0x1C68F9740](v116, 0);
          *(v45 + 16) = v43;
          MEMORY[0x1C68F9740](v43, v45);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v42;
          swift_weakAssign();

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v45 + 16));
          v117 = Hasher._finalize()();

          *(v17 + 24) = v117;
          if (!v16)
          {
            goto LABEL_145;
          }

          if (REBindPointBoundComponent())
          {
            v92 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_179:
              __break(1u);
              return result;
            }

LABEL_143:
            specialized static Entity.entityInfoType(_:)(v92);
            if (!v153)
            {
              v118 = makeEntity(for:)(v92);
              goto LABEL_107;
            }

            v16 = (*(v153 + 232))();
            v154 = *(v16 + 16);

            MEMORY[0x1C68F9740](v154, 0);
            *(v16 + 16) = v92;
            MEMORY[0x1C68F9740](v92, v16);

LABEL_145:
            v155 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v155, v156, &v185);

            specialized ActionEventData.action<A>()(&v182);
            v143 = v183;
            if (v183 != 0xFF)
            {
              v172 = v182;
              *&v180[24] = v186;
              *&v180[40] = v187;
              *&v180[56] = v188;
              *&v180[72] = v189;
              LOBYTE(v173) = v183 & 1;
              v174 = v184;
              LOBYTE(v175) = 1;
              *&v171 = v17;
              *(&v175 + 1) = v16;
              v176[0] = 0;
              *&v176[8] = 0;
              *&v176[16] = 0;
              v177 = 0uLL;
              *&v176[24] = v13;
              LOBYTE(v178) = 1;
              *(&v178 + 1) = 0;
              LOBYTE(v179) = 1;
              *(&v179 + 1) = 0;
              v180[0] = 1;
              *&v180[8] = v185;
              *&v180[88] = v170;
              goto LABEL_149;
            }

LABEL_146:

            v147 = *(&v182 + 1);
            v146 = v182;
            v148 = v143;
            goto LABEL_147;
          }

          goto LABEL_108;
        }

        v44 = makeEntity(for:)(v43);
      }

      v45 = v44;
      goto LABEL_103;
    }

    v65 = *a2;
    v64 = a2[1];
    v18 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v170 = a2[4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v66 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      specialized static Entity.entityInfoType(_:)(v65);
      if (v89)
      {
        v67 = (*(v89 + 232))();
        v90 = *(v67 + 16);

        MEMORY[0x1C68F9740](v90, 0);
        *(v67 + 16) = v65;
        MEMORY[0x1C68F9740](v65, v67);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v64;
        swift_weakAssign();

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v91 = Hasher._finalize()();

        *(v17 + 24) = v91;
        if (!v16)
        {
          goto LABEL_145;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          v92 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v118 = swift_dynamicCastClassUnconditional();
LABEL_107:
            v16 = v118;
            goto LABEL_145;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v15);
              if (v93)
              {
                v20 = (*(v93 + 232))();
                v94 = *(v20 + 16);

                MEMORY[0x1C68F9740](v94, 0);
                *(v20 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v20);

                goto LABEL_78;
              }

              v19 = makeEntity(for:)(v15);
LABEL_8:
              v20 = v19;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v95 = swift_allocObject();
              *(v95 + 40) = 0;
              swift_weakInit();
              *(v95 + 16) = v14;
              swift_weakAssign();

              *(v95 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v20 + 16));
              v96 = Hasher._finalize()();

              *(v95 + 24) = v96;
              v97 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v97, v98, &v185);

              if (!v18)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v18 = 0;
                goto LABEL_126;
              }

              v99 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v100 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v18 = v100;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v99);
                if (!v135)
                {
                  v100 = makeEntity(for:)(v99);
                  goto LABEL_82;
                }

                v18 = (*(v135 + 232))();
                v136 = *(v18 + 16);

                MEMORY[0x1C68F9740](v136, 0);
                *(v18 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v18);

LABEL_126:
                specialized ActionEventData.action<A>()(&v182);
                v121 = v183;
                if (v183 != 0xFF)
                {
                  v137 = v182;
                  v169 = a5;
                  v138 = *(&v182 + 1);
                  v139 = v184;
                  v140 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
                  *&v176[8] = vcvtq_f64_f32(v7);
                  *(&v177 + 1) = v6.f32[0];
                  v126 = v185;
                  *&v180[24] = v186;
                  *&v180[40] = v187;
                  *&v172 = v137;
                  *(&v172 + 1) = v138;
                  LOBYTE(v173) = v121 & 1;
                  v174 = v139;
                  LOBYTE(v175) = v140 & 1;
                  *&v171 = v95;
                  *(&v175 + 1) = v18;
                  v176[0] = v157;
                  *&v176[24] = v13;
                  *&v177 = v159;
                  LOBYTE(v178) = 0;
                  *(&v178 + 1) = v165;
                  LOBYTE(v179) = 0;
                  *(&v179 + 1) = v162;
                  v180[0] = 0;
                  *&v180[56] = v188;
                  *&v180[72] = v189;
LABEL_141:
                  *&v180[8] = v126;
                  *&v180[88] = v167;
                  v169(&v171);
LABEL_150:

                  v181[12] = *&v180[32];
                  v181[13] = *&v180[48];
                  v181[14] = *&v180[64];
                  v181[15] = *&v180[80];
                  v181[8] = v178;
                  v181[9] = v179;
                  v181[10] = *v180;
                  v181[11] = *&v180[16];
                  v181[4] = v175;
                  v181[5] = *v176;
                  v181[6] = *&v176[16];
                  v181[7] = v177;
                  v181[0] = v171;
                  v181[1] = v172;
                  v181[2] = v173;
                  v181[3] = v174;
                  outlined destroy of BodyTrackingComponent?(v181, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMd, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMR);
                  return 0;
                }

                goto LABEL_137;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

          goto LABEL_143;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_145;
      }

      v66 = makeEntity(for:)(v65);
    }

    v67 = v66;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v181[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v181);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v148 = a5;
            v13 = *a2;
            v12 = a2[1];
            v14 = a2[4];
            v15 = a2[5];
            v5.i32[0] = *(a2 + 14);
            v143 = a2[8];
            v145 = a2[6];
            v140 = a2[9];
            v16 = a2[11];
            v6 = a2[12];
            v138 = *(a2 + 104);
            v147 = a2[10];
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v17 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v148 = a5;
        v45 = *a2;
        v44 = a2[1];
        v46 = a2[4];
        v47 = a2[5];
        v48 = a2[8];
        v49 = a2[9];
        v139 = *(a2 + 80);
        v142 = a2[7];
        v144 = a2[11];
        v146 = a2[12];
        v147 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v50 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v45);
          if (v66)
          {
            v51 = (*(v66 + 232))();
            v67 = *(v51 + 16);

            MEMORY[0x1C68F9740](v67, 0);
            *(v51 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v51);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v44;
            swift_weakAssign();

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v51 + 16));
            v69 = Hasher._finalize()();

            *(v68 + 24) = v69;
            v70 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v46, 0, v47, v70, v71, &v167);

            if (!v48)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v73 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v48 = v73;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              specialized static Entity.entityInfoType(_:)(Entity);
              if (!v117)
              {
                v73 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v48 = (*(v117 + 232))();
              v118 = *(v48 + 16);

              MEMORY[0x1C68F9740](v118, 0);
              *(v48 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v48);
            }

            else
            {
              v48 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v164);
            v119 = v165;
            if (v165 != -1)
            {
              *&v149[8] = v164;
              v149[24] = v165 & 1;
              v149[25] = v166 & 1;
              v149[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
              *v149 = v68;
              *&v150 = v48;
              BYTE8(v150) = v139;
              v151 = vcvtq_f64_f32(v49);
              *&v152 = v11;
              *(&v152 + 1) = v142;
              *&v153 = 0xBFF0000000000000;
              BYTE8(v153) = 0;
LABEL_139:
              v125 = v144;
              v122 = v146;
              goto LABEL_140;
            }

            goto LABEL_137;
          }

          v50 = makeEntity(for:)(v45);
LABEL_32:
          v51 = v50;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v148 = a5;
        v33 = *a2;
        v32 = a2[1];
        v34 = a2[4];
        v35 = a2[5];
        v36 = a2[7];
        v37 = a2[8];
        v141 = *(a2 + 72);
        v144 = a2[10];
        v146 = a2[11];
        v147 = a2[6];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          specialized static Entity.entityInfoType(_:)(v33);
          if (v105)
          {
            v39 = (*(v105 + 232))();
            v106 = *(v39 + 16);

            MEMORY[0x1C68F9740](v106, 0);
            *(v39 + 16) = v33;
            MEMORY[0x1C68F9740](v33, v39);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v107 = swift_allocObject();
            *(v107 + 40) = 0;
            swift_weakInit();
            *(v107 + 16) = v32;
            swift_weakAssign();

            *(v107 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v39 + 16));
            v108 = Hasher._finalize()();

            *(v107 + 24) = v108;
            v109 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v34, 0, v35, v109, v110, &v167);

            if (!v36)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v111 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v112 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v36 = v112;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              specialized static Entity.entityInfoType(_:)(v111);
              if (!v129)
              {
                v112 = makeEntity(for:)(v111);
                goto LABEL_99;
              }

              v36 = (*(v129 + 232))();
              v130 = *(v36 + 16);

              MEMORY[0x1C68F9740](v130, 0);
              *(v36 + 16) = v111;
              MEMORY[0x1C68F9740](v111, v36);
            }

            else
            {
              v36 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v164);
            v119 = v165;
            if (v165 != -1)
            {
              *&v149[8] = v164;
              v149[24] = v165 & 1;
              v149[25] = v166 & 1;
              v149[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
              *v149 = v107;
              *&v150 = v36;
              BYTE8(v150) = v141;
              v151 = vcvtq_f64_f32(v37);
              *&v153 = 0;
              v152 = v11;
              BYTE8(v153) = 1;
              goto LABEL_139;
            }

LABEL_137:

            v132 = *(&v164 + 1);
            v131 = v164;
            v133 = v119;
LABEL_148:
            outlined consume of SetEntityEnabledAction?(v131, v132, v133);
            return 0;
          }

          v38 = makeEntity(for:)(v33);
        }

        v39 = v38;
        goto LABEL_95;
      }

      v148 = a5;
      v58 = *a2;
      v52 = a2[1];
      v54 = a2[4];
      v59 = a2[5];
      v29 = a2[8];
      v145 = a2[7];
      v5 = a2[9];
      LOBYTE(v143) = *(a2 + 80);
      v147 = a2[6];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v60 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      specialized static Entity.entityInfoType(_:)(v58);
      if (v79)
      {
        v61 = (*(v79 + 232))();
        v80 = *(v61 + 16);

        MEMORY[0x1C68F9740](v80, 0);
        *(v61 + 16) = v58;
        MEMORY[0x1C68F9740](v58, v61);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v81 = swift_allocObject();
        *(v81 + 40) = 0;
        swift_weakInit();
        *(v81 + 16) = v52;
        swift_weakAssign();

        *(v81 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v61 + 16));
        v82 = Hasher._finalize()();

        *(v81 + 24) = v82;
        v83 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v54, 0, v59, v83, v84, &v167);

        if (!v29)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v85 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v86 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v29 = v86;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          specialized static Entity.entityInfoType(_:)(v85);
          if (!v120)
          {
            v86 = makeEntity(for:)(v85);
            goto LABEL_66;
          }

          v29 = (*(v120 + 232))();
          v121 = *(v29 + 16);

          MEMORY[0x1C68F9740](v121, 0);
          *(v29 + 16) = v85;
          MEMORY[0x1C68F9740](v85, v29);
        }

        else
        {
          v29 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v164);
        v119 = v165;
        if (v165 != -1)
        {
          *&v149[8] = v164;
          v149[24] = v165 & 1;
          v149[25] = v166 & 1;
          v149[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
          *v149 = v81;
          *&v150 = v29;
          BYTE8(v150) = v143;
          v151 = vcvtq_f64_f32(v5);
          *&v152 = v11;
          *(&v152 + 1) = v145;
          v122 = 0xBFF0000000000000;
          *&v153 = 0xBFF0000000000000;
          BYTE8(v153) = 0;
          *&v154 = 0xBFF0000000000000;
LABEL_141:
          BYTE8(v154) = 0;
          *&v155 = v122;
          BYTE8(v155) = 0;
          v158 = v169;
          v159 = v170;
          v160 = v171;
          v157 = v168;
          v156 = v167;
          v161 = v147;
LABEL_151:
          v148(v149);

          v162[10] = v158;
          v162[11] = v159;
          v162[12] = v160;
          v163 = v161;
          v162[6] = v154;
          v162[7] = v155;
          v162[8] = v156;
          v162[9] = v157;
          v162[2] = v150;
          v162[3] = v151;
          v162[4] = v152;
          v162[5] = v153;
          v162[0] = *v149;
          v162[1] = *&v149[16];
          outlined destroy of BodyTrackingComponent?(v162, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMd, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMR);
          return 0;
        }

        goto LABEL_137;
      }

      v60 = makeEntity(for:)(v58);
LABEL_38:
      v61 = v60;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v148 = a5;
        v26 = *a2;
        v25 = a2[1];
        v27 = a2[5];
        v28 = a2[6];
        v29 = a2[7];
        v147 = a2[4];
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v30 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          specialized static Entity.entityInfoType(_:)(v26);
          if (v99)
          {
            v31 = (*(v99 + 232))();
            v100 = *(v31 + 16);

            MEMORY[0x1C68F9740](v100, 0);
            *(v31 + 16) = v26;
            MEMORY[0x1C68F9740](v26, v31);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v58 = swift_allocObject();
            *(v58 + 40) = 0;
            swift_weakInit();
            *(v58 + 16) = v25;
            swift_weakAssign();

            *(v58 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v31 + 16));
            v101 = Hasher._finalize()();

            *(v58 + 24) = v101;
            v102 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v27, v102, v103, &v167);

            if (!v29)
            {
              goto LABEL_131;
            }

            if (REBindPointBoundComponent())
            {
              v59 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_129:
              specialized static Entity.entityInfoType(_:)(v59);
              if (!v126)
              {
                v104 = makeEntity(for:)(v59);
                goto LABEL_90;
              }

              v29 = (*(v126 + 232))();
              v127 = *(v29 + 16);

              MEMORY[0x1C68F9740](v127, 0);
              *(v29 + 16) = v59;
              MEMORY[0x1C68F9740](v59, v29);

LABEL_131:
              specialized ActionEventData.action<A>()(&v164);
              v128 = v165;
              if (v165 != -1)
              {
                *&v149[8] = v164;
                v149[24] = v165 & 1;
                v149[25] = v166 & 1;
                v149[26] = 1;
                *v149 = v58;
                *&v150 = v29;
                BYTE8(v150) = 0;
                v151 = 0uLL;
                *&v153 = 0;
                v152 = v11;
                BYTE8(v153) = 1;
                *&v154 = v147;
                BYTE8(v154) = 0;
LABEL_150:
                *&v155 = 0;
                BYTE8(v155) = 1;
                v158 = v169;
                v159 = v170;
                v160 = v171;
                v157 = v168;
                v156 = v167;
                v161 = v28;
                goto LABEL_151;
              }

              goto LABEL_147;
            }

            goto LABEL_91;
          }

          v30 = makeEntity(for:)(v26);
        }

        v31 = v30;
        goto LABEL_86;
      }

      v148 = a5;
      v53 = *a2;
      v52 = a2[1];
      v54 = a2[3];
      v55 = a2[5];
      v28 = a2[6];
      v29 = a2[7];
      v147 = a2[4];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v56 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        specialized static Entity.entityInfoType(_:)(v53);
        if (v74)
        {
          v57 = (*(v74 + 232))();
          v75 = *(v57 + 16);

          MEMORY[0x1C68F9740](v75, 0);
          *(v57 + 16) = v53;
          MEMORY[0x1C68F9740](v53, v57);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v58 = swift_allocObject();
          *(v58 + 40) = 0;
          swift_weakInit();
          *(v58 + 16) = v52;
          swift_weakAssign();

          *(v58 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v57 + 16));
          v76 = Hasher._finalize()();

          *(v58 + 24) = v76;
          v77 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v55, v77, v78, &v167);

          if (!v29)
          {
            goto LABEL_131;
          }

          if (REBindPointBoundComponent())
          {
            v59 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v104 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v29 = v104;
              goto LABEL_131;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_129;
          }

LABEL_91:
          v29 = 0;
          goto LABEL_131;
        }

        v56 = makeEntity(for:)(v53);
      }

      v57 = v56;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v148 = a5;
      v41 = *a2;
      v40 = a2[1];
      v13 = a2[3];
      v28 = a2[4];
      v14 = a2[5];
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v42 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        specialized static Entity.entityInfoType(_:)(v41);
        if (v113)
        {
          v43 = (*(v113 + 232))();
          v114 = *(v43 + 16);

          MEMORY[0x1C68F9740](v114, 0);
          *(v43 + 16) = v41;
          MEMORY[0x1C68F9740](v41, v43);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v15 = swift_allocObject();
          *(v15 + 40) = 0;
          swift_weakInit();
          *(v15 + 16) = v40;
          swift_weakAssign();

          *(v15 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v43 + 16));
          v115 = Hasher._finalize()();

          *(v15 + 24) = v115;
          if (!v14)
          {
            goto LABEL_146;
          }

          if (REBindPointBoundComponent())
          {
            v12 = v28;
            v90 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
              return result;
            }

            goto LABEL_143;
          }

          goto LABEL_108;
        }

        v42 = makeEntity(for:)(v41);
      }

      v43 = v42;
      goto LABEL_103;
    }

    v148 = a5;
    v63 = *a2;
    v62 = a2[1];
    v16 = a2[2];
    v13 = a2[3];
    v28 = a2[4];
    v14 = a2[5];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v64 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      specialized static Entity.entityInfoType(_:)(v63);
      if (v87)
      {
        v65 = (*(v87 + 232))();
        v88 = *(v65 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v65 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v65);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v15 = swift_allocObject();
        *(v15 + 40) = 0;
        swift_weakInit();
        *(v15 + 16) = v62;
        swift_weakAssign();

        *(v15 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v65 + 16));
        v89 = Hasher._finalize()();

        *(v15 + 24) = v89;
        if (!v14)
        {
          goto LABEL_146;
        }

        if (REBindPointBoundComponent())
        {
          v12 = v28;
          v90 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v116 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v13);
              if (v91)
              {
                v18 = (*(v91 + 232))();
                v92 = *(v18 + 16);

                MEMORY[0x1C68F9740](v92, 0);
                *(v18 + 16) = v13;
                MEMORY[0x1C68F9740](v13, v18);

                goto LABEL_78;
              }

              v17 = makeEntity(for:)(v13);
LABEL_8:
              v18 = v17;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v93 = swift_allocObject();
              *(v93 + 40) = 0;
              swift_weakInit();
              *(v93 + 16) = v12;
              swift_weakAssign();

              *(v93 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v18 + 16));
              v94 = Hasher._finalize()();

              *(v93 + 24) = v94;
              v95 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v15, v95, v96, &v167);

              if (!v16)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v16 = 0;
                goto LABEL_126;
              }

              v97 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v98 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v16 = v98;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v97);
                if (!v123)
                {
                  v98 = makeEntity(for:)(v97);
                  goto LABEL_82;
                }

                v16 = (*(v123 + 232))();
                v124 = *(v16 + 16);

                MEMORY[0x1C68F9740](v124, 0);
                *(v16 + 16) = v97;
                MEMORY[0x1C68F9740](v97, v16);

LABEL_126:
                specialized ActionEventData.action<A>()(&v164);
                v119 = v165;
                if (v165 != -1)
                {
                  *&v149[8] = v164;
                  v149[24] = v165 & 1;
                  v149[25] = v166 & 1;
                  v149[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
                  *v149 = v93;
                  *&v150 = v16;
                  BYTE8(v150) = v138;
                  v151 = vcvtq_f64_f32(v6);
                  *&v152 = v11;
                  *(&v152 + 1) = v140;
                  *&v153 = v5.f32[0];
                  BYTE8(v153) = 0;
                  v122 = v143;
                  v125 = v145;
LABEL_140:
                  *&v154 = v125;
                  goto LABEL_141;
                }

                goto LABEL_137;
              }

              goto LABEL_177;
            }

            goto LABEL_171;
          }

LABEL_143:
          specialized static Entity.entityInfoType(_:)(v90);
          if (v134)
          {
            v14 = (*(v134 + 232))();
            v135 = *(v14 + 16);

            MEMORY[0x1C68F9740](v135, 0);
            *(v14 + 16) = v90;
            MEMORY[0x1C68F9740](v90, v14);

            goto LABEL_145;
          }

          v116 = makeEntity(for:)(v90);
LABEL_107:
          v14 = v116;
LABEL_145:
          v28 = v12;
LABEL_146:
          v136 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v136, v137, &v167);

          specialized ActionEventData.action<A>()(&v164);
          v128 = v165;
          if (v165 != -1)
          {
            *&v149[8] = v164;
            v149[24] = v165 & 1;
            v149[25] = v166 & 1;
            v149[26] = 1;
            *v149 = v15;
            *&v150 = v14;
            BYTE8(v150) = 0;
            v151 = 0uLL;
            *&v153 = 0;
            v152 = v11;
            BYTE8(v153) = 1;
            *&v154 = 0;
            BYTE8(v154) = 1;
            goto LABEL_150;
          }

LABEL_147:

          v132 = *(&v164 + 1);
          v131 = v164;
          v133 = v128;
          goto LABEL_148;
        }

LABEL_108:
        v14 = 0;
        goto LABEL_146;
      }

      v64 = makeEntity(for:)(v63);
    }

    v65 = v64;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static AnimationLogger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v162[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v162);
    _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  return 1;
}