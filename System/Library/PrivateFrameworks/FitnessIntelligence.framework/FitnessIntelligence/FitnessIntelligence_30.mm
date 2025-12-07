void sub_1B4C60920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v39 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v52 = a1;
  v51 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v16;
    if (v16 >= 1)
    {
      v42 = a4;
      v28 = -v12;
      v29 = a4 + v16;
      v48 = a1;
      v43 = -v12;
      do
      {
        v40 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v44 = a2;
        v45 = a2 + v28;
        while (1)
        {
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v40;
            goto LABEL_59;
          }

          v33 = a3;
          v41 = v27;
          a3 += v28;
          v34 = v29 + v28;
          v35 = v46;
          sub_1B4C63E94(v34, v46, type metadata accessor for DistanceSampleIntervalRecord);
          v36 = v47;
          sub_1B4C63E94(v31, v47, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
          sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
          v37 = sub_1B4D180FC();
          sub_1B4C63EFC(v36, type metadata accessor for DistanceSampleIntervalRecord);
          sub_1B4C63EFC(v35, type metadata accessor for DistanceSampleIntervalRecord);
          if (v37)
          {
            break;
          }

          v27 = v34;
          if (v33 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v45;
          }

          else
          {
            v31 = v45;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v34;
          v32 = v34 > v42;
          a1 = v48;
          v28 = v43;
          v30 = v44;
          if (!v32)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (v33 < v44 || a3 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          v28 = v43;
        }

        else
        {
          v38 = v33 == v44;
          a2 = v45;
          v27 = v41;
          v28 = v43;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v48;
      }

      while (v29 > v42);
    }

LABEL_58:
    v52 = a2;
    v50 = v27;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v15;
    v50 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v43 = v12;
      v44 = a3;
      v18 = v47;
      do
      {
        v48 = a1;
        v19 = v46;
        sub_1B4C63E94(a2, v46, type metadata accessor for DistanceSampleIntervalRecord);
        v20 = a2;
        sub_1B4C63E94(a4, v18, type metadata accessor for DistanceSampleIntervalRecord);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v21 = a4;
        sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
        v22 = sub_1B4D180FC();
        sub_1B4C63EFC(v18, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v19, type metadata accessor for DistanceSampleIntervalRecord);
        if (v22)
        {
          v23 = v43;
          v24 = v48;
          if (v48 < v20 || v48 >= v20 + v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v20 + v23;
            v25 = v44;
          }

          else
          {
            v25 = v44;
            if (v48 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v20 + v23;
          }
        }

        else
        {
          v23 = v43;
          a4 += v43;
          v24 = v48;
          v26 = v21;
          if (v48 < v21 || v48 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v44;
            a2 = v20;
          }

          else
          {
            v25 = v44;
            a2 = v20;
            if (v48 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v25);
    }
  }

LABEL_59:
  sub_1B4CDE024(&v52, &v51, &v50);
}

unint64_t _s19FitnessIntelligence14WorkoutInsightV12bestDuration3for7samples12smoothFactor5limitSDyAA17DistanceReferenceOSayAA0L20SampleIntervalRecordVGGSayAJG_SaySo010HKQuantityN0CGS2itFZ_0(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v285 = a4;
  v359 = a1;
  v6 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v345 = &v275 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v275 - v14;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v16 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v335 = &v275 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v333 = &v275 - v19;
  v349 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v292 = *(v349 - 8);
  MEMORY[0x1EEE9AC00](v349);
  v315 = &v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v347 = &v275 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v289 = &v275 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v313 = &v275 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v338 = &v275 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v287 = &v275 - v30;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v356 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v288 = &v275 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v334 = &v275 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v286 = &v275 - v35;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v353 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v297 = &v275 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v294 = &v275 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v304 = &v275 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v295 = &v275 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v305 = &v275 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v323 = &v275 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v316 = &v275 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v275 - v50);
  MEMORY[0x1EEE9AC00](v52);
  v350 = &v275 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v355 = &v275 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v310 = &v275 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v309 = &v275 - v59;
  v319 = sub_1B4D1777C();
  v351 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v291 = &v275 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v290 = &v275 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v324 = &v275 - v64;
  v330 = type metadata accessor for WorkoutInsight.DistanceAccumulator(0);
  v322 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v276 = &v275 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v340 = &v275 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v329 = &v275 - v69;
  v71.n128_f64[0] = MEMORY[0x1EEE9AC00](v70);
  v73 = &v275 - v72;
  v280 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_175;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_176:
    v274 = MEMORY[0x1E69E7CC0];

    return sub_1B4C98728(v274);
  }

LABEL_3:
  v354 = a2 & 0xC000000000000001;
  v357 = v51;
  v299 = v6;
  v332 = v10;
  v348 = a3;
  v341 = v16;
  if ((a2 & 0xC000000000000001) != 0)
  {
    a3 = a2;
    v320 = MEMORY[0x1B8C7CD90](0, a2, v71);
    v75 = v359;
  }

  else
  {
    v74 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v359;
    if (!v74)
    {
      __break(1u);
LABEL_181:

      __break(1u);
LABEL_182:

      __break(1u);
      goto LABEL_183;
    }

    a3 = a2;
    v320 = *(a2 + 32);
  }

  v76 = *(v75 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  v16 = 0x1E7C11000;
  v352 = a3;
  v343 = v7;
  v331 = v15;
  if (v76)
  {
    v342 = v8;
    v362 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF55C(0, v76, 0);
    v77 = v362;
    v358 = objc_opt_self();
    v78 = (v75 + 32);
    do
    {
      v79 = *v78;
      v359 = (v78 + 1);
      v80 = v320;
      v81 = v358;
      v82 = [v358 meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v83 = v330;
      sub_1B4D1741C();
      v84 = [v81 meters];
      sub_1B4D1741C();
      *v73 = v79;
      *(v73 + 1) = 0;
      *(v73 + 2) = v80;
      *(v73 + 3) = -1;
      *(v73 + 4) = v80;
      *&v73[*(v83 + 44)] = MEMORY[0x1E69E7CC0];
      v362 = v77;
      v7 = *(v77 + 16);
      v85 = *(v77 + 24);
      v15 = v7 + 1;
      if (v7 >= v85 >> 1)
      {
        sub_1B4BCF55C((v85 > 1), v7 + 1, 1);
        v77 = v362;
      }

      *(v77 + 16) = v15;
      sub_1B4C63F5C(v73, v77 + ((*(v322 + 80) + 32) & ~*(v322 + 80)) + *(v322 + 72) * v7, type metadata accessor for WorkoutInsight.DistanceAccumulator);
      --v76;
      v78 = v359;
    }

    while (v76);
    a3 = v352;
    v51 = v77;
    v6 = MEMORY[0x1E69E7CC0];
    v16 = 0x1E7C11000;
    v8 = v342;
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  a2 = 0;
  if (v348 <= 1)
  {
    v86 = 1;
  }

  else
  {
    v86 = v348;
  }

  v87 = a3 & 0xFFFFFFFFFFFFFF8;
  v348 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v87 = a3;
  }

  v277 = v87;
  v317 = (v351 + 8);
  v293 = a3 + 32;
  v306 = (v353 + 2);
  v358 = (v353 + 1);
  v353 += 4;
  v284 = (v356 + 16);
  v339 = (v356 + 8);
  v342 = v8 + 1;
  ++v341;
  v283 = xmmword_1B4D1A800;
  v88 = -v86;
  v10 = v360;
  v73 = v324;
  v278 = v86;
  while (1)
  {
    v90 = __OFADD__(v88, v86);
    v91 = v88 + v86;
    if (v90)
    {
      goto LABEL_170;
    }

    v281 = v91;
    v7 = v51[2];
    if (v7)
    {
      break;
    }

    v51 = v6;
LABEL_139:
    if (v280)
    {
      v89 = sub_1B4D18ABC();
    }

    else
    {
      v89 = *(v348 + 16);
    }

    v86 = v278;
    v88 = v281;
    a2 += v278;
    if (v281 >= v89)
    {
      goto LABEL_143;
    }
  }

  v279 = a2;
  v362 = v6;
  sub_1B4BCF55C(0, v7, 0);
  v15 = v362;
  if (v280)
  {
    v92 = sub_1B4D18ABC();
  }

  else
  {
    v92 = *(v348 + 16);
  }

  a2 = v340;
  v93 = v92 - 1;
  if (__OFSUB__(v92, 1))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v6 = 0;
  v311 = (*(v322 + 80) + 32) & ~*(v322 + 80);
  v312 = v51 + v311;
  v94 = v281;
  if (v93 < v281)
  {
    v94 = v92 - 1;
  }

  v325 = v94;
  if (v279 < v93)
  {
    v93 = v279;
  }

  v351 = 1 - v93;
  v300 = v51;
  v298 = v7;
  while (1)
  {
    if (v6 == v7)
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
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
      goto LABEL_173;
    }

    if (v6 >= v51[2])
    {
      goto LABEL_164;
    }

    v95 = *(v322 + 72);
    v328 = v6;
    v327 = v95;
    v96 = sub_1B4C63E94(&v312[v95 * v6], a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v326 = MEMORY[0x1B8C7D560](v96);
    v97 = [v320 startDate];
    sub_1B4D1775C();

    a2 = v340;
    v6 = *(v340 + 3);
    if (v6 < v325)
    {
      break;
    }

    (*v317)(v73, v319);
    sub_1B4C63E94(a2, v329, type metadata accessor for WorkoutInsight.DistanceAccumulator);
LABEL_133:
    objc_autoreleasePoolPop(v326);
    sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v362 = v15;
    v264 = *(v15 + 16);
    v263 = *(v15 + 24);
    if (v264 >= v263 >> 1)
    {
      sub_1B4BCF55C((v263 > 1), v264 + 1, 1);
      a2 = v340;
      v15 = v362;
    }

    v265 = v328 + 1;
    *(v15 + 16) = v264 + 1;
    v266 = v15 + v311 + v264 * v327;
    v6 = v265;
    sub_1B4C63F5C(v329, v266, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v73 = v324;
    if (v6 == v7)
    {

      v51 = v15;
      v6 = MEMORY[0x1E69E7CC0];
      a2 = v279;
      goto LABEL_139;
    }
  }

  v308 = v15;
  if (v354)
  {
    v98 = MEMORY[0x1B8C7CD90]();
  }

  else
  {
    if (v325 < 0)
    {
      goto LABEL_166;
    }

    if (v325 >= *(v348 + 16))
    {
      goto LABEL_167;
    }

    v98 = *(v293 + 8 * v325);
  }

  v314 = v98;
  v51 = objc_opt_self();
  v99 = [v51 *(v16 + 3680)];
  v100 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v101 = v310;
  v356 = v100;
  sub_1B4D1741C();
  v337 = *v306;
  (v337)(v355, v101, v10);
  v73 = objc_opt_self();
  v102 = v6 + 5;
  v103 = v352;
  v359 = v51;
  while (1)
  {
    v104 = v102 - 4;
    if (v354)
    {
      v105 = MEMORY[0x1B8C7CD90](v102 - 4, v103);
    }

    else
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      if (v104 >= *(v348 + 16))
      {
        goto LABEL_142;
      }

      v105 = *(v103 + 8 * v102);
    }

    v106 = v105;
    a3 = v351 + v102;
    v107 = [v105 quantity];
    v108 = [v73 meterUnit];
    [v107 doubleValueForUnit_];

    v109 = [v51 *(v16 + 3680)];
    v110 = v357;
    sub_1B4D1741C();
    v111 = v350;
    v112 = v355;
    sub_1B4D1743C();

    v6 = *v358;
    v113 = v360;
    (*v358)(v110, v360);
    (v6)(v112, v113);
    v51 = *v353;
    (*v353)(v112, v111, v113);
    if (a3 == 5)
    {
      break;
    }

    ++v102;
    v103 = v352;
    v16 = 0x1E7C11000;
    v51 = v359;
    if (__OFADD__(v104, 1))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v10 = v51[2];
      if (!v10)
      {
        goto LABEL_157;
      }

      v7 = 0;
      v15 = *(v330 + 44);
      v8 = v51;
      v51 = (v51 + ((*(v322 + 80) + 32) & ~*(v322 + 80)));
      v6 = MEMORY[0x1E69E7CC0];
      a2 = v276;
      while (v7 < v8[2])
      {
        sub_1B4C63E94(v51 + *(v322 + 72) * v7, a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
        if (*(*(a2 + v15) + 16))
        {
          a3 = *a2;
          v362 = *(a2 + v15);

          v267 = v299;
          sub_1B4C5C220(&v362, sub_1B4C5D468, sub_1B4C5C7A0);
          v268 = &v331;
          v299 = v267;
          if (v267)
          {
            goto LABEL_182;
          }

          v73 = v362;
          sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1B4A1E330(0, *(v6 + 16) + 1, 1, v6);
          }

          v16 = *(v6 + 16);
          v269 = *(v6 + 24);
          if (v16 >= v269 >> 1)
          {
            v6 = sub_1B4A1E330((v269 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 16) = v16 + 1;
          v270 = v6 + 16 * v16;
          *(v270 + 32) = a3;
          *(v270 + 40) = v73;
          a2 = v276;
        }

        else
        {
          sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
        }

        if (v10 == ++v7)
        {
          goto LABEL_158;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      if (!sub_1B4D18ABC())
      {
        goto LABEL_176;
      }

      goto LABEL_3;
    }
  }

  v16 = v358;
  (v6)(v310, v113);
  (v51)(v309, v355, v113);
  v114 = v330;
  v115 = v340;
  sub_1B4D1743C();
  v7 = *(v114 + 36);
  sub_1B4D1743C();
  LOBYTE(v361) = *v115;
  v15 = v305;
  DistanceReference.rawValue.getter();
  v116 = [v359 meters];
  v8 = v357;
  sub_1B4D1745C();

  v10 = v360;
  (v6)(v15, v360);
  a3 = sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v117 = sub_1B4D1810C();
  (v6)(v8, v10);
  v307 = v51;
  if (v117)
  {
    if (v354)
    {
      v118 = MEMORY[0x1B8C7CD90](v325, v352);
    }

    else
    {
      v118 = *(v293 + 8 * v325);
    }

    v303 = v118;
    a2 = [*(v340 + 2) quantity];
    v177 = [v73 meterUnit];
    [a2 doubleValueForUnit_];

    v178 = [v359 meters];
    v73 = v295;
    v10 = v356;
    sub_1B4D1741C();
    v179 = *(v340 + 1);
    v180 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      goto LABEL_165;
    }

    v336 = a3;
    v296 = v179 + 1;
    if (v354)
    {
      v302 = MEMORY[0x1B8C7CD90]();
    }

    else
    {
      a3 = v304;
      a2 = v323;
      if ((v180 & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (v180 >= *(v348 + 16))
      {
        goto LABEL_169;
      }

      v302 = *(v293 + 8 * v180);
    }

    sub_1B4D1744C();
    LOBYTE(v361) = *v340;
    v181 = v305;
    DistanceReference.rawValue.getter();
    v182 = v359;
    v183 = v73;
    v184 = [v359 meters];
    v16 = v357;
    v185 = v360;
    sub_1B4D1745C();

    v186 = v181;
    v10 = v185;
    v8 = v358;
    (v6)(v186, v185);
    v187 = sub_1B4D1810C();
    (v6)(v16, v185);
    if (v187)
    {
      LOBYTE(v361) = *v340;
      DistanceReference.rawValue.getter();
      v188 = [v182 meters];
      sub_1B4D1745C();

      (v6)(v16, v185);
      v189 = [v303 endDate];
      v190 = v290;
      sub_1B4D1775C();

      v191 = [v302 startDate];
      v192 = v291;
      sub_1B4D1775C();

      sub_1B4D176FC();
      v193 = *v317;
      v8 = v319;
      (*v317)(v192, v319);
      v193(v190, v8);
      sub_1B4D1742C();
      v194 = [v359 meters];
      sub_1B4D1745C();

      sub_1B4D1742C();
      (v6)(v16, v10);
      v318 = objc_opt_self();
      v195 = [v318 seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v196 = v286;
      sub_1B4D1741C();
      v197 = [v302 startDate];
      sub_1B4D1775C();

      a3 = v324;
      sub_1B4D176FC();
      v199 = v198;
      v193(v190, v8);
      v200 = [v303 endDate];
      sub_1B4D1775C();

      sub_1B4D176FC();
      v202 = v201;
      v282 = v193;
      v193(v190, v8);
      v203 = v349;
      v204 = v10;
      v205 = v287;
      sub_1B4D1744C();
      (v337)(&v205[*(v203 + 28)], v294, v204);
      (*v284)(&v205[*(v203 + 32)], v196, v346);
      *v205 = v199;
      *(v205 + 1) = v202;
      v206 = *&v340[*(v330 + 44)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C80, &qword_1B4D47070);
      v207 = (*(v292 + 80) + 32) & ~*(v292 + 80);
      v356 = *(v292 + 72);
      v208 = swift_allocObject();
      *(v208 + 16) = v283;
      sub_1B4C63E94(v205, v208 + v207, type metadata accessor for DistanceSampleIntervalRecord);
      v361 = v206;

      sub_1B4997A74(v208);
      v209 = v361;
      v210 = v338;
      v337 = *(v361 + 16);
      if (v337)
      {
        v211 = 0;
        v301 = v207;
        v212 = v361 + v207;
        v321 = MEMORY[0x1E69E7CC0];
        v16 = 0x1E7C11000;
        v336 = v361;
        while (1)
        {
          if (v211 >= *(v209 + 16))
          {
            goto LABEL_156;
          }

          sub_1B4C63E94(v212, v210, type metadata accessor for DistanceSampleIntervalRecord);
          v213 = [v359 *(v16 + 3680)];
          v214 = v357;
          v215 = v360;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v217 = v216;
          (v6)(v214, v215);
          if (v217 <= 0.0)
          {
            break;
          }

          v218 = [v318 seconds];
          v219 = v334;
          v220 = v346;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v339)(v219, v220);
          if (qword_1EDC36E80 != -1)
          {
            goto LABEL_91;
          }

LABEL_93:
          v221 = qword_1EDC36E88;
          type metadata accessor for UnitPace();
          v222 = v221;
          v223 = v331;
          sub_1B4D1741C();
          v16 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v224 = v345;
          v8 = v343;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v225 = *v342;
          (*v342)(v224, v8);
          v226 = [objc_opt_self() metersPerSecond];
          sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
          a3 = v333;
          sub_1B4D1741C();
          v225(v223, v8);
          v227 = v344;
          sub_1B4D1742C();
          v229 = v228;
          (*v341)(a3, v227);
          v210 = v338;
          if (v229 >= 14.0 || (sub_1B4D1742C(), v230 <= 0.0))
          {
            sub_1B4C63EFC(v210, type metadata accessor for DistanceSampleIntervalRecord);
          }

          else
          {
            sub_1B4C63F5C(v210, v313, type metadata accessor for DistanceSampleIntervalRecord);
            v231 = v321;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v361 = v231;
            if (isUniquelyReferenced_nonNull_native)
            {
              v233 = v231;
            }

            else
            {
              sub_1B4BCF57C(0, *(v231 + 16) + 1, 1);
              v233 = v361;
            }

            v235 = *(v233 + 16);
            v234 = *(v233 + 24);
            if (v235 >= v234 >> 1)
            {
              sub_1B4BCF57C((v234 > 1), v235 + 1, 1);
              v233 = v361;
            }

            *(v233 + 16) = v235 + 1;
            v321 = v233;
            sub_1B4C63F5C(v313, v301 + v233 + v235 * v356, type metadata accessor for DistanceSampleIntervalRecord);
          }

          v209 = v336;
          ++v211;
          v212 += v356;
          if (v337 == v211)
          {
            goto LABEL_118;
          }
        }

        if (qword_1EDC36E80 == -1)
        {
          goto LABEL_93;
        }

LABEL_91:
        swift_once();
        goto LABEL_93;
      }

      v321 = MEMORY[0x1E69E7CC0];
LABEL_118:

      v361 = v321;

      v252 = v299;
      sub_1B4C5C220(&v361, sub_1B4C5ECB8, sub_1B4C5D1D4);
      v74 = &v331;
      v299 = v252;
      if (v252)
      {
        goto LABEL_181;
      }

      a2 = sub_1B4C5B7F8(v285, v361);
      v73 = v253;
      v10 = v254;
      v7 = v255;
      if ((v255 & 1) == 0)
      {
        swift_unknownObjectRetain();
        goto LABEL_121;
      }

      v51 = sub_1B4D18DDC();
      swift_unknownObjectRetain_n();
      v257 = swift_dynamicCastClass();
      if (!v257)
      {
        swift_unknownObjectRelease();
        v257 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v257 + 16);

      if (__OFSUB__(v7 >> 1, v10))
      {
        goto LABEL_172;
      }

      if (v15 == (v7 >> 1) - v10)
      {
        v258 = swift_dynamicCastClass();
        if (v258)
        {
          v238 = v258;
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
          v238 = MEMORY[0x1E69E7CC0];
        }

        v10 = v360;
        v51 = v300;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
LABEL_121:
        v51 = v300;
        sub_1B4C5C4C0(a2, v73, v10, v7, &qword_1EB8A7C80, &qword_1B4D47070, type metadata accessor for DistanceSampleIntervalRecord);
        v238 = v256;
        swift_unknownObjectRelease_n();

        v10 = v360;
      }

      sub_1B4C63EFC(v287, type metadata accessor for DistanceSampleIntervalRecord);
      (*v339)(v286, v346);
      (v6)(v294, v10);
      (v6)(v295, v10);
      (v6)(v323, v10);
      (v6)(v309, v10);
      v282(v324, v319);
      v236 = v330;
      v237 = v340;
    }

    else
    {

      (v6)(v183, v185);
      (v6)(v323, v185);
      (v6)(v309, v185);
      (*v317)(v324, v319);
      v236 = v330;
      v237 = v340;
      v238 = *&v340[*(v330 + 44)];

      v51 = v300;
    }

    v259 = *v237;
    v260 = v329;
    a3 = v307;
    (v307)(v329 + v236[10], v316, v10);
    *v260 = v259;
    v261 = v302;
    *(v260 + 8) = v296;
    *(v260 + 16) = v261;
    v262 = v303;
    *(v260 + 24) = v325;
    *(v260 + 32) = v262;
    (a3)(v260 + v236[9], v304, v10);
    *(v260 + v236[11]) = v238;
    a2 = v237;
LABEL_132:
    v16 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    v7 = v298;
    v15 = v308;
    goto LABEL_133;
  }

  v119 = *(v340 + 2);
  LOBYTE(v361) = *v340;
  DistanceReference.rawValue.getter();
  v120 = v359;
  v121 = [v359 meters];
  sub_1B4D1745C();

  (v6)(v15, v10);
  v122 = sub_1B4D1810C();
  (v6)(v8, v10);
  v123 = v319;
  v302 = v119;
  if ((v122 & 1) == 0)
  {
    (v6)(v309, v10);
    (*v317)(v324, v123);
    v174 = v330;
    v175 = v340;
    v176 = *&v340[*(v330 + 44)];

    v51 = v300;
LABEL_116:
    v245 = *v175;
    v246 = *(v340 + 1);
    v247 = v329;
    a3 = v353;
    v248 = v307;
    (v307)(v329 + v174[9], v323, v10);
    (v248)(v247 + v174[10], v316, v10);
    *v247 = v245;
    *(v247 + 8) = v246;
    a2 = v340;
    v249 = v302;
    v250 = v325;
    *(v247 + 16) = v302;
    *(v247 + 24) = v250;
    *(v247 + 32) = v314;
    *(v247 + v174[11]) = v176;
    v251 = v249;
    goto LABEL_132;
  }

  LOBYTE(v361) = *v340;
  DistanceReference.rawValue.getter();
  v124 = [v120 meters];
  sub_1B4D1745C();

  (v6)(v8, v10);
  v125 = [v314 endDate];
  v126 = v123;
  v127 = v290;
  sub_1B4D1775C();

  v128 = [v119 startDate];
  v129 = v291;
  sub_1B4D1775C();

  sub_1B4D176FC();
  v130 = *v317;
  (*v317)(v129, v126);
  v130(v127, v126);
  sub_1B4D1742C();
  v16 = v130;
  v131 = [v359 meters];
  sub_1B4D1745C();

  sub_1B4D1742C();
  (v6)(v8, v10);
  v318 = objc_opt_self();
  v132 = [v318 seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v133 = v288;
  sub_1B4D1741C();
  v134 = [v119 startDate];
  sub_1B4D1775C();

  a3 = v324;
  sub_1B4D176FC();
  v136 = v135;
  v137 = v319;
  (v16)(v127, v319);
  v138 = [v314 endDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v140 = v139;
  v301 = v16;
  (v16)(v127, v137);
  v141 = v349;
  v142 = v10;
  v143 = v289;
  sub_1B4D1744C();
  (v337)(&v143[*(v141 + 28)], v297, v142);
  (*v284)(&v143[*(v141 + 32)], v133, v346);
  *v143 = v136;
  *(v143 + 1) = v140;
  v144 = *&v340[*(v330 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C80, &qword_1B4D47070);
  v145 = ((*(v292 + 80) + 32) & ~*(v292 + 80));
  v356 = *(v292 + 72);
  v146 = swift_allocObject();
  *(v146 + 16) = v283;
  sub_1B4C63E94(v143, v145 + v146, type metadata accessor for DistanceSampleIntervalRecord);
  v361 = v144;

  sub_1B4997A74(v146);
  v147 = v361;
  v337 = *(v361 + 16);
  if (!v337)
  {
    v321 = MEMORY[0x1E69E7CC0];
LABEL_105:

    v361 = v321;

    v239 = v299;
    sub_1B4C5C220(&v361, sub_1B4C5ECB8, sub_1B4C5D1D4);
    v74 = &v331;
    v299 = v239;
    if (v239)
    {
      goto LABEL_181;
    }

    a2 = sub_1B4C5B7F8(v285, v361);
    v51 = v300;
    if (v242)
    {
      v15 = v242;
      v7 = v241;
      v10 = v240;
      v73 = sub_1B4D18DDC();
      swift_unknownObjectRetain_n();
      v244 = swift_dynamicCastClass();
      if (!v244)
      {
        swift_unknownObjectRelease();
        v244 = MEMORY[0x1E69E7CC0];
      }

      v51 = *(v244 + 16);

      if (__OFSUB__(v15 >> 1, v7))
      {
        goto LABEL_171;
      }

      if (v51 == ((v15 >> 1) - v7))
      {
        v176 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v10 = v360;
        v51 = v300;
        if (v176)
        {
LABEL_115:
          sub_1B4C63EFC(v289, type metadata accessor for DistanceSampleIntervalRecord);
          (*v339)(v288, v346);
          (v6)(v297, v10);
          (v6)(v309, v10);
          v301(v324, v319);
          v174 = v330;
          v175 = v340;
          goto LABEL_116;
        }

        v176 = MEMORY[0x1E69E7CC0];
LABEL_114:
        swift_unknownObjectRelease();
        goto LABEL_115;
      }

      swift_unknownObjectRelease();
      v242 = v15;
      v241 = v7;
      v240 = v10;
      v51 = v300;
    }

    sub_1B4C5C4C0(a2, v240, v241, v242, &qword_1EB8A7C80, &qword_1B4D47070, type metadata accessor for DistanceSampleIntervalRecord);
    v176 = v243;
    v10 = v360;
    goto LABEL_114;
  }

  v148 = 0;
  v303 = v145;
  v149 = v145 + v361;
  v321 = MEMORY[0x1E69E7CC0];
  v8 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
  v336 = v361;
  while (v148 < *(v147 + 16))
  {
    sub_1B4C63E94(v149, v347, type metadata accessor for DistanceSampleIntervalRecord);
    v150 = [v359 v8[460]];
    v151 = v357;
    v152 = v360;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v154 = v153;
    (v6)(v151, v152);
    if (v154 <= 0.0)
    {
      if (qword_1EDC36E80 == -1)
      {
        goto LABEL_65;
      }

LABEL_63:
      swift_once();
      goto LABEL_65;
    }

    v155 = [v318 seconds];
    v156 = v334;
    v157 = v346;
    sub_1B4D1745C();

    sub_1B4D1742C();
    (*v339)(v156, v157);
    if (qword_1EDC36E80 != -1)
    {
      goto LABEL_63;
    }

LABEL_65:
    v158 = qword_1EDC36E88;
    type metadata accessor for UnitPace();
    v159 = v158;
    a3 = v332;
    sub_1B4D1741C();
    v8 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v160 = v345;
    v16 = v343;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v161 = *v342;
    (*v342)(v160, v16);
    v162 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    v163 = v335;
    sub_1B4D1741C();
    v161(a3, v16);
    v164 = v344;
    sub_1B4D1742C();
    v166 = v165;
    (*v341)(v163, v164);
    if (v166 >= 14.0 || (sub_1B4D1742C(), v167 <= 0.0))
    {
      sub_1B4C63EFC(v347, type metadata accessor for DistanceSampleIntervalRecord);
    }

    else
    {
      sub_1B4C63F5C(v347, v315, type metadata accessor for DistanceSampleIntervalRecord);
      v168 = v321;
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v361 = v168;
      v170 = v303;
      if (v169)
      {
        v171 = v168;
      }

      else
      {
        sub_1B4BCF57C(0, *(v168 + 16) + 1, 1);
        v171 = v361;
      }

      v173 = *(v171 + 16);
      v172 = *(v171 + 24);
      if (v173 >= v172 >> 1)
      {
        sub_1B4BCF57C((v172 > 1), v173 + 1, 1);
        v171 = v361;
      }

      *(v171 + 16) = v173 + 1;
      v321 = v171;
      sub_1B4C63F5C(v315, v170 + v171 + v173 * v356, type metadata accessor for DistanceSampleIntervalRecord);
    }

    v147 = v336;
    ++v148;
    v149 += v356;
    if (v337 == v148)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v6 = MEMORY[0x1E69E7CC0];
LABEL_158:

  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
    v271 = sub_1B4D18AEC();
  }

  else
  {
    v271 = MEMORY[0x1E69E7CC8];
  }

  v272 = v299;
  v362 = v271;
  sub_1B4C5BEBC(v6, 1, &v362);
  if (!v272)
  {

    return v362;
  }

LABEL_183:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for WorkoutInsight.DistanceAccumulator(uint64_t a1)
{
  result = qword_1EDC37570;
  if (!qword_1EDC37570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4C63E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C63EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C63F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B4C63FEC(uint64_t a1)
{
  sub_1B498AFB8(319, &qword_1EDC36DD0, 0x1E696C358);
  if (v1 <= 0x3F)
  {
    sub_1B4B59D8C(319);
    if (v2 <= 0x3F)
    {
      sub_1B4C640B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C640B8(uint64_t a1)
{
  if (!qword_1EDC36E10)
  {
    type metadata accessor for DistanceSampleIntervalRecord(255);
    v1 = sub_1B4D184BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC36E10);
    }
  }
}

uint64_t sub_1B4C64110(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    switch(a1)
    {
      case '4':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "t breakthrough moment.";
          v7 = 0xD0000000000003F7;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "breakthrough moment.";
          v7 = 0xD000000000000336;
        }

        break;
      case ',':
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "onth/this year/ever).";
        v7 = 0xD00000000000033CLL;
        break;
      case '%':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "eakthrough moment.";
          v7 = 0xD0000000000003F8;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "eakthrough moment.";
          v7 = 0xD000000000000332;
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = " the current workout moment.";
        v7 = 0xD00000000000033ELL;
        goto LABEL_21;
      }

      if (a1 == 24)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "e current breakthrough moment.";
        v7 = 0xD000000000000334;
        goto LABEL_21;
      }

LABEL_15:
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "through* moment:\n\n{";
      v7 = 0xD000000000000295;
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " current breakthrough moment.";
      v7 = 0xD000000000000342;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "current workout moment.";
      v7 = 0xD00000000000033DLL;
    }
  }

LABEL_21:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

uint64_t StreamingAudioChunk.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);
  v7 = a1[3];
  v8 = a1[4];
  v12 = *(a1 + 10);
  v9 = a1[6];
  v10 = a1[7];

  sub_1B498FC0C(v7, v8);
  sub_1B498FC0C(v9, v10);
  result = sub_1B4C64624(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  return result;
}

uint64_t sub_1B4C64624(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioChunk.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  sub_1B4C649E0(&qword_1EB8A6A20, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C64724(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 4);
  v14 = *(a2 + 3);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B4C64BC0(&v14, &v13);
  result = sub_1B49DDD2C(v6, v7);
  *(a1 + 24) = v14;
  v9 = a2[5];
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    *(a1 + 40) = v9;
    v13 = *(a2 + 3);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    sub_1B4C64BC0(&v13, &v12);
    result = sub_1B49DDD2C(v10, v11);
    *(a1 + 48) = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4C6480C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v9 = sub_1B4C64B6C();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4C649E0(&qword_1EB8A6A20, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);
    v4 = sub_1B4D17D6C();
    sub_1B4C64624(v6);
  }

  return v4;
}

double sub_1B4C64934@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B270F0(a1, a2, v8);
  if (!v3)
  {
    v6 = v8[1];
    *a3 = v8[0];
    a3[1] = v6;
    result = *&v9;
    v7 = v10;
    a3[2] = v9;
    a3[3] = v7;
  }

  return result;
}

uint64_t sub_1B4C649E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C64A24()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  sub_1B4C649E0(&qword_1EB8A6A20, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C64AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);
  v7 = a1[3];
  v8 = a1[4];
  v12 = *(a1 + 10);
  v9 = a1[6];
  v10 = a1[7];

  sub_1B498FC0C(v7, v8);
  sub_1B498FC0C(v9, v10);
  result = sub_1B4C64624(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  return result;
}

unint64_t sub_1B4C64B6C()
{
  result = qword_1EB8AD4E8;
  if (!qword_1EB8AD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4E8);
  }

  return result;
}

uint64_t VitalsDay.init(_:)@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*a1 > 3 || (v4 = a1[1], v4 > 3) || (v5 = a1[2], v5 > 3) || (v6 = a1[3], v6 > 3) || (v7 = a1[4], v7 >= 4))
  {
    sub_1B4C64D2C();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  else
  {
    result = sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
  }

  return result;
}

unint64_t sub_1B4C64D2C()
{
  result = qword_1EB8AD4F0;
  if (!qword_1EB8AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4F0);
  }

  return result;
}

uint64_t VitalsDay.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17DAC();
}

uint32x4_t sub_1B4C64E3C(uint32x4_t *a1, uint8x8_t a2)
{
  v3 = *(v2 + 20);
  a2.i32[0] = *(v2 + 16);
  result = vmovl_u16(*&vmovl_u8(a2));
  *a1 = result;
  a1[1].i32[0] = v3;
  return result;
}

int *sub_1B4C64E58(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 4);
  v11 = *v1;
  v12 = v5;
  v7 = sub_1B4C65B20();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    v8 = sub_1B4D17D6C();
    sub_1B4C65368(v6, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  return v8;
}

uint64_t sub_1B4C64FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B2736C(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 4) = v6;
  }

  return result;
}

uint64_t sub_1B4C64FE0()
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17DAC();
}

uint64_t VitalsContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C65290(a1 + *(v12 + 20), v7);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 4) = 0;
    sub_1B4D17BBC();
    if (v13(v7, 1, v8) != 1)
    {
      sub_1B4C65300(v7);
    }
  }

  else
  {
    sub_1B4C653C8(v7, v11);
  }

  VitalsDay.init(_:)(v11, &v17);
  result = sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  if (!v2)
  {
    v15 = v18;
    *a2 = v17;
    *(a2 + 4) = v15;
  }

  return result;
}

uint64_t sub_1B4C65290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C65300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C65368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C653C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VitalsContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C654E8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[16] = v2;
  v14[17] = v4;
  v14[18] = v5;
  v14[19] = v6;
  v14[20] = v7;
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4D17DAC();
  v12 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4C65300(a1 + v12);
  sub_1B4C653C8(v11, a1 + v12);
  return (*(v9 + 56))(a1 + v12, 0, 1, v8);
}

int *sub_1B4C65730(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 4);
  v11 = *v1;
  v12 = v5;
  v7 = sub_1B4C65ACC();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
    v8 = sub_1B4D17D6C();
    sub_1B4C65368(v6, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  return v8;
}

uint64_t sub_1B4C6587C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B275C0(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 4) = v6;
  }

  return result;
}

uint64_t sub_1B4C65948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4C65990()
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4C65A78()
{
  result = qword_1EB8AD4F8;
  if (!qword_1EB8AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4F8);
  }

  return result;
}

unint64_t sub_1B4C65ACC()
{
  result = qword_1EB8AD500;
  if (!qword_1EB8AD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD500);
  }

  return result;
}

unint64_t sub_1B4C65B20()
{
  result = qword_1EB8AD508;
  if (!qword_1EB8AD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD508);
  }

  return result;
}

uint64_t sub_1B4C65BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v189) = a3;
  v188 = a2;
  v179 = a1;
  v192 = a4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v168 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  MEMORY[0x1EEE9AC00](v5);
  v170 = &v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v178 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v183 = *(v11 - 8);
  v184 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v168 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v168 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v177 = &v168 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v180 = &v168 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v24 = *(v23 - 8);
  v190 = v23;
  v191 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v168 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v168 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v185 = *(v32 - 8);
  v186 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v176 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v181 = &v168 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v168 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v168 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v168 - v46;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  MEMORY[0x1EEE9AC00](v187);
  MEMORY[0x1EEE9AC00](&v168 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v168 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v168 - v54;
  v61.n128_f64[0] = MEMORY[0x1EEE9AC00](v56);
  v63 = &v168 - v62;
  v64 = v189;
  if (v189 > 1u)
  {
    if (v189 != 2)
    {
      v85 = v192;
      v86 = *(v191 + 56);
      v87 = v190;

      return v86(v85, 1, 1, v87, v61);
    }

    v74 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v75 = v188;
    sub_1B4974FBC(v188 + *(v74 + 56), v31, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v77 = v185;
    v76 = v186;
    v78 = *(v185 + 6);
    if (v78(v31, 1, v186) != 1)
    {
      v92 = v181;
      v93 = v31;
      v94 = *(v77 + 4);
      v94(v181, v93, v76);
      sub_1B4974FBC(v75 + *(v74 + 52), v28, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      if (v78(v28, 1, v76) == 1)
      {
        (*(v77 + 1))(v92, v76);
        v72 = &qword_1EB8A6D18;
        v73 = &unk_1B4D1BCA0;
        v79 = v28;
        goto LABEL_54;
      }

      v104 = v176;
      v94(v176, v28, v76);
      v105 = sub_1B4A61EE8();
      if (v106)
      {
        v107 = *(v77 + 1);
        v107(v104, v76);
        v108 = v181;
      }

      else
      {
        v119 = v105;
        v120 = sub_1B4A61EE8();
        v121 = v181;
        if ((v122 & 1) == 0)
        {
          v134 = v120;
          v135 = v172;
          v136 = *(v77 + 2);
          v44 = v171;
          v136(&v171[*(v172 + 28)], v181, v76);
          v136(&v44[v135[8]], v104, v76);
          type metadata accessor for UnitCount();
          sub_1B4D1744C();
          v137 = *(v77 + 1);
          v137(v104, v76);
          v137(v121, v76);
          *v44 = 2;
          *&v44[v135[10]] = v119;
          *&v44[v135[11]] = v134;
          v44[v135[12]] = 0;
          v72 = &qword_1EB8A8DA8;
          v73 = &qword_1B4D25850;
          goto LABEL_17;
        }

        v107 = *(v77 + 1);
        v107(v104, v76);
        v108 = v121;
      }

      v107(v108, v76);
      return (*(v191 + 56))(v192, 1, 1, v190);
    }

    v72 = &qword_1EB8A6D18;
    v73 = &unk_1B4D1BCA0;
    v79 = v31;
    goto LABEL_54;
  }

  v189 = v58;
  if (v64)
  {
    v184 = v57;
    v185 = v59;
    v186 = v60;
    v80 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v81 = v188;
    sub_1B4974FBC(v188 + *(v80 + 48), v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v82 = v189;
    v83 = v189[6];
    v84 = v187;
    if (v83(v47, 1, v187) != 1)
    {
      v95 = v82[4];
      v95(v63, v47, v84);
      sub_1B4974FBC(v81 + *(v80 + 44), v38, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v83(v38, 1, v84) == 1)
      {
        (v82[1])(v63, v84);
        v72 = &qword_1EB8A6C90;
        v73 = &unk_1B4D1BBD0;
        v79 = v38;
        goto LABEL_54;
      }

      v109 = v186;
      v95(v186, v38, v84);
      v110 = sub_1B4A61B14();
      if (v111)
      {
        v112 = v189[1];
        v112(v109, v84);
      }

      else
      {
        v123 = v110;
        v124 = sub_1B4A61B14();
        if ((v125 & 1) == 0)
        {
          v188 = v124;
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v138 = v185;
          v183 = v123;
          v139 = v186;
          sub_1B4D1744C();
          v140 = [objc_opt_self() minutes];
          v141 = v184;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v143 = v142;
          (v189[1])(v141, v84);
          v144 = v143 <= 30.0 && v143 >= 10.0;
          v145 = v190;
          v146 = v173;
          v95(&v173[v190[7]], v63, v84);
          v95(&v146[v145[8]], v139, v84);
          *v146 = 1;
          v95(&v146[v145[9]], v138, v84);
          *&v146[v145[10]] = v183;
          *&v146[v145[11]] = v188;
          v146[v145[12]] = v144;
          v147 = v192;
          sub_1B498B270(v146, v192, qword_1EB8A8DB8, &qword_1B4D25860);
          return (*(v191 + 56))(v147, 0, 1, v145);
        }

        v112 = v189[1];
        v112(v186, v84);
      }

      v112(v63, v84);
      return (*(v191 + 56))(v192, 1, 1, v190);
    }

    v72 = &qword_1EB8A6C90;
    v73 = &unk_1B4D1BBD0;
    v79 = v47;
LABEL_54:
    sub_1B4975024(v79, v72, v73);
    return (*(v191 + 56))(v192, 1, 1, v190);
  }

  v65 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v66 = v65;
  v67 = v188;
  v68 = v188 + v65[18];
  if ((*(v68 + 8) & 1) != 0 || *v68 != 2)
  {
    v44 = v182;
    sub_1B4974FBC(v188 + v65[8], v182, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v89 = v183;
    v90 = v184;
    v91 = *(v183 + 48);
    if (v91(v44, 1, v184) == 1)
    {
      v72 = &qword_1EB8A6CA8;
      v73 = &unk_1B4D1C2B0;
      goto LABEL_17;
    }

    v187 = v5;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v96 = v177;
    v189 = qword_1EDC36DF8;
    sub_1B4D1745C();
    v97 = v44;
    v98 = *(v89 + 8);
    v98(v97, v90);
    v99 = v180;
    v100 = v96;
    v101 = *(v89 + 32);
    v101(v180, v100, v90);
    v102 = v67 + v66[7];
    v103 = v178;
    sub_1B4974FBC(v102, v178, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v91(v103, 1, v90) == 1)
    {
      v98(v99, v90);
      v72 = &qword_1EB8A6CA8;
      v73 = &unk_1B4D1C2B0;
      v79 = v103;
      goto LABEL_54;
    }

    v113 = v174;
    sub_1B4D1745C();
    v98(v103, v90);
    v114 = v175;
    v101(v175, v113, v90);
    v115 = sub_1B4A612D4();
    if (v116)
    {
      v98(v114, v90);
      v98(v180, v90);
    }

    else
    {
      v126 = v115;
      v127 = sub_1B4A612D4();
      if ((v128 & 1) == 0)
      {
        v188 = v127;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v148 = v169;
        v149 = v180;
        sub_1B4D1744C();
        v150 = v168;
        v151 = v184;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v153 = v152;
        v98(v150, v151);
        v154 = v153 <= 100.0 && v153 >= 20.0;
        v155 = v187;
        v156 = v101;
        v41 = v170;
        v156(&v170[*(v187 + 28)], v149, v151);
        v156(&v41[v155[8]], v175, v151);
        *v41 = 0;
        v156(&v41[v155[9]], v148, v151);
        *&v41[v155[10]] = v126;
        *&v41[v155[11]] = v188;
        v41[v155[12]] = v154;
        v72 = &qword_1EB8A8DB0;
        v73 = &qword_1B4D25858;
        goto LABEL_53;
      }

      v129 = v184;
      v98(v114, v184);
      v98(v180, v129);
    }

    return (*(v191 + 56))(v192, 1, 1, v190);
  }

  sub_1B4974FBC(v188 + v65[10], v44, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v69 = v189;
  v70 = v189[6];
  v71 = v187;
  if (v70(v44, 1, v187) == 1)
  {
    v72 = &qword_1EB8A6C90;
    v73 = &unk_1B4D1BBD0;
LABEL_17:
    v79 = v44;
    goto LABEL_54;
  }

  v186 = v70;
  v117 = v67;
  v118 = v69[4];
  v118(v55, v44, v71);
  sub_1B4974FBC(v117 + v66[9], v41, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v186(v41, 1, v71) == 1)
  {
    (v69[1])(v55, v71);
    v72 = &qword_1EB8A6C90;
    v73 = &unk_1B4D1BBD0;
LABEL_53:
    v79 = v41;
    goto LABEL_54;
  }

  v118(v52, v41, v71);
  v130 = sub_1B4A612D4();
  if (v131)
  {
    v132 = v71;
    v133 = v189[1];
    v133(v52, v71);
LABEL_58:
    v133(v55, v132);
    return (*(v191 + 56))(v192, 1, 1, v190);
  }

  v157 = v130;
  v158 = sub_1B4A612D4();
  if (v159)
  {
    v133 = v189[1];
    v132 = v187;
    v133(v52, v187);
    goto LABEL_58;
  }

  v160 = v158;
  v162 = v189;
  v161 = v190;
  v163 = v189[2];
  v164 = v173;
  v165 = v187;
  v163(&v173[v190[7]], v55, v187);
  v163(&v164[v161[8]], v52, v165);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1744C();
  v166 = v162[1];
  v166(v52, v165);
  v166(v55, v165);
  *v164 = 0;
  *&v164[v161[10]] = v157;
  *&v164[v161[11]] = v160;
  v164[v161[12]] = 0;
  v167 = v192;
  sub_1B498B270(v164, v192, qword_1EB8A8DB8, &qword_1B4D25860);
  return (*(v191 + 56))(v167, 0, 1, v161);
}

uint64_t sub_1B4C66E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v197) = a3;
  v196 = a2;
  v188 = a1;
  v199 = a4;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v176 - v4;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v200 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v179 = &v176 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v187 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v191 = &v176 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v192 = *(v10 - 8);
  v193 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v176 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v176 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v176 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v176 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v189 = &v176 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v176 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v176 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v194 = *(v30 - 8);
  v195 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v184 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v190 = &v176 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v176 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v176 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v176 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v176 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v176 - v53;
  v61.n128_f64[0] = MEMORY[0x1EEE9AC00](v55);
  v63 = &v176 - v62;
  v64 = v197;
  if (v197 > 1u)
  {
    if (v197 == 2)
    {
      v74 = type metadata accessor for HKActivitySummaryRepresentable(0);
      v75 = v196;
      sub_1B4974FBC(v196 + *(v74 + 56), v29, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      v77 = v194;
      v76 = v195;
      v78 = *(v194 + 48);
      if (v78(v29, 1, v195) == 1)
      {
        v71 = &qword_1EB8A6D18;
        v72 = &unk_1B4D1BCA0;
        v73 = v29;
        goto LABEL_49;
      }

      v92 = v190;
      v93 = v29;
      v94 = *(v77 + 32);
      v94(v190, v93, v76);
      sub_1B4974FBC(v75 + *(v74 + 52), v26, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      if (v78(v26, 1, v76) == 1)
      {
        (*(v77 + 8))(v92, v76);
        v71 = &qword_1EB8A6D18;
        v72 = &unk_1B4D1BCA0;
        v73 = v26;
        goto LABEL_49;
      }

      v104 = v184;
      v94(v184, v26, v76);
      v105 = sub_1B4A61EE8();
      if (v106)
      {
        v107 = *(v77 + 8);
        v107(v104, v76);
        v108 = v190;
      }

      else
      {
        v123 = v105;
        v124 = sub_1B4A61EE8();
        v125 = v190;
        if ((v126 & 1) == 0)
        {
          v138 = v124;
          v139 = v181;
          v140 = *(v77 + 16);
          v141 = v180;
          v140(&v180[*(v181 + 28)], v190, v76);
          v140(&v141[v139[8]], v104, v76);
          type metadata accessor for UnitCount();
          sub_1B4D1744C();
          v142 = *(v77 + 8);
          v142(v104, v76);
          v142(v125, v76);
          *v141 = 2;
          *&v141[v139[10]] = v123;
          *&v141[v139[11]] = v138;
          v141[v139[12]] = 0;
          v71 = &qword_1EB8A8DA8;
          v72 = &qword_1B4D25850;
          v73 = v141;
          goto LABEL_49;
        }

        v107 = *(v77 + 8);
        v107(v104, v76);
        v108 = v125;
      }

      v107(v108, v76);
      return (*(v200 + 56))(v199, 1, 1, v198);
    }

    v84 = v199;
    v85 = *(v200 + 56);
    v86 = v198;

    return v85(v84, 1, 1, v86, v61);
  }

  else
  {
    v197 = v58;
    v195 = v56;
    if (v64)
    {
      v191 = v57;
      v192 = v59;
      v193 = v22;
      v194 = v60;
      v79 = type metadata accessor for HKActivitySummaryRepresentable(0);
      v80 = v196;
      sub_1B4974FBC(v196 + *(v79 + 48), v45, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v81 = v197;
      v82 = *(v197 + 48);
      v83 = v195;
      if (v82(v45, 1, v195) == 1)
      {
        v71 = &qword_1EB8A6C90;
        v72 = &unk_1B4D1BBD0;
        v73 = v45;
        goto LABEL_49;
      }

      v95 = v45;
      v96 = *(v81 + 32);
      v96(v63, v95, v83);
      sub_1B4974FBC(v80 + *(v79 + 44), v36, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v82(v36, 1, v83) == 1)
      {
        (*(v81 + 8))(v63, v83);
        v71 = &qword_1EB8A6C90;
        v72 = &unk_1B4D1BBD0;
        v73 = v36;
        goto LABEL_49;
      }

      v109 = v194;
      v96(v194, v36, v83);
      v110 = sub_1B4A61B14();
      if (v111)
      {
        v112 = *(v197 + 8);
        v112(v109, v83);
        v112(v63, v83);
      }

      else
      {
        v127 = v110;
        v128 = sub_1B4A61B14();
        if ((v129 & 1) == 0)
        {
          v196 = v128;
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v143 = v192;
          v144 = v194;
          sub_1B4D1744C();
          v145 = [objc_opt_self() minutes];
          v146 = v191;
          v147 = v96;
          v148 = v195;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v150 = v149;
          (*(v197 + 8))(v146, v148);
          v151 = v150 <= 30.0 && v150 >= 10.0;
          v152 = v193;
          v39 = v182;
          v147(&v182[v193[7]], v63, v148);
          v147(&v39[v152[8]], v144, v148);
          *v39 = 1;
          v147(&v39[v152[9]], v143, v148);
          *&v39[v152[10]] = v127;
          *&v39[v152[11]] = v196;
          v39[v152[12]] = v151;
          v71 = qword_1EB8A8DB8;
          v72 = &qword_1B4D25860;
          goto LABEL_48;
        }

        v130 = *(v197 + 8);
        v131 = v195;
        v130(v194, v195);
        v130(v63, v131);
      }

      return (*(v200 + 56))(v199, 1, 1, v198);
    }

    v65 = type metadata accessor for HKActivitySummaryRepresentable(0);
    v66 = v65;
    v67 = v196;
    v68 = v196 + v65[18];
    if ((*(v68 + 8) & 1) == 0 && *v68 == 2)
    {
      sub_1B4974FBC(v196 + v65[10], v42, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v69 = v197;
      v70 = *(v197 + 48);
      if (v70(v42, 1, v195) == 1)
      {
        v71 = &qword_1EB8A6C90;
        v72 = &unk_1B4D1BBD0;
        v73 = v42;
LABEL_49:
        sub_1B4975024(v73, v71, v72);
        return (*(v200 + 56))(v199, 1, 1, v198);
      }

      v193 = v22;
      v119 = v67;
      v120 = *(v69 + 32);
      v121 = v42;
      v122 = v195;
      v194 = v69 + 32;
      v120(v54, v121, v195);
      sub_1B4974FBC(v119 + v66[9], v39, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v70(v39, 1, v122) == 1)
      {
        (*(v69 + 8))(v54, v122);
        v71 = &qword_1EB8A6C90;
        v72 = &unk_1B4D1BBD0;
LABEL_48:
        v73 = v39;
        goto LABEL_49;
      }

      v120(v51, v39, v122);
      v135 = sub_1B4A612D4();
      if ((v136 & 1) == 0)
      {
        v164 = v135;
        v165 = sub_1B4A612D4();
        if (v166)
        {
          v167 = *(v197 + 8);
          v168 = v195;
          v167(v51, v195);
          v167(v54, v168);
          return (*(v200 + 56))(v199, 1, 1, v198);
        }

        v169 = v165;
        v170 = v193;
        v171 = v197;
        v172 = *(v197 + 16);
        v173 = v182;
        v174 = v195;
        v172(&v182[v193[7]], v54, v195);
        v172(&v173[v170[8]], v51, v174);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        sub_1B4D1744C();
        v175 = *(v171 + 8);
        v175(v51, v174);
        v175(v54, v174);
        *v173 = 0;
        *&v173[v170[10]] = v164;
        *&v173[v170[11]] = v169;
        v173[v170[12]] = 0;
        v71 = qword_1EB8A8DB8;
        v72 = &qword_1B4D25860;
        v73 = v173;
        goto LABEL_49;
      }

      v137 = *(v197 + 8);
      v137(v51, v122);
      v137(v54, v122);
      return (*(v200 + 56))(v199, 1, 1, v198);
    }

    v88 = v191;
    sub_1B4974FBC(v196 + v65[8], v191, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v89 = v192;
    v90 = v193;
    v91 = *(v192 + 6);
    if (v91(v88, 1, v193) == 1)
    {
      v71 = &qword_1EB8A6CA8;
      v72 = &unk_1B4D1C2B0;
      v73 = v88;
      goto LABEL_49;
    }

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v97 = qword_1EDC36DF8;
    v98 = v186;
    sub_1B4D1745C();
    v197 = *(v89 + 1);
    (v197)(v88, v90);
    v99 = v189;
    v100 = v98;
    v101 = *(v89 + 4);
    v101(v189, v100, v90);
    v102 = v67 + v66[7];
    v103 = v187;
    sub_1B4974FBC(v102, v187, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v91(v103, 1, v90) == 1)
    {
      (v197)(v99, v90);
      v71 = &qword_1EB8A6CA8;
      v72 = &unk_1B4D1C2B0;
      v73 = v103;
      goto LABEL_49;
    }

    v113 = v183;
    v195 = v97;
    sub_1B4D1745C();
    v114 = v197;
    (v197)(v103, v90);
    v115 = v185;
    v101(v185, v113, v90);
    v116 = sub_1B4A612D4();
    if (v117)
    {
      v118 = v115;
LABEL_40:
      v114(v118, v90);
      v114(v189, v90);
      return (*(v200 + 56))(v199, 1, 1, v198);
    }

    v132 = v116;
    v133 = sub_1B4A612D4();
    if (v134)
    {
      v118 = v185;
      goto LABEL_40;
    }

    v196 = v133;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v153 = v178;
    v154 = v185;
    v194 = v132;
    v155 = v189;
    sub_1B4D1744C();
    v156 = v177;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v158 = v157;
    v114(v156, v90);
    v159 = v158 <= 100.0 && v158 >= 20.0;
    v160 = v101;
    v161 = v198;
    v162 = v179;
    v160(&v179[*(v198 + 28)], v155, v90);
    v160(&v162[v161[8]], v154, v90);
    *v162 = 0;
    v160(&v162[v161[9]], v153, v90);
    *&v162[v161[10]] = v194;
    *&v162[v161[11]] = v196;
    v162[v161[12]] = v159;
    v163 = v199;
    sub_1B498B270(v162, v199, &qword_1EB8A8DB0, &qword_1B4D25858);
    return (*(v200 + 56))(v163, 0, 1, v161);
  }
}

uint64_t sub_1B4C68078@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4C680EC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C6811C();
  result = sub_1B4C68170();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6811C()
{
  result = qword_1EB8AD510;
  if (!qword_1EB8AD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD510);
  }

  return result;
}

unint64_t sub_1B4C68170()
{
  result = qword_1EB8AD518;
  if (!qword_1EB8AD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD518);
  }

  return result;
}

unint64_t sub_1B4C681C8()
{
  result = qword_1EB8AD520;
  if (!qword_1EB8AD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD520);
  }

  return result;
}

unint64_t sub_1B4C68220()
{
  result = qword_1EB8AD528;
  if (!qword_1EB8AD528)
  {
    type metadata accessor for RingProgressFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD528);
  }

  return result;
}

unint64_t sub_1B4C6827C()
{
  result = qword_1EB8AD530;
  if (!qword_1EB8AD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD530);
  }

  return result;
}

unint64_t sub_1B4C682D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD550, &qword_1B4D419C8);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD558, &unk_1B4D419D0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  v5 = *(type metadata accessor for WorkoutState(0) + 36);
  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 16))(v4 + v3, a1 + v5, v6);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1B4C9655C(v4);
  swift_setDeallocating();
  sub_1B4975024(v4 + v3, &qword_1EB8AD558, &unk_1B4D419D0);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_1B4C68438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4C684F8(a1, a3, a4);
}

uint64_t sub_1B4C684F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for RingProgressFact(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for ActivitySummaryContext(0);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C687D4, 0, 0);
}

uint64_t sub_1B4C687D4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for RingProgressFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D0, &unk_1B4D419B0);
  v73 = sub_1B4D181CC();
  v74 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v73, v74, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[22];
    v9 = &qword_1EB8AA5C8;
    v10 = &qword_1B4D39050;
LABEL_13:
    sub_1B4975024(v8, v9, v10);
LABEL_14:
    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v11 = v0[14];
  v12 = v0[5];
  sub_1B4C690E0(v0[22], v0[25], type metadata accessor for ActivitySummaryContext);
  sub_1B4974FBC(v12, v11, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v13 = type metadata accessor for WorkoutState(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[14];
  if (v14 == 1)
  {
    sub_1B4975024(v0[14], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v16 + 56))(v17, 1, 1, v15);
  }

  else
  {
    sub_1B4974FBC(v18 + *(v13 + 128), v0[16], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4C69148(v18, type metadata accessor for WorkoutState);
    v19 = *(v16 + 48);
    if (v19(v17, 1, v15) != 1)
    {
      v23 = v0[18];
      v24 = v0[19];
      v25 = v0[17];
      sub_1B4C690E0(v0[16], v25, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v24 + 56))(v25, 0, 1, v23);
      goto LABEL_9;
    }
  }

  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[16];
  sub_1B4974FBC(v0[25], v0[17], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v19 = *(v21 + 48);
  if (v19(v22, 1, v20) != 1)
  {
    sub_1B4975024(v0[16], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_9:
  v27 = v0[17];
  v26 = v0[18];
  if (v19(v27, 1, v26) == 1)
  {
    sub_1B4C69148(v0[25], type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v27;
    goto LABEL_13;
  }

  v28 = v0[15];
  v29 = v0[4];
  sub_1B4C690E0(v27, v0[21], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4974FBC(v29 + *(v13 + 128), v28, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v30 = v19(v28, 1, v26);
  v31 = v0[15];
  if (v30 == 1)
  {
    v32 = v0[25];
    sub_1B4C69148(v0[21], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v32, type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v31;
    goto LABEL_13;
  }

  v35 = v0[20];
  sub_1B4C690E0(v0[15], v35, type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v35 + 25))
  {
    v36 = v0[25];
    v37 = v0[21];
    sub_1B4C69148(v0[20], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v37, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v36, type metadata accessor for ActivitySummaryContext);
    goto LABEL_14;
  }

  v38 = v0[20];
  v39 = v0[18];
  v40 = v0[13];
  v41 = v0[11];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  v44 = v38 + *(v39 + 72);
  if ((*(v44 + 8) & 1) != 0 || *v44 != 2)
  {
    v45 = v0[12];
    v46 = v0[13];
    sub_1B4C66E0C(v0[21], v0[20], 0, v45);
    v47 = &qword_1EB8AD540;
    v48 = &unk_1B4D419A0;
  }

  else
  {
    v45 = v0[10];
    v46 = v0[11];
    sub_1B4C65BA4(v0[21], v0[20], 0, v45);
    v47 = &qword_1EB8AD538;
    v48 = &qword_1B4D41998;
  }

  sub_1B4975024(v46, v47, v48);
  sub_1B498B270(v45, v46, v47, v48);
  sub_1B4C65BA4(v0[21], v0[20], 1, v0[9]);
  v49 = sub_1B4A612D4();
  if (v50 & 1) != 0 || (v51 = *&v49, v52 = sub_1B4A61B14(), (v53) || (v54 = *&v52, v55 = COERCE_DOUBLE(sub_1B4A61EE8()), (v56))
  {
    v57 = 0;
  }

  else if (v51 < 1.0)
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    if (v54 >= 1.0)
    {
      v57 = v55 >= 1.0;
    }
  }

  v70 = v0[21];
  v71 = v0[25];
  v68 = v0[13];
  v69 = v0[20];
  v58 = v0[11];
  v59 = v0[8];
  v60 = v0[9];
  v61 = v0[6];
  v62 = v0[7];
  v63 = *(v69 + *(v0[18] + 76));
  sub_1B4974FBC(v68, v59, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4974FBC(v58, v59 + v61[5], &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4974FBC(v60, v59 + v61[6], &qword_1EB8AD538, &qword_1B4D41998);
  v64 = v61[7];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  (*(*(v65 - 8) + 56))(v59 + v64, 1, 1, v65);
  *(v59 + v61[8]) = v57;
  *(v59 + v61[9]) = v63 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD548, &qword_1B4D419C0);
  v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1B4D1A800;
  v72 = v67;
  sub_1B4C690E0(v59, v67 + v66, type metadata accessor for RingProgressFact);
  sub_1B4975024(v60, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4975024(v58, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4975024(v68, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4C69148(v69, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4C69148(v70, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4C69148(v71, type metadata accessor for ActivitySummaryContext);
LABEL_15:

  v33 = v0[1];

  return v33(v72);
}

uint64_t sub_1B4C690E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C69148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C691A8(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v19 = 0;
      return v19 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v19 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v19 & 1;
}

uint64_t sub_1B4C69404(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v19 = 0;
      return v19 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v19 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v19 & 1;
}

uint64_t sub_1B4C69660(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v19 = 0;
      return v19 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v19 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v19 & 1;
}

uint64_t RingProgressFact.init(moveCaloriesProgress:moveMinutesProgress:exerciseProgress:standProgress:closedAllThreeRings:isWheelchairUser:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1B498B270(a1, a7, &qword_1EB8AD540, &unk_1B4D419A0);
  v13 = type metadata accessor for RingProgressFact(0);
  sub_1B498B270(a2, a7 + v13[5], &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B498B270(a3, a7 + v13[6], &qword_1EB8AD538, &qword_1B4D41998);
  result = sub_1B498B270(a4, a7 + v13[7], &qword_1EB8AD560, &qword_1B4D419E0);
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t type metadata accessor for RingProgressFact(uint64_t a1)
{
  result = qword_1EB8AD568;
  if (!qword_1EB8AD568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RingProgressFact.moveRingPercentage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  sub_1B4974FBC(v0, &v15 - v5, &qword_1EB8AD540, &unk_1B4D419A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    v10 = *&v6[*(v7 + 40)];
    v11 = &qword_1EB8A8DB0;
    v12 = &qword_1B4D25858;
    v13 = v6;
LABEL_6:
    sub_1B4975024(v13, v11, v12);
    return v10;
  }

  sub_1B4975024(v6, &qword_1EB8AD540, &unk_1B4D419A0);
  v8 = type metadata accessor for RingProgressFact(0);
  sub_1B4974FBC(v0 + *(v8 + 20), v3, &qword_1EB8AD538, &qword_1B4D41998);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) != 1)
  {
    v10 = *&v3[*(v9 + 40)];
    v11 = qword_1EB8A8DB8;
    v12 = &qword_1B4D25860;
    v13 = v3;
    goto LABEL_6;
  }

  sub_1B4975024(v3, &qword_1EB8AD538, &qword_1B4D41998);
  return 0;
}

uint64_t _s19FitnessIntelligence16RingProgressFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD560, &qword_1B4D419E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v63 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD590, &qword_1B4D41A70);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v63 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD598, &qword_1B4D41A78);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5A0, &qword_1B4D41A80);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v63 - v26;
  v29 = *(v28 + 56);
  v76 = a1;
  sub_1B4974FBC(a1, &v63 - v26, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4974FBC(v78, &v27[v29], &qword_1EB8AD540, &unk_1B4D419A0);
  v30 = *(v19 + 48);
  if (v30(v27, 1, v18) == 1)
  {
    if (v30(&v27[v29], 1, v18) == 1)
    {
      sub_1B4975024(v27, &qword_1EB8AD540, &unk_1B4D419A0);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_1EB8AD5A0;
    v32 = &qword_1B4D41A80;
    v33 = v27;
LABEL_20:
    sub_1B4975024(v33, v31, v32);
    goto LABEL_21;
  }

  sub_1B4974FBC(v27, v24, &qword_1EB8AD540, &unk_1B4D419A0);
  if (v30(&v27[v29], 1, v18) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A8DB0, &qword_1B4D25858);
    goto LABEL_6;
  }

  sub_1B498B270(&v27[v29], v21, &qword_1EB8A8DB0, &qword_1B4D25858);
  v34 = sub_1B4C691A8(v24, v21);
  sub_1B4975024(v21, &qword_1EB8A8DB0, &qword_1B4D25858);
  sub_1B4975024(v24, &qword_1EB8A8DB0, &qword_1B4D25858);
  sub_1B4975024(v27, &qword_1EB8AD540, &unk_1B4D419A0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v35 = type metadata accessor for RingProgressFact(0);
  v36 = *(v35 + 20);
  v37 = v76;
  v38 = *(v77 + 48);
  sub_1B4974FBC(v76 + v36, v17, &qword_1EB8AD538, &qword_1B4D41998);
  v39 = v78 + v36;
  v40 = v78;
  sub_1B4974FBC(v39, &v17[v38], &qword_1EB8AD538, &qword_1B4D41998);
  v41 = v75;
  v42 = *(v74 + 48);
  if (v42(v17, 1, v75) == 1)
  {
    if (v42(&v17[v38], 1, v41) != 1)
    {
      goto LABEL_18;
    }

    sub_1B4975024(v17, &qword_1EB8AD538, &qword_1B4D41998);
  }

  else
  {
    v43 = v73;
    sub_1B4974FBC(v17, v73, &qword_1EB8AD538, &qword_1B4D41998);
    if (v42(&v17[v38], 1, v41) == 1)
    {
      goto LABEL_17;
    }

    v44 = v37;
    v45 = v40;
    v46 = v35;
    v47 = v71;
    sub_1B498B270(&v17[v38], v71, qword_1EB8A8DB8, &qword_1B4D25860);
    v48 = sub_1B4C69404(v43, v47);
    v49 = v47;
    v35 = v46;
    v40 = v45;
    v37 = v44;
    sub_1B4975024(v49, qword_1EB8A8DB8, &qword_1B4D25860);
    sub_1B4975024(v43, qword_1EB8A8DB8, &qword_1B4D25860);
    sub_1B4975024(v17, &qword_1EB8AD538, &qword_1B4D41998);
    if ((v48 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v74 = v35;
  v50 = *(v35 + 24);
  v51 = *(v77 + 48);
  v17 = v72;
  sub_1B4974FBC(v37 + v50, v72, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4974FBC(v40 + v50, &v17[v51], &qword_1EB8AD538, &qword_1B4D41998);
  if (v42(v17, 1, v41) == 1)
  {
    if (v42(&v17[v51], 1, v41) == 1)
    {
      sub_1B4975024(v17, &qword_1EB8AD538, &qword_1B4D41998);
      goto LABEL_24;
    }

LABEL_18:
    v31 = &qword_1EB8AD598;
    v32 = &qword_1B4D41A78;
LABEL_19:
    v33 = v17;
    goto LABEL_20;
  }

  v43 = v70;
  sub_1B4974FBC(v17, v70, &qword_1EB8AD538, &qword_1B4D41998);
  if (v42(&v17[v51], 1, v41) == 1)
  {
LABEL_17:
    sub_1B4975024(v43, qword_1EB8A8DB8, &qword_1B4D25860);
    goto LABEL_18;
  }

  v54 = v71;
  sub_1B498B270(&v17[v51], v71, qword_1EB8A8DB8, &qword_1B4D25860);
  v55 = sub_1B4C69404(v43, v54);
  sub_1B4975024(v54, qword_1EB8A8DB8, &qword_1B4D25860);
  sub_1B4975024(v43, qword_1EB8A8DB8, &qword_1B4D25860);
  sub_1B4975024(v17, &qword_1EB8AD538, &qword_1B4D41998);
  if ((v55 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v56 = *(v74 + 28);
  v57 = *(v66 + 48);
  v17 = v69;
  sub_1B4974FBC(v37 + v56, v69, &qword_1EB8AD560, &qword_1B4D419E0);
  sub_1B4974FBC(v40 + v56, &v17[v57], &qword_1EB8AD560, &qword_1B4D419E0);
  v58 = v68;
  v59 = *(v67 + 48);
  if (v59(v17, 1, v68) != 1)
  {
    v60 = v65;
    sub_1B4974FBC(v17, v65, &qword_1EB8AD560, &qword_1B4D419E0);
    if (v59(&v17[v57], 1, v58) != 1)
    {
      v61 = v64;
      sub_1B498B270(&v17[v57], v64, &qword_1EB8A8DA8, &qword_1B4D25850);
      v62 = sub_1B4C69660(v60, v61);
      sub_1B4975024(v61, &qword_1EB8A8DA8, &qword_1B4D25850);
      sub_1B4975024(v60, &qword_1EB8A8DA8, &qword_1B4D25850);
      sub_1B4975024(v17, &qword_1EB8AD560, &qword_1B4D419E0);
      if ((v62 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    sub_1B4975024(v60, &qword_1EB8A8DA8, &qword_1B4D25850);
    goto LABEL_29;
  }

  if (v59(&v17[v57], 1, v58) != 1)
  {
LABEL_29:
    v31 = &qword_1EB8AD590;
    v32 = &qword_1B4D41A70;
    goto LABEL_19;
  }

  sub_1B4975024(v17, &qword_1EB8AD560, &qword_1B4D419E0);
LABEL_31:
  if (*(v37 + *(v74 + 32)) == *(v40 + *(v74 + 32)))
  {
    v52 = *(v37 + *(v74 + 36)) ^ *(v40 + *(v74 + 36)) ^ 1;
    return v52 & 1;
  }

LABEL_21:
  v52 = 0;
  return v52 & 1;
}

void sub_1B4C6A804(uint64_t a1)
{
  sub_1B49AFCD8(319, &qword_1EB8AD578, &qword_1EB8A8DB0, &qword_1B4D25858);
  if (v1 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EB8AD580, qword_1EB8A8DB8, &qword_1B4D25860);
    if (v2 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EB8AD588, &qword_1EB8A8DA8, &qword_1B4D25850);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t FitnessPlusPropertyDimensions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v15 = (a1 + v14[5]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;

    v18._countAndFlagsBits = v17;
    v18._object = v16;
    MonthOfYear.init(rawValue:)(v18);
    v19 = v48;
  }

  else
  {
    v19 = 12;
  }

  v47 = v19;
  v20 = (a1 + v14[6]);
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;

    v23._countAndFlagsBits = v22;
    v23._object = v21;
    DayOfWeek.init(rawValue:)(v23);
    v24 = v49;
  }

  else
  {
    v24 = 7;
  }

  v44 = v24;
  v25 = a1 + v14[7];
  if (*(v25 + 8))
  {
    v43 = 0;
    v26 = 1;
  }

  else
  {
    HourOfDay.init(rawValue:)(*v25, &v45);
    v43 = v45;
    v26 = v46;
  }

  v42 = v26;
  v27 = (a1 + v14[8]);
  v28 = v27[1];
  v40 = v7;
  if (v28)
  {
    v29 = *v27;

    v30._countAndFlagsBits = v29;
    v30._object = v28;
    FitnessPlusModalityKind.init(rawValue:)(v30);
    v31 = v50;
  }

  else
  {
    v31 = 15;
  }

  v41 = v31;
  v32 = v14[9];
  sub_1B4C6AC84(a1 + v32, v13);
  v33 = *(v5 + 48);
  v34 = v33(v13, 1, v4);
  sub_1B4C6ACF4(v13);
  if (v34 == 1)
  {
    result = sub_1B4C6AD5C(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    v36 = 0;
  }

  else
  {
    sub_1B4C6AC84(a1 + v32, v10);
    if (v33(v10, 1, v4) == 1)
    {
      v37 = v40;
      *v40 = MEMORY[0x1E69E7CC0];
      sub_1B4D17BBC();
      if (v33(v10, 1, v4) != 1)
      {
        sub_1B4C6ACF4(v10);
      }
    }

    else
    {
      v37 = v40;
      sub_1B4C6AE94(v10, v40);
    }

    sub_1B4C6AD5C(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    v36 = *v37;

    result = sub_1B4C6AD5C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a2 = v47;
  *(a2 + 1) = v44;
  *(a2 + 8) = v43;
  v38 = v41;
  *(a2 + 16) = v42;
  *(a2 + 17) = v38;
  *(a2 + 24) = v36;
  return result;
}

uint64_t sub_1B4C6AC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C6ACF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C6AD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FitnessPlusPropertyDimensions.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4C6B618(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C6AE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4C6AEF8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v30 = a5;
  v28 = a3;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0xE700000000000000;
  v13 = 0x797261756E616ALL;
  switch(a2)
  {
    case 1:
      v12 = 0xE800000000000000;
      v13 = 0x7972617572626566;
      goto LABEL_14;
    case 2:
      v12 = 0xE500000000000000;
      v13 = 0x686372616DLL;
      goto LABEL_14;
    case 3:
      v12 = 0xE500000000000000;
      v13 = 0x6C69727061;
      goto LABEL_14;
    case 4:
      v12 = 0xE300000000000000;
      v13 = 7954797;
      goto LABEL_14;
    case 5:
      v12 = 0xE400000000000000;
      v13 = 1701737834;
      goto LABEL_14;
    case 6:
      v12 = 0xE400000000000000;
      v13 = 2037151082;
      goto LABEL_14;
    case 7:
      v12 = 0xE600000000000000;
      v13 = 0x747375677561;
      goto LABEL_14;
    case 8:
      v12 = 0xE900000000000072;
      v13 = 0x65626D6574706573;
      goto LABEL_14;
    case 9:
      v13 = 0x7265626F74636FLL;
      goto LABEL_14;
    case 10:
      v12 = 0xE800000000000000;
      v14 = 1702260590;
      goto LABEL_6;
    case 11:
      v12 = 0xE800000000000000;
      v14 = 1701012836;
LABEL_6:
      v13 = v14 | 0x7265626D00000000;
      goto LABEL_14;
    case 12:
      goto LABEL_15;
    default:
LABEL_14:
      v15 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));

      *v15 = v13;
      v15[1] = v12;
LABEL_15:
      v16 = HIBYTE(a2);
      if (HIBYTE(a2) <= 3u)
      {
        if (HIBYTE(a2) <= 1u)
        {
          if (HIBYTE(a2))
          {
            v17 = 0x79616473657574;
          }

          else
          {
            v17 = 0x7961646E6F6DLL;
          }

          if (v16)
          {
            v18 = 0xE700000000000000;
          }

          else
          {
            v18 = 0xE600000000000000;
          }

          goto LABEL_33;
        }

        if (HIBYTE(a2) == 2)
        {
          v18 = 0xE900000000000079;
          v17 = 0x616473656E646577;
          goto LABEL_33;
        }

        v18 = 0xE800000000000000;
        v19 = 0x647372756874;
LABEL_32:
        v17 = v19 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        goto LABEL_33;
      }

      if (HIBYTE(a2) <= 5u)
      {
        if (HIBYTE(a2) == 4)
        {
          v18 = 0xE600000000000000;
          v17 = 0x796164697266;
          goto LABEL_33;
        }

        v18 = 0xE800000000000000;
        v19 = 0x647275746173;
        goto LABEL_32;
      }

      if (HIBYTE(a2) != 6)
      {
        goto LABEL_34;
      }

      v17 = 0x7961646E7573;
      v18 = 0xE600000000000000;
LABEL_33:
      v20 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));

      *v20 = v17;
      v20[1] = v18;
LABEL_34:
      if ((a4 & 1) == 0)
      {
        v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
        v21 = a1 + *(v9 + 28);
        *v21 = v28;
        *(v21 + 8) = 0;
      }

      v22 = HIBYTE(a4);
      v23 = 0xE800000000000000;
      v24 = 0x6E776F646C6F6F63;
      switch(v22)
      {
        case 1:
          v23 = 0xE400000000000000;
          v24 = 1701998435;
          goto LABEL_51;
        case 2:
          v23 = 0xE700000000000000;
          v24 = 0x676E696C637963;
          goto LABEL_51;
        case 3:
          v23 = 0xE500000000000000;
          v24 = 0x65636E6164;
          goto LABEL_51;
        case 4:
          v23 = 0xE90000000000006ELL;
          v24 = 0x7552646564697567;
          goto LABEL_51;
        case 5:
          v23 = 0xEA00000000006B6CLL;
          v24 = 0x6157646564697567;
          goto LABEL_51;
        case 6:
          v23 = 0xE400000000000000;
          v24 = 1953065320;
          goto LABEL_51;
        case 7:
          v24 = 0x69786F626B63696BLL;
          v23 = 0xEA0000000000676ELL;
          goto LABEL_51;
        case 8:
          v23 = 0xEA00000000006E6FLL;
          v24 = 0x697461746964656DLL;
          goto LABEL_51;
        case 9:
          v23 = 0xE700000000000000;
          v24 = 0x736574616C6970;
          goto LABEL_51;
        case 10:
          v23 = 0xE600000000000000;
          v24 = 0x676E69776F72;
          goto LABEL_51;
        case 11:
          v24 = 0x6874676E65727473;
          goto LABEL_51;
        case 12:
          v24 = 0x6C696D6461657274;
          v23 = 0xE90000000000006CLL;
          goto LABEL_51;
        case 13:
          v23 = 0xE400000000000000;
          v24 = 1634168697;
          goto LABEL_51;
        case 14:
          v23 = 0xE500000000000000;
          v24 = 0x726568746FLL;
          goto LABEL_51;
        case 15:
          goto LABEL_52;
        default:
LABEL_51:
          v25 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));

          *v25 = v24;
          v25[1] = v23;
LABEL_52:
          if (v30)
          {
            MEMORY[0x1EEE9AC00](v9);
            *(&v28 - 2) = v26;
            sub_1B4C6B618(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
            sub_1B4D17DAC();
            v27 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
            sub_1B4C6ACF4(a1 + v27);
            sub_1B4C6AE94(v11, a1 + v27);
            (*(v29 + 56))(a1 + v27, 0, 1, v8);
          }

          return;
      }
  }
}

uint64_t sub_1B4C6B528()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4C6B618(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C6B618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LocationCoordinate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D1777C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for LocationCoordinate(uint64_t a1)
{
  result = qword_1EDC39678;
  if (!qword_1EDC39678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationCoordinate.altitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationCoordinate(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocationCoordinate.init(timestamp:latitude:longitude:altitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1B4D1777C();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  v11 = type metadata accessor for LocationCoordinate(0);
  *(a3 + v11[5]) = a4;
  *(a3 + v11[6]) = a5;
  v12 = v11[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v14 = *(*(v13 - 8) + 32);

  return v14(a3 + v12, a2, v13);
}

uint64_t sub_1B4C6B8EC()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x64757469676E6F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = 0x656475746974616CLL;
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

uint64_t sub_1B4C6B970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C6C6FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C6B998(uint64_t a1)
{
  v2 = sub_1B4C6C3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C6B9D4(uint64_t a1)
{
  v2 = sub_1B4C6C3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationCoordinate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5A8, &qword_1B4D41AA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C6C3E8();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D1777C();
  sub_1B4C6C4E0(&qword_1EDC37820, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B4D18D0C();
  if (!v1)
  {
    type metadata accessor for LocationCoordinate(0);
    v8[14] = 1;
    sub_1B4D18CDC();
    v8[13] = 2;
    sub_1B4D18CDC();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4B5A0C0(&qword_1EB8A6EE8, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocationCoordinate.hash(into:)(uint64_t a1)
{
  sub_1B4D1777C();
  sub_1B4C6C4E0(&qword_1EB8A72A8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B4D1808C();
  v2 = type metadata accessor for LocationCoordinate(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v3);
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB40, MEMORY[0x1E6968080]);
  return sub_1B4D1808C();
}

uint64_t LocationCoordinate.hashValue.getter()
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t LocationCoordinate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v22 - v3;
  v5 = sub_1B4D1777C();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5B8, &qword_1B4D41AB0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C6C3E8();
  v30 = v9;
  v13 = v31;
  sub_1B4D18EEC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v4;
  v14 = v26;
  v35 = 0;
  sub_1B4C6C4E0(&qword_1EB8A6FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B4D18C0C();
  (*(v14 + 32))(v12, v29, v5);
  v34 = 1;
  sub_1B4D18BDC();
  *&v12[v10[5]] = v15;
  v33 = 2;
  sub_1B4D18BDC();
  v16 = v27;
  *&v12[v10[6]] = v17;
  v32 = 3;
  sub_1B4B5A0C0(&qword_1EB8A6F28, MEMORY[0x1E6968098]);
  v29 = v12;
  v18 = v31;
  v19 = v25;
  sub_1B4D18C0C();
  (*(v16 + 8))(v30, v28);
  v20 = v29;
  (*(v23 + 32))(&v29[v10[7]], v18, v19);
  sub_1B4B861F8(v20, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4C6C43C(v20);
}

uint64_t sub_1B4C6C29C()
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6C2E0(uint64_t a1)
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence18LocationCoordinateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocationCoordinate(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
  return sub_1B4D1816C() & 1;
}

unint64_t sub_1B4C6C3E8()
{
  result = qword_1EB8AD5B0;
  if (!qword_1EB8AD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5B0);
  }

  return result;
}

uint64_t sub_1B4C6C43C(uint64_t a1)
{
  v2 = type metadata accessor for LocationCoordinate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C6C4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4C6C550(uint64_t a1)
{
  sub_1B4D1777C();
  if (v1 <= 0x3F)
  {
    sub_1B4B59D8C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4C6C5F8()
{
  result = qword_1EB8AD5C8;
  if (!qword_1EB8AD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5C8);
  }

  return result;
}

unint64_t sub_1B4C6C650()
{
  result = qword_1EB8AD5D0;
  if (!qword_1EB8AD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5D0);
  }

  return result;
}

unint64_t sub_1B4C6C6A8()
{
  result = qword_1EB8AD5D8;
  if (!qword_1EB8AD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5D8);
  }

  return result;
}

uint64_t sub_1B4C6C6FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RingsMilestoneEntry.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1);
  return sub_1B4D18EDC();
}

FitnessIntelligence::RingsMilestonePropertyValue __swiftcall RingsMilestonePropertyValue.init(currentCount:currentEntries:milestones:)(Swift::Int currentCount, Swift::OpaquePointer currentEntries, Swift::OpaquePointer milestones)
{
  v3->_rawValue = currentCount;
  v3[1]._rawValue = currentEntries._rawValue;
  v3[2]._rawValue = milestones._rawValue;
  result.milestones = milestones;
  result.currentEntries = currentEntries;
  result.currentCount = currentCount;
  return result;
}

BOOL static RingsMilestonePropertyValue.isMilestone(count:)(uint64_t a1)
{
  if (a1 > 999)
  {
    return __ROR8__(0x1CAC083126E978D5 * a1, 1) < 0x10624DD2F1A9FBFuLL;
  }

  result = 1;
  if (a1 <= 364)
  {
    if (a1 == 1 || a1 == 100)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 365 && a1 != 500)
  {
    return 0;
  }

  return result;
}

uint64_t static RingsMilestonePropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  result = a1[2];
  v6 = a2[2];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_1B4A23AD4(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_1B4A23AD4(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t RingsMilestonePropertyValue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  MEMORY[0x1B8C7D290](*v2);
  MEMORY[0x1B8C7D290](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x1B8C7D2C0](v8);
      --v6;
    }

    while (v6);
  }

  return sub_1B4A27684(a1, v5);
}

uint64_t RingsMilestonePropertyValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B8C7D2C0](v6);
      --v4;
    }

    while (v4);
  }

  sub_1B4A27684(v8, v3);
  return sub_1B4D18EDC();
}

BOOL sub_1B4C6CB10(uint64_t a1)
{
  if (a1 > 999)
  {
    return __ROR8__(0x1CAC083126E978D5 * a1, 1) < 0x10624DD2F1A9FBFuLL;
  }

  result = 1;
  if (a1 <= 364)
  {
    if (a1 == 1 || a1 == 100)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 365 && a1 != 500)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B4C6CB88()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1B4D18E8C();
  RingsMilestonePropertyValue.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6CBE0(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_1B4D18E8C();
  RingsMilestonePropertyValue.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6CC30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1B4A0A164(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A23AD4(v3, v2);
}

unint64_t sub_1B4C6CCC0()
{
  result = qword_1EB8AD5E0;
  if (!qword_1EB8AD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5E0);
  }

  return result;
}

unint64_t sub_1B4C6CD14()
{
  result = qword_1EB8AD5E8;
  if (!qword_1EB8AD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5E8);
  }

  return result;
}

unint64_t sub_1B4C6CD68()
{
  result = qword_1EB8AD5F0;
  if (!qword_1EB8AD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5F0);
  }

  return result;
}

unint64_t sub_1B4C6CDC0()
{
  result = qword_1EB8AD5F8;
  if (!qword_1EB8AD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5F8);
  }

  return result;
}

unint64_t sub_1B4C6CE14(uint64_t a1)
{
  result = sub_1B4B1A260();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C6CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6CEA4()
{
  result = qword_1EDC389B0;
  if (!qword_1EDC389B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389B0);
  }

  return result;
}

unint64_t sub_1B4C6CEF8()
{
  result = qword_1EDC389C8[0];
  if (!qword_1EDC389C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC389C8);
  }

  return result;
}

unint64_t sub_1B4C6CF50()
{
  result = qword_1EDC389C0;
  if (!qword_1EDC389C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389C0);
  }

  return result;
}

FitnessIntelligence::QueryMetrics __swiftcall QueryMetrics.init(processingDuration:waitingDuration:isSnapshotQuery:)(Swift::Double processingDuration, Swift::Double waitingDuration, Swift::Bool isSnapshotQuery)
{
  *v3 = processingDuration;
  *(v3 + 8) = waitingDuration;
  v4 = processingDuration + waitingDuration;
  *(v3 + 16) = isSnapshotQuery;
  *(v3 + 24) = v4;
  result.waitingDuration = waitingDuration;
  result.processingDuration = v4;
  result.isSnapshotQuery = isSnapshotQuery;
  return result;
}

uint64_t sub_1B4C6CFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B4C6D050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t static VitalsFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4C6D490(v3, v1, v2);
}

uint64_t static VitalsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C016C;

  return sub_1B4C6D66C(a1);
}

uint64_t VitalsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C6D22C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6D2B0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6D30C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4C6D38C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4C6D490(v3, v1, v2);
}

uint64_t sub_1B4C6D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C0344;

  return sub_1B4C6D66C(a1);
}

unint64_t sub_1B4C6D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD640, &qword_1B4D42038);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1B4C961CC(v11);
  swift_setDeallocating();
  sub_1B4C6E21C(v11 + v10);
  swift_deallocClassInstance();
  (*(v5 + 8))(v8, a2);
  return v12;
}

uint64_t sub_1B4C6D68C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for VitalsFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD630, &qword_1B4D42028);
  v31 = sub_1B4D181CC();
  v33 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0x6F43736C61746976, 0xED0000747865746ELL);
  (*(v3 + 8))(v31, v33, &type metadata for VitalsContext, &type metadata for VitalsContext, v2, v3);

  v5 = *(v0 + 32);
  v6 = v5 | (*(v0 + 36) << 32);
  if (v5 == 4)
  {
LABEL_44:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 32) != 3)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF29C(0, 1, 1);
    v7 = v32;
    v9 = *(v32 + 16);
    v8 = *(v32 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1B4BCF29C((v8 > 1), v9 + 1, 1);
      v7 = v32;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = v6;
  }

  if (BYTE1(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B4BCF29C((v10 > 1), v11 + 1, 1);
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + v11 + 32) = BYTE1(v6);
  }

  if (BYTE2(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B4BCF29C((v12 > 1), v13 + 1, 1);
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + v13 + 32) = BYTE2(v6);
  }

  if (BYTE3(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B4BCF29C((v14 > 1), v15 + 1, 1);
    }

    *(v7 + 16) = v15 + 1;
    *(v7 + v15 + 32) = BYTE3(v6);
  }

  if (HIDWORD(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    v16 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_1B4BCF29C((v22 > 1), v23 + 1, 1);
    }

    *(v7 + 16) = v16;
    *(v7 + v23 + 32) = BYTE4(v6);
    if (v16 >= 3)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  v16 = *(v7 + 16);
  if (v16 < 3)
  {
LABEL_39:

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC3CED0);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = 3;
      _os_log_impl(&dword_1B4953000, v25, v26, "Fewer than %ld available: not returning fact", v27, 0xCu);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    goto LABEL_44;
  }

LABEL_26:
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 32;
  do
  {
    v21 = *(v7 + v18);
    if (v21 <= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B4BCF29C(0, *(v17 + 16) + 1, 1);
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4BCF29C((v19 > 1), v20 + 1, 1);
      }

      *(v17 + 16) = v20 + 1;
      *(v17 + v20 + 32) = v21;
    }

    ++v18;
    --v16;
  }

  while (v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD638, &qword_1B4D42030);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D1A800;
  *(v28 + 32) = v6;
  *(v28 + 34) = BYTE2(v6);
  *(v28 + 35) = BYTE3(v6);
  *(v28 + 36) = BYTE4(v6);
  *(v28 + 40) = v17;
LABEL_46:
  v29 = *(v0 + 8);

  return v29(v28);
}

unint64_t _s19FitnessIntelligence10VitalsFactV10makePrompt15promptFormatterSSAA0fH0C_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = MEMORY[0x1E69E7CC0];
  if (v1 < 2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF29C(0, 1, 1);
    v6 = v19;
    v8 = *(v19 + 16);
    v7 = *(v19 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1B4BCF29C((v7 > 1), v8 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + v8 + 32) = v1;
    if (v2 > 1)
    {
LABEL_3:
      if (v3 > 1)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if (v2 > 1)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_1B4BCF29C((v9 > 1), v10 + 1, 1);
  }

  *(v6 + 16) = v10 + 1;
  *(v6 + v10 + 32) = v2;
  if (v3 > 1)
  {
LABEL_4:
    if (v4 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1B4BCF29C((v11 > 1), v12 + 1, 1);
  }

  *(v6 + 16) = v12 + 1;
  *(v6 + v12 + 32) = v3;
  if (v4 <= 1)
  {
LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B4BCF29C((v13 > 1), v14 + 1, 1);
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + v14 + 32) = v4;
  }

LABEL_24:
  if (v5 <= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
    }

    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B4BCF29C((v15 > 1), v16 + 1, 1);
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + v16 + 32) = v5;
    goto LABEL_31;
  }

  if (*(v6 + 16))
  {
LABEL_31:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0x67696E207473614CLL, 0xEC000000202C7468);

    v17 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v17);

    MEMORY[0x1B8C7C620](0xD00000000000003ALL, 0x80000001B4D66280);
    return 0;
  }

  return 0xD000000000000044;
}

unint64_t sub_1B4C6DF7C()
{
  result = qword_1EB8AD600;
  if (!qword_1EB8AD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD600);
  }

  return result;
}

unint64_t sub_1B4C6DFFC()
{
  result = qword_1EB8AD608;
  if (!qword_1EB8AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD608);
  }

  return result;
}

unint64_t sub_1B4C6E050()
{
  result = qword_1EB8AD610;
  if (!qword_1EB8AD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD610);
  }

  return result;
}

unint64_t sub_1B4C6E0A8()
{
  result = qword_1EB8AD618;
  if (!qword_1EB8AD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD618);
  }

  return result;
}

uint64_t sub_1B4C6E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6E164()
{
  result = qword_1EB8AD620;
  if (!qword_1EB8AD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD620);
  }

  return result;
}

unint64_t sub_1B4C6E1B8()
{
  result = qword_1EB8AD628;
  if (!qword_1EB8AD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD628);
  }

  return result;
}

uint64_t sub_1B4C6E21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 InferenceRequest.init(adapter:prompt:audioSynthesisSettings:telemetryIdentifier:requestIdentifier:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v28 = a5;
  v34 = a1;
  v35 = a2;
  v11 = sub_1B4D177CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v29 = a3[1];
  v30 = v15;
  v16 = *(a3 + 32);
  v17 = *a4;
  v32 = *(a4 + 16);
  v33 = v17;
  v18 = *(a4 + 40);
  v31 = *(a4 + 32);
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB8AC698;
  v20 = unk_1EB8AC6A0;

  if (a6)
  {
    v21 = v28;
  }

  else
  {
    sub_1B4D177BC();
    v21 = sub_1B4D1779C();
    a6 = v22;
    (*(v12 + 8))(v14, v11);
  }

  v23 = sub_1B4BC2B00();
  v24 = v35;
  *a7 = v34;
  *(a7 + 8) = v24;
  v25 = v29;
  *(a7 + 16) = v30;
  *(a7 + 32) = v25;
  *(a7 + 48) = v16;
  *(a7 + 56) = v19;
  *(a7 + 64) = v20;
  result = v33;
  *(a7 + 88) = v32;
  *(a7 + 72) = result;
  *(a7 + 104) = v31;
  *(a7 + 112) = v18;
  *(a7 + 120) = v21;
  *(a7 + 128) = a6;
  *(a7 + 136) = v23 & 1;
  return result;
}

uint64_t InferenceRequest.prompt.getter()
{
  v1 = *v0;

  return v1;
}

void InferenceRequest.audioSynthesisSettings.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 48);
  sub_1B4C6E80C(v2, v3, v4, v5);
}

uint64_t InferenceRequest.osBuildVersion.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

double InferenceRequest.telemetryIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1B4C6E81C(v2, v3);
}

uint64_t InferenceRequest.requestIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 InferenceRequest.init(adapter:prompt:audioSynthesisSettings:telemetryIdentifier:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a1;
  v32 = a2;
  v8 = sub_1B4D177CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v26 = a3[1];
  v27 = v12;
  v13 = *(a3 + 32);
  v14 = *a4;
  v29 = *(a4 + 16);
  v30 = v14;
  v15 = *(a4 + 32);
  v28 = *(a4 + 40);
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB8AC698;
  v17 = unk_1EB8AC6A0;

  sub_1B4D177BC();
  v18 = sub_1B4D1779C();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  v21 = sub_1B4BC2B00();
  v22 = v32;
  *a5 = v31;
  *(a5 + 8) = v22;
  v23 = v26;
  *(a5 + 16) = v27;
  *(a5 + 32) = v23;
  *(a5 + 48) = v13;
  *(a5 + 56) = v16;
  *(a5 + 64) = v17;
  result = v30;
  *(a5 + 88) = v29;
  *(a5 + 72) = result;
  v25 = v28;
  *(a5 + 104) = v15;
  *(a5 + 112) = v25;
  *(a5 + 120) = v18;
  *(a5 + 128) = v20;
  *(a5 + 136) = v21 & 1;
  return result;
}

uint64_t InferenceRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 136);
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D662C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  MEMORY[0x1B8C7C620](v1, v2);
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD650, &qword_1B4D42050);
  v4 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v4);

  MEMORY[0x1B8C7C620](0x6D6165727473202CLL, 0xE900000000000020);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B8C7C620](v5, v6);

  return 0;
}

void sub_1B4C6E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_1B49B3D28(a1, a2, a3, a4);
  }
}

double sub_1B4C6E81C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence22AudioSynthesisSettingsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B4C6E8C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1B4C6E90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessIntelligence::WeeklySummaryContext __swiftcall WeeklySummaryContext.init(currentWeekSummaries:previousWeekSummaries:)(Swift::OpaquePointer currentWeekSummaries, Swift::OpaquePointer previousWeekSummaries)
{
  v2->_rawValue = currentWeekSummaries._rawValue;
  v2[1]._rawValue = previousWeekSummaries._rawValue;
  result.previousWeekSummaries = previousWeekSummaries;
  result.currentWeekSummaries = currentWeekSummaries;
  return result;
}

uint64_t sub_1B4C6E9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v4, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v8 = PromptFormatable.promptString(formatter:)(a2, v6, v7);
      if (v9)
      {
        MEMORY[0x1B8C7C620](v8);

        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B4A1D690(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = sub_1B4A1D690((v10 > 1), v11 + 1, 1, v5);
        }

        *(v5 + 2) = v11 + 1;
        v12 = &v5[16 * v11];
        *(v12 + 4) = 8237;
        *(v12 + 5) = 0xE200000000000000;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v15[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B4C6EB78();
  v13 = sub_1B4D180DC();

  return v13;
}

unint64_t sub_1B4C6EB78()
{
  result = qword_1EDC378E8;
  if (!qword_1EDC378E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B38, &qword_1B4D36300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC378E8);
  }

  return result;
}

unint64_t sub_1B4C6EBF0()
{
  result = qword_1EB8AD658;
  if (!qword_1EB8AD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD658);
  }

  return result;
}

unint64_t sub_1B4C6EC48()
{
  result = qword_1EB8AD660;
  if (!qword_1EB8AD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD660);
  }

  return result;
}

uint64_t sub_1B4C6ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C6ED48, 0, 0);
}

uint64_t sub_1B4C6ED48()
{
  v1 = v0[6];
  sub_1B4992854(v0[4], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B4994820;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B4CAC990(v7, v6, v4, v5);
}

uint64_t WorkoutDictionaryPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  sub_1B4C71980(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t WorkoutDictionaryPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a6@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD668, &qword_1B4D42230);
  swift_getTupleTypeMetadata2();
  sub_1B4C702D8();
  sub_1B4D182BC();
  if (v6)
  {
    sub_1B4C71770(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {

    sub_1B4D184BC();
    swift_getWitnessTable();
    v9 = sub_1B4D17FCC();
    v10 = a1[1];
    result = sub_1B4C71770(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a6 = v9;
    a6[1] = v10;
  }

  return result;
}

uint64_t sub_1B4C6F094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v85 = a5;
  v89 = a4;
  v91 = a1;
  v81 = a6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v71 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a3;
  v71 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4D1880C();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v73 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71 - v22;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v72 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v71 - v28;
  v30 = a2;
  v88 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v84 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v8;
  v34 = v33;
  sub_1B4974FBC(v91 + *(v8 + 20), v23, &qword_1EB8A7EA0, &unk_1B4D42260);
  v35 = *(v25 + 48);
  if (v35(v23, 1, v34) == 1)
  {
    *v29 = 0;
    *(v29 + 1) = 0;
    v29[16] = -1;
    sub_1B4D17BBC();
    if (v35(v23, 1, v34) != 1)
    {
      sub_1B4975024(v23, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4C717D0(v23, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  v36 = v30;
  v37 = v87;
  v38 = v85;
  sub_1B4C6FAEC(v29, v90);
  sub_1B4C71770(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v39 = swift_dynamicCast();
  v40 = v88;
  v41 = *(v88 + 56);
  if (v39)
  {
    v41(v18, 0, 1, v36);
    v83 = *(v40 + 32);
    v83(v84, v18, v36);
    v42 = v78;
    sub_1B4974FBC(v91 + *(v82 + 24), v78, &qword_1EB8A7E90, &unk_1B4D25C60);
    v43 = v77;
    v44 = *(v76 + 48);
    if (v44(v42, 1, v77) == 1)
    {
      v45 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v46 = v43;
      v47 = v79;
      (*(*(v45 - 8) + 56))(v79, 1, 1, v45);
      sub_1B4D17BBC();
      v48 = v44(v42, 1, v46);
      v49 = v86;
      if (v48 != 1)
      {
        sub_1B4975024(v42, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v47 = v79;
      sub_1B4C717D0(v42, v79, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v49 = v86;
    }

    v60 = v80;
    sub_1B4C6FE54(v47, v36, v37, v89, v38, v80);
    sub_1B4C71770(v47, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (v49)
    {
      return (*(v88 + 8))(v84, v36);
    }

    else
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v63 = *(TupleTypeMetadata2 + 48);
      v64 = v37;
      v65 = v81;
      v83(v81, v84, v36);
      (*(v71 + 32))(&v65[v63], v60, v64);
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v65, 0, 1, TupleTypeMetadata2);
    }
  }

  else
  {
    v89 = v34;
    v41(v18, 1, 1, v36);
    (*(v74 + 8))(v18, v75);
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v50 = sub_1B4D17F6C();
    __swift_project_value_buffer(v50, qword_1EDC37A40);
    v51 = v83;
    sub_1B4C7170C(v91, v83);
    v52 = sub_1B4D17F5C();
    v53 = sub_1B4D1871C();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v91) = v53;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v90[0] = v55;
      *v54 = 136315138;
      v56 = v51 + *(v82 + 20);
      v57 = v73;
      sub_1B4974FBC(v56, v73, &qword_1EB8A7EA0, &unk_1B4D42260);
      v58 = v89;
      if (v35(v57, 1, v89) == 1)
      {
        v59 = v72;
        *v72 = 0;
        v59[1] = 0;
        *(v59 + 16) = -1;
        sub_1B4D17BBC();
        if (v35(v57, 1, v58) != 1)
        {
          sub_1B4975024(v57, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4C717D0(v57, v72, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v66 = sub_1B4D181AC();
      v68 = v67;
      sub_1B4C71770(v83, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v69 = sub_1B49558AC(v66, v68, v90);

      *(v54 + 4) = v69;
      _os_log_impl(&dword_1B4953000, v52, v91, "Unexpected key = %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1B8C7DDA0](v55, -1, -1);
      MEMORY[0x1B8C7DDA0](v54, -1, -1);
    }

    else
    {

      sub_1B4C71770(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v70 = swift_getTupleTypeMetadata2();
    return (*(*(v70 - 8) + 56))(v81, 1, 1, v70);
  }
}

void sub_1B4C6FAEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  v11 = *a1;
  v12 = *(a1 + 16);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 == 4)
      {
        v17 = [objc_opt_self() meters];
        *(a2 + 24) = v4;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1B499221C();
        sub_1B4D1741C();
        return;
      }

      goto LABEL_17;
    }

    v21 = [objc_opt_self() meters];
    sub_1B499221C();
    sub_1B4D1741C();
    (*(v5 + 16))(v7, v10, v4);
    DistanceReference.init(rawValue:)(v7, &v26);
    v22 = v26;
    if (v26 == 16)
    {
      (*(v5 + 8))(v10, v4);
LABEL_17:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    *(a2 + 24) = &type metadata for DistanceReference;
    *a2 = v22;
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (!*(a1 + 16))
    {
      v18 = *(a1 + 8);

      v19._countAndFlagsBits = v11;
      v19._object = v18;
      DayOfWeek.init(rawValue:)(v19);
      v20 = v25;
      if (v25 != 7)
      {
        *(a2 + 24) = &type metadata for DayOfWeek;
        *a2 = v20;
        return;
      }

      goto LABEL_17;
    }

    if (v12 == 1)
    {
      if (v11 >= 0x18)
      {
        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B4D17F6C();
        __swift_project_value_buffer(v13, qword_1EDC3CED0);
        v14 = sub_1B4D17F5C();
        v15 = sub_1B4D1871C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          *(v16 + 4) = v11;
          _os_log_impl(&dword_1B4953000, v14, v15, "Invalid hourOfDay: %lld", v16, 0xCu);
          MEMORY[0x1B8C7DDA0](v16, -1, -1);
        }

        goto LABEL_17;
      }

      *(a2 + 24) = &type metadata for HourOfDay;
    }

    else
    {
      type metadata accessor for _HKPrivateWeatherCondition(0);
      *(a2 + 24) = v23;
    }

    *a2 = v11;
  }
}

void *sub_1B4C6FE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a4;
  v26[1] = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v19 = v32;
  result = sub_1B4C7149C(a1, v31);
  if (!v19)
  {
    v21 = v27;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v22 = swift_dynamicCast();
    v23 = v28;
    v24 = *(v28 + 56);
    if (v22)
    {
      v24(v12, 0, 1, AssociatedTypeWitness);
      (*(v23 + 32))(v18, v12, AssociatedTypeWitness);
      (*(v23 + 16))(v15, v18, AssociatedTypeWitness);
      (*(v8 + 40))(v15, a3, v8);
      return (*(v23 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      v24(v12, 1, 1, AssociatedTypeWitness);
      (*(v21 + 8))(v12, v10);
      sub_1B4BF5D40();
      swift_allocError();
      *v25 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B4C70150(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a2;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = sub_1B4C71838;
  v16[7] = &v17;
  v10 = sub_1B4D1801C();
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B498D2F0(sub_1B4C71858, v16, v10, v11, v12, WitnessTable, MEMORY[0x1E69E7288], v22);

  if (!v7)
  {

    *a1 = v14;
    a1[1] = a3;
  }

  return result;
}

unint64_t sub_1B4C702D8()
{
  result = qword_1EB8AD670;
  if (!qword_1EB8AD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD668, &qword_1B4D42230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD670);
  }

  return result;
}

uint64_t sub_1B4C703CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4C71980(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C704AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a3;
  v33 = a1;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  v35 = a5;
  v41 = a4;
  v42 = a5;
  v38 = a6;
  v39 = a7;
  v43 = a6;
  v44 = a7;
  v37 = a2;
  v45 = a2;
  sub_1B4C71980(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v18 = v46;
  result = sub_1B4D17DAC();
  if (!v18)
  {
    v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v21 = v33;
    v22 = v12;
    v23 = *(v20 + 20);
    sub_1B4975024(v33 + v23, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4C717D0(v17, v21 + v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v24 = v21;
    v25 = (*(v15 + 56))(v21 + v23, 0, 1, v14);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v35;
    *(&v31 - 6) = v34;
    *(&v31 - 5) = v26;
    v27 = v39;
    *(&v31 - 4) = v38;
    *(&v31 - 3) = v27;
    v28 = v37;
    *(&v31 - 2) = v36;
    *(&v31 - 1) = v28;
    sub_1B4C71980(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v29 = v40;
    sub_1B4D17DAC();
    v30 = *(v20 + 24);
    sub_1B4975024(v24 + v30, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4C717D0(v29, v24 + v30, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    return (*(v32 + 56))(v24 + v30, 0, 1, v22);
  }

  return result;
}

uint64_t sub_1B4C7080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - v11;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v58 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v22 = *(v12 + 16);
  v22(&v58 - v20, a2, a3, v19);
  if (swift_dynamicCast())
  {
    v23 = *&aMonday_1[8 * v65];
    v24 = qword_1B4D42370[v65];
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    return (*(v12 + 8))(v21, a3);
  }

  if (swift_dynamicCast())
  {
    v25 = v65;
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v25;
    *(a1 + 8) = 0;
    v26 = 1;
LABEL_11:
    *(a1 + 16) = v26;
    return (*(v12 + 8))(v21, a3);
  }

  type metadata accessor for _HKPrivateWeatherCondition(0);
  if (swift_dynamicCast())
  {
    v27 = v65;
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v27;
    *(a1 + 8) = 0;
    v26 = 2;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v64 = v65;
    DistanceReference.rawValue.getter();
    sub_1B499221C();
    v28 = [swift_getObjCClassFromMetadata() baseUnit];
    v30 = v61;
    v29 = v62;
    sub_1B4D1745C();

    v31 = *(v59 + 8);
    v31(v60, v29);
    sub_1B4D1742C();
    v33 = v32;
    v31(v30, v29);
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v33;
    *(a1 + 8) = 0;
    v26 = 3;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v34 = v59;
    v35 = v62;
    (*(v59 + 32))(v61, v7, v62);
    sub_1B499221C();
    v36 = [swift_getObjCClassFromMetadata() baseUnit];
    v37 = v60;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v37, v35);
    v40(v61, v35);
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v39;
    *(a1 + 8) = 0;
    v26 = 4;
    goto LABEL_11;
  }

  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v42 = sub_1B4D17F6C();
  __swift_project_value_buffer(v42, qword_1EDC37A40);
  v43 = v58;
  (v22)(v58, a2, a3);
  v44 = sub_1B4D17F5C();
  v45 = sub_1B4D1871C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v62 = v46;
    v63 = swift_slowAlloc();
    v65 = v63;
    *v46 = 136315138;
    v47 = v58;
    (v22)(v15, v58, a3);
    v48 = sub_1B4D181AC();
    v50 = v49;
    LODWORD(v61) = v45;
    v51 = *(v12 + 8);
    v51(v47, a3);
    v52 = sub_1B49558AC(v48, v50, &v65);

    v53 = v62;
    *(v62 + 4) = v52;
    v54 = v51;
    v55 = v53;
    _os_log_impl(&dword_1B4953000, v44, v61, "Unexpected key = %s", v53, 0xCu);
    v56 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1B8C7DDA0](v56, -1, -1);
    MEMORY[0x1B8C7DDA0](v55, -1, -1);
  }

  else
  {

    v54 = *(v12 + 8);
    v54(v43, a3);
  }

  sub_1B4BF5D40();
  swift_allocError();
  *v57 = 0;
  swift_willThrow();
  return (v54)(v21, a3);
}

uint64_t sub_1B4C70E84(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a3;
  v61 = a4;
  v63 = a1;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55[-v11];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v55[-v23];
  v25 = v65;
  result = (*(v17 + 32))(a5, v17, v22);
  if (!v25)
  {
    v27 = v62;
    v28 = v63;
    v65 = 0;
    (*(v62 + 16))(v20, v24, AssociatedTypeWitness);
    v29 = AssociatedTypeWitness;
    v30 = v27;
    if (swift_dynamicCast())
    {
      v31 = v20;
      v32 = *(v27 + 8);
      v32(v24, v29);
      v33 = v28;
      sub_1B4975024(v28, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4C717D0(v64, v28, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
LABEL_6:
      v35 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
      return (v32)(v31, v29);
    }

    if (swift_dynamicCast())
    {
      v31 = v20;
      v34 = v14;
      v32 = *(v30 + 8);
      v32(v24, v29);
      v33 = v28;
      sub_1B4975024(v28, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4C717D0(v34, v28, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      goto LABEL_6;
    }

    v64 = v29;
    v65 = v24;
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v36 = sub_1B4D17F6C();
    __swift_project_value_buffer(v36, qword_1EDC37A40);
    v37 = v58;
    v38 = v59;
    v39 = *(v58 + 16);
    v40 = v61;
    v39(v59, v60, v61);
    v41 = sub_1B4D17F5C();
    v42 = sub_1B4D1871C();
    v63 = v41;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v43 = 136315138;
      v56 = v42;
      v39(v57, v38, v40);
      v44 = sub_1B4D181AC();
      v46 = v45;
      (*(v37 + 8))(v38, v40);
      v47 = sub_1B49558AC(v44, v46, &v66);

      v48 = v43;
      *(v43 + 4) = v47;
      v49 = v63;
      v50 = v48;
      _os_log_impl(&dword_1B4953000, v63, v56, "Unexpected value = %s", v48, 0xCu);
      v51 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1B8C7DDA0](v51, -1, -1);
      MEMORY[0x1B8C7DDA0](v50, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v38, v40);
    }

    sub_1B4BF5D40();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    v53 = *(v30 + 8);
    v54 = v64;
    v53(v65, v64);
    return (v53)(v20, v54);
  }

  return result;
}

uint64_t sub_1B4C7149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  sub_1B4974FBC(a1, &v18 - v11, &qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4C717D0(v12, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *(a2 + 24) = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v17 = v6;
    }

    else
    {
      v15 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      sub_1B4C717D0(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *(a2 + 24) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v17 = v9;
    }

    return sub_1B4C717D0(v17, boxed_opaque_existential_1, v15);
  }

  return result;
}

uint64_t sub_1B4C7170C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C71770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C717D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C71858(uint64_t a1, void *a2)
{
  v6 = *(v2 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v6(a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1B4C71980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4C719DC()
{
  result = qword_1EB8AD678;
  if (!qword_1EB8AD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD678);
  }

  return result;
}

uint64_t WorkoutVoiceFastestRecordFact.init(type:value:distance:pace:timescale:activityType:identifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v17 = *a5;
  *a9 = *a1;
  v18 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B498B270(a2, &a9[v18[5]], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a3, &a9[v18[6]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  result = sub_1B498B270(a4, &a9[v18[7]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  a9[v18[8]] = v17;
  *&a9[v18[9]] = a6;
  v20 = &a9[v18[10]];
  *v20 = a7;
  v20[1] = a8;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceFastestRecordFact(uint64_t a1)
{
  result = qword_1EB8AD698;
  if (!qword_1EB8AD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutVoiceFastestRecordFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact(0) + 36));

  return v1;
}

uint64_t WorkoutVoiceFastestRecordFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WorkoutVoiceFastestRecordFact.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact(0) + 40));

  return v1;
}

unint64_t sub_1B4C71CF8()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x696669746E656469;
  }

  v4 = 1701011824;
  if (v1 != 3)
  {
    v4 = 0x6C616373656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65756C6176;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
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

uint64_t sub_1B4C71DCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C73970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C71DF4(uint64_t a1)
{
  v2 = sub_1B4C73600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C71E30(uint64_t a1)
{
  v2 = sub_1B4C73600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceFastestRecordFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD680, &qword_1B4D423A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C73600();
  sub_1B4D18EFC();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v12) = v3[*(v11 + 32)];
    v13 = 4;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v12 = *&v3[*(v11 + 36)];
    v13 = 5;
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18D0C();

    LOBYTE(v12) = 6;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutVoiceFastestRecordFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD690, &qword_1B4D423B0);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B4C73600();
  v19 = v35;
  sub_1B4D18EEC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  v35 = v7;
  v38 = 0;
  sub_1B4B59B78();
  v20 = v33;
  sub_1B4D18C0C();
  v21 = v17;
  *v17 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  LOBYTE(v37) = 1;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
  sub_1B4D18BAC();
  v22 = v34;
  sub_1B498B270(v10, &v21[v15[5]], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(v37) = 2;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
  v23 = v35;
  sub_1B4D18BAC();
  sub_1B498B270(v23, &v21[v15[6]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  LOBYTE(v37) = 3;
  sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
  v24 = v32;
  sub_1B4D18BAC();
  sub_1B498B270(v24, &v21[v15[7]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v38 = 4;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v35 = 0;
  *v15[8] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  v38 = 5;
  sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18C0C();
  *v15[9] = v37;
  LOBYTE(v37) = 6;
  v25 = sub_1B4D18BBC();
  v27 = v26;
  (*(v22 + 8))(v14, v20);
  v28 = v15[10];
  *v28 = v25;
  v28[1] = v27;
  sub_1B4C73654(0, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return sub_1B4C736B8(0);
}

uint64_t _s19FitnessIntelligence29WorkoutVoiceFastestRecordFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v87 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  MEMORY[0x1EEE9AC00](v93);
  v100 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = &v87 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v26;
  v29 = *a1;
  v30 = *a2;
  if (v29 <= 0x11)
  {
    if (v29 == 16)
    {
      if (v30 != 16)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    if (v29 == 17)
    {
      if (v30 != 17)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

LABEL_10:
    if ((v30 & 0xFC) == 0x10)
    {
      goto LABEL_31;
    }

    v103 = v29;
    v102 = v30;
    v90 = a1;
    v91 = v27;
    v89 = &v87 - v26;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
    LODWORD(v88) = sub_1B4D1816C();
    v101 = a2;
    v31 = *(v91 + 8);
    v31(v24, v22);
    v31(v89, v22);
    v28 = v89;
    a1 = v90;
    v27 = v91;
    a2 = v101;
    if ((v88 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  if (v29 != 18)
  {
    if (v29 == 19)
    {
      if (v30 != 19)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v30 != 18)
  {
    goto LABEL_31;
  }

LABEL_16:
  v89 = v28;
  v91 = v27;
  v101 = a2;
  v88 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  v32 = *(v88 + 20);
  v33 = *(v19 + 48);
  v90 = a1;
  sub_1B4974FBC(&a1[v32], v21, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(&v101[v32], &v21[v33], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v34 = *(v13 + 48);
  if (v34(v21, 1, v12) == 1)
  {
    if (v34(&v21[v33], 1, v12) == 1)
    {
      sub_1B4975024(v21, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_24;
    }

LABEL_21:
    v35 = &qword_1EB8A6F60;
    v36 = &qword_1B4D2C420;
LABEL_22:
    v37 = v21;
LABEL_30:
    sub_1B4975024(v37, v35, v36);
    goto LABEL_31;
  }

  sub_1B4974FBC(v21, v18, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v34(&v21[v33], 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    goto LABEL_21;
  }

  (*(v13 + 32))(v15, &v21[v33], v12);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  v38 = sub_1B4D1816C();
  v39 = *(v13 + 8);
  v39(v15, v12);
  v39(v18, v12);
  sub_1B4975024(v21, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_24:
  v40 = v88;
  v41 = *(v88 + 24);
  v42 = v98;
  v43 = *(v97 + 48);
  sub_1B4974FBC(&v90[v41], v98, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(&v101[v41], v42 + v43, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v44 = *(v91 + 48);
  if (v44(v42, 1, v22) == 1)
  {
    v45 = v44(v42 + v43, 1, v22);
    v46 = v99;
    v21 = v100;
    if (v45 == 1)
    {
      sub_1B4975024(v42, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_34;
    }

LABEL_29:
    v35 = &qword_1EB8A6F50;
    v36 = &qword_1B4D425A0;
    v37 = v42;
    goto LABEL_30;
  }

  v47 = v96;
  sub_1B4974FBC(v42, v96, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v48 = v44(v42 + v43, 1, v22);
  v46 = v99;
  v21 = v100;
  if (v48 == 1)
  {
    (*(v91 + 8))(v47, v22);
    goto LABEL_29;
  }

  v51 = v91;
  v52 = v42 + v43;
  v53 = v89;
  (*(v91 + 32))(v89, v52, v22);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v54 = sub_1B4D1816C();
  v55 = *(v51 + 8);
  v55(v53, v22);
  v55(v47, v22);
  sub_1B4975024(v42, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v54 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v56 = v40[7];
  v57 = *(v93 + 48);
  sub_1B4974FBC(&v90[v56], v21, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(&v101[v56], &v21[v57], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v59 = v94;
  v58 = v95;
  v60 = *(v94 + 48);
  if (v60(v21, 1, v95) == 1)
  {
    if (v60(&v21[v57], 1, v58) == 1)
    {
      sub_1B4975024(v21, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  sub_1B4974FBC(v21, v46, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v60(&v21[v57], 1, v58) == 1)
  {
    (*(v59 + 8))(v46, v58);
LABEL_39:
    v35 = &qword_1EB8A9E18;
    v36 = &unk_1B4D2C410;
    goto LABEL_22;
  }

  v61 = &v21[v57];
  v62 = v92;
  (*(v59 + 32))(v92, v61, v58);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  v63 = sub_1B4D1816C();
  v64 = *(v59 + 8);
  v64(v62, v58);
  v64(v46, v58);
  sub_1B4975024(v21, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_41:
  v65 = v101;
  v66 = v90;
  if ((sub_1B4975E34(v90[v40[8]], v101[v40[8]]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v67 = v40[9];
  v68 = *&v66[v67];
  v69 = *&v65[v67];
  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70 || (v71 = v70, objc_opt_self(), (v72 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_48;
    }

LABEL_31:
    v49 = 0;
    return v49 & 1;
  }

  v73 = v72;
  v74 = v68;
  v75 = v69;
  [v71 coordinate];
  v77 = v76;
  [v73 coordinate];
  if (v77 != v78)
  {

    goto LABEL_31;
  }

  [v71 coordinate];
  v80 = v79;
  [v73 coordinate];
  v82 = v81;

  if (v80 != v82)
  {
    goto LABEL_31;
  }

LABEL_48:
  v83 = v40[10];
  v84 = &v90[v83];
  v85 = *&v90[v83 + 8];
  v86 = &v101[v83];
  if (*v84 == *v86 && v85 == *(v86 + 1))
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_1B4D18DCC();
  }

  return v49 & 1;
}

unint64_t sub_1B4C73600()
{
  result = qword_1EB8AD688;
  if (!qword_1EB8AD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD688);
  }

  return result;
}

uint64_t sub_1B4C73654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C736B8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4C7373C(uint64_t a1)
{
  sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
  if (v1 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
    if (v2 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      if (v3 <= 0x3F)
      {
        sub_1B49B13FC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B4C7386C()
{
  result = qword_1EB8AD6A8;
  if (!qword_1EB8AD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6A8);
  }

  return result;
}

unint64_t sub_1B4C738C4()
{
  result = qword_1EB8AD6B0;
  if (!qword_1EB8AD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6B0);
  }

  return result;
}

unint64_t sub_1B4C7391C()
{
  result = qword_1EB8AD6B8;
  if (!qword_1EB8AD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6B8);
  }

  return result;
}

uint64_t sub_1B4C73970(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DayOfWeek.init(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4D1796C();
  __swift_project_value_buffer(v8, qword_1EDC3CE48);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969AB0], v4);
  v9 = sub_1B4D1795C();
  (*(v5 + 8))(v7, v4);
  if ((v9 - 1) >= 7)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v11 = sub_1B4D17F6C();
    __swift_project_value_buffer(v11, qword_1EDC3CED0);
    v10 = sub_1B4D17F5C();
    v12 = sub_1B4D1871C();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_1B4953000, v10, v12, "Invalid day of week: %ld", v13, 0xCu);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
    }

    LOBYTE(v10) = 7;
  }

  else
  {
    v10 = (0x5040302010006uLL >> (8 * (v9 - 1)));
  }

  v14 = sub_1B4D1777C();
  result = (*(*(v14 - 8) + 8))(a1, v14);
  *a2 = v10;
  return result;
}

uint64_t DayOfWeek.description.getter()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

FitnessIntelligence::DayOfWeek_optional __swiftcall DayOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String_optional __swiftcall DayOfWeek.promptDescription()()
{
  v1 = sub_1B4D1794C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *v0;
  sub_1B4D1776C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4D1796C();
  __swift_project_value_buffer(v18, qword_1EDC3CE48);
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1);
  sub_1B4D1790C();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B497A590(v7);
    v19 = v17;
LABEL_9:
    v25 = *&aMonday_2[8 * v19];
    v26 = qword_1B4D42778[v19];
    (*(v9 + 8))(v16, v8);
    goto LABEL_10;
  }

  v20 = v44;
  (*(v9 + 32))(v44, v7, v8);
  v21 = *(v9 + 16);
  v21(v11, v16, v8);
  DayOfWeek.init(from:)(v11, &v46);
  v22 = v46;
  v19 = v17;
  if (v46 == 7)
  {
    (*(v9 + 8))(v20, v8);
    goto LABEL_9;
  }

  v21(v11, v20, v8);
  DayOfWeek.init(from:)(v11, &v45);
  v23 = v20;
  v24 = v45;
  if (v45 == 7)
  {
    (*(v9 + 8))(v23, v8);
    goto LABEL_9;
  }

  v29 = 0x7961646E6F6DLL;
  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v30 = 0xE700000000000000;
        v31 = 0x79616473657574;
      }

      else
      {
        v31 = 0x616473656E646577;
        v30 = 0xE900000000000079;
      }
    }

    else
    {
      v30 = 0xE600000000000000;
      v31 = 0x7961646E6F6DLL;
    }
  }

  else if (v17 > 4u)
  {
    if (v17 == 5)
    {
      v30 = 0xE800000000000000;
      v31 = 0x7961647275746173;
    }

    else
    {
      v31 = 0x7961646E7573;
      v30 = 0xE600000000000000;
    }
  }

  else if (v17 == 3)
  {
    v30 = 0xE800000000000000;
    v31 = 0x7961647372756874;
  }

  else
  {
    v30 = 0xE600000000000000;
    v31 = 0x796164697266;
  }

  if (v22 <= 2)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0xE700000000000000;
        v33 = 0x79616473657574;
      }

      else
      {
        v33 = 0x616473656E646577;
        v32 = 0xE900000000000079;
      }
    }

    else
    {
      v32 = 0xE600000000000000;
      v33 = 0x7961646E6F6DLL;
    }
  }

  else if (v22 > 4)
  {
    if (v22 == 5)
    {
      v32 = 0xE800000000000000;
      v33 = 0x7961647275746173;
    }

    else
    {
      v33 = 0x7961646E7573;
      v32 = 0xE600000000000000;
    }
  }

  else if (v22 == 3)
  {
    v32 = 0xE800000000000000;
    v33 = 0x7961647372756874;
  }

  else
  {
    v32 = 0xE600000000000000;
    v33 = 0x796164697266;
  }

  if (v31 == v33 && v30 == v32)
  {

LABEL_41:
    v35 = *(v9 + 8);
    v35(v44, v8);
    v35(v16, v8);
    v26 = 0xE500000000000000;
    v25 = 0x7961646F74;
    goto LABEL_10;
  }

  v34 = sub_1B4D18DCC();

  if (v34)
  {
    goto LABEL_41;
  }

  v26 = 0xE900000000000079;
  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v36 = 0xE700000000000000;
        v37 = 0x79616473657574;
      }

      else
      {
        v37 = 0x616473656E646577;
        v36 = 0xE900000000000079;
      }
    }

    else
    {
      v36 = 0xE600000000000000;
      v37 = 0x7961646E6F6DLL;
    }
  }

  else if (v17 > 4u)
  {
    if (v17 == 5)
    {
      v36 = 0xE800000000000000;
      v37 = 0x7961647275746173;
    }

    else
    {
      v37 = 0x7961646E7573;
      v36 = 0xE600000000000000;
    }
  }

  else if (v17 == 3)
  {
    v36 = 0xE800000000000000;
    v37 = 0x7961647372756874;
  }

  else
  {
    v36 = 0xE600000000000000;
    v37 = 0x796164697266;
  }

  if (v24 <= 2)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        v38 = 0xE700000000000000;
        v29 = 0x79616473657574;
      }

      else
      {
        v29 = 0x616473656E646577;
        v38 = 0xE900000000000079;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (v24 <= 4)
    {
      if (v24 == 3)
      {
        v38 = 0xE800000000000000;
        v29 = 0x7961647372756874;
      }

      else
      {
        v38 = 0xE600000000000000;
        v29 = 0x796164697266;
      }

      goto LABEL_68;
    }

    if (v24 == 5)
    {
      v38 = 0xE800000000000000;
      v29 = 0x7961647275746173;
      goto LABEL_68;
    }

    v29 = 0x7961646E7573;
  }

  v38 = 0xE600000000000000;
LABEL_68:
  v39 = v44;
  if (v37 == v29 && v36 == v38)
  {
  }

  else
  {
    v40 = sub_1B4D18DCC();

    if ((v40 & 1) == 0)
    {
      v25 = *&aMonday_2[8 * v19];
      v26 = qword_1B4D42778[v19];
      v42 = *(v9 + 8);
      v42(v39, v8);
      v42(v16, v8);
      goto LABEL_10;
    }
  }

  v41 = *(v9 + 8);
  v41(v39, v8);
  v41(v16, v8);
  v25 = 0x6164726574736579;
LABEL_10:
  v27 = v25;
  v28 = v26;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t DayOfWeek.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12];
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  sub_1B4D178FC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v15 = sub_1B4D175FC();
    (*(*(v15 - 8) + 8))(a1, v15);
    result = sub_1B497A590(v6);
    v17 = 7;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    DayOfWeek.init(from:)(v10, &v20);
    v18 = sub_1B4D175FC();
    (*(*(v18 - 8) + 8))(a1, v18);
    result = (*(v8 + 8))(v13, v7);
    v17 = v20;
  }

  *a2 = v17;
  return result;
}

uint64_t sub_1B4C74A14(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C74BDC()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_1B4C74CB4(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (v3 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (v3 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (v3 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

unint64_t sub_1B4C74D88()
{
  result = qword_1EB8AD6C0;
  if (!qword_1EB8AD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6C0);
  }

  return result;
}

unint64_t sub_1B4C74DE0()
{
  result = qword_1EB8AD6C8;
  if (!qword_1EB8AD6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD6D0, &qword_1B4D42660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6C8);
  }

  return result;
}

unint64_t sub_1B4C74E54()
{
  result = qword_1EB8AD6D8;
  if (!qword_1EB8AD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6D8);
  }

  return result;
}

uint64_t static WorkoutDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = v6, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = v4;
    v11 = v5;
    [v7 coordinate];
    v13 = v12;
    [v9 coordinate];
    if (v13 != v14)
    {

      return 0;
    }

    [v7 coordinate];
    v16 = v15;
    [v9 coordinate];
    v18 = v17;

    if (v16 != v18)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for WorkoutDetails(0);

  return sub_1B4D1774C();
}

uint64_t type metadata accessor for WorkoutDetails(uint64_t a1)
{
  result = qword_1EB8AD6F8;
  if (!qword_1EB8AD6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4C75080()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B4C750E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C75AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C75108(uint64_t a1)
{
  v2 = sub_1B4C753A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C75144(uint64_t a1)
{
  v2 = sub_1B4C753A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD6E0, &unk_1B4D427B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C753A0();
  sub_1B4D18EFC();
  v12 = *v3;
  v11[7] = 0;
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v11[6] = 1;
    sub_1B4D18CDC();
    type metadata accessor for WorkoutDetails(0);
    v11[5] = 2;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B4C753A0()
{
  result = qword_1EB8AD6E8;
  if (!qword_1EB8AD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6E8);
  }

  return result;
}

void WorkoutDetails.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_1B4D1777C();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD6F0, &qword_1B4D427C0);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WorkoutDetails(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C753A0();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = v8;
    v17 = v5;
    v12 = v20;
    v11 = v21;
    v13 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v25 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0, &protocol conformance descriptor for CodableBridging<A>);
    v14 = v22;
    sub_1B4D18C0C();
    *v13 = v26;
    v24 = 1;
    sub_1B4D18BDC();
    *(v13 + 1) = v15;
    v23 = 2;
    sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
    sub_1B4D18C0C();
    (*(v12 + 8))(v7, v14);
    (*(v18 + 32))(&v13[*(v16 + 24)], v17, v11);
    sub_1B4C7577C(v13, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4C757E0(v13);
  }
}

uint64_t sub_1B4C7577C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C757E0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C7586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return sub_1B4D1774C();
}

void sub_1B4C75914(uint64_t a1)
{
  sub_1B49B13FC(319);
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4C759B4()
{
  result = qword_1EB8AD708;
  if (!qword_1EB8AD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD708);
  }

  return result;
}

unint64_t sub_1B4C75A0C()
{
  result = qword_1EB8AD710;
  if (!qword_1EB8AD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD710);
  }

  return result;
}

unint64_t sub_1B4C75A64()
{
  result = qword_1EB8AD718;
  if (!qword_1EB8AD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD718);
  }

  return result;
}

uint64_t sub_1B4C75AB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B4C75BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D177CC();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v13 = type metadata accessor for BestWorkoutMeasurementEntry(0, a4, v11, v12);
  sub_1B4AF497C(a2, a5 + *(v13 + 28));
  v14 = *(v13 + 32);
  v15 = sub_1B4D1746C();
  v16 = *(*(v15 - 8) + 32);

  return v16(a5 + v14, a3, v15);
}

uint64_t DistanceReference.rawValue.getter()
{
  v1 = [objc_opt_self() *off_1E7C11C98[*v0]];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);

  return sub_1B4D1741C();
}

uint64_t DistanceSampleIntervalRecord.speed.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  DistanceSampleIntervalRecord.pace.getter(&v10 - v5);
  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  sub_1B4D1745C();
  sub_1B4D1742C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = [objc_opt_self() metersPerSecond];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  sub_1B4D1741C();
  return (v7)(v6, v0);
}

uint64_t DistanceReference.init(rawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = 0;
  v9 = (v8 + 8);
  while (v7 != 16)
  {
    v10 = byte_1F2CB79C0[v7++ + 32];
    v15 = v10;
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
    v11 = sub_1B4D1816C();
    v12 = *v9;
    (*v9)(v6, v3);
    if (v11)
    {
      *v14 = v10;
      return (v12)(a1, v3);
    }
  }

  result = (*v9)(a1, v3, v4);
  *v14 = 16;
  return result;
}

uint64_t sub_1B4C76108(_BYTE *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  v8[15] = *a1;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
  LOBYTE(a1) = sub_1B4D1811C();
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

uint64_t sub_1B4C76250(char a1)
{
  result = 0x6D6F6C694B656E6FLL;
  switch(a1)
  {
    case 1:
      result = 0x656C694D656E6FLL;
      break;
    case 2:
      result = 0x6F6C694B65766966;
      break;
    case 3:
      result = 0x656C694D65766966;
      break;
    case 4:
      result = 0x6D6F6C694B6E6574;
      break;
    case 5:
      result = 0x73656C694D6E6574;
      break;
    case 6:
    case 9:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x694D79746E657774;
      break;
    case 10:
      result = 0x6C694B7974666966;
      break;
    case 11:
      result = 0x6C694D7974666966;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      v3 = 1214606959;
      goto LABEL_14;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 1215264628;
LABEL_14:
      result = v3 | 0x72646E7500000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4C76430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C7CA98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C76458(uint64_t a1)
{
  v2 = sub_1B4C7957C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76494(uint64_t a1)
{
  v2 = sub_1B4C7957C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C764D0(uint64_t a1)
{
  v2 = sub_1B4C79774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C7650C(uint64_t a1)
{
  v2 = sub_1B4C79774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76548(uint64_t a1)
{
  v2 = sub_1B4C79720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76584(uint64_t a1)
{
  v2 = sub_1B4C79720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C765C0(uint64_t a1)
{
  v2 = sub_1B4C79A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C765FC(uint64_t a1)
{
  v2 = sub_1B4C79A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76638(uint64_t a1)
{
  v2 = sub_1B4C799C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76674(uint64_t a1)
{
  v2 = sub_1B4C799C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C766B0(uint64_t a1)
{
  v2 = sub_1B4C79870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C766EC(uint64_t a1)
{
  v2 = sub_1B4C79870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76728(uint64_t a1)
{
  v2 = sub_1B4C797C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76764(uint64_t a1)
{
  v2 = sub_1B4C797C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C767A0(uint64_t a1)
{
  v2 = sub_1B4C796CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C767DC(uint64_t a1)
{
  v2 = sub_1B4C796CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76818(uint64_t a1)
{
  v2 = sub_1B4C79678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76854(uint64_t a1)
{
  v2 = sub_1B4C79678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76890(uint64_t a1)
{
  v2 = sub_1B4C79ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C768CC(uint64_t a1)
{
  v2 = sub_1B4C79ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76908(uint64_t a1)
{
  v2 = sub_1B4C79A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76944(uint64_t a1)
{
  v2 = sub_1B4C79A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76980(uint64_t a1)
{
  v2 = sub_1B4C7996C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C769BC(uint64_t a1)
{
  v2 = sub_1B4C7996C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C769F8(uint64_t a1)
{
  v2 = sub_1B4C79918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76A34(uint64_t a1)
{
  v2 = sub_1B4C79918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76A70(uint64_t a1)
{
  v2 = sub_1B4C798C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76AAC(uint64_t a1)
{
  v2 = sub_1B4C798C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76AE8(uint64_t a1)
{
  v2 = sub_1B4C7981C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76B24(uint64_t a1)
{
  v2 = sub_1B4C7981C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76B60(uint64_t a1)
{
  v2 = sub_1B4C79624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76B9C(uint64_t a1)
{
  v2 = sub_1B4C79624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76BD8(uint64_t a1)
{
  v2 = sub_1B4C795D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76C14(uint64_t a1)
{
  v2 = sub_1B4C795D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DistanceReference.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD720, &qword_1B4D42980);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD728, &qword_1B4D42988);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD730, &qword_1B4D42990);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD738, &qword_1B4D42998);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD740, &qword_1B4D429A0);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD748, &qword_1B4D429A8);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v50 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD750, &qword_1B4D429B0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v50 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD758, &qword_1B4D429B8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v50 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD760, &qword_1B4D429C0);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v50 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD768, &qword_1B4D429C8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v50 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD770, &qword_1B4D429D0);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v50 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD778, &qword_1B4D429D8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v50 - v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD780, &qword_1B4D429E0);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v50 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD788, &qword_1B4D429E8);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v50 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD790, &qword_1B4D429F0);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v25 = &v50 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD798, &qword_1B4D429F8);
  v51 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD7A0, &qword_1B4D42A00);
  v29 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v31 = &v50 - v30;
  v32 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C7957C();
  v96 = v31;
  sub_1B4D18EFC();
  switch(v32)
  {
    case 1:
      v99 = 1;
      sub_1B4C79A68();
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v52 + 8);
      v40 = v25;
      v41 = &v85;
      goto LABEL_19;
    case 2:
      v99 = 2;
      sub_1B4C79A14();
      v43 = v54;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v55 + 8);
      v40 = v43;
      v41 = &v88;
      goto LABEL_19;
    case 3:
      v99 = 3;
      sub_1B4C799C0();
      v44 = v57;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v58 + 8);
      v40 = v44;
      v41 = &v91;
      goto LABEL_19;
    case 4:
      v99 = 4;
      sub_1B4C7996C();
      v38 = v60;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v61 + 8);
      v40 = v38;
      v41 = &v94;
      goto LABEL_19;
    case 5:
      v99 = 5;
      sub_1B4C79918();
      v46 = v63;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v64 + 8);
      v40 = v46;
      v41 = &v97;
      goto LABEL_19;
    case 6:
      v99 = 6;
      sub_1B4C798C4();
      v47 = v66;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v67 + 8);
      v40 = v47;
      v41 = &v98;
      goto LABEL_19;
    case 7:
      v99 = 7;
      sub_1B4C79870();
      v45 = v69;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v70 + 8);
      v40 = v45;
      v41 = &v100;
      goto LABEL_19;
    case 8:
      v99 = 8;
      sub_1B4C7981C();
      v48 = v72;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v73 + 8);
      v40 = v48;
      v41 = &v101;
      goto LABEL_19;
    case 9:
      v99 = 9;
      sub_1B4C797C8();
      v42 = v75;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v39 = *(v76 + 8);
      v40 = v42;
      v41 = &v102;
LABEL_19:
      v39(v40, *(v41 - 32));
      return (*(v29 + 8))(v33, v34);
    case 10:
      v99 = 10;
      sub_1B4C79774();
      v35 = v78;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v79;
      v36 = v80;
      goto LABEL_17;
    case 11:
      v99 = 11;
      sub_1B4C79720();
      v35 = v81;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v82;
      v36 = v83;
      goto LABEL_17;
    case 12:
      v99 = 12;
      sub_1B4C796CC();
      v35 = v84;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v85;
      v36 = v86;
      goto LABEL_17;
    case 13:
      v99 = 13;
      sub_1B4C79678();
      v35 = v87;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v88;
      v36 = v89;
      goto LABEL_17;
    case 14:
      v99 = 14;
      sub_1B4C79624();
      v35 = v90;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v91;
      v36 = v92;
      goto LABEL_17;
    case 15:
      v99 = 15;
      sub_1B4C795D0();
      v35 = v93;
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      v37 = v94;
      v36 = v95;
LABEL_17:
      (*(v37 + 8))(v35, v36);
      break;
    default:
      v99 = 0;
      sub_1B4C79ABC();
      v33 = v96;
      v34 = v97;
      sub_1B4D18C5C();
      (*(v51 + 8))(v28, v26);
      break;
  }

  return (*(v29 + 8))(v33, v34);
}

uint64_t DistanceReference.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD830, &qword_1B4D42A08);
  v110 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = v77 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD838, &qword_1B4D42A10);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v120 = v77 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD840, &qword_1B4D42A18);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v119 = v77 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD848, &qword_1B4D42A20);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v118 = v77 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD850, &qword_1B4D42A28);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v117 = v77 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD858, &qword_1B4D42A30);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v116 = v77 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD860, &qword_1B4D42A38);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v115 = v77 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD868, &qword_1B4D42A40);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v114 = v77 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD870, &qword_1B4D42A48);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v124 = v77 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD878, &qword_1B4D42A50);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v123 = v77 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD880, &qword_1B4D42A58);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v122 = v77 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD888, &qword_1B4D42A60);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v113 = v77 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD890, &qword_1B4D42A68);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v112 = v77 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD898, &qword_1B4D42A70);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v111 = v77 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD8A0, &qword_1B4D42A78);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v18 = v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD8A8, &qword_1B4D42A80);
  v81 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD8B0, &qword_1B4D42A88);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v77 - v24;
  v26 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B4C7957C();
  v27 = v128;
  sub_1B4D18EEC();
  v128 = v27;
  if (v27)
  {
LABEL_8:
    v47 = v127;
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  v78 = v21;
  v77[1] = v19;
  v79 = v18;
  v28 = v122;
  v29 = v123;
  v31 = v124;
  v30 = v125;
  v80 = v23;
  v32 = v126;
  v33 = sub_1B4D18C2C();
  v34 = (2 * *(v33 + 16)) | 1;
  v129[0] = v33;
  v129[1] = v33 + 32;
  v130 = 0;
  v131 = v34;
  v35 = sub_1B49C8048();
  v36 = v25;
  if (v130 != v131 >> 1)
  {
LABEL_6:
    v43 = sub_1B4D189BC();
    v44 = swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
    *v46 = &type metadata for DistanceReference;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
    v128 = v44;
    swift_willThrow();
    (*(v80 + 8))(v25, v22);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v37 = v35;
  switch(v35)
  {
    case 0:
      v134 = 0;
      sub_1B4C79ABC();
      v38 = v78;
      v39 = v128;
      sub_1B4D18B4C();
      v128 = v39;
      if (v39)
      {
        goto LABEL_39;
      }

      v40 = *(v81 + 8);
      v41 = v38;
      v42 = &v109;
      goto LABEL_41;
    case 1:
      v134 = 1;
      sub_1B4C79A68();
      v67 = v79;
      v68 = v128;
      sub_1B4D18B4C();
      v128 = v68;
      if (v68)
      {
        goto LABEL_39;
      }

      v40 = *(v82 + 8);
      v41 = v67;
      v42 = &v115;
      goto LABEL_41;
    case 2:
      v134 = 2;
      sub_1B4C79A14();
      v59 = v111;
      v60 = v128;
      sub_1B4D18B4C();
      v128 = v60;
      if (v60)
      {
        goto LABEL_39;
      }

      v40 = *(v84 + 8);
      v41 = v59;
      v42 = &v117;
      goto LABEL_41;
    case 3:
      v134 = 3;
      sub_1B4C799C0();
      v64 = v112;
      v65 = v128;
      sub_1B4D18B4C();
      v128 = v65;
      if (v65)
      {
        goto LABEL_39;
      }

      v40 = *(v86 + 8);
      v41 = v64;
      v42 = &v119;
      goto LABEL_41;
    case 4:
      v134 = 4;
      sub_1B4C7996C();
      v53 = v113;
      v54 = v128;
      sub_1B4D18B4C();
      v128 = v54;
      if (v54)
      {
        goto LABEL_39;
      }

      v40 = *(v88 + 8);
      v41 = v53;
      v42 = &v121;
      goto LABEL_41;
    case 5:
      v134 = 5;
      sub_1B4C79918();
      v69 = v128;
      sub_1B4D18B4C();
      v128 = v69;
      if (v69)
      {
        goto LABEL_39;
      }

      v40 = *(v90 + 8);
      v41 = v28;
      v42 = &v123;
      goto LABEL_41;
    case 6:
      v134 = 6;
      sub_1B4C798C4();
      v72 = v128;
      sub_1B4D18B4C();
      v128 = v72;
      if (v72)
      {
        goto LABEL_39;
      }

      v40 = *(v92 + 8);
      v41 = v29;
      v42 = &v125;
      goto LABEL_41;
    case 7:
      v134 = 7;
      sub_1B4C79870();
      v66 = v128;
      sub_1B4D18B4C();
      v128 = v66;
      if (v66)
      {
        goto LABEL_39;
      }

      v40 = *(v94 + 8);
      v41 = v31;
      v42 = &v127;
      goto LABEL_41;
    case 8:
      v134 = 8;
      sub_1B4C7981C();
      v75 = v114;
      v76 = v128;
      sub_1B4D18B4C();
      v128 = v76;
      if (v76)
      {
        goto LABEL_39;
      }

      v40 = *(v96 + 8);
      v41 = v75;
      v42 = v129;
      goto LABEL_41;
    case 9:
      v134 = 9;
      sub_1B4C797C8();
      v57 = v115;
      v58 = v128;
      sub_1B4D18B4C();
      v128 = v58;
      if (v58)
      {
        goto LABEL_39;
      }

      v40 = *(v98 + 8);
      v41 = v57;
      v42 = &v130;
      goto LABEL_41;
    case 10:
      v134 = 10;
      sub_1B4C79774();
      v73 = v116;
      v74 = v128;
      sub_1B4D18B4C();
      v128 = v74;
      if (v74)
      {
        goto LABEL_39;
      }

      v40 = *(v100 + 8);
      v41 = v73;
      v42 = &v132;
      goto LABEL_41;
    case 11:
      v134 = 11;
      sub_1B4C79720();
      v51 = v117;
      v52 = v128;
      sub_1B4D18B4C();
      v128 = v52;
      if (v52)
      {
        goto LABEL_39;
      }

      v40 = *(v102 + 8);
      v41 = v51;
      v42 = &v133;
      goto LABEL_41;
    case 12:
      v134 = 12;
      sub_1B4C796CC();
      v55 = v118;
      v56 = v128;
      sub_1B4D18B4C();
      v128 = v56;
      if (v56)
      {
        goto LABEL_39;
      }

      v40 = *(v104 + 8);
      v41 = v55;
      v42 = &v135;
      goto LABEL_41;
    case 13:
      v134 = 13;
      sub_1B4C79678();
      v70 = v119;
      v71 = v128;
      sub_1B4D18B4C();
      v128 = v71;
      if (v71)
      {
        goto LABEL_39;
      }

      v40 = *(v106 + 8);
      v41 = v70;
      v42 = &v136;
      goto LABEL_41;
    case 14:
      v134 = 14;
      sub_1B4C79624();
      v49 = v120;
      v50 = v128;
      sub_1B4D18B4C();
      v128 = v50;
      if (v50)
      {
        goto LABEL_39;
      }

      v40 = *(v108 + 8);
      v41 = v49;
      v42 = &v137;
LABEL_41:
      v40(v41, *(v42 - 32));
      goto LABEL_42;
    case 15:
      v61 = v30;
      v134 = 15;
      sub_1B4C795D0();
      v62 = v121;
      v63 = v128;
      sub_1B4D18B4C();
      v128 = v63;
      if (v63)
      {
LABEL_39:
        (*(v80 + 8))(v36, v22);
        goto LABEL_7;
      }

      (*(v110 + 8))(v62, v61);
LABEL_42:
      (*(v80 + 8))(v36, v22);
      swift_unknownObjectRelease();
      v47 = v127;
      *v32 = v37;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t sub_1B4C78BB8(_BYTE *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *a2;
  v14[15] = *a1;
  v14[14] = v11;
  DistanceReference.rawValue.getter();
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  LOBYTE(a2) = sub_1B4D1816C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  return a2 & 1;
}

uint64_t sub_1B4C78D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-v3];
  v5 = *v0;
  sub_1B4D18E8C();
  v7[7] = v5;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  (*(v2 + 8))(v4, v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C78E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = *v1;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B4C78FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  v6 = *v1;
  sub_1B4D18E8C();
  v8[7] = v6;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  (*(v3 + 8))(v5, v2);
  return sub_1B4D18EDC();
}

uint64_t DistanceSampleIntervalRecord.distanceMarker.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DistanceSampleIntervalRecord(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DistanceSampleIntervalRecord.distance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DistanceSampleIntervalRecord(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DistanceSampleIntervalRecord.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DistanceSampleIntervalRecord(0) + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DistanceSampleIntervalRecord.pace.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  type metadata accessor for DistanceSampleIntervalRecord(0);
  v9 = [objc_opt_self() meters];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 > 0.0)
  {
    v12 = [objc_opt_self() seconds];
    sub_1B4D1745C();

    sub_1B4D1742C();
    (*(v2 + 8))(v4, v1);
  }

  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDC36E88;
  type metadata accessor for UnitPace();
  v14 = v13;
  return sub_1B4D1741C();
}

unint64_t sub_1B4C7957C()
{
  result = qword_1EB8AD7A8;
  if (!qword_1EB8AD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7A8);
  }

  return result;
}

unint64_t sub_1B4C795D0()
{
  result = qword_1EB8AD7B0;
  if (!qword_1EB8AD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7B0);
  }

  return result;
}

unint64_t sub_1B4C79624()
{
  result = qword_1EB8AD7B8;
  if (!qword_1EB8AD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7B8);
  }

  return result;
}

unint64_t sub_1B4C79678()
{
  result = qword_1EB8AD7C0;
  if (!qword_1EB8AD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7C0);
  }

  return result;
}

unint64_t sub_1B4C796CC()
{
  result = qword_1EB8AD7C8;
  if (!qword_1EB8AD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7C8);
  }

  return result;
}

unint64_t sub_1B4C79720()
{
  result = qword_1EB8AD7D0;
  if (!qword_1EB8AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7D0);
  }

  return result;
}

unint64_t sub_1B4C79774()
{
  result = qword_1EB8AD7D8;
  if (!qword_1EB8AD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7D8);
  }

  return result;
}

unint64_t sub_1B4C797C8()
{
  result = qword_1EB8AD7E0;
  if (!qword_1EB8AD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7E0);
  }

  return result;
}

unint64_t sub_1B4C7981C()
{
  result = qword_1EB8AD7E8;
  if (!qword_1EB8AD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7E8);
  }

  return result;
}

unint64_t sub_1B4C79870()
{
  result = qword_1EB8AD7F0;
  if (!qword_1EB8AD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7F0);
  }

  return result;
}

unint64_t sub_1B4C798C4()
{
  result = qword_1EB8AD7F8;
  if (!qword_1EB8AD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD7F8);
  }

  return result;
}

unint64_t sub_1B4C79918()
{
  result = qword_1EB8AD800;
  if (!qword_1EB8AD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD800);
  }

  return result;
}

unint64_t sub_1B4C7996C()
{
  result = qword_1EB8AD808;
  if (!qword_1EB8AD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD808);
  }

  return result;
}

unint64_t sub_1B4C799C0()
{
  result = qword_1EB8AD810;
  if (!qword_1EB8AD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD810);
  }

  return result;
}

unint64_t sub_1B4C79A14()
{
  result = qword_1EB8AD818;
  if (!qword_1EB8AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD818);
  }

  return result;
}

unint64_t sub_1B4C79A68()
{
  result = qword_1EB8AD820;
  if (!qword_1EB8AD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD820);
  }

  return result;
}

unint64_t sub_1B4C79ABC()
{
  result = qword_1EB8AD828;
  if (!qword_1EB8AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD828);
  }

  return result;
}