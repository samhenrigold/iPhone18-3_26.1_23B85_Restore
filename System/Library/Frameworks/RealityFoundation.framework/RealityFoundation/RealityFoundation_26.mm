uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), void (*a6)(__int128 *))
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
            a6 = a5;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v144 = a2[8];
            v146 = a2[6];
            v141 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v139 = *(a2 + 104);
            v148 = a2[10];
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

        a6 = a5;
        v47 = *a2;
        v46 = a2[1];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[8];
        v51 = a2[9];
        v140 = *(a2 + 80);
        v143 = a2[7];
        v145 = a2[11];
        v147 = a2[12];
        v148 = a2[6];
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v72, v73, &v162);

            if (v50)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v75 = swift_dynamicCastClassUnconditional();
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
                  if (v119)
                  {
                    v50 = (*(v119 + 232))();
                    v120 = *(v50 + 16);

                    MEMORY[0x1C68F9740](v120, 0);
                    *(v50 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v50);

                    goto LABEL_116;
                  }

                  v75 = makeEntity(for:)(Entity);
                }

                v50 = v75;
              }

              else
              {
                v50 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v160);
            if (!v161)
            {
              goto LABEL_150;
            }

            v121 = v160;
            v152 = v161;
            LOBYTE(v153) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
            *&v151 = v70;
            *(&v151 + 1) = v121;
            *(&v153 + 1) = v50;
            v154[0] = v140;
            *&v154[8] = vcvtq_f64_f32(v51);
            *&v154[24] = v13;
            *&v155 = v143;
            *(&v155 + 1) = 0xBFF0000000000000;
            LOBYTE(v156) = 0;
LABEL_139:
            v129 = v145;
            v125 = v147;
            goto LABEL_140;
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

        a6 = a5;
        v35 = *a2;
        v34 = a2[1];
        v36 = a2[4];
        v37 = a2[5];
        v38 = a2[7];
        v39 = a2[8];
        v142 = *(a2 + 72);
        v145 = a2[10];
        v147 = a2[11];
        v148 = a2[6];
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v37, v111, v112, &v162);

            if (v38)
            {
              if (REBindPointBoundComponent())
              {
                v113 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v114 = swift_dynamicCastClassUnconditional();
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

                  specialized static Entity.entityInfoType(_:)(v113);
                  if (v132)
                  {
                    v38 = (*(v132 + 232))();
                    v133 = *(v38 + 16);

                    MEMORY[0x1C68F9740](v133, 0);
                    *(v38 + 16) = v113;
                    MEMORY[0x1C68F9740](v113, v38);

                    goto LABEL_137;
                  }

                  v114 = makeEntity(for:)(v113);
                }

                v38 = v114;
              }

              else
              {
                v38 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v160);
            if (!v161)
            {
              goto LABEL_150;
            }

            v134 = v160;
            v152 = v161;
            LOBYTE(v153) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
            *&v151 = v109;
            *(&v151 + 1) = v134;
            *(&v153 + 1) = v38;
            v154[0] = v142;
            *&v154[8] = vcvtq_f64_f32(v39);
            v155 = 0uLL;
            *&v154[24] = v13;
            LOBYTE(v156) = 1;
            goto LABEL_139;
          }

          v40 = makeEntity(for:)(v35);
        }

        v41 = v40;
        goto LABEL_95;
      }

      a6 = a5;
      v60 = *a2;
      v54 = a2[1];
      v56 = a2[4];
      v61 = a2[5];
      v31 = a2[8];
      v146 = a2[7];
      v6 = a2[9];
      LOBYTE(v144) = *(a2 + 80);
      v148 = a2[6];
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v61, v85, v86, &v162);

        if (!v31)
        {
          goto LABEL_122;
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
            goto LABEL_122;
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
          if (!v122)
          {
            v88 = makeEntity(for:)(v87);
            goto LABEL_66;
          }

          v31 = (*(v122 + 232))();
          v123 = *(v31 + 16);

          MEMORY[0x1C68F9740](v123, 0);
          *(v31 + 16) = v87;
          MEMORY[0x1C68F9740](v87, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v160);
        if (v161)
        {
          v124 = v160;
          v152 = v161;
          LOBYTE(v153) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
          *&v151 = v83;
          *(&v151 + 1) = v124;
          *(&v153 + 1) = v31;
          v154[0] = v144;
          *&v154[8] = vcvtq_f64_f32(v6);
          *&v154[24] = v13;
          *&v155 = v146;
          v125 = 0xBFF0000000000000;
          *(&v155 + 1) = 0xBFF0000000000000;
          LOBYTE(v156) = 0;
          *(&v156 + 1) = 0xBFF0000000000000;
LABEL_141:
          LOBYTE(v157) = 0;
          *(&v157 + 1) = v125;
          v158[0] = 0;
          *&v158[8] = v162;
          *&v158[72] = v166;
          *&v158[56] = v165;
          *&v158[40] = v164;
          *&v158[24] = v163;
          *&v158[88] = v148;
          a6(&v151);
          goto LABEL_149;
        }

        goto LABEL_150;
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

        v149 = a5;
        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v148 = a2[4];
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v104, v105, &v162);

            if (!v31)
            {
              goto LABEL_132;
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

LABEL_130:
              specialized static Entity.entityInfoType(_:)(v61);
              if (!v130)
              {
                v106 = makeEntity(for:)(v61);
                goto LABEL_90;
              }

              v31 = (*(v130 + 232))();
              v131 = *(v31 + 16);

              MEMORY[0x1C68F9740](v131, 0);
              *(v31 + 16) = v61;
              MEMORY[0x1C68F9740](v61, v31);

LABEL_132:
              specialized ActionEventData.action<A>()(&v160);
              if (v161)
              {
                *&v158[24] = v163;
                *&v158[40] = v164;
                *&v158[56] = v165;
                *&v158[72] = v166;
                v152 = v161;
                LOBYTE(v153) = 1;
                *&v151 = v60;
                *(&v151 + 1) = v160;
                *(&v153 + 1) = v31;
                v154[0] = 0;
                *&v154[8] = 0;
                *&v154[16] = 0;
                v155 = 0uLL;
                *&v154[24] = v13;
                LOBYTE(v156) = 1;
                *(&v156 + 1) = v148;
                LOBYTE(v157) = 0;
                *(&v157 + 1) = 0;
                v158[0] = 1;
                *&v158[8] = v162;
                *&v158[88] = v30;
                v149(&v151);
LABEL_149:

                v159[10] = *&v158[32];
                v159[11] = *&v158[48];
                v159[12] = *&v158[64];
                v159[13] = *&v158[80];
                v159[6] = v156;
                v159[7] = v157;
                v159[8] = *v158;
                v159[9] = *&v158[16];
                v159[2] = v153;
                v159[3] = *v154;
                v159[4] = *&v154[16];
                v159[5] = v155;
                v159[0] = v151;
                v159[1] = v152;
                outlined destroy of BodyTrackingComponent?(v159, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMd, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMR);
                return 0;
              }

              goto LABEL_150;
            }

            goto LABEL_91;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v149 = a5;
      v55 = *a2;
      v54 = a2[1];
      v56 = a2[3];
      v57 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v148 = a2[4];
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v57, v79, v80, &v162);

          if (!v31)
          {
            goto LABEL_132;
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
              goto LABEL_132;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_130;
          }

LABEL_91:
          v31 = 0;
          goto LABEL_132;
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
      v150 = a2[4];
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
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            v14 = a5;
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

            goto LABEL_144;
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
    v150 = a2[4];
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
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a5;
          v92 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v118 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
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
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v97, v98, &v162);

              if (!v18)
              {
                goto LABEL_127;
              }

              if (!REBindPointBoundComponent())
              {
                v18 = 0;
                goto LABEL_127;
              }

              v99 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v100 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v18 = v100;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v99);
                if (!v126)
                {
                  v100 = makeEntity(for:)(v99);
                  goto LABEL_82;
                }

                v18 = (*(v126 + 232))();
                v127 = *(v18 + 16);

                MEMORY[0x1C68F9740](v127, 0);
                *(v18 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v18);

LABEL_127:
                specialized ActionEventData.action<A>()(&v160);
                if (v161)
                {
                  v128 = v160;
                  v152 = v161;
                  LOBYTE(v153) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
                  *&v151 = v95;
                  *(&v151 + 1) = v128;
                  *(&v153 + 1) = v18;
                  v154[0] = v139;
                  *&v154[8] = vcvtq_f64_f32(v7);
                  *&v154[24] = v13;
                  *&v155 = v141;
                  *(&v155 + 1) = v6.f32[0];
                  LOBYTE(v156) = 0;
                  v125 = v144;
                  v129 = v146;
LABEL_140:
                  *(&v156 + 1) = v129;
                  goto LABEL_141;
                }

LABEL_150:

                outlined consume of NotificationAction?(v160, 0, *(&v161 + 1));
                return 0;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

LABEL_144:
          specialized static Entity.entityInfoType(_:)(v92);
          if (v135)
          {
            v16 = (*(v135 + 232))();
            v136 = *(v16 + 16);

            MEMORY[0x1C68F9740](v136, 0);
            *(v16 + 16) = v92;
            MEMORY[0x1C68F9740](v92, v16);

            goto LABEL_146;
          }

          v118 = makeEntity(for:)(v92);
LABEL_107:
          v16 = v118;
LABEL_146:
          a5 = v14;
LABEL_147:
          v137 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v137, v138, &v162);

          specialized ActionEventData.action<A>()(&v160);
          if (v161)
          {
            *&v158[24] = v163;
            *&v158[40] = v164;
            *&v158[56] = v165;
            *&v158[72] = v166;
            v152 = v161;
            LOBYTE(v153) = 1;
            *&v151 = v17;
            *(&v151 + 1) = v160;
            *(&v153 + 1) = v16;
            v154[0] = 0;
            *&v154[8] = 0;
            *&v154[16] = 0;
            v155 = 0uLL;
            *&v154[24] = v13;
            LOBYTE(v156) = 1;
            *(&v156 + 1) = 0;
            LOBYTE(v157) = 1;
            *(&v157 + 1) = 0;
            v158[0] = 1;
            *&v158[8] = v162;
            *&v158[88] = v150;
            a5(&v151);
            goto LABEL_149;
          }

          goto LABEL_150;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_147;
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
    *&v159[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v159);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
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
            a6 = a5;
            v15 = *a2;
            v14 = a2[1];
            v16 = a2[4];
            v17 = a2[5];
            v6.i32[0] = *(a2 + 14);
            v147 = a2[8];
            v150 = a2[6];
            v144 = a2[9];
            v18 = a2[11];
            v7 = a2[12];
            v142 = *(a2 + 104);
            v152 = a2[10];
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

        a6 = a5;
        v47 = *a2;
        v46 = a2[1];
        v48 = a2[4];
        v49 = a2[5];
        v50 = a2[8];
        v51 = a2[9];
        v143 = *(a2 + 80);
        v146 = a2[11];
        v149 = a2[7];
        v151 = a2[12];
        v152 = a2[6];
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v48, 0, v49, v72, v73, &v179);

            if (v50)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v75 = swift_dynamicCastClassUnconditional();
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
                  if (v119)
                  {
                    v50 = (*(v119 + 232))();
                    v120 = *(v50 + 16);

                    MEMORY[0x1C68F9740](v120, 0);
                    *(v50 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v50);

                    goto LABEL_116;
                  }

                  v75 = makeEntity(for:)(Entity);
                }

                v50 = v75;
              }

              else
              {
                v50 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v176);
            if (!*(&v176 + 1))
            {
              goto LABEL_150;
            }

            *&v155[8] = v176;
            *&v155[24] = v177;
            *&v155[40] = v178[0];
            *&v155[50] = *(v178 + 10);
            v121 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
            *&v156[8] = vcvtq_f64_f32(v51);
            v122 = v179;
            *&v160[24] = v180;
            *&v160[40] = v181;
            *&v160[56] = v182;
            *&v160[72] = v183;
            v155[66] = v121 & 1;
            *v155 = v70;
            *&v155[72] = v50;
            v156[0] = v143;
            *&v156[24] = v13;
            *&v157 = v149;
            *(&v157 + 1) = 0xBFF0000000000000;
            LOBYTE(v158) = 0;
            v123 = v146;
            goto LABEL_139;
          }

          v52 = makeEntity(for:)(v47);
LABEL_32:
          v53 = v52;
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

        a6 = a5;
        v35 = *a2;
        v34 = a2[1];
        v36 = a2[4];
        v37 = a2[5];
        v38 = a2[7];
        v39 = a2[8];
        v145 = *(a2 + 72);
        v148 = a2[10];
        v151 = a2[11];
        v152 = a2[6];
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
LABEL_173:
            __break(1u);
            goto LABEL_174;
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v37, v111, v112, &v179);

            if (v38)
            {
              if (REBindPointBoundComponent())
              {
                v113 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v114 = swift_dynamicCastClassUnconditional();
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

                  specialized static Entity.entityInfoType(_:)(v113);
                  if (v133)
                  {
                    v38 = (*(v133 + 232))();
                    v134 = *(v38 + 16);

                    MEMORY[0x1C68F9740](v134, 0);
                    *(v38 + 16) = v113;
                    MEMORY[0x1C68F9740](v113, v38);

                    goto LABEL_137;
                  }

                  v114 = makeEntity(for:)(v113);
                }

                v38 = v114;
              }

              else
              {
                v38 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v176);
            if (!*(&v176 + 1))
            {
              goto LABEL_150;
            }

            *&v155[8] = v176;
            *&v155[24] = v177;
            *&v155[40] = v178[0];
            *&v155[50] = *(v178 + 10);
            v135 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
            *&v156[8] = vcvtq_f64_f32(v39);
            v122 = v179;
            *&v160[24] = v180;
            *&v160[40] = v181;
            *&v160[56] = v182;
            *&v160[72] = v183;
            v155[66] = v135 & 1;
            *v155 = v109;
            *&v155[72] = v38;
            v156[0] = v145;
            v157 = 0uLL;
            *&v156[24] = v13;
            LOBYTE(v158) = 1;
            v123 = v148;
LABEL_139:
            *(&v158 + 1) = v123;
            LOBYTE(v159) = 0;
            v127 = v151;
            goto LABEL_140;
          }

          v40 = makeEntity(for:)(v35);
        }

        v41 = v40;
        goto LABEL_95;
      }

      a6 = a5;
      v60 = *a2;
      v54 = a2[1];
      v56 = a2[4];
      v61 = a2[5];
      v31 = a2[8];
      v150 = a2[7];
      v6 = a2[9];
      LOBYTE(v147) = *(a2 + 80);
      v152 = a2[6];
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
LABEL_169:
        __break(1u);
        goto LABEL_170;
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v56, 0, v61, v85, v86, &v179);

        if (v31)
        {
          if (REBindPointBoundComponent())
          {
            v87 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v88 = swift_dynamicCastClassUnconditional();
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

              specialized static Entity.entityInfoType(_:)(v87);
              if (v124)
              {
                v31 = (*(v124 + 232))();
                v125 = *(v31 + 16);

                MEMORY[0x1C68F9740](v125, 0);
                *(v31 + 16) = v87;
                MEMORY[0x1C68F9740](v87, v31);

                goto LABEL_122;
              }

              v88 = makeEntity(for:)(v87);
            }

            v31 = v88;
          }

          else
          {
            v31 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v176);
        if (!*(&v176 + 1))
        {
          goto LABEL_150;
        }

        *&v155[8] = v176;
        *&v155[24] = v177;
        *&v155[40] = v178[0];
        *&v155[50] = *(v178 + 10);
        v126 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
        *&v156[8] = vcvtq_f64_f32(v6);
        v122 = v179;
        *&v160[24] = v180;
        *&v160[40] = v181;
        *&v160[56] = v182;
        *&v160[72] = v183;
        v155[66] = v126 & 1;
        *v155 = v83;
        *&v155[72] = v31;
        v156[0] = v147;
        *&v156[24] = v13;
        *&v157 = v150;
        v127 = 0xBFF0000000000000;
        *(&v157 + 1) = 0xBFF0000000000000;
        LOBYTE(v158) = 0;
        *(&v158 + 1) = 0xBFF0000000000000;
        LOBYTE(v159) = 0;
LABEL_140:
        *(&v159 + 1) = v127;
        v160[0] = 0;
        goto LABEL_141;
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

        v153 = a5;
        v28 = *a2;
        v27 = a2[1];
        v29 = a2[5];
        v30 = a2[6];
        v31 = a2[7];
        v152 = a2[4];
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
LABEL_172:
            __break(1u);
            goto LABEL_173;
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v104, v105, &v179);

            if (!v31)
            {
              goto LABEL_132;
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
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_130:
              specialized static Entity.entityInfoType(_:)(v61);
              if (!v131)
              {
                v106 = makeEntity(for:)(v61);
                goto LABEL_90;
              }

              v31 = (*(v131 + 232))();
              v132 = *(v31 + 16);

              MEMORY[0x1C68F9740](v132, 0);
              *(v31 + 16) = v61;
              MEMORY[0x1C68F9740](v61, v31);

LABEL_132:
              specialized ActionEventData.action<A>()(&v176);
              if (*(&v176 + 1))
              {
                *&v155[8] = v176;
                *&v155[24] = v177;
                *&v155[40] = v178[0];
                *&v155[50] = *(v178 + 10);
                *&v160[24] = v180;
                *&v160[40] = v181;
                *&v160[56] = v182;
                *&v160[72] = v183;
                v155[66] = 1;
                *v155 = v60;
                *&v155[72] = v31;
                v156[0] = 0;
                *&v156[8] = 0;
                *&v156[16] = 0;
                v157 = 0uLL;
                *&v156[24] = v13;
                LOBYTE(v158) = 1;
                *(&v158 + 1) = v152;
                LOBYTE(v159) = 0;
                *(&v159 + 1) = 0;
                v160[0] = 1;
                *&v160[8] = v179;
                *&v160[88] = v30;
                v153(v155);
LABEL_149:

                v172 = *&v160[32];
                v173 = *&v160[48];
                v174 = *&v160[64];
                v175 = *&v160[80];
                v168 = v158;
                v169 = v159;
                v170 = *v160;
                v171 = *&v160[16];
                v164 = *&v155[64];
                v165 = *v156;
                v166 = *&v156[16];
                v167 = v157;
                v161 = *v155;
                v162 = *&v155[16];
                *v163 = *&v155[32];
                *&v163[16] = *&v155[48];
                v140 = &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMd;
                v141 = &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMR;
LABEL_151:
                outlined destroy of BodyTrackingComponent?(&v161, v140, v141);
                return 0;
              }

              goto LABEL_150;
            }

            goto LABEL_91;
          }

          v32 = makeEntity(for:)(v28);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v153 = a5;
      v55 = *a2;
      v54 = a2[1];
      v56 = a2[3];
      v57 = a2[5];
      v30 = a2[6];
      v31 = a2[7];
      v152 = a2[4];
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
LABEL_168:
          __break(1u);
          goto LABEL_169;
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v57, v79, v80, &v179);

          if (!v31)
          {
            goto LABEL_132;
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
              goto LABEL_132;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_130;
          }

LABEL_91:
          v31 = 0;
          goto LABEL_132;
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
      v154 = a2[4];
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
LABEL_174:
          __break(1u);
          goto LABEL_175;
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
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            a6 = a5;
            v92 = REComponentGetEntity();
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

            goto LABEL_144;
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
    v154 = a2[4];
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
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
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
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          a6 = a5;
          v92 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v118 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
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
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v17, v97, v98, &v179);

              if (!v18)
              {
                goto LABEL_127;
              }

              if (!REBindPointBoundComponent())
              {
                v18 = 0;
                goto LABEL_127;
              }

              v99 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v100 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v18 = v100;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(v99);
                if (!v128)
                {
                  v100 = makeEntity(for:)(v99);
                  goto LABEL_82;
                }

                v18 = (*(v128 + 232))();
                v129 = *(v18 + 16);

                MEMORY[0x1C68F9740](v129, 0);
                *(v18 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v18);

LABEL_127:
                specialized ActionEventData.action<A>()(&v176);
                if (*(&v176 + 1))
                {
                  *&v155[8] = v176;
                  *&v155[24] = v177;
                  *&v155[40] = v178[0];
                  *&v155[50] = *(v178 + 10);
                  v130 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
                  *&v156[8] = vcvtq_f64_f32(v7);
                  *(&v157 + 1) = v6.f32[0];
                  v122 = v179;
                  *&v160[24] = v180;
                  *&v160[40] = v181;
                  v155[66] = v130 & 1;
                  *v155 = v95;
                  *&v155[72] = v18;
                  v156[0] = v142;
                  *&v156[24] = v13;
                  *&v157 = v144;
                  LOBYTE(v158) = 0;
                  *(&v158 + 1) = v150;
                  LOBYTE(v159) = 0;
                  *(&v159 + 1) = v147;
                  v160[0] = 0;
                  *&v160[56] = v182;
                  *&v160[72] = v183;
LABEL_141:
                  *&v160[8] = v122;
                  *&v160[88] = v152;
                  a6(v155);
                  goto LABEL_149;
                }

LABEL_150:

                v161 = v176;
                v162 = v177;
                *v163 = v178[0];
                *&v163[10] = *(v178 + 10);
                v140 = &_s17RealityFoundation19PlayAnimationActionVSgMd;
                v141 = &_s17RealityFoundation19PlayAnimationActionVSgMR;
                goto LABEL_151;
              }

              goto LABEL_177;
            }

            goto LABEL_171;
          }

LABEL_144:
          specialized static Entity.entityInfoType(_:)(v92);
          if (v136)
          {
            v16 = (*(v136 + 232))();
            v137 = *(v16 + 16);

            MEMORY[0x1C68F9740](v137, 0);
            *(v16 + 16) = v92;
            MEMORY[0x1C68F9740](v92, v16);

            goto LABEL_146;
          }

          v118 = makeEntity(for:)(v92);
LABEL_107:
          v16 = v118;
LABEL_146:
          a5 = a6;
LABEL_147:
          v138 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v138, v139, &v179);

          specialized ActionEventData.action<A>()(&v176);
          if (*(&v176 + 1))
          {
            *&v155[8] = v176;
            *&v155[24] = v177;
            *&v155[40] = v178[0];
            *&v155[50] = *(v178 + 10);
            *&v160[24] = v180;
            *&v160[40] = v181;
            *&v160[56] = v182;
            *&v160[72] = v183;
            v155[66] = 1;
            *v155 = v17;
            *&v155[72] = v16;
            v156[0] = 0;
            *&v156[8] = 0;
            *&v156[16] = 0;
            v157 = 0uLL;
            *&v156[24] = v13;
            LOBYTE(v158) = 1;
            *(&v158 + 1) = 0;
            LOBYTE(v159) = 1;
            *(&v159 + 1) = 0;
            v160[0] = 1;
            *&v160[8] = v179;
            *&v160[88] = v154;
            a5(v155);
            goto LABEL_149;
          }

          goto LABEL_150;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_147;
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
    *&v161 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v161);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  static ForceEffectParameters.__fromCore(_:)(a2, v46);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v46, &v30);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA010TurbulencecD0V_Tt2B5(v5, v7, v46, &v14);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  if (sub_1C13651A4(&v30) == 1)
  {
    outlined destroy of ForceEffectParameters(v46);
    outlined consume of Data._Representation(v5, v7);
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGSgMR;
    v10 = &v30;
  }

  else
  {
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    a3(&v30);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v46);
    v12[12] = v42;
    v12[13] = v43;
    v12[14] = v44;
    v13 = v45;
    v12[8] = v38;
    v12[9] = v39;
    v12[10] = v40;
    v12[11] = v41;
    v12[4] = v34;
    v12[5] = v35;
    v12[6] = v36;
    v12[7] = v37;
    v12[0] = v30;
    v12[1] = v31;
    v12[2] = v32;
    v12[3] = v33;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v43);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v43, &v28);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm(v5, v7, v43, lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect, &v13);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  if (getEnumTag for EnvironmentResource.OptionError(&v28) == 1)
  {
    outlined destroy of ForceEffectParameters(v43);
    outlined consume of Data._Representation(v5, v7);
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGSgMR;
    v10 = &v28;
  }

  else
  {
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    a3(&v28);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v43);
    v12[12] = v40;
    v12[13] = v41;
    v12[14] = v42;
    v12[8] = v36;
    v12[9] = v37;
    v12[10] = v38;
    v12[11] = v39;
    v12[4] = v32;
    v12[5] = v33;
    v12[6] = v34;
    v12[7] = v35;
    v12[0] = v28;
    v12[1] = v29;
    v12[2] = v30;
    v12[3] = v31;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v46);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v46, &v30);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06RadialcD0V_Tt2B5(v5, v7, v46, &v14);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  if (sub_1C13651A4(&v30) == 1)
  {
    outlined destroy of ForceEffectParameters(v46);
    outlined consume of Data._Representation(v5, v7);
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGSgMR;
    v10 = &v30;
  }

  else
  {
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    a3(&v30);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v46);
    v12[12] = v42;
    v12[13] = v43;
    v12[14] = v44;
    v13 = v45;
    v12[8] = v38;
    v12[9] = v39;
    v12[10] = v40;
    v12[11] = v41;
    v12[4] = v34;
    v12[5] = v35;
    v12[6] = v36;
    v12[7] = v37;
    v12[0] = v30;
    v12[1] = v31;
    v12[2] = v32;
    v12[3] = v33;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v43);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v43, &v28);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm(v5, v7, v43, lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect, &v13);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  if (getEnumTag for EnvironmentResource.OptionError(&v28) == 1)
  {
    outlined destroy of ForceEffectParameters(v43);
    outlined consume of Data._Representation(v5, v7);
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGSgMR;
    v10 = &v28;
  }

  else
  {
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    a3(&v28);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v43);
    v12[12] = v40;
    v12[13] = v41;
    v12[14] = v42;
    v12[8] = v36;
    v12[9] = v37;
    v12[10] = v38;
    v12[11] = v39;
    v12[4] = v32;
    v12[5] = v33;
    v12[6] = v34;
    v12[7] = v35;
    v12[0] = v28;
    v12[1] = v29;
    v12[2] = v30;
    v12[3] = v31;
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  static ForceEffectParameters.__fromCore(_:)(a2, v15);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v15, __src);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm(v5, v7, v15, lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect, __dst);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  memcpy(__src, __dst, 0x110uLL);
  if (sub_1C13651E8(__src) == 1)
  {
    outlined destroy of ForceEffectParameters(v15);
    outlined consume of Data._Representation(v5, v7);
    memcpy(__src, __dst, 0x110uLL);
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGSgMR;
    v10 = __src;
  }

  else
  {
    memcpy(__src, __dst, 0x110uLL);
    a3(__src);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v15);
    memcpy(v12, __src, 0x110uLL);
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v15);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v15, __src);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm(v5, v7, v15, lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect, __dst);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  memcpy(__src, __dst, 0x110uLL);
  if (sub_1C13651E8(__src) == 1)
  {
    outlined destroy of ForceEffectParameters(v15);
    outlined consume of Data._Representation(v5, v7);
    memcpy(__src, __dst, 0x110uLL);
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGSgMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGSgMR;
    v10 = __src;
  }

  else
  {
    memcpy(__src, __dst, 0x110uLL);
    a3(__src);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v15);
    memcpy(v12, __src, 0x110uLL);
    v8 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGMd;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGMR;
    v10 = v12;
  }

  outlined destroy of BodyTrackingComponent?(v10, v8, v9);
  return 0;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA010TurbulencecD0V_Tt2B5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v4)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v13[179] = *(a3 + 176);
    *&v13[195] = *(a3 + 192);
    *&v13[211] = *(a3 + 208);
    *&v13[115] = *(a3 + 112);
    *&v13[131] = *(a3 + 128);
    *&v13[147] = *(a3 + 144);
    *&v13[163] = *(a3 + 160);
    *&v13[51] = *(a3 + 48);
    *&v13[67] = *(a3 + 64);
    *&v13[227] = *(a3 + 224);
    *&v13[83] = *(a3 + 80);
    *&v13[99] = *(a3 + 96);
    *&v13[3] = *a3;
    *&v13[19] = *(a3 + 16);
    *&v13[35] = *(a3 + 32);
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 189) = *&v13[176];
    *(a4 + 205) = *&v13[192];
    *(a4 + 221) = *&v13[208];
    *(a4 + 232) = *&v13[219];
    *(a4 + 125) = *&v13[112];
    *(a4 + 141) = *&v13[128];
    *(a4 + 157) = *&v13[144];
    *(a4 + 173) = *&v13[160];
    *(a4 + 61) = *&v13[48];
    *(a4 + 77) = *&v13[64];
    *(a4 + 93) = *&v13[80];
    *(a4 + 109) = *&v13[96];
    result = *v13;
    *(a4 + 13) = *v13;
    *(a4 + 12) = v12;
    *(a4 + 29) = *&v13[16];
    *(a4 + 45) = *&v13[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06RadialcD0V_Tt2B5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v4)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v12[183] = *(a3 + 176);
    *&v12[199] = *(a3 + 192);
    *&v12[215] = *(a3 + 208);
    *&v12[231] = *(a3 + 224);
    *&v12[119] = *(a3 + 112);
    *&v12[135] = *(a3 + 128);
    *&v12[151] = *(a3 + 144);
    *&v12[167] = *(a3 + 160);
    *&v12[55] = *(a3 + 48);
    *&v12[71] = *(a3 + 64);
    *&v12[87] = *(a3 + 80);
    *&v12[103] = *(a3 + 96);
    *&v12[7] = *a3;
    *&v12[23] = *(a3 + 16);
    *&v12[39] = *(a3 + 32);
    *a4 = v10;
    *(a4 + 185) = *&v12[176];
    *(a4 + 201) = *&v12[192];
    *(a4 + 217) = *&v12[208];
    *(a4 + 232) = *&v12[223];
    *(a4 + 121) = *&v12[112];
    *(a4 + 137) = *&v12[128];
    *(a4 + 153) = *&v12[144];
    *(a4 + 169) = *&v12[160];
    *(a4 + 57) = *&v12[48];
    *(a4 + 73) = *&v12[64];
    *(a4 + 89) = *&v12[80];
    *(a4 + 105) = *&v12[96];
    result = *v12;
    *(a4 + 9) = *v12;
    *(a4 + 25) = *&v12[16];
    *(a4 + 8) = v11;
    *(a4 + 41) = *&v12[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  a4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v6)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v15[179] = *(a3 + 176);
    *&v15[195] = *(a3 + 192);
    *&v15[211] = *(a3 + 208);
    *&v15[115] = *(a3 + 112);
    *&v15[131] = *(a3 + 128);
    *&v15[147] = *(a3 + 144);
    *&v15[163] = *(a3 + 160);
    *&v15[51] = *(a3 + 48);
    *&v15[67] = *(a3 + 64);
    *&v15[227] = *(a3 + 224);
    *&v15[83] = *(a3 + 80);
    *&v15[99] = *(a3 + 96);
    *&v15[3] = *a3;
    *&v15[19] = *(a3 + 16);
    *&v15[35] = *(a3 + 32);
    *a6 = v13;
    *(a6 + 181) = *&v15[176];
    *(a6 + 197) = *&v15[192];
    *(a6 + 213) = *&v15[208];
    *(a6 + 224) = *&v15[219];
    *(a6 + 117) = *&v15[112];
    *(a6 + 133) = *&v15[128];
    *(a6 + 149) = *&v15[144];
    *(a6 + 165) = *&v15[160];
    *(a6 + 53) = *&v15[48];
    *(a6 + 69) = *&v15[64];
    *(a6 + 85) = *&v15[80];
    *(a6 + 101) = *&v15[96];
    result = *v15;
    *(a6 + 5) = *v15;
    *(a6 + 4) = v14;
    *(a6 + 21) = *&v15[16];
    *(a6 + 37) = *&v15[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  a4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v6)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v16[183] = *(a3 + 176);
    *&v16[199] = *(a3 + 192);
    *&v16[215] = *(a3 + 208);
    *&v16[119] = *(a3 + 112);
    *&v16[135] = *(a3 + 128);
    *&v16[151] = *(a3 + 144);
    *&v16[167] = *(a3 + 160);
    *&v16[55] = *(a3 + 48);
    *&v16[71] = *(a3 + 64);
    *&v16[87] = *(a3 + 80);
    *&v16[103] = *(a3 + 96);
    *&v16[7] = *a3;
    *&v16[231] = *(a3 + 224);
    *&v16[23] = *(a3 + 16);
    *&v16[39] = *(a3 + 32);
    *a6 = v13;
    *(a6 + 16) = v14;
    *(a6 + 209) = *&v16[176];
    *(a6 + 225) = *&v16[192];
    *(a6 + 241) = *&v16[208];
    *(a6 + 256) = *&v16[223];
    *(a6 + 145) = *&v16[112];
    *(a6 + 161) = *&v16[128];
    *(a6 + 177) = *&v16[144];
    *(a6 + 193) = *&v16[160];
    *(a6 + 81) = *&v16[48];
    *(a6 + 97) = *&v16[64];
    *(a6 + 32) = v15;
    *(a6 + 113) = *&v16[80];
    *(a6 + 129) = *&v16[96];
    result = *v16;
    *(a6 + 33) = *v16;
    *(a6 + 49) = *&v16[16];
    *(a6 + 65) = *&v16[32];
  }

  return result;
}

uint64_t _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X8>)
{
  v13 = a6();
  if (a2)
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v14 + 80, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
    type metadata accessor for SceneManager();
    swift_dynamicCast();
    v15 = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
    if (v15)
    {
      goto LABEL_5;
    }

    (*(a3 + 80))(v26, a2, a3);
    if (LODWORD(v26[0]) == 36)
    {
      v15 = specialized static SceneManager.customComponentType(_:)(a2, a3);
LABEL_5:
      v16 = v15;

      if (*(a1 + 24))
      {
        goto LABEL_6;
      }

LABEL_15:
      result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      v19 = 0;
      goto LABEL_16;
    }
  }

  v16 = 0;
  if (!*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_6:
  outlined init with copy of [String : String](a1, v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  if (!v22)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pMd, &_s10RealityKit11EventSource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14RECoreBridging_pMd, &_s17RealityFoundation14RECoreBridging_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  if (!*(&v24 + 1))
  {
LABEL_12:
    outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation14RECoreBridging_pSgMd, &_s17RealityFoundation14RECoreBridging_pSgMR);
    outlined init with copy of [String : String](a1, v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v19 = Optional._bridgeToObjectiveC()();
    outlined destroy of BodyTrackingComponent?(v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_unknownObjectRelease();
    result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of ForceEffectBase(&v23, v26);
  v17 = v27;
  v18 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_16:
  *a7 = v13;
  a7[1] = v19;
  a7[2] = v16;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE59LL6handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  swift_endAccess();
  if (!*(&v19 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v18, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = *(v6 + 16);
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v21 = *(a1 + 24);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v11 + 64) = v16;
    *(v11 + 72) = 0;
    *(v11 + 16) = v6;
    *(v11 + 24) = v12;
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    *(v11 + 48) = *(a1 + 24);
    v20[3] = v15;
    v20[0] = v11;
    swift_beginAccess();
    outlined init with copy of [String : String](&v21, &v18, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v18);
    swift_unownedRetain();

    specialized Dictionary.subscript.setter(v20, a1);
    swift_endAccess();
    return v11;
  }

  return v20[0];
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v9 = *(a1 + 192);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0B5(v8);
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v9 = *(a1 + 192);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0B5(v8);
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09EmphasizecD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  v24 = *(a1 + 160);
  v25 = v3;
  v26 = *(a1 + 192);
  v4 = *(a1 + 112);
  v20 = *(a1 + 96);
  v21 = v4;
  v5 = *(a1 + 144);
  v22 = *(a1 + 128);
  v23 = v5;
  v6 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v17 = v6;
  v7 = *(a1 + 80);
  v18 = *(a1 + 64);
  v19 = v7;
  v8 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v8;
  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v16);
  if (v10)
  {
    v12 = v9;
    v13 = v10;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v17, &type metadata for EmphasizeAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v14 = v26;
    v15[3] = &type metadata for EmphasizeActionHandler;
    v15[4] = &protocol witness table for EmphasizeActionHandler;
    v15[0] = v12;
    v15[1] = v13;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v15, v14);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v12[10] = *(a1 + 160);
  v12[11] = v1;
  v13 = *(a1 + 192);
  v2 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v2;
  v3 = *(a1 + 144);
  v12[8] = *(a1 + 128);
  v12[9] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v5;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v12);
  if (v7)
  {
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = v13;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v1;
  v15 = *(a1 + 192);
  v2 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v2;
  v3 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v3;
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v7 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v14);
  if (v8)
  {
    v9 = &protocol witness table for EmphasizeActionHandler;
    v10 = &type metadata for EmphasizeActionHandler;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v13[2] = 0;
  }

  v13[0] = v7;
  v13[1] = v8;
  v13[3] = v10;
  v13[4] = v9;
  v11 = v15;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0B5(v9);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(v9, MEMORY[0x1E6998798]);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09PlayAudiocD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v21 = *(a1 + 192);
  v22 = v3;
  v23 = *(a1 + 224);
  v24 = *(a1 + 240);
  v4 = *(a1 + 144);
  v17 = *(a1 + 128);
  v18 = v4;
  v5 = *(a1 + 176);
  v19 = *(a1 + 160);
  v20 = v5;
  v6 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v6;
  v7 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v7;
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  v9 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v14);
  if (result != 1)
  {
    v11 = result;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v15, &type metadata for PlayAudioAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = v24;
    v13[3] = &type metadata for PlayAudioActionHandler;
    v13[4] = &protocol witness table for PlayAudioActionHandler;
    v13[0] = v11;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v13, v12);
    swift_endAccess();
    return sub_1C136529C(v11);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(v9, MEMORY[0x1E6998768]);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0B5(v9);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v8 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v13);
  if (v8 != 1)
  {
    sub_1C136529C(v8);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = v14;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v14[12] = *(a1 + 192);
  v14[13] = v1;
  v14[14] = *(a1 + 224);
  v15 = *(a1 + 240);
  v2 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v2;
  v3 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v3;
  v4 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v4;
  v5 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v14);
  if (v8 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  else
  {
    v10 = &protocol witness table for PlayAudioActionHandler;
    v9 = &type metadata for PlayAudioActionHandler;
  }

  v13[0] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v11 = v15;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[19], &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = __dst[37];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v5, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5Tm(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[37];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySSG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v4 = a1[15];
  v25 = a1[14];
  v26 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;
  v6 = a1[11];
  v21 = a1[10];
  v22 = v6;
  v7 = a1[5];
  v16[4] = a1[4];
  v16[5] = v7;
  v8 = a1[7];
  v17 = a1[6];
  v18 = v8;
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v16);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v17 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = *(&v26 + 1);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v15 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v13, v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySSG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v14);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v14);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = *(&v15 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySSG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySSG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v14))
  {
    v9 = 0;
    v10 = 0;
    memset(v13, 0, 24);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v13[3] = v9;
  v13[4] = v10;
  v11 = *(&v15 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySbG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v14 + 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySbG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v25 = a1[14];
  v4 = a1[9];
  v19 = a1[8];
  v20 = v4;
  v5 = a1[11];
  v21 = a1[10];
  v22 = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v16 = v6;
  v7 = a1[7];
  v17 = a1[6];
  v18 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v15, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v16 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v14 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySbG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v12[12] = a1[12];
  v12[13] = v1;
  v13 = a1[14];
  v2 = a1[9];
  v12[8] = a1[8];
  v12[9] = v2;
  v3 = a1[11];
  v12[10] = a1[10];
  v12[11] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[7];
  v12[6] = a1[6];
  v12[7] = v5;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v12, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySbG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[33];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySiG_Tt0G5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 208);
  v16[12] = *(a1 + 192);
  v16[13] = v5;
  v16[14] = *(a1 + 224);
  v17 = *(a1 + 240);
  v6 = *(a1 + 144);
  v16[8] = *(a1 + 128);
  v16[9] = v6;
  v7 = *(a1 + 176);
  v16[10] = *(a1 + 160);
  v16[11] = v7;
  v8 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v8;
  v9 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v9;
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v11 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v11;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v16, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = v17;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v14, v12);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySfG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v14 + 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySfG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v25 = a1[14];
  v4 = a1[9];
  v19 = a1[8];
  v20 = v4;
  v5 = a1[11];
  v21 = a1[10];
  v22 = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v16 = v6;
  v7 = a1[7];
  v17 = a1[6];
  v18 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v15, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v16 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v14 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySfG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v12[12] = a1[12];
  v12[13] = v1;
  v13 = a1[14];
  v2 = a1[9];
  v12[8] = a1[8];
  v12[9] = v2;
  v3 = a1[11];
  v12[10] = a1[10];
  v12[11] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[7];
  v12[6] = a1[6];
  v12[7] = v5;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v12, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySfG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR, protocol conformance descriptor for SetEntityPropertyActionHandler<A>);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, v3);
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*&v3[0]);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, v3);
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*&v3[0]);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

void _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAE9TransformVG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v8);
  if ((v9 & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[39], &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = __dst[57];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v8[1];
    v4[1] = v8[0];
    v4[2] = v5;
    v6 = v8[3];
    v4[3] = v8[2];
    v4[4] = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    swift_endAccess();
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[57];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v9);
  if (v10)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v1 = swift_allocObject();
    v4 = v9[1];
    v1[1] = v9[0];
    v1[2] = v4;
    v5 = v9[3];
    v1[3] = v9[2];
    v1[4] = v5;
  }

  v8[0] = v1;
  v8[3] = v2;
  v8[4] = v3;
  v6 = __dst[57];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, a2, a3, a4, a5, v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[45];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v1;
    v9 = v2;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    LOBYTE(v13) = v9 & 1;
  }

  v12 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = __dst[39];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[39];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v1;
    v9 = v2;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    LOBYTE(v13) = v9 & 1;
  }

  v12 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = __dst[39];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySfG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if ((v5 & 1) == 0)
  {
    v6 = result;
    v7 = v4;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[19], &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[37];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v9 = v6;
    v10 = BYTE4(v6) & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySfG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySfG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10[0] = 0;
    v10[2] = 0;
  }

  else
  {
    v7 = v1;
    v4 = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR, protocol conformance descriptor for FromToByActionHandler<A>);
    LODWORD(v10[0]) = v7;
    BYTE4(v10[0]) = BYTE4(v7) & 1;
  }

  v10[1] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v8 = __dst[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09BillboardcD0V_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(__dst, v3);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[35];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0G5(__int128 *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0G5(float32x4_t *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA04SpincD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v27 = a1[12];
  v28 = v3;
  v4 = a1[15];
  v29 = a1[14];
  v30 = v4;
  v5 = a1[9];
  v23 = a1[8];
  v24 = v5;
  v6 = a1[11];
  v25 = a1[10];
  v26 = v6;
  v7 = a1[5];
  v20[4] = a1[4];
  v20[5] = v7;
  v8 = a1[7];
  v21 = a1[6];
  v22 = v8;
  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v10 = a1[3];
  v20[2] = a1[2];
  v20[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v20);
  if ((v13 & 0x100) == 0)
  {
    v14 = result;
    v15 = v12;
    v16 = v13;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v21 + 1), &type metadata for SpinAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v17 = *(&v30 + 1);
    v19[3] = &type metadata for SpinActionHandler;
    v19[4] = &protocol witness table for SpinActionHandler;
    v18 = swift_allocObject();
    v19[0] = v18;
    *(v18 + 16) = v14;
    *(v18 + 24) = v15;
    *(v18 + 32) = v16 & 1;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v19, v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA04SpincD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA04SpincD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v21[12] = a1[12];
  v21[13] = v1;
  v2 = a1[15];
  v21[14] = a1[14];
  v22 = v2;
  v3 = a1[9];
  v21[8] = a1[8];
  v21[9] = v3;
  v4 = a1[11];
  v21[10] = a1[10];
  v21[11] = v4;
  v5 = a1[5];
  v21[4] = a1[4];
  v21[5] = v5;
  v6 = a1[7];
  v21[6] = a1[6];
  v21[7] = v6;
  v7 = a1[1];
  v21[0] = *a1;
  v21[1] = v7;
  v8 = a1[3];
  v21[2] = a1[2];
  v21[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v21);
  if ((v11 & 0x100) != 0)
  {
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14 & 1;
    v16 = &protocol witness table for SpinActionHandler;
    v17 = &type metadata for SpinActionHandler;
  }

  v20[0] = v15;
  v20[3] = v17;
  v20[4] = v16;
  v18 = *(&v22 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v20, v18);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(v10, OrbitEntityActionHandler.actionStarted(event:));
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(v10, OrbitEntityActionHandler.actionUpdated(event:));
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 4);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 8);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 16);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 32);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v35[12] = a1[12];
  v35[13] = v1;
  v2 = a1[15];
  v35[14] = a1[14];
  v36 = v2;
  v3 = a1[9];
  v35[8] = a1[8];
  v35[9] = v3;
  v4 = a1[11];
  v35[10] = a1[10];
  v35[11] = v4;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  v6 = a1[7];
  v35[6] = a1[6];
  v35[7] = v6;
  v7 = a1[1];
  v35[0] = *a1;
  v35[1] = v7;
  v8 = a1[3];
  v35[2] = a1[2];
  v35[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(v35, &v23);
  v37[8] = v31;
  v37[9] = v32;
  v37[10] = v33;
  v37[11] = v34;
  v37[4] = v27;
  v37[5] = v28;
  v37[6] = v29;
  v37[7] = v30;
  v37[0] = v23;
  v37[1] = v24;
  v37[2] = v25;
  v37[3] = v26;
  _s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v37);
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  outlined destroy of BodyTrackingComponent?(&v11, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v36 + 1);
  *&v13 = 0;
  v11 = 0u;
  v12 = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA07ImpulsecD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v4 = a1[15];
  v25 = a1[14];
  v26 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;
  v6 = a1[11];
  v21 = a1[10];
  v22 = v6;
  v7 = a1[5];
  v16[4] = a1[4];
  v16[5] = v7;
  v8 = a1[7];
  v17 = a1[6];
  v18 = v8;
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v16);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v17 + 1), &type metadata for ImpulseAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = *(&v26 + 1);
    v14 = &type metadata for ImpulseActionHandler;
    v15 = &protocol witness table for ImpulseActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v13, v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA07ImpulsecD0V_Tt0G5Tm(float32x4_t *a1)
{
  v1 = a1[13];
  v39 = a1[12];
  v40 = v1;
  v2 = a1[15];
  v41 = a1[14];
  v42 = v2;
  v3 = a1[9];
  v35 = a1[8];
  v36 = v3;
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[7];
  v33 = a1[6];
  v34 = v6;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(&v27);
  if ((result & 1) == 0)
  {
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v11 = v27;
    v12 = v28;
    v13 = v29;
    v14 = v30;
    specialized ImpulseActionHandler.applyImpulse(event:)(&v11);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = v42.i64[1];
    v12.i64[1] = &type metadata for ImpulseActionHandler;
    v13.i64[0] = &protocol witness table for ImpulseActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA07ImpulsecD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA07ImpulsecD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v14))
  {
    v9 = 0;
    v10 = 0;
    memset(v13, 0, 24);
  }

  else
  {
    v10 = &protocol witness table for ImpulseActionHandler;
    v9 = &type metadata for ImpulseActionHandler;
  }

  v13[3] = v9;
  v13[4] = v10;
  v11 = *(&v15 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA016SetEntityEnabledcD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  v21 = *(a1 + 160);
  v22 = v3;
  v23 = *(a1 + 192);
  v24 = *(a1 + 208);
  v4 = *(a1 + 112);
  v17 = *(a1 + 96);
  v18 = v4;
  v5 = *(a1 + 144);
  v19 = *(a1 + 128);
  v20 = v5;
  v6 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v6;
  v7 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v7;
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v14);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v15, &type metadata for SetEntityEnabledAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = v24;
    v12 = &type metadata for SetEntityEnabledActionHandler;
    v13 = &protocol witness table for SetEntityEnabledActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA016SetEntityEnabledcD0V_Tt0G5Tm(__int128 *a1)
{
  v1 = a1[11];
  v33 = a1[10];
  v34 = v1;
  v35 = a1[12];
  v36 = *(a1 + 26);
  v2 = a1[7];
  v29 = a1[6];
  v30 = v2;
  v3 = a1[9];
  v31 = a1[8];
  v32 = v3;
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v5 = a1[5];
  v27 = a1[4];
  v28 = v5;
  v6 = a1[1];
  v23 = *a1;
  v24 = v6;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(&v23);
  if ((result & 1) == 0)
  {
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    v22 = v36;
    v18 = v32;
    v19 = v33;
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v9 = v23;
    v10 = v24;
    specialized SetEntityEnabledActionHandler.setEntityEnabled(event:)(&v9);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = v36;
    *(&v10 + 1) = &type metadata for SetEntityEnabledActionHandler;
    *&v11 = &protocol witness table for SetEntityEnabledActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA016SetEntityEnabledcD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v1;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v3 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v5;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v11);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v7 = v12;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA016SetEntityEnabledcD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v12[10] = *(a1 + 160);
  v12[11] = v1;
  v12[12] = *(a1 + 192);
  v13 = *(a1 + 208);
  v2 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v2;
  v3 = *(a1 + 144);
  v12[8] = *(a1 + 128);
  v12[9] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v5;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v12))
  {
    v7 = 0;
    v8 = 0;
    memset(v11, 0, 24);
  }

  else
  {
    v8 = &protocol witness table for SetEntityEnabledActionHandler;
    v7 = &type metadata for SetEntityEnabledActionHandler;
  }

  v11[3] = v7;
  v11[4] = v8;
  v9 = v13;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA012NotificationcD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[11];
  v22 = a1[10];
  v23 = v3;
  v4 = a1[13];
  v24 = a1[12];
  v25 = v4;
  v5 = a1[7];
  v18 = a1[6];
  v19 = v5;
  v6 = a1[9];
  v20 = a1[8];
  v21 = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v15[0] = *a1;
  v15[1] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v15);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v16 + 1), &type metadata for NotificationAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = &type metadata for NotificationActionHandler;
    v14 = &protocol witness table for NotificationActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA012NotificationcD0V_Tt0G5Tm(__int128 *a1)
{
  v1 = a1[11];
  v34 = a1[10];
  v35 = v1;
  v2 = a1[13];
  v36 = a1[12];
  v37 = v2;
  v3 = a1[7];
  v30 = a1[6];
  v31 = v3;
  v4 = a1[9];
  v32 = a1[8];
  v33 = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  v6 = a1[5];
  v28 = a1[4];
  v29 = v6;
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(&v24);
  if ((result & 1) == 0)
  {
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v10 = v24;
    v11 = v25;
    specialized NotificationActionHandler.postNotification(event:)(&v10);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v37 + 1);
    *(&v11 + 1) = &type metadata for NotificationActionHandler;
    *&v12 = &protocol witness table for NotificationActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA012NotificationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[11];
  v12[10] = a1[10];
  v12[11] = v1;
  v2 = a1[13];
  v12[12] = a1[12];
  v13 = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[9];
  v12[8] = a1[8];
  v12[9] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a1[5];
  v12[4] = a1[4];
  v12[5] = v6;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v12);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA012NotificationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[11];
  v13[10] = a1[10];
  v13[11] = v1;
  v2 = a1[13];
  v13[12] = a1[12];
  v14 = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v13))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v9 = &protocol witness table for NotificationActionHandler;
    v8 = &type metadata for NotificationActionHandler;
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA013PlayAnimationcD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v22 = a1[12];
  v23 = v3;
  v4 = a1[15];
  v24 = a1[14];
  v25 = v4;
  v5 = a1[9];
  v18 = a1[8];
  v19 = v5;
  v6 = a1[11];
  v20 = a1[10];
  v21 = v6;
  v7 = a1[5];
  v15[4] = a1[4];
  v15[5] = v7;
  v8 = a1[7];
  v16 = a1[6];
  v17 = v8;
  v9 = a1[1];
  v15[0] = *a1;
  v15[1] = v9;
  v10 = a1[3];
  v15[2] = a1[2];
  v15[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v15);
  if (result != 1)
  {
    v12 = result;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v16 + 1), &type metadata for PlayAnimationAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v13 = *(&v25 + 1);
    v14[3] = &type metadata for PlayAnimationActionHandler;
    v14[4] = &protocol witness table for PlayAnimationActionHandler;
    v14[0] = v12;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v14, v13);
    swift_endAccess();
    return sub_1C136529C(v12);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v14);
  if (v9 != 1)
  {
    sub_1C136529C(v9);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = *(&v15 + 1);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v15[12] = a1[12];
  v15[13] = v1;
  v2 = a1[15];
  v15[14] = a1[14];
  v16 = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v15[9] = v3;
  v4 = a1[11];
  v15[10] = a1[10];
  v15[11] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[7];
  v15[6] = a1[6];
  v15[7] = v6;
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v8 = a1[3];
  v15[2] = a1[2];
  v15[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v15);
  if (v9 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for PlayAnimationActionHandler;
    v10 = &type metadata for PlayAnimationActionHandler;
  }

  v14[0] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v12 = *(&v16 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v14, v12);
  return swift_endAccess();
}

uint64_t specialized __Engine.Configuration.device.setter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *v2;
  if (REGetRetainCount() <= 1)
  {
    v7 = *(v4 + 16);
  }

  else
  {

    v5 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;

    v7 = v5;
    *v2 = v6;
  }

  return a2(v7, a1);
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(MEMORY[0x1E69E7F70], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t keypath_get_55Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = a2(*(*a1 + 16));
  result = __Engine.Configuration.toServiceSet(_:)(v4);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect()
{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect, &type metadata for TurbulenceForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TurbulenceForceEffect, &type metadata for TurbulenceForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect);
  }

  return result;
}

uint64_t partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2)
{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

unint64_t lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect()
{
  result = lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect;
  if (!lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect, &type metadata for DragForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect;
  if (!lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragForceEffect, &type metadata for DragForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect()
{
  result = lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect;
  if (!lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect, &type metadata for VortexForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect;
  if (!lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VortexForceEffect, &type metadata for VortexForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect()
{
  result = lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect;
  if (!lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect, &type metadata for RadialForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect;
  if (!lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadialForceEffect, &type metadata for RadialForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect()
{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect, &type metadata for ConstantRadialForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantRadialForceEffect, &type metadata for ConstantRadialForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect()
{
  result = lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect, &type metadata for ConstantForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConstantForceEffect, &type metadata for ConstantForceEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect);
  }

  return result;
}

uint64_t partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t *a2)
{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMR, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMR, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMR, &_s17RealityFoundation14FromToByActionVySdGSgMd, &_s17RealityFoundation14FromToByActionVySdGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

void specialized FromToByActionHandler.getStartEnd(event:base:)(uint64_t a1@<X0>, __n128 *a2@<X8>, float32x4_t a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v5 = a4;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 64);
  v10 = *(a1 + 88);
  v11 = *(a1 + 128);
  v13 = *(a1 + 144);
  v12 = *(a1 + 152);
  v14 = *(a1 + 192);
  if (v9)
  {
    v15 = a3;
    v16 = a5;
    if (*(a1 + 128))
    {
      goto LABEL_3;
    }
  }

  v52 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = *(a1 + 112);
  v57 = *(a1 + 104);
  v60 = *(a1 + 120);
  v63 = *(a1 + 144);
  v64 = *(a1 + 152);
  v69 = a3;
  v72 = a4;
  v66 = *(a1 + 32);
  v67 = a5;
  v65 = *(a1 + 48);
  v19 = *a1;
  v78 = *(a1 + 232);
  v79 = *(a1 + 248);
  v20 = *(a1 + 280);
  outlined init with copy of [String : String](a1, &v74, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(&v78, v19, v20, &v74, v69, v72, v67);
  if ((v77 & 1) == 0)
  {
    v26 = v74;
    v27 = *&v75;
    v28 = *&v76;
    if (v9)
    {
      if (v11)
      {
        outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
        a3 = v69;
        v5 = v72;
        v15 = v69;
        a4 = v72;
        a5 = v67;
        v16 = v67;
        v12 = v64;
        v13 = v63;
        goto LABEL_3;
      }
    }

    else
    {
      v29.i64[0] = v8;
      v29.i64[1] = v7;
      v50 = *&v75;
      v51 = v74;
      v49 = *&v76;
      *&v30 = specialized static Transform.* infix(_:_:)(v74, *&v75, *&v76, v29);
      v7 = v31;
      v8 = v30;
      v65 = v33;
      v66 = v32;
      if (v11)
      {
        outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
        v16 = v65;
        a4 = v66;
        v34 = 1;
        a3 = v69;
        v5 = v72;
        v12 = v64;
        v13 = v63;
        v35 = v60;
        v36 = v57;
        v38 = v53;
        v37 = v54;
        v39 = v52;
LABEL_22:
        v15.i64[0] = v8;
        v15.i64[1] = v7;
        if ((v34 & 1) == 0)
        {
          a3.i64[0] = v38;
          a3.i64[1] = v10;
          v17.n128_u64[0] = v39;
          v17.n128_u64[1] = v36;
          v18.n128_u64[0] = v37;
          v18.n128_u64[1] = v35;
LABEL_10:
          v22 = 0;
          goto LABEL_11;
        }

        a5 = v67;
LABEL_3:
        if (v14)
        {
          v17 = v5;
          v18 = a5;
        }

        else
        {
          v23.i64[0] = v13;
          v23.i64[1] = v12;
          v70 = v16;
          v73 = v15;
          v68 = a4;
          *a3.i64 = specialized static Transform.* infix(_:_:)(v15, a4.n128_f64[0], v16.n128_f64[0], v23);
          v16 = v70;
          v15 = v73;
          v17 = v24;
          v18 = v25;
          a4 = v68;
        }

        goto LABEL_10;
      }

      v27 = v50;
      v26 = v51;
      v28 = v49;
    }

    v40.i64[0] = v53;
    v40.i64[1] = v10;
    v41.n128_f64[0] = specialized static Transform.* infix(_:_:)(v26, v27, v28, v40);
    v58 = v42;
    v61 = v41;
    v55 = v43;
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    v18.n128_u64[0] = v55;
    v17.n128_u64[0] = v58;
    v10 = v61.n128_i64[1];
    v44.n128_u64[0] = v61.n128_u64[0];
    v36 = *(&v58 + 1);
    v35 = *(&v55 + 1);
    if (v9)
    {
      v44.n128_u64[1] = v61.n128_u64[1];
      v17.n128_u64[1] = *(&v58 + 1);
      v18.n128_u64[1] = *(&v55 + 1);
      v15 = v69;
      a4 = v72;
      if (v14)
      {
        v16 = v67;
        a3 = v44;
      }

      else
      {
        v56 = v18;
        v59 = v17;
        v62 = v44;
        RESRTInverse();
        v46 = v45;
        if (one-time initialization token for identity != -1)
        {
          v71 = v45;
          swift_once();
          v46 = v71;
        }

        *v47.i64 = specialized static Transform.* infix(_:_:)(v62, v59.n128_f64[0], v56.n128_f64[0], v46);
        v18 = v56;
        v17 = v59;
        v15 = v47;
        a3 = v62;
        v16 = v48;
      }

      goto LABEL_10;
    }

    v38 = v61.n128_u64[0];
    v39 = v58;
    v37 = v55;
    v34 = 0;
    v16 = v65;
    a4 = v66;
    a3 = v69;
    v5 = v72;
    v12 = v64;
    v13 = v63;
    goto LABEL_22;
  }

  outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  v22 = 1;
  v15 = 0uLL;
  a4 = 0uLL;
  v16 = 0uLL;
  a3 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
LABEL_11:
  *a2 = v15;
  a2[1] = a4;
  a2[2] = v16;
  a2[3] = a3;
  a2[4] = v17;
  a2[5] = v18;
  a2[6].n128_u8[0] = v22;
}

void specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = 0uLL;
  if ((*(a1 + 368) & 1) == 0)
  {
    specialized ActionEvent.animationState.getter(&v48);
    v8 = v49.n128_i64[1];
    if (v49.n128_u64[1])
    {
      v9 = v50.i64[0];
      __swift_project_boxed_opaque_existential_1(&v48, v49.n128_i64[1]);
      v36.i64[0] = *(v9 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v11 = type metadata accessor for Optional();
      v37.i64[0] = v30;
      v35.i64[0] = v11;
      v12 = *(v11 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = v30 - v14;
      (v36.i64[0])(v8, v9, v13);
      v16 = *(AssociatedTypeWitness - 8);
      if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
      {
        (*(v12 + 8))(v15, v35.i64[0]);
        AssociatedConformanceWitness = 0;
        v45 = 0u;
        v46 = 0u;
      }

      else
      {
        *(&v46 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
        (*(v16 + 32))(boxed_opaque_existential_1, v15, AssociatedTypeWitness);
      }

      __swift_destroy_boxed_opaque_existential_1(&v48);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v48, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      v45 = 0u;
      v46 = 0u;
      AssociatedConformanceWitness = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
    if (!swift_dynamicCast() || (v44 = 0, v18 = v43.n128_u32[0], v35 = v42, v36 = v41, v37 = v43, specialized FromToByActionHandler.getStartEnd(event:base:)(a1, &v48, v41, v42, v43), (v54 & 1) != 0))
    {
      v4 = 1;
      v5 = 0uLL;
      v6 = 0uLL;
      v3 = 0uLL;
      goto LABEL_18;
    }

    v33 = v49;
    v34 = v48;
    v31 = v51;
    v32 = v50;
    v30[0] = v53;
    v30[1] = v52;
    v19 = *(a1 + 249);
    v38[0] = *(a1 + 208);
    *(v38 + 13) = *(a1 + 221);
    AnimationTimingFunction.coreEasingFunction.getter();
    if (*(v20 + 16))
    {
      REEasingFunctionEvaluateEx();
    }

    RESRTLerp();
    if (one-time initialization token for identity == -1)
    {
      if ((v19 & 1) == 0)
      {
LABEL_17:
        v4 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v33 = v6;
      v34 = v3;
      v32 = v5;
      swift_once();
      v5 = v32;
      v6 = v33;
      v3 = v34;
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v33 = v6;
    v34 = v3;
    v32 = v5;
    *&v21 = simd_matrix4x4(v35);
    v38[0] = v21;
    v38[1] = v22;
    v39 = v23;
    v40 = v24;
    simd_float4x4.scale(_:)(v36);
    v25.i64[0] = __PAIR64__(v37.u32[1], v18);
    v25.i64[1] = vextq_s8(v37, v37, 8uLL).u64[0];
    v55.columns[2] = v39;
    v55.columns[3] = vaddq_f32(v40, v25);
    v55.columns[3].i32[3] = v40.i32[3];
    v55.columns[0] = v38[0];
    v55.columns[1] = v38[1];
    v56 = __invert_f4(v55);
    v31 = v56.columns[0];
    v35 = v56.columns[1];
    v36 = v56.columns[2];
    v37 = v56.columns[3];
    *&v26 = simd_matrix4x4(v32);
    v38[0] = v26;
    v38[1] = v27;
    v39 = v28;
    v40 = v29;
    simd_float4x4.scale(_:)(v34);
    REMakeSRTFromMatrix();
    goto LABEL_17;
  }

  v4 = 1;
  v5 = 0uLL;
  v6 = 0uLL;
LABEL_18:
  *a2 = v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3].n128_u8[0] = v4;
}

double specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  v5.i64[0] = 0;
  if (*(a1 + 272))
  {
    return *v5.i64;
  }

  v62 = v4;
  v63 = v3;
  v64 = v1;
  v65 = v2;
  v7 = *(a1 + 264);
  specialized ActionEvent.animationState.getter();
  v8 = v58;
  if (v58)
  {
    v9 = v59;
    __swift_project_boxed_opaque_existential_1(&v57, v58);
    v10 = *(v9 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = type metadata accessor for Optional();
    v56.i64[0] = &v54;
    v13 = *(v12 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v54 - v15;
    v10(v8, v9, v14);
    v17 = *(AssociatedTypeWitness - 8);
    if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v13 + 8))(v16, v12);
      AssociatedConformanceWitness = 0;
      memset(v60, 0, sizeof(v60));
    }

    else
    {
      *(&v60[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v57, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v60, 0, sizeof(v60));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  type metadata accessor for simd_quatf(0);
  if (!swift_dynamicCast())
  {
    v5.i64[0] = 0;
    return *v5.i64;
  }

  v19 = *(a1 + 32);
  v21 = *(a1 + 48);
  v20 = *(a1 + 56);
  v22 = *(a1 + 64);
  v24 = *(a1 + 80);
  v23 = *(a1 + 88);
  v25 = *(a1 + 96);
  v54 = v57;
  if (v19)
  {
    v26 = v57;
    if ((v22 & 1) == 0)
    {
      v26 = v57;
      if ((v25 & 1) == 0)
      {
        *v27.f32 = v21;
        v27.i64[1] = v20;
        v28.i64[0] = v24;
        v28.i64[1] = v23;
        v29 = vmulq_f32(v28, xmmword_1C1899C90);
        v30 = vmulq_f32(v28, v28);
        *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v30.i32[0] = vadd_f32(*v30.i8, vdup_lane_s32(*v30.i8, 1)).u32[0];
        v31 = vrecpe_f32(v30.u32[0]);
        v32 = vmul_f32(v31, vrecps_f32(v30.u32[0], v31));
        v33 = vmulq_n_f32(v29, vmul_f32(v32, vrecps_f32(v30.u32[0], v32)).f32[0]);
        v34 = vnegq_f32(v33);
        v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
        v36 = vrev64q_s32(v33);
        v36.i32[0] = v34.i32[1];
        v36.i32[3] = v34.i32[2];
        v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v33, v27, 3), v36, v27, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), v21, 1), vextq_s8(v35, v35, 8uLL), v21.f32[0]));
      }

      goto LABEL_17;
    }
  }

  else
  {
    v26 = *(a1 + 16);
    if ((v22 & 1) == 0)
    {
LABEL_17:
      v56 = v26;
      *v37.f32 = v21;
      v37.i64[1] = v20;
LABEL_19:
      v55 = v37;
      goto LABEL_20;
    }
  }

  v56 = v26;
  if ((v25 & 1) == 0)
  {
    v38.i64[0] = v24;
    v38.i64[1] = v23;
    v39 = vnegq_f32(v38);
    v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
    v41 = vrev64q_s32(v38);
    v41.i32[0] = v39.i32[1];
    v41.i32[3] = v39.i32[2];
    v37 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v26.f32, 1), vextq_s8(v40, v40, 8uLL), v26.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v38, v26, 3), v41, v26, 2));
    goto LABEL_19;
  }

  v55 = v57;
LABEL_20:
  v42 = *(a1 + 153);
  v60[0] = *(a1 + 112);
  *(v60 + 13) = *(a1 + 125);
  v43 = v7;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v44 + 16))
  {
    REEasingFunctionEvaluateEx();
    v43 = v45;
  }

  simd_slerp(v56, v55, v43);
  if (v42)
  {
    v46 = vmulq_f32(v54, v54);
    *v46.i8 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
    v46.i32[0] = vadd_f32(*v46.i8, vdup_lane_s32(*v46.i8, 1)).u32[0];
    v47 = vrecpe_f32(v46.u32[0]);
    v48 = vmul_f32(v47, vrecps_f32(v46.u32[0], v47));
    v49 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v48, vrecps_f32(v46.u32[0], v48)).f32[0]);
    v50 = vnegq_f32(v5);
    v51 = vtrn2q_s32(v5, vtrn1q_s32(v5, v50));
    v52 = vrev64q_s32(v5);
    v52.i32[0] = v50.i32[1];
    v52.i32[3] = v50.i32[2];
    v5.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v50, 8uLL), *v49.f32, 1), vextq_s8(v51, v51, 8uLL), v49.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v5, v49, 3), v52, v49, 2)).u64[0];
  }

  return *v5.i64;
}

uint64_t specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  v5.i64[0] = 0;
  if (*(a1 + 272))
  {
    return v5.i64[0];
  }

  v48 = v4;
  v49 = v3;
  v50 = v1;
  v51 = v2;
  v7 = *(a1 + 264);
  specialized ActionEvent.animationState.getter();
  v8 = v44;
  if (v44)
  {
    v9 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    v10 = *(v9 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = type metadata accessor for Optional();
    v42.i64[0] = &v39;
    v13 = *(v12 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v39 - v15;
    v10(v8, v9, v14);
    v17 = *(AssociatedTypeWitness - 8);
    if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v13 + 8))(v16, v12);
      AssociatedConformanceWitness = 0;
      memset(v46, 0, sizeof(v46));
    }

    else
    {
      *(&v46[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v43, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v46, 0, sizeof(v46));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (!swift_dynamicCast())
  {
    v5.i64[0] = 0;
    return v5.i64[0];
  }

  v19 = v43;
  v20 = *(a1 + 32);
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 153);
  v39 = v43;
  if (v20)
  {
    v28 = v43;
    if ((v23 & 1) == 0)
    {
      v28 = v43;
      if ((v26 & 1) == 0)
      {
        v29.i64[0] = v22;
        v29.i64[1] = v21;
        v42 = v29;
        v30.i64[0] = v24;
        v30.i64[1] = v25;
        *v31.i64 = SIMD4<>.__rk_animationInverse.getter(v30);
        v32 = v42;
        v32.i32[0] = v22;
        v28 = vaddq_f32(v31, v32);
      }

      goto LABEL_17;
    }

LABEL_15:
    v41 = v28;
    if ((v26 & 1) == 0)
    {
      v33.i64[1] = v25;
      v33.i64[0] = v24;
      v19 = vaddq_f32(v28, v33);
    }

    goto LABEL_18;
  }

  v28 = *(a1 + 16);
  if (v23)
  {
    goto LABEL_15;
  }

LABEL_17:
  v41 = v28;
  v19.i64[0] = v22;
  v19.i64[1] = v21;
LABEL_18:
  v40 = v19;
  v46[0] = *(a1 + 112);
  v34 = v46[0];
  *(v46 + 13) = *(a1 + 125);
  v34.f32[0] = v7;
  v42 = v34;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v35 + 16))
  {
    REEasingFunctionEvaluateEx();
    v42 = v36;
  }

  v5 = vmlaq_n_f32(v41, vsubq_f32(v40, v41), v42.f32[0]);
  if (v27)
  {
    v41 = v5;
    *v37.i64 = SIMD4<>.__rk_animationInverse.getter(v39);
    v5.i64[0] = vaddq_f32(v41, v37).u64[0];
  }

  return v5.i64[0];
}

{
  v5 = 0;
  if (*(a1 + 272))
  {
    return v5;
  }

  v45 = v4;
  v46 = v3;
  v47 = v1;
  v48 = v2;
  v7 = *(a1 + 264);
  specialized ActionEvent.animationState.getter();
  v8 = v41;
  if (v41)
  {
    v9 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    v10 = *(v9 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = type metadata accessor for Optional();
    *&v39 = &v36;
    v13 = *(v12 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v36 - v15;
    v10(v8, v9, v14);
    v17 = *(AssociatedTypeWitness - 8);
    if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v13 + 8))(v16, v12);
      AssociatedConformanceWitness = 0;
      memset(v43, 0, sizeof(v43));
    }

    else
    {
      *(&v43[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v40, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v43, 0, sizeof(v43));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v19 = v40.i32[0];
  v20 = *(a1 + 32);
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v36 = v40;
  if (v20)
  {
    v27 = v40;
    if ((v23 & 1) == 0)
    {
      v27 = v40;
      if ((v26 & 1) == 0)
      {
        *v27.f32 = vadd_f32(vsub_f32(0, v24), v22);
        v27.f32[2] = *&v21 + (0.0 - COERCE_FLOAT(vdupq_n_s64(v25).i32[2]));
        v27.i32[3] = 0;
      }

      goto LABEL_17;
    }

LABEL_15:
    v38 = v27;
    if (v26)
    {
      v37 = v40;
    }

    else
    {
      *v29.f32 = vadd_f32(*v27.f32, v24);
      v29.i64[1] = vaddq_f32(v27, vdupq_n_s64(v25)).u32[2];
      v37 = v29;
    }

    goto LABEL_19;
  }

  v27 = *(a1 + 16);
  if (v23)
  {
    goto LABEL_15;
  }

LABEL_17:
  *v28.f32 = v22;
  v28.i64[1] = v21;
  v37 = v28;
  v38 = v27;
LABEL_19:
  v30 = *(a1 + 153);
  v43[0] = *(a1 + 112);
  v31 = v43[0];
  *(v43 + 13) = *(a1 + 125);
  *&v31 = v7;
  v39 = v31;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v32 + 16))
  {
    REEasingFunctionEvaluateEx();
    v39 = v33;
  }

  v34 = vmlaq_n_f32(v38, vsubq_f32(v37, v38), *&v39).u64[0];
  if (v30)
  {
    return vadd_f32(vsub_f32(0, __PAIR64__(v36.u32[1], v19)), v34);
  }

  else
  {
    return v34;
  }
}

{
  if (*(a1 + 224))
  {
    return 0;
  }

  v39 = v6;
  v40 = v5;
  v41 = v4;
  v42 = v3;
  v43 = v1;
  v44 = v2;
  v9 = *(a1 + 216);
  specialized ActionEvent.animationState.getter();
  v10 = v35;
  if (v35)
  {
    v11 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v12 = *(v11 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for Optional();
    *&v33 = &v32;
    v15 = *(v14 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = &v32 - v17;
    v12(v10, v11, v16);
    v19 = *(AssociatedTypeWitness - 8);
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v18, v14);
      AssociatedConformanceWitness = 0;
      memset(v37, 0, sizeof(v37));
    }

    else
    {
      *(&v37[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v34, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v37, 0, sizeof(v37));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v22 = v34[0];
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  if (*(a1 + 24))
  {
    *&v21 = v34[0];
    if ((*(a1 + 40) & 1) == 0)
    {
      *&v21 = v34[0];
      if ((*(a1 + 56) & 1) == 0)
      {
        *&v21 = (0.0 - v24.f32[0]) + v23.f32[0];
        *(&v21 + 1) = (0.0 - v24.f32[1]) + v23.f32[1];
      }

      goto LABEL_18;
    }

LABEL_16:
    v32 = v21;
    if (v25)
    {
      v26 = v34[0];
    }

    else
    {
      v26 = vadd_f32(*&v21, v24);
    }

    goto LABEL_20;
  }

  *&v21 = *(a1 + 16);
  if (*(a1 + 40))
  {
    goto LABEL_16;
  }

LABEL_18:
  v32 = v21;
  v26 = v23;
LABEL_20:
  v27 = *(a1 + 105);
  v37[0] = *(a1 + 64);
  v28 = v37[0];
  *(v37 + 13) = *(a1 + 77);
  *&v28 = v9;
  v33 = v28;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v29 + 16))
  {
    REEasingFunctionEvaluateEx();
    v33 = v30;
  }

  v31 = vmla_n_f32(*&v32, vsub_f32(v26, *&v32), *&v33);
  if (v27)
  {
    return vadd_f32(vsub_f32(0, v22), v31);
  }

  else
  {
    return v31;
  }
}

{
  if (*(a1 + 224))
  {
    return 0;
  }

  v36 = v6;
  v37 = v5;
  v38 = v4;
  v39 = v3;
  v40 = v1;
  v41 = v2;
  v9 = *(a1 + 216);
  specialized ActionEvent.animationState.getter();
  v10 = v32;
  if (v32)
  {
    v11 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = *(v11 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for Optional();
    v30 = &v30;
    v15 = *(v14 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = &v31[-1] - v17;
    v12(v10, v11, v16);
    v19 = *(AssociatedTypeWitness - 8);
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v18, v14);
      AssociatedConformanceWitness = 0;
      memset(v34, 0, sizeof(v34));
    }

    else
    {
      *(&v34[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
      (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v31, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v34, 0, sizeof(v34));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v21 = *v31;
  v22 = *(a1 + 48);
  if (*(a1 + 24))
  {
    v23 = *v31;
    if ((*(a1 + 40) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v23 = *v31;
      }

      else
      {
        v23 = *(a1 + 32) - v22;
      }

      goto LABEL_20;
    }

LABEL_17:
    if (*(a1 + 56))
    {
      v24 = *v31;
    }

    else
    {
      v24 = v23 + v22;
    }

    goto LABEL_21;
  }

  v23 = *(a1 + 16);
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

LABEL_20:
  v24 = *(a1 + 32);
LABEL_21:
  v25 = *(a1 + 105);
  v34[0] = *(a1 + 64);
  *(v34 + 13) = *(a1 + 77);
  v26 = v9;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v27 + 16))
  {
    REEasingFunctionEvaluateEx();
    v26 = v28;
  }

  v29 = v24 * v26 + v23 * (1.0 - v26);
  if (v25)
  {
    v29 = v29 - v21;
  }

  return *&v29;
}

unint64_t specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  if (*(a1 + 208))
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 200);
  specialized ActionEvent.animationState.getter();
  v3 = v28;
  if (v28)
  {
    v4 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v5 = *(v4 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for Optional();
    v26 = &v26;
    v8 = *(v7 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v27[-1] - v10;
    v5(v3, v4, v9);
    v12 = *(AssociatedTypeWitness - 8);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v8 + 8))(v11, v7);
      AssociatedConformanceWitness = 0;
      memset(v30, 0, sizeof(v30));
    }

    else
    {
      *(&v30[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(v12 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v27, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v30, 0, sizeof(v30));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
LABEL_14:
    v17 = 0.0;
    v18 = 1;
    return LODWORD(v17) | (v18 << 32);
  }

  v14 = *v27;
  v15 = *(a1 + 32);
  if (*(a1 + 20))
  {
    v16 = *v27;
    if ((*(a1 + 28) & 1) == 0)
    {
      if (*(a1 + 36))
      {
        v16 = *v27;
      }

      else
      {
        v16 = *(a1 + 24) - v15;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (*(a1 + 36))
    {
      v19 = *v27;
    }

    else
    {
      v19 = v16 + v15;
    }

    goto LABEL_20;
  }

  v16 = *(a1 + 16);
  if (*(a1 + 28))
  {
    goto LABEL_16;
  }

LABEL_19:
  v19 = *(a1 + 24);
LABEL_20:
  v20 = *(a1 + 89);
  v30[0] = *(a1 + 48);
  *(v30 + 13) = *(a1 + 61);
  v21 = v2;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v22 + 16))
  {
    REEasingFunctionEvaluateEx();
    v21 = v23;
  }

  v24 = (v19 * v21) + (v16 * (1.0 - v21));
  v18 = 0;
  if (v20)
  {
    v24 = v24 - v14;
  }

  v17 = v24;
  return LODWORD(v17) | (v18 << 32);
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction;
  if (!lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction, &type metadata for EmphasizeAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction;
  if (!lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction, &type metadata for EmphasizeAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction);
  }

  return result;
}

void partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

unint64_t lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction()
{
  result = lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction;
  if (!lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAudioAction, &type metadata for PlayAudioAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction;
  if (!lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAudioAction, &type metadata for PlayAudioAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction);
  }

  return result;
}

uint64_t partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

void specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v12 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v12);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static AnimationLogger.logger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v42 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v42);
      _os_log_impl(&dword_1C1358000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1C6902A30](v17, -1, -1);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 16);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  v39 = *(a1 + 80);
  v41 = *(a1 + 96);
  v40 = *(a1 + 104);
  v8 = *(a1 + 112);
  if ((*(a1 + 32) & 1) == 0)
  {
    v51 = *(a1 + 16);
    *&v42 = v2;
    outlined init with copy of BindTarget.EntityPath(&v51, &v48);
    v18 = Entity.subscript.getter(&v42);

    if (v18)
    {
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v49 = &type metadata for Transform;
        v50 = &protocol witness table for Transform;
        v27 = swift_allocObject();
        *&v48 = v27;
        v27[2] = v5;
        v27[3] = v6;
        v27[4] = v39;
        v27[5] = v7;
        v27[6] = v41;
        v27[7] = v40;
        outlined init with take of ForceEffectBase(&v48, &v42);
        __swift_project_boxed_opaque_existential_1(&v42, v44);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddRESRTValue();

        __swift_destroy_boxed_opaque_existential_1(&v42);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v28 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v29 = String.init(cString:)();
    MEMORY[0x1C68F3410](v29);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v30 = v42;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static AnimationLogger.logger);

    v14 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v42 = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, *(&v30 + 1), &v42);
      _os_log_impl(&dword_1C1358000, v14, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1C6902A30](v34, -1, -1);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v38 = v4;
  v10 = SceneNullable;
  v11 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v11)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v10);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    v4 = v38;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v35)
    {
      v36 = (*(v35 + 232))();
      v37 = *(v36 + 16);

      MEMORY[0x1C68F9740](v37, 0);
      *(v36 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v36);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    v4 = v38;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v48 = v42;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v42 = v5;
    *(&v42 + 1) = v6;
    v43 = v39;
    v44 = v7;
    v45 = v41;
    v46 = v40;
    v47 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9TransformVSgMd, &_s10RealityKit9TransformVSgMR);
    v20 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v20);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v21 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static AnimationLogger.logger);

    v14 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v42 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, *(&v21 + 1), &v42);
      _os_log_impl(&dword_1C1358000, v14, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1C6902A30](v25, -1, -1);
      MEMORY[0x1C6902A30](v24, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = *(a1 + 8);
    v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v16 = Entity.subscript.getter(&v40);

    if (v16)
    {
      if (!v5)
      {
LABEL_20:
        v40 = 0;
        v41 = 0xE000000000000000;
        _StringGuts.grow(_:)(101);
        MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
        *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
        v18 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v18);

        MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
        v37 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v19 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v19);

        MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

        MEMORY[0x1C68F3410](v4, v3);

        MEMORY[0x1C68F3410](39, 0xE100000000000000);
        v21 = v40;
        v20 = v41;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static AnimationLogger.logger);

        v12 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v40 = v25;
          *v24 = 136315138;
          *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v40);
          _os_log_impl(&dword_1C1358000, v12, v23, "%s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1C6902A30](v25, -1, -1);
          MEMORY[0x1C6902A30](v24, -1, -1);
        }

        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v27 = String.init(cString:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    v28 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v40);
      _os_log_impl(&dword_1C1358000, v12, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v8 = SceneNullable;
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v8);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_15:
    v38 = MEMORY[0x1E69E6158];
    v39 = &protocol witness table for String;
    *&v37 = v6;
    *(&v37 + 1) = v5;
    outlined init with take of ForceEffectBase(&v37, &v40);
    __swift_project_boxed_opaque_existential_1(&v40, v42);

    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    String.utf8CString.getter();
    REKeyValueComponentAddStringValue();

    __swift_destroy_boxed_opaque_existential_1(&v40);
    return;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v9 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v9);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v39);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if ((*(a1 + 24) & 1) == 0)
  {
    v42 = *(a1 + 8);
    v39 = v2;
    outlined init with copy of BindTarget.EntityPath(&v42, &v36);
    v15 = Entity.subscript.getter(&v39);

    if (v15)
    {
      if (v5 != 2)
      {
LABEL_24:
        v37 = MEMORY[0x1E69E6370];
        v38 = &protocol witness table for Bool;
        LOBYTE(v36) = v5 & 1;
        outlined init with take of ForceEffectBase(&v36, &v39);
        __swift_project_boxed_opaque_existential_1(&v39, v41);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddBoolValue();

        __swift_destroy_boxed_opaque_existential_1(&v39);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v25 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v25);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v26 = String.init(cString:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v28 = v39;
    v27 = v40;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v39);
      _os_log_impl(&dword_1C1358000, v11, v30, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1C6902A30](v32, -1, -1);
      MEMORY[0x1C6902A30](v31, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v7 = SceneNullable;
  v8 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v8)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v7);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if (v5 != 2)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v33)
    {
      v34 = (*(v33 + 232))();
      v35 = *(v34 + 16);

      MEMORY[0x1C68F9740](v35, 0);
      *(v34 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v34);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if (v5 != 2)
    {
      goto LABEL_24;
    }

LABEL_15:
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    LOBYTE(v36) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v19 = v39;
    v18 = v40;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v39);
      _os_log_impl(&dword_1C1358000, v11, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1C6902A30](v23, -1, -1);
      MEMORY[0x1C6902A30](v22, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = *(a1 + 8);
    v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v16 = Entity.subscript.getter(&v40);

    if (v16)
    {
      if ((v6 & 1) == 0)
      {
LABEL_24:
        v38 = MEMORY[0x1E69E6530];
        v39 = &protocol witness table for Int;
        *&v37 = v5;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddInt64Value();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v27 = String.init(cString:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    v28 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v40);
      _os_log_impl(&dword_1C1358000, v12, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v8 = SceneNullable;
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v8);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v37 = v5;
    BYTE8(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v40;
    v19 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v40);
      _os_log_impl(&dword_1C1358000, v12, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v11 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v41 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v41);
      _os_log_impl(&dword_1C1358000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1C6902A30](v16, -1, -1);
      MEMORY[0x1C6902A30](v15, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 16);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v44 = *(a1 + 16);
    *&v41 = v2;
    outlined init with copy of BindTarget.EntityPath(&v44, &v38);
    v17 = Entity.subscript.getter(&v41);

    if (v17)
    {
      if ((v7 & 1) == 0)
      {
LABEL_24:
        type metadata accessor for simd_quatf(0);
        v39 = v26;
        v40 = &protocol witness table for simd_quatf;
        v27 = swift_allocObject();
        *&v38 = v27;
        *(v27 + 16) = v5;
        *(v27 + 24) = v6;
        outlined init with take of ForceEffectBase(&v38, &v41);
        __swift_project_boxed_opaque_existential_1(&v41, v43);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddQuatFValue();

        __swift_destroy_boxed_opaque_existential_1(&v41);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v28 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v29 = String.init(cString:)();
    MEMORY[0x1C68F3410](v29);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v30 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v41 = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, *(&v30 + 1), &v41);
      _os_log_impl(&dword_1C1358000, v13, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1C6902A30](v34, -1, -1);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v9 = SceneNullable;
  v10 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v10)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v9);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v35)
    {
      v36 = (*(v35 + 232))();
      v37 = *(v36 + 16);

      MEMORY[0x1C68F9740](v37, 0);
      *(v36 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v36);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v38 = v41;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v41 = v5;
    *(&v41 + 1) = v6;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10simd_quatfaSgMd, &_sSo10simd_quatfaSgMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v38;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v41 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, *(&v20 + 1), &v41);
      _os_log_impl(&dword_1C1358000, v13, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v11 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v40 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1C6902A30](v16, -1, -1);
      MEMORY[0x1C6902A30](v15, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 16);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v43 = *(a1 + 16);
    *&v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v17 = Entity.subscript.getter(&v40);

    if (v17)
    {
      if ((v7 & 1) == 0)
      {
LABEL_24:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        v39 = &protocol witness table for SIMD4<A>;
        v26 = swift_allocObject();
        *&v37 = v26;
        *(v26 + 16) = v5;
        *(v26 + 24) = v6;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat4Value();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v27 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v28 = String.init(cString:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, *(&v29 + 1), &v40);
      _os_log_impl(&dword_1C1358000, v13, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v9 = SceneNullable;
  v10 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v10)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v9);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v37 = v40;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v40 = v5;
    *(&v40 + 1) = v6;
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGSgMd, &_ss5SIMD4VySfGSgMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v37;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, *(&v20 + 1), &v40);
      _os_log_impl(&dword_1C1358000, v13, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v11 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v40 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1C6902A30](v16, -1, -1);
      MEMORY[0x1C6902A30](v15, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 16);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v43 = *(a1 + 16);
    *&v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v17 = Entity.subscript.getter(&v40);

    if (v17)
    {
      if ((v7 & 1) == 0)
      {
LABEL_24:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v39 = &protocol witness table for SIMD3<A>;
        v26 = swift_allocObject();
        *&v37 = v26;
        *(v26 + 16) = v5;
        *(v26 + 24) = v6;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat3Value();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v27 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v28 = String.init(cString:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, *(&v29 + 1), &v40);
      _os_log_impl(&dword_1C1358000, v13, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v9 = SceneNullable;
  v10 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v10)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v9);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v37 = v40;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v40 = v5;
    *(&v40 + 1) = v6;
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGSgMd, &_ss5SIMD3VySfGSgMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v37;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v13 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, *(&v20 + 1), &v40);
      _os_log_impl(&dword_1C1358000, v13, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = *(a1 + 8);
    v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v16 = Entity.subscript.getter(&v40);

    if (v16)
    {
      if ((v6 & 1) == 0)
      {
LABEL_24:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v39 = &protocol witness table for SIMD2<A>;
        *&v37 = v5;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat2Value();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v27 = String.init(cString:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    v28 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v40);
      _os_log_impl(&dword_1C1358000, v12, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v8 = SceneNullable;
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v8);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v37 = v5;
    BYTE8(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGSgMd, &_ss5SIMD2VySfGSgMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v40;
    v19 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v40);
      _os_log_impl(&dword_1C1358000, v12, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = *(a1 + 8);
    v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v16 = Entity.subscript.getter(&v40);

    if (v16)
    {
      if ((v6 & 1) == 0)
      {
LABEL_24:
        v38 = MEMORY[0x1E69E63B0];
        v39 = &protocol witness table for Double;
        *&v37 = v5;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddDoubleValue();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v27 = String.init(cString:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    v28 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v40);
      _os_log_impl(&dword_1C1358000, v12, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v8 = SceneNullable;
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v8);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v37 = v5;
    BYTE8(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v40;
    v19 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v40);
      _os_log_impl(&dword_1C1358000, v12, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || !swift_weakLoadStrong())
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v10 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v10);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v40);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = *(a1 + 8);
    v40 = v2;
    outlined init with copy of BindTarget.EntityPath(&v43, &v37);
    v16 = Entity.subscript.getter(&v40);

    if (v16)
    {
      if ((v6 & 1) == 0)
      {
LABEL_24:
        v38 = MEMORY[0x1E69E6448];
        v39 = &protocol witness table for Float;
        LODWORD(v37) = v5;
        outlined init with take of ForceEffectBase(&v37, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloatValue();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    REEntityGetName();
    v27 = String.init(cString:)();
    MEMORY[0x1C68F3410](v27);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v29 = v40;
    v28 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v40);
      _os_log_impl(&dword_1C1358000, v12, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v8 = SceneNullable;
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v8);
  }

  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(EntityByName);
    if (v34)
    {
      v35 = (*(v34 + 232))();
      v36 = *(v35 + 16);

      MEMORY[0x1C68F9740](v36, 0);
      *(v35 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v35);
    }

    else
    {
      makeEntity(for:)(EntityByName);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    LODWORD(v37) = v5;
    BYTE4(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v18 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v4, v3);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v20 = v40;
    v19 = v41;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v40);
      _os_log_impl(&dword_1C1358000, v12, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}