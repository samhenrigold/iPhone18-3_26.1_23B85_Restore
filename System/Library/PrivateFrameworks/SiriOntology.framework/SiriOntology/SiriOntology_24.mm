unint64_t static UsoEntityMergeUtils.mergeEntity(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v5 != v7 || v6 != v8)
  {
    a1 = sub_1C095DF3C();
    if ((a1 & 1) == 0 && (v7 != 0x6E456F4E5F6F7375 || v8 != 0xEC00000079746974))
    {
      a1 = sub_1C095DF3C();
      if ((a1 & 1) == 0 && (v5 != 0x6E456F4E5F6F7375 || v6 != 0xEC00000079746974))
      {
        a1 = sub_1C095DF3C();
        if ((a1 & 1) == 0)
        {
          sub_1C095DC1C();

          v32 = 0xD00000000000001FLL;
          v33 = 0x80000001C0A034A0;
          MEMORY[0x1C68DD690](v7, v8);
          MEMORY[0x1C68DD690](0x20646E6120, 0xE500000000000000);
          v29 = MEMORY[0x1C68DD690](v5, v6);
          v4 = 0xD00000000000001FLL;
          sub_1C0794600(v29, v30, v31);
          swift_allocError();
          *v20 = 0xD00000000000001FLL;
          *(v20 + 8) = 0x80000001C0A034A0;
          goto LABEL_26;
        }
      }
    }
  }

  v34 = &type metadata for SiriEntityMergeFeatureFlag;
  v35 = sub_1C0794654(a1, a2, a3);
  v11 = sub_1C095D20C();
  v12 = __swift_destroy_boxed_opaque_existential_1(&v32);
  if ((v11 & 1) == 0)
  {
    if (v7 == 0x415F6E6F6D6D6F63 && v8 == 0xEC0000006D72616CLL || (v12 = sub_1C095DF3C(), (v12 & 1) != 0) || v5 == 0x415F6E6F6D6D6F63 && v6 == 0xEC0000006D72616CLL || (v12 = sub_1C095DF3C(), (v12 & 1) != 0))
    {
      v4 = 0x80000001C0A034F0;
      sub_1C0794600(v12, v13, v14);
      swift_allocError();
      *v20 = 0xD00000000000002DLL;
      *(v20 + 8) = 0x80000001C0A034F0;
LABEL_26:
      *(v20 + 16) = 0;
      swift_willThrow();
      return v4;
    }
  }

  v15 = *(v4 + 32);
  v16 = sub_1C07937CC(a2, v15);
  if (v16)
  {
    sub_1C07946A8(v15, v16);
    v18 = v17;
    v19 = _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0();
    if (v19)
    {
      v4 = v19;
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1C095DC1C();

      v32 = 0xD00000000000002FLL;
      v33 = 0x80000001C0A034C0;
      v22 = *(v18 + 40);
      v21 = *(v18 + 48);

      MEMORY[0x1C68DD690](v22, v21);

      v4 = v32;
      v24 = v33;
      sub_1C0794600(v23, v25, v26);
      swift_allocError();
      *v27 = v4;
      *(v27 + 8) = v24;
      *(v27 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
  }

  return v4;
}

unint64_t sub_1C0794600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F990;
  if (!qword_1EBE1F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F990);
  }

  return result;
}

unint64_t sub_1C0794654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F998;
  if (!qword_1EBE1F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F998);
  }

  return result;
}

void sub_1C07946A8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v40 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v39 = (v4 + 63) >> 6;
  v7 = 0;

  do
  {
LABEL_5:
    if (!v6)
    {
      do
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_47;
        }

        if (v8 >= v39)
        {

          return;
        }

        v6 = *(v40 + 8 * v8);
        ++v7;
      }

      while (!v6);
      v7 = v8;
    }

    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    v10 = (*(v3 + 48) + 16 * v9);
    v11 = v10[1];
    v48 = *v10;
    v12 = *(*(v3 + 56) + 8 * v9);
    if (v12 >> 62)
    {
      v13 = sub_1C095DCDC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    v45 = v13;
  }

  while (!v13);
  v47 = v12 & 0xC000000000000001;
  v42 = v6;
  v43 = v12 & 0xFFFFFFFFFFFFFF8;

  v14 = 0;
  v44 = v12;
  v46 = v11;
  v15 = v45;
  while (v47)
  {
    v16 = MEMORY[0x1C68DDAD0](v14, v12);
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_45;
    }

LABEL_24:
    if (sub_1C0517C50(v16, 1, 1, 1))
    {
      swift_beginAccess();
      if (*(*(a2 + 56) + 16))
      {
        sub_1C0516A8C(v48, v11);
        if (v18)
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = *(a2 + 56);
      v20 = v49[0];
      *(a2 + 56) = 0x8000000000000000;
      v22 = sub_1C0516A8C(v48, v46);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_46;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C066FDF8();
        }

        v11 = v46;
        v29 = v49[0];
        if ((v26 & 1) == 0)
        {
LABEL_31:
          v29[(v22 >> 6) + 8] |= 1 << v22;
          v30 = (v29[6] + 16 * v22);
          *v30 = v48;
          v30[1] = v11;
          *(v29[7] + 8 * v22) = MEMORY[0x1E69E7CC0];
          v31 = v29[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_49;
          }

          v29[2] = v33;

          goto LABEL_37;
        }
      }

      else
      {
        sub_1C0516A78(v25, isUniquelyReferenced_nonNull_native);
        v11 = v46;
        v27 = sub_1C0516A8C(v48, v46);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_50;
        }

        v22 = v27;
        v29 = v49[0];
        if ((v26 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      *(v29[7] + 8 * v22) = MEMORY[0x1E69E7CC0];

LABEL_37:
      *(a2 + 56) = v29;
      v12 = v44;
LABEL_38:
      v34 = type metadata accessor for UsoBuilder();
      if (v34 != MEMORY[0x1E69E6158] && v34 != MEMORY[0x1E69E7360])
      {
        v36 = sub_1C07A8D48(v49, v48, v11);
        if (*v35)
        {
          v37 = v35;

          MEMORY[0x1C68DD810](v38);
          if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C095D9AC();
            v11 = v46;
          }

          sub_1C095D9DC();
        }

        (v36)(v49, 0);
      }

      swift_endAccess();

      v15 = v45;
    }

    ++v14;
    if (v17 == v15)
    {

      v3 = v41;
      v6 = v42;
      goto LABEL_5;
    }
  }

  if (v14 >= *(v43 + 16))
  {
    goto LABEL_48;
  }

  v16 = *(v12 + 8 * v14 + 32);

  v17 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_24;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_1C095DF6C();
  __break(1u);
}

uint64_t Graph.protobufGraphSiriNl(vocabManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v289 = a2;
  v320 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v292 = *(v320 - 8);
  v3 = MEMORY[0x1EEE9AC00](v320);
  v301 = &v288 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v300 = (&v288 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v297 = &v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v306 = &v288 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v315 = &v288 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v314 = &v288 - v13;
  v332 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v291 = *(v332 - 8);
  v14 = MEMORY[0x1EEE9AC00](v332);
  v16 = &v288 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v305 = &v288 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v288 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v303 = &v288 - v22;
  v307 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v302 = *(v307 - 8);
  v23 = MEMORY[0x1EEE9AC00](v307);
  v317 = &v288 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v334 = (&v288 - v25);
  v380 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v379 = *(v380 - 1);
  v26 = MEMORY[0x1EEE9AC00](v380);
  v28 = &v288 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v288 - v29);
  v351 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v350 = *(v351 - 8);
  v31 = MEMORY[0x1EEE9AC00](v351);
  v367 = &v288 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v364 = &v288 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v354 = &v288 - v35;
  v376 = sub_1C095D2EC();
  v36 = *(v376 - 8);
  MEMORY[0x1EEE9AC00](v376);
  v38 = &v288 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v352 = *(v353 - 8);
  v39 = MEMORY[0x1EEE9AC00](v353);
  v375 = (&v288 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v318 = &v288 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v313 = &v288 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v312 = &v288 - v45;
  v333 = sub_1C095D26C();
  v381 = *(v333 - 8);
  v46 = MEMORY[0x1EEE9AC00](v333);
  v311 = &v288 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v310 = &v288 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v293 = &v288 - v50;
  v51 = sub_1C095D2AC();
  v378 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v294 = &v288 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v54 = MEMORY[0x1EEE9AC00](v53 - 8);
  v346 = &v288 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v319 = &v288 - v56;
  v356 = sub_1C095D32C();
  v377 = *(v356 - 8);
  v57 = MEMORY[0x1EEE9AC00](v356);
  v345 = &v288 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v323 = &v288 - v59;
  v328 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v327 = *(v328 - 8);
  v60 = MEMORY[0x1EEE9AC00](v328);
  v338 = &v288 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v341 = &v288 - v62;
  v63 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v63);
  v299 = (&v288 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v330 = v51;
  v296 = v16;
  v344 = v38;
  *&v382 = v36;
  if (!a1)
  {
    if (qword_1EBE154C8 != -1)
    {
      goto LABEL_188;
    }

    goto LABEL_4;
  }

  v65 = v21;
  v295 = a1;
LABEL_5:
  v21 = MEMORY[0x1E69E7CC0];
  v69 = v299;
  *v299 = MEMORY[0x1E69E7CC0];
  *(v69 + 1) = v21;
  *(v69 + 2) = v21;
  *(v69 + 3) = v21;

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v70 = *(v63 + 36);
  v71 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v71 - 8) + 56))(&v69[v70], 1, 1, v71);
  v339 = sub_1C058C208(v21);
  v72 = sub_1C051DBB0();
  v73 = *(v72 + 2);
  v304 = v65;
  v326 = v73;
  if (v73)
  {
    v325 = v72 + 32;
    v366 = v377 + 7;
    v329 = v378 + 7;
    v331 = (v381 + 56);
    v347 = (v377 + 6);
    v349 = v377 + 4;
    v74 = 0;
    v309 = (v378 + 6);
    v290 = v378 + 4;
    v321 = (v381 + 48);
    v316 = (v381 + 32);
    v308 = (v381 + 8);
    v362 = (v382 + 56);
    v343 = (v382 + 48);
    v348 = (v382 + 32);
    v63 = v21;
    v378 = v21;
    v377 = v21;
    v381 = v28;
    v75 = v364;
    v76 = v341;
    v324 = v72;
    while (1)
    {
      if (v74 >= *(v72 + 2))
      {
        goto LABEL_182;
      }

      v340 = v63;
      v336 = v74;
      v382 = *&v325[16 * v74];
      v77 = v382;
      *v76 = 0;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0xE000000000000000;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0xE000000000000000;
      *(v76 + 40) = v21;
      v78 = v328;
      v337 = v77;

      v79 = *(&v382 + 1);
      swift_unownedRetain();
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v80 = *v366;
      v373 = v78[9];
      v365 = v80;
      v80(v76 + v373, 1, 1, v356);
      v81 = v78[10];
      v82 = *v329;
      (*v329)(v76 + v81, 1, 1, v51);
      v83 = *v331;
      v374 = v78[11];
      v370 = v83;
      v83(v76 + v374, 1, 1, v333);
      v385 = v382;
      v84 = Node.stringValue.getter();
      v342 = v79;
      if (v85)
      {
        *&v382 = v84;
        v86 = v373;
        v87 = v319;
        sub_1C05149F8(v76 + v373, v319, &qword_1EBE16D68, &unk_1C09933C0);
        v88 = *v347;
        v89 = v356;
        if ((*v347)(v87, 1, v356) == 1)
        {
          sub_1C095D31C();
          v90 = v88(v87, 1, v89);
          v91 = v323;
          if (v90 != 1)
          {
            sub_1C05145B4(v87, &qword_1EBE16D68, &unk_1C09933C0);
          }
        }

        else
        {
          v91 = v323;
          (*v349)(v323, v87, v89);
        }

        sub_1C095D30C();
        v98 = v341;
        sub_1C05145B4(v341 + v86, &qword_1EBE16D68, &unk_1C09933C0);
        (*v349)(v98 + v86, v91, v89);
        v365(v98 + v86, 0, 1, v89);
        v99 = v342;
        swift_unownedRetainStrong();
        v101 = v99[8];
        v100 = v99[9];

        if (qword_1ED5D7CA0 != -1)
        {
          swift_once();
        }

        v102 = MEMORY[0x1E69E7CC0];
        if (__PAIR128__(v100, v101) == xmmword_1ED5D7CA8)
        {

          goto LABEL_26;
        }

        v103 = sub_1C095DF3C();

        v104 = v102;
        if (v103)
        {
LABEL_26:
          swift_unownedRetainStrong();
          v104 = v99[6];
        }

        *(v341 + 40) = v104;
        goto LABEL_28;
      }

      *&v382 = v81;
      swift_unownedRetainStrong();
      v93 = v79[8];
      v92 = v79[9];

      if (qword_1ED5BDED8 != -1)
      {
        swift_once();
      }

      v94 = v93 == xmmword_1ED5BDEE0 && v92 == *(&xmmword_1ED5BDEE0 + 1);
      v95 = v309;
      v96 = v82;
      if (v94)
      {
      }

      else
      {
        v97 = sub_1C095DF3C();

        if ((v97 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v140 = v342;
      swift_unownedRetainStrong();
      v141 = v140[3];
      v142 = v140[4];
      v143 = *(v140 + 40);
      sub_1C0514B20(v141, v142, *(v140 + 40));

      if (v143 != 255)
      {
        if (v143)
        {
          sub_1C05144FC(v141, v142, v143);
        }

        else if ((v142 & 1) == 0)
        {
          v212 = v293;
          sub_1C05149F8(v341 + v382, v293, &qword_1EBE16DC0, &unk_1C0997A50);
          v213 = *v95;
          v214 = v330;
          if ((*v95)(v212, 1, v330) == 1)
          {
            sub_1C095D29C();
            v215 = v213(v212, 1, v214);
            v216 = v294;
            if (v215 != 1)
            {
              sub_1C05145B4(v212, &qword_1EBE16DC0, &unk_1C0997A50);
            }
          }

          else
          {
            v216 = v294;
            (*v290)(v294, v212, v214);
          }

          sub_1C095D28C();
          v217 = v341;
          v218 = v382;
          sub_1C05145B4(v341 + v382, &qword_1EBE16DC0, &unk_1C0997A50);
          (*v290)(v217 + v218, v216, v214);
          v96(v217 + v218, 0, 1, v214);
        }
      }

LABEL_28:
      v63 = v342;
      swift_unownedRetainStrong();
      v106 = *(v63 + 80);
      v105 = *(v63 + 88);

      if (v106 == 1802723668 && v105 == 0xE400000000000000)
      {

LABEL_32:
        swift_unownedRetainStrong();
        v108 = *(v63 + 64);
        v109 = *(v63 + 72);
        v110 = *(v63 + 88);
        *&v382 = *(v63 + 80);
        v21 = *(v63 + 96);

        if (qword_1EBE14950 != -1)
        {
          swift_once();
        }

        *&v385 = v108;
        *(&v385 + 1) = v109;
        v386 = v382;
        v387 = v110;
        v388 = v21;
        *&v382 = qword_1EBE50A38;
        v111 = sub_1C0516F90(&v385);

        if ((v111 & 0x100000000) != 0)
        {
          type metadata accessor for Graph();
          swift_unownedRetainStrong();
          v112 = *(v63 + 64);
          v113 = *(v63 + 72);
          v114 = v63;
          v115 = *(v63 + 80);
          v116 = *(v114 + 88);
          v117 = *(v114 + 96);

          v383[0] = v112;
          v383[1] = v113;
          v383[2] = v115;
          v383[3] = v116;
          v383[4] = v117;
          v118 = v322;
          static Graph.getNamesForTaskNodeName(name:)(&v385, v384, v383);
          v322 = v118;
          if (v118)
          {

            swift_unownedRelease();

            sub_1C079B5B8(v341, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
LABEL_179:

            v286 = v299;
            return sub_1C079B5B8(v286, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
          }

          v119 = v385;
          v120 = v386;
          v121 = v387;
          v21 = v388;
          v122 = v384[1];
          v369 = v384[0];
          v63 = v384[3];
          v368 = v384[2];
          v123 = v384[4];

          v373 = v123;

          v385 = v119;
          v386 = v120;
          v387 = v121;
          v388 = v21;
          v124 = sub_1C0516F90(&v385);
          if ((v124 & 0x100000000) != 0)
          {
            v125 = 0;
          }

          else
          {
            v125 = v124;
          }

          if (v125 < 0)
          {
            goto LABEL_186;
          }

          v360 = v21;
          v361 = v121;
          v358 = v119;
          v371 = v63;
          v126 = v312;
          sub_1C05149F8(v341 + v374, v312, &qword_1EBE16B58, &unk_1C099B6A0);
          v127 = *v321;
          v128 = v333;
          v129 = (*v321)(v126, 1, v333);
          v372 = v122;
          v363 = *(&v119 + 1);
          v359 = v127;
          if (v129 == 1)
          {
            v130 = v310;
            sub_1C095D25C();
            v131 = v127(v126, 1, v128);
            v21 = v128;
            if (v131 != 1)
            {
              sub_1C05145B4(v126, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v130 = v310;
            (*v316)(v310, v126, v128);
            v21 = v128;
          }

          sub_1C095D24C();
          v144 = v341;
          v145 = v374;
          sub_1C05145B4(v341 + v374, &qword_1EBE16B58, &unk_1C099B6A0);
          v146 = v130;
          v147 = *v316;
          (*v316)(&v144[v145], v146, v21);
          v370(&v144[v145], 0, 1, v21);
          *&v385 = v369;
          *(&v385 + 1) = v372;
          v386 = v368;
          v387 = v371;
          v388 = v373;
          v148 = sub_1C0516F90(&v385);
          if ((v148 & 0x100000000) != 0)
          {
            v149 = 0;
          }

          else
          {
            v149 = v148;
          }

          LODWORD(v382) = v149;
          *v144 = v149;
          v150 = v313;
          sub_1C05149F8(&v144[v145], v313, &qword_1EBE16B58, &unk_1C099B6A0);
          v151 = v359;
          if (v359(v150, 1, v21) == 1)
          {
            v152 = v311;
            sub_1C095D25C();
            v153 = v151(v150, 1, v21);
            v75 = v364;
            v63 = v342;
            if (v153 != 1)
            {
              sub_1C05145B4(v150, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v154 = v311;
            v147(v311, v150, v21);
            v152 = v154;
            v75 = v364;
            v63 = v342;
          }

          LODWORD(v374) = sub_1C095D23C();

          v155 = v363;

          (*v308)(v152, v21);

          if (v374)
          {

            v156 = v341;
          }

          else
          {
            v156 = v341;
            *(v341 + 24) = v358;
            v156[4] = v155;
          }

          if (v382)
          {
          }

          else
          {
            v157 = v372;
            v156[1] = v369;
            v156[2] = v157;
          }
        }

        else
        {
          *v341 = v111;
        }

        goto LABEL_70;
      }

      v107 = sub_1C095DF3C();

      if (v107)
      {
        goto LABEL_32;
      }

      swift_unownedRetainStrong();
      v132 = *(v63 + 64);
      v133 = *(v63 + 72);
      v134 = v63;
      v135 = *(v63 + 80);
      v136 = *(v134 + 88);
      v21 = *(v134 + 96);

      if (qword_1EBE14950 != -1)
      {
        swift_once();
      }

      *&v385 = v132;
      *(&v385 + 1) = v133;
      v386 = v135;
      v387 = v136;
      v388 = v21;
      v137 = sub_1C0516F90(&v385);

      if ((v137 & 0x100000000) != 0)
      {
        v138 = 0;
      }

      else
      {
        v138 = v137;
      }

      *v341 = v138;
      if (v138)
      {
        v139 = v340;
        v63 = v342;
        goto LABEL_71;
      }

      v63 = v342;
      swift_unownedRetainStrong();
      v158 = *(v63 + 64);
      v159 = *(v63 + 72);

      *(v341 + 8) = v158;
      *(v341 + 16) = v159;
LABEL_70:
      v139 = v340;
LABEL_71:
      swift_unownedRetainStrong();
      swift_beginAccess();
      v160 = *(v63 + 104);

      v161 = *(v160 + 16);
      v335 = v160;
      if (v161)
      {
        v355 = *(v139 + 16);
        if (HIDWORD(v355))
        {
          goto LABEL_184;
        }

        v63 = v160 + 104;
        v162 = v318;
        while (2)
        {
          *&v382 = v161;
          v163 = *(v63 - 64);
          v369 = *(v63 - 72);
          v164 = *(v63 - 48);
          v368 = *(v63 - 56);
          v165 = *(v63 - 32);
          v363 = *(v63 - 40);
          LODWORD(v370) = *(v63 - 16);
          v374 = *(v63 - 15);
          LODWORD(v360) = *(v63 - 12);
          LODWORD(v372) = *(v63 - 8);
          LODWORD(v361) = *(v63 - 4);
          LODWORD(v373) = *v63;
          *v162 = 0;
          *(v162 + 8) = 0;
          *(v162 + 16) = 0xE000000000000000;
          *(v162 + 24) = 0;
          *(v162 + 32) = 0xE000000000000000;
          *(v162 + 40) = 0;
          *(v162 + 48) = 1;
          v166 = v353;

          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v167 = v166[9];
          v168 = v356;
          v365(v162 + v167, 1, 1, v356);
          v169 = *v362;
          v371 = v166[10];
          v357 = v169;
          v169(v162 + v371, 1, 1, v376);
          v170 = v162 + v166[11];
          *v170 = 0;
          v358 = v170;
          *(v170 + 4) = 1;
          v171 = v162 + v166[12];
          *v171 = 0;
          v359 = v171;
          *(v171 + 4) = 1;
          *v162 = v355;
          *(v162 + 24) = v369;
          *(v162 + 32) = v163;
          *(v162 + 8) = v368;
          *(v162 + 16) = v164;
          v369 = v165;
          if (v165)
          {
            v172 = v168;
            v173 = v346;
            sub_1C05149F8(v162 + v167, v346, &qword_1EBE16D68, &unk_1C09933C0);
            v174 = *v347;
            if ((*v347)(v173, 1, v172) == 1)
            {
              v175 = v345;
              sub_1C095D31C();
              if (v174(v173, 1, v172) != 1)
              {
                sub_1C05145B4(v173, &qword_1EBE16D68, &unk_1C09933C0);
              }
            }

            else
            {
              v175 = v345;
              (*v349)(v345, v173, v172);
            }

            sub_1C095D30C();
            sub_1C05145B4(v162 + v167, &qword_1EBE16D68, &unk_1C09933C0);
            (*v349)(v162 + v167, v175, v172);
            v365(v162 + v167, 0, 1, v172);
          }

          v28 = v381;
          v176 = v354;
          v177 = v376;
          if ((v370 & 1) == 0)
          {
            sub_1C05149F8(v162 + v371, v354, &qword_1EBE1E830, &qword_1C09933E0);
            v178 = *v343;
            if ((*v343)(v176, 1, v177) == 1)
            {
              v179 = v344;
              sub_1C095D2DC();
              if (v178(v176, 1, v177) != 1)
              {
                sub_1C05145B4(v176, &qword_1EBE1E830, &qword_1C09933E0);
              }
            }

            else
            {
              v179 = v344;
              (*v348)(v344, v176, v177);
            }

            sub_1C095D2CC();
            v180 = v371;
            sub_1C05145B4(v162 + v371, &qword_1EBE1E830, &qword_1C09933E0);
            (*v348)(v162 + v180, v179, v177);
            v357(v162 + v180, 0, 1, v177);
          }

          v181 = v374;
          if ((v372 & 1) == 0)
          {
            v182 = v358;
            *v358 = v360;
            *(v182 + 4) = 0;
          }

          v75 = v364;
          if ((v373 & 1) == 0)
          {
            v183 = v359;
            *v359 = v361;
            v183[4] = 0;
          }

          v184 = 0;
          v185 = 1;
          if (v181 <= 1)
          {
            if (v181)
            {
              if (v181 != 1)
              {
                goto LABEL_100;
              }

              v184 = 1;
            }
          }

          else if (v181 == 2)
          {
            v184 = 2;
          }

          else if (v181 == 3)
          {
            v184 = 3;
          }

          else if (v181 != 7)
          {
LABEL_100:
            v185 = 0;
            v184 = v181;
          }

          *(v162 + 40) = v184;
          *(v162 + 48) = v185;
          sub_1C079B618(v162, v375, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v378 = sub_1C05784DC(0, v378[2] + 1, 1, v378);
          }

          v187 = v378[2];
          v186 = v378[3];
          if (v187 >= v186 >> 1)
          {
            v378 = sub_1C05784DC((v186 > 1), v187 + 1, 1, v378);
          }

          v188 = v378;
          v378[2] = v187 + 1;
          sub_1C079B550(v375, v188 + ((*(v352 + 80) + 32) & ~*(v352 + 80)) + *(v352 + 72) * v187, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          sub_1C079B5B8(v162, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          v63 += 96;
          v161 = v382 - 1;
          if (v382 == 1)
          {
            break;
          }

          continue;
        }
      }

      v189 = v342;
      swift_unownedRetainStrong();
      v190 = v189[14];

      v374 = *(v190 + 16);
      if (v374)
      {
        v373 = *(v340 + 16);
        v21 = MEMORY[0x1E69E7CC0];
        if (!HIDWORD(v373))
        {
          v63 = 0;
          v372 = v190 + 32;
          while (v63 < *(v190 + 16))
          {
            v191 = v372 + 16 * v63;
            v192 = *(v191 + 8);
            v193 = *v191;
            *v75 = 0;
            *(v75 + 8) = v21;
            *(v75 + 16) = 0;

            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            *(v75 + 16) = v373;
            *v75 = v193;
            *(v75 + 8) = v21;
            v194 = *(v192 + 16);
            if (v194)
            {
              v195 = (v192 + 48);
              do
              {
                v382 = *(v195 - 1);
                v196 = *v195;
                *v30 = 0;
                v30[1] = 0;
                v30[2] = 0;
                _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
                *v30 = v382;
                v30[2] = v196;
                sub_1C079B618(v30, v28, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_1C05784B4(0, *(v21 + 2) + 1, 1, v21);
                }

                v198 = *(v21 + 2);
                v197 = *(v21 + 3);
                if (v198 >= v197 >> 1)
                {
                  v21 = sub_1C05784B4((v197 > 1), v198 + 1, 1, v21);
                }

                sub_1C079B5B8(v30, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                *(v21 + 2) = v198 + 1;
                v199 = &v21[((v379[80] + 32) & ~v379[80]) + *(v379 + 9) * v198];
                v28 = v381;
                sub_1C079B550(v381, v199, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                v195 += 3;
                --v194;
              }

              while (v194);

              v75 = v364;
              *(v364 + 1) = v21;
              v21 = MEMORY[0x1E69E7CC0];
            }

            else
            {
            }

            sub_1C079B618(v75, v367, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v377 = sub_1C057848C(0, v377[2] + 1, 1, v377);
            }

            v201 = v377[2];
            v200 = v377[3];
            if (v201 >= v200 >> 1)
            {
              v377 = sub_1C057848C((v200 > 1), v201 + 1, 1, v377);
            }

            ++v63;
            v202 = v377;
            v377[2] = v201 + 1;
            sub_1C079B550(v367, v202 + ((*(v350 + 80) + 32) & ~*(v350 + 80)) + *(v350 + 72) * v201, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            sub_1C079B5B8(v75, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            if (v63 == v374)
            {

              v63 = v340;
              goto LABEL_126;
            }
          }

          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
        }

        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        swift_once();
LABEL_4:
        v65 = v21;
        type metadata accessor for UsoGraphVocabManager();
        v66 = swift_allocObject();
        v67 = MEMORY[0x1E69E7CC0];
        *(v66 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
        v68 = sub_1C051DA50(v67);
        v295 = v66;
        *(v66 + 24) = v68;
        v51 = v330;
        goto LABEL_5;
      }

      v63 = v340;
      v21 = MEMORY[0x1E69E7CC0];
LABEL_126:
      v203 = *(swift_unownedRetainStrong() + 56);

      v204 = *(v63 + 16);
      v205 = v339;
      if (HIDWORD(v204))
      {
        goto LABEL_183;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v385 = v205;
      sub_1C05CAD28(v204, v203, isUniquelyReferenced_nonNull_native);
      v207 = v385;
      sub_1C079B618(v341, v338, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v339 = v207;
      if ((v208 & 1) == 0)
      {
        v63 = sub_1C057852C(0, *(v63 + 16) + 1, 1, v63);
      }

      v51 = v330;
      v209 = v336;
      v211 = *(v63 + 16);
      v210 = *(v63 + 24);
      if (v211 >= v210 >> 1)
      {
        v63 = sub_1C057852C((v210 > 1), v211 + 1, 1, v63);
      }

      v74 = v209 + 1;

      swift_unownedRelease();
      *(v63 + 16) = v211 + 1;
      sub_1C079B550(v338, v63 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v211, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v76 = v341;
      sub_1C079B5B8(v341, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v72 = v324;
      if (v74 == v326)
      {
        v340 = v63;

        goto LABEL_140;
      }
    }
  }

  v378 = MEMORY[0x1E69E7CC0];
  v340 = MEMORY[0x1E69E7CC0];
  v377 = MEMORY[0x1E69E7CC0];
LABEL_140:
  v219 = v298;
  swift_beginAccess();
  v220 = *(v219 + 16);
  v221 = *(v220 + 16);

  v63 = v334;
  v368 = v221;
  if (v221)
  {
    v222 = 0;
    *&v382 = v291 + 56;
    v21 = (v291 + 48);
    v372 = v292 + 56;
    v30 = MEMORY[0x1E69E7CC0];
    v223 = v220 + 48;
    v369 = v220;
    v375 = (v291 + 48);
    while (v222 < *(v220 + 16))
    {
      v374 = v30;
      v371 = v222;
      LODWORD(v370) = *v223;
      v224 = *(v223 + 16);
      v373 = *(v223 + 8);
      v225 = *(v223 + 24);
      v226 = *(v223 + 32);
      v227 = *(v223 + 40);
      *v63 = 0;
      v228 = v307;
      v381 = v227;

      v379 = v224;

      v376 = v226;

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v229 = *(v228 + 28);
      v380 = *v382;
      (v380)(v63 + v229, 1, 1, v332);
      v230 = v339;
      if (!*(v339 + 16) || (v231 = sub_1C0514E38(), (v232 & 1) == 0) || (v233 = *(v230 + 56), v234 = *(v233 + 4 * v231), v235 = sub_1C0514E38(), (v236 & 1) == 0))
      {

        sub_1C079B4FC(v279, v280, v281);
        v282 = swift_allocError();
        *v283 = 0;
        *(v283 + 8) = 0;
        *(v283 + 16) = 3;
        v322 = v282;
        swift_willThrow();

        sub_1C079B5B8(v334, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
        goto LABEL_179;
      }

      v237 = *(v233 + 4 * v235);
      v238 = v334;
      *v334 = v234;
      v238[1] = v237;
      v239 = qword_1EBE14950;
      v240 = v379;

      v241 = v376;

      v242 = v381;

      if (v239 != -1)
      {
        swift_once();
      }

      *&v385 = v373;
      *(&v385 + 1) = v240;
      v386 = v225;
      v387 = v241;
      v388 = v242;
      v243 = sub_1C0516F90(&v385);

      if ((v243 & 0x100000000) != 0)
      {
        v244 = 0;
      }

      else
      {
        v244 = v243;
      }

      v245 = v314;
      sub_1C05149F8(v238 + v229, v314, &qword_1EBE16DA0, &qword_1C0997A60);
      v246 = *v375;
      v247 = v332;
      if ((*v375)(v245, 1, v332) == 1)
      {
        v248 = v303;
        *v303 = 0;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v372)(&v248[*(v247 + 28)], 1, 1, v320);
        v249 = v247;
        v250 = v248;
        if (v246(v245, 1, v249) != 1)
        {
          sub_1C05145B4(v314, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v250 = v303;
        sub_1C079B550(v245, v303, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      }

      *v250 = v244;
      v251 = v334;
      sub_1C05145B4(v334 + v229, &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C079B550(v250, v251 + v229, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v252 = v332;
      (v380)(v251 + v229, 0, 1, v332);
      v253 = v251 + v229;
      v254 = v315;
      sub_1C05149F8(v253, v315, &qword_1EBE16DA0, &qword_1C0997A60);
      v21 = v375;
      if (v246(v254, 1, v252) == 1)
      {
        v255 = v304;
        *v304 = 0;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v372)(&v255[*(v252 + 28)], 1, 1, v320);
        v256 = v254;
        v257 = v255;
        v21 = v375;
        v258 = v246(v256, 1, v252);
        v259 = v305;
        v260 = v370;
        if (v258 != 1)
        {
          sub_1C05145B4(v315, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v261 = v254;
        v257 = v304;
        sub_1C079B550(v261, v304, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v259 = v305;
        v260 = v370;
      }

      *(v257 + 1) = v260;
      v262 = v334;
      sub_1C05145B4(v334 + v229, &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C079B550(v257, v262 + v229, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v263 = v332;
      (v380)(v262 + v229, 0, 1, v332);
      v264 = v262 + v229;
      v265 = v306;
      sub_1C05149F8(v264, v306, &qword_1EBE16DA0, &qword_1C0997A60);
      if (v246(v265, 1, v263) == 1)
      {
        *v259 = 0;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v372)(&v259[*(v263 + 28)], 1, 1, v320);
        v266 = v246(v265, 1, v263);
        v28 = v379;
        v30 = v374;
        if (v266 != 1)
        {
          sub_1C05145B4(v265, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C079B550(v265, v259, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v28 = v379;
        v30 = v374;
      }

      v267 = *v259;
      sub_1C079B5B8(v259, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      if (!v267)
      {
        v268 = v300;
        *v300 = 0;
        v268[1] = 0xE000000000000000;
        v269 = v320;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        *v268 = v373;
        v268[1] = v28;
        sub_1C079B618(v268, v301, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v270 = v297;
        sub_1C05149F8(v334 + v229, v297, &qword_1EBE16DA0, &qword_1C0997A60);
        v271 = v332;
        if (v246(v270, 1, v332) == 1)
        {
          v21 = v296;
          *v296 = 0;

          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          (*v372)(&v21[*(v271 + 28)], 1, 1, v269);
          v272 = v246(v270, 1, v271);
          v273 = v271;
          if (v272 != 1)
          {
            sub_1C05145B4(v270, &qword_1EBE16DA0, &qword_1C0997A60);
          }
        }

        else
        {
          v21 = v296;
          sub_1C079B550(v270, v296, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

          v273 = v271;
        }

        v274 = *(v273 + 28);
        sub_1C05145B4(&v21[v274], &qword_1EBE16D90, &qword_1C0970458);
        sub_1C079B550(v301, &v21[v274], type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        (*v372)(&v21[v274], 0, 1, v320);
        v275 = v334;
        sub_1C05145B4(v334 + v229, &qword_1EBE16DA0, &qword_1C0997A60);
        sub_1C079B550(v21, v275 + v229, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        (v380)(v275 + v229, 0, 1, v273);
        sub_1C079B5B8(v300, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v30 = v374;
      }

      sub_1C079B618(v334, v317, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1C0578504(0, v30[2] + 1, 1, v30);
      }

      v220 = v369;
      v276 = v371;
      v278 = v30[2];
      v277 = v30[3];
      if (v278 >= v277 >> 1)
      {
        v30 = sub_1C0578504((v277 > 1), v278 + 1, 1, v30);
      }

      v222 = v276 + 1;

      v30[2] = v278 + 1;
      sub_1C079B550(v317, v30 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v278, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v63 = v334;
      sub_1C079B5B8(v334, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v223 += 64;
      if (v368 == v222)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_187;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_177:

  v284 = v299;
  *v299 = v340;
  v284[1] = v30;
  v285 = v377;
  v284[2] = v378;
  v284[3] = v285;
  sub_1C079B618(v284, v289, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  v286 = v284;
  return sub_1C079B5B8(v286, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
}

uint64_t static Graph.getNamesForTaskNodeName(name:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[4];
  if (v7 && (v8 = v7[3]) != 0)
  {
    v9 = v7[9];
    v29 = v7[8];
    v10 = v7[6];
    v11 = v7[7];
    v12 = v7[4];
    v13 = v7[5];
    v14 = v7[2];

    v15 = v29;
    result = v14;
  }

  else
  {
    result = sub_1C05EFD14(v6, v5);
    if (v17)
    {
      v8 = v17;
      v10 = v18;
      v11 = v19;
      v9 = 0xE600000000000000;
      v15 = 0x797469746E45;
      v13 = 0xE400000000000000;
      v12 = 1651664214;
    }

    else
    {
      sub_1C051D6F4(result, 0, v18);
      v20 = sub_1C095DB3C();
      if (*(v20 + 16) != 2)
      {

        sub_1C079B4FC(v24, v25, v26);
        swift_allocError();
        *v27 = v6;
        *(v27 + 8) = v5;
        *(v27 + 16) = 2;
        swift_willThrow();
      }

      v21 = v20;

      result = sub_1C095D8DC();
      v28 = result;
      if (*(v21 + 16) < 2uLL)
      {
        __break(1u);
        return result;
      }

      v8 = v22;

      v10 = sub_1C095D8DC();
      v11 = v23;
      v9 = 0xE600000000000000;
      v15 = 0x797469746E45;
      v13 = 0xE400000000000000;
      v12 = 1651664214;
      result = v28;
    }
  }

  *a1 = result;
  a1[1] = v8;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = 0;
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v9;
  a2[4] = 0;
  return result;
}

uint64_t Graph.protobufDataSiriNl()()
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Graph.protobufGraphSiriNl(vocabManager:)(0, v4);
  if (!v1)
  {
    sub_1C079B680();
    v0 = sub_1C095D58C();
    sub_1C079B5B8(v4, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return v0;
}

void sub_1C0798000(void *a1, char *a2)
{
  v384 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v396 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v440 = &v354 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v404 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v421 = &v354 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = sub_1C095D2EC();
  v371 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v403 = &v354 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v420 = &v354 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v419 = &v354 - v11;
  v437 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v372 = *(v437 - 1);
  MEMORY[0x1EEE9AC00](v437);
  v13 = (&v354 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v394 = &v354 - v15;
  v416 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v381 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v391 = (&v354 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v405 = &v354 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v364 = &v354 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v398 = &v354 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v390 = &v354 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v411 = (&v354 - v26);
  v428 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v380 = *(v428 - 8);
  v27 = MEMORY[0x1EEE9AC00](v428);
  v401 = &v354 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v365 = &v354 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v409 = &v354 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v408 = &v354 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v407 = &v354 - v35;
  v406 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v379 = *(v406 - 8);
  MEMORY[0x1EEE9AC00](v406);
  v433 = &v354 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_1C095D2AC();
  v439 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v367 = &v354 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v366 = &v354 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v373 = &v354 - v41;
  v422 = sub_1C095D32C();
  v42 = *(v422 - 8);
  v43 = MEMORY[0x1EEE9AC00](v422);
  v402 = &v354 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v369 = &v354 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v412 = &v354 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v418 = &v354 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v368 = &v354 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v377 = &v354 - v53;
  v413 = sub_1C095D26C();
  v436 = *(v413 - 1);
  v54 = MEMORY[0x1EEE9AC00](v413);
  v361 = &v354 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v376 = &v354 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v383 = &v354 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v363 = &v354 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v387 = &v354 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v399 = &v354 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v395 = &v354 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v68 = MEMORY[0x1EEE9AC00](v67 - 8);
  v360 = &v354 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v375 = &v354 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v382 = &v354 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v388 = &v354 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v362 = &v354 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v386 = &v354 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v354 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v410 = (&v354 - v83);
  v414 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v84 = *(v414 - 1);
  MEMORY[0x1EEE9AC00](v414);
  v86 = &v354 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Graph();
  swift_allocObject();
  v87 = Graph.init()();
  v397 = a1;
  v88 = *a1;
  v89 = *(*a1 + 16);
  v438 = v87;
  *&v441 = v13;
  v370 = v42;
  v432 = v89;
  if (v89)
  {
    v431 = (v88 + ((*(v84 + 80) + 32) & ~*(v84 + 80)));
    swift_beginAccess();
    v90 = 0;
    v426 = (v436 + 48);
    v392 = (v436 + 32);
    v400 = (v436 + 8);
    v417 = v439 + 48;
    v359 = (v42 + 48);
    v355 = v439 + 32;
    v356 = (v42 + 32);
    v357 = v439 + 8;
    v358 = (v42 + 8);
    v439 = MEMORY[0x1E69E7CC0];
    v434 = v86;
    v393 = v82;
    v430 = v84;
    v429 = v88;
    while (1)
    {
      if (v90 >= *(v88 + 16))
      {
        __break(1u);
        goto LABEL_228;
      }

      v91 = sub_1C079B618(&v431[v84[9] * v90], v86, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v94 = *v86;
      if (!v94)
      {
        break;
      }

      if (qword_1EBE154C8 != -1)
      {
        v91 = swift_once();
      }

      v95 = off_1EBE154D0;
      if (*(off_1EBE154D0 + 2) < v94)
      {
        goto LABEL_222;
      }

      v415 = off_1EBE154D0 + 32;
      v96 = off_1EBE154D0 + 40 * v94 + 32;
      v98 = *(v96 - 5);
      v97 = *(off_1EBE154D0 + 5 * v94);
      v42 = *(v96 - 3);
      v99 = *(v96 - 2);
      v100 = *(v96 - 1);
      v101 = qword_1ED5D7C68;
      v436 = v97;

      swift_bridgeObjectRetain_n();
      v435 = v100;

      if (v101 != -1)
      {
        swift_once();
      }

      v102 = v42 == qword_1ED5D7C80 && v99 == unk_1ED5D7C88;
      v103 = v417;
      if (v102)
      {

LABEL_35:
        v125 = v87[4];
        swift_unownedRetainStrong();
        if (!v125)
        {
          goto LABEL_238;
        }

        swift_unownedRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v439 = sub_1C0578380(0, *(v439 + 2) + 1, 1, v439);
        }

        v127 = *(v439 + 2);
        v126 = *(v439 + 3);
        v128 = v127 + 1;
        if (v127 >= v126 >> 1)
        {
          v439 = sub_1C0578380((v126 > 1), v127 + 1, 1, v439);
        }

LABEL_114:

LABEL_115:

        goto LABEL_116;
      }

      v104 = sub_1C095DF3C();

      if (v104)
      {
        goto LABEL_35;
      }

      v423 = v98;
      v425 = v99;
      if (qword_1ED5D7CA0 != -1)
      {
        swift_once();
      }

      v105 = xmmword_1ED5D7CB8;
      v106 = qword_1ED5D7CC8;
      v107 = v423 == xmmword_1ED5D7CA8 && v436 == *(&xmmword_1ED5D7CA8 + 1);
      if (v107 || (sub_1C095DF3C() & 1) != 0)
      {
        v108 = v42 == v105 && v425 == *(&v105 + 1);
        if (v108 || (sub_1C095DF3C() & 1) != 0)
        {
          if (v435)
          {
            if (v106)
            {

              swift_retain_n();
              v109 = sub_1C05C97E4(v435, v106);

              if (v109)
              {
LABEL_30:
                v110 = *(v414 + 9);
                v111 = v434;
                v112 = v377;
                sub_1C05149F8(&v434[v110], v377, &qword_1EBE16D68, &unk_1C09933C0);
                v113 = v422;
                v427 = *v359;
                v114 = (v427)(v112, 1, v422);
                sub_1C05145B4(v112, &qword_1EBE16D68, &unk_1C09933C0);
                if (v114 == 1)
                {
                  v115 = 0;
                  v116 = 0;
                }

                else
                {
                  v178 = v368;
                  sub_1C05149F8(&v111[v110], v368, &qword_1EBE16D68, &unk_1C09933C0);
                  v179 = v427;
                  if ((v427)(v178, 1, v113) == 1)
                  {
                    v180 = v369;
                    sub_1C095D31C();
                    if (v179(v178, 1, v113) != 1)
                    {
                      sub_1C05145B4(v178, &qword_1EBE16D68, &unk_1C09933C0);
                    }
                  }

                  else
                  {
                    v180 = v369;
                    (*v356)(v369, v178, v113);
                  }

                  v115 = sub_1C095D2FC();
                  v116 = v191;
                  (*v358)(v180, v113);
                }

                v192 = *(v434 + 5);
                v444 = xmmword_1ED5D7CA8;
                v445 = xmmword_1ED5D7CB8;
                *&v446 = qword_1ED5D7CC8;

                v87 = v438;
                v125 = sub_1C0514CE0(&v444, v115, v116, 1, v192);

                goto LABEL_109;
              }
            }
          }

          else if (!v106)
          {
            goto LABEL_30;
          }
        }
      }

      if (qword_1ED5BDED8 != -1)
      {
        swift_once();
      }

      v147 = xmmword_1ED5BDEF0;
      v148 = qword_1ED5BDF00;
      if (__PAIR128__(v436, v423) == xmmword_1ED5BDEE0 || (sub_1C095DF3C()) && (__PAIR128__(v425, v42) == v147 || (sub_1C095DF3C()))
      {
        if (v435)
        {
          if (v148)
          {

            swift_retain_n();
            v149 = sub_1C05C97E4(v435, v148);

            if (v149)
            {
LABEL_73:
              v150 = *(v414 + 10);
              v151 = v434;
              v152 = v373;
              sub_1C05149F8(&v434[v150], v373, &qword_1EBE16DC0, &unk_1C0997A50);
              v153 = v374;
              v423 = *v103;
              v154 = (v423)(v152, 1, v374);
              sub_1C05145B4(v152, &qword_1EBE16DC0, &unk_1C0997A50);
              LODWORD(v427) = v154;
              if (v154 == 1)
              {
                v155 = 0;
                v87 = v438;
                v156 = 1;
              }

              else
              {
                v186 = &v151[v150];
                v187 = v366;
                sub_1C05149F8(v186, v366, &qword_1EBE16DC0, &unk_1C0997A50);
                v188 = v423;
                if ((v423)(v187, 1, v153) == 1)
                {
                  v189 = v367;
                  sub_1C095D29C();
                  v190 = v188(v187, 1, v153);
                  v87 = v438;
                  v156 = v427;
                  if (v190 != 1)
                  {
                    sub_1C05145B4(v187, &qword_1EBE16DC0, &unk_1C0997A50);
                  }
                }

                else
                {
                  v189 = v367;
                  (*v355)(v367, v187, v153);
                  v87 = v438;
                  v156 = v427;
                }

                v155 = sub_1C095D27C();
                (*v357)(v189, v153);
              }

              v444 = xmmword_1ED5BDEE0;
              v445 = xmmword_1ED5BDEF0;
              *&v446 = qword_1ED5BDF00;

              v125 = sub_1C0514CE0(&v444, v155, v156 == 1, 0, MEMORY[0x1E69E7CC0]);
LABEL_109:
              v42 = v446;

LABEL_110:

              swift_unownedRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v439 = sub_1C0578380(0, *(v439 + 2) + 1, 1, v439);
              }

              v127 = *(v439 + 2);
              v193 = *(v439 + 3);
              v128 = v127 + 1;
              if (v127 >= v193 >> 1)
              {
                v439 = sub_1C0578380((v193 > 1), v127 + 1, 1, v439);
              }

              goto LABEL_114;
            }
          }
        }

        else if (!v148)
        {
          goto LABEL_73;
        }
      }

      v389 = v42;
      v42 = *(v414 + 11);
      v157 = v388;
      sub_1C05149F8(&v434[v42], v388, &qword_1EBE16B58, &unk_1C099B6A0);
      v158 = v413;
      v385 = *v426;
      v159 = v385(v157, 1, v413);
      sub_1C05145B4(v157, &qword_1EBE16B58, &unk_1C099B6A0);
      if (v159 == 1)
      {
        *&v444 = v423;
        *(&v444 + 1) = v436;
        *&v445 = v389;
        *(&v445 + 1) = v425;
        *&v446 = v435;
        v87 = v438;
        v125 = sub_1C0514CE0(&v444, 0, 0, 255, MEMORY[0x1E69E7CC0]);
        goto LABEL_110;
      }

      v427 = v90;
      v378 = v42;
      v160 = v382;
      sub_1C05149F8(&v434[v42], v382, &qword_1EBE16B58, &unk_1C099B6A0);
      v161 = v385;
      if (v385(v160, 1, v158) == 1)
      {
        v162 = v383;
        sub_1C095D25C();
        if (v161(v160, 1, v158) != 1)
        {
          sub_1C05145B4(v160, &qword_1EBE16B58, &unk_1C099B6A0);
        }
      }

      else
      {
        v162 = v383;
        (*v392)(v383, v160, v158);
      }

      v163 = v399;
      sub_1C095D21C();
      v164 = MEMORY[0x1C68DD0C0](v162, v163);
      v165 = *v400;
      (*v400)(v163, v158);
      (v165)(v162, v158);
      if (v164)
      {
        v166 = 0;
        v167 = *(v434 + 3);
        v168 = 0xE400000000000000;
        v169 = *(v434 + 4);
        v170 = 1651664214;
        v90 = v427;
        v171 = v436;
        v172 = v389;
      }

      else
      {
        v354 = v165;
        v173 = v158;
        v174 = v375;
        sub_1C05149F8(&v434[v378], v375, &qword_1EBE16B58, &unk_1C099B6A0);
        v175 = v385;
        v176 = v385(v174, 1, v158);
        v90 = v427;
        if (v176 == 1)
        {
          v177 = v376;
          sub_1C095D25C();
          if (v175(v174, 1, v158) != 1)
          {
            sub_1C05145B4(v174, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v177 = v376;
          (*v392)(v376, v174, v158);
        }

        v181 = v177;
        v182 = sub_1C095D23C();
        (v354)(v181, v173);
        v172 = v389;
        if ((v182 & 0x80000000) != 0)
        {
          goto LABEL_236;
        }

        if (!v182 || v95[2] < v182)
        {
          v42 = v360;
          sub_1C05149F8(&v434[v378], v360, &qword_1EBE16B58, &unk_1C099B6A0);
          v88 = v413;
          v346 = v385;
          if (v385(v42, 1, v413) == 1)
          {
            v347 = v361;
            sub_1C095D25C();
            v348 = v88;
            if (v346(v42, 1, v88) != 1)
            {
              sub_1C05145B4(v42, &qword_1EBE16B58, &unk_1C099B6A0);
            }

            goto LABEL_230;
          }

LABEL_229:
          v347 = v361;
          (*v392)(v361, v42, v88);
          v348 = v88;
LABEL_230:
          v349 = sub_1C095D23C();
          v350 = (v354)(v347, v348);
          if ((v349 & 0x80000000) == 0)
          {
            sub_1C079B4FC(v350, v351, v352);
            swift_allocError();
            *v353 = v349;
            *(v353 + 8) = 0;
            *(v353 + 16) = 0;
            swift_willThrow();

            sub_1C079B5B8(v397, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            v332 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode;
            v333 = v434;
            goto LABEL_223;
          }

LABEL_239:
          __break(1u);
          return;
        }

        v183 = &v415[40 * v182];
        v167 = *(v183 - 5);
        v169 = *(v183 - 4);
        v170 = *(v183 - 3);
        v168 = *(v183 - 2);
        v166 = *(v183 - 1);

        v171 = v436;
      }

      v443[0] = v167;
      v443[1] = v169;
      v443[2] = v170;
      v443[3] = v168;
      v443[4] = v166;
      v442[0] = v423;
      v442[1] = v171;
      v442[2] = v172;
      v442[3] = v425;
      v442[4] = v435;

      static Graph.createTaskNameWithMetaData(verbName:entityName:)(v443, v442, &v444, v184);
      v427 = v166;

      v423 = v168;

      v42 = *(&v445 + 1);
      v125 = sub_1C0514CE0(&v444, 0, 0, 255, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v439 = sub_1C0578380(0, *(v439 + 2) + 1, 1, v439);
      }

      v127 = *(v439 + 2);
      v185 = *(v439 + 3);
      v128 = v127 + 1;
      if (v127 >= v185 >> 1)
      {
        v439 = sub_1C0578380((v185 > 1), v127 + 1, 1, v439);
      }

      v87 = v438;
LABEL_116:
      ++v90;

      v194 = v439;
      *(v439 + 2) = v128;
      v195 = &v194[16 * v127];
      *(v195 + 4) = v87;
      *(v195 + 5) = v125;
      v86 = v434;
      sub_1C079B5B8(v434, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v13 = v441;
      v84 = v430;
      v88 = v429;
      if (v432 == v90)
      {
        goto LABEL_119;
      }
    }

    v427 = v90;
    v117 = *(v414 + 11);
    v118 = v410;
    sub_1C05149F8(&v117[v86], v410, &qword_1EBE16B58, &unk_1C099B6A0);
    v119 = *v426;
    v42 = v413;
    v120 = (*v426)(v118, 1, v413);
    sub_1C05145B4(v118, &qword_1EBE16B58, &unk_1C099B6A0);
    if (v120 == 1)
    {
      v121 = *(v86 + 1);
      v122 = *(v86 + 2);

      v123 = 0xE600000000000000;
      v124 = 0x797469746E45;
      v90 = v427;
    }

    else
    {
      v436 = v117;
      v129 = v393;
      sub_1C05149F8(&v117[v86], v393, &qword_1EBE16B58, &unk_1C099B6A0);
      if (v119(v129, 1, v42) == 1)
      {
        v130 = v395;
        sub_1C095D25C();
        v131 = v119;
        v132 = v119(v129, 1, v42);
        v133 = v42;
        v90 = v427;
        if (v132 != 1)
        {
          sub_1C05145B4(v129, &qword_1EBE16B58, &unk_1C099B6A0);
        }
      }

      else
      {
        v131 = v119;
        v130 = v395;
        (*v392)(v395, v129, v42);
        v133 = v42;
        v90 = v427;
      }

      v42 = v399;
      sub_1C095D21C();
      v134 = MEMORY[0x1C68DD0C0](v130, v42);
      v135 = *v400;
      (*v400)(v42, v133);
      v435 = v135;
      (v135)(v130, v133);
      v86 = v434;
      if ((v134 & 1) == 0)
      {
        v137 = v386;
        sub_1C05149F8(&v436[v434], v386, &qword_1EBE16B58, &unk_1C099B6A0);
        v138 = v131(v137, 1, v133);
        v425 = v131;
        if (v138 == 1)
        {
          v139 = v387;
          sub_1C095D25C();
          if (v131(v137, 1, v133) != 1)
          {
            sub_1C05145B4(v137, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v139 = v387;
          (*v392)(v387, v137, v133);
        }

        v140 = v139;
        v141 = sub_1C095D23C();
        v142 = v133;
        v143 = v435;
        (v435)(v140, v142);
        if ((v141 & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        if (qword_1EBE154C8 != -1)
        {
          swift_once();
        }

        v87 = v438;
        if (!v141 || *(off_1EBE154D0 + 2) < v141)
        {
          v339 = v362;
          sub_1C05149F8(&v436[v86], v362, &qword_1EBE16B58, &unk_1C099B6A0);
          v340 = v413;
          v341 = v425;
          if ((v425)(v339, 1, v413) == 1)
          {
            v342 = v363;
            sub_1C095D25C();
            v343 = v341(v339, 1, v340);
            v344 = v340;
            if (v343 != 1)
            {
              sub_1C05145B4(v339, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v342 = v363;
            (*v392)(v363, v339, v340);
            v344 = v340;
          }

          LODWORD(v94) = sub_1C095D23C();
          v91 = v143(v342, v344);
          if ((v94 & 0x80000000) == 0)
          {
            v94 = v94;
LABEL_222:
            sub_1C079B4FC(v91, v92, v93);
            swift_allocError();
            *v345 = v94;
            *(v345 + 8) = 0;
            *(v345 + 16) = 0;
            swift_willThrow();

            sub_1C079B5B8(v397, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            v332 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode;
            v333 = v86;
            goto LABEL_223;
          }

          goto LABEL_237;
        }

        v144 = (off_1EBE154D0 + 40 * v141);
        v145 = *v144;
        v42 = v144[3];
        *&v444 = *(v144 - 1);
        *(&v444 + 1) = v145;

        swift_bridgeObjectRetain_n();

        MEMORY[0x1C68DD690](14906, 0xE200000000000000);
        MEMORY[0x1C68DD690](*(v86 + 1), *(v86 + 2));
        v122 = *(&v444 + 1);
        v121 = v444;

        v123 = 0xE400000000000000;
        v124 = 1802723668;
        goto LABEL_58;
      }

      v136 = *(v434 + 4);
      *&v444 = *(v434 + 3);
      *(&v444 + 1) = v136;

      MEMORY[0x1C68DD690](14906, 0xE200000000000000);
      MEMORY[0x1C68DD690](*(v86 + 1), *(v86 + 2));
      v122 = *(&v444 + 1);
      v121 = v444;
      v123 = 0xE400000000000000;
      v124 = 1802723668;
    }

    v87 = v438;
LABEL_58:
    *&v444 = v121;
    *(&v444 + 1) = v122;
    *&v445 = v124;
    *(&v445 + 1) = v123;
    *&v446 = 0;

    v125 = sub_1C0514CE0(&v444, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v439 = sub_1C0578380(0, *(v439 + 2) + 1, 1, v439);
    }

    v127 = *(v439 + 2);
    v146 = *(v439 + 3);
    v128 = v127 + 1;
    if (v127 >= v146 >> 1)
    {
      v439 = sub_1C0578380((v146 > 1), v127 + 1, 1, v439);
    }

    goto LABEL_115;
  }

  v439 = MEMORY[0x1E69E7CC0];
LABEL_119:
  v415 = v397[1];
  v196 = *(v415 + 2);
  v197 = v416;
  v198 = v428;
  v199 = v411;
  if (!v196)
  {
LABEL_161:
    v88 = v397[2];
    v42 = *(v88 + 16);
    if (v42)
    {
      v259 = (*(v372 + 80) + 32) & ~*(v372 + 80);
      v417 = *(v372 + 72);
      sub_1C079B618(v88 + v259, v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
      v260 = *v13;
      if (*(v439 + 2) <= v260)
      {
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      v414 = (v370 + 48);
      v415 = v439 + 32;
      v413 = (v370 + 8);
      v416 = v371 + 48;
      v409 = (v371 + 32);
      v410 = (v370 + 32);
      v411 = (v371 + 8);
      v88 += &v417[v259];
      while (1)
      {
        v425 = v88;
        v436 = v42;
        v261 = &v415[16 * v260];
        v263 = *v261;
        v262 = *(v261 + 1);
        v264 = *(v13 + 4);
        v431 = *(v13 + 3);
        v265 = *(v13 + 2);
        v430 = *(v13 + 1);
        v429 = *(v13 + 5);
        LODWORD(v428) = *(v13 + 48);
        v423 = v437[9];
        v266 = v418;
        sub_1C05149F8(v13 + v423, v418, &qword_1EBE16D68, &unk_1C09933C0);
        v267 = v422;
        v426 = *v414;
        LODWORD(v427) = (v426)(v266, 1, v422);
        v434 = v263;

        v435 = v262;
        swift_unownedRetain();
        v433 = v264;

        v432 = v265;

        sub_1C05145B4(v266, &qword_1EBE16D68, &unk_1C09933C0);
        if (v427 == 1)
        {
          v427 = 0;
          v426 = 0;
          v268 = v416;
          v13 = v441;
        }

        else
        {
          v13 = v441;
          v269 = v412;
          sub_1C05149F8(v441 + v423, v412, &qword_1EBE16D68, &unk_1C09933C0);
          v270 = v426;
          if ((v426)(v269, 1, v267) == 1)
          {
            v271 = v402;
            sub_1C095D31C();
            v272 = (v270)(v269, 1, v267);
            v268 = v416;
            if (v272 != 1)
            {
              sub_1C05145B4(v412, &qword_1EBE16D68, &unk_1C09933C0);
            }
          }

          else
          {
            v271 = v402;
            (*v410)(v402, v269, v267);
            v268 = v416;
          }

          v427 = sub_1C095D2FC();
          v426 = v273;
          (*v413)(v271, v267);
        }

        v274 = v437[10];
        v275 = v419;
        sub_1C05149F8(v13 + v274, v419, &qword_1EBE1E830, &qword_1C09933E0);
        v276 = *v268;
        v277 = (*v268)(v275, 1, v424);
        sub_1C05145B4(v275, &qword_1EBE1E830, &qword_1C09933E0);
        v278 = 0;
        v279 = v435;
        if (v277 != 1)
        {
          v280 = v420;
          sub_1C05149F8(v13 + v274, v420, &qword_1EBE1E830, &qword_1C09933E0);
          v281 = v424;
          if (v276(v280, 1, v424) == 1)
          {
            v282 = v403;
            sub_1C095D2DC();
            v283 = v276(v420, 1, v281);
            v284 = v282;
            if (v283 != 1)
            {
              sub_1C05145B4(v420, &qword_1EBE1E830, &qword_1C09933E0);
            }
          }

          else
          {
            v284 = v403;
            (*v409)(v403, v280, v281);
          }

          sub_1C095D2BC();
          v278 = v285;
          (*v411)(v284, v281);
          v13 = v441;
        }

        v286 = v13 + v437[11];
        v287 = *v286;
        v288 = v286[4];
        if (v288)
        {
          v287 = 0;
        }

        v289 = v13 + v437[12];
        v290 = *v289;
        v291 = v289[4];
        if (v291)
        {
          v290 = 0;
        }

        v292 = 7;
        if (v429 < 7)
        {
          v292 = v429;
        }

        if (v428)
        {
          v292 = v429;
        }

        v449 = 1;
        v452 = v277 == 1;
        v451 = v288;
        v450 = v291;
        *&v444 = v431;
        *(&v444 + 1) = v433;
        *&v445 = v430;
        *(&v445 + 1) = v432;
        *&v446 = v427;
        *(&v446 + 1) = v426;
        *&v447 = v278;
        BYTE8(v447) = v277 == 1;
        BYTE9(v447) = v292;
        HIDWORD(v447) = v287;
        v448[0] = v288;
        *&v448[4] = v290;
        v448[8] = v291;
        *&v448[16] = 0;
        v448[24] = 1;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v293 = *(v279 + 104);
        sub_1C0518B04(&v444, v443);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v279 + 104) = v293;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v293 = sub_1C0519CF8(0, *(v293 + 2) + 1, 1, v293);
          *(v279 + 104) = v293;
        }

        v295 = v436;
        v297 = *(v293 + 2);
        v296 = *(v293 + 3);
        if (v297 >= v296 >> 1)
        {
          v293 = sub_1C0519CF8((v296 > 1), v297 + 1, 1, v293);
        }

        *(v293 + 2) = v297 + 1;
        v298 = &v293[96 * v297];
        v299 = v445;
        *(v298 + 2) = v444;
        *(v298 + 3) = v299;
        v300 = v446;
        v301 = v447;
        v302 = *v448;
        *(v298 + 105) = *&v448[9];
        *(v298 + 5) = v301;
        *(v298 + 6) = v302;
        *(v298 + 4) = v300;
        *(v279 + 104) = v293;
        swift_endAccess();
        sub_1C0518B60(&v444);
        sub_1C079B5B8(v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

        swift_unownedRelease();
        v42 = (v295 - 1);
        if (!v42)
        {
          break;
        }

        v88 = &v417[v425];
        sub_1C079B618(v425, v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        v260 = *v13;
        if (*(v439 + 2) <= v260)
        {
          goto LABEL_228;
        }
      }
    }

    v303 = v397[3];
    v304 = v421;
    v435 = *(v303 + 2);
    if (!v435)
    {
LABEL_210:

      sub_1C079B5B8(v397, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

      return;
    }

    v305 = 0;
    v433 = v439 + 32;
    v434 = v303;
    while (v305 < *(v303 + 2))
    {
      v306 = sub_1C079B618(&v303[((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v305], v304, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      v309 = *(v304 + 4);
      if (*(v439 + 2) <= v309)
      {
        sub_1C079B4FC(v306, v307, v308);
        swift_allocError();
        *v331 = xmmword_1C0999870;
        *(v331 + 16) = 3;
        swift_willThrow();

        sub_1C079B5B8(v397, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
        v332 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment;
        v333 = v304;
        goto LABEL_223;
      }

      v437 = v305;
      v310 = &v433[16 * v309];
      v311 = *v310;
      v312 = *(v310 + 1);
      v313 = *(v304 + 1);
      v314 = *(v313 + 16);
      v436 = v311;
      if (v314)
      {
        v315 = v396;
        v316 = v313 + ((*(v396 + 80) + 32) & ~*(v396 + 80));

        swift_unownedRetain();
        v317 = *(v315 + 72);
        v318 = MEMORY[0x1E69E7CC0];
        do
        {
          v319 = v440;
          sub_1C079B618(v316, v440, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          v441 = *v319;
          v320 = *(v319 + 16);
          sub_1C079B5B8(v319, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v318 = sub_1C0578264(0, *(v318 + 2) + 1, 1, v318);
          }

          v322 = *(v318 + 2);
          v321 = *(v318 + 3);
          if (v322 >= v321 >> 1)
          {
            v318 = sub_1C0578264((v321 > 1), v322 + 1, 1, v318);
          }

          *(v318 + 2) = v322 + 1;
          v323 = &v318[24 * v322];
          *(v323 + 2) = v441;
          *(v323 + 6) = v320;
          v316 += v317;
          --v314;
        }

        while (v314);
      }

      else
      {

        swift_unownedRetain();
        v318 = MEMORY[0x1E69E7CC0];
      }

      v324 = *v421;
      swift_unownedRetainStrong();
      v325 = *(v312 + 112);

      v326 = swift_isUniquelyReferenced_nonNull_native();
      *(v312 + 112) = v325;
      if ((v326 & 1) == 0)
      {
        v325 = sub_1C052233C(0, *(v325 + 2) + 1, 1, v325);
        *(v312 + 112) = v325;
      }

      v328 = *(v325 + 2);
      v327 = *(v325 + 3);
      if (v328 >= v327 >> 1)
      {
        v325 = sub_1C052233C((v327 > 1), v328 + 1, 1, v325);
      }

      *(v325 + 2) = v328 + 1;
      v329 = &v325[16 * v328];
      *(v329 + 8) = v324;
      v305 = (v437 + 1);
      *(v329 + 5) = v318;
      *(v312 + 112) = v325;

      v304 = v421;
      sub_1C079B5B8(v421, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);

      swift_unownedRelease();
      v303 = v434;
      if (v305 == v435)
      {
        goto LABEL_210;
      }
    }

    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v200 = 0;
  v434 = &v415[(*(v379 + 80) + 32) & ~*(v379 + 80)];
  v410 = *(v379 + 72);
  v201 = (v380 + 48);
  v417 = (v381 + 56);
  v400 = (v381 + 48);
  v413 = (v196 - 1);
  v414 = v439 + 32;
  v432 = (v380 + 48);
  while (1)
  {
    v427 = v200;
    v202 = v433;
    sub_1C079B618(v434, v433, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    v435 = *(v406 + 28);
    sub_1C05149F8(&v202[v435], v199, &qword_1EBE16DA0, &qword_1C0997A60);
    v203 = *v201;
    v204 = (*v201)(v199, 1, v198);
    v436 = v203;
    if (v204 == 1)
    {
      v205 = v407;
      *v407 = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v417)(&v205[*(v198 + 28)], 1, 1, v197);
      v206 = (v203)(v199, 1, v198);
      v208 = v408;
      v207 = v409;
      if (v206 != 1)
      {
        sub_1C05145B4(v199, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      v205 = v407;
      sub_1C079B550(v199, v407, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v208 = v408;
      v207 = v409;
    }

    v209 = *v205;
    sub_1C079B5B8(v205, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (!v209)
    {
      v212 = v390;
      sub_1C05149F8(&v202[v435], v390, &qword_1EBE16DA0, &qword_1C0997A60);
      v213 = v436;
      v214 = (v436)(v212, 1, v198);
      v215 = v400;
      if (v214 == 1)
      {
        *v208 = 0;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v417)(&v208[*(v198 + 28)], 1, 1, v197);
        v216 = (v213)(v212, 1, v198);
        v217 = v394;
        if (v216 != 1)
        {
          sub_1C05145B4(v212, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C079B550(v212, v208, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v217 = v394;
      }

      sub_1C05149F8(&v208[*(v428 + 28)], v217, &qword_1EBE16D90, &qword_1C0970458);
      v227 = *v215;
      if ((*v215)(v217, 1, v197) == 1)
      {
        v228 = v391;
        *v391 = 0;
        v228[1] = 0xE000000000000000;
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        sub_1C079B5B8(v208, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v229 = v227(v217, 1, v197);
        v230 = v228;
        v226 = v405;
        if (v229 != 1)
        {
          sub_1C05145B4(v394, &qword_1EBE16D90, &qword_1C0970458);
        }
      }

      else
      {
        sub_1C079B5B8(v208, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v230 = v391;
        sub_1C079B550(v217, v391, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v226 = v405;
      }

      v231 = v230[1];
      v426 = *v230;
      v430 = v231;

      v223 = sub_1C079B5B8(v230, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
      v431 = 0;
      v429 = 0xE800000000000000;
      v222 = 0x746E656D75677241;
      goto LABEL_143;
    }

    v210 = v398;
    sub_1C05149F8(&v202[v435], v398, &qword_1EBE16DA0, &qword_1C0997A60);
    v211 = v436;
    if ((v436)(v210, 1, v198) == 1)
    {
      *v207 = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v417)(&v207[*(v198 + 28)], 1, 1, v197);
      if ((v211)(v210, 1, v198) != 1)
      {
        sub_1C05145B4(v210, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      sub_1C079B550(v210, v207, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    }

    v218 = *v207;
    sub_1C079B5B8(v207, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (qword_1EBE154C8 == -1)
    {
      if (!v218)
      {
        break;
      }

      goto LABEL_135;
    }

    swift_once();
    if (!v218)
    {
      break;
    }

LABEL_135:
    if (*(off_1EBE154D0 + 2) < v218)
    {
      break;
    }

    v219 = (off_1EBE154D0 + 40 * v218);
    v220 = *v219;
    v426 = *(v219 - 1);
    v222 = v219[1];
    v221 = v219[2];
    v431 = v219[3];

    v430 = v220;

    v429 = v221;

    v226 = v405;
LABEL_143:
    v232 = *(v439 + 2);
    if (v232 <= *v202 || (v233 = *(v202 + 1), v232 <= v233))
    {
      sub_1C079B4FC(v223, v224, v225);
      swift_allocError();
      *v330 = 0;
      *(v330 + 8) = 0;
      *(v330 + 16) = 3;
      swift_willThrow();

      goto LABEL_215;
    }

    v425 = v222;
    v234 = *(swift_unownedRetainStrong() + 56);

    if (*(v439 + 2) <= v233)
    {
      goto LABEL_233;
    }

    v423 = *(swift_unownedRetainStrong() + 56);

    sub_1C05149F8(&v433[v435], v226, &qword_1EBE16DA0, &qword_1C0997A60);
    v235 = v226;
    v236 = v226;
    v237 = v428;
    v238 = v436;
    if ((v436)(v235, 1, v428) == 1)
    {
      v239 = v401;
      *v401 = 0;
      v240 = v431;

      v241 = v430;

      v242 = v429;

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v417)(&v239[*(v237 + 28)], 1, 1, v416);
      v243 = v237;
      v244 = v239;
      if ((v238)(v236, 1, v243) != 1)
      {
        sub_1C05145B4(v236, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      v244 = v401;
      sub_1C079B550(v236, v401, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v240 = v431;

      v241 = v430;

      v242 = v429;
    }

    v245 = *(v244 + 1);
    sub_1C079B5B8(v244, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    *&v444 = v234;
    *(&v444 + 1) = v423;
    LODWORD(v445) = v245;
    *(&v445 + 1) = v426;
    *&v446 = v241;
    *(&v446 + 1) = v425;
    *&v447 = v242;
    *(&v447 + 1) = v240;
    v246 = v438;
    swift_beginAccess();
    v247 = v246[2];

    sub_1C0514AC4(&v444, v443);
    v248 = swift_isUniquelyReferenced_nonNull_native();
    v246[2] = v247;
    v199 = v411;
    if ((v248 & 1) == 0)
    {
      v247 = sub_1C0514F9C(0, *(v247 + 2) + 1, 1, v247);
      v438[2] = v247;
    }

    v250 = *(v247 + 2);
    v249 = *(v247 + 3);
    if (v250 >= v249 >> 1)
    {
      v247 = sub_1C0514F9C((v249 > 1), v250 + 1, 1, v247);
    }

    *(v247 + 2) = v250 + 1;
    v251 = &v247[64 * v250];
    v252 = v444;
    v253 = v445;
    v254 = v447;
    *(v251 + 4) = v446;
    *(v251 + 5) = v254;
    *(v251 + 2) = v252;
    *(v251 + 3) = v253;
    v438[2] = v247;
    swift_endAccess();

    sub_1C0514A70(&v444);

    sub_1C079B5B8(v433, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    v13 = v441;
    v197 = v416;
    v198 = v428;
    if (v413 == v427)
    {
      goto LABEL_161;
    }

    v200 = v427 + 1;
    v255 = *(v415 + 2);
    v434 = v410 + v434;
    v201 = v432;
    if ((v427 + 1) >= v255)
    {
      goto LABEL_234;
    }
  }

  v256 = v364;
  sub_1C05149F8(&v202[v435], v364, &qword_1EBE16DA0, &qword_1C0997A60);
  v257 = v436;
  if ((v436)(v256, 1, v198) == 1)
  {
    v258 = v365;
    *v365 = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    (*v417)(&v258[*(v198 + 28)], 1, 1, v197);
    if ((v257)(v256, 1, v198) != 1)
    {
      sub_1C05145B4(v256, &qword_1EBE16DA0, &qword_1C0997A60);
    }
  }

  else
  {
    v258 = v365;
    sub_1C079B550(v256, v365, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  v334 = *v258;
  v335 = sub_1C079B5B8(v258, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C079B4FC(v335, v336, v337);
  swift_allocError();
  *v338 = v334;
  *(v338 + 8) = 0;
  *(v338 + 16) = 0;
  swift_willThrow();

LABEL_215:

  sub_1C079B5B8(v397, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v332 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge;
  v333 = v202;
LABEL_223:
  sub_1C079B5B8(v333, v332);
}

unint64_t sub_1C079B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F9A0;
  if (!qword_1EBE1F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F9A0);
  }

  return result;
}

uint64_t sub_1C079B550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C079B5B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C079B618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C079B680()
{
  result = qword_1EBE1E8F8;
  if (!qword_1EBE1E8F8)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology5GraphC23ProtobufConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C079B6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C079B73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C079B780(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t DynamicTask.nodeName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t DynamicTask<A>.init(verbName:entityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{

  MEMORY[0x1C68DD690](14906, 0xE200000000000000);

  MEMORY[0x1C68DD690](a3, a4);

  a5[3] = &type metadata for BuilderNode;
  a5[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a5 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v9 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v9;
  *(result + 104) = v9;
  *(result + 112) = v9;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 1802723668;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t DynamicTask.name.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t DynamicTask.verbName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 16))(&v9, v1, v2);

  sub_1C051D6F4(v3, v4, v5);
  v6 = sub_1C095DB3C();

  if (*(v6 + 16))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t DynamicTask.entityName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 16))(&v10, v1, v2);

  sub_1C051D6F4(v3, v4, v5);
  v6 = sub_1C095DB3C();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 16 + 16 * v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t DynamicTask.init(taskName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BuilderNode;
  a3[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a3 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v7;
  *(result + 104) = v7;
  *(result + 112) = v7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 1802723668;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

double DynamicTask<A>.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 24))
  {
    sub_1C0526080(a1, v14);
    v10 = type metadata accessor for DynamicTask(0, a2, v8, v9);
    (*(*(v10 - 8) + 8))(a1, v10);
    sub_1C0531D80(v14, v15);
    sub_1C0531D80(v15, a3);
  }

  else
  {
    type metadata accessor for DynamicTask(255, a2, a4, a5);
    v13 = sub_1C095DB0C();
    (*(*(v13 - 8) + 8))(a1, v13);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1C079BCD0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(&v30, v7, v8);
  v10 = v30;
  v9 = v31;

  v11 = *(a3 + 8);
  v12 = *(v11 + 8);
  v12(v29, a2, v11);
  v14 = v29[0];
  v13 = v29[1];

  if (v10 == v14 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1C095DF3C();

    if ((v15 & 1) == 0)
    {
      v12(v29, a2, v11);
      v16 = v29[2];

      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 16))(&v30, v17, v18);
      v19 = v30;
      v20 = v31;

      v28[0] = v19;
      v28[1] = v20;
      MEMORY[0x1EEE9AC00](v21);
      v26[2] = v28;
      LOBYTE(v17) = sub_1C0576198(sub_1C0771CDC, v26, v16);

      if ((v17 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        v25 = v27;
        *(v27 + 32) = 0;
        result = 0.0;
        *v25 = 0u;
        v25[1] = 0u;
        return result;
      }
    }
  }

  sub_1C0526080(a1, v32);
  v22 = v32[1];
  v23 = v27;
  *v27 = v32[0];
  *(v23 + 16) = v22;
  *(v23 + 32) = v33;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return result;
}

double DynamicTask<A>.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C0526080(a1, v18);
  sub_1C079BCD0(v18, a2, a4, &v19);
  v12 = type metadata accessor for DynamicTask(0, a3, v10, v11);
  (*(*(v12 - 8) + 8))(a1, v12);
  if (*(&v20 + 1))
  {
    result = *&v19;
    v16 = v20;
    *a5 = v19;
    *(a5 + 16) = v16;
    *(a5 + 32) = v21;
  }

  else
  {
    type metadata accessor for DynamicTask(255, a2, v13, v14);
    v17 = sub_1C095DB0C();
    (*(*(v17 - 8) + 8))(&v19, v17);
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C079C038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PersonIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 PersonIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

double static PersonIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

void *sub_1C079C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  inited = swift_initStaticObject();
  v11 = *(*(a2 + 8) + 8);

  return IntentNodeTraversable.value<A>(forNode:)(inited, a6, a1, v11, v10);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  sub_1C079C48C(v1 + *(v6 + 28), v5);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C079C4FC(v5, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_RequestID(uint64_t a1)
{
  result = qword_1EBE1F9E0;
  if (!qword_1EBE1F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C079C48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079C4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  sub_1C079C48C(a1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C079C4FC(v6, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C079C6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C079CB6C(a1, v7);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 28);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C079C4FC(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.nluRequestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C079C4FC(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_RequestID.nluRequestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 28);
  *(v5 + 12) = v15;
  sub_1C079C48C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C079C4FC(v8, v14);
  }

  return sub_1C079CA54;
}

void sub_1C079CA54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C079CB6C((*a1)[5], v4);
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C079C4FC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C079CBD0(v5);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C079C4FC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C079CB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079CBD0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nl_Core_Protocol_RequestID.hasNluRequestID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  sub_1C079C48C(v0 + *(v4 + 28), v3);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17420, &qword_1C0993380);
  return v6;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_RequestID.clearNluRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 28);
  sub_1C05145B4(v0 + v1, &qword_1EBE17420, &qword_1C0993380);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.connectionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.connectionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C079D01C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F9A8);
  __swift_project_value_buffer(v0, qword_1EBE1F9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nlu_request_id";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 11;
  *v11 = "connection_id";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_RequestID._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 11:
        goto LABEL_8;
      case 2:
        sub_1C079D380(a1, v5, a2, a3);
        break;
      case 1:
LABEL_8:
        sub_1C095D50C();
        break;
    }
  }
}

uint64_t sub_1C079D380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C079DF74(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RequestID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_1C095D66C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v20 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  sub_1C079C48C(v3 + *(v20 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    v16 = v5;
  }

  else
  {
    sub_1C079C4FC(v8, v12);
    sub_1C079DF74(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v16 = v5;
    sub_1C095D6AC();
    result = sub_1C079CBD0(v12);
    if (v5)
    {
      return result;
    }
  }

  v17 = v3[3];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return sub_1C095D36C();
  }

  result = sub_1C095D66C();
  if (!v16)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  sub_1C079DF74(&qword_1EBE1F9C0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RequestID);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C079D728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C079D800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C079DF74(&qword_1EBE1F9F0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RequestID);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C079D87C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C079D924(uint64_t a1)
{
  v2 = sub_1C079DF74(&qword_1EBE1F9D0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RequestID);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C079D990(uint64_t a1, uint64_t a2)
{
  sub_1C079DF74(&qword_1EBE1F9D0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RequestID);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_RequestIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0) + 28);
  v15 = *(v11 + 48);
  sub_1C079C48C(a1 + v14, v13);
  sub_1C079C48C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C079C48C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1C079C4FC(&v13[v15], v7);
      v18 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
      sub_1C079CBD0(v7);
      sub_1C079CBD0(v10);
      sub_1C05145B4(v13, &qword_1EBE17420, &qword_1C0993380);
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    sub_1C079CBD0(v10);
LABEL_8:
    sub_1C05145B4(v13, &qword_1EBE16D60, &unk_1C0970430);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C05145B4(v13, &qword_1EBE17420, &qword_1C0993380);
LABEL_11:
  if (a1[2] == a2[2] && a1[3] == a2[3] || (sub_1C095DF3C() & 1) != 0)
  {
    sub_1C095D38C();
    sub_1C079DF74(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v17 = sub_1C095D73C();
    return v17 & 1;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

void sub_1C079DE88(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C079DF1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C079DF1C(uint64_t a1)
{
  if (!qword_1EBE1EEA0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UUID(255);
    v1 = sub_1C095DB0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE1EEA0);
    }
  }
}

uint64_t sub_1C079DF74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NLIntent.protobufData.getter()
{
  v0 = sub_1C095D39C();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C079E24C(v3);
  sub_1C0773D08();
  v4 = sub_1C095D58C();
  sub_1C07A5774(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
  return v4;
}

uint64_t sub_1C079E24C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  if (qword_1EBE15030 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EBE15038;
  v11 = *(v1 + 48);
  v81 = a1;
  v82 = v1;
  if (v11)
  {

    v12 = v1;
    v13 = *(v1 + 64);
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v14 = *(v1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v16 = sub_1C05A53E0(v16);
    *(a1 + v10) = v16;
  }

  swift_beginAccess();
  *(v16 + 16) = v14;
  v12 = v82;
  v13 = *(v82 + 64);
  if (v13)
  {
LABEL_9:
    v17 = *(v12 + 56);

    v18 = v81;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v10);
    if ((v19 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v20 = sub_1C05A53E0(v20);
      *(v18 + v10) = v20;
    }

    swift_beginAccess();
    *(v20 + 24) = v17;
    *(v20 + 32) = v13;

    v12 = v82;
  }

LABEL_12:
  v21 = *(v12 + 72);
  v22 = v81;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v22 + v10);
  if ((v23 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v24 = sub_1C05A53E0(v24);
    *(v22 + v10) = v24;
  }

  swift_beginAccess();
  *(v24 + 40) = v21;
  v25 = *(v12 + 73);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v22 + v10);
  if ((v26 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v27 = sub_1C05A53E0(v27);
    *(v22 + v10) = v27;
  }

  swift_beginAccess();
  *(v27 + 41) = v25;
  v28 = *(v12 + 74);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v22 + v10);
  if ((v29 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v30 = sub_1C05A53E0(v30);
    *(v22 + v10) = v30;
  }

  result = swift_beginAccess();
  *(v30 + 42) = v28;
  if ((*(v12 + 88) & 1) == 0)
  {
    v32 = *(v12 + 80);
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v32))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v22 + v10);
    if ((v33 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v34 = sub_1C05A53E0(v34);
      *(v22 + v10) = v34;
    }

    swift_beginAccess();
    *(v34 + 44) = v32;
  }

  v35 = *(v12 + 89);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v22 + v10);
  if ((v36 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v37 = sub_1C05A53E0(v37);
    *(v22 + v10) = v37;
  }

  result = swift_beginAccess();
  *(v37 + 48) = v35;
  if ((*(v12 + 104) & 1) == 0)
  {
    v38 = *(v12 + 96);
    if ((v38 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v38))
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(v22 + v10);
        if ((v39 & 1) == 0)
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
          swift_allocObject();
          v40 = sub_1C05A53E0(v40);
          *(v22 + v10) = v40;
        }

        swift_beginAccess();
        *(v40 + 52) = v38;
        goto LABEL_32;
      }

LABEL_69:
      __break(1u);
      return result;
    }

    goto LABEL_67;
  }

LABEL_32:
  if ((*(v12 + 105) & 1) == 0)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v41 = MEMORY[0x1E69E7CC0];
    v9[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
    v9[3] = sub_1C058BC4C(v41);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v22 + v10);
    if ((v42 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v43 = sub_1C05A53E0(v43);
      *(v22 + v10) = v43;
    }

    sub_1C07A57D4(v9, v5, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    (*(v7 + 56))(v5, 0, 1, v6);
    v44 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
    swift_beginAccess();
    sub_1C051F9D4(v5, v43 + v44, &qword_1EBE17780, &qword_1C0999E30);
    swift_endAccess();
    v12 = v82;
  }

  if (*(v12 + 106) <= 1u)
  {
    if (*(v12 + 106))
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    goto LABEL_42;
  }

  if (*(v12 + 106) == 2)
  {
    v45 = 3;
LABEL_42:
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v22 + v10);
    if ((v46 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v47 = sub_1C05A53E0(v47);
      *(v22 + v10) = v47;
    }

    v48 = v47 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    *v48 = v45;
    *(v48 + 8) = 1;
    v12 = v82;
  }

  v49 = *(v12 + 120);
  if (v49)
  {
    v50 = *(v12 + 112);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v22 + v10);
    if ((v51 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v52 = sub_1C05A53E0(v52);
      *(v22 + v10) = v52;
    }

    v53 = (v52 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    *v53 = v50;
    v53[1] = v49;
  }

  v54 = *(v12 + 128);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v22 + v10);
  if ((v55 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v56 = sub_1C05A53E0(v56);
    *(v22 + v10) = v56;
  }

  v57 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  *(v56 + v57) = v54;
  v58 = *(v82 + 129);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v22 + v10);
  if ((v59 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v60 = sub_1C05A53E0(v60);
    *(v22 + v10) = v60;
  }

  v61 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  *(v60 + v61) = v58;
  v62 = *(v82 + 136);
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  if (v63)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1C0600C80(0, v63, 0);
    v64 = v83[0];
    v65 = (v62 + 32);
    v66 = *(v83[0] + 16);
    v67 = 16 * v66;
    do
    {
      if (*v65)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      v83[0] = v64;
      v69 = *(v64 + 24);
      v70 = v66 + 1;
      if (v66 >= v69 >> 1)
      {
        sub_1C0600C80((v69 > 1), v66 + 1, 1);
        v64 = v83[0];
      }

      *(v64 + 16) = v70;
      v71 = v64 + v67;
      *(v71 + 32) = v68;
      *(v71 + 40) = 1;
      v67 += 16;
      ++v65;
      v66 = v70;
      --v63;
    }

    while (v63);
  }

  v72 = v81;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v72 + v10);
  if ((v73 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v74 = sub_1C05A53E0(v74);
    *(v72 + v10) = v74;
  }

  v75 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  *(v74 + v75) = v64;

  v76 = sub_1C079EB4C();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v72 + v10);
  if ((v77 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v78 = sub_1C05A53E0(v78);
    *(v72 + v10) = v78;
  }

  v79 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  swift_beginAccess();
  *(v78 + v79) = v76;
}

uint64_t sub_1C079EB4C()
{
  sub_1C0526080(v0, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA00, &qword_1C099BAE8);
  if (swift_dynamicCast())
  {
    sub_1C0531D80(v5, v8);
    v1 = v9;
    v2 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = (*(v2 + 8))(0, 0xFFFFFFFFLL, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1C05145B4(v5, &qword_1EBE1FA08, &unk_1C099BAF0);
    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C079EC90@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = v1[1];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *(v8 + 2) = MEMORY[0x1E69E7CC0];
  v11 = *(v6 + 32);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v13 = *(*(v12 - 8) + 56);
  v16 = *(v1 + 1);
  v13(&v8[v11], 1, 1, v12);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *v8 = v9;
  *(v8 + 1) = v10;
  v14 = v16;
  *(v8 + 2) = v16;
  v18 = v9;
  v19 = v10;
  v20 = v14;

  sub_1C079EEAC(v4);
  sub_1C05145B4(&v8[v11], &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C07A57D4(v4, &v8[v11], type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
  swift_storeEnumTagMultiPayload();
  v13(&v8[v11], 0, 1, v12);
  sub_1C07A570C(v8, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  return sub_1C07A5774(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
}

uint64_t sub_1C079EEAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + 24);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = (v10 + 32);
    do
    {
      memcpy(v20, v13, 0x540uLL);
      memcpy(v19, v13, sizeof(v19));
      sub_1C0575738(v20, &v18);
      sub_1C079F0E4(v9);
      sub_1C07A570C(v9, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1C05791EC(0, v12[2] + 1, 1, v12);
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = sub_1C05791EC((v14 > 1), v15 + 1, 1, v12);
      }

      sub_1C0575770(v20);
      sub_1C07A5774(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v12[2] = v15 + 1;
      sub_1C07A57D4(v7, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v13 += 1344;
      --v11;
    }

    while (v11);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *a1 = v12;
  return result;
}

uint64_t sub_1C079F0E4@<X0>(uint64_t a1@<X8>)
{
  v48 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v46 = *(v48 - 8);
  v3 = MEMORY[0x1EEE9AC00](v48);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - v7;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v52, v1, sizeof(v52));
  v14 = v1[66];
  memcpy(v53, v1 + 67, 0x309uLL);
  v15 = v1[166];
  v41 = v1[165];
  v42 = v15;
  v47 = v1[167];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);

  sub_1C05149F8(v53, v54, &qword_1EBE16C78, &qword_1C096E850);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v17 = v16[7];
  v18 = *(v12 + 56);
  v36 = v11;
  v34 = v18;
  v18(a1 + v17, 1, 1, v11);
  v19 = v16[8];
  v20 = *(v9 + 56);
  v44 = v9 + 56;
  v45 = v8;
  v20(a1 + v19, 1, 1, v8);
  v21 = *(v46 + 56);
  v46 = v16[9];
  v37 = v21;
  v21(a1 + v46, 1, 1, v48);
  *a1 = v14;
  memcpy(v54, v53, 0x309uLL);
  if (sub_1C0573614(v54) != 1)
  {
    memcpy(v49, v54, 0x309uLL);
    v22 = v35;
    sub_1C079F670(v35);
    sub_1C05145B4(v53, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05145B4(a1 + v17, &qword_1EBE17768, &unk_1C0971250);
    sub_1C07A57D4(v22, a1 + v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    v34(a1 + v17, 0, 1, v36);
  }

  v23 = v47;
  if (v47)
  {
    v24 = v43;
    *v43 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    v25 = v45;

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    *v24 = v41 & 1;
    *(v24 + 8) = v42;
    *(v24 + 16) = v23;
    sub_1C05145B4(a1 + v19, &qword_1EBE17770, &unk_1C099BB00);
    sub_1C07A57D4(v24, a1 + v19, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    v20(a1 + v19, 0, 1, v25);
  }

  memcpy(v49, v52, 0x20AuLL);
  if (sub_1C0573598(v49) != 1)
  {
    memcpy(v51, v49, 0x20AuLL);
    v26 = sub_1C057363C(v51);
    sub_1C05272F0(v51);
    *(a1 + 8) = v26 + 1;
    *(a1 + 16) = 1;
  }

  memcpy(v51, v52, 0x20AuLL);
  result = sub_1C0573598(v51);
  if (result != 1)
  {
    memcpy(v50, v51, sizeof(v50));
    v28 = v39;
    sub_1C079FA08(v39);
    v29 = v28;
    v30 = v38;
    sub_1C07A57D4(v29, v38, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v31 = v30;
    v32 = v40;
    sub_1C07A57D4(v31, v40, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v33 = v46;
    sub_1C05145B4(a1 + v46, &qword_1EBE17778, &unk_1C0971260);
    sub_1C07A57D4(v32, a1 + v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    return v37(a1 + v33, 0, 1, v48);
  }

  return result;
}

_OWORD *sub_1C079F670@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v9 = v1 + 8;
  v10 = v11;
  memcpy(v29, v9, 0x301uLL);
  *a1 = 0;
  v12 = 1;
  *(a1 + 8) = 1;
  v13 = (a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20));
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v23[1] = v15 + 56;
  v24 = v16;
  v16(v13, 1, 1, v14);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if (v11 > 4)
  {
    if (v10 <= 6)
    {
      if (v10 == 5)
      {
        v12 = 6;
      }

      else
      {
        v12 = 7;
      }
    }

    else if (v10 == 7)
    {
      v12 = 8;
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_19;
      }

      v12 = 9;
    }
  }

  else if (v10 <= 1)
  {
    if (v10)
    {
      v12 = 2;
    }
  }

  else if (v10 == 2)
  {
    v12 = 3;
  }

  else if (v10 == 3)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  *a1 = v12;
  *(a1 + 8) = 1;
LABEL_19:
  memcpy(v28, v9, 0x301uLL);
  result = sub_1C05757D8(v28);
  if (result == 1)
  {
    return result;
  }

  memcpy(v27, v28, 0x301uLL);
  v18 = sub_1C0573F8C(v27);
  result = sub_1C0527300(v27);
  if (v18)
  {
    if (v18 == 1)
    {
      memcpy(v26, result, sizeof(v26));
      sub_1C07A3450(v5);
      sub_1C05145B4(v13, &qword_1EBE17760, &unk_1C099BB10);
      sub_1C07A57D4(v5, v13, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    else
    {
      v21 = *(result + 4);
      if (!v21)
      {
        return sub_1C05145B4(v29, &qword_1EBE16C80, &qword_1C096E858);
      }

      v22 = result[1];
      *v26 = *result;
      *&v26[16] = v22;
      *&v26[32] = v21;
      sub_1C07A2578(result);
      sub_1C05145B4(v13, &qword_1EBE17760, &unk_1C099BB10);
      sub_1C07A57D4(v8, v13, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    }
  }

  else
  {
    v19 = *(result + 1);
    if (!v19)
    {
      return result;
    }

    v20 = *result;
    memcpy(v26, v29, sizeof(v26));
    sub_1C05757F0(v26, &v25);
    sub_1C05145B4(v13, &qword_1EBE17760, &unk_1C099BB10);
    *v13 = v20;
    v13[1] = v19;
  }

  swift_storeEnumTagMultiPayload();
  return v24(v13, 0, 1, v14);
}

uint64_t *sub_1C079FA08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v104 - v8;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v106 = (&v104 - v17);
  memcpy(v108, v2, 0x20AuLL);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v19 = *(v18 + 20);
  if (qword_1EBE15458 != -1)
  {
    v103 = *(v18 + 20);
    swift_once();
    v19 = v103;
  }

  v20 = v19;
  *(a1 + v19) = qword_1EBE15460;
  memcpy(v109, v2, 0x20AuLL);
  v21 = sub_1C057363C(v109);
  result = sub_1C05272F0(v109);
  if (v21 > 3)
  {
    if (v21 <= 5)
    {
      if (v21 != 4)
      {
        memcpy(v107, result, 0x20AuLL);

        sub_1C07A0A1C(v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(a1 + v20);
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v106;
        }

        else
        {
          type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
          v90 = swift_allocObject();
          v91 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          v92 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
          (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
          v93 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          swift_beginAccess();
          v94 = v48 + v93;
          v49 = v106;
          sub_1C05149F8(v94, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
          swift_beginAccess();
          sub_1C051F9D4(v49, v90 + v91, &qword_1EBE1F7F8, &unk_1C0999E50);
          swift_endAccess();

          *(a1 + v20) = v90;
          v48 = v90;
        }

        sub_1C07A57D4(v15, v49, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        v95 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v95 - 8) + 56))(v49, 0, 1, v95);
        v96 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        sub_1C051F9D4(v49, v48 + v96, &qword_1EBE1F7F8, &unk_1C0999E50);
        return swift_endAccess();
      }

      v23 = *result;
      v24 = result[1];

      sub_1C05735AC(v108, v107);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a1 + v20);
      if (v36)
      {
        v27 = v106;
        goto LABEL_47;
      }

LABEL_46:
      type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v82 = swift_allocObject();
      v105 = v23;
      v83 = v82;
      v84 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v85 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v85 - 8) + 56))(v83 + v84, 1, 1, v85);
      v86 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v87 = v26 + v86;
      v27 = v106;
      sub_1C05149F8(v87, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v27, v83 + v84, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v20) = v83;
      v26 = v83;
      v23 = v105;
      goto LABEL_47;
    }

    if (v21 != 6)
    {
      if (v21 == 7)
      {
        v23 = *result;
        v24 = result[1];

        sub_1C05735AC(v108, v107);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(a1 + v20);
        if (v25)
        {
          v27 = v106;
LABEL_47:
          *v27 = v23;
          v27[1] = v24;
          v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v88 - 8) + 56))(v27, 0, 1, v88);
          v89 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          swift_beginAccess();
          v68 = v26 + v89;
          v81 = v27;
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      v42 = result[1];
      v105 = *result;
      v44 = result[2];
      v43 = result[3];
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      v7[2] = 0;
      v7[3] = 0xE000000000000000;
      v7[4] = 0;
      v7[5] = 0xE000000000000000;
      v7[6] = MEMORY[0x1E69E7CC0];

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v42)
      {
        *v7 = v105;
        v7[1] = v42;
      }

      v7[2] = v44;
      v7[3] = v43;
      sub_1C07A57D4(v7, v9, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a1 + v20);
      if (v45)
      {
        v31 = v106;
      }

      else
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v74 = swift_allocObject();
        v75 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v76 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v76 - 8) + 56))(v74 + v75, 1, 1, v76);
        v77 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v78 = v46 + v77;
        v31 = v106;
        sub_1C05149F8(v78, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v31, v74 + v75, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v20) = v74;
        v46 = v74;
      }

      sub_1C07A57D4(v9, v31, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v79 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v79 - 8) + 56))(v31, 0, 1, v79);
      v80 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v68 = v46 + v80;
LABEL_45:
      v81 = v31;
LABEL_53:
      sub_1C051F9D4(v81, v68, &qword_1EBE1F7F8, &unk_1C0999E50);
      return swift_endAccess();
    }

    sub_1C07A19F8(v12);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v20);
    if (v37)
    {
      v35 = v106;
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v50 = swift_allocObject();
      v51 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v52 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
      v53 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v54 = v34 + v53;
      v35 = v106;
      sub_1C05149F8(v54, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v35, v50 + v51, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v20) = v50;
      v34 = v50;
    }

    sub_1C07A57D4(v12, v35, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
LABEL_52:
    swift_storeEnumTagMultiPayload();
    (*(*(v55 - 8) + 56))(v35, 0, 1, v55);
    v102 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    v68 = v34 + v102;
    v81 = v35;
    goto LABEL_53;
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      v38 = *result;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + v20);
      if (v39)
      {
        v31 = v106;
      }

      else
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v62 = swift_allocObject();
        v63 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v64 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
        v65 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v66 = v30 + v65;
        v31 = v106;
        sub_1C05149F8(v66, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v31, v62 + v63, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v20) = v62;
        v30 = v62;
      }

      *v31 = v38;
      v61 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    }

    else
    {
      v28 = *result;

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + v20);
      if (v29)
      {
        v31 = v106;
      }

      else
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v56 = swift_allocObject();
        v57 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v58 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
        v59 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v60 = v30 + v59;
        v31 = v106;
        sub_1C05149F8(v60, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v31, v56 + v57, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v20) = v56;
        v30 = v56;
      }

      *v31 = v28;
      v61 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v31, 0, 1, v61);
    v67 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    v68 = v30 + v67;
    goto LABEL_45;
  }

  if (v21 != 2)
  {
    v40 = *result;

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v20);
    if (v41)
    {
      v35 = v106;
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v69 = swift_allocObject();
      v70 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v71 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v71 - 8) + 56))(v69 + v70, 1, 1, v71);
      v72 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v73 = v34 + v72;
      v35 = v106;
      sub_1C05149F8(v73, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v35, v69 + v70, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v20) = v69;
      v34 = v69;
    }

    *v35 = v40;
    v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    goto LABEL_52;
  }

  v32 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v32 <= 0x7FFFFFFF)
  {

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v20);
    if (v33)
    {
      v35 = v106;
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v97 = swift_allocObject();
      v98 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v99 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v99 - 8) + 56))(v97 + v98, 1, 1, v99);
      v100 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v101 = v34 + v100;
      v35 = v106;
      sub_1C05149F8(v101, v106, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v35, v97 + v98, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v20) = v97;
      v34 = v97;
    }

    *v35 = v32;
    v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C07A0A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v130 = &v108 - v4;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v127 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v108 - v10;
  v124 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v110 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v138 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = &v108 - v13;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v117 = *(v14 - 8);
  v118 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v116 = &v108 - v17;
  v135 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v115 = *(v135 - 8);
  v18 = MEMORY[0x1EEE9AC00](v135);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v108 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v108 - v23;
  v132 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v25 = *(v132 - 8);
  v26 = MEMORY[0x1EEE9AC00](v132);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v108 - v29;
  v31 = *(v1 + 264);
  v32 = *(v1 + 280);
  v164 = *(v1 + 248);
  v165 = v31;
  v166 = v32;
  v167 = *(v1 + 296);
  v33 = *(v1 + 200);
  v160 = *(v1 + 184);
  v161 = v33;
  v34 = *(v1 + 232);
  v162 = *(v1 + 216);
  v163 = v34;
  v35 = *(v1 + 168);
  v158 = *(v1 + 152);
  v159 = v35;
  v36 = *(v1 + 38);
  v131 = *(v1 + 156);
  v114 = *(v1 + 40);
  v133 = *(v1 + 82);
  v109 = *(v1 + 42);
  v136 = *(v1 + 172);
  v37 = *(v1 + 44);
  v38 = *(v1 + 45);
  v39 = v1[24];
  v168 = v1[23];
  v169 = v39;
  v170[0] = v1[25];
  *(v170 + 15) = *(v1 + 415);
  v40 = *(v1 + 53);
  v112 = v37;
  v113 = v40;
  v41 = *(v1 + 54);
  v122 = v38;
  v123 = v41;
  *(v173 + 15) = *(v1 + 487);
  v42 = *(v1 + 472);
  v172 = *(v1 + 456);
  v173[0] = v42;
  v171 = *(v1 + 440);
  v43 = *(v1 + 62);
  v125 = *(v1 + 504);
  v44 = *(v1 + 64);
  v139 = v43;
  v140 = v44;
  LODWORD(v43) = *(v1 + 520);
  v120 = *(v1 + 521);
  v121 = v43;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v45 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a1 + v45) = qword_1EBE17C18;
  v46 = v1[7];
  v180 = v1[6];
  v181 = v46;
  v182 = v1[8];
  v183 = *(v1 + 144);
  v47 = v1[3];
  v176 = v1[2];
  v177 = v47;
  v48 = v1[5];
  v178 = v1[4];
  v179 = v48;
  v49 = v1[1];
  v174 = *v1;
  v175 = v49;
  if (sub_1C05D25B4(&v174) == 1)
  {
  }

  else
  {
    v154 = v180;
    v155 = v181;
    v156 = v182;
    v157 = v183;
    v150 = v176;
    v151 = v177;
    v152 = v178;
    v153 = v179;
    v148 = v174;
    v149 = v175;

    sub_1C07A46A4(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(a1 + v45);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v52 = sub_1C05C5474(v51);

      *(a1 + v45) = v52;
      v51 = v52;
    }

    sub_1C07A57D4(v30, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    (*(v25 + 56))(v24, 0, 1, v132);
    v53 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
    swift_beginAccess();
    sub_1C051F9D4(v24, v51 + v53, &qword_1EBE17C50, &unk_1C099BB50);
    swift_endAccess();
  }

  v154 = v164;
  v155 = v165;
  v156 = v166;
  v157 = v167;
  v150 = v160;
  v151 = v161;
  v152 = v162;
  v153 = v163;
  v148 = v158;
  v149 = v159;
  result = sub_1C05D25B4(&v148);
  if (result != 1)
  {
    v144[3] = v154;
    v144[4] = v155;
    v144[5] = v156;
    v145 = v157;
    v143 = v150;
    v144[0] = v151;
    v144[1] = v152;
    v144[2] = v153;
    v141 = v148;
    v142 = v149;
    sub_1C07A46A4(v28);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(a1 + v45);
    if ((v55 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v57 = sub_1C05C5474(v56);

      *(a1 + v45) = v57;
      v56 = v57;
    }

    sub_1C07A57D4(v28, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    (*(v25 + 56))(v24, 0, 1, v132);
    v58 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
    swift_beginAccess();
    sub_1C051F9D4(v24, v56 + v58, &qword_1EBE17C50, &unk_1C099BB50);
    result = swift_endAccess();
  }

  v59 = v131;
  v60 = v131 >> 8;
  v62 = v139;
  v61 = v140;
  v63 = v138;
  if (v131 >> 8 != 54)
  {
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if ((v59 & 1) == 0)
    {
      *v20 = v36;
    }

    if (v60 != 53)
    {
      LOBYTE(v146) = v60;
      sub_1C07A5490(&v141);
      v64 = BYTE8(v141);
      *(v20 + 1) = v141;
      v20[16] = v64;
    }

    sub_1C07A57D4(v20, v134, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(a1 + v45);
    if ((v65 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v67 = sub_1C05C5474(v66);

      *(a1 + v45) = v67;
      v66 = v67;
    }

    v68 = v116;
    sub_1C07A57D4(v134, v116, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    (*(v115 + 56))(v68, 0, 1, v135);
    v69 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
    swift_beginAccess();
    sub_1C051F9D4(v68, v66 + v69, &qword_1EBE17C58, &unk_1C0973570);
    result = swift_endAccess();
  }

  if (HIBYTE(v133) != 3)
  {
    v146 = v114;
    v147 = v133 & 0xFFFFFF01;
    sub_1C07A4F14(v137);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + v45);
    if ((v70 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v72 = sub_1C05C5474(v71);

      *(a1 + v45) = v72;
      v71 = v72;
    }

    v73 = v119;
    sub_1C07A57D4(v137, v119, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    (*(v117 + 56))(v73, 0, 1, v118);
    v74 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
    swift_beginAccess();
    sub_1C051F9D4(v73, v71 + v74, &qword_1EBE17C60, &unk_1C099BB40);
    result = swift_endAccess();
  }

  v75 = v136;
  v76 = v136 >> 8;
  if (v136 >> 8 != 54)
  {
    *v63 = 0;
    *(v63 + 1) = 0;
    v63[16] = 1;
    result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v75)
    {
      v77 = -1;
    }

    else
    {
      v77 = v109;
      if (v109 < 0xFFFFFFFF80000000)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v109 > 0x7FFFFFFF)
      {
LABEL_69:
        __break(1u);
        return result;
      }
    }

    *v63 = v77;
    if (v76 != 53)
    {
      LOBYTE(v146) = v76;
      sub_1C07A5490(&v141);
      v78 = BYTE8(v141);
      *(v63 + 1) = v141;
      v63[16] = v78;
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(a1 + v45);
    if ((v79 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v81 = sub_1C05C5474(v80);

      *(a1 + v45) = v81;
      v80 = v81;
    }

    v82 = v63;
    v83 = v111;
    sub_1C07A57D4(v82, v111, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    (*(v110 + 56))(v83, 0, 1, v124);
    v84 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
    swift_beginAccess();
    sub_1C051F9D4(v83, v80 + v84, &qword_1EBE17C68, &unk_1C0973580);
    result = swift_endAccess();
  }

  if (v122 != 1)
  {
    *&v141 = v112;
    *(&v141 + 1) = v122;
    v142 = v168;
    v143 = v169;
    v144[0] = v170[0];
    *(v144 + 15) = *(v170 + 15);
    sub_1C07A5014(v126);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(a1 + v45);
    if ((v85 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v87 = sub_1C05C5474(v86);

      *(a1 + v45) = v87;
      v86 = v87;
    }

    v88 = v130;
    sub_1C07A57D4(v126, v130, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    (*(v128 + 56))(v88, 0, 1, v129);
    v89 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
    swift_beginAccess();
    sub_1C051F9D4(v88, v86 + v89, &qword_1EBE17C70, &unk_1C099BB30);
    result = swift_endAccess();
  }

  if (v123 != 1)
  {
    *&v141 = v113;
    *(&v141 + 1) = v123;
    v142 = v171;
    v143 = v172;
    v144[0] = v173[0];
    *(v144 + 15) = *(v173 + 15);
    sub_1C07A5014(v127);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(a1 + v45);
    if ((v90 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v92 = sub_1C05C5474(v91);

      *(a1 + v45) = v92;
      v91 = v92;
    }

    v93 = v130;
    sub_1C07A57D4(v127, v130, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    (*(v128 + 56))(v93, 0, 1, v129);
    v94 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
    swift_beginAccess();
    sub_1C051F9D4(v93, v91 + v94, &qword_1EBE17C70, &unk_1C099BB30);
    result = swift_endAccess();
  }

  if ((v125 & 1) == 0)
  {
    if (v62 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v62 > 0x7FFFFFFF)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(a1 + v45);
    if ((v95 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      swift_allocObject();
      v97 = sub_1C05C5474(v96);

      *(a1 + v45) = v97;
      v96 = v97;
    }

    v98 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
    result = swift_beginAccess();
    *(v96 + v98) = v62;
  }

  if (v121)
  {
    goto LABEL_54;
  }

  if (v61 < 0xFFFFFFFF80000000)
  {
    goto LABEL_65;
  }

  if (v61 > 0x7FFFFFFF)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v99 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(a1 + v45);
  if ((v99 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v101 = sub_1C05C5474(v100);

    *(a1 + v45) = v101;
    v100 = v101;
  }

  v102 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  result = swift_beginAccess();
  *(v100 + v102) = v61;
LABEL_54:
  if (v120 > 1)
  {
    if (v120 != 2)
    {
      return result;
    }

    v103 = 3;
  }

  else if (v120)
  {
    v103 = 2;
  }

  else
  {
    v103 = 1;
  }

  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a1 + v45);
  if ((v104 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    swift_allocObject();
    v106 = sub_1C05C5474(v105);

    *(a1 + v45) = v106;
    v105 = v106;
  }

  v107 = v105 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v107 = v103;
  *(v107 + 8) = 1;
  return result;
}

void sub_1C07A19F8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v31 - v5;
  v35 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v33 = *(v35 - 8);
  v6 = MEMORY[0x1EEE9AC00](v35);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v17 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  if (qword_1EBE15928 != -1)
  {
    swift_once();
  }

  *(a1 + v17) = qword_1EBE1FD68;
  memcpy(v38, v1 + 2, 0x20AuLL);
  memcpy(v39, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(v39) == 1)
  {
  }

  else
  {
    memcpy(v37, v39, sizeof(v37));

    sub_1C05149F8(v38, &v36, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C079FA08(v16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C05145B4(v38, &qword_1EBE16C70, &unk_1C099BB20);
      v18 = *(a1 + v17);
    }

    else
    {
      v31 = v13;
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();

      v18 = sub_1C081CAFC(v19);
      sub_1C05145B4(v38, &qword_1EBE16C70, &unk_1C099BB20);
      v13 = v31;

      *(a1 + v17) = v18;
    }

    sub_1C07A57D4(v16, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v14 + 56))(v12, 0, 1, v13);
    v20 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C051F9D4(v12, v18 + v20, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
  }

  v21 = v2[71];
  v22 = v35;
  if (v21)
  {
    v23 = v2[68];
    v24 = v2[70];
    v25 = v2[69];
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    v8[4] = 0;
    v8[5] = 0xE000000000000000;
    v8[6] = MEMORY[0x1E69E7CC0];

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v25)
    {
      *v8 = v23;
      v8[1] = v25;
    }

    v8[2] = v24;
    v8[3] = v21;
    v26 = v32;
    sub_1C07A57D4(v8, v32, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + v17);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();
      v28 = sub_1C081CAFC(v28);
      *(a1 + v17) = v28;
    }

    v29 = v34;
    sub_1C07A57D4(v26, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v33 + 56))(v29, 0, 1, v22);
    v30 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
    swift_beginAccess();
    sub_1C051F9D4(v29, v28 + v30, &qword_1EBE16B50, &unk_1C096E0F0);
    swift_endAccess();
  }
}

uint64_t sub_1C07A1F0C(uint64_t a1, int a2)
{
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v42 - v12;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v14 = v13 - 8;
  v52 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v51 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = v2[1];
  v44 = *v2;
  v43 = v19;
  v20 = v2[2];
  v53 = v2[3];
  v60 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  *(&v42 - v17) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v46 = *(v14 + 32);
  v22 = *(v8 + 56);
  v47 = v8 + 56;
  v48 = v22;
  v23 = v7;
  v22(&v18[v46], 1, 1, v7);
  *v18 = a2;
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *(v11 + 2) = v21;
  v24 = *(v7 + 24);
  v45 = v23;
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v26 = *(*(v25 - 8) + 56);
  v26(&v11[v24], 1, 1, v25);
  v27 = v43;

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *v11 = v44;
  *(v11 + 1) = v27;
  *(v11 + 2) = v20;
  v28 = v49;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  sub_1C05145B4(&v11[v24], &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C07A57D4(v28, &v11[v24], type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  swift_storeEnumTagMultiPayload();
  v26(&v11[v24], 0, 1, v25);
  v29 = v50;
  sub_1C07A570C(v11, v50, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C07A5774(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v30 = v46;
  sub_1C05145B4(&v18[v46], &qword_1EBE16E10, &unk_1C0971270);
  sub_1C07A57D4(v29, &v18[v30], type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v31 = v51;
  v48(&v18[v30], 0, 1, v45);
  v50 = v18;
  sub_1C07A570C(v18, v31, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  v32 = sub_1C0579214(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v60 = v32;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
LABEL_14:
    v32 = sub_1C0579214((v33 > 1), v35, 1, v32);
    v60 = v32;
  }

  *(v32 + 16) = v35;
  sub_1C07A57D4(v31, v32 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v34, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  v60 = v32;
  v36 = v53;
  v34 = *(v53 + 16);
  if (v34)
  {
    v35 = 0;
    v31 = v53 + 32;
    while (1)
    {
      v33 = *(v36 + 16);
      if (v35 >= v33)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      sub_1C0526080(v31, v56);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA00, &qword_1C099BAE8);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C0531D80(v54, v57);
      v33 = *(v60 + 16);
      if (v33 >> 31)
      {
        goto LABEL_12;
      }

      v32 = (a1 + v33);
      if (__OFADD__(a1, v33))
      {
        goto LABEL_13;
      }

      ++v35;
      v37 = v58;
      v38 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v39 = v37;
      v36 = v53;
      v40 = (*(v38 + 8))(v32, a1, v39, v38);
      v32 = &v60;
      sub_1C05CA640(v40);
      __swift_destroy_boxed_opaque_existential_1(v57);
      v31 += 40;
      if (v34 == v35)
      {
        v32 = v60;
        goto LABEL_10;
      }
    }

    v55 = 0;
    memset(v54, 0, sizeof(v54));
    sub_1C05145B4(v54, &qword_1EBE1FA08, &unk_1C099BAF0);
    result = sub_1C095DD0C();
    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1C07A5774(v50, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    return v32;
  }

  return result;
}

uint64_t sub_1C07A2578(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v138 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v143 = *(v138 - 8);
  v5 = MEMORY[0x1EEE9AC00](v138);
  v124 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v123 = &v107 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v107 - v9;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v11 = *(v10 - 8);
  v141 = v10;
  v142 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v114 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v140 = *(v126 - 8);
  v18 = MEMORY[0x1EEE9AC00](v126);
  v132 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v107 - v20;
  v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v130 = *(v21 - 8);
  v131 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v145 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v107 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v144 = &v107 - v27;
  v28 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v110 = *(v28 - 8);
  v111 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v119 = (&v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v107 - v35;
  v37 = *v1;
  v38 = v1[1];
  v40 = v2[2];
  v39 = v2[3];
  v136 = v37;
  v137 = v40;
  v139 = v39;
  v113 = v2[4];
  *v4 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v41 = *(v14 + 32);
  v42 = *(v31 + 56);
  v107 = v4;
  result = v42(&v4[v41], 1, 1, v30);
  if (v38 != 1)
  {
    v44 = v42;
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    v34[2] = 0;
    v34[3] = 0xE000000000000000;

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v38)
    {
      *v34 = v136;
      v34[1] = v38;
    }

    v45 = v139;
    if (v139)
    {
      v34[2] = v137;
      v34[3] = v45;
    }

    sub_1C07A57D4(v34, v36, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);

    v46 = v107;
    sub_1C05145B4(&v107[v41], &qword_1EBE17758, &unk_1C0971240);
    sub_1C07A57D4(v36, &v46[v41], type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    result = v44(&v46[v41], 0, 1, v30);
  }

  v47 = v113;
  v48 = MEMORY[0x1E69E7CC0];
  v109 = *(v113 + 16);
  if (v109)
  {
    v49 = 0;
    v108 = v113 + 32;
    v50 = (v140 + 7);
    v140 = (v142 + 7);
    v136 = (v143 + 56);
    v137 = v50;
    v120 = MEMORY[0x1E69E7CC0];
    v51 = v126;
    while (v49 < *(v47 + 16))
    {
      v52 = (v108 + 32 * v49);
      v53 = v52[2];
      v54 = v52[3];
      v55 = *(v54 + 16);
      v117 = v52[1];
      v118 = v49;
      v115 = v54;
      v116 = v53;
      if (v55)
      {
        v56 = (v54 + 32);

        v57 = v48;
        while (1)
        {
          v142 = v57;
          v143 = v55;
          memcpy(v150, v56, sizeof(v150));
          v58 = v150[66];
          *v26 = v48;
          *(v26 + 1) = 0;
          v26[16] = 1;
          v59 = v131;

          sub_1C0575738(v150, v149);
          sub_1C05149F8(&v150[67], v149, &qword_1EBE16C78, &qword_1C096E850);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v60 = v59[7];
          v133 = *v137;
          v133(&v26[v60], 1, 1, v51);
          v61 = v59[8];
          v139 = *v140;
          v139(&v26[v61], 1, 1, v141);
          v62 = *v136;
          v134 = v59[9];
          v135 = v62;
          v62(&v26[v134], 1, 1, v138);
          *v26 = v58;
          memcpy(v151, &v150[67], 0x309uLL);
          if (sub_1C0573614(v151) != 1)
          {
            break;
          }

LABEL_43:
          v83 = v150[167];
          if (v150[167])
          {
            v84 = v150[166];
            v85 = v150[165];
            v86 = v125;
            *v125 = 0;
            *(v86 + 8) = 0;
            *(v86 + 16) = 0xE000000000000000;
            v87 = v141;

            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            *v86 = v85 & 1;
            *(v86 + 8) = v84;
            *(v86 + 16) = v83;
            sub_1C05145B4(&v26[v61], &qword_1EBE17770, &unk_1C099BB00);
            sub_1C07A57D4(v86, &v26[v61], type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
            v88 = v87;
            v51 = v126;
            v139(&v26[v61], 0, 1, v88);
          }

          memcpy(v149, v150, 0x20AuLL);
          if (sub_1C0573598(v149) != 1)
          {
            memcpy(v148, v149, 0x20AuLL);
            v89 = sub_1C057363C(v148);
            sub_1C05272F0(v148);
            *(v26 + 1) = v89 + 1;
            v26[16] = 1;
          }

          memcpy(v148, v150, 0x20AuLL);
          v90 = sub_1C0573598(v148);
          v57 = v142;
          v91 = v143;
          if (v90 != 1)
          {
            memcpy(v147, v148, 0x20AuLL);
            v92 = v123;
            sub_1C079FA08(v123);
            v93 = v92;
            v94 = v122;
            sub_1C07A57D4(v93, v122, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v95 = v94;
            v96 = v124;
            sub_1C07A57D4(v95, v124, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v97 = v134;
            sub_1C05145B4(&v26[v134], &qword_1EBE17778, &unk_1C0971260);
            sub_1C07A57D4(v96, &v26[v97], type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v135(&v26[v97], 0, 1, v138);
          }

          v98 = v144;
          sub_1C07A57D4(v26, v144, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          sub_1C07A570C(v98, v145, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1C05791EC(0, v57[2] + 1, 1, v57);
          }

          v100 = v57[2];
          v99 = v57[3];
          if (v100 >= v99 >> 1)
          {
            v57 = sub_1C05791EC((v99 > 1), v100 + 1, 1, v57);
          }

          sub_1C0575770(v150);
          sub_1C07A5774(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          v57[2] = v100 + 1;
          sub_1C07A57D4(v145, v57 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v100, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          v56 += 1344;
          v55 = v91 - 1;
          v48 = MEMORY[0x1E69E7CC0];
          if (!v55)
          {
            goto LABEL_57;
          }
        }

        v63 = v151[0];
        v64 = v132;
        *v132 = 0;
        *(v64 + 8) = 1;
        v65 = v64 + *(v51 + 20);
        v66 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
        v67 = *(v66 - 8);
        v68 = *(v67 + 56);
        v127 = v65;
        v128 = v67 + 56;
        v129 = v68;
        v68(v65, 1, 1, v66);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        if (v63 <= 4)
        {
          if (v63 <= 1)
          {
            if (v63)
            {
              v69 = 2;
            }

            else
            {
              v69 = 1;
            }
          }

          else if (v63 == 2)
          {
            v69 = 3;
          }

          else if (v63 == 3)
          {
            v69 = 4;
          }

          else
          {
            v69 = 5;
          }

          goto LABEL_31;
        }

        if (v63 <= 6)
        {
          if (v63 == 5)
          {
            v69 = 6;
          }

          else
          {
            v69 = 7;
          }

LABEL_31:
          v70 = v132;
          *v132 = v69;
          *(v70 + 8) = 1;
        }

        else
        {
          if (v63 == 7)
          {
            v69 = 8;
            goto LABEL_31;
          }

          if (v63 == 8)
          {
            v69 = 9;
            goto LABEL_31;
          }
        }

        memcpy(v149, &v151[8], 0x301uLL);
        if (sub_1C05757D8(v149) != 1)
        {
          memcpy(v148, v149, 0x301uLL);
          v71 = sub_1C0573F8C(v148);
          v72 = sub_1C0527300(v148);
          if (v71)
          {
            if (v71 == 1)
            {
              memcpy(v147, v72, sizeof(v147));
              v73 = v114;
              sub_1C07A3450(v114);
              v74 = v127;
              sub_1C05145B4(v127, &qword_1EBE17760, &unk_1C099BB10);
              sub_1C07A57D4(v73, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
              goto LABEL_40;
            }

            v79 = *(v72 + 4);
            if (v79)
            {
              v80 = v72[1];
              *v147 = *v72;
              *&v147[16] = v80;
              *&v147[32] = v79;
              v81 = v112;
              sub_1C07A2578(v72);
              v74 = v127;
              sub_1C05145B4(v127, &qword_1EBE17760, &unk_1C099BB10);
              sub_1C07A57D4(v81, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
LABEL_40:
              swift_storeEnumTagMultiPayload();
              v78 = v74;
LABEL_41:
              v129(v78, 0, 1, v66);
            }

            else
            {
              sub_1C05145B4(&v150[67], &qword_1EBE16C78, &qword_1C096E850);
            }
          }

          else
          {
            v75 = *(v72 + 1);
            if (v75)
            {
              v76 = *v72;
              memcpy(v147, &v151[8], sizeof(v147));
              sub_1C05757F0(v147, &v146);
              v77 = v127;
              sub_1C05145B4(v127, &qword_1EBE17760, &unk_1C099BB10);
              *v77 = v76;
              v77[1] = v75;
              swift_storeEnumTagMultiPayload();
              v78 = v77;
              goto LABEL_41;
            }
          }
        }

        v82 = v121;
        sub_1C07A57D4(v132, v121, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        sub_1C05145B4(&v150[67], &qword_1EBE16C78, &qword_1C096E850);
        sub_1C05145B4(&v26[v60], &qword_1EBE17768, &unk_1C0971250);
        sub_1C07A57D4(v82, &v26[v60], type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v133(&v26[v60], 0, 1, v51);
        goto LABEL_43;
      }

      v57 = v48;
LABEL_57:
      v101 = v119;
      *v119 = v48;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();

      *v101 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_1C057919C(0, v120[2] + 1, 1, v120);
      }

      v102 = v118;
      v104 = v120[2];
      v103 = v120[3];
      if (v104 >= v103 >> 1)
      {
        v120 = sub_1C057919C((v103 > 1), v104 + 1, 1, v120);
      }

      v49 = v102 + 1;
      v105 = v119;
      v106 = v120;
      v120[2] = v104 + 1;
      result = sub_1C07A57D4(v105, v106 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v104, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v47 = v113;
      if (v49 == v109)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
  }

  else
  {
    v120 = MEMORY[0x1E69E7CC0];
LABEL_64:
    *v107 = v120;
  }

  return result;
}

uint64_t sub_1C07A3450@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v181 = &v157 - v4;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v179 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v178 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v157 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v161 = &v157 - v10;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v159 = *(v11 - 8);
  v160 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = v1[1];
  memcpy(v201, v1 + 2, 0x20AuLL);
  v16 = v1[69];
  v17 = v1[70];
  v164 = v1[68];
  v165 = v17;
  v18 = v1[71];
  v185 = v16;
  v186 = v18;
  v19 = v1[73];
  v175 = v1[72];
  v176 = v19;
  v20 = v1[74];
  v21 = v1[75];
  v193 = v1[76];
  v194 = v21;
  v22 = v1[77];
  v191 = v1[78];
  v192 = v22;
  v190 = v1[79];
  LODWORD(v19) = *(v1 + 641);
  v171 = *(v1 + 640);
  v172 = v19;
  LODWORD(v19) = *(v1 + 643);
  v173 = *(v1 + 642);
  v174 = v19;
  v23 = v1[81];
  v24 = v1[82];
  v182 = v1[83];
  v166 = *(v1 + 672);
  v162 = v1[85];
  v163 = v23;
  v183 = v1[86];
  v184 = v24;
  v25 = v1[88];
  v188 = v1[87];
  v189 = v25;
  v26 = v1[89];
  v167 = v1[90];
  LODWORD(v24) = *(v1 + 736);
  v27 = v1[93];
  v157 = v1[91];
  v158 = v27;
  LODWORD(v27) = *(v1 + 752);
  v168 = v24;
  v169 = v27;
  v28 = v1[95];
  v170 = *(v1 + 768);

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v180 = v5;
  v29 = *(v5 + 20);
  if (qword_1EBE0FD48 != -1)
  {
    swift_once();
  }

  *(a1 + v29) = qword_1EBE0FD50;

  v187 = v20;
  if (v15)
  {
    v30 = v26;
    v31 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a1 + v29);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v34 = sub_1C081F1B4(v33);

      *(a1 + v29) = v34;
      v33 = v34;
    }

    swift_beginAccess();
    *(v33 + 16) = v14;
    *(v33 + 24) = v15;

    v28 = v31;
    v26 = v30;
    v20 = v187;
  }

  memcpy(v200, v201, 0x20AuLL);
  v35 = sub_1C0573598(v200);
  v36 = v182;
  if (v35 != 1)
  {
    memcpy(v196, v200, sizeof(v196));
    memcpy(v197, v201, 0x20AuLL);
    sub_1C05735AC(v197, &v195);
    sub_1C079FA08(v13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C05145B4(v201, &qword_1EBE16C70, &unk_1C099BB20);
      v37 = *(a1 + v29);
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();

      v37 = sub_1C081F1B4(v38);

      sub_1C05145B4(v201, &qword_1EBE16C70, &unk_1C099BB20);
      v36 = v182;

      *(a1 + v29) = v37;
    }

    v39 = v13;
    v40 = v161;
    sub_1C07A57D4(v39, v161, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v159 + 56))(v40, 0, 1, v160);
    v41 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    sub_1C051F9D4(v40, v37 + v41, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
  }

  v42 = v183;
  if (v185)
  {

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(a1 + v29);
    if ((v43 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v45 = sub_1C081F1B4(v44);

      *(a1 + v29) = v45;
      v44 = v45;
    }

    v46 = (v44 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
    swift_beginAccess();
    v47 = v185;
    *v46 = v164;
    v46[1] = v47;
  }

  result = v186;
  if (v186)
  {

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a1 + v29);
    if ((v49 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v51 = sub_1C081F1B4(v50);

      *(a1 + v29) = v51;
      v50 = v51;
    }

    v52 = (v50 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
    swift_beginAccess();
    v53 = v186;
    *v52 = v165;
    v52[1] = v53;
  }

  if (v175)
  {
    memcpy(v197, (v175 + 16), 0x301uLL);

    sub_1C07A3450(v177);
    v54 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v55 = *(a1 + v29);
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();

      v55 = sub_1C081F1B4(v56);

      *(a1 + v29) = v55;
    }

    v57 = v181;
    sub_1C07A57D4(v177, v181, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v179 + 56))(v57, 0, 1, v180);
    v58 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
    swift_beginAccess();
    sub_1C051F9D4(v57, v55 + v58, &qword_1EBE179C8, &qword_1C0972E60);
    result = swift_endAccess();
    v28 = v54;
    v20 = v187;
  }

  if (v176)
  {
    memcpy(v197, (v176 + 16), 0x301uLL);

    sub_1C07A3450(v178);
    v59 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v60 = *(a1 + v29);
    }

    else
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();

      v60 = sub_1C081F1B4(v61);

      *(a1 + v29) = v60;
    }

    v62 = v181;
    sub_1C07A57D4(v178, v181, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v179 + 56))(v62, 0, 1, v180);
    v63 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
    swift_beginAccess();
    sub_1C051F9D4(v62, v60 + v63, &qword_1EBE179C8, &qword_1C0972E60);
    result = swift_endAccess();
    v28 = v59;
    v20 = v187;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (HIDWORD(v20))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v64 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(a1 + v29);
  if ((v64 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v66 = sub_1C081F1B4(v65);

    *(a1 + v29) = v66;
    v65 = v66;
  }

  v67 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  result = swift_beginAccess();
  *(v65 + v67) = v20;
  if ((v194 & 0x8000000000000000) != 0)
  {
    goto LABEL_102;
  }

  if (HIDWORD(v194))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v68 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(a1 + v29);
  if ((v68 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v70 = sub_1C081F1B4(v69);

    *(a1 + v29) = v70;
    v69 = v70;
  }

  v71 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  result = swift_beginAccess();
  v72 = v193;
  *(v69 + v71) = v194;
  if ((v72 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (HIDWORD(v72))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v73 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(a1 + v29);
  if ((v73 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v75 = sub_1C081F1B4(v74);

    *(a1 + v29) = v75;
    v74 = v75;
  }

  v76 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  result = swift_beginAccess();
  v77 = v192;
  *(v74 + v76) = v193;
  if ((v77 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  if (HIDWORD(v77))
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v78 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a1 + v29);
  if ((v78 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v80 = sub_1C081F1B4(v79);

    *(a1 + v29) = v80;
    v79 = v80;
  }

  v81 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  result = swift_beginAccess();
  v82 = v191;
  *(v79 + v81) = v192;
  if ((v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_108;
  }

  if (HIDWORD(v82))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(a1 + v29);
  if ((v83 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v85 = sub_1C081F1B4(v84);

    *(a1 + v29) = v85;
    v84 = v85;
  }

  v86 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  result = swift_beginAccess();
  v87 = v190;
  *(v84 + v86) = v191;
  if ((v87 & 0x8000000000000000) != 0)
  {
    goto LABEL_110;
  }

  if (HIDWORD(v87))
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v88 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(a1 + v29);
  if ((v88 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v90 = sub_1C081F1B4(v89);

    *(a1 + v29) = v90;
    v89 = v90;
  }

  v91 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  *(v89 + v91) = v190;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a1 + v29);
  if ((v92 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v94 = sub_1C081F1B4(v93);

    *(a1 + v29) = v94;
    v93 = v94;
  }

  v95 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  *(v93 + v95) = v171;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(a1 + v29);
  if ((v96 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v98 = sub_1C081F1B4(v97);

    *(a1 + v29) = v98;
    v97 = v98;
  }

  v99 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  *(v97 + v99) = v172;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(a1 + v29);
  if ((v100 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v102 = sub_1C081F1B4(v101);

    *(a1 + v29) = v102;
    v101 = v102;
  }

  v103 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  *(v101 + v103) = v173;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a1 + v29);
  if ((v104 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v106 = sub_1C081F1B4(v105);

    *(a1 + v29) = v106;
    v105 = v106;
  }

  v107 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  *(v105 + v107) = v174;
  result = v184;
  if (v184)
  {

    v108 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(a1 + v29);
    if ((v108 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v110 = sub_1C081F1B4(v109);

      *(a1 + v29) = v110;
      v109 = v110;
    }

    v111 = (v109 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
    swift_beginAccess();
    v112 = v184;
    *v111 = v163;
    v111[1] = v112;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_112;
  }

  if (HIDWORD(v36))
  {
LABEL_113:
    __break(1u);
    return result;
  }

  v113 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(a1 + v29);
  if ((v113 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v115 = sub_1C081F1B4(v114);

    *(a1 + v29) = v115;
    v114 = v115;
  }

  v116 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  *(v114 + v116) = v36;
  if (v166 != 15)
  {
    v117 = v26;
    v197[968] = v166;
    sub_1C07A468C(&v198);
    v118 = v198;
    v119 = v199;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(a1 + v29);
    if ((v120 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v122 = sub_1C081F1B4(v121);

      *(a1 + v29) = v122;
      v121 = v122;
    }

    v123 = v121 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
    swift_beginAccess();
    *v123 = v118;
    *(v123 + 8) = v119;
    v26 = v117;
    v42 = v183;
  }

  if (v42)
  {

    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *(a1 + v29);
    if ((v124 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v126 = sub_1C081F1B4(v125);

      *(a1 + v29) = v126;
      v125 = v126;
    }

    v127 = (v125 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
    swift_beginAccess();
    *v127 = v162;
    v127[1] = v42;
  }

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(a1 + v29);
  if ((v128 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v130 = sub_1C081F1B4(v129);

    *(a1 + v29) = v130;
    v129 = v130;
  }

  v131 = v167;
  v132 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  *(v129 + v132) = v188;

  v133 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *(a1 + v29);
  if ((v133 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v135 = sub_1C081F1B4(v134);

    *(a1 + v29) = v135;
    v134 = v135;
  }

  v136 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  *(v134 + v136) = v189;

  v137 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *(a1 + v29);
  if ((v137 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v139 = sub_1C081F1B4(v138);

    *(a1 + v29) = v139;
    v138 = v139;
  }

  v140 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  *(v138 + v140) = v26;

  v141 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *(a1 + v29);
  if ((v141 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v143 = sub_1C081F1B4(v142);

    *(a1 + v29) = v143;
    v142 = v143;
  }

  v144 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  *(v142 + v144) = v131;

  if (v168)
  {
    if (v169)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v146 = *(a1 + v29);
    if ((v145 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v147 = sub_1C081F1B4(v146);

      *(a1 + v29) = v147;
      v146 = v147;
    }

    v148 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
    result = swift_beginAccess();
    *(v146 + v148) = v157;
    if (v169)
    {
LABEL_88:
      if (v170)
      {
        return result;
      }

      goto LABEL_96;
    }
  }

  v149 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *(a1 + v29);
  if ((v149 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v151 = sub_1C081F1B4(v150);

    *(a1 + v29) = v151;
    v150 = v151;
  }

  v152 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  result = swift_beginAccess();
  *(v150 + v152) = v158;
  if ((v170 & 1) == 0)
  {
LABEL_96:
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v154 = *(a1 + v29);
    if ((v153 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v155 = sub_1C081F1B4(v154);

      *(a1 + v29) = v155;
      v154 = v155;
    }

    v156 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
    result = swift_beginAccess();
    *(v154 + v156) = v28;
  }

  return result;
}

void sub_1C07A46A4(uint64_t a1@<X8>)
{
  v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v3 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v65 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v83 - 8);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v50 - v15;
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = v1[2];
  v79 = *(v1 + 24);
  v78 = v1[4];
  v75 = *(v1 + 40);
  v80 = *(v1 + 41);
  v81 = v17;
  v19 = v1[7];
  v51 = v1[6];
  v76 = v19;
  v53 = *(v1 + 64);
  LODWORD(v19) = *(v1 + 66);
  v69 = *(v1 + 65);
  v70 = v19;
  v20 = *(v1 + 67);
  v68 = v1[9];
  LODWORD(v19) = *(v1 + 80);
  v71 = v20;
  v72 = v19;
  v21 = v1[12];
  v57 = v1[11];
  v59 = v21;
  v22 = v1[14];
  v60 = v1[13];
  v61 = v22;
  v63 = v1[15];
  v62 = *(v1 + 128);
  v73 = *(v1 + 129);
  v64 = v1[17];
  v74 = *(v1 + 144);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 0;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v24 = *(v12 + 56);
  v52 = *(v23 + 60);
  v67 = v11;
  v54 = v24;
  v24(a1 + v52, 1, 1, v11);
  v25 = *(v3 + 56);
  v56 = *(v23 + 64);
  v66 = v3 + 56;
  v58 = v25;
  v25(a1 + v56, 1, 1, v82);
  if (v81)
  {
    LODWORD(v16) = -1;
  }

  else
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(v16))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  *a1 = v16;
  v26 = v80;
  if (v79)
  {
    LODWORD(v18) = -1;
    v27 = v78;
    goto LABEL_9;
  }

  v27 = v78;
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  if (HIDWORD(v18))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  *(a1 + 4) = v18;
  if (v75)
  {
    LODWORD(v27) = -1;
    v29 = v76;
    v28 = v77;
    goto LABEL_13;
  }

  v29 = v76;
  v28 = v77;
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if (HIDWORD(v27))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_13:
  *(a1 + 8) = v27;
  if (v26 <= 3)
  {
    v30 = v68;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }
    }

    else if (v26)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

LABEL_27:
    v32 = v67;
    goto LABEL_28;
  }

  v30 = v68;
  if (v26 <= 5)
  {
    if (v26 == 4)
    {
      v31 = 5;
    }

    else
    {
      v31 = 6;
    }

    goto LABEL_27;
  }

  v32 = v67;
  if (v26 != 6)
  {
    goto LABEL_29;
  }

  v31 = 7;
LABEL_28:
  *(a1 + 16) = v31;
  *(a1 + 24) = 1;
LABEL_29:
  if (v29 != 1)
  {
    *v28 = 0;
    *(v28 + 1) = 0xE000000000000000;
    *(v28 + 2) = 0;
    v28[24] = 1;

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v29)
    {
      *v28 = v51;
      *(v28 + 1) = v29;
    }

    if (v53 != 12)
    {
      v84 = v53;
      sub_1C07A468C(&v85);
      v33 = v86;
      *(v28 + 2) = v85;
      v28[24] = v33;
    }

    v34 = v28;
    v35 = v55;
    sub_1C07A57D4(v34, v55, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v36 = v52;
    sub_1C05145B4(a1 + v52, &qword_1EBE17C40, &unk_1C099BB60);
    sub_1C07A57D4(v35, a1 + v36, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v54(a1 + v36, 0, 1, v32);
  }

  if (v69 != 18)
  {
    v84 = v69;
    sub_1C07A5490(&v85);
    v37 = v86;
    *(a1 + 32) = v85;
    *(a1 + 40) = v37;
  }

  v38 = v71;
  if (v70 == 2)
  {
    if (v71 == 2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(a1 + 41) = v70 & 1;
    if (v38 == 2)
    {
LABEL_39:
      v39 = *(v30 + 16);
      if (v39)
      {
        goto LABEL_40;
      }

LABEL_53:
      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_54;
    }
  }

  *(a1 + 42) = v38 & 1;
  v39 = *(v30 + 16);
  if (!v39)
  {
    goto LABEL_53;
  }

LABEL_40:
  v40 = (v30 + 33);
  v41 = MEMORY[0x1E69E7CC0];
  do
  {
    v42 = *(v40 - 1);
    v43 = *v40;
    *v8 = 0;
    *(v8 + 1) = 0;
    v8[16] = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v42 != 2)
    {
      *v8 = v42 & 1;
    }

    if (v43 != 53)
    {
      v84 = v43;
      sub_1C07A5490(&v85);
      v44 = v86;
      *(v8 + 1) = v85;
      v8[16] = v44;
    }

    sub_1C07A57D4(v8, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1C05791C4(0, v41[2] + 1, 1, v41);
    }

    v46 = v41[2];
    v45 = v41[3];
    if (v46 >= v45 >> 1)
    {
      v41 = sub_1C05791C4((v45 > 1), v46 + 1, 1, v41);
    }

    v40 += 2;
    v41[2] = v46 + 1;
    sub_1C07A57D4(v10, v41 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v46, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    --v39;
  }

  while (v39);
LABEL_54:
  *(a1 + 48) = v41;
  if (v72 == 12)
  {
    if (v73)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v84 = v72;
    sub_1C07A468C(&v85);
    v47 = v86;
    *(a1 + 56) = v85;
    *(a1 + 64) = v47;
    if (v73)
    {
LABEL_56:
      if (v74)
      {
        return;
      }

      goto LABEL_60;
    }
  }

  v85 = v57;
  v86 = v59 & 1;
  v87 = v60;
  v88 = v61 & 1;
  v89 = v63;
  v90 = v62 & 1;
  v48 = v65;
  sub_1C07A53D0(v65);
  v49 = v56;
  sub_1C05145B4(a1 + v56, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C07A57D4(v48, a1 + v49, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v58(a1 + v49, 0, 1, v82);
  if (v74)
  {
    return;
  }

LABEL_60:
  if (v64 < 0xFFFFFFFF80000000)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v64 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(a1 + 68) = v64;
}

void sub_1C07A4F14(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 11);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if (v4)
  {
    if (v5 == 53)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a1 = v3;
    if (v5 == 53)
    {
LABEL_3:
      if (v6 == 18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v12 = v5;
  sub_1C07A5490(&v10);
  v8 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  if (v6 == 18)
  {
LABEL_4:
    if (v7 == 2)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
  v12 = v6;
  sub_1C07A5490(&v10);
  v9 = v11;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  if (v7 == 2)
  {
    return;
  }

LABEL_5:
  *(a1 + 33) = v7 & 1;
}

uint64_t sub_1C07A5014@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - v7;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = *(v1 + 24);
  v16 = v1[4];
  v42 = *(v1 + 40);
  v43 = v15;
  v41 = *(v1 + 41);
  v17 = *(v1 + 43);
  v18 = v1[7];
  v33 = v1[6];
  v34 = v12;
  v39 = v18;
  LODWORD(v18) = *(v1 + 64);
  v35 = v17;
  v36 = v18;
  LODWORD(v18) = *(v1 + 66);
  v37 = *(v1 + 65);
  v38 = v18;
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v11[32] = 1;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0xE000000000000000;
  *(v11 + 28) = 0;
  v11[58] = 0;

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v19 = *(v9 + 60);
  v20 = v2;
  v21 = v2;
  v22 = *(v3 + 56);
  result = v22(&v11[v19], 1, 1, v21);
  if (v13)
  {
    *v11 = v34;
    *(v11 + 1) = v13;
  }

  if (v43)
  {
    LODWORD(v14) = -1;
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (HIDWORD(v14))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  *(v11 + 4) = v14;
  if (v42)
  {
    LODWORD(v16) = -1;
    v24 = v41;
    goto LABEL_11;
  }

  v24 = v41;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  if (!HIDWORD(v16))
  {
LABEL_11:
    *(v11 + 5) = v16;
    if (v24 != 3)
    {
      *v6 = 0;
      *(v6 + 1) = 0;
      v6[16] = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v24 != 2)
      {
        *v6 = v24 & 1;
      }

      if (v24 >> 8 != 53)
      {
        v46 = BYTE1(v24);
        sub_1C07A5490(&v44);
        v25 = v45;
        *(v6 + 1) = v44;
        v6[16] = v25;
      }

      v26 = v32;
      sub_1C07A57D4(v6, v32, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C05145B4(&v11[v19], &qword_1EBE17C38, &unk_1C0973550);
      sub_1C07A57D4(v26, &v11[v19], type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      v22(&v11[v19], 0, 1, v20);
    }

    if (v35 != 18)
    {
      v46 = v35;
      sub_1C07A5490(&v44);
      v27 = v45;
      *(v11 + 3) = v44;
      v11[32] = v27;
    }

    v28 = v39;
    if (v39)
    {
      *(v11 + 5) = v33;
      *(v11 + 6) = v28;
    }

    v29 = v37;
    v30 = v38;
    if (v36 == 2)
    {
      if (v37 == 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11[56] = v36 & 1;
      if (v29 == 2)
      {
LABEL_23:
        if (v30 == 2)
        {
LABEL_25:
          sub_1C07A57D4(v11, v40, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
        }

LABEL_24:
        v11[58] = v30 & 1;
        goto LABEL_25;
      }
    }

    v11[57] = v29 & 1;
    if (v30 == 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C07A53D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = v1[4];
  v8 = *(v1 + 40);
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if ((v4 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (HIDWORD(v3))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *a1 = v3;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(a1 + 4) = v5;
LABEL_9:
  if (v8)
  {
    return result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v7))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1C07A54A8(int a1)
{
  v18 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v7 = v6 - 8;
  v19 = *(v6 - 8);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v1;
  v11 = v1[3];
  *v9 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v7 + 32);
  v13 = *(v3 + 56);
  v17 = *(v1 + 1);
  v13(v9 + v12, 1, 1, v2);
  *v9 = v18;
  v21 = v10;
  v22 = v17;
  v23 = v11;
  sub_1C079EC90(v5);
  sub_1C05145B4(v9 + v12, &qword_1EBE16E10, &unk_1C0971270);
  sub_1C07A57D4(v5, v9 + v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v13(v9 + v12, 0, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E50, &qword_1C0970618);
  v14 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C096E0C0;
  sub_1C07A57D4(v9, v15 + v14, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  return v15;
}

uint64_t sub_1C07A570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C07A5774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C07A57D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Graph.__allocating_init()()
{
  v0 = swift_allocObject();
  Graph.init()();
  return v0;
}

uint64_t sub_1C07A5874()
{
  MEMORY[0x1C68DEA70](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C07A58AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1C07A591C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  sub_1C05715DC(a1, v3);

  swift_beginAccess();
  v4 = *(v1 + 16);

  sub_1C056CFA0(a1, v4);
}

void sub_1C07A59B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v10[0] = xmmword_1ED5D7CA8;
  v10[1] = xmmword_1ED5D7CB8;
  v11 = qword_1ED5D7CC8;

  v9 = sub_1C0514CE0(v10, a1, a2, 1, a3);

  *a4 = v4;

  swift_unownedRetain();

  a4[1] = v9;
}

void sub_1C07A5AB8(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v8[0] = xmmword_1ED5BDEE0;
  v8[1] = xmmword_1ED5BDEF0;
  v9 = qword_1ED5BDF00;

  v7 = sub_1C0514CE0(v8, a1, a2 & 1, 0, MEMORY[0x1E69E7CC0]);

  *a3 = v3;

  swift_unownedRetain();

  a3[1] = v7;
}

double sub_1C07A5BBC@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = *(a3 + 8);
  v13 = *(swift_unownedRetainStrong() + 56);

  swift_unownedRetainStrong();
  v14 = *(v12 + 56);

  *&v28 = v13;
  *(&v28 + 1) = v14;
  LODWORD(v29) = a4;
  *(&v29 + 1) = v8;
  *&v30 = v7;
  *(&v30 + 1) = v10;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  swift_beginAccess();
  v15 = *(v5 + 16);

  sub_1C0514AC4(&v28, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1C0514F9C(0, *(v15 + 2) + 1, 1, v15);
    *(v5 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1C0514F9C((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[64 * v18];
  v20 = v28;
  v21 = v29;
  v22 = v31;
  *(v19 + 4) = v30;
  *(v19 + 5) = v22;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  *(v5 + 16) = v15;
  swift_endAccess();
  v23 = v29;
  *a5 = v28;
  a5[1] = v23;
  result = *&v30;
  v25 = v31;
  a5[2] = v30;
  a5[3] = v25;
  return result;
}

void *sub_1C07A5D38()
{
  v65 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  swift_beginAccess();
  v3 = *(v0 + 32);
  swift_unownedRetainStrong();
  if (!v3)
  {
LABEL_43:
    __break(1u);
  }

  *(inited + 32) = v0;

  swift_unownedRetain();

  *(inited + 40) = v3;
  v51 = v1;
  v4 = *(inited + 16);
  do
  {
    while (1)
    {
      if (!v4)
      {
        __break(1u);
        goto LABEL_43;
      }

      v6 = *(inited + 32);
      v5 = *(inited + 40);

      swift_unownedRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *(inited + 24) >> 1)
      {
        inited = sub_1C0578380(isUniquelyReferenced_nonNull_native, v4, 1, inited);
      }

      sub_1C07A773C(inited + 32);
      v8 = *(inited + 16);
      memmove((inited + 32), (inited + 48), 16 * v8 - 16);
      *(inited + 16) = v8 - 1;
      v53 = inited;
      swift_unownedRetainStrong();
      v9 = *(v5 + 56);

      if (*(v54 + 16))
      {
        v10 = sub_1C095DFDC();
        v11 = -1 << *(v54 + 32);
        v12 = v10 & ~v11;
        if ((*(v54 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          break;
        }
      }

LABEL_14:
      swift_unownedRetainStrong();
      v14 = *(v5 + 56);

      sub_1C051DFC8(&v60, v14);
      swift_unownedRetainStrong();
      v15 = *(v5 + 112);

      v16 = *(v15 + 16);

      if (v16)
      {
        type metadata accessor for UsoValue();
        v17 = swift_allocObject();
        *(v17 + 16) = v6;
        *(v17 + 24) = v5;

        v18 = swift_unownedRetain();
        MEMORY[0x1C68DD810](v18);
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C095D9AC();
        }

        sub_1C095D9DC();
        v51 = v55;
      }

      swift_beginAccess();
      v19 = *(v6 + 16);
      v20 = *(v19 + 16);
      if (v20)
      {

        swift_beginAccess();
        v21 = v20 - 1;
        v22 = 32;
        v23 = v1;
        while (1)
        {
          v24 = *(v19 + v22 + 48);
          v26 = *(v19 + v22);
          v25 = *(v19 + v22 + 16);
          v62 = *(v19 + v22 + 32);
          v63 = v24;
          v60 = v26;
          v61 = v25;
          v27 = v26;
          swift_unownedRetainStrong();
          v28 = *(v5 + 56);
          sub_1C0514AC4(&v60, &v56);

          if (v27 == v28 && (v29 = *(v6 + 24), *(v29 + 16)) && (v30 = sub_1C0514E38(), (v31 & 1) != 0))
          {
            v32 = *(*(v29 + 56) + 8 * v30);

            swift_unownedRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1C05198E0(0, v23[2] + 1, 1, v23);
            }

            v34 = v23[2];
            v33 = v23[3];
            if (v34 >= v33 >> 1)
            {
              v23 = sub_1C05198E0((v33 > 1), v34 + 1, 1, v23);
            }

            v58 = v62;
            v59 = v63;
            v35 = v60;
            v56 = v60;
            v57 = v61;
            v23[2] = v34 + 1;
            v36 = &v23[10 * v34];
            v37 = v57;
            v38 = v59;
            *(v36 + 4) = v58;
            *(v36 + 5) = v38;
            *(v36 + 2) = v35;
            *(v36 + 3) = v37;
            v36[12] = v6;
            v36[13] = v32;
            if (!v21)
            {
LABEL_31:

              goto LABEL_33;
            }
          }

          else
          {
            sub_1C0514A70(&v60);
            if (!v21)
            {
              goto LABEL_31;
            }
          }

          --v21;
          v22 += 64;
        }
      }

      v23 = v1;
LABEL_33:
      v39 = sub_1C0519EEC(v23);

      v40 = *(v39 + 16);
      if (v40)
      {
        v52 = MEMORY[0x1E69E7CC0];
        sub_1C051DDC8(0, v40, 0);
        v41 = v52;
        v42 = v40 - 1;
        for (i = 32; ; i += 80)
        {
          v60 = *(v39 + i);
          v44 = *(v39 + i + 16);
          v45 = *(v39 + i + 32);
          v46 = *(v39 + i + 64);
          v63 = *(v39 + i + 48);
          v64 = v46;
          v61 = v44;
          v62 = v45;
          sub_1C0519E14(&v60, &v56);
          sub_1C0514A70(&v60);
          v48 = *(v52 + 16);
          v47 = *(v52 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1C051DDC8((v47 > 1), v48 + 1, 1);
          }

          v49 = v64;
          *(v52 + 16) = v48 + 1;
          *(v52 + 16 * v48 + 32) = v49;
          if (!v42)
          {
            break;
          }

          --v42;
        }

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v1 = MEMORY[0x1E69E7CC0];
        v41 = MEMORY[0x1E69E7CC0];
      }

      sub_1C05CA774(v41);

      swift_unownedRelease();
      inited = v53;
      v4 = *(v53 + 16);
      if (!v4)
      {
        goto LABEL_41;
      }
    }

    v13 = ~v11;
    while (*(*(v54 + 48) + 8 * v12) != v9)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v54 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    swift_unownedRelease();
    v4 = *(inited + 16);
  }

  while (v4);
LABEL_41:

  return v51;
}

uint64_t sub_1C07A62E0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  result = swift_unownedRetainStrong();
  if (v1)
  {

    swift_unownedRetain();

    *&v16[0] = v0;
    *(&v16[0] + 1) = v1;
    v15[0] = 0;
    v15[1] = 0;
    v17 = xmmword_1C099BB70;
    v3 = sub_1C0519A28(v16, v15, &v17);

    swift_unownedRelease();
    v4 = *(v3 + 16);
    if (v4)
    {
      *&v17 = MEMORY[0x1E69E7CC0];
      sub_1C0600CA0(0, v4, 0);
      v5 = v17;
      v6 = v4 - 1;
      for (i = 32; ; i += 80)
      {
        v8 = *(v3 + i + 16);
        v9 = *(v3 + i + 32);
        v10 = *(v3 + i + 64);
        v16[3] = *(v3 + i + 48);
        v16[4] = v10;
        v16[2] = v9;
        v16[0] = *(v3 + i);
        v16[1] = v8;
        v14 = v10;
        sub_1C0519E14(v16, v15);
        sub_1C0519E14(v16, v15);

        sub_1C0519E84(v16);
        *&v17 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C0600CA0((v11 > 1), v12 + 1, 1);
          v5 = v17;
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 40 * v12;
        *(v13 + 32) = v14;
        *(v13 + 56) = &type metadata for Node;
        *(v13 + 64) = &off_1F3F9F6A8;
        if (!v6)
        {
          break;
        }

        --v6;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Graph.deinit()
{

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1C07A64EC()
{
  sub_1C095DFEC();
  swift_beginAccess();
  sub_1C05715DC(v3, *(v0 + 24));
  swift_beginAccess();
  v1 = *(v0 + 16);

  sub_1C056CFA0(v3, v1);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6578()
{
  v1 = *v0;
  sub_1C095DFEC();
  swift_beginAccess();
  sub_1C05715DC(v4, *(v1 + 24));
  swift_beginAccess();
  v2 = *(v1 + 16);

  sub_1C056CFA0(v4, v2);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6608(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);

  sub_1C05715DC(a1, v4);

  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_1C056CFA0(a1, v5);
}

uint64_t sub_1C07A66A4(uint64_t a1)
{
  sub_1C095DFEC();
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 24);

  sub_1C05715DC(v6, v3);

  swift_beginAccess();
  v4 = *(v2 + 16);

  sub_1C056CFA0(v6, v4);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6750(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[9];
  v6 = a2[7];
  v78 = a2[8];
  v79 = v5;
  v7 = a2[9];
  v80[0] = a2[10];
  *(v80 + 9) = *(a2 + 169);
  v8 = a2[5];
  v9 = a2[3];
  v74 = a2[4];
  v75 = v8;
  v10 = a2[5];
  v11 = a2[7];
  v76 = a2[6];
  v77 = v11;
  v12 = a2[1];
  v70 = *a2;
  v71 = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v72 = a2[2];
  v73 = v13;
  v16 = *v2;
  v89 = v78;
  v90 = v7;
  v91[0] = a2[10];
  *(v91 + 9) = *(a2 + 169);
  v84 = v9;
  v85 = v74;
  v86 = v10;
  v87 = v76;
  v88 = v6;
  v81 = v15;
  v82 = v14;
  v83 = v72;
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v68);
  v17 = sub_1C095E03C();
  v18 = -1 << *(v16 + 32);
  v19 = v17 & ~v18;
  if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = (*(v16 + 48) + 192 * v19);
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      v68[0] = *v21;
      v68[1] = v24;
      v68[2] = v23;
      v68[3] = v22;
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[7];
      v68[6] = v21[6];
      v68[7] = v27;
      v68[4] = v25;
      v68[5] = v26;
      v28 = v21[8];
      v29 = v21[9];
      v30 = v21[10];
      *(v69 + 9) = *(v21 + 169);
      v68[9] = v29;
      v69[0] = v30;
      v68[8] = v28;
      v65 = v21[8];
      v66 = v21[9];
      v67[0] = v21[10];
      *(v67 + 9) = *(v21 + 169);
      v61 = v21[4];
      v62 = v21[5];
      v63 = v21[6];
      v64 = v21[7];
      v57 = *v21;
      v58 = v21[1];
      v59 = v21[2];
      v60 = v21[3];
      sub_1C0521E78(v68, v55);
      v31 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v57, &v70);
      v89 = v65;
      v90 = v66;
      v91[0] = v67[0];
      *(v91 + 9) = *(v67 + 9);
      v86 = v62;
      v87 = v63;
      v88 = v64;
      v81 = v57;
      v82 = v58;
      v83 = v59;
      v84 = v60;
      v85 = v61;
      sub_1C05755CC(&v81);
      if (v31)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v55[8] = v78;
    v55[9] = v79;
    v56[0] = v80[0];
    *(v56 + 9) = *(v80 + 9);
    v55[4] = v74;
    v55[5] = v75;
    v55[6] = v76;
    v55[7] = v77;
    v55[0] = v70;
    v55[1] = v71;
    v55[2] = v72;
    v55[3] = v73;
    sub_1C05755CC(v55);
    v39 = (*(v16 + 48) + 192 * v19);
    v40 = v39[8];
    v41 = v39[9];
    v42 = v39[10];
    *(v67 + 9) = *(v39 + 169);
    v66 = v41;
    v67[0] = v42;
    v65 = v40;
    v43 = v39[4];
    v44 = v39[5];
    v45 = v39[7];
    v63 = v39[6];
    v64 = v45;
    v61 = v43;
    v62 = v44;
    v47 = *v39;
    v46 = v39[1];
    v48 = v39[3];
    v59 = v39[2];
    v60 = v48;
    v57 = v47;
    v58 = v46;
    v49 = v39[9];
    a1[8] = v39[8];
    a1[9] = v49;
    a1[10] = v39[10];
    *(a1 + 169) = *(v39 + 169);
    v50 = v39[5];
    a1[4] = v39[4];
    a1[5] = v50;
    v51 = v39[7];
    a1[6] = v39[6];
    a1[7] = v51;
    v52 = v39[1];
    *a1 = *v39;
    a1[1] = v52;
    v53 = v39[3];
    a1[2] = v39[2];
    a1[3] = v53;
    sub_1C0521E78(&v57, &v54);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v78;
    v90 = v79;
    v91[0] = v80[0];
    *(v91 + 9) = *(v80 + 9);
    v86 = v75;
    v87 = v76;
    v88 = v77;
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v85 = v74;
    *&v57 = *v3;
    *v3 = 0x8000000000000000;
    sub_1C0521E78(&v81, v68);
    sub_1C07A6DE0(&v81, v19, isUniquelyReferenced_nonNull_native);
    *v3 = v57;
    v33 = v79;
    a1[8] = v78;
    a1[9] = v33;
    a1[10] = v80[0];
    *(a1 + 169) = *(v80 + 9);
    v34 = v75;
    a1[4] = v74;
    a1[5] = v34;
    v35 = v77;
    a1[6] = v76;
    a1[7] = v35;
    v36 = v71;
    *a1 = v70;
    a1[1] = v36;
    v37 = v73;
    result = 1;
    a1[2] = v72;
    a1[3] = v37;
  }

  return result;
}

void sub_1C07A6B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  v4 = sub_1C095DBFC();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v3 + 48) + 192 * (v11 | (v5 << 6)));
      v15 = v14[9];
      v16 = v14[7];
      v54 = v14[8];
      v55 = v15;
      v17 = v14[9];
      v56[0] = v14[10];
      *(v56 + 9) = *(v14 + 169);
      v18 = v14[5];
      v19 = v14[3];
      v50 = v14[4];
      v51 = v18;
      v20 = v14[5];
      v21 = v14[7];
      v52 = v14[6];
      v53 = v21;
      v22 = v14[1];
      v46 = *v14;
      v47 = v22;
      v23 = v14[3];
      v25 = *v14;
      v24 = v14[1];
      v48 = v14[2];
      v49 = v23;
      v43 = v54;
      v44 = v17;
      v45[0] = v14[10];
      *(v45 + 9) = *(v14 + 169);
      v39 = v50;
      v40 = v20;
      v41 = v52;
      v42 = v16;
      v35 = v25;
      v36 = v24;
      v37 = v48;
      v38 = v19;
      sub_1C095DFEC();
      UsoEntitySpan.hash(into:)(v34);
      sub_1C095E03C();
      v26 = sub_1C095DBDC();
      *(v4 + 56 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v4 + 48) + 192 * v26);
      v28 = v55;
      v27[8] = v54;
      v27[9] = v28;
      v27[10] = v56[0];
      *(v27 + 169) = *(v56 + 9);
      v29 = v51;
      v27[4] = v50;
      v27[5] = v29;
      v30 = v53;
      v27[6] = v52;
      v27[7] = v30;
      v31 = v47;
      *v27 = v46;
      v27[1] = v31;
      v32 = v49;
      v27[2] = v48;
      v27[3] = v32;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero((v3 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v33;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1C07A6DE0(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = result[9];
  v81 = result[8];
  v82 = v7;
  v83[0] = result[10];
  *(v83 + 9) = *(result + 169);
  v8 = result[5];
  v77 = result[4];
  v78 = v8;
  v9 = result[7];
  v79 = result[6];
  v80 = v9;
  v10 = result[1];
  v73 = *result;
  v74 = v10;
  v11 = result[3];
  v75 = result[2];
  v76 = v11;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C07A6B44(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1C07A7208();
      goto LABEL_12;
    }

    sub_1C07A73B8(v12 + 1);
  }

  v14 = *v3;
  v15 = result[9];
  v70 = result[8];
  v71 = v15;
  v72[0] = result[10];
  *(v72 + 9) = *(result + 169);
  v16 = result[5];
  v66 = result[4];
  v67 = v16;
  v17 = result[7];
  v68 = result[6];
  v69 = v17;
  v18 = result[1];
  v62 = *result;
  v63 = v18;
  v19 = result[3];
  v64 = result[2];
  v65 = v19;
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v60);
  v20 = sub_1C095E03C();
  v21 = -1 << *(v14 + 32);
  a2 = v20 & ~v21;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    do
    {
      v23 = (*(v14 + 48) + 192 * a2);
      v25 = v23[2];
      v24 = v23[3];
      v26 = v23[1];
      v60[0] = *v23;
      v60[1] = v26;
      v60[2] = v25;
      v60[3] = v24;
      v27 = v23[4];
      v28 = v23[5];
      v29 = v23[7];
      v60[6] = v23[6];
      v60[7] = v29;
      v60[4] = v27;
      v60[5] = v28;
      v30 = v23[8];
      v31 = v23[9];
      v32 = v23[10];
      *(v61 + 9) = *(v23 + 169);
      v60[9] = v31;
      v61[0] = v32;
      v60[8] = v30;
      v33 = v23[9];
      v57 = v23[8];
      v58 = v33;
      v59[0] = v23[10];
      *(v59 + 9) = *(v23 + 169);
      v34 = v23[5];
      v53 = v23[4];
      v54 = v34;
      v35 = v23[7];
      v55 = v23[6];
      v56 = v35;
      v36 = v23[1];
      v49 = *v23;
      v50 = v36;
      v37 = v23[3];
      v51 = v23[2];
      v52 = v37;
      sub_1C0521E78(v60, &v62);
      v38 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v49, &v73);
      v70 = v57;
      v71 = v58;
      v72[0] = v59[0];
      *(v72 + 9) = *(v59 + 9);
      v66 = v53;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v62 = v49;
      v63 = v50;
      v64 = v51;
      v65 = v52;
      sub_1C05755CC(&v62);
      if (v38)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v39 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = (*(v39 + 48) + 192 * a2);
  v41 = v80;
  v40[6] = v79;
  v40[7] = v41;
  v42 = v78;
  v40[4] = v77;
  v40[5] = v42;
  *(v40 + 169) = *(v83 + 9);
  v43 = v83[0];
  v40[9] = v82;
  v40[10] = v43;
  v40[8] = v81;
  v44 = v74;
  *v40 = v73;
  v40[1] = v44;
  v45 = v76;
  v40[2] = v75;
  v40[3] = v45;
  v46 = *(v39 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(v39 + 16) = v48;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C095DF5C();
  __break(1u);
}

void sub_1C07A70C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA98, &qword_1C099BCA8);
  v2 = *v0;
  v3 = sub_1C095DBEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C07A7208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  v2 = *v0;
  v3 = sub_1C095DBEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 192 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v29[3] = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = v18[7];
        v29[6] = v18[6];
        v29[7] = v24;
        v29[4] = v22;
        v29[5] = v23;
        v25 = v18[8];
        v26 = v18[9];
        v27 = v18[10];
        *(v30 + 9) = *(v18 + 169);
        v29[9] = v26;
        v30[0] = v27;
        v29[8] = v25;
        v29[1] = v19;
        v29[2] = v21;
        v29[0] = v20;
        memmove((*(v4 + 48) + v17), v18, 0xB9uLL);
        sub_1C0521E78(v29, &v28);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C07A73B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  v4 = sub_1C095DBFC();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v3 + 48) + 192 * (v10 | (v5 << 6)));
      v15 = *v13;
      v14 = v13[1];
      v16 = v13[3];
      v54 = v13[2];
      v55 = v16;
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[7];
      v58 = v13[6];
      v59 = v19;
      v56 = v17;
      v57 = v18;
      v20 = v13[8];
      v21 = v13[9];
      v22 = v13[10];
      *(v62 + 9) = *(v13 + 169);
      v61 = v21;
      v62[0] = v22;
      v60 = v20;
      v52 = v15;
      v53 = v14;
      v23 = v13[9];
      v49 = v13[8];
      v50 = v23;
      v51[0] = v13[10];
      *(v51 + 9) = *(v13 + 169);
      v24 = v13[5];
      v45 = v13[4];
      v46 = v24;
      v25 = v13[7];
      v47 = v13[6];
      v48 = v25;
      v26 = v13[1];
      v41 = *v13;
      v42 = v26;
      v27 = v13[3];
      v43 = v13[2];
      v44 = v27;
      sub_1C095DFEC();
      sub_1C0521E78(&v52, v39);
      UsoEntitySpan.hash(into:)(v40);
      sub_1C095E03C();
      v28 = sub_1C095DBDC();
      *(v4 + 56 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v29 = (*(v4 + 48) + 192 * v28);
      v30 = v55;
      v32 = v52;
      v31 = v53;
      v29[2] = v54;
      v29[3] = v30;
      *v29 = v32;
      v29[1] = v31;
      v33 = v59;
      v35 = v56;
      v34 = v57;
      v29[6] = v58;
      v29[7] = v33;
      v29[4] = v35;
      v29[5] = v34;
      v36 = v60;
      v37 = v61;
      v38 = v62[0];
      *(v29 + 169) = *(v62 + 9);
      v29[9] = v37;
      v29[10] = v38;
      v29[8] = v36;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {

        v2 = v1;
        goto LABEL_16;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v4;
  }
}

uint64_t _s12SiriOntology5GraphC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = *(a2 + 24);

  v6 = sub_1C0569898(v4, v5);

  if (v6)
  {
    swift_beginAccess();
    v7 = *(a1 + 16);
    swift_beginAccess();
    v8 = *(a2 + 16);

    v9 = sub_1C055A3AC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1C07A7794()
{
  result = qword_1EBE1FA10[0];
  if (!qword_1EBE1FA10[0])
  {
    type metadata accessor for Graph();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE1FA10);
  }

  return result;
}

uint64_t sub_1C07A79C4@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 6)
  {
    goto LABEL_12;
  }

  v4 = sub_1C05272F0(__dst);
  v5 = *v4;
  v6 = 4;
  if (*(*v4 + 568))
  {

    v7 = sub_1C095DD6C();

    v8 = v7 > 3;
    if (v7 <= 3)
    {
      v6 = v7;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v8 = 1;
  }

  memcpy(v14, (v5 + 16), sizeof(v14));
  memmove(__srca, (v5 + 16), 0x20AuLL);
  result = sub_1C0573598(__srca);
  if (result == 1)
  {
    v9 = 0;
    LOBYTE(v10) = 1;
    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 1280;
    return result;
  }

  memcpy(v13, __srca, 0x20AuLL);
  result = sub_1C057363C(v13);
  v10 = result != 0;
  if (result)
  {
    v9 = 0;
    if (v8 && result != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *sub_1C05272F0(v13);
    memcpy(v12, v14, 0x20AuLL);
    result = sub_1C05735AC(v12, &v11);
    if (v8 && v10)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 9) = v6;
  return result;
}

uint64_t AddressIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 AddressIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

double static AddressIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

uint64_t AddressIntentNode.radius.getter()
{
  v5 = *v0;
  v1 = *(v0 + 3);
  v6 = *(v0 + 1);
  v7 = v1;
  sub_1C07A7C70(&v3);
  if ((v4 & 0xFF00) == 0x500)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_1C07A7C70(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v3;
  v12 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A50, &unk_1C09787D0);
  inited = swift_initStaticObject();
  sub_1C05B009C(inited, __src);
  v5 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v6 = *&__src[0];
    v7 = __src[1];
    v8 = *(*(&__src[1] + 1) + 16);
    if (v8)
    {
      memcpy(v9, (*(&__src[1] + 1) + 1344 * v8 - 1312), 0x20AuLL);
      sub_1C05AFF4C(v9, __src);
      sub_1C05AFFBC(v6, v5, v7, *(&v7 + 1));
      memcpy(__dst, v9, 0x20AuLL);
      if (sub_1C0573598(__dst) != 1)
      {
        memcpy(__src, __dst, 0x20AuLL);
        sub_1C07A79C4(__src, a1);
        sub_1C05B000C(v9);
        return;
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1));
    }
  }

  *a1 = 0;
  *(a1 + 8) = 1280;
}

void AddressIntentNode.radiusUnit.getter(_BYTE *a1@<X8>)
{
  v7 = *v1;
  v3 = *(v1 + 3);
  v8 = *(v1 + 1);
  v9 = v3;
  sub_1C07A7C70(v5);
  v4 = HIBYTE(v6);
  if ((v6 & 0xFF00) == 0x500)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
}

uint64_t AddressIntentNode.centroid.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15610 != -1)
  {
    swift_once();
  }

  result = sub_1C05B06D0();
  if (v10)
  {
    v3 = v9;
    type metadata accessor for AddressOntologyNode.CentroidNode();
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C096E0D0;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
    inited = swift_initStaticObject();
    *(v5 + 56) = v6;
    *(v5 + 64) = &protocol witness table for TerminalOntologyNode<A>;
    *(v5 + 32) = inited;
    result = swift_initStaticObject();
    v8 = v11;
    *(v5 + 96) = v6;
    *(v5 + 104) = &protocol witness table for TerminalOntologyNode<A>;
    *(v5 + 72) = result;
    *(v4 + 16) = 0x64696F72746E6563;
    *(v4 + 24) = 0xE800000000000000;
    *(v4 + 32) = 0;
    *(v4 + 40) = v5;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v8 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  *(a1 + 32) = v4;
  return result;
}

double AddressIntentNode.place.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15618 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0();
  if (v7)
  {
    type metadata accessor for AddressOntologyNode.PlaceNode();
    v2 = swift_allocObject();
    if (qword_1EBE158C8 != -1)
    {
      v5 = v2;
      swift_once();
      v2 = v5;
    }

    v3 = qword_1EBE1FAB0;
    *(v2 + 16) = 0x6563616C70;
    *(v2 + 24) = 0xE500000000000000;
    *(v2 + 32) = 0;
    *(v2 + 40) = v3;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v2;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t AddressIntentNode.landmark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15620 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0();
  if (v6)
  {
    v2 = v5;
    type metadata accessor for AddressOntologyNode.LandmarkNode();
    swift_allocObject();
    result = _s12SiriOntology07AddressB4NodeC08LandmarkD0C4name13multicardinalAESS_Sbtcfc_0(0x6B72616D646E616CLL, 0xE800000000000000);
    v4 = v7;
  }

  else
  {
    v2 = 0;
    result = 0;
    v4 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = result;
  return result;
}

double AddressIntentNode.streetAddress.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15628 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0();
  if (v7)
  {
    type metadata accessor for AddressOntologyNode.StreetAddressNode();
    v2 = swift_allocObject();
    if (qword_1EBE15668 != -1)
    {
      v5 = v2;
      swift_once();
      v2 = v5;
    }

    v3 = qword_1EBE19150;
    strcpy((v2 + 16), "streetAddress");
    *(v2 + 30) = -4864;
    *(v2 + 32) = 0;
    *(v2 + 40) = v3;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v2;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}