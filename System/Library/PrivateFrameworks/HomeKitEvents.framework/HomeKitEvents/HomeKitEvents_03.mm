uint64_t sub_254170E7C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v321 = a4;
  v320 = a1;
  v367 = sub_25424D8B8();
  v5 = *(v367 - 8);
  v6 = MEMORY[0x28223BE20](v367);
  v8 = &v317 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v317 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v339 = &v317 - v13;
  MEMORY[0x28223BE20](v12);
  v338 = &v317 - v14;
  v359 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v15 = MEMORY[0x28223BE20](v359);
  v357 = &v317 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v356 = &v317 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v355 = &v317 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v354 = &v317 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v334 = &v317 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v333 = &v317 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v332 = &v317 - v28;
  MEMORY[0x28223BE20](v27);
  v331 = &v317 - v29;
  v358 = type metadata accessor for SomeAccessoryEvent(0);
  v30 = MEMORY[0x28223BE20](v358);
  v353 = &v317 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v352 = &v317 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v351 = &v317 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v350 = &v317 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v330 = &v317 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v329 = &v317 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v328 = &v317 - v43;
  MEMORY[0x28223BE20](v42);
  v327 = &v317 - v44;
  v45 = type metadata accessor for SomeEvent(0);
  v46 = MEMORY[0x28223BE20](v45);
  v379 = &v317 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v378 = &v317 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v346 = &v317 - v51;
  MEMORY[0x28223BE20](v50);
  v345 = &v317 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v340 = *(v53 - 8);
  v54 = MEMORY[0x28223BE20](v53);
  v325 = &v317 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v362 = &v317 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v377 = &v317 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v376 = &v317 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v317 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v368 = &v317 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v344 = &v317 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v343 = &v317 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v72 = MEMORY[0x28223BE20](v71);
  v342 = &v317 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v319 = &v317 - v75;
  result = MEMORY[0x28223BE20](v74);
  v318 = &v317 - v78;
  v341 = a3;
  v79 = a3[1];
  if (v79 < 1)
  {
    v80 = MEMORY[0x277D84F90];
LABEL_225:
    v83 = *v320;
    if (!*v320)
    {
      goto LABEL_267;
    }

    v90 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v348;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_261;
    }

    result = v90;
LABEL_228:
    v391 = result;
    v90 = *(result + 16);
    if (v90 >= 2)
    {
      while (*v341)
      {
        v313 = *(result + 16 * v90);
        v314 = result;
        v315 = *(result + 16 * (v90 - 1) + 40);
        sub_254176EF4((*v341 + *(v340 + 72) * v313), *v341 + *(v340 + 72) * *(result + 16 * (v90 - 1) + 32), (*v341 + *(v340 + 72) * v315), v83);
        if (v81)
        {
        }

        if (v315 < v313)
        {
          goto LABEL_254;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v314 = sub_254179EB8(v314);
        }

        if (v90 - 2 >= *(v314 + 2))
        {
          goto LABEL_255;
        }

        v316 = &v314[16 * v90];
        *v316 = v313;
        *(v316 + 1) = v315;
        v391 = v314;
        sub_254179E2C(v90 - 1);
        result = v391;
        v90 = *(v391 + 16);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_265;
    }
  }

  v349 = v77;
  v365 = (v5 + 8);
  v80 = MEMORY[0x277D84F90];
  v364 = v8;
  v363 = v11;
  v380 = v45;
  v81 = 0;
  v369 = result;
  v366 = v64;
  v82 = result;
  while (1)
  {
    v83 = v81;
    v326 = v80;
    v322 = v81;
    if (v81 + 1 >= v79)
    {
      v98 = v81 + 1;
      v169 = v321;
      v90 = v368;
      goto LABEL_88;
    }

    v347 = v79;
    v84 = *v341;
    v85 = *(v340 + 72);
    v86 = *v341 + v85 * (v81 + 1);
    v87 = v318;
    sub_254132DF4(v86, v318, &qword_27F5B8DD0, &qword_2542545A0);
    v88 = v319;
    sub_254132DF4(v84 + v85 * v81, v319, &qword_27F5B8DD0, &qword_2542545A0);
    v89 = v348;
    LODWORD(v361) = sub_254167F50(v87, v88);
    v81 = v89;
    v90 = v368;
    if (v89)
    {
      sub_254132E5C(v88, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132E5C(v87, &qword_27F5B8DD0, &qword_2542545A0);
    }

    sub_254132E5C(v88, &qword_27F5B8DD0, &qword_2542545A0);
    sub_254132E5C(v87, &qword_27F5B8DD0, &qword_2542545A0);
    v91 = (v322 + 2);
    result = v84 + v85 * (v322 + 2);
    v348 = 0;
    v370 = v85;
    while (1)
    {
      v98 = v347;
      v82 = v369;
      if (v347 == v91)
      {
        break;
      }

      v374 = v91;
      v373 = result;
      v99 = v342;
      sub_254132DF4(result, v342, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v86, v349, &qword_27F5B8DD0, &qword_2542545A0);
      v100 = v99;
      v101 = v343;
      sub_254132DF4(v100, v343, &qword_27F5B8DD0, &qword_2542545A0);
      v102 = *(v82 + 48);
      sub_25417C110(v101 + v102, v345, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v387 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v384);
          sub_25417C178(v345, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_40;
        }

        v109 = v331;
        sub_25417C178(v345, v331, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v109, v332, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v110 = swift_getEnumCaseMultiPayload();
        if (v110)
        {
          if (v110 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v111 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v112 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v111 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v112 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v111 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v112 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v113 = v112;
        v387 = v111;
        v114 = __swift_allocate_boxed_opaque_existential_1(&v384);
        sub_25417C178(v332, v114, v113);
        sub_25412DC4C(&v384, &v388);
        v115 = v389;
        v116 = v390;
        v117 = __swift_project_boxed_opaque_existential_1(&v388, v389);
        SessionEvent = v115;
        v387 = *(v116 + 16);
        v118 = __swift_allocate_boxed_opaque_existential_1(&v384);
        (*(*(v115 - 8) + 16))(v118, v117, v115);
        v119 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v120 = &v363;
      }

      else
      {
        v105 = v327;
        sub_25417C178(v345, v327, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v105, v328, type metadata accessor for SomeAccessoryEvent);
        v106 = swift_getEnumCaseMultiPayload();
        if (v106 > 4)
        {
          if (v106 <= 6)
          {
            if (v106 == 5)
            {
              v389 = type metadata accessor for SmokeDetectorEvent(0);
              v107 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v108 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v389 = type metadata accessor for ThermostatAutomationEvent(0);
              v107 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v108 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v106 == 7)
          {
            v389 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v107 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v108 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v106 == 8)
          {
            v389 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v107 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v108 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v389 = type metadata accessor for WindowEvent(0);
            v107 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v108 = type metadata accessor for WindowEvent;
          }
        }

        else if (v106 <= 1)
        {
          if (v106)
          {
            v389 = type metadata accessor for DoorEvent(0);
            v107 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v108 = type metadata accessor for DoorEvent;
          }

          else
          {
            v389 = type metadata accessor for ContactSensorEvent(0);
            v107 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v108 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v106 == 2)
        {
          v389 = type metadata accessor for GarageDoorEvent(0);
          v107 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v108 = type metadata accessor for GarageDoorEvent;
        }

        else if (v106 == 3)
        {
          v389 = type metadata accessor for LockEvent(0);
          v107 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v108 = type metadata accessor for LockEvent;
        }

        else
        {
          v389 = type metadata accessor for SecuritySystemEvent(0);
          v107 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v108 = type metadata accessor for SecuritySystemEvent;
        }

        v121 = v108;
        v390 = v107;
        v122 = __swift_allocate_boxed_opaque_existential_1(&v388);
        sub_25417C178(v328, v122, v121);
        v123 = v389;
        v124 = v390;
        v125 = __swift_project_boxed_opaque_existential_1(&v388, v389);
        SessionEvent = v123;
        v387 = *(v124 + 16);
        v126 = __swift_allocate_boxed_opaque_existential_1(&v384);
        (*(*(v123 - 8) + 16))(v126, v125, v123);
        v119 = type metadata accessor for SomeAccessoryEvent;
        v120 = &v359;
      }

      sub_25417C0B0(*(v120 - 32), v119);
      __swift_destroy_boxed_opaque_existential_1(&v388);
LABEL_40:
      v128 = SessionEvent;
      v127 = v387;
      v129 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
      v389 = v128;
      v372 = *(v127 + 8);
      v390 = v372;
      v130 = __swift_allocate_boxed_opaque_existential_1(&v388);
      v131 = *(*(v128 - 8) + 16);
      v375 = v130;
      v131(v130, v129, v128);
      __swift_destroy_boxed_opaque_existential_1(&v384);
      v132 = v343;
      sub_25417C0B0(v343 + v102, type metadata accessor for SomeEvent);
      v133 = sub_25424D948();
      v371 = *(*(v133 - 8) + 8);
      (v371)(v132, v133);
      v134 = v344;
      sub_254132DF4(v349, v344, &qword_27F5B8DD0, &qword_2542545A0);
      v135 = *(v369 + 48);
      sub_25417C110(v134 + v135, v346, type metadata accessor for SomeEvent);
      v136 = swift_getEnumCaseMultiPayload();
      if (!v136)
      {
        v138 = v329;
        sub_25417C178(v346, v329, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v138, v330, type metadata accessor for SomeAccessoryEvent);
        v139 = swift_getEnumCaseMultiPayload();
        if (v139 > 4)
        {
          if (v139 <= 6)
          {
            if (v139 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent(0);
              v140 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v141 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v140 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v141 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v139 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v140 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v141 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v139 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v140 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v141 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent(0);
            v140 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v141 = type metadata accessor for WindowEvent;
          }
        }

        else if (v139 <= 1)
        {
          if (v139)
          {
            SessionEvent = type metadata accessor for DoorEvent(0);
            v140 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v141 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent(0);
            v140 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v141 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v139 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent(0);
          v140 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v141 = type metadata accessor for GarageDoorEvent;
        }

        else if (v139 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent(0);
          v140 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v141 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent(0);
          v140 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v141 = type metadata accessor for SecuritySystemEvent;
        }

        v154 = v141;
        v387 = v140;
        v155 = __swift_allocate_boxed_opaque_existential_1(&v384);
        sub_25417C178(v330, v155, v154);
        v157 = SessionEvent;
        v156 = v387;
        v158 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
        DailyDigestEvent = v157;
        v383 = *(v156 + 16);
        v159 = __swift_allocate_boxed_opaque_existential_1(&v381);
        (*(*(v157 - 8) + 16))(v159, v158, v157);
        v152 = type metadata accessor for SomeAccessoryEvent;
        v153 = &v361;
        goto LABEL_69;
      }

      if (v136 != 1)
      {
        v142 = v333;
        sub_25417C178(v346, v333, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v142, v334, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v143 = swift_getEnumCaseMultiPayload();
        if (v143)
        {
          if (v143 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v144 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v145 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v144 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v145 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v144 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v145 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v146 = v145;
        v383 = v144;
        v147 = __swift_allocate_boxed_opaque_existential_1(&v381);
        sub_25417C178(v334, v147, v146);
        sub_25412DC4C(&v381, &v384);
        v148 = SessionEvent;
        v149 = v387;
        v150 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
        DailyDigestEvent = v148;
        v383 = *(v149 + 16);
        v151 = __swift_allocate_boxed_opaque_existential_1(&v381);
        (*(*(v148 - 8) + 16))(v151, v150, v148);
        v152 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v153 = &v365;
LABEL_69:
        sub_25417C0B0(*(v153 - 32), v152);
        __swift_destroy_boxed_opaque_existential_1(&v384);
        goto LABEL_70;
      }

      DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
      v383 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
      v137 = __swift_allocate_boxed_opaque_existential_1(&v381);
      sub_25417C178(v346, v137, type metadata accessor for HomeActivityStateEvent);
LABEL_70:
      v161 = DailyDigestEvent;
      v160 = v383;
      v162 = __swift_project_boxed_opaque_existential_1(&v381, DailyDigestEvent);
      SessionEvent = v161;
      v387 = *(v160 + 8);
      v163 = v387;
      v164 = __swift_allocate_boxed_opaque_existential_1(&v384);
      (*(*(v161 - 8) + 16))(v164, v162, v161);
      __swift_destroy_boxed_opaque_existential_1(&v381);
      v165 = v344;
      sub_25417C0B0(v344 + v135, type metadata accessor for SomeEvent);
      (v371)(v165, v133);
      v166 = v338;
      (*(v372 + 32))(v128);
      v167 = v339;
      (*(v163 + 32))(v161, v163);
      v168 = v166;
      v81 = v86;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v94 = v342;
        v93 = v349;
        v92 = sub_25424DC58();
      }

      else
      {
        v92 = sub_25424D828();
        v93 = v349;
        v94 = v342;
      }

      v85 = v370;
      v95 = *v365;
      v96 = v167;
      v97 = v367;
      (*v365)(v96, v367);
      v95(v168, v97);
      __swift_destroy_boxed_opaque_existential_1(&v384);
      __swift_destroy_boxed_opaque_existential_1(&v388);
      sub_254132E5C(v93, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132E5C(v94, &qword_27F5B8DD0, &qword_2542545A0);
      v91 = (v374 + 1);
      result = v373 + v85;
      v86 += v85;
      v90 = v368;
      if ((v361 & 1) != (v92 & 1))
      {
        v98 = v374;
        v82 = v369;
        break;
      }
    }

    v169 = v321;
    v64 = v366;
    v83 = v322;
    if ((v361 & 1) == 0)
    {
      goto LABEL_88;
    }

    if (v98 < v322)
    {
      goto LABEL_260;
    }

    if (v322 < v98)
    {
      v170 = v82;
      v171 = v85 * (v98 - 1);
      v172 = v98 * v85;
      v173 = v98;
      v174 = v322;
      v175 = v322 * v85;
      do
      {
        if (v174 != --v173)
        {
          v176 = *v341;
          if (!*v341)
          {
            goto LABEL_264;
          }

          v81 = v98;
          sub_25417E6C8(v176 + v175, v325, &qword_27F5B8DD0, &qword_2542545A0);
          if (v175 < v171 || v176 + v175 >= (v176 + v172))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v175 != v171)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_25417E6C8(v325, v176 + v171, &qword_27F5B8DD0, &qword_2542545A0);
          v169 = v321;
          v170 = v369;
          v98 = v81;
          v83 = v322;
          v85 = v370;
        }

        ++v174;
        v171 -= v85;
        v172 -= v85;
        v175 += v85;
      }

      while (v174 < v173);
      v90 = v368;
      v82 = v170;
    }

LABEL_88:
    v177 = v341[1];
    if (v98 >= v177)
    {
      goto LABEL_97;
    }

    if (__OFSUB__(v98, v83))
    {
      goto LABEL_257;
    }

    if (v98 - v83 >= v169)
    {
LABEL_97:
      v81 = v98;
      if (v98 < v83)
      {
        goto LABEL_256;
      }

      goto LABEL_98;
    }

    if (__OFADD__(v83, v169))
    {
      goto LABEL_258;
    }

    if (&v83[v169] >= v177)
    {
      v81 = v341[1];
    }

    else
    {
      v81 = &v83[v169];
    }

    if (v81 < v83)
    {
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      result = sub_254179EB8(v90);
      goto LABEL_228;
    }

    if (v98 == v81)
    {
      goto LABEL_97;
    }

    v226 = *v341;
    v227 = *(v340 + 72);
    v228 = *v341 + v227 * (v98 - 1);
    v360 = -v227;
    v229 = &v83[-v98];
    v361 = v226;
    v323 = v227;
    v230 = v226 + v98 * v227;
    v324 = v81;
LABEL_151:
    v347 = v98;
    v335 = v230;
    v336 = v229;
    v231 = v229;
    v337 = v228;
    v232 = v228;
LABEL_152:
    v371 = v231;
    sub_254132DF4(v230, v90, &qword_27F5B8DD0, &qword_2542545A0);
    sub_254132DF4(v232, v64, &qword_27F5B8DD0, &qword_2542545A0);
    v233 = v376;
    sub_254132DF4(v90, v376, &qword_27F5B8DD0, &qword_2542545A0);
    v234 = *(v82 + 48);
    sub_25417C110(v233 + v234, v378, type metadata accessor for SomeEvent);
    v235 = swift_getEnumCaseMultiPayload();
    v370 = v230;
    if (v235)
    {
      if (v235 == 1)
      {
        v236 = v82;
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v387 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
        v237 = __swift_allocate_boxed_opaque_existential_1(&v384);
        sub_25417C178(v378, v237, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_182;
      }

      v242 = v354;
      sub_25417C178(v378, v354, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v242, v355, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v243 = swift_getEnumCaseMultiPayload();
      v236 = v82;
      if (v243)
      {
        if (v243 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v244 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
          v245 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v244 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
          v245 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v244 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
        v245 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v246 = v245;
      v387 = v244;
      v247 = __swift_allocate_boxed_opaque_existential_1(&v384);
      sub_25417C178(v355, v247, v246);
      sub_25412DC4C(&v384, &v388);
      v248 = v389;
      v249 = v390;
      v250 = __swift_project_boxed_opaque_existential_1(&v388, v389);
      SessionEvent = v248;
      v387 = *(v249 + 16);
      v251 = __swift_allocate_boxed_opaque_existential_1(&v384);
      (*(*(v248 - 8) + 16))(v251, v250, v248);
      v252 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v253 = &v384;
    }

    else
    {
      v238 = v350;
      sub_25417C178(v378, v350, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v238, v351, type metadata accessor for SomeAccessoryEvent);
      v239 = swift_getEnumCaseMultiPayload();
      v236 = v82;
      if (v239 > 4)
      {
        if (v239 <= 6)
        {
          if (v239 == 5)
          {
            v389 = type metadata accessor for SmokeDetectorEvent(0);
            v240 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
            v241 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v389 = type metadata accessor for ThermostatAutomationEvent(0);
            v240 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
            v241 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v239 == 7)
        {
          v389 = type metadata accessor for ThermostatAutomationFailureEvent(0);
          v240 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
          v241 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v239 == 8)
        {
          v389 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v240 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
          v241 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v389 = type metadata accessor for WindowEvent(0);
          v240 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
          v241 = type metadata accessor for WindowEvent;
        }
      }

      else if (v239 <= 1)
      {
        if (v239)
        {
          v389 = type metadata accessor for DoorEvent(0);
          v240 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
          v241 = type metadata accessor for DoorEvent;
        }

        else
        {
          v389 = type metadata accessor for ContactSensorEvent(0);
          v240 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
          v241 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v239 == 2)
      {
        v389 = type metadata accessor for GarageDoorEvent(0);
        v240 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
        v241 = type metadata accessor for GarageDoorEvent;
      }

      else if (v239 == 3)
      {
        v389 = type metadata accessor for LockEvent(0);
        v240 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
        v241 = type metadata accessor for LockEvent;
      }

      else
      {
        v389 = type metadata accessor for SecuritySystemEvent(0);
        v240 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
        v241 = type metadata accessor for SecuritySystemEvent;
      }

      v254 = v241;
      v390 = v240;
      v255 = __swift_allocate_boxed_opaque_existential_1(&v388);
      sub_25417C178(v351, v255, v254);
      v256 = v389;
      v257 = v390;
      v258 = __swift_project_boxed_opaque_existential_1(&v388, v389);
      SessionEvent = v256;
      v387 = *(v257 + 16);
      v259 = __swift_allocate_boxed_opaque_existential_1(&v384);
      (*(*(v256 - 8) + 16))(v259, v258, v256);
      v252 = type metadata accessor for SomeAccessoryEvent;
      v253 = (&v381 + 8);
    }

    sub_25417C0B0(*(v253 - 32), v252);
    __swift_destroy_boxed_opaque_existential_1(&v388);
LABEL_182:
    v260 = SessionEvent;
    v261 = v387;
    v262 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
    v389 = v260;
    v375 = *(v261 + 8);
    v390 = v375;
    v263 = __swift_allocate_boxed_opaque_existential_1(&v388);
    v264 = *(*(v260 - 8) + 16);
    v374 = v263;
    v264(v263, v262, v260);
    __swift_destroy_boxed_opaque_existential_1(&v384);
    v265 = v376;
    sub_25417C0B0(v376 + v234, type metadata accessor for SomeEvent);
    v266 = sub_25424D948();
    v267 = *(v266 - 8);
    v373 = *(v267 + 8);
    v372 = v267 + 8;
    v373(v265, v266);
    v268 = v377;
    sub_254132DF4(v64, v377, &qword_27F5B8DD0, &qword_2542545A0);
    v269 = *(v236 + 48);
    sub_25417C110(v268 + v269, v379, type metadata accessor for SomeEvent);
    v270 = swift_getEnumCaseMultiPayload();
    if (v270)
    {
      if (v270 == 1)
      {
        DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
        v383 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
        v271 = __swift_allocate_boxed_opaque_existential_1(&v381);
        sub_25417C178(v379, v271, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_212;
      }

      v276 = v356;
      sub_25417C178(v379, v356, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v276, v357, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v277 = swift_getEnumCaseMultiPayload();
      if (v277)
      {
        if (v277 == 1)
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v278 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
          v279 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v278 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
          v279 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v278 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
        v279 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v280 = v279;
      v383 = v278;
      v281 = __swift_allocate_boxed_opaque_existential_1(&v381);
      sub_25417C178(v357, v281, v280);
      sub_25412DC4C(&v381, &v384);
      v282 = SessionEvent;
      v283 = v387;
      v284 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
      DailyDigestEvent = v282;
      v383 = *(v283 + 16);
      v285 = __swift_allocate_boxed_opaque_existential_1(&v381);
      (*(*(v282 - 8) + 16))(v285, v284, v282);
      v286 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      p_DailyDigestEvent = &v385;
    }

    else
    {
      v272 = v352;
      sub_25417C178(v379, v352, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v272, v353, type metadata accessor for SomeAccessoryEvent);
      v273 = swift_getEnumCaseMultiPayload();
      if (v273 > 4)
      {
        if (v273 <= 6)
        {
          if (v273 == 5)
          {
            SessionEvent = type metadata accessor for SmokeDetectorEvent(0);
            v274 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
            v275 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
            v274 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
            v275 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v273 == 7)
        {
          SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent(0);
          v274 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
          v275 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v273 == 8)
        {
          SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v274 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
          v275 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for WindowEvent(0);
          v274 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
          v275 = type metadata accessor for WindowEvent;
        }
      }

      else if (v273 <= 1)
      {
        if (v273)
        {
          SessionEvent = type metadata accessor for DoorEvent(0);
          v274 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
          v275 = type metadata accessor for DoorEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for ContactSensorEvent(0);
          v274 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
          v275 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v273 == 2)
      {
        SessionEvent = type metadata accessor for GarageDoorEvent(0);
        v274 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
        v275 = type metadata accessor for GarageDoorEvent;
      }

      else if (v273 == 3)
      {
        SessionEvent = type metadata accessor for LockEvent(0);
        v274 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
        v275 = type metadata accessor for LockEvent;
      }

      else
      {
        SessionEvent = type metadata accessor for SecuritySystemEvent(0);
        v274 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
        v275 = type metadata accessor for SecuritySystemEvent;
      }

      v288 = v275;
      v387 = v274;
      v289 = __swift_allocate_boxed_opaque_existential_1(&v384);
      sub_25417C178(v353, v289, v288);
      v291 = SessionEvent;
      v290 = v387;
      v292 = __swift_project_boxed_opaque_existential_1(&v384, SessionEvent);
      DailyDigestEvent = v291;
      v383 = *(v290 + 16);
      v293 = __swift_allocate_boxed_opaque_existential_1(&v381);
      (*(*(v291 - 8) + 16))(v293, v292, v291);
      v286 = type metadata accessor for SomeAccessoryEvent;
      p_DailyDigestEvent = &DailyDigestEvent;
    }

    sub_25417C0B0(*(p_DailyDigestEvent - 32), v286);
    __swift_destroy_boxed_opaque_existential_1(&v384);
LABEL_212:
    v295 = DailyDigestEvent;
    v294 = v383;
    v296 = __swift_project_boxed_opaque_existential_1(&v381, DailyDigestEvent);
    SessionEvent = v295;
    v387 = *(v294 + 8);
    v297 = v387;
    v298 = __swift_allocate_boxed_opaque_existential_1(&v384);
    (*(*(v295 - 8) + 16))(v298, v296, v295);
    __swift_destroy_boxed_opaque_existential_1(&v381);
    v299 = v377;
    sub_25417C0B0(v377 + v269, type metadata accessor for SomeEvent);
    v373(v299, v266);
    v300 = v363;
    (v375[4])(v260);
    v301 = v364;
    (*(v297 + 32))(v295, v297);
    if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
    {
      sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      v302 = v368;
      v64 = v366;
      v303 = sub_25424DC58();
      v304 = v369;
    }

    else
    {
      v303 = sub_25424D828();
      v304 = v369;
      v64 = v366;
      v302 = v368;
    }

    v305 = *v365;
    v306 = v301;
    v307 = v367;
    (*v365)(v306, v367);
    v305(v300, v307);
    __swift_destroy_boxed_opaque_existential_1(&v384);
    __swift_destroy_boxed_opaque_existential_1(&v388);
    sub_254132E5C(v64, &qword_27F5B8DD0, &qword_2542545A0);
    result = sub_254132E5C(v302, &qword_27F5B8DD0, &qword_2542545A0);
    v90 = v302;
    if (v303)
    {
      break;
    }

    v82 = v304;
LABEL_150:
    v98 = v347 + 1;
    v228 = v337 + v323;
    v229 = v336 - 1;
    v230 = v335 + v323;
    v81 = v324;
    if (v347 + 1 != v324)
    {
      goto LABEL_151;
    }

    v83 = v322;
    if (v324 < v322)
    {
      goto LABEL_256;
    }

LABEL_98:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v80 = v326;
    }

    else
    {
      result = sub_25417A0A0(0, *(v326 + 2) + 1, 1, v326);
      v80 = result;
    }

    v179 = *(v80 + 2);
    v178 = *(v80 + 3);
    v90 = v179 + 1;
    if (v179 >= v178 >> 1)
    {
      result = sub_25417A0A0((v178 > 1), v179 + 1, 1, v80);
      v80 = result;
    }

    *(v80 + 2) = v90;
    v180 = &v80[16 * v179];
    *(v180 + 4) = v83;
    *(v180 + 5) = v81;
    v83 = *v320;
    if (!*v320)
    {
      goto LABEL_266;
    }

    v181 = v82;
    if (v179)
    {
      while (1)
      {
        v182 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v183 = *(v80 + 4);
          v184 = *(v80 + 5);
          v193 = __OFSUB__(v184, v183);
          v185 = v184 - v183;
          v186 = v193;
LABEL_117:
          if (v186)
          {
            goto LABEL_245;
          }

          v199 = &v80[16 * v90];
          v201 = *v199;
          v200 = *(v199 + 1);
          v202 = __OFSUB__(v200, v201);
          v203 = v200 - v201;
          v204 = v202;
          if (v202)
          {
            goto LABEL_248;
          }

          v205 = &v80[16 * v182 + 32];
          v207 = *v205;
          v206 = *(v205 + 1);
          v193 = __OFSUB__(v206, v207);
          v208 = v206 - v207;
          if (v193)
          {
            goto LABEL_251;
          }

          if (__OFADD__(v203, v208))
          {
            goto LABEL_252;
          }

          if (v203 + v208 >= v185)
          {
            if (v185 < v208)
            {
              v182 = v90 - 2;
            }

            goto LABEL_138;
          }

          goto LABEL_131;
        }

        v209 = &v80[16 * v90];
        v211 = *v209;
        v210 = *(v209 + 1);
        v193 = __OFSUB__(v210, v211);
        v203 = v210 - v211;
        v204 = v193;
LABEL_131:
        if (v204)
        {
          goto LABEL_247;
        }

        v212 = &v80[16 * v182];
        v214 = *(v212 + 4);
        v213 = *(v212 + 5);
        v193 = __OFSUB__(v213, v214);
        v215 = v213 - v214;
        if (v193)
        {
          goto LABEL_250;
        }

        if (v215 < v203)
        {
          goto LABEL_3;
        }

LABEL_138:
        v220 = v182 - 1;
        if (v182 - 1 >= v90)
        {
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
          goto LABEL_259;
        }

        if (!*v341)
        {
          goto LABEL_263;
        }

        v221 = v80;
        v90 = *&v80[16 * v220 + 32];
        v222 = *&v80[16 * v182 + 40];
        v223 = v348;
        sub_254176EF4((*v341 + *(v340 + 72) * v90), *v341 + *(v340 + 72) * *&v80[16 * v182 + 32], (*v341 + *(v340 + 72) * v222), v83);
        v348 = v223;
        if (v223)
        {
        }

        if (v222 < v90)
        {
          goto LABEL_241;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v224 = v221;
        }

        else
        {
          v224 = sub_254179EB8(v221);
        }

        v64 = v366;
        if (v220 >= *(v224 + 2))
        {
          goto LABEL_242;
        }

        v225 = &v224[16 * v220];
        *(v225 + 4) = v90;
        *(v225 + 5) = v222;
        v391 = v224;
        result = sub_254179E2C(v182);
        v80 = v391;
        v90 = *(v391 + 16);
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v187 = &v80[16 * v90 + 32];
      v188 = *(v187 - 64);
      v189 = *(v187 - 56);
      v193 = __OFSUB__(v189, v188);
      v190 = v189 - v188;
      if (v193)
      {
        goto LABEL_243;
      }

      v192 = *(v187 - 48);
      v191 = *(v187 - 40);
      v193 = __OFSUB__(v191, v192);
      v185 = v191 - v192;
      v186 = v193;
      if (v193)
      {
        goto LABEL_244;
      }

      v194 = &v80[16 * v90];
      v196 = *v194;
      v195 = *(v194 + 1);
      v193 = __OFSUB__(v195, v196);
      v197 = v195 - v196;
      if (v193)
      {
        goto LABEL_246;
      }

      v193 = __OFADD__(v185, v197);
      v198 = v185 + v197;
      if (v193)
      {
        goto LABEL_249;
      }

      if (v198 >= v190)
      {
        v216 = &v80[16 * v182 + 32];
        v218 = *v216;
        v217 = *(v216 + 1);
        v193 = __OFSUB__(v217, v218);
        v219 = v217 - v218;
        if (v193)
        {
          goto LABEL_253;
        }

        if (v185 < v219)
        {
          v182 = v90 - 2;
        }

        goto LABEL_138;
      }

      goto LABEL_117;
    }

LABEL_3:
    v79 = v341[1];
    v82 = v181;
    if (v81 >= v79)
    {
      goto LABEL_225;
    }
  }

  v308 = v371;
  if (v361)
  {
    v82 = v304;
    v309 = v370;
    v310 = v362;
    sub_25417E6C8(v370, v362, &qword_27F5B8DD0, &qword_2542545A0);
    swift_arrayInitWithTakeFrontToBack();
    sub_25417E6C8(v310, v232, &qword_27F5B8DD0, &qword_2542545A0);
    v232 += v360;
    v230 = v309 + v360;
    v311 = __CFADD__(v308, 1);
    v231 = v308 + 1;
    if (v311)
    {
      goto LABEL_150;
    }

    goto LABEL_152;
  }

  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
  return result;
}

uint64_t sub_254174304(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v240 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v8 = MEMORY[0x28223BE20](v240);
  v229 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v228 = &v220 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v227 = &v220 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v226 = &v220 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v236 = (&v220 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v235 = &v220 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v234 = &v220 - v21;
  MEMORY[0x28223BE20](v20);
  v233 = &v220 - v22;
  v239 = type metadata accessor for SomeAccessoryEvent(0);
  v23 = MEMORY[0x28223BE20](v239);
  v225 = &v220 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v220 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v223 = &v220 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v222 = &v220 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v220 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v232 = &v220 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v231 = &v220 - v37;
  MEMORY[0x28223BE20](v36);
  v230 = &v220 - v38;
  v252 = type metadata accessor for SomeEvent(0);
  v39 = MEMORY[0x28223BE20](v252);
  v247 = &v220 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v244 = &v220 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v220 - v44;
  MEMORY[0x28223BE20](v43);
  v242 = &v220 - v46;
  v246 = sub_25424D8B8();
  v250 = *(v246 - 8);
  v47 = MEMORY[0x28223BE20](v246);
  v237 = &v220 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v243 = &v220 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v241 = &v220 - v52;
  MEMORY[0x28223BE20](v51);
  v248 = &v220 - v53;
  v253 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v54 = MEMORY[0x28223BE20](v253);
  v221 = &v220 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v220 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v220 - v60;
  result = MEMORY[0x28223BE20](v59);
  v64 = &v220 - v63;
  v245 = *(v65 + 72);
  if (!v245)
  {
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  if (a2 - a1 == 0x8000000000000000 && v245 == -1)
  {
    goto LABEL_185;
  }

  v66 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v245 != -1)
  {
    v67 = (a2 - a1) / v245;
    v264 = a1;
    v263 = a4;
    if (v67 < v66 / v245)
    {
      v244 = v45;
      v229 = v33;
      v68 = v67 * v245;
      if (a4 < a1 || a1 + v68 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v243 = (a4 + v68);
      v262 = a4 + v68;
      if (v68 >= 1 && a2 < a3)
      {
        v237 = (v250 + 8);
        v247 = v61;
        v238 = a3;
        while (1)
        {
          sub_25417C110(a2, v64, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C110(a4, v61, type metadata accessor for EventQuery.FetchedRecordInfo);
          v73 = v242;
          sub_25417C110(&v64[*(v253 + 20)], v242, type metadata accessor for SomeEvent);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v250 = a4;
          v251 = a2;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
              v257 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v254);
              sub_25417C178(v73, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_49;
            }

            v81 = v73;
            v82 = v233;
            sub_25417C178(v81, v233, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v82, v234, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v83 = swift_getEnumCaseMultiPayload();
            if (v83)
            {
              if (v83 == 1)
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v84 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
                v85 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v84 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
                v85 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v84 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
              v85 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v86 = v85;
            v257 = v84;
            v87 = __swift_allocate_boxed_opaque_existential_1(&v254);
            sub_25417C178(v234, v87, v86);
            sub_25412DC4C(&v254, &v258);
            v88 = v260;
            v89 = v261;
            v90 = __swift_project_boxed_opaque_existential_1(&v258, v260);
            SessionEvent = v88;
            v257 = *(v89 + 16);
            v91 = __swift_allocate_boxed_opaque_existential_1(&v254);
            (*(*(v88 - 8) + 16))(v91, v90, v88);
            v92 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            v93 = &v263;
          }

          else
          {
            v76 = v73;
            v77 = v230;
            sub_25417C178(v76, v230, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v77, v231, type metadata accessor for SomeAccessoryEvent);
            v78 = swift_getEnumCaseMultiPayload();
            if (v78 > 4)
            {
              if (v78 <= 6)
              {
                if (v78 == 5)
                {
                  v260 = type metadata accessor for SmokeDetectorEvent(0);
                  v79 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
                  v80 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v260 = type metadata accessor for ThermostatAutomationEvent(0);
                  v79 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
                  v80 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v78 == 7)
              {
                v260 = type metadata accessor for ThermostatAutomationFailureEvent(0);
                v79 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
                v80 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v78 == 8)
              {
                v260 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v79 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
                v80 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v260 = type metadata accessor for WindowEvent(0);
                v79 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
                v80 = type metadata accessor for WindowEvent;
              }
            }

            else if (v78 <= 1)
            {
              if (v78)
              {
                v260 = type metadata accessor for DoorEvent(0);
                v79 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
                v80 = type metadata accessor for DoorEvent;
              }

              else
              {
                v260 = type metadata accessor for ContactSensorEvent(0);
                v79 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
                v80 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v78 == 2)
            {
              v260 = type metadata accessor for GarageDoorEvent(0);
              v79 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
              v80 = type metadata accessor for GarageDoorEvent;
            }

            else if (v78 == 3)
            {
              v260 = type metadata accessor for LockEvent(0);
              v79 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
              v80 = type metadata accessor for LockEvent;
            }

            else
            {
              v260 = type metadata accessor for SecuritySystemEvent(0);
              v79 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
              v80 = type metadata accessor for SecuritySystemEvent;
            }

            v94 = v80;
            v261 = v79;
            v95 = __swift_allocate_boxed_opaque_existential_1(&v258);
            sub_25417C178(v231, v95, v94);
            v96 = v260;
            v97 = v261;
            v98 = __swift_project_boxed_opaque_existential_1(&v258, v260);
            SessionEvent = v96;
            v257 = *(v97 + 16);
            v99 = __swift_allocate_boxed_opaque_existential_1(&v254);
            (*(*(v96 - 8) + 16))(v99, v98, v96);
            v92 = type metadata accessor for SomeAccessoryEvent;
            v93 = &v260;
          }

          sub_25417C0B0(*(v93 - 32), v92);
          __swift_destroy_boxed_opaque_existential_1(&v258);
LABEL_49:
          v101 = SessionEvent;
          v100 = v257;
          __swift_project_boxed_opaque_existential_1(&v254, SessionEvent);
          v260 = v101;
          v261 = *(v100 + 8);
          v102 = v261;
          __swift_allocate_boxed_opaque_existential_1(&v258);
          (*(*(v101 - 8) + 16))();
          __swift_destroy_boxed_opaque_existential_1(&v254);
          (*(v102 + 32))(v101, v102);
          __swift_destroy_boxed_opaque_existential_1(&v258);
          v103 = v244;
          sub_25417C110(&v61[*(v253 + 20)], v244, type metadata accessor for SomeEvent);
          v104 = swift_getEnumCaseMultiPayload();
          if (v104)
          {
            if (v104 != 1)
            {
              v113 = v103;
              v114 = v235;
              sub_25417C178(v113, v235, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              sub_25417C110(v114, v236, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              v115 = swift_getEnumCaseMultiPayload();
              if (v115)
              {
                v116 = v241;
                if (v115 == 1)
                {
                  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                  v118 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
                  v119 = type metadata accessor for EnergyKit.LoadSessionEvent;
                }

                else
                {
                  SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                  v118 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
                  v119 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
                }

                v117 = v119;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
                v118 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
                v117 = type metadata accessor for EnergyKit.LoadEvent;
                v116 = v241;
              }

              v257 = v118;
              v120 = __swift_allocate_boxed_opaque_existential_1(&v254);
              sub_25417C178(v236, v120, v117);
              sub_25412DC4C(&v254, &v258);
              v121 = v260;
              v122 = v261;
              v123 = __swift_project_boxed_opaque_existential_1(&v258, v260);
              SessionEvent = v121;
              v257 = *(v122 + 16);
              v124 = __swift_allocate_boxed_opaque_existential_1(&v254);
              (*(*(v121 - 8) + 16))(v124, v123, v121);
              sub_25417C0B0(v235, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
              __swift_destroy_boxed_opaque_existential_1(&v258);
              goto LABEL_80;
            }

            SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
            v257 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
            v105 = __swift_allocate_boxed_opaque_existential_1(&v254);
            sub_25417C178(v103, v105, type metadata accessor for HomeActivityStateEvent);
          }

          else
          {
            v106 = v103;
            v107 = v232;
            sub_25417C178(v106, v232, type metadata accessor for SomeAccessoryEvent);
            v108 = v107;
            v109 = v229;
            sub_25417C110(v108, v229, type metadata accessor for SomeAccessoryEvent);
            v110 = swift_getEnumCaseMultiPayload();
            if (v110 > 4)
            {
              if (v110 <= 6)
              {
                if (v110 == 5)
                {
                  v260 = type metadata accessor for SmokeDetectorEvent(0);
                  v111 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
                  v112 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v260 = type metadata accessor for ThermostatAutomationEvent(0);
                  v111 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
                  v112 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v110 == 7)
              {
                v260 = type metadata accessor for ThermostatAutomationFailureEvent(0);
                v111 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
                v112 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v110 == 8)
              {
                v260 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v111 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
                v112 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v260 = type metadata accessor for WindowEvent(0);
                v111 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
                v112 = type metadata accessor for WindowEvent;
              }
            }

            else if (v110 <= 1)
            {
              if (v110)
              {
                v260 = type metadata accessor for DoorEvent(0);
                v111 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
                v112 = type metadata accessor for DoorEvent;
              }

              else
              {
                v260 = type metadata accessor for ContactSensorEvent(0);
                v111 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
                v112 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v110 == 2)
            {
              v260 = type metadata accessor for GarageDoorEvent(0);
              v111 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
              v112 = type metadata accessor for GarageDoorEvent;
            }

            else if (v110 == 3)
            {
              v260 = type metadata accessor for LockEvent(0);
              v111 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
              v112 = type metadata accessor for LockEvent;
            }

            else
            {
              v260 = type metadata accessor for SecuritySystemEvent(0);
              v111 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
              v112 = type metadata accessor for SecuritySystemEvent;
            }

            v125 = v112;
            v261 = v111;
            v126 = __swift_allocate_boxed_opaque_existential_1(&v258);
            sub_25417C178(v109, v126, v125);
            v127 = v260;
            v128 = v261;
            v129 = __swift_project_boxed_opaque_existential_1(&v258, v260);
            SessionEvent = v127;
            v257 = *(v128 + 16);
            v130 = __swift_allocate_boxed_opaque_existential_1(&v254);
            (*(*(v127 - 8) + 16))(v130, v129, v127);
            sub_25417C0B0(v232, type metadata accessor for SomeAccessoryEvent);
            __swift_destroy_boxed_opaque_existential_1(&v258);
          }

          v116 = v241;
LABEL_80:
          v249 = a1;
          v131 = SessionEvent;
          v132 = v257;
          v133 = __swift_project_boxed_opaque_existential_1(&v254, SessionEvent);
          v260 = v131;
          v134 = *(v132 + 8);
          v261 = v134;
          v135 = __swift_allocate_boxed_opaque_existential_1(&v258);
          (*(*(v131 - 8) + 16))(v135, v133, v131);
          __swift_destroy_boxed_opaque_existential_1(&v254);
          (*(v134 + 32))(v131, v134);
          __swift_destroy_boxed_opaque_existential_1(&v258);
          v136 = v248;
          if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
          {
            sub_25424D948();
            sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
            v137 = v247;
            v138 = sub_25424DC58();
            v139 = v250;
            v140 = v251;
          }

          else
          {
            v138 = sub_25424D828();
            v139 = v250;
            v140 = v251;
            v137 = v247;
          }

          v141 = *v237;
          v142 = v116;
          v143 = v246;
          (*v237)(v142, v246);
          v141(v136, v143);
          sub_25417C0B0(v137, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C0B0(v64, type metadata accessor for EventQuery.FetchedRecordInfo);
          if (v138)
          {
            v144 = v245;
            v145 = v140;
            a2 = v140 + v245;
            v146 = v249;
            v147 = v238;
            if (v249 < v140 || v249 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v61 = v247;
              a4 = v139;
            }

            else
            {
              v61 = v247;
              a4 = v139;
              if (v249 != v145)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          else
          {
            v144 = v245;
            v148 = v139 + v245;
            v146 = v249;
            v147 = v238;
            a2 = v140;
            if (v249 < v139 || v249 >= v148)
            {
              swift_arrayInitWithTakeFrontToBack();
              v61 = v247;
            }

            else
            {
              v61 = v247;
              if (v249 != v139)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v263 = v148;
            a4 = v139 + v144;
          }

          a1 = v146 + v144;
          v264 = a1;
          if (a4 >= v243 || a2 >= v147)
          {
            goto LABEL_183;
          }
        }
      }

      goto LABEL_183;
    }

    v69 = a3;
    v70 = v66 / v245 * v245;
    if (a4 < a2 || a2 + v70 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v71 = v237;
      v72 = v58;
    }

    else
    {
      v71 = v237;
      v72 = v58;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v251 = a2;
    v149 = a4 + v70;
    if (v70 < 1)
    {
LABEL_182:
      v264 = v251;
      v262 = v149;
LABEL_183:
      sub_254179ECC(&v264, &v263, &v262);
      return 1;
    }

    v150 = -v245;
    v236 = (v250 + 8);
    v151 = a4 + v70;
    v249 = a1;
    v250 = a4;
    v245 = -v245;
LABEL_101:
    v234 = v149;
    v152 = v251;
    v251 += v150;
    v153 = v221;
    v238 = v152;
    while (1)
    {
      if (v152 <= a1)
      {
        v264 = v152;
        v262 = v234;
        goto LABEL_183;
      }

      v241 = v69;
      v248 = (v151 + v150);
      sub_25417C110(v151 + v150, v72, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v251, v153, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v72 + *(v253 + 20), v244, type metadata accessor for SomeEvent);
      v154 = swift_getEnumCaseMultiPayload();
      v242 = v151;
      if (v154)
      {
        if (v154 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v257 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v155 = __swift_allocate_boxed_opaque_existential_1(&v254);
          sub_25417C178(v244, v155, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_136;
        }

        v160 = v226;
        sub_25417C178(v244, v226, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v160, v227, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v161 = swift_getEnumCaseMultiPayload();
        if (v161)
        {
          if (v161 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v162 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v163 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v162 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v163 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v162 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v163 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v164 = v163;
        v257 = v162;
        v165 = __swift_allocate_boxed_opaque_existential_1(&v254);
        sub_25417C178(v227, v165, v164);
        sub_25412DC4C(&v254, &v258);
        v166 = v260;
        v167 = v261;
        v168 = __swift_project_boxed_opaque_existential_1(&v258, v260);
        SessionEvent = v166;
        v257 = *(v167 + 16);
        v169 = __swift_allocate_boxed_opaque_existential_1(&v254);
        (*(*(v166 - 8) + 16))(v169, v168, v166);
        v170 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v171 = &v257;
      }

      else
      {
        v156 = v222;
        sub_25417C178(v244, v222, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v156, v223, type metadata accessor for SomeAccessoryEvent);
        v157 = swift_getEnumCaseMultiPayload();
        if (v157 > 4)
        {
          if (v157 <= 6)
          {
            if (v157 == 5)
            {
              v260 = type metadata accessor for SmokeDetectorEvent(0);
              v158 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v159 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v260 = type metadata accessor for ThermostatAutomationEvent(0);
              v158 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v159 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v157 == 7)
          {
            v260 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v158 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v159 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v157 == 8)
          {
            v260 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v158 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v159 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v260 = type metadata accessor for WindowEvent(0);
            v158 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v159 = type metadata accessor for WindowEvent;
          }
        }

        else if (v157 <= 1)
        {
          if (v157)
          {
            v260 = type metadata accessor for DoorEvent(0);
            v158 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v159 = type metadata accessor for DoorEvent;
          }

          else
          {
            v260 = type metadata accessor for ContactSensorEvent(0);
            v158 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v159 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v157 == 2)
        {
          v260 = type metadata accessor for GarageDoorEvent(0);
          v158 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v159 = type metadata accessor for GarageDoorEvent;
        }

        else if (v157 == 3)
        {
          v260 = type metadata accessor for LockEvent(0);
          v158 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v159 = type metadata accessor for LockEvent;
        }

        else
        {
          v260 = type metadata accessor for SecuritySystemEvent(0);
          v158 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v159 = type metadata accessor for SecuritySystemEvent;
        }

        v172 = v159;
        v261 = v158;
        v173 = __swift_allocate_boxed_opaque_existential_1(&v258);
        sub_25417C178(v223, v173, v172);
        v174 = v260;
        v175 = v261;
        v176 = __swift_project_boxed_opaque_existential_1(&v258, v260);
        SessionEvent = v174;
        v257 = *(v175 + 16);
        v177 = __swift_allocate_boxed_opaque_existential_1(&v254);
        (*(*(v174 - 8) + 16))(v177, v176, v174);
        v170 = type metadata accessor for SomeAccessoryEvent;
        v171 = &v254;
      }

      sub_25417C0B0(*(v171 - 32), v170);
      __swift_destroy_boxed_opaque_existential_1(&v258);
LABEL_136:
      v179 = SessionEvent;
      v178 = v257;
      __swift_project_boxed_opaque_existential_1(&v254, SessionEvent);
      v260 = v179;
      v261 = *(v178 + 8);
      v180 = v261;
      __swift_allocate_boxed_opaque_existential_1(&v258);
      (*(*(v179 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v254);
      (*(v180 + 32))(v179, v180);
      __swift_destroy_boxed_opaque_existential_1(&v258);
      sub_25417C110(v153 + *(v253 + 20), v247, type metadata accessor for SomeEvent);
      v181 = swift_getEnumCaseMultiPayload();
      if (v181)
      {
        if (v181 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v257 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v182 = __swift_allocate_boxed_opaque_existential_1(&v254);
          sub_25417C178(v247, v182, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_166;
        }

        v187 = v228;
        sub_25417C178(v247, v228, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v187, v229, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v188 = swift_getEnumCaseMultiPayload();
        if (v188)
        {
          if (v188 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v189 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v190 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v189 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v190 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v189 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v190 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v191 = v190;
        v257 = v189;
        v192 = __swift_allocate_boxed_opaque_existential_1(&v254);
        sub_25417C178(v229, v192, v191);
        sub_25412DC4C(&v254, &v258);
        v193 = v260;
        v194 = v261;
        v195 = __swift_project_boxed_opaque_existential_1(&v258, v260);
        SessionEvent = v193;
        v257 = *(v194 + 16);
        v196 = __swift_allocate_boxed_opaque_existential_1(&v254);
        (*(*(v193 - 8) + 16))(v196, v195, v193);
        v197 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v198 = &v259;
      }

      else
      {
        v183 = v224;
        sub_25417C178(v247, v224, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v183, v225, type metadata accessor for SomeAccessoryEvent);
        v184 = swift_getEnumCaseMultiPayload();
        if (v184 > 4)
        {
          if (v184 <= 6)
          {
            if (v184 == 5)
            {
              v260 = type metadata accessor for SmokeDetectorEvent(0);
              v185 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v186 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v260 = type metadata accessor for ThermostatAutomationEvent(0);
              v185 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v186 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v184 == 7)
          {
            v260 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v185 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v186 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v184 == 8)
          {
            v260 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v185 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v186 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v260 = type metadata accessor for WindowEvent(0);
            v185 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v186 = type metadata accessor for WindowEvent;
          }
        }

        else if (v184 <= 1)
        {
          if (v184)
          {
            v260 = type metadata accessor for DoorEvent(0);
            v185 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v186 = type metadata accessor for DoorEvent;
          }

          else
          {
            v260 = type metadata accessor for ContactSensorEvent(0);
            v185 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v186 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v184 == 2)
        {
          v260 = type metadata accessor for GarageDoorEvent(0);
          v185 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v186 = type metadata accessor for GarageDoorEvent;
        }

        else if (v184 == 3)
        {
          v260 = type metadata accessor for LockEvent(0);
          v185 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v186 = type metadata accessor for LockEvent;
        }

        else
        {
          v260 = type metadata accessor for SecuritySystemEvent(0);
          v185 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v186 = type metadata accessor for SecuritySystemEvent;
        }

        v199 = v186;
        v261 = v185;
        v200 = __swift_allocate_boxed_opaque_existential_1(&v258);
        sub_25417C178(v225, v200, v199);
        v201 = v260;
        v202 = v261;
        v203 = __swift_project_boxed_opaque_existential_1(&v258, v260);
        SessionEvent = v201;
        v257 = *(v202 + 16);
        v204 = __swift_allocate_boxed_opaque_existential_1(&v254);
        (*(*(v201 - 8) + 16))(v204, v203, v201);
        v197 = type metadata accessor for SomeAccessoryEvent;
        v198 = &v255;
      }

      sub_25417C0B0(*(v198 - 32), v197);
      __swift_destroy_boxed_opaque_existential_1(&v258);
LABEL_166:
      v235 = v149;
      v205 = SessionEvent;
      v206 = v257;
      v207 = __swift_project_boxed_opaque_existential_1(&v254, SessionEvent);
      v260 = v205;
      v208 = *(v206 + 8);
      v261 = v208;
      v209 = __swift_allocate_boxed_opaque_existential_1(&v258);
      (*(*(v205 - 8) + 16))(v209, v207, v205);
      __swift_destroy_boxed_opaque_existential_1(&v254);
      (*(v208 + 32))(v205, v208);
      __swift_destroy_boxed_opaque_existential_1(&v258);
      v210 = v243;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v211 = sub_25424DC58();
      }

      else
      {
        v211 = sub_25424D828();
      }

      v212 = v211;
      v213 = v241;
      v69 = &v241[v245];
      v214 = *v236;
      v215 = v71;
      v216 = v246;
      (*v236)(v215, v246);
      v214(v210, v216);
      sub_25417C0B0(v153, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v72, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (v212)
      {
        v219 = v250;
        v151 = v242;
        if (v213 < v238 || v69 >= v238)
        {
          swift_arrayInitWithTakeFrontToBack();
          v71 = v237;
          v149 = v235;
          a1 = v249;
        }

        else
        {
          v218 = v213 == v238;
          v71 = v237;
          v149 = v235;
          a1 = v249;
          if (!v218)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v150 = v245;
        if (v151 <= v219)
        {
          goto LABEL_182;
        }

        goto LABEL_101;
      }

      v149 = v248;
      v217 = v250;
      v152 = v238;
      if (v213 < v242 || v69 >= v242)
      {
        swift_arrayInitWithTakeFrontToBack();
        v71 = v237;
        a1 = v249;
      }

      else
      {
        v218 = v213 == v242;
        v71 = v237;
        a1 = v249;
        if (!v218)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v151 = v149;
      v150 = v245;
      if (v248 <= v217)
      {
        v251 = v152;
        goto LABEL_182;
      }
    }
  }

LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_254176EF4(_BYTE *a1, unint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v280 = sub_25424D8B8();
  v286 = *(v280 - 8);
  v8 = MEMORY[0x28223BE20](v280);
  v10 = &v252[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v252[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v252[-v15];
  MEMORY[0x28223BE20](v14);
  v276 = &v252[-v17];
  v275 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v18 = MEMORY[0x28223BE20](v275);
  v260 = &v252[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v259 = &v252[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v258 = &v252[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v257 = &v252[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v268 = &v252[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v267 = &v252[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v266 = &v252[-v31];
  MEMORY[0x28223BE20](v30);
  v265 = &v252[-v32];
  v274 = type metadata accessor for SomeAccessoryEvent(0);
  v33 = MEMORY[0x28223BE20](v274);
  v256 = &v252[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v255 = &v252[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v254 = &v252[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v253 = &v252[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v264 = &v252[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v263 = &v252[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v262 = &v252[-v46];
  MEMORY[0x28223BE20](v45);
  v261 = &v252[-v47];
  v288 = type metadata accessor for SomeEvent(0);
  v48 = MEMORY[0x28223BE20](v288);
  v270 = &v252[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x28223BE20](v48);
  v282 = &v252[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v273 = &v252[-v53];
  MEMORY[0x28223BE20](v52);
  v284 = &v252[-v54];
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v55 = MEMORY[0x28223BE20](v290);
  v281 = &v252[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = MEMORY[0x28223BE20](v55);
  v278 = &v252[-v58];
  v59 = MEMORY[0x28223BE20](v57);
  v271 = &v252[-v60];
  v61 = MEMORY[0x28223BE20](v59);
  v272 = &v252[-v62];
  v63 = MEMORY[0x28223BE20](v61);
  v283 = &v252[-v64];
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v252[-v66];
  v68 = MEMORY[0x28223BE20](v65);
  v285 = &v252[-v69];
  result = MEMORY[0x28223BE20](v68);
  v277 = &v252[-v71];
  v279 = *(v72 + 72);
  if (!v279)
  {
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v289 = a2;
  if (a2 - a1 == 0x8000000000000000 && v279 == -1)
  {
    goto LABEL_185;
  }

  v73 = &a3[-v289];
  if (&a3[-v289] != 0x8000000000000000 || v279 != -1)
  {
    v74 = (a2 - a1) / v279;
    v303 = a1;
    v302 = a4;
    if (v74 < v73 / v279)
    {
      v75 = v74 * v279;
      if (a4 < a1 || &a1[v75] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v76 = v285;
        v77 = v277;
        v78 = v67;
      }

      else
      {
        v76 = v285;
        v77 = v277;
        v78 = v67;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v278 = &a4[v75];
      v301 = &a4[v75];
      v81 = v289;
      if (v75 >= 1 && v289 < a3)
      {
        v270 = v286 + 8;
        v269 = a3;
        v272 = v16;
        v271 = v78;
        while (1)
        {
          sub_254132DF4(v81, v77, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132DF4(a4, v76, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132DF4(v77, v78, &qword_27F5B8DD0, &qword_2542545A0);
          v82 = *(v290 + 48);
          sub_25417C110(v78 + v82, v284, type metadata accessor for SomeEvent);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v289 = v81;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v84 = a4;
              SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
              v297 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v295);
              sub_25417C178(v284, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_49;
            }

            v90 = v265;
            sub_25417C178(v284, v265, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v90, v266, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v91 = swift_getEnumCaseMultiPayload();
            v84 = a4;
            if (v91)
            {
              if (v91 == 1)
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v92 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
                v93 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v92 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
                v93 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v92 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
              v93 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v94 = v93;
            v297 = v92;
            v95 = __swift_allocate_boxed_opaque_existential_1(&v295);
            sub_25417C178(v266, v95, v94);
            sub_25412DC4C(&v295, &v298);
            v96 = v299;
            v97 = v300;
            v98 = __swift_project_boxed_opaque_existential_1(&v298, v299);
            SessionEvent = v96;
            v297 = *(v97 + 16);
            v99 = __swift_allocate_boxed_opaque_existential_1(&v295);
            (*(*(v96 - 8) + 16))(v99, v98, v96);
            v100 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            v101 = &v295 + 8;
          }

          else
          {
            v86 = v261;
            sub_25417C178(v284, v261, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v86, v262, type metadata accessor for SomeAccessoryEvent);
            v87 = swift_getEnumCaseMultiPayload();
            v84 = a4;
            if (v87 > 4)
            {
              if (v87 <= 6)
              {
                if (v87 == 5)
                {
                  v299 = type metadata accessor for SmokeDetectorEvent(0);
                  v88 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
                  v89 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  v299 = type metadata accessor for ThermostatAutomationEvent(0);
                  v88 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
                  v89 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v87 == 7)
              {
                v299 = type metadata accessor for ThermostatAutomationFailureEvent(0);
                v88 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
                v89 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v87 == 8)
              {
                v299 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v88 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
                v89 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                v299 = type metadata accessor for WindowEvent(0);
                v88 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
                v89 = type metadata accessor for WindowEvent;
              }
            }

            else if (v87 <= 1)
            {
              if (v87)
              {
                v299 = type metadata accessor for DoorEvent(0);
                v88 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
                v89 = type metadata accessor for DoorEvent;
              }

              else
              {
                v299 = type metadata accessor for ContactSensorEvent(0);
                v88 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
                v89 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v87 == 2)
            {
              v299 = type metadata accessor for GarageDoorEvent(0);
              v88 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
              v89 = type metadata accessor for GarageDoorEvent;
            }

            else if (v87 == 3)
            {
              v299 = type metadata accessor for LockEvent(0);
              v88 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
              v89 = type metadata accessor for LockEvent;
            }

            else
            {
              v299 = type metadata accessor for SecuritySystemEvent(0);
              v88 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
              v89 = type metadata accessor for SecuritySystemEvent;
            }

            v102 = v89;
            v300 = v88;
            v103 = __swift_allocate_boxed_opaque_existential_1(&v298);
            sub_25417C178(v262, v103, v102);
            v104 = v299;
            v105 = v300;
            v106 = __swift_project_boxed_opaque_existential_1(&v298, v299);
            SessionEvent = v104;
            v297 = *(v105 + 16);
            v107 = __swift_allocate_boxed_opaque_existential_1(&v295);
            (*(*(v104 - 8) + 16))(v107, v106, v104);
            v100 = type metadata accessor for SomeAccessoryEvent;
            v101 = &v292;
          }

          sub_25417C0B0(*(v101 - 32), v100);
          __swift_destroy_boxed_opaque_existential_1(&v298);
LABEL_49:
          v109 = SessionEvent;
          v108 = v297;
          v110 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
          v299 = v109;
          v111 = *(v108 + 8);
          v300 = v111;
          v112 = __swift_allocate_boxed_opaque_existential_1(&v298);
          v113 = *(*(v109 - 8) + 16);
          v282 = v112;
          v113(v112, v110, v109);
          __swift_destroy_boxed_opaque_existential_1(&v295);
          sub_25417C0B0(v78 + v82, type metadata accessor for SomeEvent);
          v114 = sub_25424D948();
          v115 = v78;
          v116 = v114;
          v117 = *(*(v114 - 8) + 8);
          v117(v115, v114);
          v118 = v283;
          sub_254132DF4(v285, v283, &qword_27F5B8DD0, &qword_2542545A0);
          v119 = *(v290 + 48);
          v120 = &v118[v119];
          v121 = v273;
          sub_25417C110(v120, v273, type metadata accessor for SomeEvent);
          v122 = swift_getEnumCaseMultiPayload();
          v287 = a1;
          v286 = v84;
          v281 = v117;
          if (!v122)
          {
            v124 = v121;
            v125 = v263;
            sub_25417C178(v124, v263, type metadata accessor for SomeAccessoryEvent);
            sub_25417C110(v125, v264, type metadata accessor for SomeAccessoryEvent);
            v126 = swift_getEnumCaseMultiPayload();
            if (v126 > 4)
            {
              if (v126 <= 6)
              {
                if (v126 == 5)
                {
                  SessionEvent = type metadata accessor for SmokeDetectorEvent(0);
                  v127 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
                  v128 = type metadata accessor for SmokeDetectorEvent;
                }

                else
                {
                  SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
                  v127 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
                  v128 = type metadata accessor for ThermostatAutomationEvent;
                }
              }

              else if (v126 == 7)
              {
                SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent(0);
                v127 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
                v128 = type metadata accessor for ThermostatAutomationFailureEvent;
              }

              else if (v126 == 8)
              {
                SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
                v127 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
                v128 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for WindowEvent(0);
                v127 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
                v128 = type metadata accessor for WindowEvent;
              }
            }

            else if (v126 <= 1)
            {
              if (v126)
              {
                SessionEvent = type metadata accessor for DoorEvent(0);
                v127 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
                v128 = type metadata accessor for DoorEvent;
              }

              else
              {
                SessionEvent = type metadata accessor for ContactSensorEvent(0);
                v127 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
                v128 = type metadata accessor for ContactSensorEvent;
              }
            }

            else if (v126 == 2)
            {
              SessionEvent = type metadata accessor for GarageDoorEvent(0);
              v127 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
              v128 = type metadata accessor for GarageDoorEvent;
            }

            else if (v126 == 3)
            {
              SessionEvent = type metadata accessor for LockEvent(0);
              v127 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
              v128 = type metadata accessor for LockEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for SecuritySystemEvent(0);
              v127 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
              v128 = type metadata accessor for SecuritySystemEvent;
            }

            v142 = v128;
            v297 = v127;
            v143 = __swift_allocate_boxed_opaque_existential_1(&v295);
            sub_25417C178(v264, v143, v142);
            v145 = SessionEvent;
            v144 = v297;
            v146 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
            DailyDigestEvent = v145;
            v294 = *(v144 + 16);
            v147 = __swift_allocate_boxed_opaque_existential_1(&v291);
            (*(*(v145 - 8) + 16))(v147, v146, v145);
            v140 = type metadata accessor for SomeAccessoryEvent;
            p_SessionEvent = &v294;
            goto LABEL_78;
          }

          if (v122 != 1)
          {
            v129 = v121;
            v130 = v267;
            sub_25417C178(v129, v267, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            sub_25417C110(v130, v268, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
            v131 = swift_getEnumCaseMultiPayload();
            if (v131)
            {
              if (v131 == 1)
              {
                DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
                v132 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
                v133 = type metadata accessor for EnergyKit.LoadSessionEvent;
              }

              else
              {
                DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
                v132 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
                v133 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
              }
            }

            else
            {
              DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
              v132 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
              v133 = type metadata accessor for EnergyKit.LoadEvent;
            }

            v134 = v133;
            v294 = v132;
            v135 = __swift_allocate_boxed_opaque_existential_1(&v291);
            sub_25417C178(v268, v135, v134);
            sub_25412DC4C(&v291, &v295);
            v136 = SessionEvent;
            v137 = v297;
            v138 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
            DailyDigestEvent = v136;
            v294 = *(v137 + 16);
            v139 = __swift_allocate_boxed_opaque_existential_1(&v291);
            (*(*(v136 - 8) + 16))(v139, v138, v136);
            v140 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
            p_SessionEvent = &SessionEvent;
LABEL_78:
            sub_25417C0B0(*(p_SessionEvent - 32), v140);
            __swift_destroy_boxed_opaque_existential_1(&v295);
            goto LABEL_79;
          }

          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v294 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v123 = __swift_allocate_boxed_opaque_existential_1(&v291);
          sub_25417C178(v121, v123, type metadata accessor for HomeActivityStateEvent);
LABEL_79:
          v149 = DailyDigestEvent;
          v148 = v294;
          v150 = __swift_project_boxed_opaque_existential_1(&v291, DailyDigestEvent);
          SessionEvent = v149;
          v297 = *(v148 + 8);
          v151 = v297;
          v152 = __swift_allocate_boxed_opaque_existential_1(&v295);
          (*(*(v149 - 8) + 16))(v152, v150, v149);
          __swift_destroy_boxed_opaque_existential_1(&v291);
          v153 = v283;
          sub_25417C0B0(&v283[v119], type metadata accessor for SomeEvent);
          v281(v153, v116);
          v154 = v276;
          (*(v111 + 32))(v109, v111);
          v155 = v272;
          (*(v151 + 32))(v149, v151);
          if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
          {
            sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
            v156 = v277;
            v157 = v285;
            v158 = sub_25424DC58();
            v159 = v286;
            v160 = v154;
          }

          else
          {
            v158 = sub_25424D828();
            v159 = v286;
            v160 = v154;
            v157 = v285;
            v156 = v277;
          }

          v161 = *v270;
          v162 = v280;
          (*v270)(v155, v280);
          v161(v160, v162);
          __swift_destroy_boxed_opaque_existential_1(&v295);
          __swift_destroy_boxed_opaque_existential_1(&v298);
          sub_254132E5C(v157, &qword_27F5B8DD0, &qword_2542545A0);
          sub_254132E5C(v156, &qword_27F5B8DD0, &qword_2542545A0);
          v78 = v271;
          v76 = v157;
          v77 = v156;
          if (v158)
          {
            v163 = v279;
            v164 = v289 + v279;
            v165 = v287;
            a4 = v159;
            if (v287 < v289 || v287 >= v164)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v287 != v289)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v81 = v164;
          }

          else
          {
            v163 = v279;
            v166 = v159;
            a4 = &v159[v279];
            v165 = v287;
            if (v287 < v159 || v287 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v81 = v289;
            }

            else
            {
              v81 = v289;
              if (v287 != v166)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v302 = a4;
          }

          a1 = &v165[v163];
          v303 = a1;
          if (a4 >= v278 || v81 >= v269)
          {
            goto LABEL_183;
          }
        }
      }

      goto LABEL_183;
    }

    v79 = v73 / v279 * v279;
    v80 = v279;
    if (a4 < v289 || v289 + v79 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v289)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v167 = &a4[v79];
    if (v79 < 1)
    {
LABEL_182:
      v303 = v289;
      v301 = v167;
LABEL_183:
      sub_254179FB0(&v303, &v302, &v301);
      return 1;
    }

    v287 = a1;
    v168 = -v80;
    v267 = v286 + 8;
    v169 = a4;
    v170 = &a4[v79];
    v286 = v169;
    v269 = v10;
    v268 = v13;
    v171 = v271;
    v172 = v272;
    v285 = -v80;
    v173 = a3;
LABEL_101:
    v265 = v167;
    v174 = v289;
    v289 += v168;
    v273 = v174;
    while (1)
    {
      if (v174 <= v287)
      {
        v303 = v174;
        v301 = v265;
        goto LABEL_183;
      }

      sub_254132DF4(&v170[v168], v172, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v289, v171, &qword_27F5B8DD0, &qword_2542545A0);
      v175 = v278;
      sub_254132DF4(v172, v278, &qword_27F5B8DD0, &qword_2542545A0);
      v176 = *(v290 + 48);
      sub_25417C110(&v175[v176], v282, type metadata accessor for SomeEvent);
      v177 = swift_getEnumCaseMultiPayload();
      v266 = v167;
      v284 = v170;
      v276 = &v170[v168];
      v283 = v173;
      if (v177)
      {
        v178 = v270;
        if (v177 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v297 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v179 = __swift_allocate_boxed_opaque_existential_1(&v295);
          sub_25417C178(v282, v179, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_135;
        }

        v184 = v257;
        sub_25417C178(v282, v257, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v184, v258, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v185 = swift_getEnumCaseMultiPayload();
        if (v185)
        {
          if (v185 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v186 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v187 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v186 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v187 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v186 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v187 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v188 = v187;
        v297 = v186;
        v189 = __swift_allocate_boxed_opaque_existential_1(&v295);
        sub_25417C178(v258, v189, v188);
        sub_25412DC4C(&v295, &v298);
        v190 = v299;
        v191 = v300;
        v192 = __swift_project_boxed_opaque_existential_1(&v298, v299);
        SessionEvent = v190;
        v297 = *(v191 + 16);
        v193 = __swift_allocate_boxed_opaque_existential_1(&v295);
        (*(*(v190 - 8) + 16))(v193, v192, v190);
        v194 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v195 = &v289;
      }

      else
      {
        v180 = v253;
        sub_25417C178(v282, v253, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v180, v254, type metadata accessor for SomeAccessoryEvent);
        v181 = swift_getEnumCaseMultiPayload();
        v178 = v270;
        if (v181 > 4)
        {
          if (v181 <= 6)
          {
            if (v181 == 5)
            {
              v299 = type metadata accessor for SmokeDetectorEvent(0);
              v182 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v183 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v299 = type metadata accessor for ThermostatAutomationEvent(0);
              v182 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v183 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v181 == 7)
          {
            v299 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v182 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v183 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v181 == 8)
          {
            v299 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v182 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v183 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v299 = type metadata accessor for WindowEvent(0);
            v182 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v183 = type metadata accessor for WindowEvent;
          }
        }

        else if (v181 <= 1)
        {
          if (v181)
          {
            v299 = type metadata accessor for DoorEvent(0);
            v182 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v183 = type metadata accessor for DoorEvent;
          }

          else
          {
            v299 = type metadata accessor for ContactSensorEvent(0);
            v182 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v183 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v181 == 2)
        {
          v299 = type metadata accessor for GarageDoorEvent(0);
          v182 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v183 = type metadata accessor for GarageDoorEvent;
        }

        else if (v181 == 3)
        {
          v299 = type metadata accessor for LockEvent(0);
          v182 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v183 = type metadata accessor for LockEvent;
        }

        else
        {
          v299 = type metadata accessor for SecuritySystemEvent(0);
          v182 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v183 = type metadata accessor for SecuritySystemEvent;
        }

        v196 = v183;
        v300 = v182;
        v197 = __swift_allocate_boxed_opaque_existential_1(&v298);
        sub_25417C178(v254, v197, v196);
        v198 = v299;
        v199 = v300;
        v200 = __swift_project_boxed_opaque_existential_1(&v298, v299);
        SessionEvent = v198;
        v297 = *(v199 + 16);
        v201 = __swift_allocate_boxed_opaque_existential_1(&v295);
        (*(*(v198 - 8) + 16))(v201, v200, v198);
        v194 = type metadata accessor for SomeAccessoryEvent;
        v195 = &v285;
      }

      sub_25417C0B0(*(v195 - 32), v194);
      __swift_destroy_boxed_opaque_existential_1(&v298);
LABEL_135:
      v203 = SessionEvent;
      v202 = v297;
      v204 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
      v299 = v203;
      v205 = *(v202 + 8);
      v300 = v205;
      v206 = __swift_allocate_boxed_opaque_existential_1(&v298);
      v207 = *(*(v203 - 8) + 16);
      v279 = v206;
      v207(v206, v204, v203);
      __swift_destroy_boxed_opaque_existential_1(&v295);
      v208 = v278;
      sub_25417C0B0(&v278[v176], type metadata accessor for SomeEvent);
      v209 = sub_25424D948();
      v210 = *(*(v209 - 8) + 8);
      (v210)(v208, v209);
      v211 = v281;
      sub_254132DF4(v171, v281, &qword_27F5B8DD0, &qword_2542545A0);
      v212 = *(v290 + 48);
      sub_25417C110(v211 + v212, v178, type metadata accessor for SomeEvent);
      v213 = swift_getEnumCaseMultiPayload();
      v277 = v210;
      if (v213)
      {
        if (v213 == 1)
        {
          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v294 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v214 = __swift_allocate_boxed_opaque_existential_1(&v291);
          sub_25417C178(v178, v214, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_165;
        }

        v219 = v259;
        sub_25417C178(v178, v259, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v219, v260, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v220 = swift_getEnumCaseMultiPayload();
        if (v220)
        {
          if (v220 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v221 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v222 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v221 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v222 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v221 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v222 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v223 = v222;
        v294 = v221;
        v224 = __swift_allocate_boxed_opaque_existential_1(&v291);
        sub_25417C178(v260, v224, v223);
        sub_25412DC4C(&v291, &v295);
        v225 = SessionEvent;
        v226 = v297;
        v227 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
        DailyDigestEvent = v225;
        v294 = *(v226 + 16);
        v228 = __swift_allocate_boxed_opaque_existential_1(&v291);
        (*(*(v225 - 8) + 16))(v228, v227, v225);
        v229 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v230 = &v291;
      }

      else
      {
        v215 = v255;
        sub_25417C178(v178, v255, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v215, v256, type metadata accessor for SomeAccessoryEvent);
        v216 = swift_getEnumCaseMultiPayload();
        if (v216 > 4)
        {
          if (v216 <= 6)
          {
            if (v216 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent(0);
              v217 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v218 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v217 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v218 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v216 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v217 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v218 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v216 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v217 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v218 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent(0);
            v217 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v218 = type metadata accessor for WindowEvent;
          }
        }

        else if (v216 <= 1)
        {
          if (v216)
          {
            SessionEvent = type metadata accessor for DoorEvent(0);
            v217 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v218 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent(0);
            v217 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v218 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v216 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent(0);
          v217 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v218 = type metadata accessor for GarageDoorEvent;
        }

        else if (v216 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent(0);
          v217 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v218 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent(0);
          v217 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v218 = type metadata accessor for SecuritySystemEvent;
        }

        v231 = v218;
        v297 = v217;
        v232 = __swift_allocate_boxed_opaque_existential_1(&v295);
        sub_25417C178(v256, v232, v231);
        v234 = SessionEvent;
        v233 = v297;
        v235 = __swift_project_boxed_opaque_existential_1(&v295, SessionEvent);
        DailyDigestEvent = v234;
        v294 = *(v233 + 16);
        v236 = __swift_allocate_boxed_opaque_existential_1(&v291);
        (*(*(v234 - 8) + 16))(v236, v235, v234);
        v229 = type metadata accessor for SomeAccessoryEvent;
        v230 = &v287;
      }

      sub_25417C0B0(*(v230 - 32), v229);
      __swift_destroy_boxed_opaque_existential_1(&v295);
LABEL_165:
      v238 = DailyDigestEvent;
      v237 = v294;
      v239 = __swift_project_boxed_opaque_existential_1(&v291, DailyDigestEvent);
      SessionEvent = v238;
      v297 = *(v237 + 8);
      v240 = v297;
      v241 = __swift_allocate_boxed_opaque_existential_1(&v295);
      (*(*(v238 - 8) + 16))(v241, v239, v238);
      __swift_destroy_boxed_opaque_existential_1(&v291);
      v242 = v281;
      sub_25417C0B0(v281 + v212, type metadata accessor for SomeEvent);
      (v277)(v242, v209);
      v243 = v268;
      (*(v205 + 32))(v203, v205);
      v244 = v269;
      (*(v240 + 32))(v238, v240);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v245 = v271;
        v246 = sub_25424DC58();
      }

      else
      {
        v246 = sub_25424D828();
        v245 = v271;
      }

      v247 = v283;
      v173 = &v283[v285];
      v248 = *v267;
      v249 = v280;
      (*v267)(v244, v280);
      v248(v243, v249);
      __swift_destroy_boxed_opaque_existential_1(&v295);
      __swift_destroy_boxed_opaque_existential_1(&v298);
      sub_254132E5C(v245, &qword_27F5B8DD0, &qword_2542545A0);
      v250 = v272;
      sub_254132E5C(v272, &qword_27F5B8DD0, &qword_2542545A0);
      v171 = v245;
      v172 = v250;
      if (v246)
      {
        v170 = v284;
        if (v247 < v273 || v173 >= v273)
        {
          swift_arrayInitWithTakeFrontToBack();
          v167 = v266;
          v168 = v285;
        }

        else
        {
          v167 = v266;
          v168 = v285;
          if (v247 != v273)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v170 <= v286)
        {
          goto LABEL_182;
        }

        goto LABEL_101;
      }

      v251 = v276;
      v167 = v276;
      v174 = v273;
      if (v247 < v284 || v173 >= v284)
      {
        swift_arrayInitWithTakeFrontToBack();
        v168 = v285;
      }

      else
      {
        v168 = v285;
        if (v247 != v284)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v170 = v167;
      if (v251 <= v286)
      {
        v289 = v174;
        goto LABEL_182;
      }
    }
  }

LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_254179E2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_254179EB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_254179ECC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_254179FB0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_25417A0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91E8, &qword_254254578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_25417A1A4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 24) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_25417A2A4;

  return v7(v3 + 16, a2);
}

uint64_t sub_25417A2A4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_25417A3D8;
  }

  else
  {
    v2 = sub_25417A3B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25417A418(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v8 - 8);
  v188 = &v180 - v9;
  v10 = type metadata accessor for EventQuery(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v182 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v186 = &v180 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v191 = &v180 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v195 = &v180 - v18;
  MEMORY[0x28223BE20](v17);
  v201 = (&v180 - v19);
  v205 = sub_25424DAA8();
  v206 = *(v205 - 8);
  v20 = MEMORY[0x28223BE20](v205);
  v183 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v189 = &v180 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v192 = &v180 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v200 = &v180 - v27;
  MEMORY[0x28223BE20](v26);
  v207 = &v180 - v28;
  v204 = sub_25424D8B8();
  v203 = *(v204 - 8);
  v29 = MEMORY[0x28223BE20](v204);
  v190 = &v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v199 = &v180 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v194 = &v180 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v209 = &v180 - v36;
  MEMORY[0x28223BE20](v35);
  v208 = &v180 - v37;
  v38 = sub_25424D948();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v185 = &v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v180 - v42;
  v218[3] = a3;
  v218[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v218);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v45 = a4;
  v193 = *(a4 + 40);
  (v193)(a3, a4);
  v46 = type metadata accessor for EventQuery.Configuration(0);
  v184 = sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LOBYTE(a1) = sub_25424DC98();
  v187 = v39;
  v47 = *(v39 + 8);
  v196 = v43;
  v198 = v39 + 8;
  v197 = v47;
  v47(v43, v38);
  v202 = a3;
  if ((a1 & 1) == 0)
  {
    sub_25421ACE8(v207);
    v57 = v201;
    sub_25417C110(a2, v201, type metadata accessor for EventQuery);
    sub_254140708(v218, &v215);
    v58 = sub_25424DA88();
    v59 = sub_25424E418();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v212 = v61;
      *v60 = 136315394;
      LODWORD(v209) = v59;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = sub_25424EA58();
      v63 = v57;
      v65 = v64;
      sub_25417C0B0(v63, type metadata accessor for EventQuery);
      v66 = sub_2542203C4(v62, v65, &v212);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v67 = v196;
      (v193)(v202, v45);
      v68 = sub_25424EA58();
      v70 = v69;
      v197(v67, v38);
      __swift_destroy_boxed_opaque_existential_1(&v215);
      v71 = sub_2542203C4(v68, v70, &v212);

      *(v60 + 14) = v71;
      _os_log_impl(&dword_254124000, v58, v209, "[%s] Failed to match home identifier: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v61, -1, -1);
      MEMORY[0x259C07330](v60, -1, -1);

      (*(v206 + 8))(v207, v205);
LABEL_34:
      v127 = 0;
      goto LABEL_35;
    }

    sub_25417C0B0(v57, type metadata accessor for EventQuery);
    (*(v206 + 8))(v207, v205);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(&v215);
    goto LABEL_34;
  }

  v181 = v38;
  sub_25424D1F8();
  v193 = v46;
  v48 = *(v46 + 52);
  v207 = a2;
  v49 = a2[v48];
  v50 = *(v45 + 32);
  v50(a3, v45);
  if (v49)
  {
    sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v51 = v209;
    v52 = v204;
    v53 = sub_25424DC88();
    v54 = v203;
    v55 = *(v203 + 8);
    v56 = v51;
  }

  else
  {
    v72 = v209;
    v53 = sub_25424D838();
    v54 = v203;
    v55 = *(v203 + 8);
    v56 = v72;
    v52 = v204;
  }

  v201 = v55;
  (v55)(v56, v52);
  if (v53)
  {
    v73 = v200;
    sub_25421ACE8(v200);
    v74 = v195;
    sub_25417C110(v207, v195, type metadata accessor for EventQuery);
    v75 = v194;
    (*(v54 + 16))(v194, v208, v52);
    v76 = sub_25424DA88();
    v77 = sub_25424E418();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v215 = v79;
      *v78 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = sub_25424EA58();
      v82 = v81;
      sub_25417C0B0(v74, type metadata accessor for EventQuery);
      v83 = sub_2542203C4(v80, v82, &v215);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v84 = sub_25424EA58();
      v86 = v85;
      v87 = v201;
      (v201)(v75, v52);
      v88 = sub_2542203C4(v84, v86, &v215);

      *(v78 + 14) = v88;
      _os_log_impl(&dword_254124000, v76, v77, "[%s] Failed to match start date: %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v79, -1, -1);
      MEMORY[0x259C07330](v78, -1, -1);

      (*(v206 + 8))(v200, v205);
      v87(v208, v52);
    }

    else
    {

      v98 = v201;
      (v201)(v75, v52);
      sub_25417C0B0(v74, type metadata accessor for EventQuery);
      (*(v206 + 8))(v73, v205);
      v98(v208, v52);
    }

    goto LABEL_34;
  }

  v89 = v207;
  v90 = v45;
  v91 = v199;
  sub_25424D1D8();
  LODWORD(v89) = v89[*(v193 + 56)];
  v92 = v90;
  v50(v202, v90);
  if (v89 == 1)
  {
    sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v93 = v209;
    v94 = v204;
    v95 = sub_25424DC78();
    v96 = v203;
    v97 = v93;
  }

  else
  {
    v99 = v209;
    v95 = sub_25424D828();
    v96 = v203;
    v97 = v99;
    v94 = v204;
  }

  v100 = v201;
  (v201)(v97, v94);
  if (v95)
  {
    v101 = v192;
    sub_25421ACE8(v192);
    v102 = v191;
    sub_25417C110(v207, v191, type metadata accessor for EventQuery);
    v103 = v190;
    (*(v96 + 16))(v190, v91, v94);
    v104 = sub_25424DA88();
    v105 = sub_25424E418();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v201 = v100;
      v107 = v106;
      v108 = swift_slowAlloc();
      v215 = v108;
      *v107 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v109 = sub_25424EA58();
      v111 = v110;
      sub_25417C0B0(v102, type metadata accessor for EventQuery);
      v112 = sub_2542203C4(v109, v111, &v215);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2080;
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v113 = sub_25424EA58();
      v115 = v114;
      v116 = v201;
      (v201)(v103, v94);
      v117 = sub_2542203C4(v113, v115, &v215);

      *(v107 + 14) = v117;
      _os_log_impl(&dword_254124000, v104, v105, "[%s] Failed to match end date: %s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v108, -1, -1);
      MEMORY[0x259C07330](v107, -1, -1);

      (*(v206 + 8))(v192, v205);
      v116(v199, v94);
      v116(v208, v94);
    }

    else
    {

      (v100)(v103, v94);
      sub_25417C0B0(v102, type metadata accessor for EventQuery);
      (*(v206 + 8))(v101, v205);
      (v100)(v91, v94);
      (v100)(v208, v94);
    }

    goto LABEL_34;
  }

  v118 = v207;
  if (*&v207[*(v193 + 40)])
  {
    v119 = v100;
    v120 = *&v207[*(v193 + 40)];
  }

  else
  {
    v120 = *&v207[*(v193 + 36)];
    if (!v120)
    {
      goto LABEL_25;
    }

    v119 = v100;
  }

  v121 = *(v92 + 48);

  v121(&v215, v202, v92);
  v122 = sub_2541538B4(v215, v120);

  v100 = v119;
  v118 = v207;
  if (!v122)
  {
    v128 = v189;
    sub_25421ACE8(v189);
    v129 = v118;
    v130 = v186;
    sub_25417C110(v129, v186, type metadata accessor for EventQuery);
    sub_254140708(v218, &v215);
    v131 = sub_25424DA88();
    v132 = sub_25424E418();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      LODWORD(v209) = v132;
      v201 = v100;
      v134 = v133;
      v135 = swift_slowAlloc();
      v212 = v135;
      *v134 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v136 = sub_25424EA58();
      v138 = v137;
      sub_25417C0B0(v130, type metadata accessor for EventQuery);
      v139 = sub_2542203C4(v136, v138, &v212);

      *(v134 + 4) = v139;
      *(v134 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v121(v210, v202, v92);
      v140 = sub_25424DD08();
      v142 = v141;
      __swift_destroy_boxed_opaque_existential_1(&v215);
      v143 = sub_2542203C4(v140, v142, &v212);

      *(v134 + 14) = v143;
      _os_log_impl(&dword_254124000, v131, v209, "[%s] Failed to match category: %s", v134, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v135, -1, -1);
      MEMORY[0x259C07330](v134, -1, -1);

      (*(v206 + 8))(v189, v205);
      v144 = v204;
      v145 = v201;
      (v201)(v199, v204);
      v145(v208, v144);
      goto LABEL_34;
    }

    sub_25417C0B0(v130, type metadata accessor for EventQuery);
    (*(v206 + 8))(v128, v205);
    v155 = v204;
    (v100)(v91, v204);
    (v100)(v208, v155);
    goto LABEL_11;
  }

LABEL_25:
  v123 = v188;
  sub_254132DF4(&v118[*(v193 + 44)], v188, &unk_27F5B8E50, &qword_254254390);
  v124 = v187;
  v125 = v181;
  if ((*(v187 + 48))(v123, 1, v181) != 1)
  {
    v146 = v185;
    (*(v124 + 32))(v185, v123, v125);
    sub_254140708(v218, &v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F0, &unk_254254580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
    v147 = swift_dynamicCast();
    v148 = v204;
    if ((v147 & 1) == 0)
    {
      v197(v146, v125);
      (v100)(v91, v148);
      (v100)(v208, v148);
      v211 = 0;
      memset(v210, 0, sizeof(v210));
      sub_254132E5C(v210, &qword_27F5B9200, &qword_254254590);
      goto LABEL_34;
    }

    v201 = v100;
    sub_25412DC4C(v210, &v215);
    v149 = v216;
    v150 = v217;
    __swift_project_boxed_opaque_existential_1(&v215, v216);
    v151 = v196;
    (*(v150 + 32))(v149, v150);
    LOBYTE(v149) = sub_25424DC98();
    v152 = v151;
    v153 = v197;
    v197(v152, v125);
    if (v149)
    {
      v153(v146, v125);
      v154 = v201;
      (v201)(v91, v148);
      v154(v208, v148);
      __swift_destroy_boxed_opaque_existential_1(&v215);
      v127 = 1;
      goto LABEL_35;
    }

    v157 = v118;
    v158 = v183;
    sub_25421ACE8(v183);
    v159 = v182;
    sub_25417C110(v157, v182, type metadata accessor for EventQuery);
    sub_254140708(&v215, &v212);
    v160 = sub_25424DA88();
    v161 = sub_25424E418();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v210[0] = v209;
      *v162 = 136315394;
      LODWORD(v207) = v161;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v163 = v181;
      v164 = sub_25424EA58();
      v166 = v165;
      sub_25417C0B0(v159, type metadata accessor for EventQuery);
      v167 = sub_2542203C4(v164, v166, v210);

      *(v162 + 4) = v167;
      *(v162 + 12) = 2080;
      v168 = v213;
      v169 = v214;
      __swift_project_boxed_opaque_existential_1(&v212, v213);
      v170 = v196;
      (*(v169 + 32))(v168, v169);
      v171 = sub_25424EA58();
      v173 = v172;
      v174 = v197;
      v197(v170, v163);
      __swift_destroy_boxed_opaque_existential_1(&v212);
      v175 = sub_2542203C4(v171, v173, v210);

      *(v162 + 14) = v175;
      _os_log_impl(&dword_254124000, v160, v207, "[%s] Failed to match accessory identifier: %s", v162, 0x16u);
      v176 = v209;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v176, -1, -1);
      MEMORY[0x259C07330](v162, -1, -1);

      (*(v206 + 8))(v158, v205);
      v174(v185, v163);
      v177 = v204;
      v178 = v201;
      (v201)(v199, v204);
      v178(v208, v177);
    }

    else
    {

      sub_25417C0B0(v159, type metadata accessor for EventQuery);
      (*(v206 + 8))(v158, v205);
      v153(v185, v181);
      v179 = v201;
      (v201)(v91, v148);
      v179(v208, v148);
      __swift_destroy_boxed_opaque_existential_1(&v212);
    }

    goto LABEL_11;
  }

  v126 = v204;
  (v100)(v91, v204);
  (v100)(v208, v126);
  sub_254132E5C(v123, &unk_27F5B8E50, &qword_254254390);
  v127 = 1;
LABEL_35:
  __swift_destroy_boxed_opaque_existential_1(v218);
  return v127;
}

uint64_t sub_25417BF00(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254168384(a1, a2, v6);
}

uint64_t sub_25417BFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25417BFFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254168384(a1, a2, v6);
}

uint64_t sub_25417C0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25417C110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25417C178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25417C1E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_25414F5E0(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25417C3A0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_254150EEC(a1, a2, v7, v6);
}

uint64_t sub_25417C454(uint64_t a1, _BYTE *a2, int a3, int a4, int a5, int a6)
{
  v244 = a6;
  v249 = a3;
  v250 = a5;
  LODWORD(v246) = a4;
  *&v256 = a1;
  v7 = sub_25424D218();
  v258 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v251 = &v228[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v240 = &v228[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v238 = &v228[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v233 = &v228[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v235 = &v228[-v17];
  MEMORY[0x28223BE20](v16);
  v243 = &v228[-v18];
  v19 = sub_25424D948();
  v20 = *(v19 - 1);
  v21 = MEMORY[0x28223BE20](v19);
  v247 = &v228[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v245 = &v228[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v232 = &v228[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v228[-v28];
  MEMORY[0x28223BE20](v27);
  v234 = &v228[-v30];
  v31 = sub_25424DAA8();
  v253 = *(v31 - 8);
  v254 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v248 = &v228[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v237 = &v228[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v236 = &v228[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v228[-v39];
  MEMORY[0x28223BE20](v38);
  v242 = &v228[-v41];
  v42 = sub_25424D8B8();
  v259 = *(v42 - 8);
  v260 = v42;
  v43 = MEMORY[0x28223BE20](v42);
  v241 = &v228[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v228[-v46];
  v48 = MEMORY[0x28223BE20](v45);
  v252 = &v228[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v228[-v51];
  MEMORY[0x28223BE20](v50);
  v54 = &v228[-v53];
  type metadata accessor for Configuration();
  v55 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  v255 = v52;
  v257 = v54;
  if (v55 < 1)
  {
    sub_25424D1F8();
    sub_25424D1D8();
    sub_25421ACE8(v248);
    (*(v20 + 16))(v247, v256, v19);
    v101 = v258;
    v102 = *(v258 + 16);
    v103 = v240;
    v102(v240, a2, v7);
    v102(v251, a2, v7);
    v104 = sub_25424DA88();
    v105 = sub_25424E418();
    v106 = v101;
    v107 = v19;
    if (os_log_type_enabled(v104, v105))
    {
      v108 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v261 = v246;
      *v108 = 136315650;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v245 = v104;
      v109 = v247;
      v244 = v105;
      v110 = sub_25424EA58();
      v112 = v111;
      (*(v20 + 8))(v109, v107);
      v113 = sub_2542203C4(v110, v112, &v261);

      *&v256 = v108;
      *(v108 + 4) = v113;
      *(v108 + 12) = 2080;
      v114 = v252;
      sub_25424D1F8();
      v247 = sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v115 = v260;
      v116 = sub_25424EA58();
      v118 = v117;
      v119 = v7;
      v120 = *(v259 + 8);
      v120(v114, v115);
      v121 = *(v106 + 8);
      v121(v103, v119);
      v122 = sub_2542203C4(v116, v118, &v261);

      v123 = v256;
      *(v256 + 14) = v122;
      *(v123 + 22) = 2080;
      v124 = v251;
      sub_25424D1D8();
      v125 = sub_25424EA58();
      v127 = v126;
      v120(v114, v115);
      v121(v124, v119);
      v128 = sub_2542203C4(v125, v127, &v261);

      v129 = v256;
      *(v256 + 24) = v128;
      v130 = v245;
      _os_log_impl(&dword_254124000, v245, v244, "[%s] Not using coalescing window, start date %s, end date %s", v129, 0x20u);
      v131 = v246;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v131, -1, -1);
      MEMORY[0x259C07330](v129, -1, -1);
    }

    else
    {

      v153 = *(v101 + 8);
      v153(v251, v7);
      v153(v103, v7);
      (*(v20 + 8))(v247, v19);
    }

    (*(v253 + 8))(v248, v254);
    goto LABEL_33;
  }

  v240 = v55;
  v251 = a2;
  v247 = v20;
  v248 = v19;
  v56 = v7;
  v239 = v7;
  if ((v246 & 1) == 0)
  {
    v132 = v251;
    sub_25424D1F8();
    sub_25421ACE8(v40);
    v133 = v247;
    v134 = v248;
    v246 = *(v247 + 2);
    (v246)(v29, v256, v248);
    v135 = v258;
    v136 = v235;
    v231 = *(v258 + 16);
    v231(v235, v132, v7);
    v137 = sub_25424DA88();
    v138 = sub_25424E418();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = v133;
      v140 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v261 = v242;
      *v140 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v229 = v138;
      v141 = sub_25424EA58();
      v230 = v40;
      v142 = v135;
      v143 = v136;
      v145 = v144;
      v234 = *(v139 + 1);
      (v234)(v29, v134);
      v146 = sub_2542203C4(v141, v145, &v261);

      *(v140 + 4) = v146;
      *(v140 + 12) = 2080;
      v147 = v252;
      sub_25424D1F8();
      sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v62 = v260;
      v148 = sub_25424EA58();
      v150 = v149;
      (*(v259 + 8))(v147, v62);
      v243 = *(v142 + 8);
      (v243)(v143, v56);
      v151 = sub_2542203C4(v148, v150, &v261);

      *(v140 + 14) = v151;
      _os_log_impl(&dword_254124000, v137, v229, "[%s] Not using coalescing window, start date %s", v140, 0x16u);
      v152 = v242;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v152, -1, -1);
      MEMORY[0x259C07330](v140, -1, -1);

      v242 = *(v253 + 8);
      (v242)(v230, v254);
    }

    else
    {

      v243 = *(v135 + 8);
      (v243)(v136, v7);
      v234 = *(v133 + 1);
      (v234)(v29, v134);
      v242 = *(v253 + 8);
      (v242)(v40, v254);
      v62 = v260;
    }

    v99 = v255;
    v91 = v251;
    v100 = v245;
    if ((v244 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v57 = v252;
  sub_25424D1F8();
  sub_25424D578();
  v59 = v58;
  v60 = v58;
  v61 = v259;
  v62 = v260;
  v63 = *(v259 + 8);
  result = (v63)(v57, v260);
  v65 = v257;
  v66 = v56;
  v67 = v256;
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v59 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v59 / v240 * v240) >> 64 != (v59 / v240 * v240) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v235 = v63;
  sub_25424D568();
  sub_25421ACE8(v242);
  v68 = v247;
  v69 = v234;
  v70 = v67;
  v71 = v248;
  v246 = *(v247 + 2);
  (v246)(v234, v70, v248);
  v231 = *(v258 + 16);
  v231(v243, v251, v66);
  v72 = *(v61 + 16);
  v73 = v47;
  v72(v47, v65, v62);
  v74 = sub_25424DA88();
  v75 = sub_25424E418();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v229 = v75;
    v77 = v68;
    v78 = v76;
    v230 = swift_slowAlloc();
    v261 = v230;
    *v78 = 136315906;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v79 = sub_25424EA58();
    v81 = v80;
    v234 = *(v77 + 1);
    (v234)(v69, v71);
    v82 = sub_2542203C4(v79, v81, &v261);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2048;
    *(v78 + 14) = v240;
    *(v78 + 22) = 2080;
    v83 = v252;
    v84 = v243;
    sub_25424D1F8();
    sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v85 = sub_25424EA58();
    v87 = v86;
    v88 = v83;
    v89 = v235;
    (v235)(v88, v260);
    v90 = v66;
    v91 = v251;
    v243 = *(v258 + 8);
    (v243)(v84, v90);
    v92 = sub_2542203C4(v85, v87, &v261);
    v62 = v260;

    *(v78 + 24) = v92;
    *(v78 + 32) = 2080;
    v93 = sub_25424EA58();
    v95 = v94;
    v89(v73, v62);
    v96 = sub_2542203C4(v93, v95, &v261);

    *(v78 + 34) = v96;
    _os_log_impl(&dword_254124000, v74, v229, "[%s] Using coalescing window of %ld seconds, adjusted start date %s => %s", v78, 0x2Au);
    v97 = v230;
    swift_arrayDestroy();
    MEMORY[0x259C07330](v97, -1, -1);
    MEMORY[0x259C07330](v78, -1, -1);

    v98 = v242;
    v242 = *(v253 + 8);
    (v242)(v98, v254);
    v99 = v255;
    v100 = v245;
    if ((v244 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {

    (v235)(v73, v62);
    v191 = v243;
    v243 = *(v258 + 8);
    (v243)(v191, v66);
    v234 = *(v68 + 1);
    (v234)(v69, v71);
    v192 = v242;
    v242 = *(v253 + 8);
    (v242)(v192, v254);
    v99 = v255;
    v100 = v245;
    v91 = v251;
    if ((v244 & 1) == 0)
    {
LABEL_26:
      sub_25424D1D8();
      v168 = v237;
      sub_25421ACE8(v237);
      v160 = v248;
      (v246)(v100, v256, v248);
      v193 = v238;
      v194 = v239;
      v231(v238, v91, v239);
      v195 = sub_25424DA88();
      v196 = sub_25424E418();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v261 = v198;
        *v197 = 136315394;
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v199 = sub_25424EA58();
        v200 = v160;
        v202 = v201;
        (v234)(v100, v200);
        v203 = sub_2542203C4(v199, v202, &v261);

        *(v197 + 4) = v203;
        *(v197 + 12) = 2080;
        v204 = v252;
        v205 = v238;
        sub_25424D1D8();
        sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v206 = v260;
        v207 = sub_25424EA58();
        v209 = v208;
        (*(v259 + 8))(v204, v206);
        (v243)(v205, v239);
        v210 = sub_2542203C4(v207, v209, &v261);

        *(v197 + 14) = v210;
        _os_log_impl(&dword_254124000, v195, v196, "[%s] Not using coalescing window, end date %s", v197, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v198, -1, -1);
        MEMORY[0x259C07330](v197, -1, -1);

        v190 = &v263;
        goto LABEL_28;
      }

      (v243)(v193, v194);
LABEL_31:
      (v234)(v100, v160);
      v211 = v168;
      goto LABEL_32;
    }
  }

LABEL_18:
  v154 = v252;
  sub_25424D1D8();
  sub_25424D578();
  v156 = v155;
  v157 = v155;
  v158 = v259;
  v159 = *(v259 + 8);
  result = (v159)(v154, v62);
  v160 = v248;
  if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v156 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v156 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v161 = v156 / v240;
  if (__OFADD__(v161, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (((v161 + 1) * v240) >> 64 != ((v161 + 1) * v240) >> 63)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v251 = v159;
  sub_25424D568();
  v162 = v236;
  sub_25421ACE8(v236);
  v100 = v232;
  (v246)(v232, v256, v160);
  v163 = v233;
  v164 = v91;
  v165 = v62;
  v166 = v239;
  v231(v233, v164, v239);
  v167 = *(v158 + 16);
  v168 = v162;
  v167(v241, v99, v165);
  v169 = sub_25424DA88();
  v170 = sub_25424E418();
  if (!os_log_type_enabled(v169, v170))
  {

    (v251)(v241, v165);
    (v243)(v163, v166);
    goto LABEL_31;
  }

  v171 = swift_slowAlloc();
  LODWORD(v246) = v170;
  v172 = v171;
  *&v256 = swift_slowAlloc();
  v261 = v256;
  *v172 = 136315906;
  sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v173 = sub_25424EA58();
  v174 = v160;
  v176 = v175;
  (v234)(v100, v174);
  v177 = sub_2542203C4(v173, v176, &v261);

  *(v172 + 4) = v177;
  *(v172 + 12) = 2048;
  *(v172 + 14) = v240;
  *(v172 + 22) = 2080;
  v178 = v252;
  sub_25424D1D8();
  sub_25417BFB4(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v179 = sub_25424EA58();
  v181 = v180;
  v182 = v251;
  (v251)(v178, v165);
  (v243)(v163, v239);
  v183 = sub_2542203C4(v179, v181, &v261);

  *(v172 + 24) = v183;
  *(v172 + 32) = 2080;
  v184 = v241;
  v185 = sub_25424EA58();
  v187 = v186;
  v182(v184, v165);
  v188 = sub_2542203C4(v185, v187, &v261);

  *(v172 + 34) = v188;
  _os_log_impl(&dword_254124000, v169, v246, "[%s] Using coalescing window of %ld seconds, adjusted end date %s => %s", v172, 0x2Au);
  v189 = v256;
  swift_arrayDestroy();
  MEMORY[0x259C07330](v189, -1, -1);
  MEMORY[0x259C07330](v172, -1, -1);

  v190 = &v262;
LABEL_28:
  v211 = *(v190 - 32);
LABEL_32:
  (v242)(v211, v254);
LABEL_33:
  v212 = v249;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_254254380;
  v214 = 0x4025203D3E204B25;
  if (v212)
  {
    v214 = 0x4025203E204B25;
  }

  v258 = v214;
  v254 = sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9228, &qword_2542545A8);
  v215 = swift_allocObject();
  v256 = xmmword_2542542D0;
  *(v215 + 16) = xmmword_2542542D0;
  *(v215 + 56) = MEMORY[0x277D837D0];
  v216 = sub_25417E624();
  *(v215 + 64) = v216;
  *(v215 + 32) = 1702125924;
  *(v215 + 40) = 0xE400000000000000;
  v217 = v257;
  v218 = sub_25424D818();
  v219 = sub_254148D7C(0, &qword_27F5B9258, 0x277CBEAA8);
  *(v215 + 96) = v219;
  v220 = sub_25417E678(&qword_27F5B9260, &qword_27F5B9258, 0x277CBEAA8);
  *(v215 + 104) = v220;
  *(v215 + 72) = v218;
  v221 = sub_25424E3E8();

  *(v213 + 32) = v221;
  v222 = swift_allocObject();
  *(v222 + 16) = v256;
  *(v222 + 56) = MEMORY[0x277D837D0];
  *(v222 + 64) = v216;
  *(v222 + 32) = 1702125924;
  *(v222 + 40) = 0xE400000000000000;
  v223 = v255;
  v224 = sub_25424D818();
  *(v222 + 96) = v219;
  *(v222 + 104) = v220;
  *(v222 + 72) = v224;
  v225 = sub_25424E3E8();

  *(v213 + 40) = v225;
  v226 = v260;
  v227 = *(v259 + 8);
  v227(v223, v260);
  v227(v217, v226);
  return v213;
}

uint64_t sub_25417DE78(uint64_t a1, void *a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_25424DAA8();
  v48 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = (v5 + 16);
  v46 = a2[2];
  if (v46)
  {
    v47 = v11;
    sub_25421ACE8(&v44 - v15);
    (*v17)(v10, a1, v4);
    swift_bridgeObjectRetain_n();
    v18 = sub_25424DA88();
    v19 = sub_25424E418();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315650;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_25424EA58();
      v25 = v24;
      (*(v5 + 8))(v10, v4);
      v26 = sub_2542203C4(v23, v25, &v49);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2542203C4(1936154996, 0xE400000000000000, &v49);
      *(v21 + 22) = 2048;

      v27 = v46;
      *(v21 + 24) = v46;

      _os_log_impl(&dword_254124000, v18, v19, "[%s] Creating '%s' predicate that contains %ld value(s)", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v22, -1, -1);
      v28 = v21;
      a2 = v45;
      MEMORY[0x259C07330](v28, -1, -1);

      (*(v48 + 8))(v16, v47);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v5 + 8))(v10, v4);
      (*(v48 + 8))(v16, v47);
      v27 = v46;
    }

    sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9228, &qword_2542545A8);
    if (v27 == 1)
    {
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2542542D0;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = sub_25417E624();
      *(v38 + 32) = 1936154996;
      *(v38 + 40) = 0xE400000000000000;
      v40 = a2[4];
      v39 = a2[5];
      sub_254140660(v40, v39);
      v41 = sub_25424D4F8();
      sub_254134D04(v40, v39);
      *(v38 + 96) = sub_254148D7C(0, &qword_27F5B9238, 0x277CBEA90);
      *(v38 + 104) = sub_25417E678(&qword_27F5B9240, &qword_27F5B9238, 0x277CBEA90);
      *(v38 + 72) = v41;
    }

    else
    {
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2542542D0;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9248, &qword_2542545B0);
      *(v42 + 64) = sub_25414081C(&qword_27F5B9250, &qword_27F5B9248, &qword_2542545B0, MEMORY[0x277CC9C50]);
      *(v42 + 32) = a2;
      *(v42 + 96) = MEMORY[0x277D837D0];
      *(v42 + 104) = sub_25417E624();
      *(v42 + 72) = 1936154996;
      *(v42 + 80) = 0xE400000000000000;
    }

    return sub_25424E3E8();
  }

  else
  {
    sub_25421ACE8(v14);
    (*v17)(v8, a1, v4);
    v29 = sub_25424DA88();
    v30 = sub_25424E418();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v11;
      v33 = v32;
      v49 = v32;
      *v31 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_25424EA58();
      v36 = v35;
      (*(v5 + 8))(v8, v4);
      v37 = sub_2542203C4(v34, v36, &v49);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2542203C4(1936154996, 0xE400000000000000, &v49);
      _os_log_impl(&dword_254124000, v29, v30, "[%s] No tags specified, skipping '%s' predicate", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v33, -1, -1);
      MEMORY[0x259C07330](v31, -1, -1);

      (*(v48 + 8))(v14, v47);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      (*(v48 + 8))(v14, v11);
    }

    return 0;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_25417E624()
{
  result = qword_27F5B9230;
  if (!qword_27F5B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9230);
  }

  return result;
}

uint64_t sub_25417E678(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_254148D7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25417E6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25417E74C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_25417A1A4(a1, a2, v6);
}

uint64_t sub_25417E83C(uint64_t a1)
{
  result = sub_25424D948();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SomeEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static HMVCommands.echo(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25417E944, 0, 0);
}

uint64_t sub_25417E944()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25417EA1C;

  return sub_2541302DC(sub_25417ECD4, v3);
}

uint64_t sub_25417EA1C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_25417EB88, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_25417EB88()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25417EBEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25424DCA8();
  v8[4] = sub_25417EEF4;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25417EEFC;
  v8[3] = &block_descriptor_2;
  v7 = _Block_copy(v8);

  [a1 hmvutilEchoWithString:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_25417ECDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  if (a3)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    v13 = sub_25424E128();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = sub_25417F008;
    v14[6] = v12;
    v15 = a3;

    v16 = &unk_2542546E0;
LABEL_5:
    sub_25419CC1C(0, 0, v11, v16, v14);
  }

  if (a2)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = sub_25424E128();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = sub_25417F000;
    v14[6] = v17;

    v16 = &unk_254252D78;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_25417EEFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_25424DCB8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25417EFAC(uint64_t a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8878, &qword_254252D60);
  return sub_25424E088();
}

uint64_t sub_25417F010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_254131030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25417F0D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AsyncDigestEventSequence.AsyncIterator(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_25417F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator(0, v6, v7, a3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v12 = type metadata accessor for AsyncJSONArrayObjectSequence(0, v6, v7, v11);
  sub_254236F74(v12, v10);
  return sub_25417F0D8(v10, *(v3 + *(a1 + 36)), v6, v7, a2);
}

uint64_t sub_25417F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  sub_25417F174(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_25417F28C(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v3[68] = type metadata accessor for EventRecord.DecodedEvent(0);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  sub_25424DCF8();
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25417F36C, 0, 0);
}

uint64_t sub_25417F36C(uint64_t a1)
{
  sub_25424E1E8();
  v2 = *(v1 + 528);
  v3 = swift_task_alloc();
  *(v1 + 584) = v3;
  v5 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator(0, *(v2 + 16), *(v2 + 24), v4);
  *v3 = v1;
  v3[1] = sub_25417F494;

  return sub_2542370CC(v5);
}

uint64_t sub_25417F494(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[74] = a1;
  v4[75] = a2;
  v4[76] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25417F608, 0, 0);
  }
}

uint64_t sub_25417F608()
{
  v1 = *(v0 + 600);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 520);
    v3 = type metadata accessor for SomeEvent(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 592);
    *(v0 + 16) = v6;
    *(v0 + 24) = v1;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 2;
    *(v0 + 64) = MEMORY[0x277D84F90];
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 1;
    *(v0 + 104) = 0;
    *(v0 + 32) = 0;
    sub_254181340(v6, v1);
    sub_254140660(v6, v1);
    v7 = *(v0 + 608);
    *(v0 + 624) = 0xF000000000000000;
    *(v0 + 616) = 0;
    *(v0 + 640) = xmmword_254252DB0;
    *(v0 + 632) = v7;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }
}

uint64_t sub_25417F794(uint64_t a1)
{
  v2 = v1[79];
  sub_25424E1E8();
  if (v2)
  {
    v1[91] = v2;

    return MEMORY[0x2822009F8](sub_254180258, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v1[82] = v3;
    *v3 = v1;
    v3[1] = sub_25417F878;

    return sub_254181354();
  }
}

uint64_t sub_25417F878(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[50] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = v2;
  v4[83] = a2;
  v4[84] = v2;

  if (v2)
  {
    v4[91] = v2;
    v5 = sub_254180258;
  }

  else
  {
    v5 = sub_25417F9A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25417F9A8()
{
  if (*(v0 + 664) >> 60 != 15)
  {
    v3 = sub_25417FB34;
    goto LABEL_18;
  }

  if (*(v0 + 32))
  {
    sub_2541CF73C();
  }

  *(v0 + 680) = *(v0 + 672);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = xmmword_254252DB0;
  if (v2 >> 60 == 15)
  {
LABEL_5:
    v3 = sub_2541803F8;
LABEL_18:

    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  while (1)
  {
    *(v0 + 696) = v1;
    *(v0 + 688) = v2;
    v4 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      break;
    }

    if (v4)
    {
      if (v1 != v1 >> 32)
      {
        goto LABEL_14;
      }
    }

    else if ((v2 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_7:
    sub_254134CF0(v1, v2);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 16) = xmmword_254252DB0;
    if (v2 >> 60 == 15)
    {
      goto LABEL_5;
    }
  }

  if (v4 != 2 || *(v1 + 16) == *(v1 + 24))
  {
    goto LABEL_7;
  }

LABEL_14:
  sub_2541D0104(v1, v2);
  v5 = swift_task_alloc();
  *(v0 + 704) = v5;
  *v5 = v0;
  v5[1] = sub_25417FD30;

  return sub_254181354();
}

uint64_t sub_25417FB34()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 408);
  v4 = *(v0 + 648);
  if (v4 >> 60 == 15)
  {
    v4 = *(v0 + 664);
LABEL_5:
    *(v0 + 648) = v4;
    *(v0 + 640) = v3;
    *(v0 + 632) = v1;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }

  v5 = *(v0 + 624);
  if (v5 >> 60 == 15)
  {
    *(v0 + 616) = v3;
    v3 = *(v0 + 640);
    *(v0 + 624) = v2;
    goto LABEL_5;
  }

  v15 = *(v0 + 640);
  v6 = *(v0 + 616);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  sub_254182650();
  swift_allocError();
  *v9 = 0xD00000000000002DLL;
  v9[1] = 0x80000002542506F0;
  swift_willThrow();
  sub_254134D04(v3, v2);
  sub_254134D04(v8, v7);
  sub_254134CF0(v6, v5);
  sub_254134CF0(v15, v4);
  sub_254134CF0(v8, v7);
  v10 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v10;
  v11 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v11;
  v12 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v12;
  sub_254132E5C(v0 + 304, &qword_27F5B9370, &qword_2542547F0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25417FD30(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[54] = v3;
  v5[55] = a1;
  v5[56] = a2;
  v5[57] = v2;
  v5[89] = v2;

  if (v2)
  {
    v6 = sub_25417FFE8;
  }

  else
  {
    v5[90] = a2;
    v6 = sub_25417FE60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25417FE60()
{
  v1 = v0[90];
  sub_254134CF0(v0[87], v0[86]);
  if (v1 >> 60 != 15)
  {
    v4 = sub_25418005C;
    goto LABEL_16;
  }

  v0[85] = v0[89];
  v2 = v0[2];
  v3 = v0[3];
  *(v0 + 1) = xmmword_254252DB0;
  if (v3 >> 60 == 15)
  {
LABEL_3:
    v4 = sub_2541803F8;
LABEL_16:

    return MEMORY[0x2822009F8](v4, 0, 0);
  }

  while (1)
  {
    v0[87] = v2;
    v0[86] = v3;
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      break;
    }

    if (v5)
    {
      if (v2 != v2 >> 32)
      {
        goto LABEL_12;
      }
    }

    else if ((v3 & 0xFF000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    sub_254134CF0(v2, v3);
    v2 = v0[2];
    v3 = v0[3];
    *(v0 + 1) = xmmword_254252DB0;
    if (v3 >> 60 == 15)
    {
      goto LABEL_3;
    }
  }

  if (v5 != 2 || *(v2 + 16) == *(v2 + 24))
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_2541D0104(v2, v3);
  v6 = swift_task_alloc();
  v0[88] = v6;
  *v6 = v0;
  v6[1] = sub_25417FD30;

  return sub_254181354();
}

uint64_t sub_25417FFE8()
{
  sub_254134CF0(v0[87], v0[86]);
  v0[91] = v0[89];

  return MEMORY[0x2822009F8](sub_254180258, 0, 0);
}

uint64_t sub_25418005C()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 440);
  v4 = *(v0 + 648);
  if (v4 >> 60 == 15)
  {
    v4 = *(v0 + 720);
LABEL_5:
    *(v0 + 648) = v4;
    *(v0 + 640) = v3;
    *(v0 + 632) = v2;

    return MEMORY[0x2822009F8](sub_25417F794, 0, 0);
  }

  v5 = *(v0 + 624);
  if (v5 >> 60 == 15)
  {
    *(v0 + 616) = v3;
    v3 = *(v0 + 640);
    *(v0 + 624) = v1;
    goto LABEL_5;
  }

  v15 = *(v0 + 640);
  v6 = *(v0 + 616);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  sub_254182650();
  swift_allocError();
  *v9 = 0xD00000000000002DLL;
  v9[1] = 0x80000002542506F0;
  swift_willThrow();
  sub_254134D04(v3, v1);
  sub_254134D04(v8, v7);
  sub_254134CF0(v6, v5);
  sub_254134CF0(v15, v4);
  sub_254134CF0(v8, v7);
  v10 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v10;
  v11 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v11;
  v12 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v12;
  sub_254132E5C(v0 + 304, &qword_27F5B9370, &qword_2542547F0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_254180258()
{
  *(v0 + 504) = *(v0 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2541802E8, 0, 0);
}

uint64_t sub_2541802E8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  sub_254134D04(v6, v5);
  sub_254134CF0(v4, v3);
  sub_254134CF0(v2, v1);
  sub_254134CF0(v6, v5);
  v7 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v7;
  v8 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  sub_254132E5C(v0 + 112, &qword_27F5B9370, &qword_2542547F0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2541803F8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v3;
  v4 = *(v0 + 96);
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 288) = v4;
  v5 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 16);
  *(v0 + 224) = v5;
  sub_254132E5C(v0 + 208, &qword_27F5B9370, &qword_2542547F0);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  if (v1 >> 60 == 15 || v2 >> 60 == 15)
  {
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    v21 = *(v0 + 600);
    v22 = *(v0 + 592);
    sub_254182650();
    swift_allocError();
    *v23 = 0xD00000000000002CLL;
    v23[1] = 0x80000002542505F0;
    swift_willThrow();
    sub_254134CF0(v20, v19);
    sub_254134CF0(v7, v6);
    sub_254134CF0(v22, v21);
    v24 = v22;
    v25 = v21;
    goto LABEL_24;
  }

  sub_25424DCE8();
  result = sub_25424DCD8();
  if (!v9)
  {
    return sub_25424E858();
  }

  v10 = HIBYTE(v9) & 0xF;
  v11 = result & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v12 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_70;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v53 = result;
    v54 = v9;

    v15 = sub_254182718(v53, v54, 10);
    v56 = v55;

    result = v53;
    v9 = v54;
    if (v56)
    {
      goto LABEL_70;
    }

    goto LABEL_72;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    *(v0 + 488) = result;
    *(v0 + 496) = v9 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v10)
      {
        v33 = v10 - 1;
        if (v33)
        {
          v15 = 0;
          v34 = (v0 + 489);
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            LOBYTE(v11) = 0;
            ++v34;
            if (!--v33)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_93:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v10)
      {
        v15 = 0;
        v39 = (v0 + 488);
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          LOBYTE(v11) = 0;
          ++v39;
          if (!--v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v10)
    {
      v26 = v10 - 1;
      if (v26)
      {
        v15 = 0;
        v27 = (v0 + 489);
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          LOBYTE(v11) = 0;
          ++v27;
          if (!--v26)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_91;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v92 = result;
    v93 = v9;
    v13 = sub_25424E708();
    result = v92;
    v11 = v94;
    v9 = v93;
  }

  v14 = *v13;
  if (v14 == 43)
  {
    if (v11 >= 1)
    {
      if (--v11)
      {
        v15 = 0;
        if (v13)
        {
          v30 = v13 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_68;
            }

            v32 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_68;
            }

            v15 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_68;
            }

            ++v30;
            if (!--v11)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_68;
    }

    goto LABEL_92;
  }

  if (v14 == 45)
  {
    if (v11 >= 1)
    {
      if (--v11)
      {
        v15 = 0;
        if (v13)
        {
          v16 = v13 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_68;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_68;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_68;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v11) = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v11)
  {
    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v37 = *v13 - 48;
        if (v37 > 9)
        {
          goto LABEL_68;
        }

        v38 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          goto LABEL_68;
        }

        v15 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          goto LABEL_68;
        }

        ++v13;
        if (!--v11)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_68:
  v15 = 0;
  LOBYTE(v11) = 1;
LABEL_69:
  *(v0 + 736) = v11;
  if (v11)
  {
LABEL_70:
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    v44 = *(v0 + 624);
    v45 = *(v0 + 616);
    v46 = *(v0 + 600);
    v47 = *(v0 + 592);
    v48 = result;
    v49 = v9;
    sub_25424E688();

    MEMORY[0x259C05CA0](v48, v49);

    sub_254182650();
    swift_allocError();
    *v50 = 0xD00000000000002FLL;
    v50[1] = 0x8000000254250690;
    swift_willThrow();
    sub_254134CF0(v47, v46);
    sub_254134D04(v47, v46);
    sub_254134CF0(v43, v42);
    v51 = v45;
    v52 = v44;
LABEL_74:
    sub_254134CF0(v51, v52);
    goto LABEL_75;
  }

LABEL_72:

  EventRecord.DataType.init(rawValue:)(v15);
  v57 = *(v0 + 737);
  v58 = *(v0 + 624);
  v59 = *(v0 + 616);
  if (v57 == 15)
  {
    v60 = *(v0 + 648);
    v61 = *(v0 + 640);
    v62 = *(v0 + 600);
    v63 = *(v0 + 592);
    sub_25424E688();

    *(v0 + 512) = v15;
    v64 = sub_25424EA58();
    MEMORY[0x259C05CA0](v64);

    sub_254182650();
    swift_allocError();
    *v65 = 0xD00000000000002FLL;
    v65[1] = 0x80000002542506C0;
    swift_willThrow();
    sub_254134CF0(v63, v62);
    sub_254134D04(v63, v62);
    sub_254134CF0(v61, v60);
    v51 = v59;
    v52 = v58;
    goto LABEL_74;
  }

  v67 = *(v0 + 680);
  v68 = *(v0 + 560);
  *(v0 + 464) = v57;
  *(v0 + 472) = v59;
  *(v0 + 480) = v58;
  sub_254181340(v59, v58);
  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v0 + 464, 0, v68);
  if (v67)
  {
    v69 = *(v0 + 648);
    v70 = *(v0 + 640);
    v71 = *(v0 + 624);
    v72 = *(v0 + 616);
    v73 = *(v0 + 600);
    v74 = *(v0 + 592);
    if (*(*(v0 + 536) + *(*(v0 + 528) + 36)) == 1)
    {
      sub_254134CF0(*(v0 + 592), *(v0 + 600));
      sub_254134D04(v74, v73);
      sub_254134CF0(v70, v69);
      sub_254134CF0(v72, v71);
      sub_254134D04(v72, v71);

      goto LABEL_84;
    }

    swift_willThrow();
    sub_254134CF0(v74, v73);
    sub_254134D04(v74, v73);
    sub_254134CF0(v70, v69);
    sub_254134CF0(v72, v71);
    v24 = v72;
    v25 = v71;
LABEL_24:
    sub_254134D04(v24, v25);
LABEL_75:

    v66 = *(v0 + 8);
LABEL_76:

    return v66();
  }

  v75 = *(v0 + 648);
  v76 = *(v0 + 640);
  v77 = *(v0 + 624);
  v78 = *(v0 + 616);
  v79 = *(v0 + 600);
  v80 = *(v0 + 592);
  v81 = *(v0 + 568);
  v82 = *(v0 + 560);
  v83 = *(v0 + 552);
  sub_254134CF0(v80, v79);
  sub_254134D04(v80, v79);
  sub_254134CF0(v76, v75);
  sub_254134CF0(v78, v77);
  sub_254134D04(v78, v77);
  sub_254182CA4(v82, v81, type metadata accessor for EventRecord.DecodedEvent);
  sub_254182CA4(v81, v83, type metadata accessor for EventRecord.DecodedEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v85 = *(v0 + 552);
  if (EnumCaseMultiPayload != 1)
  {
    v90 = *(v0 + 520);
    sub_254182CA4(v85, v90, type metadata accessor for SomeEvent);
    v91 = type metadata accessor for SomeEvent(0);
    (*(*(v91 - 8) + 56))(v90, 0, 1, v91);

    v66 = *(v0 + 8);
    goto LABEL_76;
  }

  sub_254182D0C(v85);
LABEL_84:
  v86 = *(v0 + 528);
  v87 = swift_task_alloc();
  *(v0 + 584) = v87;
  v89 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator(0, *(v86 + 16), *(v86 + 24), v88);
  *v87 = v0;
  v87[1] = sub_25417F494;

  return sub_2542370CC(v89);
}

uint64_t sub_254180D94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return sub_25417F28C(a1, a2);
}

uint64_t URL.hmvDigestEvents(ignoreEventsThatFailToDecode:dataChunkSize:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25424D3B8();
  if (a2 >= 1 && (result & 1) != 0)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
    a3[3] = v7;
    a3[4] = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0, &unk_254254798);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_25424D3D8();
    *(boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8) + 36)) = a2;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
    *(boxed_opaque_existential_1 + *(result + 36)) = 1;
    *(boxed_opaque_existential_1 + *(v7 + 36)) = a1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254180F54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_2541810C8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_254181340(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254140660(result, a2);
  }

  return result;
}

uint64_t sub_254181354()
{
  v1[59] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9388, &qword_254254808);
  v1[60] = v2;
  v1[61] = *(v2 - 8);
  v1[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25418144C, 0, 0);
}

uint64_t sub_25418144C()
{
  v1 = v0[59];
  v2 = v1[11];
  v3 = v1[8];
  v0[63] = v3;
  if (v2 < 0 || v3 < v2)
  {
    __break(1u);
  }

  v4 = v1[7];
  v0[50] = v1[6];
  v0[51] = v4;
  v0[52] = v3;
  v0[53] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9390, &qword_254254810);
  sub_25414081C(&qword_27F5B9398, &qword_27F5B9390, &qword_254254810, &unk_25425CCB0);
  sub_25424E1F8();
  sub_25424D388();
  v0[65] = v2;
  v0[64] = 0;

  return MEMORY[0x2822009F8](sub_254181598, 0, 0);
}

uint64_t sub_254181598(uint64_t a1)
{
  while (1)
  {
    if ((*(v1 + 57) & 1) == 0)
    {
      v13 = *(v1 + 56);
      *(v1 + 56) = 256;
      if ((v13 & 0xE0) == 0xC0)
      {
        v14 = 0;
        v15 = 1;
      }

      else if ((v13 & 0xF0) == 0xE0)
      {
        v14 = 0;
        v15 = 2;
      }

      else
      {
        if ((v13 & 0xF8) != 0xF0)
        {
          if (v13 < 0)
          {
            goto LABEL_147;
          }

          v78 = 0;
          v14 = 1;
          goto LABEL_30;
        }

        v14 = 0;
        v15 = 3;
      }

      v78 = v15;
LABEL_30:
      *(v1 + 576) = v13;
      *(v1 + 577) = 0;
      *(v1 + 579) = 0;
      if ((v14 & 1) != 0 || !*(v1 + 32))
      {
        goto LABEL_146;
      }

      v16 = 0;
      while (1)
      {
        v17 = *(v1 + 40);
        v18 = *(v1 + 16);
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_146;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_176;
        }

        v19 = (v18 + 16 * v17 + 40);
        while (1)
        {
          if (v17 >= *(v18 + 16))
          {
            goto LABEL_167;
          }

          v21 = *(v19 - 1);
          v20 = *v19;
          v22 = *(v1 + 48);
          v23 = *v19 >> 62;
          if (v23 > 1)
          {
            break;
          }

          if (v23)
          {
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_171;
            }

            v26 = HIDWORD(v21) - v21;
            goto LABEL_49;
          }

          if (v22 < BYTE6(v20))
          {
            goto LABEL_50;
          }

LABEL_37:
          sub_254134D04(v21, v20);
          *(v1 + 40) = ++v17;
          *(v1 + 48) = 0;
          v19 += 2;
          if (v17 >= *(*(v1 + 16) + 16))
          {
            goto LABEL_146;
          }
        }

        if (v23 != 2)
        {
          if (v22 < 0)
          {
            goto LABEL_195;
          }

          goto LABEL_37;
        }

        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        v26 = v24 - v25;
        if (__OFSUB__(v24, v25))
        {
          goto LABEL_172;
        }

LABEL_49:
        sub_254140660(*(v19 - 1), *v19);
        if (v22 >= v26)
        {
          goto LABEL_37;
        }

LABEL_50:
        if (v23 == 2)
        {
          v27 = *(v21 + 16);
          v28 = v27 + v22;
          if (!__OFADD__(v27, v22))
          {
            v29 = *(v21 + 24);
            goto LABEL_57;
          }

          goto LABEL_179;
        }

        if (v23 != 1)
        {
          v27 = 0;
          v29 = BYTE6(v20);
          v28 = v22;
          goto LABEL_57;
        }

        v27 = v21;
        v28 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_178;
        }

        v29 = v21 >> 32;
LABEL_57:
        if (v28 < v27 || v29 < v28)
        {
          goto LABEL_195;
        }

        if (v23 == 2)
        {
          if (v28 >= *(v21 + 16))
          {
            if (v28 >= *(v21 + 24))
            {
              goto LABEL_183;
            }

            v30 = sub_25424D268();
            if (v30)
            {
              v33 = v30;
              v36 = sub_25424D298();
              v35 = v28 - v36;
              if (!__OFSUB__(v28, v36))
              {
                goto LABEL_71;
              }

              goto LABEL_185;
            }

            goto LABEL_197;
          }

          goto LABEL_181;
        }

        if (v23 == 1)
        {
          if (v28 >= v21 && v28 < v21 >> 32)
          {
            v30 = sub_25424D268();
            if (v30)
            {
              v33 = v30;
              v34 = sub_25424D298();
              v35 = v28 - v34;
              if (!__OFSUB__(v28, v34))
              {
LABEL_71:
                v37 = *(v33 + v35);
                goto LABEL_74;
              }

LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
              goto LABEL_186;
            }

LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        if (v28 >= BYTE6(v20))
        {
          goto LABEL_180;
        }

        *(v1 + 558) = v21;
        *(v1 + 566) = v20;
        *(v1 + 568) = BYTE2(v20);
        *(v1 + 569) = BYTE3(v20);
        *(v1 + 570) = BYTE4(v20);
        *(v1 + 571) = BYTE5(v20);
        v37 = *(v1 + 558 + v28);
LABEL_74:
        sub_254134D04(v21, v20);
        *(v1 + 48) = v22 + 1;
        if ((v37 & 0xC0) != 0x80)
        {
          *(v1 + 56) = v37;
          *(v1 + 57) = 0;
          goto LABEL_146;
        }

        ++v16;
        *(v1 + 576 + v16) = v37;
        if (v16 >= v78 || !*(v1 + 32))
        {
LABEL_146:
          v62 = sub_25424DD68();
          v64 = sub_254183160(v62, v63);

          if ((v64 & 0x100000000) == 0)
          {
            goto LABEL_147;
          }

LABEL_151:
          v72 = *(v1 + 64);
          v71 = *(v1 + 72);
          if (sub_25424DD98() >= 1)
          {
            v73 = HIBYTE(v71) & 0xF;
            if ((v71 & 0x2000000000000000) == 0)
            {
              v73 = v72 & 0xFFFFFFFFFFFFLL;
            }

            if (v73)
            {
              v30 = sub_2541832B0(v72, v71);
              if (v31)
              {
                goto LABEL_156;
              }

              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

          v75 = sub_254182578;
LABEL_158:
          v30 = v75;
          v31 = 0;
          v32 = 0;

          return MEMORY[0x2822009F8](v30, v31, v32);
        }
      }
    }

    if (!*(v1 + 32))
    {
      goto LABEL_151;
    }

    v2 = *(v1 + 40);
    v3 = *(v1 + 16);
    if (v2 >= *(v3 + 16))
    {
      goto LABEL_151;
    }

    if (v2 < 0)
    {
      goto LABEL_175;
    }

    v4 = (v3 + 16 * v2 + 40);
    while (1)
    {
      if (v2 >= *(v3 + 16))
      {
        goto LABEL_166;
      }

      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v1 + 48);
      v8 = *v4 >> 62;
      if (v8 <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        v11 = v9 - v10;
        if (__OFSUB__(v9, v10))
        {
          goto LABEL_170;
        }

        goto LABEL_19;
      }

      if (v7 < 0)
      {
        v12 = 0;
        goto LABEL_83;
      }

LABEL_7:
      sub_254134D04(v6, v5);
      *(v1 + 40) = ++v2;
      *(v1 + 48) = 0;
      v4 += 2;
      if (v2 >= *(*(v1 + 16) + 16))
      {
        goto LABEL_151;
      }
    }

    if (!v8)
    {
      if (v7 < BYTE6(v5))
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_169;
    }

    v11 = HIDWORD(v6) - v6;
LABEL_19:
    sub_254140660(*(v4 - 1), *v4);
    if (v7 >= v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v8)
    {
      v12 = v8 == 2 ? *(v6 + 16) : v6;
    }

    else
    {
      v12 = 0;
    }

LABEL_83:
    sub_2541347C8(v12, v7, v6, v5);
    v38 = sub_25424D4C8();
    v30 = sub_254134D04(v6, v5);
    v39 = v7 + 1;
    *(v1 + 48) = v7 + 1;
    if (v38 < 0)
    {
      break;
    }

LABEL_147:
    v65 = *(v1 + 72);
    *(v1 + 456) = *(v1 + 64);
    *(v1 + 464) = v65;
    sub_25424DD58();
    v66 = *(v1 + 456);
    v67 = *(v1 + 464);
    *(v1 + 64) = v66;
    *(v1 + 72) = v67;
    if (sub_25424DD98() >= 2)
    {
      v76 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v76 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {
        goto LABEL_194;
      }

      v30 = sub_2541832B0(v66, v67);
      if (v31)
      {
LABEL_156:
        v74 = v30;
        *(v1 + 528) = v31;
        sub_2541832F8(1);
        *(v1 + 536) = v74;
        v75 = sub_254181F44;
        goto LABEL_158;
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }
  }

  if ((v38 & 0xFFFFFFE0) != 0xFFFFFFC0)
  {
    if ((v38 & 0xFFFFFFF0) == 0xFFFFFFE0)
    {
      v40 = 2;
      goto LABEL_90;
    }

    if ((v38 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v40 = 3;
      goto LABEL_90;
    }

    goto LABEL_147;
  }

  v40 = 1;
LABEL_90:
  v79 = v40;
  v41 = 0;
  *(v1 + 572) = v38;
  *(v1 + 573) = 0;
  *(v1 + 575) = 0;
  while (2)
  {
    v42 = *(v1 + 16);
    if (v2 >= *(v42 + 16))
    {
      goto LABEL_150;
    }

    v43 = v42 + 16 * v2;
    v45 = *(v43 + 32);
    v44 = *(v43 + 40);
    v46 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v46 == 2)
      {
        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        v49 = v47 - v48;
        if (__OFSUB__(v47, v48))
        {
          goto LABEL_173;
        }

        goto LABEL_102;
      }

      if (v39 < 0)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (!v46)
      {
        if (v39 < BYTE6(v44))
        {
          goto LABEL_103;
        }

        goto LABEL_108;
      }

      if (__OFSUB__(HIDWORD(v45), v45))
      {
        goto LABEL_174;
      }

      v49 = HIDWORD(v45) - v45;
LABEL_102:
      v30 = sub_254140660(*(v43 + 32), *(v43 + 40));
      if (v39 < v49)
      {
LABEL_103:
        if (v46 == 2)
        {
          goto LABEL_121;
        }

        goto LABEL_104;
      }
    }

LABEL_108:
    v30 = sub_254134D04(v45, v44);
    *(v1 + 40) = ++v2;
    *(v1 + 48) = 0;
    if (v2 >= *(*(v1 + 16) + 16))
    {
      goto LABEL_150;
    }

    v53 = (v43 + 56);
    while (2)
    {
      if (v2 >= *(v42 + 16))
      {
        goto LABEL_168;
      }

      v45 = *(v53 - 1);
      v44 = *v53;
      v46 = *v53 >> 62;
      if (v46 <= 1)
      {
        if (v46)
        {
          if (__OFSUB__(HIDWORD(v45), v45))
          {
            goto LABEL_174;
          }

          v54 = HIDWORD(v45) - v45;
          goto LABEL_119;
        }

        if (BYTE6(v44))
        {
          goto LABEL_120;
        }

LABEL_111:
        v30 = sub_254134D04(v45, v44);
        *(v1 + 40) = ++v2;
        *(v1 + 48) = 0;
        v53 += 2;
        if (v2 >= *(*(v1 + 16) + 16))
        {
          goto LABEL_150;
        }

        continue;
      }

      break;
    }

    if (v46 != 2)
    {
      goto LABEL_111;
    }

    v56 = *(v45 + 16);
    v55 = *(v45 + 24);
    v54 = v55 - v56;
    if (__OFSUB__(v55, v56))
    {
      goto LABEL_173;
    }

LABEL_119:
    v30 = sub_254140660(*(v53 - 1), *v53);
    if (v54 <= 0)
    {
      goto LABEL_111;
    }

LABEL_120:
    v39 = 0;
    if (v46 == 2)
    {
LABEL_121:
      v50 = *(v45 + 16);
      v51 = v50 + v39;
      if (!__OFADD__(v50, v39))
      {
        v52 = *(v45 + 24);
        goto LABEL_124;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
    }

LABEL_104:
    if (v46 != 1)
    {
      v50 = 0;
      v52 = BYTE6(v44);
      v51 = v39;
      goto LABEL_124;
    }

    v50 = v45;
    v51 = v45 + v39;
    if (__OFADD__(v45, v39))
    {
      goto LABEL_187;
    }

    v52 = v45 >> 32;
LABEL_124:
    if (v51 < v50 || v52 < v51)
    {
      goto LABEL_199;
    }

    if (v46 == 2)
    {
      if (v51 < *(v45 + 16))
      {
        goto LABEL_188;
      }

      if (v51 >= *(v45 + 24))
      {
        goto LABEL_192;
      }

      v30 = sub_25424D268();
      if (!v30)
      {
        goto LABEL_201;
      }

      v57 = v30;
      v60 = sub_25424D298();
      v59 = v51 - v60;
      if (__OFSUB__(v51, v60))
      {
        goto LABEL_193;
      }

LABEL_138:
      v61 = *(v57 + v59);
LABEL_141:
      v30 = sub_254134D04(v45, v44);
      *(v1 + 48) = ++v39;
      if ((v61 & 0xC0) == 0x80)
      {
        ++v41;
        *(v1 + 572 + v41) = v61;
        if (v41 == v79)
        {
          goto LABEL_150;
        }

        continue;
      }

      *(v1 + 56) = v61;
      *(v1 + 57) = 0;
LABEL_150:
      v68 = sub_25424DD68();
      v70 = sub_254183160(v68, v69);

      if ((v70 & 0x100000000) != 0)
      {
        goto LABEL_151;
      }

      goto LABEL_147;
    }

    break;
  }

  if (v46 != 1)
  {
    if (v51 >= BYTE6(v44))
    {
      goto LABEL_189;
    }

    *(v1 + 544) = v45;
    *(v1 + 552) = v44;
    *(v1 + 554) = BYTE2(v44);
    *(v1 + 555) = BYTE3(v44);
    *(v1 + 556) = BYTE4(v44);
    *(v1 + 557) = BYTE5(v44);
    v61 = *(v1 + 544 + v51);
    goto LABEL_141;
  }

  if (v51 < v45 || v51 >= v45 >> 32)
  {
    goto LABEL_190;
  }

  v30 = sub_25424D268();
  if (v30)
  {
    v57 = v30;
    v58 = sub_25424D298();
    v59 = v51 - v58;
    if (__OFSUB__(v51, v58))
    {
      goto LABEL_191;
    }

    goto LABEL_138;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_254181F44(uint64_t a1)
{
  v2 = *(v1 + 512);
  sub_25424E1E8();
  if (v2)
  {
    (*(*(v1 + 488) + 8))(*(v1 + 496), *(v1 + 480));

    v3 = *(v1 + 32);
    *(v1 + 144) = *(v1 + 16);
    *(v1 + 160) = v3;
    v4 = *(v1 + 64);
    *(v1 + 176) = *(v1 + 48);
    *(v1 + 192) = v4;
    sub_254132E5C(v1 + 144, qword_27F5B93A0, &qword_254254818);
LABEL_3:

    v5 = *(v1 + 8);

    return v5();
  }

  v7 = *(v1 + 536) == 12435439 && *(v1 + 528) == 0xA300000000000000;
  if (v7 || (v8 = sub_25424EAB8(), v9 = *(v1 + 528), (v8 & 1) != 0))
  {
    v10 = *(v1 + 520);
    v11 = *(v1 + 504);
    v12 = *(v1 + 32);
    *(v1 + 336) = *(v1 + 16);
    *(v1 + 352) = v12;
    v13 = *(v1 + 64);
    *(v1 + 368) = *(v1 + 48);
    *(v1 + 384) = v13;
    sub_254132E5C(v1 + 336, qword_27F5B93A0, &qword_254254818);

    v14 = v11 - v10;
    if (!__OFSUB__(v11, v10))
    {
      v16 = *(v1 + 488);
      v15 = *(v1 + 496);
      v17 = *(v1 + 480);
      if (v14 >= 4)
      {
        sub_254182650();
        swift_allocError();
        *v21 = 0xD000000000000016;
        v21[1] = 0x8000000254250740;
        swift_willThrow();
        (*(v16 + 8))(v15, v17);
        goto LABEL_3;
      }

      (*(v16 + 8))(*(v1 + 496), *(v1 + 480));
      v18 = 0;
      v19 = 0xF000000000000000;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
LABEL_54:
    v22 = sub_25424DDF8();
    goto LABEL_22;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v22 = *(v1 + 536) & 0xFFFFFFFFFFFFLL;
  }

LABEL_22:
  v23 = *(v1 + 520);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    __break(1u);
    goto LABEL_56;
  }

  v25 = *(v1 + 536);
  v26 = *(v1 + 528);
  v27 = *(v1 + 472);
  *(v27 + 88) = v24;
  sub_25420C7A4(v25, v26);
  v28 = *(v27 + 24);
  if (*(v27 + 40))
  {
    if (*(v27 + 40) == 1)
    {
      v30 = *(v1 + 488);
      v29 = *(v1 + 496);
      v31 = *(v1 + 480);
      v32 = *(*(v1 + 472) + 32);

      v33 = *(v1 + 32);
      *(v1 + 272) = *(v1 + 16);
      *(v1 + 288) = v33;
      v34 = *(v1 + 64);
      *(v1 + 304) = *(v1 + 48);
      *(v1 + 320) = v34;
      sub_254132E5C(v1 + 272, qword_27F5B93A0, &qword_254254818);
      sub_25424E688();

      MEMORY[0x259C05CA0](v28, v32);
      sub_254183380(v28, v32, 1);
      sub_254182650();
      swift_allocError();
      *v35 = 0xD000000000000016;
      v35[1] = 0x8000000254250720;
      swift_willThrow();
      (*(v30 + 8))(v29, v31);
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  if (*(*(v28 + 16) + 16) > 1uLL)
  {
    v36 = *(v1 + 472);

    if (*(v36 + 80))
    {
      v37 = *(v1 + 472);
      *(v37 + 72) = *(v1 + 520);
      *(v37 + 80) = 0;
    }

    goto LABEL_31;
  }

  v38 = *(v1 + 472);
  if ((*(v38 + 80) & 1) == 0)
  {
    v39 = *(v38 + 72);
    v40 = *(v1 + 536);
    v41 = *(v1 + 528);
    v42 = *(v1 + 32);
    *(v1 + 208) = *(v1 + 16);
    *(v1 + 224) = v42;
    v43 = *(v1 + 64);
    *(v1 + 240) = *(v1 + 48);
    *(v1 + 256) = v43;
    sub_254132E5C(v1 + 208, qword_27F5B93A0, &qword_254254818);
    *(v38 + 72) = 0;
    *(v38 + 80) = 1;
    if (v40 == 44 && v41 == 0xE100000000000000)
    {

      v44 = *(v1 + 520);
    }

    else
    {
      v45 = *(v1 + 520);
      v46 = sub_25424EAB8();

      if (v46)
      {
        v44 = v45;
      }

      else
      {
        v44 = v24;
      }
    }

    v47 = *(v1 + 472);
    v48 = sub_2541D0258(v44);
    v50 = v48;
    v51 = v49;
    *(v47 + 88) = 0;
    v52 = v49 >> 62;
    if ((v49 >> 62) > 1)
    {
      if (v52 == 2)
      {
        v54 = sub_2541347C8(*(v48 + 16), v39, v48, v49);
        v53 = *(v50 + 16);
        v55 = *(v50 + 24);
        goto LABEL_50;
      }
    }

    else if (v52)
    {
      v53 = v48;
      v54 = sub_2541347C8(v48, v39, v48, v49);
      v55 = v50 >> 32;
      goto LABEL_50;
    }

    v54 = sub_2541347C8(0, v39, v48, v49);
    if (v52 > 1)
    {
      v55 = 0;
      v53 = 0;
    }

    else if (v52)
    {
      v53 = v50;
      v55 = v50 >> 32;
    }

    else
    {
      v53 = 0;
      v55 = BYTE6(v51);
    }

LABEL_50:
    if (v55 >= v54 && v55 >= v53)
    {
      v57 = *(v1 + 488);
      v56 = *(v1 + 496);
      v58 = *(v1 + 480);
      v18 = sub_25424D4B8();
      v19 = v59;
      sub_254134D04(v50, v51);
      (*(v57 + 8))(v56, v58);
LABEL_14:

      v20 = *(v1 + 8);

      return v20(v18, v19);
    }

LABEL_56:
    __break(1u);
  }

LABEL_30:

LABEL_31:
  *(v1 + 520) = v24;
  *(v1 + 512) = 0;

  return MEMORY[0x2822009F8](sub_254181598, 0, 0);
}

uint64_t sub_254182578()
{
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_254132E5C(v0 + 80, qword_27F5B93A0, &qword_254254818);

  v3 = *(v0 + 8);

  return v3(0, 0xF000000000000000);
}

unint64_t sub_254182650()
{
  result = qword_27F5B9378;
  if (!qword_27F5B9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9378);
  }

  return result;
}

void *sub_2541826A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_254182718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25424DE78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_254182D68(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25424E708();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_254182CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254182D0C(uint64_t a1)
{
  v2 = type metadata accessor for EventRecord.DecodedEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254182D68(uint64_t a1, unint64_t a2)
{
  v2 = sub_25424DE88();
  v6 = sub_254182DE8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_254182DE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25424E5B8();
    if (!v9 || (v10 = v9, v11 = sub_2541826A4(v9, 0), v12 = sub_254182F40(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25424DD78();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25424DD78();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25424E708();
LABEL_4:

  return sub_25424DD78();
}

unint64_t sub_254182F40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2541B1288(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25424DE28();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25424E708();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2541B1288(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25424DE08();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_254183160(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2541833A0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25424E678();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25424E708() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_2541832B0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_25424DE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2541832F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_25424DDB8();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t sub_254183380(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

unint64_t sub_2541833A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_254183438(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2541834AC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_254183438(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2541B1288(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2541834AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25424E708();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2541835D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254183654(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *((&a1[v9] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void sub_2541837FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
          v18[5] = 0;
          v18[6] = 0;
        }

        else
        {
          v19 = (a2 - 1);
        }

        v18[4] = v19;
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t ThermostatAutomationEvent.State.result.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ThermostatAutomationEvent.State(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t ThermostatAutomationEvent.State.init(trigger:result:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_25418E278(a1, a3, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  result = type metadata accessor for ThermostatAutomationEvent.State(0);
  v7 = a3 + *(result + 20);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

unint64_t static ThermostatAutomationEvent.State.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9448, &qword_254254860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (qword_27F5B83E0 != -1)
  {
    swift_once();
  }

  v5 = off_27F5B9428;
  v6 = *(off_27F5B9428 + 2);
  if (v6)
  {
    result = sub_25418E184(v6);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      if (result < v5[2])
      {
        v9 = type metadata accessor for ThermostatAutomationEvent.State(0);
        v10 = *(v9 - 8);
        sub_25418E210(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v4, type metadata accessor for ThermostatAutomationEvent.State);
        (*(v10 + 56))(v4, 0, 1, v9);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v9 = type metadata accessor for ThermostatAutomationEvent.State(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
LABEL_8:
  type metadata accessor for ThermostatAutomationEvent.State(0);
  result = (*(*(v9 - 8) + 48))(v4, 1, v9);
  if (result != 1)
  {
    return sub_25418E278(v4, a1, type metadata accessor for ThermostatAutomationEvent.State);
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_254183D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B48, &qword_254257040);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B50, &unk_254257048);
  v3 = type metadata accessor for ThermostatAutomationEvent.State(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_254254360;
  if (qword_27F5B83F0 != -1)
  {
    swift_once();
  }

  v6 = off_27F5B9438;
  v7 = *(off_27F5B9438 + 2);
  if (v7)
  {

    result = sub_25418E184(v7);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = result;
    if (result >= v6[2])
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
    v11 = *(v10 - 8);
    sub_25418E210(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v2, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);

    (*(v11 + 56))(v2, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  }

  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  result = (*(*(v10 - 8) + 48))(v2, 1, v10);
  if (result != 1)
  {
    if (qword_27F5B83F8 != -1)
    {
      result = swift_once();
    }

    v12 = off_27F5B9440;
    v13 = *(off_27F5B9440 + 2);
    if (!v13)
    {
      goto LABEL_20;
    }

    result = sub_25418E184(v13);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < v12[2])
    {
      v14 = v5 + v4;
      v15 = v12 + 12 * result;
      v16 = *(v15 + 4);
      v17 = v15[40];

      result = sub_25418E278(v2, v14, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      v18 = v14 + *(v3 + 20);
      *v18 = v16;
      *(v18 + 8) = v17;
      off_27F5B9428 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2541840F4()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x72656767697274;
  }
}

uint64_t sub_25418412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_254184204(uint64_t a1)
{
  v2 = sub_25418F788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254184240(uint64_t a1)
{
  v2 = sub_25418F788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20));

  return v1;
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.init(identifier:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25424D948();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.random.getter@<X0>(uint64_t a2@<X8>)
{
  sub_25424D938();
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v4 = a2 + *(result + 20);
  strcpy(v4, "Default Room");
  *(v4 + 13) = 0;
  *(v4 + 14) = -5120;
  return result;
}

uint64_t static ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_254184450()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_254184488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_25418456C(uint64_t a1)
{
  v2 = sub_25418E300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541845A8(uint64_t a1)
{
  v2 = sub_25418E300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9450, &qword_254254868);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E300();
  sub_25424EC78();
  v8[15] = 0;
  sub_25424D948();
  sub_25418E354(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  if (!v1)
  {
    type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
    v8[14] = 1;
    sub_25424E9D8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.hash(into:)(uint64_t a1)
{
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);

  return sub_25424DD88();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.hashValue.getter()
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_25424D948();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9460, &qword_254254870);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E300();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_25418E354(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_25424E978();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_25424E938();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_25418E210(v19, v18, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25418F3C0(v19, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t sub_254184C6C(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_254184D14(uint64_t a1, uint64_t a2)
{
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();

  return sub_25424DD88();
}

uint64_t sub_254184DB0(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_254184E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_254184EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B40, &qword_254257038);
  v0 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2542542D0;
  v4 = v3 + v2;
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = v4 + v1;
  sub_25424D938();
  v8 = v7 + *(v5 + 20);
  strcpy(v8, "Default Room");
  *(v8 + 13) = 0;
  *(v8 + 14) = -5120;
  result = (v6)(v7, 0, 1, v5);
  off_27F5B9430 = v3;
  return result;
}

uint64_t sub_25418505C()
{
  if (*v0)
  {
    return 1836019570;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t sub_254185080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_25418515C(uint64_t a1)
{
  v2 = sub_25418E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254185198(uint64_t a1)
{
  v2 = sub_25418E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541851E0(uint64_t a1)
{
  v2 = sub_25418E850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418521C(uint64_t a1)
{
  v2 = sub_25418E850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254185258(uint64_t a1)
{
  v2 = sub_25418E7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254185294(uint64_t a1)
{
  v2 = sub_25418E7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9468, &qword_254254878);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9470, &qword_254254880);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9478, &qword_254254888);
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E7A8();
  sub_25424EC78();
  sub_25418E210(v29, v12, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_25418E850();
    v16 = v30;
    sub_25424E9A8();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_25418E278(v12, v25, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v32 = 1;
    sub_25418E7FC();
    v19 = v26;
    v20 = v30;
    sub_25424E9A8();
    sub_25418E354(&qword_27F5B9490, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v21 = v28;
    sub_25424EA18();
    (*(v27 + 8))(v19, v21);
    sub_25418F3C0(v18, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    return (*(v13 + 8))(v15, v20);
  }
}