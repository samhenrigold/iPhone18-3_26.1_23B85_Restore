void sub_1B6A1EE4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, _BYTE *a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, unint64_t *a16, uint64_t a17, uint64_t a18, unint64_t *a19, void (*a20)(uint64_t), uint64_t (*a21)(uint64_t, unint64_t, void (*)(void), uint64_t), uint64_t (*a22)(uint64_t, unint64_t, void (*)(void), uint64_t))
{
  v159 = a8;
  v167 = a7;
  v166 = a6;
  v172 = a5;
  v176 = a2;
  v169 = a16;
  sub_1B6A24908(0, a16, a17, a18, type metadata accessor for EventSubmitResult);
  v164 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v141[-v25];
  v156 = a19;
  v170 = a17;
  v171 = a18;
  sub_1B6A24908(0, a19, a17, a18, type metadata accessor for ProcessEvent);
  v153 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v141[-v27];
  v158 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v141[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v168);
  v174 = &v141[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = sub_1B6AB8DB0();
  v162 = *(v163 - 8);
  v30 = MEMORY[0x1EEE9AC00](v163);
  v161 = &v141[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v160 = &v141[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v141[-v34];
  v36 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v36);
  v175 = &v141[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v141[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_1B6AB90F0();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v141[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = swift_projectBox();
  swift_beginAccess();
  v154 = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v152 = v45;
    v151 = a4;
    v173 = Strong;
    v47 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v44 = v47;
    v48 = *MEMORY[0x1E69E8020];
    v49 = *MEMORY[0x1E69E8020];
    v150 = *(v42 + 104);
    v150(v44, v49, v41);
    v50 = v47;
    v51 = sub_1B6AB9110();
    v149 = *(v42 + 8);
    v149(v44, v41);
    if ((v51 & 1) == 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    sub_1B698A2A4(v176, v40, type metadata accessor for SessionObserverChange);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        return;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v142 = v48;
      v143 = v42 + 104;
      v53 = *v40;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B6A1B07C(v166, v167, &v182);
        v179 = v182;
        v180 = v183;
        v181 = v184;
        v54 = sub_1B69B8DBC(&v179);
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0;
      }

      v144 = v41;
      v60 = v159;
      v61 = v159[1];
      v148 = *v159;

      sub_1B6AB8DA0();
      v62 = (v60 + v36[6]);
      v63 = v62[1];
      v159 = *v62;
      v145 = v54;
      v176 = v53;
      if (v54)
      {
        v64 = v54[3];
        v147 = v54[2];
        v65 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
        v66 = *(v54 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
        if (v66)
        {
          v146 = *(v54 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
          v51 = v64;

          goto LABEL_19;
        }

        v51 = v64;

        v68 = v176;
      }

      else
      {
        v67 = *(v53 + 24);
        v147 = *(v53 + 16);
        v68 = v53;
        v51 = v67;

        v65 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
      }

      v66 = *(v68 + v65 + 8);
      v146 = *(v68 + v65);

LABEL_19:
      v69 = v175;
      *v175 = v148;
      v69[1] = v61;
      v70 = v36[5];
      v71 = v162;
      v72 = v35;
      v35 = v163;
      v162[4](&v70[v69], v72, v163);
      v73 = (v69 + v36[6]);
      *v73 = v159;
      v73[1] = v63;
      v74 = (v69 + v36[7]);
      *v74 = v147;
      v74[1] = v51;
      v75 = (v69 + v36[8]);
      *v75 = v146;
      v75[1] = v66;
      v76 = v71[2];
      v77 = v160;
      (v76)(v160, v176 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v35);
      v159 = v70;
      v78 = &v70[v69];
      v79 = v161;
      (v76)(v161, v78, v35);
      v80 = v174;
      (v76)(v174, v77, v35);
      v81 = &v80[*(v168 + 20)];
      v148 = v71 + 2;
      (v76)(v81, v79, v35);
      sub_1B6AB8D00();
      v83 = v82;
      v84 = v71[1];
      (v84)(v79, v35);
      (v84)(v77, v35);
      v85 = v83 * 1000.0;
      if (COERCE__INT64(fabs(v83 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v86 = v172;
        if (v85 > -9.22337204e18)
        {
          v162 = v76;
          if (v85 < 9.22337204e18)
          {
            v87 = v174;
            *&v174[*(v168 + 24)] = v85;
            v88 = v152;
            v89 = swift_beginAccess();
            v90 = *(v158 + 28);
            MEMORY[0x1EEE9AC00](v89);
            *&v141[-16] = v175;
            *&v141[-8] = v87;
            v51 = 0;
            *(v88 + v90) = sub_1B6A115A8(a20, &v141[-32], v91);
            swift_endAccess();

            v92 = v166;
            v93 = v167;
            v94 = v151;
            v95 = v173;
            if ((a21(v166, v167, v151, v86) & 1) == 0 || (sub_1B6A23928(v92, v93, v94, v86, v169, v170, v171) & 1) == 0 || (a22(v92, v93, v94, v86) & 1) == 0)
            {
              goto LABEL_29;
            }

            v96 = v152;
            swift_beginAccess();
            v97 = v157;
            sub_1B698A2A4(v96, v157, type metadata accessor for Sequence);
            v98 = *(v95 + 216);
            ObjectType = swift_getObjectType();
            (*(v98 + 8))(&v179, ObjectType, v98);
            v35 = v179;
            v100 = *(v95 + 88);
            v101 = *&v100[OBJC_IVAR___AAAccessQueue_queue];
            *v44 = v101;
            v102 = v144;
            v150(v44, v142, v144);
            v103 = v101;
            LOBYTE(v101) = sub_1B6AB9110();
            v104 = (v149)(v44, v102);
            if (v101)
            {
              MEMORY[0x1EEE9AC00](v104);
              *&v141[-16] = v35;
              *&v141[-8] = v97;
              v115 = sub_1B69BF2DC(v100, v105, &v141[-32]);

              sub_1B6995008(v97, type metadata accessor for Sequence);
              if (v115)
              {
                v116 = v152;
                swift_beginAccess();
                v118 = *v116;
                v117 = v116[1];
                v119 = v153;
                v120 = v155;
                (v162)(&v155[v153[11]], v159 + v175, v163);
                sub_1B69C1678(a14, v120 + v119[14]);
                *v120 = v118;
                *(v120 + 8) = v117;
                *(v120 + 24) = 0x302E312E30;
                *(v120 + 32) = 0xE500000000000000;
                *(v120 + 16) = v115;
                v121 = (v120 + v119[12]);
                *v121 = a10;
                v121[1] = a11;
                v122 = v120 + v119[13];
                *v122 = a12;
                *(v122 + 8) = a13 & 1;
                *(v120 + v119[15]) = xmmword_1B6AC0320;
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  v123 = swift_unknownObjectWeakLoadStrong();

                  v124 = v115;

                  v125 = v151;
                  v126 = v156;
                  if (v123)
                  {
                    sub_1B6A11750(v120, v156, v170, v171);
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  v136 = v115;
                  v125 = v151;
                  v126 = v156;
                }

                if (v125)
                {
                  v137 = v165;
                  v138 = v170;
                  v139 = v171;
                  sub_1B6A23DD4(v120, v165, v126, v170, v171, type metadata accessor for ProcessEvent);
                  swift_storeEnumTagMultiPayload();
                  v125(v137);

                  sub_1B6A16B84(v137, v169, v138, v139, type metadata accessor for EventSubmitResult);
                  sub_1B6A16B84(v120, v126, v138, v139, type metadata accessor for ProcessEvent);
                  goto LABEL_47;
                }

                sub_1B6A16B84(v120, v126, v170, v171, type metadata accessor for ProcessEvent);

                goto LABEL_46;
              }

              v127 = v152;
              if (qword_1EDBCCEE0 != -1)
              {
                swift_once();
              }

              v128 = qword_1EDBCCB28;
              v129 = sub_1B6AB98D0();
              sub_1B6AB8F70("Privacy-invalid sequence identified, will NOT submit...", 55, 2, &dword_1B697C000, v128, v129, MEMORY[0x1E69E7CC0]);
              v130 = v151;
              if (v151)
              {
                swift_beginAccess();
                v132 = *v127;
                v131 = v127[1];
                sub_1B6A23D80();
                v133 = swift_allocError();
                *v134 = v132;
                v134[1] = v131;
                v135 = v165;
                *v165 = v133;
                swift_storeEnumTagMultiPayload();

                v130(v135);

                sub_1B6A16B84(v135, v169, v170, v171, type metadata accessor for EventSubmitResult);
                goto LABEL_30;
              }

LABEL_29:

LABEL_30:
              sub_1B6995008(v174, type metadata accessor for TimedData);
              v58 = type metadata accessor for EventData;
              v59 = v175;
              goto LABEL_31;
            }

LABEL_53:
            __break(1u);
            swift_once();
            v168 = qword_1EDBCCB28;
            v106 = sub_1B6AB98F0();
            sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_1B6ABF500;
            *&v179 = 0;
            *(&v179 + 1) = 0xE000000000000000;
            v177 = v166;
            v178 = v167;
            sub_1B6A24908(0, v35, v170, v171, type metadata accessor for EventSubmit);
            sub_1B6AB9DF0();
            v108 = v179;
            v109 = MEMORY[0x1E69E6158];
            *(v107 + 56) = MEMORY[0x1E69E6158];
            v110 = sub_1B698CEC0();
            *(v107 + 64) = v110;
            *(v107 + 32) = v108;
            *&v179 = 0;
            *(&v179 + 1) = 0xE000000000000000;
            v177 = v51;
            sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
            sub_1B6AB9DF0();
            v111 = v179;
            *(v107 + 96) = v109;
            *(v107 + 104) = v110;
            *(v107 + 72) = v111;
            sub_1B6AB8F70("Failed to gracefully create event from available data events, event=%{public}@, error=%{public}@", 96, 2, &dword_1B697C000, v168, v106, v107);

            v112 = v151;
            if (v151)
            {
              v113 = v165;
              *v165 = v51;
              swift_storeEnumTagMultiPayload();
              v114 = v51;
              v112(v113);

              sub_1B6A16B84(v113, v169, v170, v171, type metadata accessor for EventSubmitResult);
LABEL_47:
              sub_1B6995008(v174, type metadata accessor for TimedData);
              sub_1B6995008(v175, type metadata accessor for EventData);
              swift_beginAccess();
              v140 = *(a15 + 16);
              *(a15 + 16) = 0;

              return;
            }

LABEL_46:

            goto LABEL_47;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v58 = type metadata accessor for SessionObserverChange;
    v59 = v40;
LABEL_31:
    sub_1B6995008(v59, v58);
    return;
  }

  if (a4)
  {
    sub_1B6A16B30();
    v55 = swift_allocError();
    *v56 = xmmword_1B6AC0310;
    v57 = v165;
    *v165 = v55;
    swift_storeEnumTagMultiPayload();
    a4(v57);
    sub_1B6A16B84(v57, v169, v170, v171, type metadata accessor for EventSubmitResult);
  }
}

BOOL sub_1B6A201D0(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v46 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v43 - v6);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = NSUserDefaults.overrideSamplingThreshold.getter();
  v14 = v13;

  v15 = a2 >> 62;
  if (v14)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        v12 = *(v46 + OBJC_IVAR___AARawEvent_samplingThreshold);
        goto LABEL_11;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v12 = [ObjCClassFromMetadata samplingThreshold];
        goto LABEL_11;
      }
    }

    if (swift_unknownObjectWeakLoadStrong() && (v17 = sub_1B69BA028(), v19 = v18, swift_unknownObjectRelease(), (v19 & 1) == 0))
    {
      v12 = v17;
    }

    else
    {
      v12 = 100;
    }
  }

LABEL_11:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v20 = v12;
  sub_1B69BA084(v10);
  swift_unknownObjectRelease();
  v21 = sub_1B6AB8E40();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1B6994FAC(v10, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    v12 = v20;
LABEL_14:
    v23 = -1;
    if (v12 >= -1)
    {
      return v12 >= v23;
    }

LABEL_17:
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v25 = sub_1B6AB8F90();
    __swift_project_value_buffer(v25, qword_1EDBCFDA8);
    v26 = sub_1B6AB8F80();
    v27 = sub_1B6AB98D0();
    v28 = os_log_type_enabled(v26, v27);
    v45 = v12;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v44 = v15;
      v15 = v29;
      v43 = swift_slowAlloc();
      v47 = v23;
      v48 = v43;
      *v15 = 134218242;
      *(v15 + 4) = v12;
      *(v15 + 12) = 2080;
      v30 = sub_1B6ABA080();
      v32 = a3;
      v33 = sub_1B698F63C(v30, v31, &v48);

      *(v15 + 14) = v33;
      a3 = v32;
      _os_log_impl(&dword_1B697C000, v26, v27, "Event threshold of %ld is lower than the current sampling value of %s", v15, 0x16u);
      v34 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B8C99550](v34, -1, -1);
      v35 = v15;
      LODWORD(v15) = v44;
      MEMORY[0x1B8C99550](v35, -1, -1);
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v36 = [swift_getObjCClassFromMetadata() eventName];
        v37 = sub_1B6AB92E0();
        v39 = v38;

        v12 = v45;
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v37 = *(v46 + OBJC_IVAR___AARawEvent_name);
      v39 = *(v46 + OBJC_IVAR___AARawEvent_name + 8);

      v12 = v45;
      if (!a3)
      {
LABEL_28:

        return v12 >= v23;
      }
    }

    else
    {
      v39 = 0xEC000000746E6576;
      v37 = 0x4564656764697242;
      v12 = v45;
      if (!a3)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    sub_1B6A23EF0();
    v40 = swift_allocError();
    *v41 = v37;
    v41[1] = v39;
    v41[2] = v12;
    v41[3] = v23;
    *v7 = v40;
    swift_storeEnumTagMultiPayload();
    a3(v7);
    sub_1B6A16B84(v7, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return v12 >= v23;
  }

  v24 = sub_1B6A6E548();
  (*(v22 + 8))(v10, v21);
  v12 = v20;
  v23 = v24;
  if (v12 < v24)
  {
    goto LABEL_17;
  }

  return v12 >= v23;
}

BOOL sub_1B6A20734(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v46 = a1;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v43 - v6);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = NSUserDefaults.overrideSamplingThreshold.getter();
  v14 = v13;

  v15 = a2 >> 62;
  if (v14)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        v12 = *(v46 + OBJC_IVAR___AARawEvent_samplingThreshold);
        goto LABEL_11;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v12 = [ObjCClassFromMetadata samplingThreshold];
        goto LABEL_11;
      }
    }

    if (swift_unknownObjectWeakLoadStrong() && (v17 = sub_1B69BA028(), v19 = v18, swift_unknownObjectRelease(), (v19 & 1) == 0))
    {
      v12 = v17;
    }

    else
    {
      v12 = 100;
    }
  }

LABEL_11:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v20 = v12;
  sub_1B69BA084(v10);
  swift_unknownObjectRelease();
  v21 = sub_1B6AB8E40();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1B6994FAC(v10, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    v12 = v20;
LABEL_14:
    v23 = -1;
    if (v12 >= -1)
    {
      return v12 >= v23;
    }

LABEL_17:
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v25 = sub_1B6AB8F90();
    __swift_project_value_buffer(v25, qword_1EDBCFDA8);
    v26 = sub_1B6AB8F80();
    v27 = sub_1B6AB98D0();
    v28 = os_log_type_enabled(v26, v27);
    v45 = v12;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v44 = v15;
      v15 = v29;
      v43 = swift_slowAlloc();
      v47 = v23;
      v48 = v43;
      *v15 = 134218242;
      *(v15 + 4) = v12;
      *(v15 + 12) = 2080;
      v30 = sub_1B6ABA080();
      v32 = a3;
      v33 = sub_1B698F63C(v30, v31, &v48);

      *(v15 + 14) = v33;
      a3 = v32;
      _os_log_impl(&dword_1B697C000, v26, v27, "Event threshold of %ld is lower than the current sampling value of %s", v15, 0x16u);
      v34 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B8C99550](v34, -1, -1);
      v35 = v15;
      LODWORD(v15) = v44;
      MEMORY[0x1B8C99550](v35, -1, -1);
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v36 = [swift_getObjCClassFromMetadata() eventName];
        v37 = sub_1B6AB92E0();
        v39 = v38;

        v12 = v45;
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v37 = *(v46 + OBJC_IVAR___AARawEvent_name);
      v39 = *(v46 + OBJC_IVAR___AARawEvent_name + 8);

      v12 = v45;
      if (!a3)
      {
LABEL_28:

        return v12 >= v23;
      }
    }

    else
    {
      v39 = 0xEC000000746E6576;
      v37 = 0x457972616D6D7553;
      v12 = v45;
      if (!a3)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    sub_1B6A23EF0();
    v40 = swift_allocError();
    *v41 = v37;
    v41[1] = v39;
    v41[2] = v12;
    v41[3] = v23;
    *v7 = v40;
    swift_storeEnumTagMultiPayload();
    a3(v7);
    sub_1B6A16B84(v7, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
    return v12 >= v23;
  }

  v24 = sub_1B6A6E548();
  (*(v22 + 8))(v10, v21);
  v12 = v20;
  v23 = v24;
  if (v12 < v24)
  {
    goto LABEL_17;
  }

  return v12 >= v23;
}

uint64_t sub_1B6A20C98(_BYTE *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v35 - v10);
  v12 = *(v4 + 32);
  if (*(v12 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v13 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v13 == 1)
    {
      v37 = a4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_] & 1) != 0 && (objc_msgSend(ObjCClassFromMetadata, sel_requiresDiagnosticsConsent))
      {
        return 1;
      }

      v15 = [ObjCClassFromMetadata respondsToSelector_];
      a4 = v37;
      if ((v15 & 1) != 0 && ![ObjCClassFromMetadata requiresTrackingConsent])
      {
        return 1;
      }
    }

    else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) != 0 || (a1[OBJC_IVAR___AARawEvent_requiresTrackingConsent] & 1) == 0)
    {
      return 1;
    }
  }

  v16 = *(v12 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v16 + 20));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 20));
  if (!v17)
  {
    return 1;
  }

  v36 = a3;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v18 = 0x4564656764697242;
  v19 = sub_1B6AB8F90();
  __swift_project_value_buffer(v19, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v20 = sub_1B6AB8F80();
  v21 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  if (os_log_type_enabled(v20, v21))
  {
    v37 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446210;
    if (v13)
    {
      if (v13 == 1)
      {
        v35 = [swift_getObjCClassFromMetadata() eventName];
        v24 = sub_1B6AB92E0();
        v26 = v25;
      }

      else
      {
        v24 = *&a1[OBJC_IVAR___AARawEvent_name];
        v26 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v24 = 0x4564656764697242;
      v26 = 0xEC000000746E6576;
    }

    v29 = sub_1B698F63C(v24, v26, &v38);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1B697C000, v20, v21, "Tracking consent denied for event: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1B8C99550](v23, -1, -1);
    MEMORY[0x1B8C99550](v22, -1, -1);

    v18 = 0x4564656764697242;
    v28 = v36;
    if (!v36)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v28 = v36;
  if (v36)
  {
LABEL_24:
    if (v13)
    {
      if (v13 == 1)
      {
        v30 = [swift_getObjCClassFromMetadata() eventName];
        v18 = sub_1B6AB92E0();
        v32 = v31;
      }

      else
      {
        v18 = *&a1[OBJC_IVAR___AARawEvent_name];
        v32 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v32 = 0xEC000000746E6576;
    }

    sub_1B6A23E48();
    v33 = swift_allocError();
    *v34 = v18;
    v34[1] = v32;
    *v11 = v33;
    swift_storeEnumTagMultiPayload();
    v28(v11);
    sub_1B6A16B84(v11, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  }

  return 0;
}

uint64_t sub_1B6A21108(_BYTE *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v35 - v10);
  v12 = *(v4 + 32);
  if (*(v12 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v13 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v13 == 1)
    {
      v37 = a4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_] & 1) != 0 && (objc_msgSend(ObjCClassFromMetadata, sel_requiresDiagnosticsConsent))
      {
        return 1;
      }

      v15 = [ObjCClassFromMetadata respondsToSelector_];
      a4 = v37;
      if ((v15 & 1) != 0 && ![ObjCClassFromMetadata requiresTrackingConsent])
      {
        return 1;
      }
    }

    else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) != 0 || (a1[OBJC_IVAR___AARawEvent_requiresTrackingConsent] & 1) == 0)
    {
      return 1;
    }
  }

  v16 = *(v12 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v16 + 20));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 20));
  if (!v17)
  {
    return 1;
  }

  v36 = a3;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v18 = 0x457972616D6D7553;
  v19 = sub_1B6AB8F90();
  __swift_project_value_buffer(v19, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v20 = sub_1B6AB8F80();
  v21 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  if (os_log_type_enabled(v20, v21))
  {
    v37 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446210;
    if (v13)
    {
      if (v13 == 1)
      {
        v35 = [swift_getObjCClassFromMetadata() eventName];
        v24 = sub_1B6AB92E0();
        v26 = v25;
      }

      else
      {
        v24 = *&a1[OBJC_IVAR___AARawEvent_name];
        v26 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v24 = 0x457972616D6D7553;
      v26 = 0xEC000000746E6576;
    }

    v29 = sub_1B698F63C(v24, v26, &v38);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1B697C000, v20, v21, "Tracking consent denied for event: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1B8C99550](v23, -1, -1);
    MEMORY[0x1B8C99550](v22, -1, -1);

    v18 = 0x457972616D6D7553;
    v28 = v36;
    if (!v36)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v28 = v36;
  if (v36)
  {
LABEL_24:
    if (v13)
    {
      if (v13 == 1)
      {
        v30 = [swift_getObjCClassFromMetadata() eventName];
        v18 = sub_1B6AB92E0();
        v32 = v31;
      }

      else
      {
        v18 = *&a1[OBJC_IVAR___AARawEvent_name];
        v32 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v32 = 0xEC000000746E6576;
    }

    sub_1B6A23E48();
    v33 = swift_allocError();
    *v34 = v18;
    v34[1] = v32;
    *v11 = v33;
    swift_storeEnumTagMultiPayload();
    v28(v11);
    sub_1B6A16B84(v11, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  }

  return 0;
}

uint64_t sub_1B6A21578(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v48 = a8;
  v49 = a1;
  v50 = a7;
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v9 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1B6AB9110();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = *(a5 + 16);
    v22 = (a5 + 32);
    v23 = (a5 + 32);
    while (v21)
    {
      v24 = *v23++;
      --v21;
      if (v24 == 2)
      {
        sub_1B69BEDE8(a2, a3, 0, 0, 1, &v54);
        v25 = v56;
        result = sub_1B6A23F44(&v54, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        if (v25)
        {
          return result;
        }

        break;
      }
    }

    swift_beginAccess();
    v27 = *(v9 + 128);
    if (*(v27 + 16))
    {

      v28 = sub_1B6993940(a2, a3);
      if (v29)
      {
        sub_1B6982544(*(v27 + 56) + 40 * v28, &v54);

        sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
        sub_1B6A244C4(0);
        if (swift_dynamicCast())
        {
          v15 = v51;
          v30 = v52;
          v31 = v53;
LABEL_12:
          v32 = *(a5 + 16);
          v45 = v31;
          v46 = v30;
          while (v32)
          {
            v33 = *v22++;
            --v32;
            if (v33 == 1)
            {

              v15 = MEMORY[0x1E69E7CC0];
              break;
            }
          }

          LOBYTE(v18) = a4 & 1;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain_n();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v15 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    goto LABEL_12;
  }

  __break(1u);
LABEL_22:
  v15 = sub_1B69E41B4(0, v15[2] + 1, 1, v15);
LABEL_17:
  v44 = a3;
  v47 = a2;
  v35 = v15[2];
  v34 = v15[3];
  v36 = v18;
  v37 = a6;
  if (v35 >= v34 >> 1)
  {
    v15 = sub_1B69E41B4((v34 > 1), v35 + 1, 1, v15);
  }

  v38 = v50;

  v39 = v49;
  swift_unknownObjectRelease();
  v15[2] = v35 + 1;
  v40 = &v15[6 * v35];
  v40[4] = v39;
  v40[5] = a5;
  *(v40 + 48) = v36;
  *(v40 + 49) = HIBYTE(a4) & 1;
  v40[7] = v37;
  v40[8] = v38;
  v40[9] = v48;
  sub_1B6A244C4(0);
  v56 = v41;
  v57 = &off_1F2E77398;
  *&v54 = v15;
  *(&v54 + 1) = v46;
  v55 = v45;
  swift_beginAccess();
  v42 = v44;

  v43 = v47;
  sub_1B699A480(&v54, v47, v42);
  swift_endAccess();
  sub_1B6A4EDB4(v43, v42);
  return sub_1B6A4F44C(v43, v42);
}

uint64_t sub_1B6A2196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a5;
  v53 = a4;
  v51 = a3;
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  v10 = v9;
  v11 = *(v9 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v54 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = sub_1B6AB90F0();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*(v6 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  v22 = sub_1B6AB9110();
  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    v50 = v11;
    sub_1B6A225FC(0, &qword_1EB95B638, type metadata accessor for PushEvent);
    v24 = v23;
    v25 = a1 + *(v23 + 36);
    v19 = *v25;
    v22 = *(v25 + 8);
    v26 = *(a2 + 16);
    v27 = (a2 + 32);
    v28 = (a2 + 32);
    while (v26)
    {
      v29 = *v28++;
      --v26;
      if (v29 == 2)
      {
        sub_1B69BEDE8(v19, v22, 0, 0, 1, &v58);
        v30 = v60;
        result = sub_1B6A23F44(&v58, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        if (v30)
        {
          return result;
        }

        break;
      }
    }

    swift_beginAccess();
    v32 = *(v6 + 128);
    if (*(v32 + 16))
    {

      v33 = sub_1B6993940(v19, v22);
      if (v34)
      {
        sub_1B6982544(*(v32 + 56) + 40 * v33, &v58);

        sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
        sub_1B6A225FC(0, &qword_1EB95B640, type metadata accessor for DataEventStack);
        if (swift_dynamicCast())
        {
          v16 = v55;
          v35 = v56;
          v36 = v57;
LABEL_12:
          v37 = *(a2 + 16);
          v48 = v36;
          v49 = v35;
          while (v37)
          {
            v38 = *v27++;
            --v37;
            if (v38 == 1)
            {

              v16 = MEMORY[0x1E69E7CC0];
              break;
            }
          }

          v39 = *(a1 + *(v24 + 40));
          v40 = *(a1 + *(v24 + 44));
          sub_1B698A2A4(a1, v15, type metadata accessor for SummaryEventData);
          *&v15[v10[9]] = a2;
          v15[v10[10]] = v39;
          v15[v10[11]] = v40;
          v41 = &v15[v10[12]];
          v42 = v52;
          v43 = v53;
          *v41 = v51;
          v41[1] = v43;
          *&v15[v10[13]] = v42;
          v10 = v54;
          sub_1B6A22484(v15, v54);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
    v35 = v19;
    v36 = v22;
    goto LABEL_12;
  }

  __break(1u);
LABEL_22:
  v16 = sub_1B69E431C(0, v16[2] + 1, 1, v16);
LABEL_17:
  v44 = v50;
  v46 = v16[2];
  v45 = v16[3];
  if (v46 >= v45 >> 1)
  {
    v16 = sub_1B69E431C((v45 > 1), v46 + 1, 1, v16);
  }

  sub_1B6A22504(v15);
  v16[2] = v46 + 1;
  sub_1B6A2257C(v10, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46);
  sub_1B6A225FC(0, &qword_1EB95B640, type metadata accessor for DataEventStack);
  v60 = v47;
  v61 = &off_1F2E77398;
  *&v58 = v16;
  *(&v58 + 1) = v49;
  v59 = v48;
  swift_beginAccess();

  sub_1B699A480(&v58, v19, v22);
  swift_endAccess();
  sub_1B6A4EDB4(v19, v22);
  return sub_1B6A4F44C(v19, v22);
}

uint64_t sub_1B6A21EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      sub_1B69E85A4();
      a1 = sub_1B6ABA330();
      v12 = v13;
    }

    swift_beginAccess();
    v14 = *(v2 + 128);
    v15 = *(v14 + 16);

    if (v15)
    {

      v16 = sub_1B6993940(a1, v12);
      if (v17)
      {
        sub_1B6982544(*(v14 + 56) + 40 * v16, &v21);

        sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
        sub_1B6A244C4(0);
        v19 = v18;
        if (swift_dynamicCast())
        {
          if (*(v25 + 16))
          {
            sub_1B6A16420();
            swift_unknownObjectRelease();
            v23 = v19;
            v24 = &off_1F2E77398;
            v21 = v25;
            v22 = v26;
            swift_beginAccess();
            sub_1B699A480(&v21, a1, v12);
            return swift_endAccess();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A22150@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    v4 = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      LOBYTE(v3) = 0;
      goto LABEL_9;
    }

    result = [ObjCClassFromMetadata timestampGranularity];
    if (result < 5)
    {
      v3 = 0x302040100uLL >> (8 * result);
LABEL_9:
      a3 = v4;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
    if (v6 < 5)
    {
      v3 = 0x302040100uLL >> (8 * v6);
LABEL_10:
      *a3 = v3;
      return result;
    }
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B6A22244@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!(a2 >> 62))
  {
    LOBYTE(v5) = 2;
    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    v6 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
    if (v6 >= 5)
    {
      goto LABEL_12;
    }

    v5 = 0x302040100uLL >> (8 * v6);
LABEL_11:
    *a3 = v5;
    return result;
  }

  v3 = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata respondsToSelector_];
  if ((result & 1) == 0)
  {
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  result = [ObjCClassFromMetadata timestampGranularity];
  if (result < 5)
  {
    v5 = 0x302040100uLL >> (8 * result);
LABEL_10:
    a3 = v3;
    goto LABEL_11;
  }

LABEL_12:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B6A22340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = a2 >> 62;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    result = *(a1 + OBJC_IVAR___AARawEvent_timeDurationGranularity);
    if (result >= 4)
    {
      goto LABEL_12;
    }

    LODWORD(v3) = 0x1010100u >> (8 * result);
LABEL_11:
    *a3 = v3;
    a3[1] = result;
    return result;
  }

  v4 = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
    LOBYTE(v3) = 0;
    result = 0;
    goto LABEL_10;
  }

  result = [ObjCClassFromMetadata timeDurationGranularity];
  if (result < 4)
  {
    LODWORD(v3) = (0xEu >> (result & 0xF)) & 1;
LABEL_10:
    a3 = v4;
    goto LABEL_11;
  }

LABEL_12:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void *sub_1B6A22434(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B6A22454@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B6A22484(uint64_t a1, uint64_t a2)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A22504(uint64_t a1)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A2257C(uint64_t a1, uint64_t a2)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B6A225FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SummaryEventData(255);
    v7 = sub_1B69ACD84(&qword_1EDBC91F8, type metadata accessor for SummaryEventData, &unk_1B6AC5B94);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B6A226C4(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v34 = a2;
  v35 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v32[1] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v32 - v7);
  v9 = sub_1B6AB8DB0();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v16 = *(a3 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  memset(v38, 0, sizeof(v38));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B6A24990;
  *(v17 + 24) = v15;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v30 = swift_allocError();
    *v31 = xmmword_1B6AC0310;
    *v8 = v30;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a4);

    sub_1B6A232DC(v8, a4);

    sub_1B6A16B84(v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v19 = Strong;
  v20 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v14 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  _Block_copy(a4);

  v21 = v20;
  v22 = sub_1B6AB9110();
  result = (*(v12 + 8))(v14, v11);
  if (v22)
  {
    v24 = v33;
    sub_1B6AB8DA0();
    v25 = MEMORY[0x1EEE9AC00](*(v19 + 88));
    v26 = v35;
    v32[-10] = v19;
    v32[-9] = v26;
    v32[-8] = v16 | 0x4000000000000000;
    LOBYTE(v32[-7]) = v27;
    v32[-6] = v24;
    *&v32[-5] = v28;
    v32[-3] = v38;
    v32[-2] = sub_1B6A249C8;
    v32[-1] = v17;
    sub_1B6995F94(v25, sub_1B6A249B0, &v32[-12], v29);

    (*(v36 + 8))(v24, v37);
LABEL_5:
    sub_1B6981634(v38);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A22B08(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v31 = a2;
  v32 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v30 - v6);
  v8 = sub_1B6AB8DB0();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  memset(v35, 0, sizeof(v35));
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B6A24990;
  *(v16 + 24) = v15;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v28 = swift_allocError();
    *v29 = xmmword_1B6AC0310;
    *v7 = v28;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a4);

    sub_1B6A232DC(v7, a4);

    sub_1B6A16B84(v7, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v18 = Strong;
  v19 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v14 = v19;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  _Block_copy(a4);

  v20 = v19;
  v21 = sub_1B6AB9110();
  result = (*(v12 + 8))(v14, v11);
  if (v21)
  {
    sub_1B6AB8DA0();
    v23 = MEMORY[0x1EEE9AC00](*(v18 + 88));
    v24 = v32;
    *(&v30 - 10) = v18;
    *(&v30 - 9) = v24;
    *(&v30 - 8) = 0x8000000000000000;
    *(&v30 - 56) = v25;
    *(&v30 - 6) = v10;
    *(&v30 - 5) = v26;
    *(&v30 - 3) = v35;
    *(&v30 - 2) = sub_1B6A249C8;
    *(&v30 - 1) = v16;
    sub_1B6995F94(v23, sub_1B6A249B0, (&v30 - 12), v27);

    (*(v33 + 8))(v10, v34);
LABEL_5:
    sub_1B6981634(v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A22F28(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v30 = a1;
  v31 = a3;
  v29[3] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v29 - v7);
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  v32 = a5;
  *(v13 + 16) = a5;
  memset(v33, 0, sizeof(v33));
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B6A24990;
  *(v14 + 24) = v13;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v26 = swift_allocError();
    *v27 = xmmword_1B6AC0310;
    *v8 = v26;
    swift_storeEnumTagMultiPayload();

    v28 = v32;
    _Block_copy(v32);

    sub_1B6A232DC(v8, v28);

    sub_1B6A16B84(v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v16 = Strong;
  v17 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v17;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  _Block_copy(v32);

  v18 = v17;
  v19 = sub_1B6AB9110();
  result = (*(v10 + 8))(v12, v9);
  if (v19)
  {
    v21 = MEMORY[0x1EEE9AC00](*(v16 + 88));
    v22 = v30;
    *&v29[-20] = v16;
    *&v29[-18] = v22;
    *&v29[-16] = v23;
    LOBYTE(v29[-14]) = v24;
    *&v29[-12] = v31;
    *&v29[-10] = v25;
    *&v29[-6] = v33;
    *&v29[-4] = sub_1B6A249C8;
    *&v29[-2] = v14;
    sub_1B6995F94(v21, sub_1B6A249B0, &v29[-24], v33);

LABEL_5:
    sub_1B6981634(v33);
  }

  __break(1u);
  return result;
}

void sub_1B6A232DC(uint64_t a1, uint64_t a2)
{
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - v6);
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29.receiver - v9);
  sub_1B6A23DD4(a1, &v29 - v9, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    v13 = sub_1B6AB8A60();
    (*(a2 + 16))(a2, 0, v13);
  }

  else
  {
    sub_1B6A243B0(v10, v7);
    v15 = *v7;
    v14 = v7[1];
    v17 = v7[3];
    v16 = v7[4];
    v18 = v7[2];
    v19 = (v7 + *(v5 + 48));
    v21 = *v19;
    v20 = v19[1];
    v22 = type metadata accessor for BridgedProcessEvent();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___AAProcessEvent_name];
    *v24 = v15;
    *(v24 + 1) = v14;
    v25 = &v23[OBJC_IVAR___AAProcessEvent_version];
    *v25 = v17;
    *(v25 + 1) = v16;
    *&v23[OBJC_IVAR___AAProcessEvent_json] = v18;
    v26 = &v23[OBJC_IVAR___AAProcessEvent_groupName];
    *v26 = v21;
    *(v26 + 1) = v20;
    v29.receiver = v23;
    v29.super_class = v22;

    v27 = v18;
    v28 = objc_msgSendSuper2(&v29, sel_init);
    (*(a2 + 16))(a2, v28, 0);

    sub_1B6A16B84(v7, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  }
}

uint64_t sub_1B6A23598(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v29 = a1;
  v30 = a3;
  v28[1] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  memset(v31, 0, sizeof(v31));
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B6A243A8;
  *(v14 + 24) = v13;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v26 = swift_allocError();
    *v27 = xmmword_1B6AC0310;
    *v8 = v26;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a5);

    sub_1B6A232DC(v8, a5);

    sub_1B6A16B84(v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v16 = Strong;
  v17 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v17;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  _Block_copy(a5);

  v18 = v17;
  v19 = sub_1B6AB9110();
  result = (*(v10 + 8))(v12, v9);
  if (v19)
  {
    v21 = MEMORY[0x1EEE9AC00](*(v16 + 88));
    v22 = v29;
    *&v28[-20] = v16;
    *&v28[-18] = v22;
    *&v28[-16] = 0x8000000000000000;
    LOBYTE(v28[-14]) = v23;
    *&v28[-12] = v30;
    *&v28[-10] = v24;
    *&v28[-6] = v31;
    *&v28[-4] = sub_1B6A249C8;
    *&v28[-2] = v14;
    sub_1B6995F94(v21, sub_1B6A249B0, &v28[-24], v25);

LABEL_5:
    sub_1B6981634(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A23928(_BYTE *a1, unint64_t a2, void (*a3)(void), char *a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  sub_1B6A24908(0, a5, a6, a7, type metadata accessor for EventSubmitResult);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v44 - v16);
  v18 = a2 >> 62;
  if (!(a2 >> 62))
  {
    return 1;
  }

  v49 = v15;
  if (v18 == 1)
  {
    v48 = &v44 - v16;
    v19 = v9;
    v20 = v8;
    v21 = v7;
    v22 = a3;
    v23 = a4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
    {
      return 1;
    }

    v25 = [ObjCClassFromMetadata requiresDiagnosticsConsent];
    a4 = v23;
    a3 = v22;
    v7 = v21;
    v8 = v20;
    v9 = v19;
    v17 = v48;
    if (!v25)
    {
      return 1;
    }
  }

  else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) == 0)
  {
    return 1;
  }

  result = sub_1B69A31EC(&v51);
  if (v51 != 2)
  {
    if (v51)
    {
      v48 = a4;
      if (qword_1EDBCAA78 != -1)
      {
        swift_once();
      }

      v27 = sub_1B6AB8F90();
      __swift_project_value_buffer(v27, qword_1EDBCFDA8);
      sub_1B6992B50(a1, a2);
      v28 = sub_1B6AB8F80();
      v29 = sub_1B6AB9900();
      sub_1B69C346C(a1, a2);
      if (os_log_type_enabled(v28, v29))
      {
        v47 = v29;
        v30 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        v46 = v30;
        *v30 = 136446210;
        v44 = a1;
        if (v18 == 2)
        {
          v32 = *&a1[OBJC_IVAR___AARawEvent_name];
          v31 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
        }

        else
        {
          v33 = [swift_getObjCClassFromMetadata() eventName];
          v32 = sub_1B6AB92E0();
          v31 = v34;
        }

        v35 = sub_1B698F63C(v32, v31, &v50);

        v36 = v46;
        *(v46 + 1) = v35;
        _os_log_impl(&dword_1B697C000, v28, v47, "Discarding D&U-only event %{public}s", v36, 0xCu);
        v37 = v45;
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1B8C99550](v37, -1, -1);
        MEMORY[0x1B8C99550](v36, -1, -1);

        a1 = v44;
        if (!a3)
        {
          return 0;
        }
      }

      else
      {

        if (!a3)
        {
          return 0;
        }
      }

      if (v18 == 2)
      {
        v38 = *&a1[OBJC_IVAR___AARawEvent_name];
        v39 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }

      else
      {
        v40 = [swift_getObjCClassFromMetadata() eventName];
        v38 = sub_1B6AB92E0();
        v39 = v41;
      }

      sub_1B6A23E9C();
      v42 = swift_allocError();
      *v43 = v38;
      v43[1] = v39;
      *v17 = v42;
      swift_storeEnumTagMultiPayload();
      a3(v17);
      sub_1B6A16B84(v17, v9, v8, v7, type metadata accessor for EventSubmitResult);
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_1B6A23D18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B6A23D80()
{
  result = qword_1EB95B660;
  if (!qword_1EB95B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B660);
  }

  return result;
}

uint64_t sub_1B6A23DD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t))
{
  sub_1B6A24908(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1B6A23E48()
{
  result = qword_1EB95B668;
  if (!qword_1EB95B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B668);
  }

  return result;
}

unint64_t sub_1B6A23E9C()
{
  result = qword_1EB95B670;
  if (!qword_1EB95B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B670);
  }

  return result;
}

unint64_t sub_1B6A23EF0()
{
  result = qword_1EB95B678;
  if (!qword_1EB95B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B678);
  }

  return result;
}

uint64_t sub_1B6A23F44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B6A23D18(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B6A23FB4()
{

  while (1)
  {
    swift_beginAccess();
    v1 = *(v0 + 168);
    if (v1 >> 62)
    {
      break;
    }

    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    v6 = 0;
    v7 = 0;
LABEL_21:
    v10 = *(v0 + 152);

    if (!v10)
    {
      return v6;
    }

    v0 = v10;
    if (v7)
    {

      return v6;
    }
  }

  result = sub_1B6AB9E60();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  v3 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    if ((v1 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x1B8C98510](v3, v1);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v4;
    }

    v6 = *&v5[OBJC_IVAR___AAGroup_name];
    v7 = *&v5[OBJC_IVAR___AAGroup_name + 8];

    v8 = *(v0 + 168);
    if (v8 >> 62)
    {
      result = sub_1B6AB9E60();
      if (result)
      {
LABEL_11:
        v9 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_29;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {

          MEMORY[0x1B8C98510](v9, v8);

          swift_unknownObjectRelease();
          goto LABEL_21;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1B6A24204(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EventData(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A1EE4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, &qword_1EB95B650, sub_1B6A24388, sub_1B6A20734, sub_1B6A21108);
}

uint64_t sub_1B6A243B0(uint64_t a1, uint64_t a2)
{
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A24440()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 56);
  v10 = v3;
  v11 = *(v0 + 80);
  return sub_1B69AC2BC(sub_1B6A2456C, v5);
}

void sub_1B6A244C4(uint64_t a1)
{
  if (!qword_1EDBC98E0[0])
  {
    v2 = sub_1B69E85A4();
    v4 = type metadata accessor for DataEventStack(a1, &type metadata for BridgedDataEvent, v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDBC98E0);
    }
  }
}

uint64_t sub_1B6A24520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for EventData(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (((((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 24))
  {
  }

  sub_1B69C346C(*(v0 + 40), *(v0 + 48));

  v5 = *(v1 + 20);
  v6 = sub_1B6AB8DB0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1B6A24784(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EventData(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A1EE4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, qword_1EDBC8B18, sub_1B6A24978, sub_1B6A201D0, sub_1B6A20C98);
}

void sub_1B6A24908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

BOOL sub_1B6A249CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD530;
  if (qword_1EDBC8130 != -1)
  {
    v20 = inited;
    swift_once();
    inited = v20;
  }

  v10 = unk_1EDBC8140;
  v11 = qword_1EDBC8148;
  v12 = unk_1EDBC8150;
  v13 = qword_1EDBC8158;
  v14 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = a1;
  *(inited + 136) = a2;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 160) = 42;
  *(inited + 168) = 0xE100000000000000;
  v15 = inited;
  swift_bridgeObjectRetain_n();

  v16 = sub_1B69C2608(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1B69C292C(v16, *(v4 + 16));
  v18 = v17;

  return (v18 & 1) == 0;
}

uint64_t SessionObserver.deinit()
{
  sub_1B6988008(v0 + 16);

  return v0;
}

uint64_t sub_1B6A24B80()
{
  if ((*(v0 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___AADelayedToken_sealed) = 1;
    return (*(v0 + OBJC_IVAR___AADelayedToken_block))();
  }

  return result;
}

id DelayedToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DelayedToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelayedToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LoggingEventProcessor.__allocating_init(logFormat:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1B698D0B0(a1, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1B6980E70(v11, &v13);
    }

    else
    {
      v14 = &type metadata for DefaultLoggingEventProcessorFormatter;
      v15 = &off_1F2E7AAF0;
    }
  }

  else
  {
    v6 = *&v11[0];
    v14 = &type metadata for JSONLoggingEventProcessorFormatter;
    v15 = &off_1F2E7AB00;
    v7 = swift_allocObject();
    *&v13 = v7;
    v7[6] = &type metadata for DefaultLoggingEventProcessorFormatter;
    v7[7] = &off_1F2E7AAF0;
    v7[2] = v6;
  }

  sub_1B6980E70(&v13, v5 + 16);
  if (a3)
  {
    sub_1B6980780();
    v8 = sub_1B6AB9B10();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDBCCB28;
  }

  v9 = v8;
  sub_1B698D128(a1);
  *(v5 + 56) = v9;
  return v5;
}

uint64_t LoggingEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[7];
  v8 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6ABD890;
  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = (*(v11 + 8))(a1, a2, a3, v10, v11);
  v14 = v13;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B698CEC0();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  sub_1B6AB8F70("%@", 2, 2, &dword_1B697C000, v7, v8, v9);
}

uint64_t LoggingEventProcessor.didEnterGroup(_:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6ABF500;
  v7 = *(a1 + OBJC_IVAR___AAGroup_name);
  v6 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1B698CEC0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v10 = sub_1B6ABA080();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  sub_1B6AB8F70("Entering group, name=%@ startDate=%@", 36, 2, &dword_1B697C000, v3, v4, v5);
}

uint64_t LoggingEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6ABD890;
  v7 = *(a1 + OBJC_IVAR___AAGroup_name);
  v6 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B698CEC0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  sub_1B6AB8F70("Leaving group, name=%@", 22, 2, &dword_1B697C000, v3, v4, v5);
}

uint64_t LoggingEventProcessor.didEndSession(_:endDate:)(uint64_t *a1)
{
  v16 = *(v1 + 56);
  v15 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B6ABD880;
  v4 = *a1;
  v5 = a1[1];
  v6 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B698CEC0();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  type metadata accessor for Session(0);
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v8 = sub_1B6ABA080();
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;
  v10 = sub_1B6ABA080();
  *(v3 + 136) = v6;
  *(v3 + 144) = v7;
  *(v3 + 112) = v10;
  *(v3 + 120) = v11;
  v12 = sub_1B6AB9220();
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 152) = v12;
  *(v3 + 160) = v13;
  sub_1B6AB8F70("Ended session, identifier=%@, startDate=%@, endDate=%@, sessionData=%@", 70, 2, &dword_1B697C000, v16, v15, v3);
}

uint64_t LoggingEventProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_1B6A253A4(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6ABD890;
  v7 = *(a1 + OBJC_IVAR___AAGroup_name);
  v6 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B698CEC0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  sub_1B6AB8F70("Leaving group, name=%@", 22, 2, &dword_1B697C000, v3, v4, v5);
}

unint64_t sub_1B6A254A8()
{
  result = qword_1EB95B690;
  if (!qword_1EB95B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B690);
  }

  return result;
}

uint64_t ExternalResult.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }
}

void sub_1B6A256B4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B6A25A14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B6A2572C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B6A25844(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1B6A25A14()
{
  if (!qword_1EB95B698)
  {
    v0 = sub_1B69AC828();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B698);
    }
  }
}

uint64_t sub_1B6A25A5C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v10 = *(a8 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  v17 = type metadata accessor for DataEventStack.Entry(0, v10, v15, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v11 + 16))(v13, a1, v10);
  sub_1B6A25E20(v13, a2, v26, v27, v28, v29, v30, v10, v23, v15);
  (*(v18 + 16))(v21, v23, v17);
  sub_1B6AB95D0();

  sub_1B6AB95A0();
  return (*(v18 + 8))(v23, v17);
}

uint64_t AnyDataEventEntry.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyDataEventEntry.file.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B6A25D70(uint64_t a1, int a2)
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

uint64_t sub_1B6A25DB8(uint64_t result, int a2, int a3)
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

int *sub_1B6A25E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for DataEventStack.Entry(0, a8, a10, v18);
  *(a9 + result[9]) = a2;
  *(a9 + result[10]) = a3;
  *(a9 + result[11]) = a4;
  v20 = (a9 + result[12]);
  *v20 = a5;
  v20[1] = a6;
  *(a9 + result[13]) = a7;
  return result;
}

uint64_t sub_1B6A25EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DataEventStack.Entry(255, a4, a5, a4);
  sub_1B6AB95D0();
  swift_getWitnessTable();
  return sub_1B6AB9830() & 1;
}

uint64_t sub_1B6A25F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DataEventStack.Entry(255, a4, a5, a4);
  v10 = sub_1B6AB95D0();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8C97AC0](&v18, v10, WitnessTable);
  v17[8] = v18;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v12 = sub_1B6AB9E50();
  v13 = swift_getWitnessTable();
  v15 = sub_1B6A759E4(sub_1B6A26738, v17, v12, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  return v15;
}

void sub_1B6A260B8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 16));
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v14 = type metadata accessor for DataEventStack.Entry(0, a4, a5, v13);
  v15 = *(a1 + v14[9]);
  v16 = *(a1 + v14[10]);
  v17 = *(a1 + v14[11]);
  v18 = (a1 + v14[12]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(a1 + v14[13]);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 56) = v15;
  *(a6 + 64) = v16;
  *(a6 + 65) = v17;
  *(a6 + 72) = v19;
  *(a6 + 80) = v20;
  *(a6 + 88) = v21;
}

uint64_t sub_1B6A261AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for DataEventStack.Entry(0, v4, *(a1 + 24), a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B6AB9860();
  v9 = *(v4 - 8);
  (*(v9 + 16))(a3, v8, v4);
  (*(v6 + 8))(v8, v5);
  return (*(v9 + 56))(a3, 0, 1, v4);
}

uint64_t sub_1B6A26344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B6A2638C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A263CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v33 = *(a1 + 16);
  v31 = v5;
  v6 = type metadata accessor for DataEventStack.Entry(255, v33, v5, a2);
  v30 = sub_1B6AB9B30();
  v7 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v10 = &v29 - v9;
  v11 = *(v6 - 1);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v32 = v3;
  v34 = *v3;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  sub_1B6AB9270();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    result = (*(v7 + 8))(v10, v30);
    v18 = 0;
    v19 = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    (*(v11 + 32))(v16, v10, v6);
    swift_getWitnessTable();
    v20 = v32;
    sub_1B6AB9860();
    v29 = *(v11 + 8);
    v29(v14, v6);
    v21 = v20[2];
    v30 = v20[1];
    v22 = v33;
    v23 = v31;
    *(a3 + 40) = v33;
    *(a3 + 48) = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 16));
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v16, v22);
    v25 = *&v16[v6[9]];
    LODWORD(v33) = v16[v6[10]];
    v26 = v6[12];
    v27 = v16[v6[11]];
    v28 = *&v16[v26];
    v18 = *&v16[v26 + 8];
    v19 = *&v16[v6[13]];

    result = (v29)(v16, v6);
    *a3 = v30;
    *(a3 + 8) = v21;
    *(a3 + 56) = v25;
    *(a3 + 64) = v33;
    *(a3 + 65) = v27;
    *(a3 + 72) = v28;
  }

  *(a3 + 80) = v18;
  *(a3 + 88) = v19;
  return result;
}

id BridgedProcessorManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedProcessorManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedProcessorManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedProcessorManager.add(eventProcessor:)(uint64_t a1)
{
  v19 = a1;
  sub_1B6A26AB0();
  sub_1B69E8910(0, &unk_1EDBC9780, &protocol descriptor for ProxyEventProcessorProviderType, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B6980E70(v17, v20);
    v3 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
    v4 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    type metadata accessor for ProxyEventProcessor();
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = v6;
    v9[4] = v8;
    v10 = *(v3 + 32);
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v9;
    v11[4] = &off_1F2E7CF98;
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_1B69877A4(v10, sub_1B69916A8, v11);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1B6A26DE8(v17, &qword_1EB95B6A0, &unk_1EDBC9780, &protocol descriptor for ProxyEventProcessorProviderType);
    v13 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
    type metadata accessor for BridgedEventProcessor();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = *(v13 + 32);
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v14;
    v16[4] = &off_1F2E74800;
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_1B69877A4(v15, sub_1B698E578, v16);
  }
}

unint64_t sub_1B6A26AB0()
{
  result = qword_1EDBC9798;
  if (!qword_1EDBC9798)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBC9798);
  }

  return result;
}

void *BridgedProcessorManager.remove(eventProcessor:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
  sub_1B69AB940(0);
  v22 = v2;
  result = sub_1B6AB99A0();
  v4 = v28[0];
  v5 = *(v28[0] + 16);
  if (!v5)
  {
  }

  v6 = 0;
  v7 = &qword_1EDBCCDA8;
  v8 = &protocol descriptor for EventProcessorType;
  v9 = &unk_1EB95B6B0;
  v10 = &protocol descriptor for BridgedEventProcessorProviderType;
  while (v6 < *(v4 + 16))
  {
    v27 = *(v4 + 16 * v6 + 32);
    v24 = v27;
    sub_1B69E8910(0, v7, v8, 0);
    sub_1B69E8910(0, v9, v10, 1);
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v11 = v4;
      v12 = v5;
      v13 = v10;
      v14 = v9;
      v15 = v8;
      v16 = v7;
      sub_1B6980E70(v25, v28);
      v17 = v29;
      v18 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v19 = (*(v18 + 8))(v17, v18);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v28);
      if (v19 == a1)
      {

        v20 = *(v22 + 32);
        v21 = swift_allocObject();
        *(v21 + 16) = v22;
        *(v21 + 24) = v24;
        swift_unknownObjectRetain();

        sub_1B69877A4(v20, sub_1B69C8D18, v21);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectRelease();
      v7 = v16;
      v8 = v15;
      v9 = v14;
      v10 = v13;
      v5 = v12;
      v4 = v11;
    }

    else
    {
      swift_unknownObjectRelease();
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      result = sub_1B6A26DE8(v25, &qword_1EB95B6B8, v9, v10);
    }

    if (v5 == ++v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A26DE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B6994418(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1B6A26E5C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id DefaultStartDateStorage.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DefaultKeyValueStore;
  *(a1 + 32) = &off_1F2E74C50;
  *a1 = 0;
  *(a1 + 8) = 0;
  result = [objc_opt_self() standardUserDefaults];
  *(a1 + 40) = 0xD00000000000001BLL;
  *(a1 + 48) = 0x80000001B6AC9070;
  *(a1 + 72) = 2;
  *(a1 + 56) = 2;
  *(a1 + 64) = result;
  return result;
}

id DefaultStartDateStorage.init(syncRequirements:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for DefaultKeyValueStore;
  *(a2 + 32) = &off_1F2E74C50;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = [objc_opt_self() standardUserDefaults];
  *(a2 + 40) = 0xD00000000000001BLL;
  *(a2 + 48) = 0x80000001B6AC9070;
  *(a2 + 72) = 2;
  *(a2 + 56) = v3;
  *(a2 + 64) = result;
  return result;
}

void DefaultStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, char a2, char a3)
{
  v5 = v3;
  v72 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v66 - v13;
  v68 = v9;
  v14 = *(v5 + 56);
  v69 = v4;
  if ((v14 & 1) != 0 && (a3 & 1) == 0 || (v14 & 2) != 0 && (a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v47 = *(v5 + 72);
  if (v47 == 2)
  {
    v48 = [objc_opt_self() defaultManager];
    v49 = [v48 ubiquityIdentityToken];

    if (!v49)
    {
LABEL_5:
      v15 = 0;
      v16 = 0x6C61636F6CLL;
      v18 = *(v5 + 40);
      v17 = *(v5 + 48);
      v70 = 59;
      v71 = 0xE100000000000000;
LABEL_6:
      v19 = 0xE500000000000000;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    v18 = *(v5 + 40);
    v17 = *(v5 + 48);
    v70 = 59;
    v71 = 0xE100000000000000;
  }

  else
  {
    v18 = *(v5 + 40);
    v17 = *(v5 + 48);
    v70 = 59;
    v71 = 0xE100000000000000;
    if ((v47 & 1) == 0)
    {
      v15 = 0;
      v16 = 0x6C61636F6CLL;
      goto LABEL_6;
    }
  }

  v19 = 0xE600000000000000;
  v15 = 1;
  v16 = 0x646572616873;
LABEL_7:
  MEMORY[0x1B8C97BE0](v16, v19);

  v21 = v70;
  v20 = v71;
  v70 = v18;
  v71 = v17;

  MEMORY[0x1B8C97BE0](v21, v20);

  v23 = v70;
  v22 = v71;
  if (v15)
  {
    v24 = *(v5 + 24);
    v25 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v24);
    v66 = *(v25 + 16);
    v26 = v8;
    v27 = sub_1B6A286D8(&qword_1EDBCCC38, MEMORY[0x1E6969570]);
    v28 = sub_1B6A286D8(&qword_1EDBC8C70, MEMORY[0x1E6969558]);
    v29 = sub_1B6A286D8(&qword_1EDBCB5B0, MEMORY[0x1E6969538]);
    v30 = v69;
    v66(v72, v23, v22, 1, v26, v27, v28, v29, v24, v25);
    if (v30)
    {
    }

    else
    {
      v66 = v23;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v50 = sub_1B6AB8F90();
      __swift_project_value_buffer(v50, qword_1EDBCFD80);
      v51 = v67;
      v52 = v68;
      (*(v68 + 16))(v67, v72, v26);

      v53 = sub_1B6AB8F80();
      v54 = sub_1B6AB98D0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69 = v53;
        v70 = v56;
        v57 = v51;
        v72 = v56;
        *v55 = 136315394;
        v58 = sub_1B6ABA080();
        v59 = v54;
        v61 = v60;
        (*(v52 + 8))(v57, v26);
        v62 = sub_1B698F63C(v58, v61, &v70);

        *(v55 + 4) = v62;
        *(v55 + 12) = 2080;
        v63 = sub_1B698F63C(v66, v22, &v70);

        *(v55 + 14) = v63;
        v64 = v69;
        _os_log_impl(&dword_1B697C000, v69, v59, "Stored user start date: %s, with key: %s, in keychain", v55, 0x16u);
        v65 = v72;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v65, -1, -1);
        MEMORY[0x1B8C99550](v55, -1, -1);
      }

      else
      {

        (*(v52 + 8))(v51, v26);
      }
    }
  }

  else
  {
    v31 = *(v5 + 64);
    v32 = v72;
    v33 = sub_1B6AB8D20();
    v66 = v23;
    v34 = sub_1B6AB92B0();
    [v31 setObject:v33 forKey:v34];

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v35 = sub_1B6AB8F90();
    __swift_project_value_buffer(v35, qword_1EDBCFD80);
    v36 = v68;
    (*(v68 + 16))(v12, v32, v8);

    v37 = sub_1B6AB8F80();
    v38 = sub_1B6AB98D0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70 = v40;
      *v39 = 136315394;
      sub_1B6A286D8(&qword_1EDBCCC38, MEMORY[0x1E6969570]);
      v41 = sub_1B6ABA080();
      v42 = v36;
      v44 = v43;
      (*(v42 + 8))(v12, v8);
      v45 = sub_1B698F63C(v41, v44, &v70);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v46 = sub_1B698F63C(v66, v22, &v70);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_1B697C000, v37, v38, "Stored user start date: %s, with key: %s, in user defaults", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v40, -1, -1);
      MEMORY[0x1B8C99550](v39, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v12, v8);
    }
  }
}

uint64_t DefaultStartDateStorage.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v108 = a3;
  sub_1B69B2128(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - v12;
  v113 = sub_1B6AB8DB0();
  v14 = *(v113 - 8);
  v15 = MEMORY[0x1EEE9AC00](v113);
  v105 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v98 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v103 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v98 - v22;
  v23 = *(v5 + 56);
  v109 = v4;
  v106 = v19;
  v107 = v14;
  if ((v23 & 1) != 0 && (a2 & 1) == 0 || (v23 & 2) != 0 && (a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v43 = *(v5 + 72);
  if (v43 == 2)
  {
    v44 = [objc_opt_self() defaultManager];
    v45 = [v44 ubiquityIdentityToken];

    if (!v45)
    {
LABEL_5:
      v24 = 0;
      v25 = 0x6C61636F6CLL;
      v26 = *(v5 + 40);
      v27 = *(v5 + 48);
      *&v112[0] = 59;
      *(&v112[0] + 1) = 0xE100000000000000;
LABEL_6:
      v28 = 0xE500000000000000;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    v26 = *(v5 + 40);
    v27 = *(v5 + 48);
    *&v112[0] = 59;
    *(&v112[0] + 1) = 0xE100000000000000;
  }

  else
  {
    v26 = *(v5 + 40);
    v27 = *(v5 + 48);
    *&v112[0] = 59;
    *(&v112[0] + 1) = 0xE100000000000000;
    if ((v43 & 1) == 0)
    {
      v24 = 0;
      v25 = 0x6C61636F6CLL;
      goto LABEL_6;
    }
  }

  v28 = 0xE600000000000000;
  v24 = 1;
  v25 = 0x646572616873;
LABEL_7:
  MEMORY[0x1B8C97BE0](v25, v28);

  v29 = v112[0];
  *&v112[0] = v26;
  *(&v112[0] + 1) = v27;

  MEMORY[0x1B8C97BE0](v29, *(&v29 + 1));

  v30 = v112[0];
  if (v24)
  {
    v32 = *(v5 + 24);
    v31 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v32);
    v106 = *(v31 + 8);
    v33 = v13;
    v34 = sub_1B6A286D8(&qword_1EDBCCC38, MEMORY[0x1E6969570]);
    v35 = sub_1B6A286D8(&qword_1EDBC8C70, MEMORY[0x1E6969558]);
    v36 = sub_1B6A286D8(&qword_1EDBCB5B0, MEMORY[0x1E6969538]);
    v37 = v113;
    v38 = v109;
    v106(v30, *(&v30 + 1), 1, v113, v34, v35, v36, v32, v31);
    if (v38)
    {
    }

    v106 = v34;
    v102 = v30;
    v46 = v107;
    if ((*(v107 + 48))(v33, 1, v37) == 1)
    {
      sub_1B69E9EBC(v33);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v47 = sub_1B6AB8F90();
      __swift_project_value_buffer(v47, qword_1EDBCFD80);

      v48 = sub_1B6AB8F80();
      v49 = sub_1B6AB98D0();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v112[0] = v51;
        *v50 = 136315138;
        v52 = sub_1B698F63C(v102, *(&v30 + 1), v112);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_1B697C000, v48, v49, "No user start date found in keychain, with key: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1B8C99550](v51, -1, -1);
        v53 = v50;
        v37 = v113;
        MEMORY[0x1B8C99550](v53, -1, -1);
      }

      else
      {
      }

      return (*(v46 + 56))(v108, 1, 1, v37);
    }

    else
    {
      v79 = *(v46 + 32);
      v80 = v104;
      v105 = (v46 + 32);
      v101 = v79;
      v79(v104, v33, v37);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v81 = sub_1B6AB8F90();
      __swift_project_value_buffer(v81, qword_1EDBCFD80);
      v82 = v103;
      (*(v46 + 16))(v103, v80, v37);

      v83 = sub_1B6AB8F80();
      v84 = sub_1B6AB98D0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v109 = 0;
        v86 = v85;
        v87 = swift_slowAlloc();
        *&v112[0] = v87;
        *v86 = 136315394;
        v88 = sub_1B6ABA080();
        v89 = v82;
        v90 = v88;
        v92 = v91;
        (*(v46 + 8))(v89, v30);
        v93 = sub_1B698F63C(v90, v92, v112);

        *(v86 + 4) = v93;
        *(v86 + 12) = 2080;
        v94 = sub_1B698F63C(v102, *(&v30 + 1), v112);

        *(v86 + 14) = v94;
        _os_log_impl(&dword_1B697C000, v83, v84, "Read user start date: %s, from keychain, with key: %s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v87, -1, -1);
        v80 = v104;
        MEMORY[0x1B8C99550](v86, -1, -1);
      }

      else
      {

        (*(v46 + 8))(v82, v37);
      }

      v97 = v108;
      v101(v108, v80, v37);
      return (*(v46 + 56))(v97, 0, 1, v37);
    }
  }

  v40 = *(v5 + 64);
  v102 = *&v112[0];
  v41 = sub_1B6AB92B0();
  v42 = [v40 objectForKey_];

  if (v42)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v110 = 0u;
    v111 = 0u;
  }

  v54 = v113;
  v55 = v106;
  v56 = v107;
  v112[0] = v110;
  v112[1] = v111;
  if (*(&v111 + 1))
  {
    v57 = swift_dynamicCast();
    v58 = *(v56 + 56);
    (v58)(v11, v57 ^ 1u, 1, v54);
    if ((*(v56 + 48))(v11, 1, v54) != 1)
    {
      v101 = v58;
      v103 = *(v56 + 32);
      v104 = (v56 + 32);
      (v103)(v55, v11, v54);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v59 = sub_1B6AB8F90();
      __swift_project_value_buffer(v59, qword_1EDBCFD80);
      v60 = v105;
      (*(v56 + 16))(v105, v55, v54);

      v61 = sub_1B6AB8F80();
      v62 = sub_1B6AB98D0();

      v100 = v62;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v112[0] = v64;
        *v63 = 136315394;
        sub_1B6A286D8(&qword_1EDBCCC38, MEMORY[0x1E6969570]);
        v99 = v61;
        v65 = sub_1B6ABA080();
        v67 = v66;
        (*(v56 + 8))(v60, v113);
        v68 = sub_1B698F63C(v65, v67, v112);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = sub_1B698F63C(v102, *(&v30 + 1), v112);

        *(v63 + 14) = v69;
        v70 = v99;
        _os_log_impl(&dword_1B697C000, v99, v100, "Read user start date: %s, from UserDefaults, with key: %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v64, -1, -1);
        v71 = v63;
        v54 = v113;
        MEMORY[0x1B8C99550](v71, -1, -1);
      }

      else
      {

        (*(v56 + 8))(v60, v54);
      }

      v95 = v101;
      v96 = v108;
      (v103)(v108, v55, v54);
      return (v95)(v96, 0, 1, v54);
    }
  }

  else
  {
    sub_1B6981634(v112);
    v58 = *(v56 + 56);
    (v58)(v11, 1, 1, v54);
  }

  sub_1B69E9EBC(v11);
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v72 = sub_1B6AB8F90();
  __swift_project_value_buffer(v72, qword_1EDBCFD80);

  v73 = sub_1B6AB8F80();
  v74 = sub_1B6AB98D0();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v112[0] = v76;
    *v75 = 136315138;
    v77 = sub_1B698F63C(v102, *(&v30 + 1), v112);

    *(v75 + 4) = v77;
    _os_log_impl(&dword_1B697C000, v73, v74, "No user start date found in UserDefaults, with key: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1B8C99550](v76, -1, -1);
    v78 = v75;
    v54 = v113;
    MEMORY[0x1B8C99550](v78, -1, -1);
  }

  else
  {
  }

  return (v58)(v108, 1, 1, v54);
}

uint64_t sub_1B6A28560(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1B698F63C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1B6A285BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B6980A90(0, &qword_1EDBCAFB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1B6A286C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B6A286D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B6AB8DB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B6A28740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1B6A28788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A287EC(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8AB0();
  *&v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v64 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v64 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = v64 - v18;
  if (*(v1 + OBJC_IVAR___AATransparencyLogging_isEnabled) == 1)
  {
    result = sub_1B6A29130();
    if (result)
    {
      v71 = v3;
      v73 = v7;
      v74 = v19;
      sub_1B6A2A088();
      v20 = [objc_opt_self() mainBundle];
      v21 = [v20 bundleIdentifier];

      v72 = v6;
      v67 = v16;
      if (v21)
      {
        v22 = sub_1B6AB92E0();
        v24 = v23;
      }

      else
      {
        v24 = 0xE700000000000000;
        v22 = 0x6C6172656E6567;
      }

      v76 = v22;
      v77 = v24;
      MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
      v25 = *(a1 + 24);
      v69 = *(a1 + 16);
      v70 = v25;
      MEMORY[0x1B8C97BE0]();
      v65 = v76;
      v66 = v77;
      sub_1B6AB8AE0();
      v26 = *MEMORY[0x1E6968F58];
      v27 = v75;
      v68 = a1;
      v28 = *(v75 + 104);
      v29 = v71;
      v28(v5, v26, v71);
      v64[1] = sub_1B69830D8();
      sub_1B6AB8B90();
      *&v75 = *(v27 + 8);
      (v75)(v5, v29);
      v30 = v72;
      v31 = v73 + 8;
      v32 = *(v73 + 8);
      v32(v10, v72);
      v76 = v65;
      v77 = v66;
      v28(v5, *MEMORY[0x1E6968F70], v29);
      v33 = v67;
      sub_1B6AB8BA0();
      (v75)(v5, v29);
      v32(v13, v30);

      sub_1B6AB8B40();
      v32(v33, v30);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v34 = qword_1EDBCCB28;
      v35 = sub_1B6AB9900();
      sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      v75 = xmmword_1B6ABD890;
      *(v36 + 16) = xmmword_1B6ABD890;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v37 = sub_1B698CEC0();
      *(v36 + 64) = v37;
      v38 = v70;
      *(v36 + 32) = v69;
      *(v36 + 40) = v38;

      sub_1B6AB8F70("Writing batch to disk for transparency, identifier=%{public}@", 61, 2, &dword_1B697C000, v34, v35, v36);

      v39 = Batch.toJSONObject()();
      v71 = v32;
      v73 = v31;
      v40 = objc_opt_self();
      v41 = MEMORY[0x1E69E6158];
      v42 = sub_1B6AB91F0();
      v43 = [v40 isValidJSONObject_];

      if (v43)
      {
        v44 = sub_1B6AB91F0();

        v76 = 0;
        v45 = [v40 dataWithJSONObject:v44 options:0 error:&v76];

        v46 = v76;
        if (v45)
        {
          v47 = sub_1B6AB8C80();
          v49 = v48;

          v50 = v74;
          sub_1B6AB8C90();
          v71(v50, v72);
          return sub_1B6993C94(v47, v49);
        }

        v57 = v46;
        v55 = sub_1B6AB8A70();
      }

      else
      {
        v51 = sub_1B6AB98F0();
        v52 = swift_allocObject();
        *(v52 + 16) = v75;
        v53 = sub_1B6AB9220();
        *(v52 + 56) = v41;
        *(v52 + 64) = v37;
        *(v52 + 32) = v53;
        *(v52 + 40) = v54;
        sub_1B6AB8F70("Resource failed to convert to JSON object, %@", 45, 2, &dword_1B697C000, v34, v51, v52);

        sub_1B6A2A954();
        v55 = swift_allocError();
        *v56 = v39;
        *(v56 + 8) = 0;
      }

      swift_willThrow();
      v58 = v72;
      v59 = v71;
      v60 = sub_1B6AB98E0();
      v61 = swift_allocObject();
      *(v61 + 16) = v75;
      swift_getErrorValue();
      v62 = sub_1B6ABA1A0();
      *(v61 + 56) = MEMORY[0x1E69E6158];
      *(v61 + 64) = v37;
      *(v61 + 32) = v62;
      *(v61 + 40) = v63;
      sub_1B6AB8F70("Unable to write log for transparency, error=%{public}@", 54, 2, &dword_1B697C000, v34, v60, v61);

      return v59(v74, v58);
    }
  }

  return result;
}

id TransparencyLogging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransparencyLogging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A29130()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B6AB8AB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9 + 32;
  v11 = [objc_opt_self() defaultManager];
  sub_1B6AB8AE0();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
  sub_1B69830D8();
  v12 = MEMORY[0x1E69E6158];
  sub_1B6AB8B90();
  (*(v1 + 8))(v3, v0);
  v13 = *(v5 + 8);
  v13(v8, v4);
  v14 = sub_1B6AB8B20();
  v13(v10, v4);
  v27[0] = 0;
  v15 = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v27];

  if (v15)
  {
    v16 = v27[0];
  }

  else
  {
    v17 = v27[0];
    v18 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDBCCB28;
    v20 = sub_1B6AB98E0();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B6ABD890;
    swift_getErrorValue();
    v22 = sub_1B6ABA1A0();
    v24 = v23;
    *(v21 + 56) = v12;
    *(v21 + 64) = sub_1B698CEC0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_1B6AB8F70("Unable to create transparency logging folder on disk, error=%{public}@", 70, 2, &dword_1B697C000, v19, v20, v21);
  }

  return v15;
}

uint64_t sub_1B6A29500(uint64_t a1)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8EE0();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B6AB8F00();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2A9A8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v49 - v9;
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v53 = v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v61 = v49 - v18;
  v51 = objc_opt_self();
  v19 = [v51 defaultManager];
  v52 = a1;
  sub_1B6AB8B70();
  v20 = sub_1B6AB92B0();

  v63[0] = 0;
  v21 = [v19 attributesOfItemAtPath:v20 error:v63];

  v22 = v63[0];
  if (!v21)
  {
    v30 = v63[0];
    v31 = sub_1B6AB8A70();

    swift_willThrow();
    goto LABEL_9;
  }

  v62 = v1;
  type metadata accessor for FileAttributeKey(0);
  sub_1B6A2AA0C();
  v23 = sub_1B6AB9210();
  v24 = v22;

  if (!v23)
  {
LABEL_9:
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_10:
    sub_1B69E9EBC(v10);
    return 0;
  }

  if (!*(v23 + 16) || (v26 = sub_1B69DA970(*MEMORY[0x1E696A308], v25), (v27 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B698FE74(*(v23 + 56) + 32 * v26, v63);

  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  v29 = *(v12 + 48);
  if (v29(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  v49[0] = *(v12 + 32);
  v49[1] = v12 + 32;
  (v49[0])(v61, v10, v11);
  v50 = v29;
  v33 = v55;
  sub_1B6AB8EC0();
  v35 = v59;
  v34 = v60;
  v36 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x1E6969A48], v60);
  sub_1B6AB8D90();
  v37 = v54;
  sub_1B6AB8EB0();
  v38 = v15;
  v39 = *(v12 + 8);
  v39(v38, v11);
  (*(v35 + 8))(v36, v34);
  (*(v56 + 8))(v33, v58);
  result = v50(v37, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v53;
    (v49[0])(v53, v37, v11);
    v41 = v61;
    v42 = sub_1B6AB8D30();
    v39(v40, v11);
    if ((v42 & 1) == 0)
    {
      v43 = [v51 defaultManager];
      v44 = sub_1B6AB8B20();
      v63[0] = 0;
      v45 = [v43 removeItemAtURL:v44 error:v63];

      if (v45)
      {
        v46 = v63[0];
      }

      else
      {
        v47 = v63[0];
        v48 = sub_1B6AB8A70();

        swift_willThrow();
      }

      v39(v61, v11);
      return 0;
    }

    v39(v41, v11);
    return 1;
  }

  return result;
}

void *sub_1B6A29BA0()
{
  v45[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B6AB8AB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB8BB0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = [objc_opt_self() defaultManager];
  sub_1B6AB8AE0();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F58], v1);
  sub_1B69830D8();
  sub_1B6AB8B90();
  (*(v2 + 8))(v4, v1);
  v17 = *(v6 + 8);
  v17(v13, v5);
  v18 = sub_1B6AB8B20();
  v38 = v17;
  v39 = v6 + 8;
  v17(v15, v5);
  v45[0] = 0;
  v19 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:v45];

  v20 = v45[0];
  if (!v19)
  {
    v24 = v45[0];
    sub_1B6AB8A70();

    swift_willThrow();
    return v24;
  }

  v21 = sub_1B6AB9510();
  v22 = v20;

  v43 = *(v21 + 16);
  if (!v43)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v24;
  }

  v23 = 0;
  v41 = (v6 + 32);
  v42 = v6 + 16;
  v24 = MEMORY[0x1E69E7CC0];
  v36 = v6;
  v37 = v5;
  v25 = v40;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
    }

    v26 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v27 = *(v6 + 72);
    (*(v6 + 16))(v25, v21 + v26 + v27 * v23, v5);
    v28 = sub_1B6A29500(v25);
    if (v0)
    {
      break;
    }

    if (v28)
    {
      v29 = *v41;
      (*v41)(v44, v25, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B699D530(0, v24[2] + 1, 1);
        v24 = v45[0];
      }

      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        sub_1B699D530((v31 > 1), v32 + 1, 1);
        v24 = v45[0];
      }

      v24[2] = v32 + 1;
      v33 = v24 + v26 + v32 * v27;
      v5 = v37;
      v29(v33, v44, v37);
      v6 = v36;
      v25 = v40;
    }

    else
    {
      v38(v25, v5);
    }

    if (v43 == ++v23)
    {
      goto LABEL_16;
    }
  }

  v38(v25, v5);

  __break(1u);
  return result;
}

void sub_1B6A2A088()
{
  v0 = sub_1B6AB8EE0();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B6AB8F00();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2A9A8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v49 = objc_opt_self();
  v20 = [v49 standardUserDefaults];
  v50 = "to convert to JSON object, %@";
  v21 = sub_1B6AB92B0();
  v22 = [v20 objectForKey_];

  if (v22)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (!*(&v53 + 1))
  {
    sub_1B6981634(v54);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_10;
  }

  v23 = swift_dynamicCast();
  (*(v13 + 56))(v11, v23 ^ 1u, 1, v12);
  v24 = *(v13 + 48);
  if (v24(v11, 1, v12) == 1)
  {
LABEL_10:
    sub_1B69E9EBC(v11);
    sub_1B6A29BA0();

    v33 = [v49 standardUserDefaults];
    v34 = v51;
    sub_1B6AB8D90();
    v35 = sub_1B6AB8D20();
    (*(v13 + 8))(v34, v12);
    v36 = sub_1B6AB92B0();
    [v33 setObject:v35 forKey:v36];

    return;
  }

  v42 = v19;
  v43 = v24;
  v41 = *(v13 + 32);
  v41(v19, v11, v12);
  sub_1B6AB8EC0();
  v26 = v47;
  v25 = v48;
  (*(v47 + 104))(v2, *MEMORY[0x1E6969A48], v48);
  v27 = v51;
  sub_1B6AB8D90();
  sub_1B6AB8EB0();
  v28 = v27;
  v29 = *(v13 + 8);
  v29(v28, v12);
  (*(v26 + 8))(v2, v25);
  (*(v45 + 8))(v5, v46);
  if (v43(v9, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v44;
    v41(v44, v9, v12);
    v31 = v42;
    v32 = sub_1B6AB8D40();
    v29(v30, v12);
    if (v32)
    {
      sub_1B6A29BA0();

      v37 = [v49 standardUserDefaults];
      v38 = v51;
      sub_1B6AB8D90();
      v39 = sub_1B6AB8D20();
      v29(v38, v12);
      v40 = sub_1B6AB92B0();
      [v37 setObject:v39 forKey:v40];
    }

    v29(v31, v12);
  }
}

void *sub_1B6A2A6F8()
{
  v1 = sub_1B6A29BA0();
  if (v0)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDBCCB28;
    v3 = sub_1B6AB98E0();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B6ABD890;
    swift_getErrorValue();
    v5 = sub_1B6ABA1A0();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B698CEC0();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1B6AB8F70("Unable to load AppAnalytics transparency logs, unable to load logs from disk, error=%{public}@", 94, 2, &dword_1B697C000, v2, v3, v4);

    swift_willThrow();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB9900();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B6ABD890;
    v9 = v1[2];
    v10 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = MEMORY[0x1E69E6530];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    sub_1B6AB8F70("Providing %d AppAnalytics logs for transparency", v12);
  }

  return v1;
}

unint64_t sub_1B6A2A954()
{
  result = qword_1EB95B6C8;
  if (!qword_1EB95B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6C8);
  }

  return result;
}

void sub_1B6A2A9A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1B6A2AA0C()
{
  result = qword_1EB95AB00;
  if (!qword_1EB95AB00)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AB00);
  }

  return result;
}

id AccessQueue.__allocating_init(queue:)(void *a1)
{
  v3 = sub_1B6AB9090();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = objc_allocWithZone(v1);
  *&v10[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v11 = a1;
  sub_1B6AB9050();
  v12 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v4 + 16))(v7, v9, v3);
  sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v13 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(v14 + 24) = 0x10000;
  (*(v4 + 8))(v9, v3);
  *(v13 + 2) = v14;
  (*(v4 + 32))(&v13[*(*v13 + 96)], v7, v3);
  *&v10[v12] = v13;
  swift_endAccess();
  v19.receiver = v10;
  v19.super_class = v1;
  v16 = objc_msgSendSuper2(&v19, sel_init);

  return v16;
}

uint64_t sub_1B6A2ACC8()
{
  v0 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB9070();
  sub_1B6A2AED0(v3);
  sub_1B6AB9070();
  sub_1B6AB9020();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_5_0;
  _Block_copy(aBlock);
  sub_1B6AB90E0();
  swift_allocObject();
  sub_1B6AB90D0();
  sub_1B6AB99C0();
}

id sub_1B6A2AE70(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1B6A2AED0(uint64_t a1)
{
  v3 = sub_1B6AB9090();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v8 = *(v1 + v7);
  (*(v4 + 16))(v6, a1, v3);

  os_unfair_lock_lock_with_options();
  v9 = *(*v8 + 96);
  swift_beginAccess();
  (*(v4 + 24))(&v8[v9], v6, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(*(v8 + 2) + 16));
  v10 = *(v4 + 8);
  v10(a1, v3);
  v10(v6, v3);
}

id AccessQueue.init(queue:)(void *a1)
{
  v2 = sub_1B6A2B6E8(a1);

  return v2;
}

unint64_t AccessQueue.debugDescription.getter()
{
  sub_1B6AB9CA0();

  v0 = sub_1B6AB99E0();
  MEMORY[0x1B8C97BE0](v0);

  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1B6A2B248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6AB9030();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1B6AB9090();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v12 = *(v3 + v11);

  os_unfair_lock_lock_with_options();
  v13 = *(*v12 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v12[v13], v7);
  os_unfair_lock_unlock(*(*(v12 + 2) + 16));

  sub_1B6AB9020();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  sub_1B6AB90E0();
  swift_allocObject();

  sub_1B6AB90D0();

  sub_1B6AB99C0();
}

BOOL AccessQueue.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B69C1678(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *&v6[OBJC_IVAR___AAAccessQueue_queue];

      v4 = *(v1 + OBJC_IVAR___AAAccessQueue_queue);
      return v3 == v4;
    }
  }

  else
  {
    sub_1B6981634(v7);
  }

  return 0;
}

id AccessQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A2B6E8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B6AB9090();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  *&v1[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v11 = a1;
  sub_1B6AB9050();
  v12 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v13 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(v14 + 24) = 0x10000;
  (*(v5 + 8))(v10, v4);
  *(v13 + 2) = v14;
  (*(v5 + 32))(&v13[*(*v13 + 96)], v8, v4);
  *&v1[v12] = v13;
  swift_endAccess();
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t AppAnalyticsAppData.appVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppAnalyticsAppData.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B6A2BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A2BB3C(uint64_t a1)
{
  v2 = sub_1B6A2BD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2BB78(uint64_t a1)
{
  v2 = sub_1B6A2BD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsAppData.encode(to:)(void *a1)
{
  sub_1B6A2BED8(0, &qword_1EB95B6E0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A2BD00()
{
  result = qword_1EB95B6E8;
  if (!qword_1EB95B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6E8);
  }

  return result;
}

uint64_t AppAnalyticsAppData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A2BED8(0, &qword_1EB95B6F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v10 = sub_1B6AB9F50();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2BED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2BD00();
    v7 = a3(a1, &type metadata for AppAnalyticsAppData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2BF3C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2BF6C();
  result = sub_1B6A2BFC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2BF6C()
{
  result = qword_1EB95B6F8;
  if (!qword_1EB95B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6F8);
  }

  return result;
}

unint64_t sub_1B6A2BFC0()
{
  result = qword_1EB95B700;
  if (!qword_1EB95B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B700);
  }

  return result;
}

uint64_t sub_1B6A2C02C(void *a1)
{
  sub_1B6A2BED8(0, &qword_1EB95B6E0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A2C19C()
{
  result = qword_1EB95B708;
  if (!qword_1EB95B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B708);
  }

  return result;
}

unint64_t sub_1B6A2C1F4()
{
  result = qword_1EB95B710;
  if (!qword_1EB95B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B710);
  }

  return result;
}

unint64_t sub_1B6A2C24C()
{
  result = qword_1EB95B718;
  if (!qword_1EB95B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B718);
  }

  return result;
}

uint64_t AppAnalyticsDeviceData.osVersion.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppAnalyticsDeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

AppAnalytics::AppAnalyticsDeviceData __swiftcall AppAnalyticsDeviceData.init(devicePlatform:osVersion:)(AppAnalytics::AppAnalyticsDevicePlatform devicePlatform, Swift::String osVersion)
{
  *v2 = *devicePlatform;
  *(v2 + 8) = osVersion;
  result.osVersion = osVersion;
  result.devicePlatform = devicePlatform;
  return result;
}

uint64_t sub_1B6A2C380()
{
  if (*v0)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0x6C50656369766564;
  }
}

uint64_t sub_1B6A2C3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A2C4B8(uint64_t a1)
{
  v2 = sub_1B6A2C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2C4F4(uint64_t a1)
{
  v2 = sub_1B6A2C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsDeviceData.encode(to:)(void *a1)
{
  sub_1B6A2C938(0, &qword_1EB95B720, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2C6C0();
  sub_1B6ABA2D0();
  v15 = v9;
  v14 = 0;
  sub_1B6A2C714();
  sub_1B6ABA040();
  if (!v2)
  {
    v13 = 1;
    sub_1B6ABA000();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B6A2C6C0()
{
  result = qword_1EB95B728;
  if (!qword_1EB95B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B728);
  }

  return result;
}

unint64_t sub_1B6A2C714()
{
  result = qword_1EB95B730;
  if (!qword_1EB95B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B730);
  }

  return result;
}

uint64_t AppAnalyticsDeviceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6A2C938(0, &qword_1EB95B738, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2C6C0();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v17 = 0;
    sub_1B6A2C99C();
    sub_1B6AB9F90();
    v10 = v18;
    v16 = 1;
    v12 = sub_1B6AB9F50();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2C938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2C6C0();
    v7 = a3(a1, &type metadata for AppAnalyticsDeviceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2C99C()
{
  result = qword_1EB95B740;
  if (!qword_1EB95B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B740);
  }

  return result;
}

unint64_t sub_1B6A2C9F0(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2CA20();
  result = sub_1B6A2CA74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2CA20()
{
  result = qword_1EB95B748;
  if (!qword_1EB95B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B748);
  }

  return result;
}

unint64_t sub_1B6A2CA74()
{
  result = qword_1EB95B750;
  if (!qword_1EB95B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B750);
  }

  return result;
}

uint64_t sub_1B6A2CAF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B6A2CB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B6A2CBA4()
{
  result = qword_1EB95B758;
  if (!qword_1EB95B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B758);
  }

  return result;
}

unint64_t sub_1B6A2CBFC()
{
  result = qword_1EB95B760;
  if (!qword_1EB95B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B760);
  }

  return result;
}

unint64_t sub_1B6A2CC54()
{
  result = qword_1EB95B768;
  if (!qword_1EB95B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B768);
  }

  return result;
}

AppAnalytics::AppAnalyticsDevicePlatform_optional __swiftcall AppAnalyticsDevicePlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppAnalyticsDevicePlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x534F64615069;
  v4 = 0x534F63616DLL;
  if (v1 != 3)
  {
    v4 = 0x534F6E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5459817;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B6A2CDA0()
{
  result = qword_1EB95B770;
  if (!qword_1EB95B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B770);
  }

  return result;
}

uint64_t sub_1B6A2CDF4()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A2CEC8(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A2CF88()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

void sub_1B6A2D064(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x534F64615069;
  v7 = 0xE500000000000000;
  v8 = 0x534F63616DLL;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5459817;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1B6A2D1B4()
{
  result = qword_1EB95B778;
  if (!qword_1EB95B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B778);
  }

  return result;
}

uint64_t AppAnalyticsLocaleData.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppAnalyticsLocaleData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppAnalyticsLocaleData.productType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppAnalyticsLocaleData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AppAnalytics::AppAnalyticsLocaleData __swiftcall AppAnalyticsLocaleData.init(countryCode:productType:)(Swift::String countryCode, Swift::String productType)
{
  *v2 = countryCode;
  v2[1] = productType;
  result.productType = productType;
  result.countryCode = countryCode;
  return result;
}

uint64_t sub_1B6A2D334()
{
  if (*v0)
  {
    return 0x54746375646F7270;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_1B6A2D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A2D458(uint64_t a1)
{
  v2 = sub_1B6A2D650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2D494(uint64_t a1)
{
  v2 = sub_1B6A2D650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsLocaleData.encode(to:)(void *a1)
{
  sub_1B6A2D8B4(0, &qword_1EB95B780, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2D650();
  sub_1B6ABA2D0();
  v13 = 0;
  v9 = v11[3];
  sub_1B6ABA000();
  if (!v9)
  {
    v12 = 1;
    sub_1B6ABA000();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B6A2D650()
{
  result = qword_1EB95B788;
  if (!qword_1EB95B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B788);
  }

  return result;
}

uint64_t AppAnalyticsLocaleData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A2D8B4(0, &qword_1EB95B790, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2D650();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_1B6AB9F50();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_1B6AB9F50();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2D8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2D650();
    v7 = a3(a1, &type metadata for AppAnalyticsLocaleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2D918(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2D948();
  result = sub_1B6A2D99C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2D948()
{
  result = qword_1EB95B798;
  if (!qword_1EB95B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B798);
  }

  return result;
}

unint64_t sub_1B6A2D99C()
{
  result = qword_1EB95B7A0;
  if (!qword_1EB95B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7A0);
  }

  return result;
}

unint64_t sub_1B6A2DA44()
{
  result = qword_1EB95B7A8;
  if (!qword_1EB95B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7A8);
  }

  return result;
}

unint64_t sub_1B6A2DA9C()
{
  result = qword_1EB95B7B0;
  if (!qword_1EB95B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7B0);
  }

  return result;
}

unint64_t sub_1B6A2DAF4()
{
  result = qword_1EB95B7B8;
  if (!qword_1EB95B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7B8);
  }

  return result;
}

uint64_t EventData.eventID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventData.eventTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventData(0) + 20);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventData.eventPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventData(0) + 24));

  return v1;
}

uint64_t EventData.sessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventData(0) + 28));

  return v1;
}

uint64_t EventData.appSessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventData(0) + 32));

  return v1;
}

uint64_t EventData.init(eventID:eventTimestamp:eventPath:sessionID:appSessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for EventData(0);
  v18 = v17[5];
  v19 = sub_1B6AB8DB0();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t sub_1B6A2DD84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A2E420(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A2DDB8(uint64_t a1)
{
  v2 = sub_1B69C0248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2DDF4(uint64_t a1)
{
  v2 = sub_1B69C0248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1B6AB8DB0();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69BFF70(0, &qword_1EDBC8958, MEMORY[0x1E69E6F48]);
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69C0248();
  v31 = v8;
  v12 = v33;
  sub_1B6ABA2A0();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v38 = 0;
  *v11 = sub_1B6AB9F50();
  v11[1] = v14;
  v33 = v14;
  v37 = 1;
  sub_1B69A8420(&qword_1EDBC8C70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B6AB9F90();
  (*(v13 + 32))(v11 + v9[5], v5, v3);
  v36 = 2;
  v27[1] = 0;
  v15 = sub_1B6AB9F50();
  v16 = (v11 + v9[6]);
  *v16 = v15;
  v16[1] = v17;
  v35 = 3;
  v18 = sub_1B6AB9F50();
  v19 = (v11 + v9[7]);
  *v19 = v18;
  v19[1] = v20;
  v34 = 4;
  v21 = sub_1B6AB9F30();
  v27[0] = v22;
  v23 = v21;
  (*(v30 + 8))(v31, v32);
  v24 = (v11 + v9[8]);
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_1B6A2E2B8(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A2E31C(v11);
}

uint64_t sub_1B6A2E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A2E31C(uint64_t a1)
{
  v2 = type metadata accessor for EventData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A2E3CC()
{
  result = qword_1EB95B7C0;
  if (!qword_1EB95B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7C0);
  }

  return result;
}

uint64_t sub_1B6A2E420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xEE00706D61747365 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746150746E657665 && a2 == 0xE900000000000068 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t TimedData.startTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8DB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimedData.endTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimedData(0) + 20);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B6A2E6F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73656D6954646E65;
  v4 = 0xEC000000706D6174;
  if (v2 != 1)
  {
    v3 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D69547472617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00706D61747365;
  }

  v7 = 0x73656D6954646E65;
  v8 = 0xEC000000706D6174;
  if (*a2 != 1)
  {
    v7 = 0x6E6F697461727564;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D69547472617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00706D61747365;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B6ABA0F0();
  }

  return v11 & 1;
}

uint64_t sub_1B6A2E80C()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A2E8C4(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A2E968()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

unint64_t sub_1B6A2EA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6A2F7A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B6A2EA4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00706D61747365;
  v4 = 0xEC000000706D6174;
  v5 = 0x73656D6954646E65;
  if (v2 != 1)
  {
    v5 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D69547472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B6A2EAC0()
{
  v1 = 0x73656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

unint64_t sub_1B6A2EB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A2F7A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A2EB58(uint64_t a1)
{
  v2 = sub_1B6A2EF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2EB94(uint64_t a1)
{
  v2 = sub_1B6A2EF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimedData.init(startTimestamp:endTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a3, a1, v6);
  v9 = type metadata accessor for TimedData(0);
  v8(a3 + *(v9 + 20), a2, v6);
  sub_1B6AB8D00();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(a2, v6);
  result = (v12)(a1, v6);
  v14 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    *(a3 + *(v9 + 24)) = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TimedData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6A2F450(0, &qword_1EDBC96D0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2EF68();
  sub_1B6ABA2D0();
  v15 = 0;
  sub_1B6AB8DB0();
  sub_1B69A8468(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B6ABA040();
  if (!v2)
  {
    v10 = type metadata accessor for TimedData(0);
    v14 = 1;
    sub_1B6ABA040();
    v12[1] = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_1B6A2EFBC();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B6A2EF68()
{
  result = qword_1EDBC96F0[0];
  if (!qword_1EDBC96F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBC96F0);
  }

  return result;
}

unint64_t sub_1B6A2EFBC()
{
  result = qword_1EDBC9968;
  if (!qword_1EDBC9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9968);
  }

  return result;
}

uint64_t TimedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = sub_1B6AB8DB0();
  v26 = *(v28 - 8);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v22 - v7;
  sub_1B6A2F450(0, &qword_1EDBC8018, MEMORY[0x1E69E6F48]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2EF68();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v13;
  v24 = a1;
  v22 = v11;
  v34 = 0;
  sub_1B69A8468(&qword_1EDBC8C70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v14 = v27;
  v15 = v28;
  sub_1B6AB9F90();
  v27 = *(v26 + 32);
  (v27)(v23, v14, v15);
  v33 = 1;
  v16 = v6;
  sub_1B6AB9F90();
  v18 = v22;
  v17 = v23;
  (v27)(&v23[*(v22 + 20)], v16, v15);
  v32 = 2;
  sub_1B6A2F4B4();
  sub_1B6AB9F90();
  v19 = v17;
  v20 = v24;
  (*(v29 + 8))(v10, v30);
  *(v19 + *(v18 + 24)) = v31;
  sub_1B6A2F508(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B6A2F56C(v19);
}

void sub_1B6A2F450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2EF68();
    v7 = a3(a1, &type metadata for TimedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2F4B4()
{
  result = qword_1EDBC8300[0];
  if (!qword_1EDBC8300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBC8300);
  }

  return result;
}

uint64_t sub_1B6A2F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A2F56C(uint64_t a1)
{
  v2 = type metadata accessor for TimedData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A2F5C8(uint64_t a1)
{
  *(a1 + 8) = sub_1B69A8468(&qword_1EDBCAAB0, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  result = sub_1B69A8468(&qword_1EDBCAAB8, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2F6A4()
{
  result = qword_1EB95B7C8;
  if (!qword_1EB95B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7C8);
  }

  return result;
}

unint64_t sub_1B6A2F6FC()
{
  result = qword_1EDBC96E0;
  if (!qword_1EDBC96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC96E0);
  }

  return result;
}

unint64_t sub_1B6A2F754()
{
  result = qword_1EDBC96E8;
  if (!qword_1EDBC96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC96E8);
  }

  return result;
}

unint64_t sub_1B6A2F7A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6AB9EF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void static UserActivityBeganEvent.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static UserActivityBeganEvent.timeDurationGranularity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A998 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B7D0);
  *a1 = word_1EB95B7D0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1B6A2F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A2F9D4(uint64_t a1)
{
  v2 = sub_1B6A2FBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2FA10(uint64_t a1)
{
  v2 = sub_1B6A2FBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserActivityBeganEvent.Model.encode(to:)(void *a1)
{
  sub_1B6A2FE9C(0, &qword_1EB95B7D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2D0();
  type metadata accessor for EventData(0);
  sub_1B69BFE9C(&qword_1EDBCAAD0, &protocol conformance descriptor for EventData);
  sub_1B6ABA040();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A2FBC0()
{
  result = qword_1EB95B7E0;
  if (!qword_1EB95B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7E0);
  }

  return result;
}

uint64_t UserActivityBeganEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2FE9C(0, &qword_1EB95B7E8, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for UserActivityBeganEvent.Model(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v13 = v17;
    sub_1B69BFE9C(&qword_1EDBCAAC8, &protocol conformance descriptor for EventData);
    v14 = v18;
    sub_1B6AB9F90();
    (*(v13 + 8))(v9, v7);
    sub_1B69BFDA0(v14, v12, type metadata accessor for EventData);
    sub_1B69BFDA0(v12, v16, type metadata accessor for UserActivityBeganEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2FE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2FBC0();
    v7 = a3(a1, &type metadata for UserActivityBeganEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for UserActivityBeganEvent.Model(uint64_t a1)
{
  result = qword_1EB95B7F0;
  if (!qword_1EB95B7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A2FF64(void *a1)
{
  sub_1B6A2FE9C(0, &qword_1EB95B7D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2FBC0();
  sub_1B6ABA2D0();
  type metadata accessor for EventData(0);
  sub_1B69BFE9C(&qword_1EDBCAAD0, &protocol conformance descriptor for EventData);
  sub_1B6ABA040();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B6A300D8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A998 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B7D0);
  *a1 = word_1EB95B7D0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1B6A30180(uint64_t a1)
{
  result = type metadata accessor for EventData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B6A30200()
{
  result = qword_1EB95B800;
  if (!qword_1EB95B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B800);
  }

  return result;
}

unint64_t sub_1B6A30258()
{
  result = qword_1EB95B808;
  if (!qword_1EB95B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B808);
  }

  return result;
}

unint64_t sub_1B6A302B0()
{
  result = qword_1EB95B810;
  if (!qword_1EB95B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B810);
  }

  return result;
}

void static UserActivityEndedEvent.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t static UserActivityEndedEvent.timeDurationGranularity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A9A0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B818);
  *a1 = word_1EB95B818;
  a1[1] = v1;
  return result;
}

uint64_t type metadata accessor for UserActivityEndedEvent.Model(uint64_t a1)
{
  result = qword_1EB95B838;
  if (!qword_1EB95B838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserActivityEndedEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B69BFE08(a1, a3, type metadata accessor for EventData);
  v5 = type metadata accessor for UserActivityEndedEvent.Model(0);
  return sub_1B69BFE08(a2, a3 + *(v5 + 20), type metadata accessor for TimedData);
}

uint64_t sub_1B6A30570()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_1B6A305A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A3068C(uint64_t a1)
{
  v2 = sub_1B6A30914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A306C8(uint64_t a1)
{
  v2 = sub_1B6A30914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserActivityEndedEvent.Model.encode(to:)(void *a1)
{
  sub_1B6A30D4C(0, &qword_1EB95B820, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A30914();
  sub_1B6ABA2D0();
  v9[15] = 0;
  type metadata accessor for EventData(0);
  sub_1B69BFEE0(&qword_1EDBCAAD0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1B6ABA040();
  if (!v1)
  {
    type metadata accessor for UserActivityEndedEvent.Model(0);
    v9[14] = 1;
    type metadata accessor for TimedData(0);
    sub_1B69BFEE0(&qword_1EDBCAAB8, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1B6ABA040();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B6A30914()
{
  result = qword_1EB95B828;
  if (!qword_1EB95B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B828);
  }

  return result;
}

uint64_t UserActivityEndedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A30D4C(0, &qword_1EB95B830, MEMORY[0x1E69E6F48]);
  v24 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for UserActivityEndedEvent.Model(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A30914();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v13 = v21;
  v14 = v12;
  v26 = 0;
  sub_1B69BFEE0(&qword_1EDBCAAC8, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  v15 = v23;
  sub_1B6AB9F90();
  sub_1B69BFE08(v15, v14, type metadata accessor for EventData);
  v25 = 1;
  sub_1B69BFEE0(&qword_1EDBCAAB0, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  sub_1B6AB9F90();
  (*(v13 + 8))(v9, v24);
  sub_1B69BFE08(v5, v14 + *(v10 + 20), type metadata accessor for TimedData);
  sub_1B6A30DB0(v14, v19, type metadata accessor for UserActivityEndedEvent.Model);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1B6A30E18(v14, type metadata accessor for UserActivityEndedEvent.Model);
}

void sub_1B6A30D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A30914();
    v7 = a3(a1, &type metadata for UserActivityEndedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A30DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A30E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A30EA8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB95A9A0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIBYTE(word_1EB95B818);
  *a1 = word_1EB95B818;
  a1[1] = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeDurationGranularity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for TimeDurationGranularity(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_1B6A31094(uint64_t a1)
{
  result = type metadata accessor for EventData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimedData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B6A3112C()
{
  result = qword_1EB95B848;
  if (!qword_1EB95B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B848);
  }

  return result;
}

unint64_t sub_1B6A31184()
{
  result = qword_1EB95B850;
  if (!qword_1EB95B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B850);
  }

  return result;
}

unint64_t sub_1B6A311DC()
{
  result = qword_1EB95B858;
  if (!qword_1EB95B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B858);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B6A3125C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1B6A312A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A31310(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x444972657375;
    v5 = 0xD000000000000012;
    if (a1 != 3)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    if (a1)
    {
      v4 = 0x6F43444972657375;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6873614872657375;
    if (a1 != 9)
    {
      v1 = 0x6570795472657375;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    if (a1 != 5)
    {
      v2 = 0x7261745372657375;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6A314A4(void *a1)
{
  v3 = v1;
  sub_1B6A32364(0, &qword_1EB95B888, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A322BC();
  sub_1B6ABA2D0();
  v11[15] = 0;
  sub_1B6ABA000();
  if (!v2)
  {
    v11[14] = 1;
    sub_1B6ABA000();
    v11[13] = 2;
    sub_1B6ABA030();
    v11[12] = 3;
    sub_1B6ABA030();
    v11[11] = 4;
    sub_1B6ABA030();
    v11[10] = 5;
    sub_1B6ABA010();
    v11[9] = 6;
    sub_1B6ABA030();
    v11[8] = 7;
    sub_1B6ABA030();
    v11[7] = 8;
    sub_1B6ABA000();
    v11[6] = 9;
    sub_1B6ABA030();
    v11[5] = *(v3 + 104);
    v11[4] = 10;
    sub_1B6A323C8();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B6A3175C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A3194C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A31790(uint64_t a1)
{
  v2 = sub_1B6A322BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A317CC(uint64_t a1)
{
  v2 = sub_1B6A322BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1B6A31808@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B6A31CF4(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1B6A31874(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A318A4();
  result = sub_1B6A318F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A318A4()
{
  result = qword_1EB95B860;
  if (!qword_1EB95B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B860);
  }

  return result;
}

unint64_t sub_1B6A318F8()
{
  result = qword_1EB95B868;
  if (!qword_1EB95B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B868);
  }

  return result;
}

uint64_t sub_1B6A3194C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43444972657375 && a2 == 0xED0000747865746ELL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B6ACAB90 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B6ACABB0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6ACABD0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B6ACABF0 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xEE0068746E6F4D74 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00007261655974 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6ACAC10 == a2 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6873614872657375 && a2 == 0xEB00000000646F4DLL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B6A31CF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B6A32364(0, &qword_1EB95B870, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A322BC();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42[0]) = 0;
  v10 = sub_1B6AB9F50();
  v12 = v11;
  v58 = a2;
  v13 = v10;
  LOBYTE(v42[0]) = 1;
  v14 = sub_1B6AB9F50();
  *(&v35 + 1) = v15;
  *&v35 = v14;
  LOBYTE(v42[0]) = 2;
  v34 = sub_1B6AB9F80();
  LOBYTE(v42[0]) = 3;
  v33 = sub_1B6AB9F80();
  LOBYTE(v42[0]) = 4;
  v32 = sub_1B6AB9F80();
  LOBYTE(v42[0]) = 5;
  v31 = sub_1B6AB9F60();
  LOBYTE(v42[0]) = 6;
  v16 = sub_1B6AB9F80();
  LOBYTE(v42[0]) = 7;
  v29 = sub_1B6AB9F80();
  LOBYTE(v42[0]) = 8;
  v28 = sub_1B6AB9F50();
  v30 = v17;
  LOBYTE(v42[0]) = 9;
  v27 = sub_1B6AB9F80();
  v55 = 10;
  sub_1B6A32310();
  sub_1B6AB9F90();
  v18 = v31 & 1;
  (*(v7 + 8))(v9, v6);
  v31 = v56;
  *&v36 = v13;
  *(&v36 + 1) = v12;
  v19 = v35;
  v37 = v35;
  v20 = v34;
  *&v38 = v34;
  *(&v38 + 1) = v33;
  v21 = v32;
  *&v39 = v32;
  BYTE8(v39) = v18;
  *(&v39 + 9) = *v57;
  HIDWORD(v39) = *&v57[3];
  *&v40 = v16;
  *(&v40 + 1) = v29;
  *v41 = v28;
  *&v41[8] = v30;
  *&v41[16] = v27;
  v41[24] = v56;
  sub_1B6A0B758(&v36, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v13;
  v42[1] = v12;
  v43 = __PAIR128__(*(&v35 + 1), v19);
  v44 = v20;
  v45 = v33;
  v46 = v21;
  v47 = v18;
  *v48 = *v57;
  *&v48[3] = *&v57[3];
  v49 = v16;
  v50 = v29;
  v51 = v28;
  v52 = v30;
  v53 = v27;
  v54 = v31;
  result = sub_1B6A0B878(v42);
  v23 = *v41;
  v24 = v58;
  v58[4] = v40;
  v24[5] = v23;
  *(v24 + 89) = *&v41[9];
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  v26 = v39;
  v24[2] = v38;
  v24[3] = v26;
  return result;
}

unint64_t sub_1B6A322BC()
{
  result = qword_1EB95B878;
  if (!qword_1EB95B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B878);
  }

  return result;
}

unint64_t sub_1B6A32310()
{
  result = qword_1EB95B880;
  if (!qword_1EB95B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B880);
  }

  return result;
}

void sub_1B6A32364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A322BC();
    v7 = a3(a1, &type metadata for AppAnalyticsUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A323C8()
{
  result = qword_1EB95B890;
  if (!qword_1EB95B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppAnalyticsUserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppAnalyticsUserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6A32570()
{
  result = qword_1EB95B898;
  if (!qword_1EB95B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B898);
  }

  return result;
}

unint64_t sub_1B6A325C8()
{
  result = qword_1EB95B8A0;
  if (!qword_1EB95B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8A0);
  }

  return result;
}

unint64_t sub_1B6A32620()
{
  result = qword_1EB95B8A8;
  if (!qword_1EB95B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8A8);
  }

  return result;
}

uint64_t sub_1B6A32684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E696E7275746572;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7824750;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x6E696E7275746572;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7824750;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B6ABA0F0();
  }

  return v11 & 1;
}

uint64_t sub_1B6A32788()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A32828(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A328B4()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

unint64_t sub_1B6A32950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6A32AE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B6A32980(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E696E7275746572;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7824750;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B6A32A90()
{
  result = qword_1EB95B8B0;
  if (!qword_1EB95B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8B0);
  }

  return result;
}

unint64_t sub_1B6A32AE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6AB9EF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B6A32B30()
{
  result = qword_1EB95B8B8;
  if (!qword_1EB95B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8B8);
  }

  return result;
}

uint64_t Batch.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Batch.userAgent.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Batch.groupName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Batch.sessionStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 40);

  return sub_1B69B20C4(v3, a1);
}

uint64_t Batch.sessionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Batch(0) + 44));

  return v1;
}

double Batch.sessionCrashDetails.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Batch(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1B69EC458(v4, v5, v6, v7, v8, v9);
}

uint64_t Batch.flushDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Batch(0) + 56);

  return sub_1B69B20C4(v3, a1);
}

uint64_t sub_1B6A32D98(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  sub_1B698FE74(a2, &v7);
  if (v6[0] == 0x4D65746176697270 && v2 == 0xEF61746164617465)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B6ABA0F0() ^ 1;
  }

  sub_1B69B4B90(v6);
  return v4 & 1;
}

uint64_t sub_1B6A32E68()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t *sub_1B6A32EB0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *, __n128))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_1B698FE74(v15 + 32 * v14, v24);

    v18 = (a4)(v25, v24);
    __swift_destroy_boxed_opaque_existential_1(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1B69B4BEC(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B69B4BEC(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B6A33038(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B6A32EB0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

double BatchEvent.metadata.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void BatchEvent.privateMetadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t BatchEvent.Metadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B6A331B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A3323C(uint64_t a1)
{
  v2 = sub_1B6A3341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A33278(uint64_t a1)
{
  v2 = sub_1B6A3341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.Metadata.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8C8, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A3341C()
{
  result = qword_1EDBC8BC8;
  if (!qword_1EDBC8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BC8);
  }

  return result;
}

uint64_t BatchEvent.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1B6A34E00(0, &qword_1EDBC8960, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v9 = v15;
    v10 = sub_1B6AB9F50();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A33630(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8C8, sub_1B6A3341C, &type metadata for BatchEvent.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A3341C();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B6A337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001B6ACAC30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B6A33850(uint64_t a1)
{
  v2 = sub_1B6A33A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A3388C(uint64_t a1)
{
  v2 = sub_1B6A33A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.PrivateMetadata.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D0, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2D0();
  sub_1B6ABA050();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A33A2C()
{
  result = qword_1EDBC8670;
  if (!qword_1EDBC8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8670);
  }

  return result;
}

uint64_t BatchEvent.PrivateMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  sub_1B6A34E00(0, &qword_1EDBC8020, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v9 = v13;
    v10 = sub_1B6AB9FA0();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A33C3C(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D0, sub_1B6A33A2C, &type metadata for BatchEvent.PrivateMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A33A2C();
  sub_1B6ABA2D0();
  sub_1B6ABA050();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B6A33DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B6A33E3C(uint64_t a1)
{
  if (!qword_1EDBC8988[0])
  {
    type metadata accessor for EventData(255);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, qword_1EDBC8988);
    }
  }
}

uint64_t sub_1B6A33E94(uint64_t a1)
{
  v2 = sub_1B6A340B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A33ED0(uint64_t a1)
{
  v2 = sub_1B6A340B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.Event.encode(to:)(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D8, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2D0();
  type metadata accessor for EventData(0);
  sub_1B69BFF28(&qword_1EDBCAAD0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1B6AB9FF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A340B8()
{
  result = qword_1EDBC8C68;
  if (!qword_1EDBC8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C68);
  }

  return result;
}

uint64_t BatchEvent.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1B6A33E3C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A34E00(0, &qword_1EDBC8970, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for BatchEvent.Event(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    type metadata accessor for EventData(0);
    sub_1B69BFF28(&qword_1EDBCAAC8, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v15 = v19;
    sub_1B6AB9F40();
    (*(v14 + 8))(v9, v7);
    sub_1B6A343C8(v15, v12, sub_1B6A33E3C);
    sub_1B6A343C8(v12, v13, type metadata accessor for BatchEvent.Event);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6A343C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A34448(void *a1)
{
  sub_1B6A34E00(0, &qword_1EB95B8D8, sub_1B6A340B8, &type metadata for BatchEvent.Event.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A340B8();
  sub_1B6ABA2D0();
  type metadata accessor for EventData(0);
  sub_1B69BFF28(&qword_1EDBCAAD0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1B6AB9FF0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B6A345F4()
{
  v1 = 0x4D65746176697270;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B6A34654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6A355BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A3467C(uint64_t a1)
{
  v2 = sub_1B6A34960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A346B8(uint64_t a1)
{
  v2 = sub_1B6A34960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BatchEvent.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6A34E00(0, &qword_1EB95B8E0, sub_1B6A34960, &type metadata for BatchEvent.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A34960();
  sub_1B6ABA2D0();
  v10 = v3[1];
  v13 = *v3;
  v14 = v10;
  v15 = 0;
  sub_1B6A349B4();

  sub_1B6ABA040();
  if (v2)
  {
  }

  else
  {

    v11 = *(v3 + 24);
    v13 = v3[2];
    LOBYTE(v14) = v11;
    v15 = 1;
    sub_1B6A34A08();
    sub_1B6AB9FF0();
    type metadata accessor for BatchEvent(0);
    LOBYTE(v13) = 2;
    type metadata accessor for BatchEvent.Event(0);
    sub_1B69BFF28(&qword_1EB95B8F8, type metadata accessor for BatchEvent.Event, &protocol conformance descriptor for BatchEvent.Event);
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B6A34960()
{
  result = qword_1EDBC8BE0;
  if (!qword_1EDBC8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BE0);
  }

  return result;
}

unint64_t sub_1B6A349B4()
{
  result = qword_1EB95B8E8;
  if (!qword_1EB95B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8E8);
  }

  return result;
}

unint64_t sub_1B6A34A08()
{
  result = qword_1EB95B8F0;
  if (!qword_1EB95B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B8F0);
  }

  return result;
}

uint64_t BatchEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for BatchEvent.Event(0);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A34E00(0, &qword_1EDBC8968, sub_1B6A34960, &type metadata for BatchEvent.CodingKeys, MEMORY[0x1E69E6F48]);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for BatchEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A34960();
  v22 = v7;
  v11 = v23;
  sub_1B6ABA2A0();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v10;
  v26 = 0;
  sub_1B6A34E68();
  v14 = v21;
  sub_1B6AB9F90();
  v15 = v25;
  *v13 = v24;
  *(v13 + 8) = v15;
  v26 = 1;
  sub_1B6A34EBC();
  sub_1B6AB9F40();
  v16 = v25;
  *(v13 + 16) = v24;
  *(v13 + 24) = v16;
  LOBYTE(v24) = 2;
  sub_1B69BFF28(&qword_1EDBC8C50, type metadata accessor for BatchEvent.Event, &protocol conformance descriptor for BatchEvent.Event);
  sub_1B6AB9F90();
  (*(v12 + 8))(v22, v14);
  sub_1B6A343C8(v4, v13 + *(v8 + 24), type metadata accessor for BatchEvent.Event);
  sub_1B6A33DD4(v13, v18, type metadata accessor for BatchEvent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A34F10(v13);
}

void sub_1B6A34E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1B6A34E68()
{
  result = qword_1EDBC8BB0;
  if (!qword_1EDBC8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BB0);
  }

  return result;
}

unint64_t sub_1B6A34EBC()
{
  result = qword_1EDBC8658;
  if (!qword_1EDBC8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8658);
  }

  return result;
}

uint64_t sub_1B6A34F10(uint64_t a1)
{
  v2 = type metadata accessor for BatchEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A34FC4(uint64_t a1)
{
  sub_1B6A35058();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BatchEvent.Event(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6A35058()
{
  if (!qword_1EDBC8650)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8650);
    }
  }
}

void sub_1B6A350F0(uint64_t a1)
{
  sub_1B6A33E3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B6A351A0()
{
  result = qword_1EB95B900;
  if (!qword_1EB95B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B900);
  }

  return result;
}

unint64_t sub_1B6A351F8()
{
  result = qword_1EB95B908;
  if (!qword_1EB95B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B908);
  }

  return result;
}

unint64_t sub_1B6A35250()
{
  result = qword_1EB95B910;
  if (!qword_1EB95B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B910);
  }

  return result;
}

unint64_t sub_1B6A352A8()
{
  result = qword_1EB95B918;
  if (!qword_1EB95B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B918);
  }

  return result;
}

unint64_t sub_1B6A35300()
{
  result = qword_1EDBC8BD0;
  if (!qword_1EDBC8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BD0);
  }

  return result;
}

unint64_t sub_1B6A35358()
{
  result = qword_1EDBC8BD8;
  if (!qword_1EDBC8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BD8);
  }

  return result;
}

unint64_t sub_1B6A353B0()
{
  result = qword_1EDBC8C58;
  if (!qword_1EDBC8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C58);
  }

  return result;
}

unint64_t sub_1B6A35408()
{
  result = qword_1EDBC8C60;
  if (!qword_1EDBC8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8C60);
  }

  return result;
}

unint64_t sub_1B6A35460()
{
  result = qword_1EDBC8660;
  if (!qword_1EDBC8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8660);
  }

  return result;
}

unint64_t sub_1B6A354B8()
{
  result = qword_1EDBC8668;
  if (!qword_1EDBC8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8668);
  }

  return result;
}

unint64_t sub_1B6A35510()
{
  result = qword_1EDBC8BB8;
  if (!qword_1EDBC8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BB8);
  }

  return result;
}

unint64_t sub_1B6A35568()
{
  result = qword_1EDBC8BC0;
  if (!qword_1EDBC8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8BC0);
  }

  return result;
}

uint64_t sub_1B6A355BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D65746176697270 && a2 == 0xEF61746164617465 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

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

uint64_t type metadata accessor for BatchRepair(uint64_t a1)
{
  result = qword_1EDBC99D8;
  if (!qword_1EDBC99D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B6A3575C(uint64_t a1)
{
  result = type metadata accessor for Batch(319);
  if (v2 <= 0x3F)
  {
    result = sub_1B697E288();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6A35804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A35888(uint64_t a1)
{
  v2 = sub_1B6A35CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A358C4(uint64_t a1)
{
  v2 = sub_1B6A35CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A35900@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A35D04(0, &qword_1EB95B930, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A35CB0();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1B6AB9F50();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1B6A35A8C(void *a1)
{
  sub_1B6A35D04(0, &qword_1EB95B940, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A35CB0();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B6A35BD8(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A35C08();
  result = sub_1B6A35C5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A35C08()
{
  result = qword_1EB95B920;
  if (!qword_1EB95B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B920);
  }

  return result;
}

unint64_t sub_1B6A35C5C()
{
  result = qword_1EB95B928;
  if (!qword_1EB95B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B928);
  }

  return result;
}

unint64_t sub_1B6A35CB0()
{
  result = qword_1EB95B938;
  if (!qword_1EB95B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B938);
  }

  return result;
}

void sub_1B6A35D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A35CB0();
    v7 = a3(a1, &type metadata for EssentialUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A35D7C()
{
  result = qword_1EB95B948;
  if (!qword_1EB95B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B948);
  }

  return result;
}

unint64_t sub_1B6A35DD4()
{
  result = qword_1EB95B950;
  if (!qword_1EB95B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B950);
  }

  return result;
}

unint64_t sub_1B6A35E2C()
{
  result = qword_1EB95B958;
  if (!qword_1EB95B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B958);
  }

  return result;
}

void Flushable.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B698E534;
    v6[3] = &block_descriptor_6;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 flushWithCallbackQueue:a1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_1B6A35F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A35FA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B6A35FEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1B6A36038(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = a1[3];
  if (((*(a3 + 24))(a2, a3) & 1) != 0 && (v11 & 1) != 0 || ((*(a3 + 32))(a2, a3) & 1) != 0 && (v13 = *(v12 + OBJC_IVAR___AATrackingConsent_consented), os_unfair_lock_lock((v13 + 20)), v14 = *(v13 + 16), os_unfair_lock_unlock((v13 + 20)), v14))
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    a4(v9, v10);
  }
}

void sub_1B6A36124(uint64_t *a1@<X0>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v24 = a1[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v10 = [ObjCClassFromMetadata requiresDiagnosticsConsent];
  }

  else
  {
    v10 = 2;
  }

  v11 = [ObjCClassFromMetadata respondsToSelector_];
  if (v11)
  {
    v12 = [ObjCClassFromMetadata requiresTrackingConsent];
    v13 = v10 == 2;
    if (((v10 != 2) & v10 & v8) != 0)
    {
      goto LABEL_28;
    }

    if (v12)
    {
      v14 = *(v24 + OBJC_IVAR___AATrackingConsent_consented);
      os_unfair_lock_lock((v14 + 20));
      v23 = *(v14 + 16);
      os_unfair_lock_unlock((v14 + 20));
      if (!v23)
      {
        v15 = 1;
        goto LABEL_11;
      }

LABEL_28:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }
  }

  else
  {
    v13 = v10 == 2;
    if (((v10 != 2) & v10 & v8) == 1)
    {
      goto LABEL_28;
    }
  }

  v15 = 0;
LABEL_11:
  v16 = a3(v6, v7);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  type metadata accessor for BridgedRawDataEvent();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_unknownObjectRetain();
    if (v13)
    {
      v10 = v19[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent];
    }

    v20 = v24;
    if ((v11 & 1) == 0)
    {
      v15 = v19[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent];
      if ((v10 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      if (v8)
      {
LABEL_27:
        swift_unknownObjectRelease();

        goto LABEL_28;
      }

LABEL_21:
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_19:
    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 &= !v13;
  v20 = v24;
  v19 = 0;
  if (v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v15 = 1;
    if (v8)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_26:
  v21 = *(v20 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v21 + 20));
  v22 = *(v21 + 16);
  os_unfair_lock_unlock((v21 + 20));
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_29:
  *(a4 + 24) = &type metadata for BridgedDataEvent;
  *(a4 + 32) = sub_1B69E85A4();

  *a4 = v17;
}

void _s12AppAnalytics12TimeDurationV12timeIntervalACSd_tcfC_0(void *a1@<X8>, double a2@<D0>)
{
  v2 = a2 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    *a1 = v2;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t TimeDuration.init(_:)@<X0>(void *a3@<X8>)
{
  v4 = sub_1B6ABA2E0() * 1000.0;
  result = sub_1B6ABA2E0();
  v7 = v4 + v6 * 1.0e-15;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    *a3 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TimeDuration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1B6ABA120();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDuration.encode(to:)(void *a1)
{
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB9E10();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2B0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1B6ABA2C0();
  sub_1B6AB9E00();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v7 + 32))(v9, v5, v6);
  if (!*(v11 + 16) || (v13 = sub_1B69A5E70(v9), (v14 & 1) == 0))
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_7;
  }

  sub_1B698FE74(*(v11 + 56) + 32 * v13, v19);
  (*(v7 + 8))(v9, v6);

  if (!swift_dynamicCast())
  {
LABEL_7:
    v15 = 2;
    goto LABEL_8;
  }

  v15 = v18 | (BYTE1(v18) << 8);
LABEL_8:
  v21 = (v15 != 2) & v15;
  if (v15 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = HIBYTE(v15);
  }

  v22 = v16;
  v18 = v10;
  sub_1B6A407E8(&v18, v19);
  __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1B6ABA140();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void sub_1B6A3682C(uint64_t a1)
{
  if (!qword_1EDBC9B90)
  {
    sub_1B6AB9E10();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC9B90);
    }
  }
}

uint64_t sub_1B6A36884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1B6ABA120();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BridgedEventData.eventID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_eventID);

  return v1;
}

uint64_t BridgedEventData.eventDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAEventData_eventDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BridgedEventData.eventPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_eventPath);

  return v1;
}

uint64_t BridgedEventData.sessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_sessionID);

  return v1;
}

uint64_t BridgedEventData.appSessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEventData_appSessionID);

  return v1;
}

id BridgedEventData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}