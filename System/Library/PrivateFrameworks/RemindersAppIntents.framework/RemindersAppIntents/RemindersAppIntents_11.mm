unint64_t sub_261C1B2B4()
{
  result = qword_27FEDC928;
  if (!qword_27FEDC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC928);
  }

  return result;
}

unint64_t sub_261C1B30C()
{
  result = qword_27FEDC930;
  if (!qword_27FEDC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC930);
  }

  return result;
}

unint64_t sub_261C1B364()
{
  result = qword_27FEDC938;
  if (!qword_27FEDC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC938);
  }

  return result;
}

unint64_t sub_261C1B3BC()
{
  result = qword_27FEDC940;
  if (!qword_27FEDC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC940);
  }

  return result;
}

unint64_t sub_261C1B414()
{
  result = qword_27FEDC948;
  if (!qword_27FEDC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC948);
  }

  return result;
}

unint64_t sub_261C1B468(uint64_t a1)
{
  result = sub_261C1B490();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C1B490()
{
  result = qword_27FEDC950;
  if (!qword_27FEDC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC950);
  }

  return result;
}

unint64_t sub_261C1B4E8()
{
  result = qword_27FEDC958;
  if (!qword_27FEDC958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC960, &qword_261D0B4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC958);
  }

  return result;
}

unint64_t sub_261C1B54C()
{
  result = qword_27FEDC968;
  if (!qword_27FEDC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC968);
  }

  return result;
}

unint64_t sub_261C1B5A4()
{
  result = qword_27FEDC970;
  if (!qword_27FEDC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC970);
  }

  return result;
}

unint64_t sub_261C1B5FC()
{
  result = qword_27FEDC978;
  if (!qword_27FEDC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC978);
  }

  return result;
}

uint64_t sub_261C1B668()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC980);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC980);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ReminderEntity.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v313 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v275 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v274 = &v225 - v6;
  v257 = sub_261CFD504();
  MEMORY[0x28223BE20](v257);
  v256 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_261CFD524();
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v255 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD674();
  v10 = *(v9 - 8);
  v308 = v9;
  v309 = v10;
  MEMORY[0x28223BE20](v9);
  v265 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v264 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFFA44();
  MEMORY[0x28223BE20](v14 - 8);
  v263 = &v225 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v16 - 8);
  v295 = &v225 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ReminderEntity(0);
  v314 = *(v18 - 8);
  v315 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v296 = (&v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v310 = (&v225 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v270 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v269 = &v225 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v306 = &v225 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v258 = &v225 - v30;
  MEMORY[0x28223BE20](v29);
  v291 = &v225 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v276 = &v225 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v271 = &v225 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v268 = &v225 - v38;
  MEMORY[0x28223BE20](v37);
  v290 = &v225 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v267 = &v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v266 = &v225 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v289 = &v225 - v46;
  MEMORY[0x28223BE20](v45);
  v288 = &v225 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v280 = &v225 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v279 = &v225 - v52;
  MEMORY[0x28223BE20](v51);
  v287 = &v225 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v278 = &v225 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v277 = &v225 - v58;
  MEMORY[0x28223BE20](v57);
  v286 = &v225 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v262 = &v225 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v261 = &v225 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v285 = &v225 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v284 = &v225 - v68;
  MEMORY[0x28223BE20](v67);
  v283 = &v225 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA990, &unk_261D03490);
  MEMORY[0x28223BE20](v70 - 8);
  v300 = &v225 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  MEMORY[0x28223BE20](v72 - 8);
  v305 = &v225 - v73;
  v304 = sub_261CFD754();
  v254 = *(v304 - 8);
  v74 = MEMORY[0x28223BE20](v304);
  v299 = &v225 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v298 = &v225 - v76;
  v312 = sub_261CFC7E4();
  v303 = *(v312 - 1);
  v77 = MEMORY[0x28223BE20](v312);
  v297 = &v225 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v311 = &v225 - v79;
  v302 = sub_261CFEC64();
  v307 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v301 = &v225 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v81 - 8);
  v83 = &v225 - v82;
  v294 = type metadata accessor for ListEntity(0);
  v293 = *(v294 - 1);
  v84 = MEMORY[0x28223BE20](v294);
  v260 = &v225 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v84);
  v259 = &v225 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v282 = &v225 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v92 = &v225 - v91;
  MEMORY[0x28223BE20](v90);
  v292 = &v225 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  MEMORY[0x28223BE20](v94 - 8);
  v96 = (&v225 - v95);
  v97 = type metadata accessor for AppEntityID(0);
  v98 = *(v97 - 8);
  v99 = MEMORY[0x28223BE20](v97);
  v281 = &v225 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v102 = &v225 - v101;
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v318, v321);
  v103 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v103, v104, v96);
  __swift_destroy_boxed_opaque_existential_0(&v318);
  if ((*(v98 + 48))(v96, 1, v97) == 1)
  {
    sub_261AE6A40(v96, &qword_27FEDAA00, &qword_261D035A8);
LABEL_11:
    if (qword_27FED9B58 != -1)
    {
      swift_once();
    }

    v108 = sub_261CFF7A4();
    __swift_project_value_buffer(v108, qword_27FEDC980);
    v109 = sub_261CFF784();
    v110 = sub_261CFFE64();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_261AE2000, v109, v110, "Unable to convert representation to ReminderEntity", v111, 2u);
      MEMORY[0x26671D560](v111, -1, -1);
    }

    v112 = 1;
    v113 = v313;
    return (*(v314 + 56))(v113, v112, 1, v315);
  }

  sub_261C1EE94(v96, v102, type metadata accessor for AppEntityID);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v105 = v319;
  if (!v319)
  {
LABEL_10:
    sub_261B3B9DC(v102, type metadata accessor for AppEntityID);
    goto LABEL_11;
  }

  v106 = v318;
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (!v318)
  {
    sub_261B3B9DC(v102, type metadata accessor for AppEntityID);

    goto LABEL_11;
  }

  ListEntity.init(representation:)(v318, v83);
  if ((*(v293 + 48))(v83, 1, v294))
  {
    sub_261B3B9DC(v102, type metadata accessor for AppEntityID);

    sub_261AE6A40(v83, &unk_27FEDE0C0, &unk_261D02500);
    goto LABEL_11;
  }

  v248 = v106;
  sub_261C1EE94(v83, v92, type metadata accessor for ListEntity);
  v107 = v292;
  sub_261C1EE94(v92, v292, type metadata accessor for ListEntity);
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v318 == 2)
  {

    sub_261B3B9DC(v107, type metadata accessor for ListEntity);
    goto LABEL_10;
  }

  v245 = v318;
  sub_261CFCDA4();
  sub_261CFEBD4();

  v249 = a1;
  v247 = v102;
  v246 = v105;
  if (v318)
  {
    v115 = *(v318 + 16);
    v244 = v318;
    if (v115)
    {
      v293 = *(v307 + 16);
      v116 = v318 + ((*(v307 + 80) + 32) & ~*(v307 + 80));
      v253 = *(v307 + 72);
      v117 = (v254 + 6);
      v252 = (v254 + 4);
      v251 = (v254 + 2);
      v250 = (v254 + 1);
      v118 = (v307 + 8);
      v254 = (v303 + 32);
      v294 = MEMORY[0x277D84F90];
      v120 = v304;
      v119 = v305;
      v121 = v302;
      v122 = v301;
      v307 += 16;
      (v293)(v301, v116, v302);
      while (1)
      {
        sub_261CFEC54();
        if ((*v117)(v119, 1, v120) == 1)
        {
          (*v118)(v122, v121);
          sub_261AE6A40(v119, &qword_27FEDB238, &unk_261D056F0);
        }

        else
        {
          v123 = v298;
          (*v252)(v298, v119, v120);
          (*v251)(v299, v123, v120);
          v124 = sub_261CFF6A4();
          (*(*(v124 - 8) + 56))(v300, 1, 1, v124);
          v125 = v297;
          sub_261CFC7D4();
          v126 = v123;
          v121 = v302;
          (*v250)(v126, v120);
          (*v118)(v122, v121);
          v127 = *v254;
          (*v254)(v311, v125, v312);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v294 = sub_261B41894(0, *(v294 + 2) + 1, 1, v294);
          }

          v129 = *(v294 + 2);
          v128 = *(v294 + 3);
          if (v129 >= v128 >> 1)
          {
            v294 = sub_261B41894((v128 > 1), v129 + 1, 1, v294);
          }

          v122 = v301;
          v130 = v294;
          *(v294 + 2) = v129 + 1;
          v127(&v130[((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v129], v311, v312);
          v120 = v304;
          v119 = v305;
        }

        v116 += v253;
        if (!--v115)
        {
          break;
        }

        (v293)(v122, v116, v121);
      }
    }

    else
    {
      v294 = MEMORY[0x277D84F90];
    }

    v107 = v292;
    v102 = v247;
  }

  else
  {
    v294 = 0;
  }

  sub_261B01DC4(v102, v281, type metadata accessor for AppEntityID);
  sub_261B01DC4(v107, v282, type metadata accessor for ListEntity);
  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v318)
  {
    EarlyAlertEntity.init(representation:)(&v318);
    if (v319)
    {
      v302 = v321;
      v303 = v319;
      v304 = v320;
      v305 = v318;
      goto LABEL_37;
    }

    sub_261B49F50(v318, 0, v320, v321);
  }

  v304 = 0;
  v305 = 0;
  v303 = 0;
  v302 = 0;
LABEL_37:
  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v318)
  {
    LocationAlarmEntity.init(representation:)(&v318);
    if (v318)
    {
      v298 = v318;
      v299 = v320;
      v300 = v319;
      goto LABEL_42;
    }

    sub_261B49728(0, v319, v320);
  }

  v298 = 0;
  v300 = 0;
  v299 = 0;
LABEL_42:
  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v318 == 3)
  {
    v131 = 3;
  }

  else
  {
    v316 = v318;
    ReminderEntity.Flags.init(representation:)(v317);
    v131 = v317[0];
  }

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v318 == 4)
  {
    v132 = 4;
  }

  else
  {
    v316 = v318;
    ReminderEntity.PriorityLevel.init(representation:)(v317);
    v132 = v317[0];
  }

  sub_261CFCDA4();
  sub_261CFEBD4();

  if (!v318)
  {
    goto LABEL_51;
  }

  v133 = v258;
  ReminderEntity.init(representation:)(v318, v258);
  if ((*(v314 + 48))(v133, 1, v315))
  {
    sub_261AE6A40(v133, &unk_27FEDE110, &unk_261D035B0);
LABEL_51:
    v134 = 1;
    goto LABEL_53;
  }

  sub_261C1EE94(v133, v291, type metadata accessor for ReminderEntity);
  v134 = 0;
LABEL_53:
  LODWORD(v307) = v131;
  (*(v314 + 56))(v291, v134, 1, v315);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v135 = v318;
  v136 = MEMORY[0x277D84F90];
  LODWORD(v301) = v132;
  if (v318)
  {
    if (v318 >> 62)
    {
      goto LABEL_74;
    }

    v137 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v306; v137; i = v306)
    {
      v139 = 0;
      v140 = (v314 + 48);
      v141 = MEMORY[0x277D84F90];
      while ((v135 & 0xC000000000000001) != 0)
      {
        v142 = MEMORY[0x26671CA10](v139, v135);
        v143 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_72;
        }

LABEL_62:
        ReminderEntity.init(representation:)(v142, i);
        if ((*v140)(i, 1, v315) == 1)
        {
          sub_261AE6A40(i, &unk_27FEDE110, &unk_261D035B0);
        }

        else
        {
          sub_261C1EE94(i, v310, type metadata accessor for ReminderEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_261B41560(0, v141[2] + 1, 1, v141);
          }

          v145 = v141[2];
          v144 = v141[3];
          v146 = v141;
          if (v145 >= v144 >> 1)
          {
            v146 = sub_261B41560((v144 > 1), v145 + 1, 1, v141);
          }

          v146[2] = v145 + 1;
          v141 = v146;
          sub_261C1EE94(v310, v146 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v145, type metadata accessor for ReminderEntity);
          i = v306;
        }

        ++v139;
        if (v143 == v137)
        {
          goto LABEL_76;
        }
      }

      if (v139 >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v142 = sub_261CFCDA4();
      v143 = v139 + 1;
      if (!__OFADD__(v139, 1))
      {
        goto LABEL_62;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      v137 = sub_261D00274();
    }

    v141 = MEMORY[0x277D84F90];
LABEL_76:
    v310 = v141;

    v136 = MEMORY[0x277D84F90];
  }

  else
  {
    v310 = MEMORY[0x277D84F90];
  }

  sub_261CFCDA4();
  sub_261CFEBD4();

  v147 = v318;
  if (!v318)
  {
    v147 = v136;
  }

  v306 = v147;
  sub_261CFCDA4();
  sub_261CFEBD4();

  v251 = v318;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v148 = sub_261CFCAB4();
  v149 = v296;
  v253 = v148;
  *v296 = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v252 = sub_261CFCB24();
  v149[1] = v252;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v254 = sub_261CFCAA4();
  v149[2] = v254;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v293 = sub_261CFCAF4();
  v149[3] = v293;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE833C(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v297 = sub_261CFCA64();
  v149[4] = v297;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v239 = sub_261AE833C(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v258 = sub_261CFCA64();
  v149[5] = v258;
  v244 = v315[11];
  v150 = v315;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v311) = *MEMORY[0x277CC9110];
  v152 = v309 + 104;
  v151 = *(v309 + 104);
  v153 = v265;
  v151(v265);
  v312 = v151;
  v309 = v152;
  sub_261CFD6C4();
  v250 = sub_261CFCB14();
  *(v149 + v244) = v250;
  v243 = v150[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  sub_261CFD874();
  v154 = v311;
  v155 = v308;
  (v151)(v153, v311, v308);
  sub_261CFD6C4();
  sub_261AE833C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v244 = sub_261CFCA54();
  v156 = v296;
  *(v296 + v243) = v244;
  v157 = v315;
  v242 = v315[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v158 = v155;
  v312(v153, v154, v155);
  sub_261CFD6C4();
  v243 = sub_261CFCB34();
  *(v156 + v242) = v243;
  v159 = v157;
  v241 = v157[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v160 = v312;
  v312(v153, v154, v158);
  sub_261CFD6C4();
  v242 = sub_261CFCAD4();
  v161 = v296;
  *(v296 + v241) = v242;
  v240 = v159[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v160(v153, v154, v308);
  v162 = v160;
  v163 = v153;
  sub_261CFD6C4();
  v241 = sub_261CFCAD4();
  v164 = v161;
  *(v161 + v240) = v241;
  v237 = v159[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v165 = v311;
  v166 = v308;
  v162(v163, v311, v308);
  sub_261CFD6C4();
  v240 = sub_261CFCAD4();
  *(v164 + v237) = v240;
  v237 = v159[17];
  sub_261CFF9B4();
  sub_261CFD874();
  v167 = v165;
  v168 = v166;
  v169 = v166;
  v170 = v312;
  v312(v163, v167, v168);
  sub_261CFD6C4();
  v238 = sub_261CFCA94();
  *(v164 + v237) = v238;
  v235 = v159[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  v170(v163, v311, v169);
  v171 = v170;
  sub_261CFD6C4();
  sub_261B51818();
  v237 = sub_261CFCA54();
  v172 = v296;
  *(v296 + v235) = v237;
  v235 = v159[19];
  sub_261CFF9B4();
  sub_261CFD874();
  v173 = v311;
  v171(v163, v311, v169);
  sub_261CFD6C4();
  v236 = sub_261CFCAE4();
  *(v172 + v235) = v236;
  v174 = v172;
  v235 = v159[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v175 = v173;
  v176 = v308;
  v177 = v312;
  v312(v163, v175, v308);
  sub_261CFD6C4();
  sub_261B5186C();
  v234 = sub_261CFCA54();
  *(v174 + v235) = v234;
  v235 = v159[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  sub_261CFD874();
  v178 = v311;
  v177(v163, v311, v176);
  v179 = v177;
  sub_261CFD6C4();
  v233 = sub_261CFCA84();
  *(v174 + v235) = v233;
  v235 = v159[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v177(v163, v178, v176);
  sub_261CFD6C4();
  v231 = sub_261CFCA84();
  *(v174 + v235) = v231;
  v180 = v315;
  v232 = v315[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v179(v163, v178, v176);
  sub_261CFD6C4();
  v235 = sub_261CFCB14();
  v181 = v296;
  *(v296 + v232) = v235;
  v182 = v180;
  v230 = v180[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v183 = v311;
  v184 = v308;
  v312(v163, v311, v308);
  sub_261CFD6C4();
  sub_261B52470();
  v232 = sub_261CFCA34();
  *(v181 + v230) = v232;
  v229 = v182[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v185 = v312;
  v312(v163, v183, v184);
  sub_261CFD6C4();
  sub_261B524C4();
  v230 = sub_261CFCA34();
  *(v181 + v229) = v230;
  v186 = v315;
  v228 = v315[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v185(v163, v183, v308);
  sub_261CFD6C4();
  v229 = sub_261CFCA54();
  *(v181 + v228) = v229;
  v228 = v186[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v187 = v308;
  v312(v163, v183, v308);
  sub_261CFD6C4();
  v239 = sub_261CFCA54();
  *(v181 + v228) = v239;
  v188 = v315;
  v227 = v315[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v189 = v183;
  v190 = v312;
  v312(v163, v189, v187);
  sub_261CFD6C4();
  v228 = sub_261CFCB14();
  *(v181 + v227) = v228;
  v226 = v188[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  v190(v163, v311, v187);
  sub_261CFD6C4();
  v227 = sub_261CFCA74();
  *(v181 + v226) = v227;
  v191 = v188[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  v190(v163, v311, v187);
  sub_261CFD6C4();
  *(v181 + v191) = sub_261CFCAC4();
  sub_261B01DC4(v281, v181 + v188[10], type metadata accessor for AppEntityID);
  v192 = v259;
  sub_261B01DC4(v282, v259, type metadata accessor for ListEntity);
  sub_261B01DC4(v192, v260, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261B3B9DC(v192, type metadata accessor for ListEntity);
  LOBYTE(v318) = v245 & 1;
  sub_261CFCA14();
  v193 = v261;
  sub_261AFB668(v283, v261, &qword_27FEDAB68, &unk_261D11C90);
  v194 = v262;
  sub_261AFB668(v193, v262, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v193, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v284, v193, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v193, v194, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v193, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v285, v193, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v193, v194, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v193, &qword_27FEDAB68, &unk_261D11C90);
  v195 = v277;
  sub_261AFB668(v286, v277, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v195, v278, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v195, &qword_27FEDA160, &qword_261D02220);
  v318 = v305;
  v319 = v303;
  v320 = v304;
  v321 = v302;
  sub_261CFCA14();
  v196 = v279;
  sub_261AFB668(v287, v279, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v196, v280, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v196, &qword_27FEDA9A0, &unk_261D034A0);
  v318 = v298;
  v319 = v300;
  v320 = v299;
  sub_261CFCA14();
  v197 = v266;
  sub_261AFB668(v288, v266, &unk_27FEDB0B0, &unk_261D035D0);
  v198 = v267;
  sub_261AFB668(v197, v267, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v197, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v289, v197, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v197, v198, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v197, &unk_27FEDB0B0, &unk_261D035D0);
  v199 = v268;
  sub_261AFB668(v290, v268, &qword_27FEDA9A8, &qword_261D034B0);
  v200 = v272;
  v201 = v273;
  if ((*(v272 + 48))(v199, 1, v273) == 1)
  {
    sub_261AE6A40(v199, &qword_27FEDA9A8, &qword_261D034B0);
    v202 = 0;
    v203 = 0;
  }

  else
  {
    v204 = v255;
    (*(v200 + 32))(v255, v199, v201);
    sub_261CFD4F4();
    sub_261AE833C(&qword_27FEDCA28, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v202 = sub_261CFFBD4();
    v203 = v205;
    (*(v200 + 8))(v204, v201);
  }

  v206 = v276;
  v207 = v246;
  v208 = v307;
  v209 = v301;
  v318 = v202;
  v319 = v203;
  sub_261CFCA14();
  LOBYTE(v318) = v208;
  sub_261CFCA14();
  LOBYTE(v318) = v209;
  sub_261CFCA14();
  v210 = v269;
  sub_261AFB668(v291, v269, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v210, v270, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v210, &unk_27FEDE110, &unk_261D035B0);
  v211 = v310;
  v318 = v310;
  sub_261CFD104();
  sub_261CFCA14();
  v212 = v306;
  v318 = v306;
  sub_261CFD104();
  sub_261CFCA14();
  v213 = v294;
  v214 = MEMORY[0x277D84F90];
  if (!v294)
  {
    v213 = MEMORY[0x277D84F90];
  }

  v318 = v213;
  sub_261CFCA14();
  v215 = v251;
  if (!v251)
  {
    v215 = v214;
  }

  v318 = v215;
  sub_261CFCA14();
  v318 = v248;
  v319 = v207;
  sub_261CFCA14();
  v216 = v290;
  v217 = v271;
  sub_261AFB668(v290, v271, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v217, v206, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v217, &qword_27FEDA9A8, &qword_261D034B0);
  v318 = v212;
  sub_261CFCA14();
  v218 = v286;
  v219 = v277;
  sub_261AFB668(v286, v277, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v219, v278, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v219, &qword_27FEDA160, &qword_261D02220);
  v220 = v287;
  v221 = v279;
  sub_261AFB668(v287, v279, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v221, v280, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v221, &qword_27FEDA9A0, &unk_261D034A0);
  v222 = type metadata accessor for SectionEntity(0);
  v223 = v274;
  (*(*(v222 - 8) + 56))(v274, 1, 1, v222);
  sub_261AFB668(v223, v275, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v223, &qword_27FEDA1E0, &unk_261D02300);
  v318 = v211;
  sub_261CFCA14();

  sub_261AE6A40(v291, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v216, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AE6A40(v289, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v288, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v220, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v218, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v285, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v284, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v283, &qword_27FEDAB68, &unk_261D11C90);
  sub_261B3B9DC(v282, type metadata accessor for ListEntity);
  sub_261B3B9DC(v281, type metadata accessor for AppEntityID);
  sub_261B3B9DC(v292, type metadata accessor for ListEntity);
  sub_261B3B9DC(v247, type metadata accessor for AppEntityID);
  v224 = v313;
  sub_261C1EE94(v296, v313, type metadata accessor for ReminderEntity);
  v113 = v224;
  v112 = 0;
  return (*(v314 + 56))(v113, v112, 1, v315);
}

void ReminderEntity.PriorityLevel.init(representation:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 4)
  {
    if (qword_27FED9B58 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDC980);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert representation to PriorityLevel", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 4;
  }

  *a2 = v3;
}

void ReminderEntity.Flags.init(representation:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 3)
  {
    if (qword_27FED9B58 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDC980);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert representation to Flags", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

uint64_t sub_261C1EE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_261C1EF48()
{
  result = qword_27FEDCA38;
  if (!qword_27FEDCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCA38);
  }

  return result;
}

unint64_t sub_261C1EFA0()
{
  result = qword_27FEDCA40;
  if (!qword_27FEDCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCA40);
  }

  return result;
}

uint64_t (*ListBadgeEntityRepresentation.emblem.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCA48);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C1F0B0(void *a1)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v2;
}

double sub_261C1F0F8@<D0>(_OWORD *a3@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_261C1F14C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C1F1AC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ListBadgeEntityRepresentation.emoji.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCA50);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

void sub_261C1F284(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_261C1F2E4(void *a1)
{
  sub_261CFCDA4();
  v1 = sub_261CFEBF4();

  return v1;
}

uint64_t ListBadgeEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  v10 = qword_27FEDCA48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v9 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDCA50;
  swift_allocObject();
  *(v9 + v11) = sub_261CFEBB4();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v12(v6, v8, v2);
  v13 = sub_261CFEA94();
  v14 = *(v3 + 8);
  v14(a1, v2);
  v14(v8, v2);
  return v13;
}

uint64_t ListBadgeEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = qword_27FEDCA48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDCA50;
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = *(v4 + 16);
  v12(v9, a1, v3);
  v12(v7, v9, v3);
  v13 = sub_261CFEA94();
  v14 = *(v4 + 8);
  v14(a1, v3);
  v14(v9, v3);
  return v13;
}

uint64_t sub_261C1F6BC()
{
}

uint64_t ListBadgeEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t ListBadgeEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ListBadgeEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDCA60;
  if (!qword_27FEDCA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C1F860()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCA70);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCA70);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LocationAlarmEntity.init(representation:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v9 - 8);
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v26 == 2 || (v27 = v26 & 1, LocationAlarmEntity.MobileSpace.init(representation:)(&v28), v10 = v28, v28 == 2) || (sub_261CFCDA4(), sub_261CFEBD4(), , v26 == 3) || (v27 = v26, LocationAlarmEntity.SpatialEvent.init(representation:)(&v28), v28 == 3))
  {
    if (qword_27FED9B60 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDCA70);
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261AE2000, v12, v13, "Unable to convert representation to LocationAlarmEntity", v14, 2u);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v23 = v28;
    sub_261CFCDA4();
    sub_261CFEBD4();

    v22 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
    sub_261CFF9B4();
    sub_261CFD874();
    v25 = *MEMORY[0x277CC9110];
    v24 = *(v4 + 104);
    v24(v6);
    sub_261CFD6C4();
    sub_261B54038();
    v21 = sub_261CFCA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
    sub_261CFF9B4();
    sub_261CFD874();
    (v24)(v6, v25, v3);
    sub_261CFD6C4();
    sub_261B5408C();
    v20 = sub_261CFCA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
    sub_261CFF9B4();
    sub_261CFD874();
    (v24)(v6, v25, v3);
    sub_261CFD6C4();
    v16 = sub_261CFCB64();
    LOBYTE(v26) = v10 & 1;
    v17 = v21;
    sub_261CFCA14();
    LOBYTE(v26) = v23;
    v18 = v20;
    sub_261CFCA14();
    v26 = v22;
    v19 = v22;
    sub_261CFCA14();

    *a2 = v17;
    a2[1] = v18;
    a2[2] = v16;
  }

  return result;
}

void LocationAlarmEntity.MobileSpace.init(representation:)(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_27FED9B60 != -1)
      {
        swift_once();
      }

      v5 = sub_261CFF7A4();
      __swift_project_value_buffer(v5, qword_27FEDCA70);
      v6 = sub_261CFF784();
      v7 = sub_261CFFE64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261AE2000, v6, v7, "Unable to convert representation to MobileSpace", v8, 2u);
        MEMORY[0x26671D560](v8, -1, -1);
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void LocationAlarmEntity.SpatialEvent.init(representation:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 3)
  {
    if (qword_27FED9B60 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDCA70);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert representation to SpatialEvent", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

unint64_t sub_261C20188()
{
  result = qword_27FEDCA88;
  if (!qword_27FEDCA88)
  {
    type metadata accessor for LocationAlarmEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCA88);
  }

  return result;
}

unint64_t sub_261C201E8()
{
  result = qword_27FEDCA90;
  if (!qword_27FEDCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCA90);
  }

  return result;
}

uint64_t sub_261C2023C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCA98);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCA98);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double SmartListEntity.init(representation:)@<D0>(void *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v9 == 6 || (v11 = v9, SmartListType.init(representation:)(&v11), v12 == 6))
  {
    if (qword_27FED9B68 != -1)
    {
      swift_once();
    }

    v3 = sub_261CFF7A4();
    __swift_project_value_buffer(v3, qword_27FEDCA98);
    v4 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v4, v5, "Unable to convert representation to SectionEntity", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_261CFCDA4();
    sub_261CFEBD4();

    SmartListEntity.init(type:isHidden:)(&v12, v9, &v9);

    v8 = v10;
    result = *&v9;
    *a2 = v9;
    a2[2] = v8;
  }

  return result;
}

unint64_t sub_261C204AC()
{
  result = qword_27FEDCAB0;
  if (!qword_27FEDCAB0)
  {
    type metadata accessor for SmartListEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAB0);
  }

  return result;
}

uint64_t ReminderEntityRepresentation.PriorityLevelRepresentation.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1751607656;
  }

  if (*v0)
  {
    v1 = 7827308;
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

uint64_t sub_261C20564()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCAB8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCAB8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ReminderEntityRepresentation.PriorityLevelRepresentation.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_261D00554();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_261C206A0()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C20748(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C207DC(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261C2088C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 1751607656;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7827308;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_261C20934(uint64_t a1)
{
  v2 = sub_261C1EF48();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C20970(uint64_t a1)
{
  v2 = sub_261C1EF48();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C209AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C20CEC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C209F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C1EF48();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C20A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C20CEC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void ReminderEntityRepresentation.PriorityLevelRepresentation.init(appEnum:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 4)
  {
    if (qword_27FED9B70 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDCAB8);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert PriorityLevelType to representation", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 4;
  }

  *a2 = v3;
}

unint64_t sub_261C20C3C()
{
  result = qword_27FEDCAD0;
  if (!qword_27FEDCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAD0);
  }

  return result;
}

unint64_t sub_261C20C94()
{
  result = qword_27FEDCAD8;
  if (!qword_27FEDCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAD8);
  }

  return result;
}

unint64_t sub_261C20CEC()
{
  result = qword_27FEDCAE0;
  if (!qword_27FEDCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAE0);
  }

  return result;
}

unint64_t sub_261C20D44()
{
  result = qword_27FEDCAE8;
  if (!qword_27FEDCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAE8);
  }

  return result;
}

unint64_t sub_261C20D9C()
{
  result = qword_27FEDCAF0;
  if (!qword_27FEDCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAF0);
  }

  return result;
}

unint64_t sub_261C20DF0(uint64_t a1)
{
  result = sub_261C1EF48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C20E1C()
{
  result = qword_27FEDCAF8;
  if (!qword_27FEDCAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCB00, &qword_261D0B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCAF8);
  }

  return result;
}

unint64_t sub_261C20E80()
{
  result = qword_27FEDCB08;
  if (!qword_27FEDCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB08);
  }

  return result;
}

unint64_t sub_261C20ED8()
{
  result = qword_27FEDCB10;
  if (!qword_27FEDCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB10);
  }

  return result;
}

unint64_t sub_261C20F30()
{
  result = qword_27FEDCB18;
  if (!qword_27FEDCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB18);
  }

  return result;
}

unint64_t sub_261C20F94()
{
  result = qword_27FEDCB20;
  if (!qword_27FEDCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB20);
  }

  return result;
}

uint64_t sub_261C21024(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*CreateListAppIntentRepresentation.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t sub_261C2119C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t CreateListAppIntentRepresentation.group.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*CreateListAppIntentRepresentation.group.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C21314(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*CreateListAppIntentRepresentation.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t CreateListAppIntentRepresentation.init(name:group:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB38, &qword_261D0BA10);
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
}

unint64_t sub_261C215D8(uint64_t a1)
{
  result = sub_261C21600();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C21600()
{
  result = qword_27FEDCB40;
  if (!qword_27FEDCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB40);
  }

  return result;
}

uint64_t sub_261C21664()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCB48);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCB48);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ReminderInsertionPositionRepresentation_optional __swiftcall ReminderInsertionPositionRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ReminderInsertionPositionRepresentation.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_261C217CC@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261C21870(uint64_t a1)
{
  v2 = sub_261C21D38();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C218AC(uint64_t a1)
{
  v2 = sub_261C21D38();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C218E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C21C0C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C21934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C21D38();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C21998(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C21C0C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::ReminderInsertionPositionRepresentation_optional __swiftcall ReminderInsertionPositionRepresentation.init(appEnum:)(RemindersAppIntents::ReminderInsertionPosition appEnum)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (qword_27FED9B78 != -1)
      {
        swift_once();
      }

      v6 = sub_261CFF7A4();
      __swift_project_value_buffer(v6, qword_27FEDCB48);
      v7 = sub_261CFF784();
      v8 = sub_261CFFE64();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "Unable to convert ReminderInsertionPosition to representation", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261C21B5C()
{
  result = qword_27FEDCB60;
  if (!qword_27FEDCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB60);
  }

  return result;
}

unint64_t sub_261C21BB4()
{
  result = qword_27FEDCB68;
  if (!qword_27FEDCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB68);
  }

  return result;
}

unint64_t sub_261C21C0C()
{
  result = qword_27FEDCB70;
  if (!qword_27FEDCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB70);
  }

  return result;
}

unint64_t sub_261C21C64()
{
  result = qword_27FEDCB78;
  if (!qword_27FEDCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB78);
  }

  return result;
}

unint64_t sub_261C21CBC()
{
  result = qword_27FEDCB80;
  if (!qword_27FEDCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB80);
  }

  return result;
}

unint64_t sub_261C21D10(uint64_t a1)
{
  result = sub_261C21D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C21D38()
{
  result = qword_27FEDCB88;
  if (!qword_27FEDCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB88);
  }

  return result;
}

unint64_t sub_261C21D90()
{
  result = qword_27FEDCB90;
  if (!qword_27FEDCB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCB98, &qword_261D0BBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCB90);
  }

  return result;
}

unint64_t sub_261C21DF4()
{
  result = qword_27FEDCBA0;
  if (!qword_27FEDCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCBA0);
  }

  return result;
}

unint64_t sub_261C21E4C()
{
  result = qword_27FEDCBA8;
  if (!qword_27FEDCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCBA8);
  }

  return result;
}

unint64_t sub_261C21EA4()
{
  result = qword_27FEDCBB0;
  if (!qword_27FEDCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCBB0);
  }

  return result;
}

uint64_t SmartListEntityRepresentation.type.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();
}

uint64_t SmartListEntityRepresentation.isHidden.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t sub_261C21FAC@<X0>(_BYTE *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t SmartListEntityRepresentation.type.setter(char *a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*SmartListEntityRepresentation.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCBB8);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t sub_261C220EC@<X0>(_BYTE *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t sub_261C22144(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t SmartListEntityRepresentation.isHidden.setter(char a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*SmartListEntityRepresentation.isHidden.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCBC0);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t SmartListEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  v10 = qword_27FEDCBB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBC8, &unk_261D0BD40);
  swift_allocObject();
  *(v9 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDCBC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  swift_allocObject();
  *(v9 + v11) = sub_261CFEBB4();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v12(v6, v8, v2);
  v13 = sub_261CFEA94();
  v14 = *(v3 + 8);
  v14(a1, v2);
  v14(v8, v2);
  return v13;
}

uint64_t SmartListEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = qword_27FEDCBB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBC8, &unk_261D0BD40);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDCBC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = *(v4 + 16);
  v12(v9, a1, v3);
  v12(v7, v9, v3);
  v13 = sub_261CFEA94();
  v14 = *(v4 + 8);
  v14(a1, v3);
  v14(v9, v3);
  return v13;
}

uint64_t sub_261C22618()
{
}

uint64_t SmartListEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t SmartListEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartListEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDCBD8;
  if (!qword_27FEDCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C227B8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCBE8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCBE8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GroupEntity.init(representation:)@<X0>(unint64_t a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X8>)
{
  v78 = sub_261CFEC94();
  MEMORY[0x28223BE20](v78);
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD674();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - v14;
  v83 = type metadata accessor for ListEntity(0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v64 - v18);
  v20 = type metadata accessor for AppEntityID(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v80 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v84, v86);
  v26 = sub_261CFEAB4();
  AppEntityID.init(entityIdentifierString:)(v26, v27, v19);
  __swift_destroy_boxed_opaque_existential_0(&v84);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDAA00, &qword_261D035A8);
    goto LABEL_7;
  }

  sub_261C23488(v19, v25, type metadata accessor for AppEntityID);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v28 = v85;
  if (!v85)
  {
    sub_261B7C200(v25);
LABEL_7:
    if (qword_27FED9B80 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  v29 = v84;
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v84 == 2)
  {
    sub_261B7C200(v25);

    goto LABEL_7;
  }

  v65 = v84;
  sub_261B7C0F0(v25, v80);
  sub_261CFCDA4();
  sub_261CFEBD4();

  v36 = v84;
  v69 = a1;
  v70 = a2;
  v68 = v25;
  v67 = v28;
  v66 = v29;
  if (!v84)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
    sub_261C23538(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    v83 = sub_261CFCA64();
    v45 = v70;
    *v70 = v83;
    v46 = type metadata accessor for GroupEntity(0);
    v47 = *(v46 + 24);
    v48 = v46;
    v71 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    v49 = sub_261CFCB24();
    *(v45 + v47) = v49;
    v81 = *(v48 + 28);
    v82 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
    sub_261CFF9B4();
    sub_261CFD874();
    v64 = *MEMORY[0x277CC9110];
    v50 = v76;
    v75 = *(v75 + 104);
    v51 = v77;
    (v75)(v77);
    v52 = v72;
    sub_261CFD6B4();
    v53 = MEMORY[0x2667199E0](v52, &type metadata for UpdateGroupNameAppIntent);
    *(v45 + v81) = v53;
    v54 = v71;
    v81 = *(v71 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
    sub_261CFF9B4();
    sub_261CFD874();
    (v75)(v51, v64, v50);
    sub_261CFD6B4();
    v55 = MEMORY[0x2667199F0](v52, &type metadata for UpdateListShowsCompletedAppIntent);
    *(v45 + v81) = v55;
    v56 = *(v54 + 36);
    *(v45 + v56) = 0;
    v57 = v54;
    v58 = v45 + *(v54 + 20);
    v59 = v45;
    v60 = v80;
    sub_261B7C0F0(v80, v58);
    type metadata accessor for AnyListEntityLazyImage(0);
    v61 = swift_allocObject();
    v84 = MEMORY[0x277D84F90];
    sub_261C23538(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B7C19C();
    sub_261D001D4();
    sub_261CFECB4();
    swift_allocObject();
    *(v61 + 128) = sub_261CFECA4();
    v62 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v63 = sub_261CFD074();
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
    *(v61 + 105) = 0u;
    *(v61 + 80) = 0u;
    *(v61 + 96) = 0u;
    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
    *(v61 + 16) = 0u;
    *(v61 + 32) = 0u;
    *(v61 + 121) = 3;
    *(v59 + *(v57 + 40)) = v61;
    LOBYTE(v84) = v65 & 1;
    sub_261CFD2E4();
    *(v59 + v56) = v40;
    v84 = v66;
    v85 = v67;
    sub_261CFD104();
    sub_261CFCA14();
    v84 = v40;
    sub_261CFCA14();

    sub_261B7C200(v60);
    sub_261B7C200(v68);
    return (*(*(v57 - 8) + 56))(v59, 0, 1, v57);
  }

  v37 = v84 & 0xFFFFFFFFFFFFFF8;
  if (v84 >> 62)
  {
    v38 = sub_261D00274();
    if (v38)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  v38 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_34:
    v40 = MEMORY[0x277D84F90];
LABEL_35:

    goto LABEL_36;
  }

LABEL_14:
  v39 = 0;
  a2 = (v81 + 48);
  v40 = MEMORY[0x277D84F90];
  v71 = v37;
  while ((v36 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x26671CA10](v39, v36);
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_30;
    }

LABEL_20:
    ListEntity.init(representation:)(v41, v15);
    if ((*a2)(v15, 1, v83) == 1)
    {
      sub_261AE6A40(v15, &unk_27FEDE0C0, &unk_261D02500);
    }

    else
    {
      sub_261C23488(v15, v82, type metadata accessor for ListEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_261B419E8(0, *(v40 + 2) + 1, 1, v40);
      }

      v44 = *(v40 + 2);
      v43 = *(v40 + 3);
      if (v44 >= v43 >> 1)
      {
        v40 = sub_261B419E8((v43 > 1), v44 + 1, 1, v40);
      }

      *(v40 + 2) = v44 + 1;
      sub_261C23488(v82, v40 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v44, type metadata accessor for ListEntity);
      v37 = v71;
    }

    ++v39;
    if (v42 == v38)
    {
      goto LABEL_35;
    }
  }

  if (v39 >= *(v37 + 16))
  {
    goto LABEL_31;
  }

  v41 = sub_261CFCDA4();
  v42 = v39 + 1;
  if (!__OFADD__(v39, 1))
  {
    goto LABEL_20;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_8:
  v30 = sub_261CFF7A4();
  __swift_project_value_buffer(v30, qword_27FEDCBE8);
  v31 = sub_261CFF784();
  v32 = sub_261CFFE64();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_261AE2000, v31, v32, "Unable to convert representation to GroupEntity", v33, 2u);
    MEMORY[0x26671D560](v33, -1, -1);
  }

  v34 = type metadata accessor for GroupEntity(0);
  return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
}

uint64_t sub_261C23488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C23538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

RemindersAppIntents::PrefetchStrategyRepresentation::Identifiers_optional __swiftcall PrefetchStrategyRepresentation.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PrefetchStrategyRepresentation.Identifiers.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_261C2364C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PrefetchStrategy.all";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v2 == 1)
  {
    v6 = "PrefetchStrategy.all";
  }

  else
  {
    v6 = "PrefetchStrategy.initial";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "nder";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000020;
    v3 = "PrefetchStrategy.initial";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "nder";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261C23724()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C237C0(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C23848(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261C238EC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "PrefetchStrategy.all";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000020;
    v3 = "PrefetchStrategy.initial";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "nder";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t PrefetchStrategyRepresentation.entitySpecification.getter(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    sub_261CFEBA4();
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261C23C04();
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    sub_261CFEBA4();
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261C23B5C();
LABEL_5:
    sub_261CFEB94();
    sub_261C23BB0();
    sub_261CFEB34();
  }

  sub_261C23BB0();
  return sub_261CFEB34();
}

unint64_t sub_261C23B5C()
{
  result = qword_27FEDCC08;
  if (!qword_27FEDCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC08);
  }

  return result;
}

unint64_t sub_261C23BB0()
{
  result = qword_27FEDCC10;
  if (!qword_27FEDCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC10);
  }

  return result;
}

unint64_t sub_261C23C04()
{
  result = qword_27FEDCC18;
  if (!qword_27FEDCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC18);
  }

  return result;
}

void *static PrefetchStrategyRepresentation.from(_:context:)@<X0>(uint64_t a2@<X8>)
{
  sub_261CFEB44();
  __swift_project_boxed_opaque_existential_1(&v9, v11);
  sub_261CFEAA4();
  v3 = sub_261D00554();

  result = __swift_destroy_boxed_opaque_existential_0(&v9);
  if (v3 == 2)
  {
    result = sub_261CFEB54();
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
  }

  else
  {
    if (v3 == 1)
    {
      result = sub_261CFEB54();
      v5 = v10 << 31 >> 31;
      v6 = v9;
      if (v10)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      *a2 = 0;
      if (v3)
      {
        LOBYTE(v5) = -1;
      }

      else
      {
        LOBYTE(v5) = 2;
      }
    }

    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_261C23DA4()
{
  result = qword_27FEDCC20;
  if (!qword_27FEDCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC20);
  }

  return result;
}

unint64_t sub_261C23DFC()
{
  result = qword_27FEDCC28;
  if (!qword_27FEDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC28);
  }

  return result;
}

unint64_t sub_261C23E54()
{
  result = qword_27FEDCC30;
  if (!qword_27FEDCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC30);
  }

  return result;
}

unint64_t sub_261C23EB4()
{
  result = qword_27FEDCC38;
  if (!qword_27FEDCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC38);
  }

  return result;
}

uint64_t sub_261C23F08(uint64_t a1)
{
  v2 = sub_261C24184();

  return MEMORY[0x28213DA70](a1, v2);
}

uint64_t sub_261C23F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C24184();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_261C23F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C24184();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

unint64_t sub_261C23FF4()
{
  result = qword_27FEDCC40;
  if (!qword_27FEDCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC40);
  }

  return result;
}

uint64_t sub_261C24048(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C24184();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_261C240D8()
{
  result = qword_27FEDCC48;
  if (!qword_27FEDCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC48);
  }

  return result;
}

unint64_t sub_261C24130()
{
  result = qword_27FEDCC50;
  if (!qword_27FEDCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCC50);
  }

  return result;
}

unint64_t sub_261C24184()
{
  result = qword_27FEDCC58[0];
  if (!qword_27FEDCC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEDCC58);
  }

  return result;
}

uint64_t static TypedAppIntentRepresentable.actionIdentifier.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_261CFD1C4();
}

uint64_t static TypedAppEnumRepresentable.enumIdentifier.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_261CFD1C4();
}

uint64_t TypedAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_261CFEA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_261CFEA94();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t TypedAppEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_261C24568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_261C245C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_261C24640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_261C246A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFEA54();
  *a1 = result;
  return result;
}

uint64_t static TypedAppEntityRepresentation.proxy(appEntityID:)()
{
  v0 = AppEntityID.entityIdentifierString.getter();
  v4 = static TypedAppEntityRepresentation.proxy(entityIdentifierString:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static TypedAppEntityRepresentation.proxy(entityIdentifierString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypedAppEntityRepresentation(255, *(v4 + class metadata base offset for TypedAppEntityRepresentation), *(v4 + class metadata base offset for TypedAppEntityRepresentation + 8), a4);
  sub_261CFD104();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213D928](a1, a2, v4, WitnessTable);
}

uint64_t static TypedTransientAppEntityRepresentable.typeIdentifier.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_261CFD1C4();
}

uint64_t sub_261C249DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCCE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCCE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C24E74()
{
  v176 = v0;
  v175[6] = *MEMORY[0x277D85DE8];

  sub_261CFCBB4();
  v1 = sub_261B9A654(*(v0 + 104), 1);
  v3 = v2;

  v4 = sub_261B9C33C(3, v1, v3);

  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = *(v0 + 344);
    v8 = *(v0 + 312);
    v170 = *(v0 + 288);
    v172 = *(v0 + 336);
    v160 = *(v0 + 272);
    v9 = *(v0 + 200);
    v175[0] = MEMORY[0x277D84F90];
    sub_261B39FC4(0, v5, 0);
    v10 = v175[0];
    v11 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v165 = (v9 + 56);
    v168 = *(v8 + 72);
    v163 = v7;
    do
    {
      v13 = *(v0 + 320);
      v12 = *(v0 + 328);
      sub_261C26488(v11, v12, _s20CategorizedRemindersV12EditableItemOMa);
      sub_261C26488(v12, v13, _s20CategorizedRemindersV12EditableItemOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 352);
      v17 = *(v0 + 320);
      v16 = *(v0 + 328);
      v18 = *(v0 + 192);
      if (EnumCaseMultiPayload == 1)
      {
        v19 = *(v0 + 280);
        sub_261C267C4(*(v0 + 320), v19, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v20 = v10;
        v21 = *(v172 + 48);
        v22 = *(v19 + *(v170 + 20));
        *v15 = v22;
        v23 = *(v19 + *(v160 + 20));
        v24 = v22;
        v25 = [v23 date];
        sub_261CFD7C4();

        sub_261C2682C(v16, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261C2682C(v19, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v26 = &v15[v21];
        v10 = v20;
        v7 = v163;
        (*v165)(v26, 0, 1, v18);
      }

      else
      {
        v27 = *(v0 + 296);
        sub_261C2682C(*(v0 + 328), _s20CategorizedRemindersV12EditableItemOMa);
        sub_261C267C4(v17, v27, _s20CategorizedRemindersV15FetchedReminderVMa);
        v28 = *(v172 + 48);
        v29 = *(v27 + *(v170 + 20));
        sub_261C2682C(v27, _s20CategorizedRemindersV15FetchedReminderVMa);
        *v15 = v29;
        (*v165)(&v15[v28], 1, 1, v18);
      }

      v175[0] = v10;
      v31 = *(v10 + 16);
      v30 = *(v10 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_261B39FC4((v30 > 1), v31 + 1, 1);
        v10 = v175[0];
      }

      v32 = *(v0 + 352);
      *(v10 + 16) = v31 + 1;
      sub_261BB4448(v32, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, &qword_27FEDA620, &qword_261D031E0);
      v11 += v168;
      --v5;
    }

    while (v5);

    v33 = v10;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 344);
  v151 = *(v0 + 336);
  v35 = *(v0 + 200);
  v147 = *(v0 + 168);
  v154 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v154 setSaveIsNoopIfNoChangedKeys_];
  v36 = 0;
  v144 = v34;
  v145 = v33;
  v37 = *(v33 + 16);
  v152 = (v34 + 48);
  v153 = (v34 + 56);
  v169 = (v35 + 48);
  v149 = (v35 + 16);
  v150 = (v35 + 32);
  v148 = (v35 + 8);
  v143 = v35;
  *(&v38 + 1) = 3;
  *&v38 = 136315138;
  v142 = v38;
  v39 = v6;
  v146 = v37;
  if (!v37)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v36 >= *(v145 + 16))
  {
    __break(1u);
LABEL_79:
    __break(1u);
  }

  sub_261AFB668(v145 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v36, *(v0 + 360), &qword_27FEDA620, &qword_261D031E0);
  v40 = 0;
  for (i = v36 + 1; ; i = v37)
  {
    v42 = *(v0 + 360);
    v43 = *(v0 + 368);
    v44 = *(v0 + 336);
    (*v153)(v42, v40, 1, v44);
    sub_261BB4448(v42, v43, &qword_27FEDCCF8, &qword_261D0C3D8);
    if ((*v152)(v43, 1, v44) == 1)
    {
      break;
    }

    v164 = v39;
    v45 = *(v0 + 368);
    v46 = *v45;
    sub_261BB4448(v45 + *(v151 + 48), *(v0 + 264), &qword_27FEDAB68, &unk_261D11C90);
    if (qword_27FED9B88 != -1)
    {
      swift_once();
    }

    v47 = sub_261CFF7A4();
    __swift_project_value_buffer(v47, qword_27FEDCCE0);
    v48 = v46;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v49 = sub_261CFF784();
    v50 = sub_261CFFE84();

    v173 = v48;
    v156 = i;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138543618;
      v53 = [v173 objectID];
      *(v51 + 4) = v53;
      *v52 = v53;
      *(v51 + 12) = 1026;
      sub_261CFCBB4();
      *(v51 + 14) = *(v0 + 419);

      _os_log_impl(&dword_261AE2000, v49, v50, "[CompleteReminderAppIntent] Complete reminder with id: %{public}@, completeSubtasks: %{BOOL,public}d", v51, 0x12u);
      sub_261AE6A40(v52, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v52, -1, -1);
      v54 = v51;
      v48 = v173;
      MEMORY[0x26671D560](v54, -1, -1);
    }

    else
    {
    }

    v55 = *(v0 + 256);
    v56 = *(v0 + 192);
    sub_261AFB668(*(v0 + 264), v55, &qword_27FEDAB68, &unk_261D11C90);
    v161 = *v169;
    if ((*v169)(v55, 1, v56) == 1)
    {
      sub_261AE6A40(*(v0 + 256), &qword_27FEDAB68, &unk_261D11C90);
    }

    else
    {
      v58 = *(v0 + 232);
      v57 = *(v0 + 240);
      v59 = *(v0 + 192);
      (*v150)(v57, *(v0 + 256), v59);
      (*v149)(v58, v57, v59);
      v60 = sub_261CFF784();
      v61 = sub_261CFFE84();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 232);
      v64 = *(v0 + 240);
      v65 = *(v0 + 192);
      if (v62)
      {
        v66 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v175[0] = v171;
        *v66 = v142;
        sub_261C2677C(&qword_27FEDA198, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v67 = sub_261D005F4();
        v69 = v68;
        v70 = *v148;
        (*v148)(v63, v65);
        v71 = sub_261B879C8(v67, v69, v175);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_261AE2000, v60, v61, "[CompleteReminderAppIntent] afterDateForAdvancingForwardRecurrence: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v171);
        MEMORY[0x26671D560](v171, -1, -1);
        v72 = v66;
        v48 = v173;
        MEMORY[0x26671D560](v72, -1, -1);

        v70(v64, v65);
      }

      else
      {

        v73 = *v148;
        (*v148)(v63, v65);
        v73(v64, v65);
      }
    }

    v74 = MEMORY[0x277D84F90];
    sub_261CFCBB4();
    if (*(v0 + 416) == 1)
    {
      v75 = [v48 subtaskContext];
      if (v75)
      {
        v76 = v75;
        v77 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
        *(v0 + 128) = 0;
        v78 = [v76 fetchRemindersWithFetchOptions:v77 error:v0 + 128];

        v79 = *(v0 + 128);
        if (!v78)
        {
          v140 = *(v0 + 264);
          v141 = v79;
          sub_261CFD654();

          swift_willThrow();
          sub_261AE6A40(v140, &qword_27FEDAB68, &unk_261D11C90);

LABEL_69:

LABEL_70:

          v134 = *(v0 + 8);
          goto LABEL_71;
        }

        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        sub_261CFFC64();
        v80 = v79;
      }
    }

    v81 = [v48 parentReminder];
    if (v81)
    {
      v82 = v81;
      v83 = v74;
      v84 = v154;
      v158 = [v154 updateReminder_];
    }

    else
    {
      v83 = v74;
      v158 = 0;
      v84 = v154;
    }

    sub_261CFDFF4();
    swift_allocObject();
    sub_261CFDFD4();
    sub_261CFE144();
    memset(v175, 0, 40);
    v85 = v173;
    v166 = v84;
    sub_261CFE134();
    sub_261CFCBB4();
    v86 = v83;
    sub_261CFCDA4();
    sub_261CFE114();

    sub_261CFCBB4();
    v157 = v85;
    if (*(v0 + 418) == 1)
    {
      v87 = sub_261CFDFE4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_261D030F0;
      *(inited + 32) = [v85 objectID];
      if ((v87 & 0xC000000000000001) != 0)
      {
        if (v87 >= 0)
        {
          v87 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v89 = sub_261D00274();
        v87 = sub_261B558DC(v87, v89);
      }

      v90 = sub_261B55ABC(inited, v87);
      swift_setDeallocating();
      swift_arrayDestroy();
      v91 = v166;
      sub_261C26508(v90, v91);
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    v94 = *(v0 + 248);
    v95 = *(v0 + 192);
    sub_261AFB668(*(v0 + 264), v94, &qword_27FEDAB68, &unk_261D11C90);
    v96 = v161(v94, 1, v95);
    v97 = *(v0 + 248);
    if (v96 == 1)
    {
      sub_261AE6A40(v97, &qword_27FEDAB68, &unk_261D11C90);
    }

    else
    {
      v99 = *(v0 + 216);
      v98 = *(v0 + 224);
      v100 = *(v0 + 192);
      v101 = *(v143 + 32);
      v101(v98, v97, v100);
      (*(v143 + 16))(v99, v98, v100);
      v102 = (*(v143 + 80) + 16) & ~*(v143 + 80);
      v103 = swift_allocObject();
      v104 = v103 + v102;
      v105 = MEMORY[0x277D84F90];
      v101(v104, v99, v100);
      *(v0 + 48) = sub_261B5765C;
      *(v0 + 56) = v103;
      v86 = v105;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_261B556E0;
      *(v0 + 40) = &block_descriptor_1;
      v106 = _Block_copy((v0 + 16));

      _Block_release(v106);
      (*(v143 + 8))(v98, v100);
    }

    v107 = *(v0 + 160);
    v108 = sub_261CFDF94();
    v109 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v109 - 8) + 56))(v107, 1, 1, v109);
    v174 = v158;
    v110 = [v108 listChangeItem];
    if (!v110 || (v111 = v110, v112 = [v110 storage], v111, !v112))
    {
      v131 = *(v0 + 264);
      v132 = *(v0 + 160);

      sub_261B01D70();
      swift_allocError();
      *v133 = 11;
      swift_willThrow();

      sub_261AE6A40(v132, &qword_27FEDA108, &unk_261D020C0);
      sub_261AE6A40(v131, &qword_27FEDAB68, &unk_261D11C90);
      goto LABEL_69;
    }

    v113 = [v108 storage];
    v114 = [v108 accountCapabilities];
    if (v158)
    {
      v155 = [v174 storage];
    }

    else
    {
      v155 = 0;
    }

    v162 = v112;
    v159 = v108;
    v167 = v114;
    if (!v93)
    {
      v121 = v113;
      v120 = 0;
      goto LABEL_62;
    }

    if (v93 >> 62)
    {
      v115 = sub_261D00274();
      if (v115)
      {
LABEL_51:
        v175[0] = v86;
        sub_261D003A4();
        if (v115 < 0)
        {
          goto LABEL_79;
        }

        v116 = 0;
        do
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v117 = MEMORY[0x26671CA10](v116, v93);
          }

          else
          {
            v117 = *(v93 + 8 * v116 + 32);
          }

          v118 = v117;
          ++v116;
          v119 = [v117 storage];

          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v115 != v116);

        v120 = v175[0];
        goto LABEL_61;
      }
    }

    else
    {
      v115 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115)
      {
        goto LABEL_51;
      }
    }

    v120 = v86;
LABEL_61:
    v121 = v113;
LABEL_62:
    v39 = v164;
    v123 = *(v0 + 176);
    v122 = *(v0 + 184);
    v124 = *(v0 + 152);
    v125 = *(v0 + 160);
    sub_261AFB668(v125, v124, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v121, v162, v167, v155, v120, v124, v122);

    sub_261AE6A40(v125, &qword_27FEDA108, &unk_261D020C0);
    sub_261C26488(v122, v123, type metadata accessor for ReminderEntity);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_261B41560(0, v164[2] + 1, 1, v164);
    }

    v37 = v146;
    v36 = v156;
    v127 = v39[2];
    v126 = v39[3];
    if (v127 >= v126 >> 1)
    {
      v39 = sub_261B41560((v126 > 1), v127 + 1, 1, v39);
    }

    v128 = *(v0 + 264);
    v130 = *(v0 + 176);
    v129 = *(v0 + 184);

    sub_261C2682C(v129, type metadata accessor for ReminderEntity);
    sub_261AE6A40(v128, &qword_27FEDAB68, &unk_261D11C90);
    v39[2] = v127 + 1;
    sub_261C267C4(v130, v39 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v127, type metadata accessor for ReminderEntity);
    if (v156 != v146)
    {
      goto LABEL_12;
    }

LABEL_14:
    v40 = 1;
  }

  *(v0 + 112) = 0;
  v136 = [v154 saveSynchronouslyWithError_];
  v137 = *(v0 + 112);
  if (!v136)
  {
    v139 = v137;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_70;
  }

  *(v0 + 120) = v39;
  v138 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v134 = *(v0 + 8);
LABEL_71:

  return v134();
}

uint64_t sub_261C263DC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C26488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

void sub_261C26508(uint64_t a1, void *a2)
{
  v2 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_261D00234();
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    sub_261B3B918();
    sub_261CFFDA4();
    v2 = v18;
    v3 = v19;
    v5 = v20;
    v4 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_261CFD104();
    v4 = 0;
  }

LABEL_7:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_261D002A4() || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), swift_dynamicCast(), v14 = v17, v4 = v10, v6 = v11, !v17))
      {
LABEL_21:
        sub_261B57B30(v2);
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [a2 _trackedReminderChangeItemForObjectID_];

    v10 = v4;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x26671C310]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_261C2677C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C267C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261C268C0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C26A28(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C26BA0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t MoveRemindersToListAppIntentRepresentation.targetList.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToListAppIntentRepresentation.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t MoveRemindersToListAppIntentRepresentation.init(reminders:position:targetList:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD08, &qword_261D0C408);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

unint64_t sub_261C26E30(uint64_t a1)
{
  result = sub_261C26E58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C26E58()
{
  result = qword_27FEDCD10;
  if (!qword_27FEDCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD10);
  }

  return result;
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.parentReminder.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*MoveRemindersToParentReminderAppIntentRepresentation.parentReminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t MoveRemindersToParentReminderAppIntentRepresentation.init(reminders:position:parentReminder:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD00, &qword_261D0C400);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD08, &qword_261D0C408);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
}

unint64_t sub_261C27334(uint64_t a1)
{
  result = sub_261C2735C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2735C()
{
  result = qword_27FEDCD20;
  if (!qword_27FEDCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD20);
  }

  return result;
}

unint64_t sub_261C273F4()
{
  result = qword_27FEDCD28;
  if (!qword_27FEDCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD28);
  }

  return result;
}

uint64_t sub_261C2744C(uint64_t a1, unsigned __int8 a2)
{
  sub_261CFFB14();
}

uint64_t sub_261C275DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCD30);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCD30);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::SortingStyleRepresentation_optional __swiftcall SortingStyleRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SortingStyleRepresentation.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x637341656C746974;
    if (v1 != 8)
    {
      v6 = 0x736544656C746974;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    v7 = 0xD000000000000014;
    if (v1 != 5)
    {
      v7 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x746C7561666564;
    v3 = 0xD000000000000016;
    v4 = 0xD000000000000016;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C61756E616DLL;
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
}

uint64_t sub_261C27868()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C2744C(v3, v1);
  return sub_261D006F4();
}

uint64_t sub_261C278CC(uint64_t a1)
{
  v2 = *v1;
  sub_261D006C4();
  sub_261C2744C(v4, v2);
  return sub_261D006F4();
}

uint64_t sub_261C2791C@<X0>(uint64_t *a1@<X8>)
{
  result = SortingStyleRepresentation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261C27988(uint64_t a1)
{
  v2 = sub_261C27F64();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C279C4(uint64_t a1)
{
  v2 = sub_261C27F64();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C27A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C27E38();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C27A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C27F64();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C27AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C27E38();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::SortingStyleRepresentation_optional __swiftcall SortingStyleRepresentation.init(appEnum:)(RemindersAppIntents::ListEntity::SortingStyle appEnum)
{
  v2 = v1;
  v3 = *appEnum;
  if (v3 > 4)
  {
    v12 = 0x8000000261D141D0;
    v13 = 0xEE00676E69646E65;
    v14 = 0x637341656C746974;
    if (v3 != 8)
    {
      v14 = 0x736544656C746974;
      v13 = 0xEF676E69646E6563;
    }

    if (v3 == 7)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0xD000000000000014;
    if (v3 == 5)
    {
      v16 = 0x8000000261D14190;
    }

    else
    {
      v15 = 0xD000000000000017;
      v16 = 0x8000000261D141B0;
    }

    if (*appEnum <= 6u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x746C7561666564;
    v6 = 0xD000000000000016;
    v7 = 0x8000000261D14130;
    v8 = 0xD000000000000016;
    v9 = 0x8000000261D14150;
    if (v3 != 3)
    {
      v8 = 0xD000000000000013;
      v9 = 0x8000000261D14170;
    }

    if (v3 != 2)
    {
      v6 = v8;
      v7 = v9;
    }

    if (*appEnum)
    {
      v5 = 0x6C61756E616DLL;
      v4 = 0xE600000000000000;
    }

    if (*appEnum <= 1u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v7;
    }
  }

  result.value = SortingStyleRepresentation.init(rawValue:)(*&v10).value;
  if (v22 == 10)
  {
    if (qword_27FED9B90 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDCD30);
    v19 = sub_261CFF784();
    v20 = sub_261CFFE64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261AE2000, v19, v20, "Unable to convert SortingStyle to representation", v21, 2u);
      MEMORY[0x26671D560](v21, -1, -1);
    }
  }

  *v2 = v22;
  return result;
}

unint64_t sub_261C27D88()
{
  result = qword_27FEDCD48;
  if (!qword_27FEDCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD48);
  }

  return result;
}

unint64_t sub_261C27DE0()
{
  result = qword_27FEDCD50;
  if (!qword_27FEDCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD50);
  }

  return result;
}

unint64_t sub_261C27E38()
{
  result = qword_27FEDCD58;
  if (!qword_27FEDCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD58);
  }

  return result;
}

unint64_t sub_261C27E90()
{
  result = qword_27FEDCD60;
  if (!qword_27FEDCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD60);
  }

  return result;
}

unint64_t sub_261C27EE8()
{
  result = qword_27FEDCD68;
  if (!qword_27FEDCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD68);
  }

  return result;
}

unint64_t sub_261C27F3C(uint64_t a1)
{
  result = sub_261C27F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C27F64()
{
  result = qword_27FEDCD70;
  if (!qword_27FEDCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD70);
  }

  return result;
}

unint64_t sub_261C27FBC()
{
  result = qword_27FEDCD78;
  if (!qword_27FEDCD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCD80, &qword_261D0C670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD78);
  }

  return result;
}

unint64_t sub_261C28020()
{
  result = qword_27FEDCD88;
  if (!qword_27FEDCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD88);
  }

  return result;
}

unint64_t sub_261C28078()
{
  result = qword_27FEDCD90;
  if (!qword_27FEDCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD90);
  }

  return result;
}

unint64_t sub_261C280D0()
{
  result = qword_27FEDCD98;
  if (!qword_27FEDCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCD98);
  }

  return result;
}

uint64_t sub_261C2813C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCDA0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCDA0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::SmartListType_optional __swiftcall SmartListType.init(representation:)(RemindersAppIntents::SmartListTypeRepresentation representation)
{
  v2 = v1;
  v3 = *representation;
  v4 = 0xE500000000000000;
  v5 = 0x7961646F74;
  v6 = 0xE700000000000000;
  v7 = 0x64656767616C66;
  v8 = 0xE800000000000000;
  v9 = 0x64656E6769737361;
  if (v3 != 4)
  {
    v9 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (v3 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x656C756465686373;
  v11 = 0xE900000000000064;
  if (v3 != 1)
  {
    v10 = 7105633;
    v11 = 0xE300000000000000;
  }

  if (*representation)
  {
    v5 = v10;
    v4 = v11;
  }

  if (*representation <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v3 <= 2)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  result.value = SmartListType.init(rawValue:)(*&v12).value;
  if (v19 == 6)
  {
    if (qword_27FED9B98 != -1)
    {
      swift_once();
    }

    v15 = sub_261CFF7A4();
    __swift_project_value_buffer(v15, qword_27FEDCDA0);
    v16 = sub_261CFF784();
    v17 = sub_261CFFE64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_261AE2000, v16, v17, "Unable to convert representation to SmartListType", v18, 2u);
      MEMORY[0x26671D560](v18, -1, -1);
    }
  }

  *v2 = v19;
  return result;
}

unint64_t sub_261C283EC()
{
  result = qword_27FEDCDB8;
  if (!qword_27FEDCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDB8);
  }

  return result;
}

uint64_t sub_261C28440()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCDC0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCDC0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::AddOrRemoveTagsOperationRepresentation_optional __swiftcall AddOrRemoveTagsOperationRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AddOrRemoveTagsOperationRepresentation.rawValue.getter()
{
  if (*v0)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_261C285A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65766F6D6572;
  }

  else
  {
    v3 = 6579297;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x65766F6D6572;
  }

  else
  {
    v5 = 6579297;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261C28644()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C286BC(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C28720(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C28794@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_261C287F4(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 0x65766F6D6572;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261C2886C(uint64_t a1)
{
  v2 = sub_261C28D88();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C288A8(uint64_t a1)
{
  v2 = sub_261C28D88();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C288E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C28C08();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C28930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C28D88();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C28994(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C28C08();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::AddOrRemoveTagsOperationRepresentation_optional __swiftcall AddOrRemoveTagsOperationRepresentation.init(appEnum:)(RemindersAppIntents::AddOrRemoveTagsAppIntent::Operation appEnum)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (qword_27FED9BA0 != -1)
      {
        swift_once();
      }

      v6 = sub_261CFF7A4();
      __swift_project_value_buffer(v6, qword_27FEDCDC0);
      v7 = sub_261CFF784();
      v8 = sub_261CFFE64();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "Unable to convert ListLayout to representation", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261C28B58()
{
  result = qword_27FEDCDD8;
  if (!qword_27FEDCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDD8);
  }

  return result;
}

unint64_t sub_261C28BB0()
{
  result = qword_27FEDCDE0;
  if (!qword_27FEDCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDE0);
  }

  return result;
}

unint64_t sub_261C28C08()
{
  result = qword_27FEDCDE8;
  if (!qword_27FEDCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDE8);
  }

  return result;
}

unint64_t sub_261C28C60()
{
  result = qword_27FEDCDF0;
  if (!qword_27FEDCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDF0);
  }

  return result;
}

unint64_t sub_261C28CB8()
{
  result = qword_27FEDCDF8;
  if (!qword_27FEDCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCDF8);
  }

  return result;
}

unint64_t sub_261C28D0C()
{
  result = qword_27FEDCE00;
  if (!qword_27FEDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE00);
  }

  return result;
}

unint64_t sub_261C28D60(uint64_t a1)
{
  result = sub_261C28D88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C28D88()
{
  result = qword_27FEDCE08;
  if (!qword_27FEDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE08);
  }

  return result;
}

unint64_t sub_261C28DE0()
{
  result = qword_27FEDCE10;
  if (!qword_27FEDCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCE18, &qword_261D0C930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE10);
  }

  return result;
}

unint64_t sub_261C28E44()
{
  result = qword_27FEDCE20;
  if (!qword_27FEDCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE20);
  }

  return result;
}

unint64_t sub_261C28E9C()
{
  result = qword_27FEDCE28;
  if (!qword_27FEDCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE28);
  }

  return result;
}

unint64_t sub_261C28EF4()
{
  result = qword_27FEDCE30;
  if (!qword_27FEDCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE30);
  }

  return result;
}

unint64_t sub_261C28F58()
{
  result = qword_27FEDCE38;
  if (!qword_27FEDCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE38);
  }

  return result;
}

uint64_t GroupEntityRepresentation.name.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

uint64_t GroupEntityRepresentation.showsCompleted.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

double sub_261C29058@<D0>(_OWORD *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_261C290B0(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t GroupEntityRepresentation.name.setter(uint64_t a1, uint64_t a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCE40);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C291EC@<X0>(_BYTE *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a2 = v4;
  return result;
}

uint64_t sub_261C29244(char *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t GroupEntityRepresentation.showsCompleted.setter(char a1)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.showsCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCE48);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C29388(void *a1)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v2;
}

uint64_t (*GroupEntityRepresentation.childrenLists.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCE58);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t sub_261C29474@<X0>(void *a3@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a3 = v5;
  return result;
}

uint64_t sub_261C294C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C29528(uint64_t a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*GroupEntityRepresentation.lists.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDCE50);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t GroupEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = qword_27FEDCE40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDCE48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCBD0, &qword_261D0DBE0);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = qword_27FEDCE58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCE60, &qword_261D0CAB0);
  swift_allocObject();
  *(v1 + v12) = sub_261CFEBB4();
  v13 = qword_27FEDCE50;
  swift_allocObject();
  *(v1 + v13) = sub_261CFEBB4();
  v14 = *(v4 + 16);
  v14(v9, a1, v3);
  v14(v7, v9, v3);
  v15 = sub_261CFEA94();
  v16 = *(v4 + 8);
  v16(a1, v3);
  v16(v9, v3);
  return v15;
}

uint64_t sub_261C29880()
{
}

uint64_t GroupEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t GroupEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDCE68;
  if (!qword_27FEDCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C29A88(unsigned __int8 a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C29B90(uint64_t a1, unsigned __int8 a2)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t SmartListTypeRepresentation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x64656767616C66;
  v4 = 0x64656E6769737361;
  if (v1 != 4)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 1)
  {
    v5 = 7105633;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

RemindersAppIntents::SmartListTypeRepresentation_optional __swiftcall SmartListTypeRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261C29E38(uint64_t a1)
{
  v2 = sub_261C283EC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C29E74(uint64_t a1)
{
  v2 = sub_261C283EC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C29EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2A06C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C29EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C283EC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C29F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2A06C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_261C29FBC()
{
  result = qword_27FEDCE78;
  if (!qword_27FEDCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE78);
  }

  return result;
}

unint64_t sub_261C2A014()
{
  result = qword_27FEDCE80;
  if (!qword_27FEDCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE80);
  }

  return result;
}

unint64_t sub_261C2A06C()
{
  result = qword_27FEDCE88;
  if (!qword_27FEDCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE88);
  }

  return result;
}

unint64_t sub_261C2A0C4()
{
  result = qword_27FEDCE90;
  if (!qword_27FEDCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE90);
  }

  return result;
}

unint64_t sub_261C2A11C()
{
  result = qword_27FEDCE98;
  if (!qword_27FEDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCE98);
  }

  return result;
}

unint64_t sub_261C2A174(uint64_t a1)
{
  result = sub_261C283EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2A1A0()
{
  result = qword_27FEDCEA0;
  if (!qword_27FEDCEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCEA8, &qword_261D0CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEA0);
  }

  return result;
}

unint64_t sub_261C2A204()
{
  result = qword_27FEDCEB0;
  if (!qword_27FEDCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEB0);
  }

  return result;
}

unint64_t sub_261C2A25C()
{
  result = qword_27FEDCEB8;
  if (!qword_27FEDCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEB8);
  }

  return result;
}

unint64_t sub_261C2A2B4()
{
  result = qword_27FEDCEC0;
  if (!qword_27FEDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCEC0);
  }

  return result;
}

uint64_t CreateReminderAppIntentRepresentation.init(title:note:isAllDay:dueDate:earlyAlert:recurrence:spatialEventTrigger:flags:priorityLevel:targetList:targetSection:parentReminder:tags:urls:contactPerson:assignedPerson:subtasks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v129 = a8;
  v130 = a7;
  v128 = a6;
  v131 = a5;
  v110 = a4;
  v132 = a3;
  v109 = a2;
  v108 = a1;
  v119 = a18;
  v120 = a19;
  v117 = a16;
  v118 = a17;
  v115 = a14;
  v116 = a15;
  v114 = a13;
  v113 = a12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v102 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v127 = v78 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v126 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v125 = v78 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v78 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = v78 - v38;
  v111 = *a10;
  v112 = *a11;
  v133 = 0;
  v134 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  *a9 = sub_261CFEC04();
  v133 = 0;
  v134 = 0;
  swift_allocObject();
  a9[1] = sub_261CFEC04();
  LOBYTE(v133) = 2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  v107 = sub_261CFEC04();
  v85 = sub_261CFD4E4();
  v40 = *(v85 - 8);
  v84 = *(v40 + 56);
  v86 = v40 + 56;
  v84(v39, 1, 1, v85);
  v122 = v39;
  v123 = v37;
  sub_261AFB668(v39, v37, &qword_27FEDA160, &qword_261D02220);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  swift_allocObject();
  v41 = sub_261CFEC04();
  sub_261AE6A40(v39, &qword_27FEDA160, &qword_261D02220);
  a9[3] = v41;
  v133 = 0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  swift_allocObject();
  v105 = sub_261CFEC04();
  v82 = sub_261CFDA54();
  v42 = *(v82 - 8);
  v81 = *(v42 + 56);
  v83 = v42 + 56;
  v81(v33, 1, 1, v82);
  v121 = v33;
  v79 = v31;
  sub_261AFB668(v33, v31, &qword_27FEDA9A0, &unk_261D034A0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  swift_allocObject();
  v43 = sub_261CFEC04();
  sub_261AE6A40(v33, &qword_27FEDA9A0, &unk_261D034A0);
  a9[5] = v43;
  v133 = 0;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  swift_allocObject();
  v103 = sub_261CFEC04();
  LOBYTE(v133) = 3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  swift_allocObject();
  v101 = sub_261CFEC04();
  LOBYTE(v133) = 4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  swift_allocObject();
  v97 = sub_261CFEC04();
  v133 = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  v98 = sub_261CFEC04();
  v133 = 0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  v99 = sub_261CFEC04();
  v133 = 0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  swift_allocObject();
  v100 = sub_261CFEC04();
  v133 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  swift_allocObject();
  v44 = sub_261CFEC04();
  v78[0] = a9;
  a9[12] = v44;
  v133 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  swift_allocObject();
  v90 = sub_261CFEC04();
  a9[13] = v90;
  v45 = sub_261CFC954();
  v46 = *(*(v45 - 8) + 56);
  v47 = v125;
  v46(v125, 1, 1, v45);
  v48 = v126;
  sub_261AFB668(v47, v126, &unk_27FEDB0B0, &unk_261D035D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  swift_allocObject();
  v49 = sub_261CFEC04();
  v89 = v49;
  v50 = v47;
  sub_261AE6A40(v47, &unk_27FEDB0B0, &unk_261D035D0);
  v51 = v78[0];
  *(v78[0] + 112) = v49;
  v46(v50, 1, 1, v45);
  sub_261AFB668(v50, v48, &unk_27FEDB0B0, &unk_261D035D0);
  swift_allocObject();
  v52 = sub_261CFEC04();
  v88 = v52;
  sub_261AE6A40(v50, &unk_27FEDB0B0, &unk_261D035D0);
  v51[15] = v52;
  v133 = 0;
  swift_allocObject();
  v87 = sub_261CFEC04();
  v51[16] = v87;
  v53 = sub_261CFD524();
  v54 = v127;
  (*(*(v53 - 8) + 56))(v127, 1, 1, v53);
  v55 = v102;
  sub_261AFB668(v54, v102, &qword_27FEDA9A8, &qword_261D034B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  swift_allocObject();
  v78[1] = sub_261CFEC04();
  sub_261AE6A40(v54, &qword_27FEDA9A8, &qword_261D034B0);
  v56 = v122;
  v84(v122, 1, 1, v85);
  sub_261AFB668(v56, v123, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v85 = sub_261CFEC04();
  sub_261AE6A40(v56, &qword_27FEDA160, &qword_261D02220);
  v57 = v121;
  v81(v121, 1, 1, v82);
  v58 = v79;
  sub_261AFB668(v57, v79, &qword_27FEDA9A0, &unk_261D034A0);
  swift_allocObject();
  v86 = sub_261CFEC04();
  sub_261AE6A40(v57, &qword_27FEDA9A0, &unk_261D034A0);
  v133 = v108;
  v134 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF28, &qword_261D0CDA8);
  swift_allocObject();
  v51[17] = sub_261CFEC04();
  v59 = v127;
  sub_261AFB668(v132, v127, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v59, v55, &qword_27FEDA9A8, &qword_261D034B0);
  swift_allocObject();
  v60 = sub_261CFEC04();
  sub_261AE6A40(v59, &qword_27FEDA9A8, &qword_261D034B0);

  v51[18] = v60;
  LOBYTE(v133) = v110;
  swift_allocObject();
  v61 = sub_261CFEC04();

  v51[2] = v61;
  v62 = v122;
  sub_261AFB668(v131, v122, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v62, v123, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v63 = sub_261CFEC04();
  sub_261AE6A40(v62, &qword_27FEDA160, &qword_261D02220);

  v51[20] = v63;
  v133 = v128;
  swift_allocObject();
  sub_261CFCDA4();
  v64 = sub_261CFEC04();

  v51[4] = v64;
  v65 = v121;
  sub_261AFB668(v130, v121, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v65, v58, &qword_27FEDA9A0, &unk_261D034A0);
  swift_allocObject();
  v66 = sub_261CFEC04();
  sub_261AE6A40(v65, &qword_27FEDA9A0, &unk_261D034A0);

  v51[21] = v66;
  v133 = v129;
  swift_allocObject();
  sub_261CFCDA4();
  v67 = sub_261CFEC04();

  v51[6] = v67;
  LOBYTE(v133) = v111;
  swift_allocObject();
  v68 = sub_261CFEC04();

  v51[7] = v68;
  LOBYTE(v133) = v112;
  swift_allocObject();
  v69 = sub_261CFEC04();

  v51[8] = v69;
  v133 = v113;
  swift_allocObject();
  sub_261CFCDA4();
  v70 = sub_261CFEC04();

  v51[9] = v70;
  v133 = v114;
  swift_allocObject();
  sub_261CFCDA4();
  v71 = sub_261CFEC04();

  v51[10] = v71;
  v133 = v115;
  swift_allocObject();
  sub_261CFCDA4();
  v72 = sub_261CFEC04();

  v51[11] = v72;
  v133 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF30, &qword_261D0CDB0);
  swift_allocObject();
  v51[19] = sub_261CFEC04();
  v133 = v117;
  sub_261CFEC34();
  v73 = v118;
  v74 = v125;
  sub_261AFB668(v118, v125, &unk_27FEDB0B0, &unk_261D035D0);
  v75 = v126;
  sub_261AFB668(v74, v126, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v74, &unk_27FEDB0B0, &unk_261D035D0);
  v76 = v119;
  sub_261AFB668(v119, v74, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v74, v75, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFEC34();
  sub_261AE6A40(v74, &unk_27FEDB0B0, &unk_261D035D0);
  v133 = v120;
  sub_261CFEC34();

  sub_261AE6A40(v76, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v73, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v130, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v131, &qword_27FEDA160, &qword_261D02220);
  return sub_261AE6A40(v132, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t CreateReminderAppIntentRepresentation.init(name:notes:isAllDay:dueDateComponents:earlyAlert:recurrenceRule:spatialEventTrigger:flags:priorityLevel:targetList:targetSection:parentReminder:hashtags:urls:contactPerson:assignedPerson:subtasks:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)(char *, uint64_t, uint64_t, uint64_t)@<X8>, uint64_t a10, unsigned __int8 *a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v154 = a8;
  v150 = a7;
  v145 = a6;
  LODWORD(v128) = a5;
  v140 = a4;
  v136 = a3;
  v139 = a2;
  v141 = a1;
  v133 = a9;
  v152 = a19;
  v153 = a18;
  v151 = a15;
  v149 = a14;
  v132 = a20;
  v127 = a16;
  v131 = a17;
  v147 = a10;
  v148 = a13;
  v20 = sub_261CFD564();
  MEMORY[0x28223BE20](v20 - 8);
  v89 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v135 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v134 = v86 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v138 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v137 = v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v39;
  MEMORY[0x28223BE20](v37);
  v41 = v86 - v40;
  LODWORD(v129) = *a11;
  LODWORD(v130) = *a12;
  v156 = 0;
  v157 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  v123 = sub_261CFEC04();
  v156 = 0;
  v157 = 0;
  v96 = v42;
  swift_allocObject();
  v122 = sub_261CFEC04();
  LOBYTE(v156) = 2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  v121 = sub_261CFEC04();
  v125 = sub_261CFD4E4();
  v43 = *(v125 - 8);
  v124 = *(v43 + 56);
  v126 = v43 + 56;
  v124(v41, 1, 1, v125);
  v143 = v41;
  sub_261AFB668(v41, v39, &qword_27FEDA160, &qword_261D02220);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED0, &qword_261D0CD60);
  swift_allocObject();
  v120 = sub_261CFEC04();
  sub_261AE6A40(v41, &qword_27FEDA160, &qword_261D02220);
  v156 = 0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCED8, &qword_261D0CD68);
  swift_allocObject();
  v118 = sub_261CFEC04();
  v92 = sub_261CFDA54();
  v44 = *(v92 - 8);
  v91 = *(v44 + 56);
  v93 = v44 + 56;
  v91(v35, 1, 1, v92);
  v142 = v35;
  v146 = v33;
  sub_261AFB668(v35, v33, &qword_27FEDA9A0, &unk_261D034A0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE0, &qword_261D0CD70);
  swift_allocObject();
  v117 = sub_261CFEC04();
  sub_261AE6A40(v35, &qword_27FEDA9A0, &unk_261D034A0);
  v156 = 0;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEE8, &qword_261D0CD78);
  swift_allocObject();
  v116 = sub_261CFEC04();
  LOBYTE(v156) = 3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF0, &unk_261D0CD80);
  swift_allocObject();
  v114 = sub_261CFEC04();
  LOBYTE(v156) = 4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEF8, &unk_261D0DDE0);
  swift_allocObject();
  v108 = sub_261CFEC04();
  v156 = 0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  v110 = sub_261CFEC04();
  v156 = 0;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  v111 = sub_261CFEC04();
  v156 = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCD18, &qword_261D0C4B0);
  swift_allocObject();
  v112 = sub_261CFEC04();
  v156 = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF08, &qword_261D0DD10);
  swift_allocObject();
  v113 = sub_261CFEC04();
  v156 = 0;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF10, &unk_261D0CD90);
  swift_allocObject();
  v109 = sub_261CFEC04();
  v46 = sub_261CFC954();
  v47 = *(*(v46 - 8) + 56);
  v48 = v137;
  v47(v137, 1, 1, v46);
  v49 = v138;
  sub_261AFB668(v48, v138, &unk_27FEDB0B0, &unk_261D035D0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF18, &unk_261D0DDD0);
  swift_allocObject();
  v103 = sub_261CFEC04();
  sub_261AE6A40(v48, &unk_27FEDB0B0, &unk_261D035D0);
  v47(v48, 1, 1, v46);
  sub_261AFB668(v48, v49, &unk_27FEDB0B0, &unk_261D035D0);
  v97 = v50;
  swift_allocObject();
  v107 = sub_261CFEC04();
  sub_261AE6A40(v48, &unk_27FEDB0B0, &unk_261D035D0);
  v156 = 0;
  v94 = v45;
  swift_allocObject();
  v106 = sub_261CFEC04();
  v51 = sub_261CFD524();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v134;
  v88 = v51;
  v87 = v53;
  v86[1] = v52 + 56;
  (v53)(v134, 1, 1);
  sub_261AFB668(v54, v135, &qword_27FEDA9A8, &qword_261D034B0);
  v86[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF20, &qword_261D0CDA0);
  swift_allocObject();
  v155 = sub_261CFEC04();
  sub_261AE6A40(v54, &qword_27FEDA9A8, &qword_261D034B0);
  v55 = v143;
  v124(v143, 1, 1, v125);
  v56 = v144;
  sub_261AFB668(v55, v144, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v126 = sub_261CFEC04();
  sub_261AE6A40(v55, &qword_27FEDA160, &qword_261D02220);
  v57 = v142;
  v91(v142, 1, 1, v92);
  v58 = v146;
  sub_261AFB668(v57, v146, &qword_27FEDA9A0, &unk_261D034A0);
  swift_allocObject();
  v125 = sub_261CFEC04();
  sub_261AE6A40(v57, &qword_27FEDA9A0, &unk_261D034A0);
  v156 = v141;
  v157 = v139;
  swift_allocObject();
  sub_261CFD104();
  v124 = sub_261CFEC04();

  v156 = v136;
  v157 = v140;
  v59 = v127;
  swift_allocObject();
  sub_261CFD104();
  v123 = sub_261CFEC04();

  LOBYTE(v156) = v128;
  swift_allocObject();
  v128 = sub_261CFEC04();

  sub_261AFB668(v145, v55, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v55, v56, &qword_27FEDA160, &qword_261D02220);
  swift_allocObject();
  v122 = sub_261CFEC04();
  sub_261AE6A40(v55, &qword_27FEDA160, &qword_261D02220);

  v156 = v150;
  swift_allocObject();
  sub_261CFCDA4();
  v121 = sub_261CFEC04();

  sub_261AFB668(v154, v57, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v57, v58, &qword_27FEDA9A0, &unk_261D034A0);
  swift_allocObject();
  v120 = sub_261CFEC04();
  sub_261AE6A40(v57, &qword_27FEDA9A0, &unk_261D034A0);

  v156 = v147;
  swift_allocObject();
  sub_261CFCDA4();
  v119 = sub_261CFEC04();

  LOBYTE(v156) = v129;
  swift_allocObject();
  v129 = sub_261CFEC04();

  LOBYTE(v156) = v130;
  swift_allocObject();
  v130 = sub_261CFEC04();

  v156 = v148;
  swift_allocObject();
  sub_261CFCDA4();
  v118 = sub_261CFEC04();

  v156 = v149;
  swift_allocObject();
  sub_261CFCDA4();
  v117 = sub_261CFEC04();

  v156 = v151;
  swift_allocObject();
  sub_261CFCDA4();
  v116 = sub_261CFEC04();

  v156 = v59;
  swift_allocObject();
  sub_261CFD104();
  v115 = sub_261CFEC04();

  v156 = v131;
  swift_allocObject();
  v131 = sub_261CFEC04();

  v60 = v137;
  sub_261AFB668(v153, v137, &unk_27FEDB0B0, &unk_261D035D0);
  v61 = v138;
  sub_261AFB668(v60, v138, &unk_27FEDB0B0, &unk_261D035D0);
  swift_allocObject();
  v114 = sub_261CFEC04();
  sub_261AE6A40(v60, &unk_27FEDB0B0, &unk_261D035D0);

  sub_261AFB668(v152, v60, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v60, v61, &unk_27FEDB0B0, &unk_261D035D0);
  swift_allocObject();
  v138 = sub_261CFEC04();
  sub_261AE6A40(v60, &unk_27FEDB0B0, &unk_261D035D0);

  v156 = v132;
  swift_allocObject();
  v137 = sub_261CFEC04();

  v62 = v141;
  if (!v139)
  {
    v62 = 0;
  }

  v63 = 0xE000000000000000;
  if (v139)
  {
    v63 = v139;
  }

  v156 = v62;
  v157 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF28, &qword_261D0CDA8);
  swift_allocObject();
  v141 = sub_261CFEC04();
  if (v140)
  {
    sub_261CFD554();
    v64 = v134;
    sub_261CFD534();
    v87(v64, 0, 1, v88);
    sub_261AFB668(v64, v135, &qword_27FEDA9A8, &qword_261D034B0);
    swift_allocObject();
    v65 = sub_261CFEC04();
    sub_261AE6A40(v64, &qword_27FEDA9A8, &qword_261D034B0);

    v155 = v65;
  }

  if (v59)
  {
    v66 = v59;
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v67 = sub_261B49EB8(v66);

  v156 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF30, &qword_261D0CDB0);
  swift_allocObject();
  v140 = sub_261CFEC04();
  v68 = v145;
  v69 = v143;
  sub_261AFB668(v145, v143, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v69, v144, &qword_27FEDA160, &qword_261D02220);
  v70 = v126;
  sub_261CFEC34();
  sub_261AE6A40(v69, &qword_27FEDA160, &qword_261D02220);
  v71 = v154;
  v72 = v142;
  sub_261AFB668(v154, v142, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v72, v146, &qword_27FEDA9A0, &unk_261D034A0);
  v73 = v125;
  sub_261CFEC34();

  sub_261AE6A40(v152, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v153, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v71, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v68, &qword_27FEDA160, &qword_261D02220);
  result = sub_261AE6A40(v72, &qword_27FEDA9A0, &unk_261D034A0);
  v75 = v133;
  v76 = v123;
  *v133 = v124;
  v75[1] = v76;
  v77 = v122;
  v75[2] = v128;
  v75[3] = v77;
  v78 = v120;
  v75[4] = v121;
  v75[5] = v78;
  v79 = v129;
  v75[6] = v119;
  v75[7] = v79;
  v80 = v118;
  v75[8] = v130;
  v75[9] = v80;
  v81 = v116;
  v75[10] = v117;
  v75[11] = v81;
  v82 = v131;
  v75[12] = v115;
  v75[13] = v82;
  v83 = v137;
  v84 = v138;
  v75[14] = v114;
  v75[15] = v84;
  v75[16] = v83;
  v85 = v155;
  v75[17] = v141;
  v75[18] = v85;
  v75[19] = v140;
  v75[20] = v70;
  v75[21] = v73;
  return result;
}

unint64_t sub_261C2C6A4(uint64_t a1)
{
  result = sub_261C2C6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2C6CC()
{
  result = qword_27FEDCF38;
  if (!qword_27FEDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF38);
  }

  return result;
}

uint64_t destroy for CreateReminderAppIntentRepresentation(void *a1)
{
}

uint64_t *initializeWithCopy for CreateReminderAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  v10 = a2[13];
  a1[12] = a2[12];
  a1[13] = v10;
  v11 = a2[15];
  a1[14] = a2[14];
  a1[15] = v11;
  v12 = a2[17];
  a1[16] = a2[16];
  a1[17] = v12;
  v13 = a2[19];
  a1[18] = a2[18];
  a1[19] = v13;
  v14 = a2[21];
  a1[20] = a2[20];
  a1[21] = v14;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for CreateReminderAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  a1[7] = a2[7];
  sub_261CFCDA4();

  a1[8] = a2[8];
  sub_261CFCDA4();

  a1[9] = a2[9];
  sub_261CFCDA4();

  a1[10] = a2[10];
  sub_261CFCDA4();

  a1[11] = a2[11];
  sub_261CFCDA4();

  a1[12] = a2[12];
  sub_261CFCDA4();

  a1[13] = a2[13];
  sub_261CFCDA4();

  a1[14] = a2[14];
  sub_261CFCDA4();

  a1[15] = a2[15];
  sub_261CFCDA4();

  a1[16] = a2[16];
  sub_261CFCDA4();

  a1[17] = a2[17];
  sub_261CFCDA4();

  a1[18] = a2[18];
  sub_261CFCDA4();

  a1[19] = a2[19];
  sub_261CFCDA4();

  a1[20] = a2[20];
  sub_261CFCDA4();

  a1[21] = a2[21];
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

void *assignWithTake for CreateReminderAppIntentRepresentation(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  *(a1 + 1) = a2[1];

  *(a1 + 2) = a2[2];

  *(a1 + 3) = a2[3];

  *(a1 + 4) = a2[4];

  *(a1 + 5) = a2[5];

  *(a1 + 6) = a2[6];

  *(a1 + 7) = a2[7];

  *(a1 + 8) = a2[8];

  *(a1 + 9) = a2[9];

  *(a1 + 10) = a2[10];

  return a1;
}

uint64_t getEnumTagSinglePayload for CreateReminderAppIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for CreateReminderAppIntentRepresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261C2CDCC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCF40);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCF40);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ListTypeRepresentation_optional __swiftcall ListTypeRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ListTypeRepresentation.rawValue.getter()
{
  if (*v0)
  {
    return 0x65697265636F7267;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_261C2CF44@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261C2CFE8(uint64_t a1)
{
  v2 = sub_261C2D4C0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C2D024(uint64_t a1)
{
  v2 = sub_261C2D4C0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C2D060(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2D394();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C2D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C2D4C0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C2D110(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C2D394();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::ListTypeRepresentation_optional __swiftcall ListTypeRepresentation.init(appEnum:)(RemindersAppIntents::ListEntity::ListType appEnum)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (qword_27FED9BA8 != -1)
      {
        swift_once();
      }

      v6 = sub_261CFF7A4();
      __swift_project_value_buffer(v6, qword_27FEDCF40);
      v7 = sub_261CFF784();
      v8 = sub_261CFFE64();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "Unable to convert ListType to representation", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261C2D2E4()
{
  result = qword_27FEDCF58;
  if (!qword_27FEDCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF58);
  }

  return result;
}

unint64_t sub_261C2D33C()
{
  result = qword_27FEDCF60;
  if (!qword_27FEDCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF60);
  }

  return result;
}

unint64_t sub_261C2D394()
{
  result = qword_27FEDCF68;
  if (!qword_27FEDCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF68);
  }

  return result;
}

unint64_t sub_261C2D3EC()
{
  result = qword_27FEDCF70;
  if (!qword_27FEDCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF70);
  }

  return result;
}

unint64_t sub_261C2D444()
{
  result = qword_27FEDCF78;
  if (!qword_27FEDCF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF78);
  }

  return result;
}

unint64_t sub_261C2D498(uint64_t a1)
{
  result = sub_261C2D4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2D4C0()
{
  result = qword_27FEDCF80;
  if (!qword_27FEDCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF80);
  }

  return result;
}

unint64_t sub_261C2D518()
{
  result = qword_27FEDCF88;
  if (!qword_27FEDCF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDCF90, &qword_261D0CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF88);
  }

  return result;
}

unint64_t sub_261C2D57C()
{
  result = qword_27FEDCF98;
  if (!qword_27FEDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCF98);
  }

  return result;
}

unint64_t sub_261C2D5D4()
{
  result = qword_27FEDCFA0;
  if (!qword_27FEDCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCFA0);
  }

  return result;
}

unint64_t sub_261C2D62C()
{
  result = qword_27FEDCFA8;
  if (!qword_27FEDCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDCFA8);
  }

  return result;
}

uint64_t sub_261C2D698()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCFB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCFB0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SectionEntity.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  MEMORY[0x28223BE20](v3);
  v96 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v92 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v73[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v73[-v17];
  v19 = type metadata accessor for ListEntity(0);
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v94 = &v73[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v73[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v73[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73[-v27];
  MEMORY[0x28223BE20](v26);
  v98 = &v73[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFC8, &qword_261D0D0D0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v73[-v31];
  v33 = type metadata accessor for SectionEntityID(0);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v97 = &v73[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35);
  v38 = &v73[-v37];
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v105, v107);
  v39 = sub_261CFEAB4();
  static SectionEntityID.entityIdentifier(for:)(v39, v40, v32);

  __swift_destroy_boxed_opaque_existential_0(&v105);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_261AE6A40(v32, &qword_27FEDCFC8, &qword_261D0D0D0);
  }

  else
  {
    sub_261C2E4A0(v32, v38, type metadata accessor for SectionEntityID);
    sub_261CFCDA4();
    sub_261CFEBD4();

    v41 = v106;
    v42 = v38;
    if (v106)
    {
      v43 = v105;
      sub_261CFCDA4();
      sub_261CFEBD4();

      if (v105)
      {
        ListEntity.init(representation:)(v105, v18);
        if (!(*(v102 + 48))(v18, 1, v103))
        {
          sub_261C2E4A0(v18, v28, type metadata accessor for ListEntity);
          v50 = v98;
          v83 = type metadata accessor for ListEntity;
          sub_261C2E4A0(v28, v98, type metadata accessor for ListEntity);
          v84 = type metadata accessor for SectionEntityID;
          sub_261C2E508(v38, v97, type metadata accessor for SectionEntityID);
          sub_261C2E508(v50, v99, type metadata accessor for ListEntity);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
          v88 = sub_261CFCB24();
          v51 = v104;
          *v104 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
          v79 = sub_261C2E618(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
          v87 = sub_261CFCA64();
          v51[1] = v87;
          v77 = type metadata accessor for SectionEntity(0);
          v78 = *(v77 + 28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
          v82 = v41;
          sub_261CFF9B4();
          sub_261CFD874();
          v52 = *MEMORY[0x277CC9110];
          v85 = a1;
          v86 = v42;
          v53 = v101 + 104;
          v75 = *(v101 + 104);
          v54 = v96;
          v74 = v52;
          v55 = v100;
          v75(v96, v52, v100);
          v101 = v53;
          v81 = v43;
          v56 = v90;
          sub_261CFD6B4();
          v80 = MEMORY[0x2667199E0](v56, &type metadata for UpdateSectionDisplayNameAppIntent);
          *(v51 + v78) = v80;
          v57 = v77;
          v76 = *(v77 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
          sub_261CFF9B4();
          sub_261CFD874();
          v58 = v52;
          v59 = v55;
          v60 = v55;
          v61 = v75;
          v75(v54, v58, v59);
          sub_261CFD6B4();
          v78 = MEMORY[0x2667199F0](v56, &type metadata for UpdateSectionIsCollapsedAppIntent);
          *(v51 + v76) = v78;
          v76 = v57[9];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
          sub_261CFF9B4();
          sub_261CFD874();
          v62 = v74;
          v61(v54, v74, v60);
          sub_261CFD6C4();
          v79 = sub_261CFCA54();
          *(v51 + v76) = v79;
          v76 = v57[10];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
          sub_261CFF9B4();
          sub_261CFD874();
          v61(v54, v62, v100);
          sub_261CFD6C4();
          sub_261C2E618(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
          *(v51 + v76) = sub_261CFCA54();
          v63 = v57;
          v64 = v51;
          v65 = v97;
          v66 = v84;
          sub_261C2E508(v97, v51 + v57[6], v84);
          v67 = v99;
          v68 = v91;
          v69 = v83;
          sub_261C2E508(v99, v91, v83);
          (*(v102 + 56))(v68, 0, 1, v103);
          sub_261B425D4(v68, v92);
          sub_261CFCA14();
          sub_261AE6A40(v68, &unk_27FEDE0C0, &unk_261D02500);
          v70 = v81;
          v105 = v81;
          v106 = v82;
          v71 = v82;
          sub_261CFD104();
          sub_261CFD2E4();
          LOBYTE(v105) = 0;
          sub_261CFD2E4();
          v105 = v70;
          v106 = v71;
          sub_261CFCA14();
          v72 = v95;
          sub_261C2E508(v67, v95, v69);
          sub_261C2E508(v72, v94, v69);
          sub_261CFCA14();

          sub_261C2E570(v72, v69);
          sub_261C2E570(v67, v69);
          sub_261C2E570(v65, v66);
          sub_261C2E570(v98, v69);
          sub_261C2E570(v86, v66);
          return (*(*(v63 - 1) + 56))(v64, 0, 1, v63);
        }

        sub_261C2E570(v38, type metadata accessor for SectionEntityID);

        sub_261AE6A40(v18, &unk_27FEDE0C0, &unk_261D02500);
      }

      else
      {
        sub_261C2E570(v38, type metadata accessor for SectionEntityID);
      }
    }

    else
    {
      sub_261C2E570(v38, type metadata accessor for SectionEntityID);
    }
  }

  if (qword_27FED9BB0 != -1)
  {
    swift_once();
  }

  v44 = sub_261CFF7A4();
  __swift_project_value_buffer(v44, qword_27FEDCFB0);
  v45 = sub_261CFF784();
  v46 = sub_261CFFE64();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_261AE2000, v45, v46, "Unable to convert representation to SectionEntity", v47, 2u);
    MEMORY[0x26671D560](v47, -1, -1);
  }

  v48 = type metadata accessor for SectionEntity(0);
  return (*(*(v48 - 8) + 56))(v104, 1, 1, v48);
}

uint64_t sub_261C2E4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2E508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C2E570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261C2E618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C2E660()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDCFE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDCFE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C2E888()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];

  sub_261CFCBB4();
  v2 = v0[5];
  v1 = v0[6];
  if (qword_27FED9BB8 != -1)
  {
    swift_once();
  }

  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDCFE0);
  sub_261CFD104();
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v61[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v2, v1, v61);
    _os_log_impl(&dword_261AE2000, v4, v5, "[CreateGroupAppIntent] Create list with name: %s, privacy: .public)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v8 = *(v0[13] + 16);
  v0[7] = 0;
  v9 = [v8 fetchDefaultAccountWithError_];
  v10 = v9;
  v11 = v0[7];
  if (v11)
  {
    v11;

    swift_willThrow();
  }

  else if (v9)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v13 = [v12 updateAccount_];
    v14 = [v13 groupContext];
    if (v14)
    {
      v15 = v14;
      v16 = sub_261CFFA54();

      v60 = [v12 addGroupWithName:v16 toAccountGroupContextChangeItem:v15];

      sub_261CFCBB4();
      v17 = *(v0[8] + 16);

      if (v17)
      {
        v18 = [v60 sublistContext];
        if (v18)
        {
          v19 = v18;
          v55 = v15;
          v56 = v10;
          v58 = v13;
          v20 = v12;
          sub_261CFCBB4();
          v21 = v0[11];
          v22 = *(v21 + 16);
          if (v22)
          {
            v23 = 0;
            v24 = v0[16];
            do
            {
              if (v23 >= *(v21 + 16))
              {
                __break(1u);
              }

              v25 = v0[17];
              v26 = v0[13];
              sub_261B0A18C(v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v25);
              sub_261C2F048(v25, v26, v20, v19);
              ++v23;
              sub_261C2F57C(v0[17], type metadata accessor for ListEntity);
            }

            while (v22 != v23);
          }

          v12 = v20;
          v10 = v56;
          v13 = v58;
          v15 = v55;
        }
      }

      v0[9] = 0;
      v27 = [v12 saveSynchronouslyWithError_];
      v28 = v0[9];
      if (v27)
      {
        v29 = v0[15];
        v30 = v28;
        v31 = v60;
        sub_261B857C8(v31, 0, v29);
        v32 = v0[15];
        sub_261BA4168();
        sub_261CFC994();

        sub_261C2F57C(v32, type metadata accessor for GroupEntity);

        v33 = v0[1];
        goto LABEL_29;
      }

      v42 = v28;
      v43 = sub_261CFD654();

      swift_willThrow();
      v44 = v43;
      v45 = sub_261CFF784();
      v46 = sub_261CFFE64();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v59 = v13;
        v61[0] = v57;
        *v47 = 136315138;
        swift_getErrorValue();
        v48 = sub_261D00664();
        v50 = v12;
        v51 = v15;
        v52 = sub_261B879C8(v48, v49, v61);

        *(v47 + 4) = v52;
        v15 = v51;
        v12 = v50;
        _os_log_impl(&dword_261AE2000, v45, v46, "[CreateGroupAppIntent] Create group failed to save new group error: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        v13 = v59;
        MEMORY[0x26671D560](v57, -1, -1);
        MEMORY[0x26671D560](v47, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v53 = 19;
      swift_willThrow();
    }

    else
    {

      v38 = sub_261CFF784();
      v39 = sub_261CFFE64();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261AE2000, v38, v39, "[CreateGroupAppIntent] Failed to create account group context", v40, 2u);
        MEMORY[0x26671D560](v40, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();
    }
  }

  else
  {

    v34 = sub_261CFF784();
    v35 = sub_261CFFE64();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261AE2000, v34, v35, "[CreateGroupAppIntent] Unable to fetch default account", v36, 2u);
      MEMORY[0x26671D560](v36, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v37 = 13;
    swift_willThrow();
  }

  v33 = v0[1];
LABEL_29:

  return v33();
}

void sub_261C2F048(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for ListEntity(0);
  type metadata accessor for AppEntityID(0);
  v7 = objc_allocWithZone(MEMORY[0x277D44700]);
  v8 = sub_261CFD814();
  v9 = sub_261CFFA54();
  v10 = [v7 initWithUUID:v8 entityName:v9];

  v11 = *(a2 + 16);
  if (*(a1 + *(v6 + 84)))
  {
    v37[0] = 0;
    v12 = [v11 fetchCustomSmartListWithObjectID:v10 error:v37];
    v13 = v37[0];
    if (v12)
    {
      v14 = v12;
      v15 = v37[0];
      v16 = [a3 updateSmartList_];
      [a4 addSmartListChangeItem_];
LABEL_4:

      return;
    }

    goto LABEL_12;
  }

  v37[0] = 0;
  v17 = [v11 fetchListWithObjectID:v10 error:v37];
  v13 = v37[0];
  if (!v17)
  {
LABEL_12:
    v28 = v13;
    sub_261CFD654();

    swift_willThrow();
    v14 = v10;
    goto LABEL_20;
  }

  v14 = v17;
  v18 = v37[0];
  if ([v14 isGroup])
  {
    if (qword_27FED9BB8 != -1)
    {
      swift_once();
    }

    v19 = sub_261CFF7A4();
    __swift_project_value_buffer(v19, qword_27FEDCFE0);
    v20 = v10;
    v21 = sub_261CFF784();
    v22 = sub_261CFFE74();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_261AE2000, v21, v22, "[CreateGroupAppIntent] Attempt to create a group with a group: %{public}@", v23, 0xCu);
      sub_261BD28E8(v24);
      MEMORY[0x26671D560](v24, -1, -1);
      MEMORY[0x26671D560](v23, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v27 = 20;
  }

  else
  {
    if (![v14 isShared])
    {
      v16 = [a3 updateList_];
      [a4 addListChangeItem_];
      goto LABEL_4;
    }

    if (qword_27FED9BB8 != -1)
    {
      swift_once();
    }

    v29 = sub_261CFF7A4();
    __swift_project_value_buffer(v29, qword_27FEDCFE0);
    v20 = v10;
    v30 = sub_261CFF784();
    v31 = sub_261CFFE74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      *(v32 + 4) = v20;
      *v33 = v20;
      v34 = v20;
      _os_log_impl(&dword_261AE2000, v30, v31, "[CreateGroupAppIntent] Attempt to create a group with a shared list: %{public}@", v32, 0xCu);
      sub_261BD28E8(v33);
      MEMORY[0x26671D560](v33, -1, -1);
      MEMORY[0x26671D560](v32, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v27 = 1;
  }

  *v26 = v27;
  swift_willThrow();

LABEL_20:
}

uint64_t sub_261C2F4D0(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C2F57C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EntityRepresentationMappable.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_261D00154();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - v11;
  if (v10)
  {
    (*(a3 + 24))(v10, a2, a3);
    v13 = *(a2 - 8);
    v14 = v13;
    if (!(*(v13 + 48))(v12, 1, a2))
    {
      (*(v13 + 32))(a4, v12, a2);
      v15 = 0;
      return (*(v14 + 56))(a4, v15, 1, a2);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v13 = *(a2 - 8);
  }

  v14 = v13;
  v15 = 1;
  return (*(v14 + 56))(a4, v15, 1, a2);
}

uint64_t sub_261C2F7F4(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEC34();
}

void (*DeleteListsAppIntentRepresentation.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA3C4;
}

uint64_t DeleteListsAppIntentRepresentation.init(entities:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFF8, &qword_261D0D160);
  swift_allocObject();
  result = sub_261CFEC04();
  *a2 = result;
  return result;
}

unint64_t sub_261C2F99C(uint64_t a1)
{
  result = sub_261C2F9C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C2F9C4()
{
  result = qword_27FEDD000;
  if (!qword_27FEDD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD000);
  }

  return result;
}

uint64_t ColorEntityRepresentation.name.getter()
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v1;
}

double sub_261C2FA74@<D0>(_OWORD *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_261C2FACC(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t ColorEntityRepresentation.name.setter(uint64_t a1, uint64_t a2)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ColorEntityRepresentation.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDD008);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ColorEntityRepresentation.red.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDD010);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F280;
}

uint64_t (*ColorEntityRepresentation.green.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDD018);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t (*ColorEntityRepresentation.blue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDD020);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t sub_261C2FE24(void *a1)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  return v2;
}

uint64_t sub_261C2FE70@<X0>(uint64_t a3@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_261C2FECC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t sub_261C2FF30(uint64_t a1, char a2, void *a3)
{
  sub_261CFCDA4();
  sub_261CFEBE4();
}

uint64_t (*ColorEntityRepresentation.alpha.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27FEDD028);
  sub_261CFCDA4();
  *(v4 + 40) = sub_261CFEBC4();
  return sub_261C1F85C;
}

uint64_t ColorEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_261CFEA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = qword_27FEDD008;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA58, &qword_261D0B6D0);
  swift_allocObject();
  *(v1 + v10) = sub_261CFEBB4();
  v11 = qword_27FEDD010;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD030, &qword_261D0D1F8);
  swift_allocObject();
  *(v1 + v11) = sub_261CFEBB4();
  v12 = qword_27FEDD018;
  swift_allocObject();
  *(v1 + v12) = sub_261CFEBB4();
  v13 = qword_27FEDD020;
  swift_allocObject();
  *(v1 + v13) = sub_261CFEBB4();
  v14 = qword_27FEDD028;
  swift_allocObject();
  *(v1 + v14) = sub_261CFEBB4();
  v15 = *(v4 + 16);
  v15(v9, a1, v3);
  v15(v7, v9, v3);
  v16 = sub_261CFEA94();
  v17 = *(v4 + 8);
  v17(a1, v3);
  v17(v9, v3);
  return v16;
}

uint64_t sub_261C302AC()
{
}

uint64_t ColorEntityRepresentation.deinit()
{
  v0 = _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();

  return v0;
}

uint64_t ColorEntityRepresentation.__deallocating_deinit()
{
  _s19RemindersAppIntents05TypedB20EntityRepresentationCfd_0();
  sub_261CFCDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ColorEntityRepresentation(uint64_t a1)
{
  result = qword_27FEDD038;
  if (!qword_27FEDD038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261C30518(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateSectionAppIntentRepresentation.target.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C306A0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t sub_261C30818(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateSectionAppIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntentRepresentation.init(target:displayName:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFEC34();
}

uint64_t UpdateSectionAppIntentRepresentation.init(target:title:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCF00, &unk_261D0D230);
  swift_allocObject();
  *a4 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  a4[1] = sub_261CFEC04();
  swift_allocObject();
  a4[2] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFEC34();
}

unint64_t sub_261C30BF4()
{
  result = qword_27FEDD048;
  if (!qword_27FEDD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD048);
  }

  return result;
}

unint64_t sub_261C30C48(uint64_t a1)
{
  result = sub_261C30C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C30C70()
{
  result = qword_27FEDD050;
  if (!qword_27FEDD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD050);
  }

  return result;
}

unint64_t sub_261C30CD4()
{
  result = qword_27FEDD058;
  if (!qword_27FEDD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD058);
  }

  return result;
}

uint64_t OpenGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_261CFD184();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = &v28 - v10;
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD884();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFFA44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFD6A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v14, v19, v11);
  v21 = v29;
  sub_261CFD6C4();
  (*(v18 + 56))(v21, 0, 1, v17);
  v22 = type metadata accessor for GroupEntity(0);
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  v23 = sub_261CFC834();
  v24 = *(*(v23 - 8) + 56);
  v24(v31, 1, 1, v23);
  v24(v32, 1, 1, v23);
  (*(v34 + 104))(v33, *MEMORY[0x277CBA308], v35);
  sub_261C31CD0(&qword_280D22670, &protocol conformance descriptor for GroupEntity);
  v25 = sub_261CFCC34();
  v26 = v36;
  *v36 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD078, &qword_261D0D2D0);
  v37 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v26[1] = result;
  return result;
}

uint64_t sub_261C3133C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GroupEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261BAB184(a1, &v10 - v7);
  sub_261BAB184(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v8);
}

uint64_t OpenGroupAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261BAB184(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t sub_261C314B4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDD060);
  __swift_project_value_buffer(v6, qword_27FEDD060);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDD060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*OpenGroupAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenGroupAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261C31B70, v4, v3);
}

uint64_t sub_261C31B70()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB52D8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C59328(v4, "OpenGroupAppIntent", 18, 2, v2, v3);
}

unint64_t sub_261C31C48()
{
  result = qword_27FEDD080;
  if (!qword_27FEDD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD080);
  }

  return result;
}

uint64_t sub_261C31CD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GroupEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261C31D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261C31DB0, v5, v4);
}

uint64_t sub_261C31DB0()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B23D64(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_261BB5674;
  v6 = v0[9];

  return v8(v6, v0 + 7, v3, v4);
}

uint64_t sub_261C31F1C(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261BAB184(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*sub_261C31FAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261C32028()
{
  result = qword_27FEDD088;
  if (!qword_27FEDD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD088);
  }

  return result;
}

unint64_t sub_261C32080()
{
  result = qword_27FEDD090;
  if (!qword_27FEDD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD090);
  }

  return result;
}

uint64_t sub_261C32140@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDD060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C321EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261C3228C, v4, v3);
}

uint64_t sub_261C3228C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB5C4C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C59328(v4, "OpenGroupAppIntent", 18, 2, v2, v3);
}

uint64_t sub_261C32364(uint64_t a1)
{
  v2 = sub_261B315AC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenGroupAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261C324E4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD098);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD098);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::ListLayoutRepresentation_optional __swiftcall ListLayoutRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ListLayoutRepresentation.rawValue.getter()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_261C32650@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261C326F4(uint64_t a1)
{
  v2 = sub_261C32BC0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C32730(uint64_t a1)
{
  v2 = sub_261C32BC0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C3276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C32A94();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C327B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C32BC0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C3281C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C32A94();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

RemindersAppIntents::ListLayoutRepresentation_optional __swiftcall ListLayoutRepresentation.init(appEnum:)(RemindersAppIntents::ListEntity::ListLayout appEnum)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (qword_27FED9BC8 != -1)
      {
        swift_once();
      }

      v6 = sub_261CFF7A4();
      __swift_project_value_buffer(v6, qword_27FEDD098);
      v7 = sub_261CFF784();
      v8 = sub_261CFFE64();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "Unable to convert ListLayout to representation", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261C329E4()
{
  result = qword_27FEDD0B0;
  if (!qword_27FEDD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0B0);
  }

  return result;
}

unint64_t sub_261C32A3C()
{
  result = qword_27FEDD0B8;
  if (!qword_27FEDD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0B8);
  }

  return result;
}

unint64_t sub_261C32A94()
{
  result = qword_27FEDD0C0;
  if (!qword_27FEDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0C0);
  }

  return result;
}

unint64_t sub_261C32AEC()
{
  result = qword_27FEDD0C8;
  if (!qword_27FEDD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0C8);
  }

  return result;
}

unint64_t sub_261C32B44()
{
  result = qword_27FEDD0D0;
  if (!qword_27FEDD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0D0);
  }

  return result;
}

unint64_t sub_261C32B98(uint64_t a1)
{
  result = sub_261C32BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C32BC0()
{
  result = qword_27FEDD0D8;
  if (!qword_27FEDD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0D8);
  }

  return result;
}

unint64_t sub_261C32C18()
{
  result = qword_27FEDD0E0;
  if (!qword_27FEDD0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD0E8, &qword_261D0D5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0E0);
  }

  return result;
}

unint64_t sub_261C32C7C()
{
  result = qword_27FEDD0F0;
  if (!qword_27FEDD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0F0);
  }

  return result;
}

unint64_t sub_261C32CD4()
{
  result = qword_27FEDD0F8;
  if (!qword_27FEDD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD0F8);
  }

  return result;
}

unint64_t sub_261C32D2C()
{
  result = qword_27FEDD100;
  if (!qword_27FEDD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD100);
  }

  return result;
}

uint64_t LocationAlarmEntityRepresentation.SpatialEventRepresentation.rawValue.getter()
{
  v1 = 0x657669727261;
  if (*v0 != 1)
  {
    v1 = 0x747261706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_261C32DEC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD108);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD108);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_261D00554();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_261C32F78(uint64_t a1)
{
  v2 = sub_261C201E8();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C32FB4(uint64_t a1)
{
  v2 = sub_261C201E8();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C32FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C33324();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C3303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C201E8();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C330A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C33324();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void LocationAlarmEntityRepresentation.SpatialEventRepresentation.init(appEnum:)(_BYTE *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 >= 3)
  {
    if (qword_27FED9BD0 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDD108);
    v3 = sub_261CFF784();
    v5 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261AE2000, v3, v5, "Unable to convert PriorityLevelType to representation", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

unint64_t sub_261C33274()
{
  result = qword_27FEDD120;
  if (!qword_27FEDD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD120);
  }

  return result;
}

unint64_t sub_261C332CC()
{
  result = qword_27FEDD128;
  if (!qword_27FEDD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD128);
  }

  return result;
}

unint64_t sub_261C33324()
{
  result = qword_27FEDD130;
  if (!qword_27FEDD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD130);
  }

  return result;
}

unint64_t sub_261C3337C()
{
  result = qword_27FEDD138;
  if (!qword_27FEDD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD138);
  }

  return result;
}

unint64_t sub_261C333D4()
{
  result = qword_27FEDD140;
  if (!qword_27FEDD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD140);
  }

  return result;
}

unint64_t sub_261C3342C()
{
  result = qword_27FEDD148;
  if (!qword_27FEDD148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDD150, &qword_261D0D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD148);
  }

  return result;
}

unint64_t sub_261C33490()
{
  result = qword_27FEDD158;
  if (!qword_27FEDD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD158);
  }

  return result;
}

unint64_t sub_261C334E8()
{
  result = qword_27FEDD160;
  if (!qword_27FEDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD160);
  }

  return result;
}

unint64_t sub_261C33540()
{
  result = qword_27FEDD168;
  if (!qword_27FEDD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD168);
  }

  return result;
}

uint64_t sub_261C335E0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.target.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3385C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C33AC0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.color.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C33D38(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.badge.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.badge.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C33FB0(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.parent.setter(uint64_t a1)
{
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3422C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.isPinned.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3448C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.showsCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C346EC(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.autoCategorize.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C3493C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.listLayout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261AFA230;
}

uint64_t sub_261C34B90(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.sortingStyle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C34DE4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.listType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C35048(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C352A4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFEC34();
}

uint64_t (*UpdateListAppIntentRepresentation.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFEC14();
  return sub_261B02064;
}

uint64_t sub_261C354F4@<X0>(uint64_t *a9@<X8>, char a10, char *a11, char *a12, char *a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  *a9 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  a9[1] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD170, &qword_261D0D9A0);
  swift_allocObject();
  a9[2] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD178, &qword_261D0D9A8);
  swift_allocObject();
  a9[3] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD180, &unk_261D0D9B0);
  swift_allocObject();
  a9[4] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  a9[5] = sub_261CFEC04();
  swift_allocObject();
  a9[6] = sub_261CFEC04();
  swift_allocObject();
  a9[7] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD188, &qword_261D0D9C0);
  swift_allocObject();
  a9[8] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD190, &unk_261D0D9C8);
  swift_allocObject();
  a9[9] = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB38, &qword_261D0BA10);
  swift_allocObject();
  a9[10] = sub_261CFEC04();
  swift_allocObject();
  a9[11] = sub_261CFEC04();
  swift_allocObject();
  a9[12] = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
}

uint64_t UpdateListAppIntentRepresentation.init(listRepresentation:)@<X0>(uint64_t *a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  sub_261CFCDA4();
  sub_261CFEBD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB30, &qword_261D0C410);
  swift_allocObject();
  v5 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB28, &unk_261D0BA00);
  swift_allocObject();
  v3 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD170, &qword_261D0D9A0);
  swift_allocObject();
  v16 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD178, &qword_261D0D9A8);
  swift_allocObject();
  v15 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD180, &unk_261D0D9B0);
  swift_allocObject();
  v13 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCEC8, &unk_261D0DDF0);
  swift_allocObject();
  v12 = sub_261CFEC04();
  swift_allocObject();
  v11 = sub_261CFEC04();
  swift_allocObject();
  v10 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD188, &qword_261D0D9C0);
  swift_allocObject();
  v9 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD190, &unk_261D0D9C8);
  swift_allocObject();
  v8 = sub_261CFEC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCB38, &qword_261D0BA10);
  swift_allocObject();
  v7 = sub_261CFEC04();
  swift_allocObject();
  v6 = sub_261CFEC04();
  swift_allocObject();
  v4 = sub_261CFEC04();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFD104();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFCDA4();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();
  sub_261CFEC34();

  *a2 = v5;
  a2[1] = v3;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  a2[5] = v12;
  a2[6] = v11;
  a2[7] = v10;
  a2[8] = v9;
  a2[9] = v8;
  a2[10] = v7;
  a2[11] = v6;
  a2[12] = v4;
  return result;
}

unint64_t sub_261C35FA4(uint64_t a1)
{
  result = sub_261C35FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261C35FCC()
{
  result = qword_27FEDD198;
  if (!qword_27FEDD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD198);
  }

  return result;
}

uint64_t destroy for UpdateListAppIntentRepresentation(void *a1)
{
}

uint64_t *initializeWithCopy for UpdateListAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  a1[12] = a2[12];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListAppIntentRepresentation(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  a1[7] = a2[7];
  sub_261CFCDA4();

  a1[8] = a2[8];
  sub_261CFCDA4();

  a1[9] = a2[9];
  sub_261CFCDA4();

  a1[10] = a2[10];
  sub_261CFCDA4();

  a1[11] = a2[11];
  sub_261CFCDA4();

  a1[12] = a2[12];
  sub_261CFCDA4();

  return a1;
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

void *assignWithTake for UpdateListAppIntentRepresentation(void *a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 1) = *(a2 + 16);

  *(a1 + 2) = *(a2 + 32);

  *(a1 + 3) = *(a2 + 48);

  *(a1 + 4) = *(a2 + 64);

  *(a1 + 5) = *(a2 + 80);

  a1[12] = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateListAppIntentRepresentation(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UpdateListAppIntentRepresentation(uint64_t result, int a2, int a3)
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

uint64_t EnumRepresentationMappable.init(representation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_261D00154();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = a3;
  v32 = &v29 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_261D00154();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v11 + 8);
    v21(a1, v10);
    v21(v14, v10);
    v22 = *(a2 - 8);
  }

  else
  {
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
    v23 = v32;
    (*(v31 + 24))(v18, a2);
    (*(v11 + 8))(a1, v10);
    (*(v15 + 8))(v20, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v24 = v22;
    if (!(*(v22 + 48))(v23, 1, a2))
    {
      v28 = v33;
      (*(v22 + 32))(v33, v23, a2);
      v26 = v28;
      v25 = 0;
      return (*(v24 + 56))(v26, v25, 1, a2);
    }

    (*(v29 + 8))(v23, v30);
  }

  v24 = v22;
  v25 = 1;
  v26 = v33;
  return (*(v24 + 56))(v26, v25, 1, a2);
}

uint64_t TransientAppEntityMappable.init(appEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_261D00154();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = a3;
  v32 = &v29 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_261D00154();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v11 + 8);
    v21(a1, v10);
    v21(v14, v10);
    v22 = *(a2 - 8);
  }

  else
  {
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
    v23 = v32;
    (*(v31 + 24))(v18, a2);
    (*(v11 + 8))(a1, v10);
    (*(v15 + 8))(v20, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v24 = v22;
    if (!(*(v22 + 48))(v23, 1, a2))
    {
      v28 = v33;
      (*(v22 + 32))(v33, v23, a2);
      v26 = v28;
      v25 = 0;
      return (*(v24 + 56))(v26, v25, 1, a2);
    }

    (*(v29 + 8))(v23, v30);
  }

  v24 = v22;
  v25 = 1;
  v26 = v33;
  return (*(v24 + 56))(v26, v25, 1, a2);
}

uint64_t sub_261C36CDC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD1A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD1A0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double ColorEntity.init(representation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFD674();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v9 - 8);
  sub_261CFEA04();
  __swift_project_boxed_opaque_existential_1(&v44, v46);
  sub_261CFEAB4();
  v10 = sub_261CFF984();
  v12 = v11;

  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (v12)
  {
    sub_261CFCDA4();
    sub_261CFEBD4();

    v41 = v45;
    v42 = v44;
    sub_261CFCDA4();
    sub_261CFEBD4();

    v40 = v44;
    v39 = v45;
    sub_261CFCDA4();
    sub_261CFEBD4();

    v38 = v44;
    v37 = v45;
    sub_261CFCDA4();
    sub_261CFEBD4();

    v36 = v44;
    v35 = v45;
    sub_261CFCDA4();
    sub_261CFEBD4();

    v34 = v44;
    v33 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
    sub_261CFF9B4();
    sub_261CFD874();
    v30 = a1;
    v31 = v10;
    v13 = a2;
    v14 = *MEMORY[0x277CC9110];
    v32 = v12;
    v15 = *(v43 + 104);
    v15(v6, v14, v4);
    sub_261CFD6C4();
    v43 = sub_261CFCB14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
    sub_261CFF9B4();
    sub_261CFD874();
    v15(v6, v14, v4);
    sub_261CFD6B4();
    v29 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v15(v6, v14, v4);
    sub_261CFD6B4();
    v28 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v15(v6, v14, v4);
    sub_261CFD6B4();
    v27 = sub_261CFCB44();
    sub_261CFF9B4();
    sub_261CFD874();
    v15(v6, v14, v4);
    sub_261CFD6C4();
    v16 = sub_261CFCB44();
    v44 = v42;
    v45 = v41;
    v17 = v43;
    sub_261CFCA14();
    v44 = v40;
    LOBYTE(v45) = v39;
    v18 = v29;
    sub_261CFCA14();
    v44 = v38;
    LOBYTE(v45) = v37;
    v19 = v28;
    sub_261CFCA14();
    v44 = v36;
    LOBYTE(v45) = v35;
    v20 = v27;
    sub_261CFCA14();
    v44 = v34;
    LOBYTE(v45) = v33;
    sub_261CFCA14();

    v22 = v32;
    *v13 = v31;
    v13[1] = v22;
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[6] = v16;
  }

  else
  {
    if (qword_27FED9BD8 != -1)
    {
      swift_once();
    }

    v23 = sub_261CFF7A4();
    __swift_project_value_buffer(v23, qword_27FEDD1A0);
    v24 = sub_261CFF784();
    v25 = sub_261CFFE64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_261AE2000, v24, v25, "Unable to convert representation to ListBadgeEntity", v26, 2u);
      MEMORY[0x26671D560](v26, -1, -1);
    }

    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}