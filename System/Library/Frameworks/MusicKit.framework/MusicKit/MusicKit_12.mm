void sub_2172F9164(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v85 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256E0, &unk_21775D820);
  MEMORY[0x28223BE20](v99);
  v12 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v98 = &v85 - v14;
  sub_2172CAE0C(v15, v16, v17);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_217751DC8();
  v88 = v4;
  v20 = v4[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v86 = a4;
    v107 = v18;
    sub_217276198(0, v21, 0);
    v22 = 0;
    v96 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = v107;
    v97 = *(v20 + 16);
    v95 = a1;
    v90 = a2;
    v94 = v9;
    v92 = v20;
    v91 = v21;
    v93 = v12;
    while (v97 != v22)
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_44;
      }

      v24 = v98;
      v23 = v99;
      v25 = *(v99 + 48);
      sub_21726A630(v96 + *(v9 + 72) * v22, &v98[v25], &qword_27CB24A28, &qword_217758FE0);
      *v12 = v22;
      v26 = v12 + *(v23 + 48);
      sub_21726A594(&v24[v25], v26, &qword_27CB24A28, &qword_217758FE0);
      v106 = 0;
      v27 = CloudPlaylistEntry.id.getter();
      v29 = v19[2];
      v100 = v18;
      if (v29 && (v30 = sub_21763246C(v27, v28), (v31 & 1) != 0))
      {
        v32 = *(v19[7] + 8 * v30);

        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_47;
        }

        v106 = v32 + 1;
        v34 = CloudPlaylistEntry.id.getter();
        v36 = v35;
        swift_isUniquelyReferenced_nonNull_native();
        *v101 = v19;
        v37 = sub_21763246C(v34, v36);
        if (__OFADD__(v19[2], (v38 & 1) == 0))
        {
          goto LABEL_48;
        }

        v39 = v37;
        v40 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (sub_217752CB8())
        {
          v41 = sub_21763246C(v34, v36);
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_50;
          }

          v39 = v41;
        }

        v19 = *v101;
        if (v40)
        {
          *(*(*v101 + 56) + 8 * v39) = v33;
        }

        else
        {
          *(*v101 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v73 = (v19[6] + 16 * v39);
          *v73 = v34;
          v73[1] = v36;
          *(v19[7] + 8 * v39) = v33;
          v74 = v19[2];
          v54 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v54)
          {
            goto LABEL_49;
          }

          v19[2] = v75;
        }
      }

      else
      {

        v43 = CloudPlaylistEntry.id.getter();
        v45 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *v101 = v19;
        v46 = sub_21763246C(v43, v45);
        if (__OFADD__(v19[2], (v47 & 1) == 0))
        {
          goto LABEL_45;
        }

        v48 = v46;
        v49 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (sub_217752CB8())
        {
          v50 = sub_21763246C(v43, v45);
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_50;
          }

          v48 = v50;
        }

        v19 = *v101;
        if (v49)
        {
          *(*(*v101 + 56) + 8 * v48) = 0;
        }

        else
        {
          *(*v101 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v52 = (v19[6] + 16 * v48);
          *v52 = v43;
          v52[1] = v45;
          *(v19[7] + 8 * v48) = 0;
          v53 = v19[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_46;
          }

          v19[2] = v55;
        }

        v33 = 0;
      }

      v56 = v90;
      v57 = CloudPlaylistEntry.id.getter();
      v59 = v58;
      *v101 = 95;
      *&v101[8] = 0xE100000000000000;
      *&v103 = v33;
      v60 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v60);

      v61 = *v101;
      *v101 = v57;
      *&v101[8] = v59;
      sub_217751DE8();
      MEMORY[0x21CEA23B0](v61, *(&v61 + 1));

      v62 = *v101;
      MEMORY[0x28223BE20](v63);
      *(&v85 - 6) = v26;
      *(&v85 - 5) = v22;
      *(&v85 - 4) = &v106;
      v64 = v95;
      *(&v85 - 3) = v95;
      *(&v85 - 2) = v56;
      if (v56)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D0, &qword_21775D7E8);
        swift_allocObject();

        sub_217751DE8();
        v65 = sub_217339F28(v62, *(&v62 + 1), v56);
      }

      else
      {
        v66 = v89;
        sub_21726A630(v26, v89, &qword_27CB24A28, &qword_217758FE0);
        sub_2172CA838(v64, &v103);
        sub_217331E44(v66);
        v65 = *v101;
        v103 = *&v101[8];
        v104 = *&v101[24];
        v105 = *&v101[40];
      }

      v67 = v56 != 0;
      v102 = v56 != 0;
      *v101 = v103;
      *&v101[16] = v104;
      *&v101[32] = v105;

      v12 = v93;
      sub_2171F0738(v93, &qword_27CB256E0, &unk_21775D820);
      v18 = v100;
      v107 = v100;
      v69 = *(v100 + 16);
      v68 = *(v100 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_217276198(v68 > 1, v69 + 1, 1);
        v18 = v107;
      }

      *(v18 + 16) = v69 + 1;
      v70 = v18 + (v69 << 6);
      *(v70 + 32) = v65;
      v71 = *v101;
      v72 = *&v101[16];
      *(v70 + 72) = *&v101[32];
      *(v70 + 56) = v72;
      *(v70 + 40) = v71;
      *(v70 + 88) = v67;
      ++v22;
      v9 = v94;
      v20 = v92;
      if (v91 == v22)
      {
        a4 = v86;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
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
    sub_217753178();
    __break(1u);
  }

  else
  {
LABEL_32:
    sub_21726A630(v87, &v103, &qword_27CB24188, &dword_217758930);
    if (*(&v104 + 1))
    {
      *v101 = v103;
      *&v101[16] = v104;
      *&v101[32] = v105;
    }

    else
    {
      sub_21749A8FC();
      if (*(&v104 + 1))
      {
        sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
      }
    }

    v76 = *v88;
    v77 = v88[1];
    if (v77 == 1)
    {
      v78 = 0;
    }

    else
    {
      v78 = *v88;
    }

    if (v77 == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = v88[1];
    }

    v81 = v88[3];
    v80 = v88[4];
    v82 = v88[14];
    v83 = v88[15];
    *a4 = v18;
    *(a4 + 8) = 0;
    v84 = *&v101[16];
    *(a4 + 16) = *v101;
    *(a4 + 32) = v84;
    *(a4 + 48) = *&v101[32];
    sub_2171FB568(v76, v77);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    *(a4 + 56) = v78;
    *(a4 + 64) = v79;
    *(a4 + 72) = v81;
    *(a4 + 80) = v80;
    *(a4 + 88) = v82;
    *(a4 + 96) = v83;
  }
}

uint64_t sub_2172F9998(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v406 = v3;
  v382 = v4;
  v404 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v404);
  v381 = (&v378 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F0, &unk_21775D4E0);
  MEMORY[0x28223BE20](v6 - 8);
  v379 = &v378 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v380 = &v378 - v9;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v415 = *(v412 - 1);
  MEMORY[0x28223BE20](v412);
  v411 = &v378 - v10;
  v425 = type metadata accessor for CloudRawCurator(0);
  MEMORY[0x28223BE20](v425);
  *&v428 = &v378 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v416 = *(v414 - 1);
  MEMORY[0x28223BE20](v414);
  v413 = &v378 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v423 = *(v13 - 8);
  v424 = v13;
  MEMORY[0x28223BE20](v13);
  v426 = &v378 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v427 = &v378 - v16;
  v17 = sub_2177517D8();
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v387 = &v378 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v378 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v378 - v24;
  v405 = type metadata accessor for CloudPlaylist.Attributes(0);
  MEMORY[0x28223BE20](v405);
  v378 = &v378 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v407 = &v378 - v35;
  if (qword_280BE91E8 != -1)
  {
    goto LABEL_168;
  }

  while (2)
  {
    sub_2176CA830(qword_280C025C8, v28, v29, v30, v31, v32, v33, v34, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1));
    memcpy(v470, v469, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v470) == 1)
    {
      sub_2172E22C0(v468);
    }

    else
    {
      memcpy(v431, v470, 0x221uLL);
      Artwork.convertToCloudArtworkAttribute()(v449);
      memcpy(v459, v431, 0x221uLL);
      sub_217284084(v459);
      memcpy(v431, v449, 0x1B8uLL);
      nullsub_1();
      memcpy(v468, v431, sizeof(v468));
    }

    if (qword_280BE9390 != -1)
    {
      swift_once();
    }

    v36 = qword_280C026B0;
    v44 = sub_2172A47FC(qword_280C026B0);
    if (qword_280BE9268 != -1)
    {
      swift_once();
    }

    v45 = qword_280C02618;
    sub_2172A40F0(qword_280C02618, v37, v38, v39, v40, v41, v42, v43, v378, v379, v380, v381, v382, v383, SWORD2(v383), SBYTE6(v383), HIBYTE(v383), v384, v385, v386, v387, v388, v389, v390, v391);
    v422 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v44, v46, 0);

    v47 = sub_2172A47FC(v36);
    sub_2172A40F0(v45, v48, v49, v50, v51, v52, v53, v54, v378, v379, v380, v381, v382, v383, SWORD2(v383), SBYTE6(v383), HIBYTE(v383), v384, v385, v386, v387, v388, v389, v390, v391);
    v421 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v47, v55, 1);

    if (qword_280BE93B0 != -1)
    {
      swift_once();
    }

    v56 = sub_2172A3F14(qword_280C026C8);
    v419 = v57;
    v420 = v56;
    if (qword_280BE92A8 != -1)
    {
      swift_once();
    }

    v58 = sub_2172A3F14(qword_280C02648);
    v417 = v59;
    v418 = v58;
    if (qword_280BE9270 != -1)
    {
      swift_once();
    }

    v60 = sub_2172A3F14(qword_280C02620);
    v409 = v61;
    v410 = v60;
    v408 = sub_217751DC8();
    if (qword_280BE9298 != -1)
    {
      swift_once();
    }

    v403 = sub_2172A47E0(qword_280C02640);
    if (qword_280BE8100 != -1)
    {
      swift_once();
    }

    sub_2176CAC88(qword_280C02428, v62, v63, v64, v65, v66, v67, v68, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1));
    v464 = v459[0];
    v465 = v459[1];
    v466 = v459[2];
    v467 = v459[3];
    v69 = *(&v459[0] + 1);
    if (*(&v459[0] + 1) == 1)
    {
      v396 = 0;
      v397 = 0;
      v69 = 0;
      v398 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0uLL;
      v395 = 0;
    }

    else
    {
      v401 = v467;
      v70 = *(&v466 + 1);
      v399 = v466;
      v71 = *(&v465 + 1);
      v396 = v464;
      v397 = v465;
      sub_217751DE8();
      sub_217751DE8();
      v398 = v71;
      sub_217751DE8();
      v400 = v70;
      sub_217751DE8();
      v395 = sub_217751DC8();
      sub_2171F0738(&v464, &qword_27CB24B70, &unk_217759460);
    }

    v402 = v69;
    if (qword_280BE9238 != -1)
    {
      swift_once();
    }

    v394 = sub_2172A47C4(qword_280C025F8);
    if (qword_280BE93A0 != -1)
    {
      swift_once();
    }

    sub_2176CAC94(qword_280C026C0, v72, v73, v74, v75, v76, v77, v78, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395);
    v392 = v462;
    v393 = v461;
    v391 = v463;
    if (qword_280BE92E8 != -1)
    {
      swift_once();
    }

    sub_2172A40F0(qword_280C02670, v79, v80, v81, v82, v83, v84, v85, v378, v379, v380, v381, v382, v383, SWORD2(v383), SBYTE6(v383), HIBYTE(v383), v384, v385, v386, v387, v388, v389, v390, v391);
    HIDWORD(v390) = v86;
    LODWORD(v390) = Playlist.isChart.getter(v86, v87);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for CloudFormatter(0);
    v96 = __swift_project_value_buffer(v88, qword_280BE8918);
    if (qword_280BE92C8 != -1)
    {
      swift_once();
    }

    sub_2176CA4A8(qword_280C02658, v89, v90, v91, v92, v93, v94, v95, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
    v97 = v22;
    sub_21726A630(v25, v22, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v22, 1, v17) == 1)
    {
      sub_2171F0738(v25, &qword_27CB241C0, &qword_217759480);
      sub_2171F0738(v22, &qword_27CB241C0, &qword_217759480);
      v388 = 0;
      v389 = 0;
    }

    else
    {
      v98 = v387;
      (*(v18 + 32))(v387, v97, v17);
      v99 = *(v96 + *(v88 + 24));
      v100 = sub_2177517A8();
      v101 = [v99 stringFromDate_];

      v102 = sub_217751F48();
      v388 = v103;
      v389 = v102;

      (*(v18 + 8))(v98, v17);
      sub_2171F0738(v25, &qword_27CB241C0, &qword_217759480);
    }

    if (qword_280BE9208 != -1)
    {
      swift_once();
    }

    v104 = sub_2172A3F14(qword_280C025D0);
    if (v105)
    {
      v112 = v104;
    }

    else
    {
      v112 = 0;
    }

    v113 = 0xE000000000000000;
    if (v105)
    {
      v113 = v105;
    }

    v386 = v113;
    v387 = v112;
    if (qword_280BE9210 != -1)
    {
      swift_once();
    }

    v114 = v407 + 600;
    sub_2176CA4C8(qword_280C025D8, v105, v106, v107, v108, v109, v110, v111, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395);
    v122 = 0x6169726F74696465;
    v22 = 0;
    v123 = 0;
    switch(v460[127])
    {
      case 1:
        v124 = 0x6E7265747865;
        goto LABEL_48;
      case 2:
        v124 = 0x6E6F73726570;
LABEL_48:
        v122 = v124 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
        goto LABEL_50;
      case 3:
        v122 = 0x79616C706572;
        goto LABEL_50;
      case 4:
        v122 = 0x6168732D72657375;
        goto LABEL_50;
      case 5:
        goto LABEL_51;
      default:
LABEL_50:
        v22 = v122;
        v123 = sub_217751DE8();
LABEL_51:
        v385 = v123;
        if (qword_280BE9340 != -1)
        {
          swift_once();
        }

        sub_2176CAD44(qword_280C02688, v115, v116, v117, v118, v119, v120, v121, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1));
        if (qword_280BE9398 != -1)
        {
          swift_once();
        }

        sub_2172A40F0(qword_280C026B8, v125, v126, v127, v128, v129, v130, v131, v378, v379, v380, v381, v382, v383, SWORD2(v383), SBYTE6(v383), HIBYTE(v383), v384, v385, v386, v387, v388, v389, v390, v391);
        HIDWORD(v384) = v132;
        if (qword_280BE93C0 != -1)
        {
          swift_once();
        }

        v383 = sub_2172A47B0();
        v134 = v133;
        if (qword_280BE93D0 != -1)
        {
          swift_once();
        }

        v142 = sub_2172A4794(qword_280C026E0);
        if (qword_280BE9218 != -1)
        {
          swift_once();
        }

        v17 = v405;
        v143 = v407;
        sub_2176CA488(qword_280C025E0, v135, v136, v137, v138, v139, v140, v141, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE8128 != -1)
        {
          swift_once();
        }

        v144 = sub_2172A3F14(qword_280C02448);
        v146 = v145;
        memcpy(v143, v468, 0x1B8uLL);
        v147 = v421;
        *(v143 + 440) = v422;
        *(v143 + 448) = v147;
        v148 = v419;
        *(v143 + 456) = v420;
        *(v143 + 464) = v148;
        v149 = v417;
        *(v143 + 472) = v418;
        *(v143 + 480) = v149;
        v150 = v409;
        *(v143 + 488) = v410;
        *(v143 + 496) = v150;
        v151 = v403;
        *(v143 + 504) = v408;
        *(v143 + 512) = v151;
        *(v143 + 520) = v396;
        *(v143 + 528) = v402;
        v152 = v398;
        *(v143 + 536) = v397;
        *(v143 + 544) = v152;
        v153 = v400;
        *(v143 + 552) = v399;
        *(v143 + 560) = v153;
        v154 = *(&v401 + 1);
        *(v143 + 568) = v401;
        *(v143 + 576) = v154;
        v155 = v394;
        *(v143 + 584) = v395;
        *(v143 + 592) = v155;
        v156 = v392;
        *v114 = v393;
        *(v114 + 16) = v156;
        *(v143 + 632) = v391;
        LOBYTE(v155) = v390;
        *(v143 + 640) = BYTE4(v390);
        *(v143 + 641) = v155;
        v157 = v388;
        *(v143 + 648) = v389;
        *(v143 + 656) = v157;
        v158 = v386;
        *(v143 + 664) = v387;
        *(v143 + 672) = v158;
        *(v143 + 680) = v22;
        *(v143 + 688) = v385;
        memcpy((v143 + 696), v460, 0x78uLL);
        *(v143 + 816) = BYTE4(v384);
        *(v143 + 824) = v383;
        *(v114 + 232) = v134 & 1;
        *(v143 + 840) = v142;
        v159 = (v143 + v17[23]);
        *v159 = v144;
        v159[1] = v146;
        v459[0] = 0uLL;
        *&v459[1] = 1;
        bzero(&v459[1] + 8, 0x368uLL);
        if (qword_280BE92D0 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280C02660, v160, v161, v162, v163, v164, v165, v166, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        v25 = v427;
        if (qword_280BE91D8 != -1)
        {
          swift_once();
        }

        sub_2176CAD6C(qword_280BE91E0, v167, v168, v169, v170, v171, v172, v173, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE9230 != -1)
        {
          swift_once();
        }

        sub_2172A40F0(qword_280C025F0, v174, v175, v176, v177, v178, v179, v180, v378, v379, v380, v381, v382, v383, SWORD2(v383), SBYTE6(v383), HIBYTE(v383), v384, v385, v386, v387, v388, v389, v390, v391);
        if (v181 == 2 || (v181 & 1) != 0)
        {
          v456 = 0;
          v455 = 0u;
          memset(v454, 0, sizeof(v454));
        }

        else
        {
          if (qword_280BE91C0 != -1)
          {
            swift_once();
          }

          sub_2176CAD88(qword_280BE91C8, v182, v183, v184, v185, v186, v187, v188, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        }

        if (qword_280BE9188 != -1)
        {
          swift_once();
        }

        sub_2176CADA4(qword_280BE9190, v182, v183, v184, v185, v186, v187, v188, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE91A8 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280BE91B0, v189, v190, v191, v192, v193, v194, v195, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE91F0 != -1)
        {
          swift_once();
        }

        sub_2176CA46C(qword_280BE91F8, v196, v197, v198, v199, v200, v201, v202, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE9308 != -1)
        {
          swift_once();
        }

        sub_2176CADC0(qword_280BE9310, v203, v204, v205, v206, v207, v208, v209, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1));
        v417 = v2;
        if (!v458[11] && !v457[11] && !*(&v455 + 1) && !v452[11] && !v453[11] && !v451[11] && !v450[3])
        {
          goto LABEL_125;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25618, &qword_21775D548);
        v210 = swift_allocObject();
        v210[1] = xmmword_217759200;
        sub_21726A630(v457, v437, &qword_27CB25610, &qword_21775D540);
        v403 = v210;
        if (!v437[11])
        {
          sub_2171F0738(v437, &qword_27CB25610, &qword_21775D540);
          v210[8] = 0u;
          v210[9] = 0u;
          v210[6] = 0u;
          v210[7] = 0u;
          v210[4] = 0u;
          v210[5] = 0u;
          v210[2] = 0u;
          v210[3] = 0u;
          goto LABEL_101;
        }

        sub_2172EC940();
        v18 = *&v438[16];
        v211 = *(*&v438[16] + 16);
        v402 = *v438;
        if (v211)
        {
          *(&v401 + 1) = *&v438[8];
          sub_2171FB568(*v438, *&v438[8]);
          v443[0] = MEMORY[0x277D84F90];
          sub_217276778(0, v211, 0);
          v212 = 0;
          v408 = v18 + ((*(v416 + 80) + 32) & ~*(v416 + 80));
          v409 = v211;
          v213 = v443[0];
          v410 = v18;
          v17 = v424;
          while (v212 < *(v18 + 16))
          {
            v214 = v408 + *(v416 + 72) * v212;
            v422 = v213;
            v215 = v413;
            sub_21726A630(v214, v413, &qword_27CB24490, &qword_21775A250);
            sub_21733CAD0();
            swift_storeEnumTagMultiPayload();
            sub_21733CAD0();
            v421 = v212;
            v216 = v414[10];
            v217 = v215 + v414[9];
            v218 = *v217;
            v22 = *(v217 + 8);
            LODWORD(v418) = *(v217 + 16);
            v219 = v215 + v216;
            v220 = *(v215 + v216);
            v221 = *(v219 + 8);
            v419 = v218;
            v420 = v220;
            v222 = v414[11];
            memcpy(v431, (v215 + v222), 0x180uLL);
            v223 = *(v215 + v414[12]);
            v224 = *(v215 + v414[13]);
            v225 = *(v215 + v414[14]);
            v226 = *(v215 + v414[15]);
            v227 = v427 + v17[9];
            v228 = v420;
            *v227 = v419;
            *(v227 + 8) = v22;
            *(v227 + 16) = v418;
            v229 = v427;
            v230 = (v427 + v17[10]);
            *v230 = v228;
            v230[1] = v221;
            v231 = (v215 + v222);
            v25 = v229;
            memcpy(&v229[v17[11]], v231, 0x180uLL);
            *&v25[v17[12]] = v223;
            *&v25[v17[13]] = v224;
            *&v25[v17[14]] = v225;
            *&v25[v17[15]] = v226;
            sub_217751DE8();
            sub_217751DE8();
            sub_21726A630(v431, v449, &qword_27CB25620, &qword_21776A5F0);
            sub_217751DE8();
            sub_217751DE8();
            sub_217751DE8();
            sub_217751DE8();
            sub_21733CA78(v428, type metadata accessor for CloudRawCurator);
            v232 = v215;
            v213 = v422;
            sub_2171F0738(v232, &qword_27CB24490, &qword_21775A250);
            v443[0] = v213;
            v234 = *(v213 + 16);
            v233 = *(v213 + 24);
            if (v234 >= v233 >> 1)
            {
              sub_217276778((v233 > 1), v234 + 1, 1);
              v213 = v443[0];
            }

            v212 = v421 + 1;
            *(v213 + 16) = v234 + 1;
            sub_21726A594(v25, v213 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v234, &qword_27CB247B0, &qword_21775A1C0);
            v18 = v410;
            v2 = v417;
            if (v409 == v212)
            {
              v235 = *(&v401 + 1);
              v422 = v213;
              goto LABEL_100;
            }
          }

          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          swift_once();
          continue;
        }

        v235 = *&v438[8];
        sub_2171FB568(*v438, *&v438[8]);
        v422 = MEMORY[0x277D84F90];
LABEL_100:
        *&v427 = *&v438[24];
        v236 = *&v438[32];
        v421 = *&v438[40];
        v237 = *&v438[48];
        v25 = *&v438[56];
        v238 = *&v438[64];
        v239 = v403;
        sub_21726A630(&v438[72], v403 + 104, &qword_27CB24188, &dword_217758930);
        v240 = *&v438[112];
        v17 = *&v438[120];
        v239[4] = v402;
        v239[5] = v235;
        v241 = v427;
        v239[6] = v422;
        v239[7] = v241;
        v242 = v421;
        v239[8] = v236;
        v239[9] = v242;
        v239[10] = v237;
        v239[11] = v25;
        v239[12] = v238;
        v239[18] = v240;
        v239[19] = v17;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v438, &qword_27CB242A8, &unk_21775D570);
        sub_2171F0738(v437, &qword_27CB25638, &unk_21775EA10);
LABEL_101:
        sub_21726A630(v453, v437, &qword_27CB25608, &unk_21775D530);
        if (v437[11])
        {
          sub_2172EC7F4();
          v18 = *&v438[16];
          v243 = *(*&v438[16] + 16);
          if (v243)
          {
            v409 = *&v438[8];
            v410 = *v438;
            sub_2171FB568(*v438, *&v438[8]);
            v443[0] = MEMORY[0x277D84F90];
            sub_217276778(0, v243, 0);
            v22 = 0;
            v413 = v18 + ((*(v415 + 80) + 32) & ~*(v415 + 80));
            v414 = v243;
            v244 = v443[0];
            v2 = v426;
            v416 = v18;
            v245 = v411;
            do
            {
              if (v22 >= *(v18 + 16))
              {
                goto LABEL_167;
              }

              sub_21726A630(v413 + *(v415 + 72) * v22, v245, &qword_27CB247C0, &unk_21779AA10);
              sub_21733CAD0();
              swift_storeEnumTagMultiPayload();
              sub_21733CAD0();
              *&v427 = v22;
              v246 = v412[10];
              v247 = v245 + v412[9];
              v248 = *v247;
              v249 = *(v247 + 8);
              LODWORD(v420) = *(v247 + 16);
              v250 = v245 + v246;
              v251 = *(v245 + v246);
              v252 = *(v250 + 8);
              v421 = v249;
              v422 = v251;
              v253 = v412[11];
              memcpy(v431, (v245 + v253), 0x180uLL);
              v254 = *(v245 + v412[13]);
              v418 = *(v245 + v412[12]);
              v419 = v254;
              v17 = *(v245 + v412[14]);
              v255 = *(v245 + v412[15]);
              v256 = v244;
              v257 = v424;
              v258 = &v426[v424[9]];
              *v258 = v248;
              *(v258 + 1) = v249;
              v2 = v426;
              v258[16] = v420;
              v259 = (v2 + v257[10]);
              *v259 = v422;
              v259[1] = v252;
              memcpy(v2 + v257[11], (v245 + v253), 0x180uLL);
              v25 = v419;
              *(v2 + v257[12]) = v418;
              *(v2 + v257[13]) = v25;
              *(v2 + v257[14]) = v17;
              v260 = v257[15];
              v244 = v256;
              *(v2 + v260) = v255;
              sub_217751DE8();
              sub_217751DE8();
              sub_21726A630(v431, v449, &qword_27CB25620, &qword_21776A5F0);
              sub_217751DE8();
              sub_217751DE8();
              sub_217751DE8();
              sub_217751DE8();
              sub_21733CA78(v428, type metadata accessor for CloudRawCurator);
              sub_2171F0738(v245, &qword_27CB247C0, &unk_21779AA10);
              v443[0] = v256;
              v262 = *(v256 + 16);
              v261 = *(v256 + 24);
              if (v262 >= v261 >> 1)
              {
                sub_217276778((v261 > 1), v262 + 1, 1);
                v244 = v443[0];
              }

              v263 = (v427 + 1);
              *(v244 + 16) = v262 + 1;
              sub_21726A594(v2, v244 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v262, &qword_27CB247B0, &qword_21775A1C0);
              v18 = v416;
              v22 = v263;
            }

            while (v414 != v263);
            v265 = v409;
            v264 = v410;
            *&v428 = v244;
          }

          else
          {
            v264 = *v438;
            v265 = *&v438[8];
            sub_2171FB568(*v438, *&v438[8]);
            *&v428 = MEMORY[0x277D84F90];
          }

          v267 = *&v438[32];
          v426 = *&v438[40];
          *&v427 = *&v438[24];
          v268 = *&v438[48];
          v269 = *&v438[56];
          v270 = *&v438[64];
          v271 = v403;
          sub_21726A630(&v438[72], v403 + 232, &qword_27CB24188, &dword_217758930);
          v272 = *&v438[112];
          v273 = *&v438[120];
          v271[20] = v264;
          v271[21] = v265;
          v274 = v426;
          v275 = v427;
          v271[22] = v428;
          v271[23] = v275;
          v271[24] = v267;
          v271[25] = v274;
          v271[26] = v268;
          v271[27] = v269;
          v271[28] = v270;
          v271[34] = v272;
          v271[35] = v273;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          v266 = v271;
          sub_217751DE8();
          sub_217751DE8();
          sub_2171F0738(v438, &qword_27CB25628, &qword_21775D560);
          sub_2171F0738(v437, &qword_27CB25630, &qword_21775D568);
          v2 = v417;
        }

        else
        {
          sub_2171F0738(v437, &qword_27CB25608, &unk_21775D530);
          v266 = v403;
          *(v403 + 256) = 0u;
          v266[17] = 0u;
          v266[14] = 0u;
          v266[15] = 0u;
          v266[12] = 0u;
          v266[13] = 0u;
          v266[10] = 0u;
          v266[11] = 0u;
        }

        sub_2172CA838(v406, v449);
        sub_2172FC7F4(v266, v449, v431);
        sub_21726A630(v458, v438, &qword_27CB25330, &unk_21775E9B0);
        if (*&v438[88])
        {
          sub_2172EC1F4();
          sub_2171F0738(v438, &unk_27CB28230, &unk_21775CD50);
        }

        else
        {
          sub_2171F0738(v438, &qword_27CB25330, &unk_21775E9B0);
          memset(v449, 0, 128);
        }

        sub_21726A630(v431, v438, &qword_27CB24290, &unk_21775D550);
        sub_21726A630(v454, v443, &unk_27CB28A30, &unk_21775E9C0);
        if (v443[11])
        {
          sub_2172FCA10(v406, 0, v437);
          sub_2171F0738(v443, &unk_27CB2ACA0, &unk_217759C60);
        }

        else
        {
          sub_2171F0738(v443, &unk_27CB28A30, &unk_21775E9C0);
          memset(v437, 0, 128);
        }

        sub_21726A630(v452, v446, &qword_27CB25330, &unk_21775E9B0);
        if (*(&v446[5] + 1))
        {
          sub_2172EC1F4();
          sub_2171F0738(v446, &unk_27CB28230, &unk_21775CD50);
        }

        else
        {
          sub_2171F0738(v446, &qword_27CB25330, &unk_21775E9B0);
          memset(v443, 0, 128);
        }

        sub_21726A630(v451, v446, &unk_27CB28A60, &qword_217770B60);
        if (*(&v446[5] + 1))
        {
          sub_2172EC5D8(v406, 0, v442);
          sub_2171F0738(v446, &qword_27CB240D0, &unk_21775D400);
          sub_2174CF9BC();
          sub_2171F0738(v442, &qword_27CB24248, &qword_217758670);
          sub_2171F0738(v431, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v459, &qword_27CB24358, &unk_21775D510);
        }

        else
        {
          sub_2171F0738(v431, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v459, &qword_27CB24358, &unk_21775D510);
          sub_2171F0738(v446, &unk_27CB28A60, &qword_217770B60);
          memset(v446, 0, 128);
        }

        memcpy(v459, v449, 0x80uLL);
        memcpy(&v459[16], v438, 0x80uLL);
        memcpy(&v459[24], v437, 0x80uLL);
        memcpy(&v459[32], v443, 0x80uLL);
        memcpy(&v459[48], v446, 0x80uLL);
        memset(&v459[8], 0, 128);
        memset(&v459[40], 0, 128);
LABEL_125:
        v449[0] = 0uLL;
        *&v449[1] = 1;
        bzero(&v449[1] + 8, 0x1E8uLL);
        if (qword_280BE92F8 != -1)
        {
          swift_once();
        }

        sub_2176CADCC(qword_280BE9300, v276, v277, v278, v279, v280, v281, v282, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE9370 != -1)
        {
          swift_once();
        }

        sub_2176CAD50(qword_280BE9378, v283, v284, v285, v286, v287, v288, v289, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (v448[11] | v447[11])
        {
          sub_21726A630(v448, v431, &qword_27CB25310, &unk_21775D3D0);
          if (*(&v431[5] + 1))
          {
            sub_2172EBD40();
            sub_2171F0738(v431, &qword_27CB25398, &unk_21776C4F0);
          }

          else
          {
            sub_2171F0738(v431, &qword_27CB25310, &unk_21775D3D0);
            memset(v430, 0, sizeof(v430));
          }

          sub_21726A630(v447, v431, &qword_27CB25330, &unk_21775E9B0);
          if (*(&v431[5] + 1))
          {
            sub_2172EC1F4();
            sub_2171F0738(v449, &qword_27CB24350, &unk_21776A5D0);
            sub_2171F0738(v431, &unk_27CB28230, &unk_21775CD50);
          }

          else
          {
            sub_2171F0738(v449, &qword_27CB24350, &unk_21776A5D0);
            sub_2171F0738(v431, &qword_27CB25330, &unk_21775E9B0);
            memset(v429, 0, sizeof(v429));
          }

          bzero(v449, 0x100uLL);
          memcpy(&v449[16], v430, 0x80uLL);
          memcpy(&v449[24], v429, 0x80uLL);
        }

        v446[0] = 0uLL;
        *&v446[1] = 1;
        bzero(&v446[1] + 8, 0xE8uLL);
        if (qword_280BE9290 != -1)
        {
          swift_once();
        }

        sub_2176CADE8(qword_280C02638, v290, v291, v292, v293, v294, v295, v296, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (qword_280BE80B0 != -1)
        {
          swift_once();
        }

        sub_2176CA46C(qword_280C023F8, v297, v298, v299, v300, v301, v302, v303, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395, v396, v397);
        if (v445[2] | v444[11])
        {
          sub_21726A630(v445, v438, &qword_27CB24230, &unk_21775E9D0);
          sub_21726A630(v444, v431, &unk_27CB28A60, &qword_217770B60);
          if (*(&v431[5] + 1))
          {
            sub_2172EC5D8(v406, 0, v437);
            sub_2171F0738(v446, &qword_27CB243A0, &qword_2177586A8);
            sub_2171F0738(v431, &qword_27CB240D0, &unk_21775D400);
          }

          else
          {
            sub_2171F0738(v446, &qword_27CB243A0, &qword_2177586A8);
            sub_2171F0738(v431, &unk_27CB28A60, &qword_217770B60);
            memset(v437, 0, 128);
          }

          memcpy(v431, v438, 0x80uLL);
          memcpy(&v431[8], v437, 0x80uLL);
          memcpy(v446, v431, sizeof(v446));
        }

        memset(v443, 0, 48);
        v443[6] = 1;
        bzero(&v443[7], 0x108uLL);
        if (qword_280BE8108 != -1)
        {
          swift_once();
        }

        sub_2176CAE04(qword_280C02430, v304, v305, v306, v307, v308, v309, v310, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, *(&v392 + 1), v393, *(&v393 + 1), v394, v395);
        v427 = v431[1];
        v428 = v431[0];
        if (qword_280BE9260 != -1)
        {
          swift_once();
        }

        v311 = sub_2172A3F14(qword_280C02610);
        v313 = v312;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
        swift_allocObject();
        v314 = sub_2172E3DC4();
        v315 = sub_2172A46BC(v314);

        sub_21726A630(v446, v442, &qword_27CB243A0, &qword_2177586A8);
        if (*(&v428 + 1) != 1 || v313 || v315 || v442[2] != 1)
        {
          if (v313)
          {
            v316 = sub_217751DC8();
            sub_2171F0738(v443, &qword_27CB24348, &unk_21775D520);
          }

          else
          {
            sub_2171F0738(v443, &qword_27CB24348, &unk_21775D520);
            v311 = 0;
            v316 = 0;
          }

          sub_21726A630(v442, &v431[4], &qword_27CB243A0, &qword_2177586A8);
          v431[0] = v428;
          v431[1] = v427;
          *&v431[2] = v311;
          *(&v431[2] + 1) = v313;
          *&v431[3] = v316;
          *(&v431[3] + 1) = v315;
          memcpy(v443, v431, 0x140uLL);
        }

        sub_2172757C0(v2, v431);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F8, &qword_21775D500);
        if (swift_dynamicCast())
        {
          sub_2171F3F0C(v438, v439);
          v317 = v440;
          v318 = v441;
          __swift_project_boxed_opaque_existential_1(v439, v440);
          v319 = v407;
          v320 = v379;
          sub_21733CAD0();
          v321 = v405;
          __swift_storeEnumTagSinglePayload(v320, 0, 1, v405);
          v322 = *(v318 + 24);
          v323 = sub_21733CDD0(&qword_280BE4478, type metadata accessor for CloudPlaylist, &protocol conformance descriptor for CloudPlaylist);
          v377 = v318;
          v324 = v380;
          v322(v320, v406, v404, v404, &type metadata for AnyMusicDataRequestConfiguration, v323, &protocol witness table for AnyMusicDataRequestConfiguration, v317, v377);
          sub_2171F0738(v320, &qword_27CB255F0, &unk_21775D4E0);
          if (__swift_getEnumTagSinglePayload(v324, 1, v321) == 1)
          {
            sub_21733CE30();
            if (__swift_getEnumTagSinglePayload(v324, 1, v321) != 1)
            {
              sub_2171F0738(v324, &qword_27CB255F0, &unk_21775D4E0);
            }
          }

          else
          {
            sub_21733CA78(v319, type metadata accessor for CloudPlaylist.Attributes);
            sub_21733CE30();
          }

          sub_21733CE30();
          v326 = v440;
          v327 = v441;
          __swift_project_boxed_opaque_existential_1(v439, v440);
          v328 = v406;
          v325 = v404;
          (*(v327 + 32))(v431, v459, v406, v404, v404, &type metadata for AnyMusicDataRequestConfiguration, v323, &protocol witness table for AnyMusicDataRequestConfiguration, v326, v327);
          sub_2171F0738(v459, &qword_27CB24358, &unk_21775D510);
          memcpy(v459, v431, sizeof(v459));
          v329 = v440;
          v330 = v441;
          __swift_project_boxed_opaque_existential_1(v439, v440);
          (*(v330 + 40))(v431, v449, v328, v325, v325, &type metadata for AnyMusicDataRequestConfiguration, v323, &protocol witness table for AnyMusicDataRequestConfiguration, v329, v330);
          sub_2171F0738(v449, &qword_27CB24350, &unk_21776A5D0);
          memcpy(v449, v431, sizeof(v449));
          v331 = v440;
          v332 = v441;
          __swift_project_boxed_opaque_existential_1(v439, v440);
          (*(v332 + 48))(v431, v443, v328, v325, v325, &type metadata for AnyMusicDataRequestConfiguration, v323, &protocol witness table for AnyMusicDataRequestConfiguration, v331, v332);
          sub_2171F0738(v443, &qword_27CB24348, &unk_21775D520);
          memcpy(v443, v431, 0x140uLL);
          __swift_destroy_boxed_opaque_existential_1(v439);
          v2 = v417;
        }

        else
        {
          memset(v438, 0, 40);
          sub_2171F0738(v438, &qword_27CB25600, &qword_21775D508);
          v325 = v404;
        }

        v334 = *v2;
        v333 = v2[1];
        v335 = v381;
        sub_21733CAD0();
        sub_21726A630(v459, v335 + v325[6], &qword_27CB24358, &unk_21775D510);
        sub_21726A630(v449, v335 + v325[7], &qword_27CB24350, &unk_21776A5D0);
        sub_21726A630(v443, v335 + v325[8], &qword_27CB24348, &unk_21775D520);
        *v335 = v334;
        v335[1] = v333;
        v336 = v2[5];
        v337 = v2[6];
        __swift_project_boxed_opaque_existential_1(v2 + 2, v336);
        v338 = v2;
        v339 = *(v337 + 24);
        sub_217751DE8();
        v339(v437, v336, v337);
        nullsub_1();
        memcpy(v438, v437, 0x161uLL);
        v340 = v382;
        sub_21733CAD0();
        v341 = v338[5];
        v342 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v341);
        (*(v342 + 96))(v431, v341, v342);
        v343 = *(&v431[1] + 1);
        v344 = *&v431[2];
        __swift_project_boxed_opaque_existential_1(v431, *(&v431[1] + 1));
        (*(*(v344 + 8) + 48))(v435, v343);
        __swift_destroy_boxed_opaque_existential_1(v431);
        *&v428 = v435[0];
        *&v427 = v435[1];
        LODWORD(v426) = v436;
        v345 = v338[5];
        v346 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v345);
        (*(v346 + 96))(v431, v345, v346);
        v347 = *(&v431[1] + 1);
        v348 = *&v431[2];
        __swift_project_boxed_opaque_existential_1(v431, *(&v431[1] + 1));
        v349 = (*(*(v348 + 8) + 56))(v347);
        v424 = v350;
        v425 = v349;
        __swift_destroy_boxed_opaque_existential_1(v431);
        memcpy(v431, v438, 0x168uLL);
        *(&v431[22] + 1) = 0;
        v431[23] = 0uLL;
        nullsub_1();
        v351 = v338[5];
        v352 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v351);
        (*(v352 + 96))(v432, v351, v352);
        v353 = v433;
        v354 = v434;
        __swift_project_boxed_opaque_existential_1(v432, v433);
        v355 = (*(*(v354 + 8) + 64))(v353);
        __swift_destroy_boxed_opaque_existential_1(v432);
        v356 = v338[5];
        v357 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v356);
        (*(v357 + 96))(v432, v356, v357);
        v358 = v433;
        v359 = v434;
        __swift_project_boxed_opaque_existential_1(v432, v433);
        v360 = (*(*(v359 + 8) + 72))(v358);
        __swift_destroy_boxed_opaque_existential_1(v432);
        v361 = v338[5];
        v362 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v361);
        (*(v362 + 96))(v432, v361, v362);
        v363 = v433;
        v364 = v434;
        __swift_project_boxed_opaque_existential_1(v432, v433);
        v365 = (*(*(v364 + 8) + 80))(v363);
        __swift_destroy_boxed_opaque_existential_1(v432);
        v366 = v338[5];
        v367 = v338[6];
        __swift_project_boxed_opaque_existential_1(v338 + 2, v366);
        (*(v367 + 96))(v432, v366, v367);
        v368 = v433;
        v369 = v434;
        __swift_project_boxed_opaque_existential_1(v432, v433);
        v370 = (*(*(v369 + 8) + 88))(v368);
        sub_21733CA78(v335, type metadata accessor for CloudPlaylist);
        sub_2171F0738(v443, &qword_27CB24348, &unk_21775D520);
        sub_2171F0738(v446, &qword_27CB243A0, &qword_2177586A8);
        sub_2171F0738(v449, &qword_27CB24350, &unk_21776A5D0);
        sub_2171F0738(v459, &qword_27CB24358, &unk_21775D510);
        sub_21733CA78(v407, type metadata accessor for CloudPlaylist.Attributes);
        __swift_destroy_boxed_opaque_existential_1(v432);
        v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
        v372 = v340 + v371[9];
        v373 = v427;
        *v372 = v428;
        *(v372 + 8) = v373;
        *(v372 + 16) = v426;
        v374 = (v340 + v371[10]);
        v375 = v424;
        *v374 = v425;
        v374[1] = v375;
        memcpy((v340 + v371[11]), v431, 0x180uLL);
        *(v340 + v371[12]) = v355;
        *(v340 + v371[13]) = v360;
        *(v340 + v371[14]) = v365;
        *(v340 + v371[15]) = v370;
        sub_2171F0738(v445, &qword_27CB24230, &unk_21775E9D0);
        sub_2171F0738(v448, &qword_27CB25310, &unk_21775D3D0);
        sub_2171F0738(v458, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v442, &qword_27CB243A0, &qword_2177586A8);
        sub_2171F0738(v444, &unk_27CB28A60, &qword_217770B60);
        sub_2171F0738(v447, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v450, &qword_27CB24BA8, &unk_217772FF0);
        sub_2171F0738(v451, &unk_27CB28A60, &qword_217770B60);
        sub_2171F0738(v452, &qword_27CB25330, &unk_21775E9B0);
        sub_2171F0738(v453, &qword_27CB25608, &unk_21775D530);
        sub_2171F0738(v454, &unk_27CB28A30, &unk_21775E9C0);
        return sub_2171F0738(v457, &qword_27CB25610, &qword_21775D540);
    }
  }
}

double sub_2172FC7F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  memset(v12, 0, 128);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      sub_21726A630(v6, __src, &qword_27CB24290, &unk_21775D550);
      if (__src[2])
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_21726A630(v12, v9, &qword_27CB24290, &unk_21775D550);
        if (v9[2])
        {
          memcpy(__src, v9, sizeof(__src));
          sub_217312B20(__dst, a2, 0, sub_21749A8FC, sub_217543E28, v9);
          sub_2171F0738(__src, &qword_27CB24298, &qword_21777CD60);
          sub_2171F0738(__dst, &qword_27CB24298, &qword_21777CD60);
          sub_2171F0738(v12, &qword_27CB24290, &unk_21775D550);
          v7 = v9;
        }

        else
        {
          sub_2171F0738(v12, &qword_27CB24290, &unk_21775D550);
          sub_2171F0738(v9, &qword_27CB24290, &unk_21775D550);
          v7 = __dst;
        }

        memcpy(v12, v7, 0x80uLL);
      }

      else
      {
        sub_2171F0738(__src, &qword_27CB24290, &unk_21775D550);
      }

      v6 += 128;
      --v5;
    }

    while (v5);
  }

  sub_21733AB9C(a2);
  memcpy(__dst, v12, sizeof(__dst));
  if (__dst[2])
  {
    memcpy(a3, v12, 0x80uLL);
  }

  else
  {
    sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
    result = 0.0;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2172FCA10@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v3[7];
  v7 = v3[8];
  if (a2)
  {
    v14 = swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  else
  {
    sub_21726A630((v3 + 2), &v29, &qword_27CB24188, &dword_217758930);
    v9 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      v10 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      v11 = *(v10 + 8);
      swift_bridgeObjectRetain_n();
      v9 = v11(v9, v10);
      v13 = v12;
      v14 = sub_217283154(&v29);
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    v14 = sub_2171F0738(&v29, &qword_27CB24188, &dword_217758930);
  }

  v13 = 0;
LABEL_7:
  v15 = sub_21755833C(v14);
  MEMORY[0x28223BE20](v15);
  v28[2] = a1;
  sub_2172E4FFC(sub_21733B390, v28, v15, &qword_27CB247D8, &qword_217758D60, sub_217276758, v16, v17, v28[0], v28[1]);
  v19 = v18;

  v21 = v4[9];
  v20 = v4[10];
  if (v13)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    sub_21726A630((v4 + 2), &v29, &qword_27CB24188, &dword_217758930);
  }

  v22 = v30;
  *(a3 + 72) = v29;
  if (v7 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v7;
  }

  if (v7)
  {
    v24 = v8;
  }

  else
  {
    v24 = 0;
  }

  v26 = v4[11];
  v25 = v4[12];
  *a3 = v24;
  *(a3 + 8) = v23;
  *(a3 + 16) = v19;
  *(a3 + 24) = v21;
  *(a3 + 32) = v20;
  *(a3 + 40) = v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = v9;
  *(a3 + 64) = v13;
  *(a3 + 88) = v22;
  *(a3 + 104) = v31;
  *(a3 + 112) = v26;
  *(a3 + 120) = v25;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2172FCC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v285 = a3;
  v286 = a2;
  v287 = a4;
  v288 = a1;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  MEMORY[0x28223BE20](v273);
  v274 = v251 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v275 = v251 - v6;
  v7 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v283 = v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v269);
  v271 = v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v272 = v251 - v11;
  v12 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v12 - 8);
  v282 = v251 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  MEMORY[0x28223BE20](v266);
  v268 = v251 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v270 = v251 - v16;
  v17 = type metadata accessor for CloudRecordLabel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v281 = v251 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  MEMORY[0x28223BE20](v263);
  v265 = v251 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v267 = v251 - v21;
  v22 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v22 - 8);
  v280 = v251 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  MEMORY[0x28223BE20](v260);
  v262 = v251 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v264 = v251 - v26;
  v27 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v27 - 8);
  v279 = v251 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v258);
  v259 = v251 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v261 = v251 - v31;
  v32 = type metadata accessor for CloudMusicVideo(0);
  MEMORY[0x28223BE20](v32 - 8);
  v278 = v251 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for CloudGenre(0);
  MEMORY[0x28223BE20](v252);
  v251[1] = v251 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  MEMORY[0x28223BE20](v255);
  v256 = v251 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v257 = v251 - v37;
  v38 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v38 - 8);
  v277 = v251 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v40);
  v254 = v251 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = v251 - v43;
  v45 = type metadata accessor for CloudArtist(0);
  MEMORY[0x28223BE20](v45 - 8);
  v276 = v251 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  MEMORY[0x28223BE20](v47);
  v253 = v251 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = v251 - v50;
  v52 = type metadata accessor for CloudAlbum(0);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = v251 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  MEMORY[0x28223BE20](v55);
  v57 = (v251 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  v60 = v251 - v59;
  sub_21733CAD0();
  v284 = v60;
  sub_21733CAD0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21733CE30();
      sub_21733CAD0();
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v126 = v125[10];
      v127 = v288;
      v128 = v288 + v125[9];
      v129 = *v128;
      v283 = *(v128 + 8);
      v130 = v283;
      LODWORD(v278) = *(v128 + 16);
      v131 = *(v288 + v126 + 8);
      v281 = *(v288 + v126);
      v279 = v129;
      v280 = v131;
      v132 = v125[11];
      memcpy(v294, (v288 + v132), 0x180uLL);
      v133 = v125[13];
      v282 = *(v288 + v125[12]);
      v134 = v282;
      v135 = *(v288 + v133);
      v136 = v125[15];
      v137 = *(v288 + v125[14]);
      v138 = *(v288 + v136);
      v139 = &v44[v40[9]];
      *v139 = v279;
      *(v139 + 1) = v130;
      v139[16] = v278;
      v140 = &v44[v40[10]];
      v141 = v280;
      *v140 = v281;
      *(v140 + 1) = v141;
      memcpy(&v44[v40[11]], (v127 + v132), 0x180uLL);
      *&v44[v40[12]] = v134;
      *&v44[v40[13]] = v135;
      *&v44[v40[14]] = v137;
      *&v44[v40[15]] = v138;
      v142 = v254;
      sub_21726A630(v44, v254, &qword_27CB24728, &qword_217758CB0);
      v143 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172FEB30(v142);
      sub_21733AB9C(v143);
      sub_2171F0738(v127, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v44, &qword_27CB24728, &qword_217758CB0);
      sub_21733CA78(v276, type metadata accessor for CloudArtist);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v144 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v144;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 1;
      goto LABEL_11;
    case 2u:
      sub_21733CE30();
      v82 = v257;
      sub_21733CAD0();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v84 = v83[10];
      v85 = v288;
      v86 = v288 + v83[9];
      v87 = *v86;
      v88 = *(v86 + 8);
      LODWORD(v279) = *(v86 + 16);
      v89 = v288 + v84;
      v90 = *(v288 + v84);
      v91 = *(v89 + 8);
      v280 = v87;
      v281 = v90;
      v282 = v91;
      v283 = v88;
      v92 = v83[11];
      memcpy(v294, (v288 + v92), 0x180uLL);
      v93 = *(v288 + v83[12]);
      v94 = *(v288 + v83[13]);
      v95 = *(v288 + v83[14]);
      v278 = *(v288 + v83[15]);
      v96 = v255;
      v97 = v82 + *(v255 + 36);
      *v97 = v280;
      *(v97 + 8) = v88;
      *(v97 + 16) = v279;
      v98 = (v82 + v96[10]);
      *v98 = v281;
      v98[1] = v91;
      memcpy((v82 + v96[11]), (v85 + v92), 0x180uLL);
      *(v82 + v96[12]) = v93;
      *(v82 + v96[13]) = v94;
      *(v82 + v96[14]) = v95;
      *(v82 + v96[15]) = v278;
      v99 = v256;
      sub_21726A630(v82, v256, &qword_27CB24490, &qword_21775A250);
      v100 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217301D0C(v99);
      sub_21733AB9C(v100);
      sub_2171F0738(v85, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v82, &qword_27CB24490, &qword_21775A250);
      sub_21733CA78(v277, type metadata accessor for CloudCurator);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v101 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v101;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 2;
      goto LABEL_11;
    case 3u:
      sub_21733CE30();
      *&v294[0] = 0;
      *(&v294[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ABA30);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177ABAB0);
      goto LABEL_15;
    case 4u:
      sub_21733CE30();
      v229 = v261;
      sub_21733CAD0();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v231 = v230[10];
      v232 = v288;
      v233 = v288 + v230[9];
      v234 = *v233;
      v283 = *(v233 + 8);
      v235 = v283;
      LODWORD(v277) = *(v233 + 16);
      v236 = *(v288 + v231 + 8);
      v281 = *(v288 + v231);
      v279 = v234;
      v280 = v236;
      v237 = v230[11];
      memcpy(v294, (v288 + v237), 0x180uLL);
      v238 = v230[13];
      v282 = *(v288 + v230[12]);
      v239 = v282;
      v240 = *(v288 + v238);
      v241 = *(v288 + v230[14]);
      v242 = *(v288 + v230[15]);
      v243 = v258;
      v244 = v229 + *(v258 + 36);
      *v244 = v279;
      *(v244 + 8) = v235;
      *(v244 + 16) = v277;
      v245 = (v229 + v243[10]);
      v246 = v280;
      *v245 = v281;
      v245[1] = v246;
      memcpy((v229 + v243[11]), (v232 + v237), 0x180uLL);
      *(v229 + v243[12]) = v239;
      *(v229 + v243[13]) = v240;
      *(v229 + v243[14]) = v241;
      *(v229 + v243[15]) = v242;
      v247 = v259;
      sub_21726A630(v229, v259, &qword_27CB24808, &qword_217758D90);
      v248 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172F1160(v247);
      sub_21733AB9C(v248);
      sub_2171F0738(v232, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v229, &qword_27CB24808, &qword_217758D90);
      sub_21733CA78(v278, type metadata accessor for CloudMusicVideo);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v249 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v249;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 3;
      goto LABEL_11;
    case 5u:
      sub_21733CE30();
      v208 = v264;
      sub_21733CAD0();
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v210 = v209[10];
      v211 = v288;
      v212 = v288 + v209[9];
      v213 = *(v212 + 8);
      v278 = *v212;
      v283 = v213;
      LODWORD(v277) = *(v212 + 16);
      v214 = v288 + v210;
      v215 = *(v288 + v210);
      v280 = *(v214 + 8);
      v281 = v215;
      v216 = v209[11];
      memcpy(v294, (v288 + v216), 0x180uLL);
      v217 = v209[13];
      v282 = *(v288 + v209[12]);
      v218 = v282;
      v219 = *(v288 + v217);
      v220 = *(v288 + v209[14]);
      v221 = *(v288 + v209[15]);
      v222 = v260;
      v223 = v208 + *(v260 + 36);
      *v223 = v278;
      *(v223 + 8) = v213;
      *(v223 + 16) = v277;
      v224 = (v208 + v222[10]);
      v225 = v280;
      *v224 = v281;
      v224[1] = v225;
      memcpy((v208 + v222[11]), (v211 + v216), 0x180uLL);
      *(v208 + v222[12]) = v218;
      *(v208 + v222[13]) = v219;
      *(v208 + v222[14]) = v220;
      *(v208 + v222[15]) = v221;
      v226 = v262;
      sub_21726A630(v208, v262, &qword_27CB24790, &unk_21775A220);
      v227 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172F565C(v226);
      sub_21733AB9C(v227);
      sub_2171F0738(v211, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v208, &qword_27CB24790, &unk_21775A220);
      sub_21733CA78(v279, type metadata accessor for CloudPlaylist);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v228 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v228;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 4;
      goto LABEL_11;
    case 6u:
      sub_21733CE30();
      v145 = v267;
      sub_21733CAD0();
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v147 = v146[10];
      v148 = v288;
      v149 = v288 + v146[9];
      v150 = *v149;
      v283 = *(v149 + 8);
      v151 = v283;
      LODWORD(v277) = *(v149 + 16);
      v152 = *(v288 + v147 + 8);
      v281 = *(v288 + v147);
      v278 = v150;
      v279 = v152;
      v153 = v146[11];
      memcpy(v294, (v288 + v153), 0x180uLL);
      v154 = v146[13];
      v282 = *(v288 + v146[12]);
      v155 = v282;
      v156 = *(v288 + v154);
      v157 = *(v288 + v146[14]);
      v158 = *(v288 + v146[15]);
      v159 = v263;
      v160 = v145 + *(v263 + 36);
      *v160 = v278;
      *(v160 + 8) = v151;
      *(v160 + 16) = v277;
      v161 = (v145 + v159[10]);
      v162 = v279;
      *v161 = v281;
      v161[1] = v162;
      memcpy((v145 + v159[11]), (v148 + v153), 0x180uLL);
      *(v145 + v159[12]) = v155;
      *(v145 + v159[13]) = v156;
      *(v145 + v159[14]) = v157;
      *(v145 + v159[15]) = v158;
      v163 = v265;
      sub_21726A630(v145, v265, &qword_27CB247C0, &unk_21779AA10);
      v164 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217302770(v163);
      sub_21733AB9C(v164);
      sub_2171F0738(v148, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v145, &qword_27CB247C0, &unk_21779AA10);
      sub_21733CA78(v280, type metadata accessor for CloudRadioShow);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v165 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v165;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 5;
      goto LABEL_11;
    case 7u:
      sub_21733CE30();
      v166 = v270;
      sub_21733CAD0();
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v168 = v167[10];
      v169 = v288;
      v170 = v288 + v167[9];
      v171 = *v170;
      v283 = *(v170 + 8);
      v172 = v283;
      LODWORD(v277) = *(v170 + 16);
      v173 = *(v288 + v168 + 8);
      v280 = *(v288 + v168);
      v278 = v171;
      v279 = v173;
      v174 = v167[11];
      memcpy(v294, (v288 + v174), 0x180uLL);
      v175 = v167[13];
      v282 = *(v288 + v167[12]);
      v176 = v282;
      v177 = *(v288 + v175);
      v178 = *(v288 + v167[14]);
      v179 = *(v288 + v167[15]);
      v180 = v266;
      v181 = v166 + *(v266 + 36);
      *v181 = v278;
      *(v181 + 8) = v172;
      *(v181 + 16) = v277;
      v182 = (v166 + v180[10]);
      v183 = v279;
      *v182 = v280;
      v182[1] = v183;
      memcpy((v166 + v180[11]), (v169 + v174), 0x180uLL);
      *(v166 + v180[12]) = v176;
      *(v166 + v180[13]) = v177;
      *(v166 + v180[14]) = v178;
      *(v166 + v180[15]) = v179;
      v184 = v268;
      sub_21726A630(v166, v268, &qword_27CB24778, &unk_217758D00);
      v185 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_21730319C(v184);
      sub_21733AB9C(v185);
      sub_2171F0738(v169, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v166, &qword_27CB24778, &unk_217758D00);
      sub_21733CA78(v281, type metadata accessor for CloudRecordLabel);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v186 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v186;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 6;
      goto LABEL_11;
    case 8u:
      sub_21733CE30();
      v104 = v272;
      sub_21733CAD0();
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v106 = v105[10];
      v107 = v288;
      v108 = v288 + v105[9];
      v109 = *v108;
      v283 = *(v108 + 8);
      v110 = v283;
      LODWORD(v277) = *(v108 + 16);
      v111 = *(v288 + v106 + 8);
      v280 = *(v288 + v106);
      v278 = v109;
      v279 = v111;
      v112 = v105[11];
      memcpy(v294, (v288 + v112), 0x180uLL);
      v113 = v105[13];
      v281 = *(v288 + v105[12]);
      v114 = v281;
      v115 = *(v288 + v113);
      v116 = *(v288 + v105[14]);
      v117 = *(v288 + v105[15]);
      v118 = v269;
      v119 = v104 + *(v269 + 36);
      *v119 = v278;
      *(v119 + 8) = v110;
      *(v119 + 16) = v277;
      v120 = (v104 + v118[10]);
      v121 = v279;
      *v120 = v280;
      v120[1] = v121;
      memcpy((v104 + v118[11]), (v107 + v112), 0x180uLL);
      *(v104 + v118[12]) = v114;
      *(v104 + v118[13]) = v115;
      *(v104 + v118[14]) = v116;
      *(v104 + v118[15]) = v117;
      v122 = v271;
      sub_21726A630(v104, v271, &qword_27CB24748, &unk_217758CD0);
      v123 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217303E60(v122);
      sub_21733AB9C(v123);
      sub_2171F0738(v107, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v104, &qword_27CB24748, &unk_217758CD0);
      sub_21733CA78(v282, type metadata accessor for CloudSong);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v124 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v124;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 7;
      goto LABEL_11;
    case 9u:
      sub_21733CE30();
      v187 = v275;
      sub_21733CAD0();
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v189 = v188[10];
      v190 = v288;
      v191 = v288 + v188[9];
      v192 = *v191;
      v282 = *(v191 + 8);
      v193 = v282;
      LODWORD(v277) = *(v191 + 16);
      v194 = *(v288 + v189 + 8);
      v280 = *(v288 + v189);
      v278 = v192;
      v279 = v194;
      v195 = v188[11];
      memcpy(v294, (v288 + v195), 0x180uLL);
      v196 = v188[13];
      v281 = *(v288 + v188[12]);
      v197 = v281;
      v198 = *(v288 + v196);
      v199 = *(v288 + v188[14]);
      v200 = *(v288 + v188[15]);
      v201 = v273;
      v202 = v187 + *(v273 + 36);
      *v202 = v278;
      *(v202 + 8) = v193;
      *(v202 + 16) = v277;
      v203 = (v187 + v201[10]);
      v204 = v279;
      *v203 = v280;
      v203[1] = v204;
      memcpy((v187 + v201[11]), (v190 + v195), 0x180uLL);
      *(v187 + v201[12]) = v197;
      *(v187 + v201[13]) = v198;
      *(v187 + v201[14]) = v199;
      *(v187 + v201[15]) = v200;
      v205 = v274;
      sub_21726A630(v187, v274, &qword_27CB24738, &qword_217758CC0);
      v206 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2173078AC(v205);
      sub_21733AB9C(v206);
      sub_2171F0738(v190, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v187, &qword_27CB24738, &qword_217758CC0);
      sub_21733CA78(v283, type metadata accessor for CloudStation);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v207 = v290;
      v102 = v287;
      *v287 = v289;
      v102[1] = v207;
      v102[2] = v291;
      *(v102 + 6) = v292;
      v103 = 8;
LABEL_11:
      *(v102 + 56) = v103;
      break;
    case 0xAu:
      v250 = v57[1];
      v294[0] = *v57;
      v294[1] = v250;
      *(&v294[1] + 9) = *(v57 + 25);
      *&v289 = 0;
      *(&v289 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ABA30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25890, &unk_21775D928);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177ABA50);
LABEL_15:
      result = sub_217752D08();
      __break(1u);
      break;
    default:
      sub_21733CE30();
      sub_21733CAD0();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v62 = v61[10];
      v63 = v288;
      v64 = v288 + v61[9];
      v65 = *v64;
      v66 = *(v64 + 8);
      LODWORD(v278) = *(v64 + 16);
      v67 = *(v288 + v62 + 8);
      v281 = *(v288 + v62);
      v282 = v66;
      v279 = v65;
      v280 = v67;
      v68 = v61[11];
      memcpy(v294, (v288 + v68), 0x180uLL);
      v69 = v61[13];
      v277 = *(v288 + v61[12]);
      v70 = *(v288 + v69);
      v71 = v61[15];
      v72 = *(v288 + v61[14]);
      v283 = v72;
      v73 = *(v288 + v71);
      v74 = &v51[v47[9]];
      *v74 = v279;
      *(v74 + 1) = v66;
      v74[16] = v278;
      v75 = &v51[v47[10]];
      v76 = v280;
      *v75 = v281;
      *(v75 + 1) = v76;
      memcpy(&v51[v47[11]], (v63 + v68), 0x180uLL);
      *&v51[v47[12]] = v277;
      *&v51[v47[13]] = v70;
      *&v51[v47[14]] = v72;
      *&v51[v47[15]] = v73;
      v77 = v253;
      sub_21726A630(v51, v253, &qword_27CB247F0, &qword_21775D360);
      v78 = v286;
      sub_2172CA838(v286, v293);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v294, &v289, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172E5528(v77);
      sub_21733AB9C(v78);
      sub_2171F0738(v63, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v51, &qword_27CB247F0, &qword_21775D360);
      sub_21733CA78(v54, type metadata accessor for CloudAlbum);
      result = sub_21733CA78(v284, type metadata accessor for CatalogSearchRawResponse.TopResult);
      v80 = v290;
      v81 = v287;
      *v287 = v289;
      v81[1] = v80;
      v81[2] = v291;
      *(v81 + 6) = v292;
      *(v81 + 56) = 0;
      break;
  }

  return result;
}

uint64_t sub_2172FEB30(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v291 = v1;
  v285 = v3;
  v286 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v267 = &v252 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25670, &unk_21775D6A0);
  MEMORY[0x28223BE20](v8 - 8);
  v261 = &v252 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v10);
  v253 = (&v252 - v11);
  v292 = type metadata accessor for CloudArtist(0);
  MEMORY[0x28223BE20](v292);
  v294 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = 0;
  v13 = type metadata accessor for ArtistPropertyProvider(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  v322 = 0u;
  v323 = 0u;
  v324 = 0u;
  v325 = 0u;
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  v329 = 0;
  sub_2172DA77C();
  memcpy(v331, v310, sizeof(v331));
  v287 = v310[35];
  memcpy(v330, &v310[36], sizeof(v330));
  v16 = v10[10];
  v17 = v5 + v10[9];
  v18 = *(v17 + 8);
  v260 = *v17;
  LODWORD(v259) = *(v17 + 16);
  v19 = *(v5 + v16 + 8);
  v258 = *(v5 + v16);
  v20 = v10[13];
  v288 = *(v5 + v10[12]);
  v21 = *(v5 + v20);
  v22 = v10[15];
  v23 = *(v5 + v10[14]);
  v290 = v5;
  v24 = *(v5 + v22);
  v254 = v23;
  v255 = v24;
  sub_2172A497C(v332);
  memcpy(v15, v332, 0x221uLL);
  v25 = v13[6];
  v26 = sub_2177516D8();
  v262 = v25;
  __swift_storeEnumTagSinglePayload(&v15[v25], 1, 1, v26);
  v27 = &v15[v13[8]];
  *v27 = xmmword_2177586D0;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  v263 = v27;
  v15[v13[14]] = 2;
  memcpy(&v15[v13[15]], v332, 0x221uLL);
  v28 = v13[17];
  v264 = v26;
  v265 = v28;
  __swift_storeEnumTagSinglePayload(&v15[v28], 1, 1, v26);
  v29 = &v15[v13[18]];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v15[v13[19]];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v15[v13[20]];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v15[v13[21]];
  *v32 = 0;
  v32[8] = 1;
  v293 = v15;
  v33 = v13[22];
  v34 = sub_2177517D8();
  v35 = v293 + v33;
  v36 = v293;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v34);
  *(v36 + v13[23]) = 3;
  __swift_storeEnumTagSinglePayload(v36 + v13[24], 1, 1, v34);
  v37 = v36 + v13[25];
  *v37 = 0;
  v37[8] = 1;
  v38 = v36 + v13[26];
  *(v38 + 96) = 0;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v266 = v38;
  v39 = v36 + v13[27];
  *(v39 + 96) = 0;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v268 = v39;
  v40 = (v36 + v13[28]);
  v40[6] = 0u;
  v40[7] = 0u;
  v40[4] = 0u;
  v40[5] = 0u;
  v40[2] = 0u;
  v40[3] = 0u;
  *v40 = 0u;
  v40[1] = 0u;
  v269 = v40;
  v41 = v36 + v13[29];
  *(v41 + 96) = 0;
  *(v41 + 64) = 0u;
  *(v41 + 80) = 0u;
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v270 = v41;
  v42 = v36 + v13[30];
  *(v42 + 96) = 0;
  *(v42 + 64) = 0u;
  *(v42 + 80) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v271 = v42;
  v43 = v36 + v13[31];
  *(v43 + 96) = 0;
  *(v43 + 64) = 0u;
  *(v43 + 80) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v272 = v43;
  v44 = v36 + v13[32];
  *(v44 + 96) = 0;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v273 = v44;
  v45 = v36 + v13[33];
  *(v45 + 96) = 0;
  *(v45 + 64) = 0u;
  *(v45 + 80) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 48) = 0u;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  v274 = v45;
  v46 = v36 + v13[34];
  *(v46 + 96) = 0;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  *(v46 + 32) = 0u;
  *(v46 + 48) = 0u;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v275 = v46;
  v47 = v36 + v13[35];
  *(v47 + 96) = 0;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v276 = v47;
  v48 = v36 + v13[36];
  *(v48 + 96) = 0;
  *(v48 + 64) = 0u;
  *(v48 + 80) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  v277 = v48;
  v49 = v36 + v13[37];
  *(v49 + 96) = 0;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v278 = v49;
  v50 = v36 + v13[38];
  *(v50 + 96) = 0;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  v279 = v50;
  v51 = v36 + v13[39];
  *(v51 + 96) = 0;
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  v280 = v51;
  v52 = v36 + v13[40];
  *(v52 + 96) = 0;
  *(v52 + 64) = 0u;
  *(v52 + 80) = 0u;
  *(v52 + 32) = 0u;
  *(v52 + 48) = 0u;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  v281 = v52;
  v53 = v36 + v13[41];
  *(v53 + 96) = 0;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v282 = v53;
  v54 = v36 + v13[42];
  *(v54 + 96) = 0;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  v283 = v54;
  v289 = v13;
  v55 = v36 + v13[43];
  *(v55 + 96) = 0;
  *(v55 + 64) = 0u;
  *(v55 + 80) = 0u;
  *(v55 + 32) = 0u;
  *(v55 + 48) = 0u;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v284 = v55;
  v56 = qword_280BE3968;
  v257 = v18;
  sub_217751DE8();
  v256 = v19;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v57 = v254;
  sub_217751DE8();
  v58 = v255;
  sub_217751DE8();
  if (v56 != -1)
  {
    swift_once();
  }

  v59 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v249 = sub_217752D28();

    v59 = v249;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v60 = v289;
  *(v36 + v289[45]) = v59;
  v61 = (v36 + v60[48]);
  v62 = (v36 + v60[46]);
  memcpy(v62, v331, 0x118uLL);
  v62[35] = v287;
  memcpy(v62 + 36, v330, 0x41uLL);
  v63 = v36 + v60[47];
  v64 = v257;
  *v63 = v260;
  *(v63 + 1) = v64;
  v63[16] = v259;
  v65 = v256;
  *v61 = v258;
  v61[1] = v65;
  *(v36 + v60[49]) = v288;
  *(v36 + v60[50]) = v21;
  *(v36 + v60[51]) = v57;
  v66 = v60;
  *(v36 + v60[52]) = v58;
  v67 = v294;
  sub_21733CAD0();
  v68 = v292[6];
  sub_21726A630(v67 + v68, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    sub_2171F0738(v310, &qword_27CB24328, &unk_21775D440);
    v69 = v261;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v10);
    goto LABEL_20;
  }

  sub_21726A630(&v310[16], v319, &qword_27CB24280, &unk_21775D680);
  sub_21726A204(v310);
  v69 = v261;
  if (!v319[2])
  {
    sub_2171F0738(v319, &qword_27CB24280, &unk_21775D680);
    goto LABEL_19;
  }

  sub_217751DE8();
  sub_2171F0738(v319, &qword_27CB24288, &qword_217758F80);
  sub_2172CE7E0();

  if (__swift_getEnumTagSinglePayload(v69, 1, v10) == 1)
  {
LABEL_20:
    v81 = &qword_27CB25670;
    v82 = &unk_21775D6A0;
    goto LABEL_21;
  }

  v70 = v69;
  v69 = v253;
  sub_21726A594(v70, v253, &qword_27CB24728, &qword_217758CB0);
  v72 = *v69;
  v71 = v69[1];
  sub_217751DE8();

  v62[2] = v72;
  v62[3] = v71;
  *(v62 + 32) = 0;
  v310[1] = 0;
  v310[0] = 0;
  MEMORY[0x28223BE20](v73);
  *(&v252 - 2) = v310;
  v74 = v295;
  v75 = sub_2173DDA80();
  v295 = v74;
  if (!v75)
  {
    v76 = v62[35];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62[35] = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172B1F4C(0, *(v76 + 16) + 1, 1, v76);
      v76 = v250;
      v62[35] = v250;
    }

    v79 = *(v76 + 16);
    v78 = *(v76 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_2172B1F4C(v78 > 1, v79 + 1, 1, v76);
      v76 = v251;
    }

    *(v76 + 16) = v79 + 1;
    v80 = v76 + 16 * v79;
    *(v80 + 32) = 0;
    *(v80 + 40) = 0;
    v62[35] = v76;
  }

  v67 = v294;
  sub_21733CA78(v294, type metadata accessor for CloudArtist);
  sub_21733CAD0();
  v81 = &qword_27CB24728;
  v82 = &qword_217758CB0;
LABEL_21:
  sub_2171F0738(v69, v81, v82);
  v83 = v67 + v292[5];
  memcpy(v320, v83, sizeof(v320));
  memcpy(v321, v83, sizeof(v321));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v321) == 1)
  {
    v84 = v332;
  }

  else
  {
    memcpy(v310, v321, 0x1B8uLL);
    memcpy(v296, v320, 0x1B8uLL);
    sub_21726A630(v296, v319, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v318);
    memcpy(v297, v310, 0x1B8uLL);
    sub_2171F0738(v297, &qword_27CB243F0, &qword_21775D690);
    memcpy(v310, v318, 0x221uLL);
    nullsub_1();
    v84 = v310;
  }

  memcpy(v319, v84, 0x221uLL);
  v288 = v68;
  v85 = v66[7];
  memcpy(v318, v36, 0x221uLL);
  sub_2171F0738(v318, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v36, v319, 0x221uLL);
  v86 = *(v83 + 448);
  v36[69] = *(v83 + 440);
  v36[70] = v86;
  v87 = type metadata accessor for CloudArtist.Attributes(0);
  v88 = v87[6];
  sub_217751DE8();
  v261 = v88;
  sub_21733B95C(&v88[v83], v36 + v262, &unk_27CB277C0, &qword_217758DC0);
  *(v36 + v85) = *(v83 + v87[7]);
  v89 = (v83 + v87[8]);
  v90 = v89[8];
  v287 = v83;
  if (v90)
  {
    v91 = v89[7];
    v262 = v89[6];
    v92 = v89[4];
    v93 = v89[5];
    v94 = v89[3];
    v258 = v89[2];
    v259 = v92;
    v95 = v89[1];
    v257 = *v89;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v260 = v93;
    sub_217751DE8();
  }

  else
  {
    v257 = 0;
    v258 = 0;
    v94 = 0;
    v259 = 0;
    v260 = 0;
    v262 = 0;
    v91 = 0;
    v95 = 1;
  }

  v96 = v66[9];
  v97 = v66[10];
  v98 = v66[12];
  v255 = v66[11];
  v256 = v98;
  v99 = v263;
  v100 = *(v263 + 1);
  v317[0] = *v263;
  v317[1] = v100;
  v101 = *(v263 + 3);
  v317[2] = *(v263 + 2);
  v317[3] = v101;
  sub_217751DE8();
  sub_2171F0738(v317, &qword_27CB24B70, &unk_217759460);
  v102 = v258;
  *v99 = v257;
  *(v99 + 1) = v95;
  *(v99 + 2) = v102;
  *(v99 + 3) = v94;
  v103 = v260;
  *(v99 + 4) = v259;
  *(v99 + 5) = v103;
  *(v99 + 6) = v262;
  *(v99 + 7) = v91;
  v104 = v287;
  v105 = v293;
  *(v293 + v96) = *(v287 + v87[9]);
  *(v105 + v97) = *(v104 + v87[10]);
  v106 = v256;
  *(v105 + v255) = *(v104 + v87[11]);
  *(v105 + v106) = *(v104 + v87[12]);
  v107 = v267;
  sub_21726A630(&v261[v104], v267, &unk_27CB277C0, &qword_217758DC0);
  LOBYTE(v96) = __swift_getEnumTagSinglePayload(v107, 1, v264) != 1;
  v108 = v66[13];
  v109 = (v105 + v66[16]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v107, &unk_27CB277C0, &qword_217758DC0);
  *(v105 + v108) = v96;
  v110 = (v104 + v87[13]);
  v111 = v110[1];
  *v109 = *v110;
  v109[1] = v111;
  v112 = v87[14];
  sub_217751DE8();
  sub_21733B95C(v104 + v112, v105 + v265, &unk_27CB277C0, &qword_217758DC0);
  v113 = v294;
  v114 = v288;
  sub_21726A630(v294 + v288, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    sub_2171F0738(v310, &qword_27CB24328, &unk_21775D440);
    v115 = v286;
    v116 = v291;
  }

  else
  {
    sub_21726A630(v310, v297, &qword_27CB24270, &unk_21775D640);
    sub_21726A204(v310);
    v115 = v286;
    v116 = v291;
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_33;
    }

    sub_2171F0738(v297, &qword_27CB24270, &unk_21775D640);
  }

  memset(v296, 0, 104);
LABEL_33:
  sub_21733BBDC(v296, v266, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    v117 = &qword_27CB24328;
    v118 = &unk_21775D440;
    v119 = v310;
LABEL_39:
    sub_2171F0738(v119, v117, v118);
    memset(v296, 0, 104);
    goto LABEL_52;
  }

  sub_21726A630(&v310[16], v297, &qword_27CB24280, &unk_21775D680);
  v120 = sub_21726A204(v310);
  v121 = *&v297[1];
  if (!*&v297[1])
  {
    v117 = &qword_27CB24280;
    v118 = &unk_21775D680;
    v119 = v297;
    goto LABEL_39;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v120);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  sub_217751DE8();
  v122 = v295;
  v123 = sub_2172E4A28(sub_21733CED0, (&v252 - 4), v121, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v295 = v122;

  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v124 = *&v297[4];
    if (*&v297[4])
    {
      v125 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v125;
      *(&v296[0] + 1) = v124;
      v126 = swift_allocObject();
      v127 = v296[1];
      *(v126 + 16) = v296[0];
      *(v126 + 32) = v127;
      *(v126 + 48) = v296[2];
      *(v126 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v126;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v128 = 0;
  }

  else
  {
    v128 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v129 = 0;
  }

  else
  {
    v129 = *(&v297[0] + 1);
  }

  *&v296[0] = v123;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v128;
  *&v296[4] = v129;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB24288, &qword_217758F80);
  v116 = v291;
  v113 = v294;
LABEL_52:
  sub_21733BBDC(v296, v268, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    sub_2171F0738(v310, &qword_27CB24328, &unk_21775D440);
    memset(v297, 0, 128);
  }

  else
  {
    sub_21726A630(&v310[32], v297, &qword_27CB24330, &unk_21775D460);
    sub_21726A204(v310);
  }

  sub_21733BBDC(v297, v269, &qword_27CB24330, &unk_21775D460);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    v130 = &qword_27CB24328;
    v131 = &unk_21775D440;
    v132 = v310;
  }

  else
  {
    sub_21726A630(&v310[48], v297, &qword_27CB243B0, &unk_21775D670);
    sub_21726A204(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E9588(v115, v116, &v307, v296);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB243B8, &qword_2177586B0);
      goto LABEL_61;
    }

    v130 = &qword_27CB243B0;
    v131 = &unk_21775D670;
    v132 = v297;
  }

  sub_2171F0738(v132, v130, v131);
  memset(v296, 0, 104);
LABEL_61:
  sub_21733BBDC(v296, v270, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    v133 = &qword_27CB24328;
    v134 = &unk_21775D440;
    v135 = v310;
LABEL_67:
    sub_2171F0738(v135, v133, v134);
    memset(v296, 0, 104);
    goto LABEL_80;
  }

  sub_21726A630(&v310[64], v297, &qword_27CB242B0, &unk_21775D630);
  v136 = sub_21726A204(v310);
  if (!*&v297[1])
  {
    v133 = &qword_27CB242B0;
    v134 = &unk_21775D630;
    v135 = v297;
    goto LABEL_67;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v136);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  v137 = v295;
  v139 = sub_2172E4A28(sub_21733CEB8, (&v252 - 4), v138, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v295 = v137;
  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v140 = *&v297[4];
    if (*&v297[4])
    {
      v141 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v141;
      *(&v296[0] + 1) = v140;
      v142 = swift_allocObject();
      v143 = v296[1];
      *(v142 + 16) = v296[0];
      *(v142 + 32) = v143;
      *(v142 + 48) = v296[2];
      *(v142 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v142;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v144 = 0;
  }

  else
  {
    v144 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v145 = 0;
  }

  else
  {
    v145 = *(&v297[0] + 1);
  }

  *&v296[0] = v139;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v144;
  *&v296[4] = v145;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242B8, &unk_21777EEA0);
  v116 = v291;
  v113 = v294;
LABEL_80:
  sub_21733BBDC(v296, v271, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    v146 = &qword_27CB24328;
    v147 = &unk_21775D440;
    v148 = v310;
LABEL_86:
    sub_2171F0738(v148, v146, v147);
    memset(v296, 0, 104);
    goto LABEL_99;
  }

  sub_21726A630(v311, v297, &qword_27CB242C0, &unk_21775D650);
  v149 = sub_21726A204(v310);
  if (!*&v297[1])
  {
    v146 = &qword_27CB242C0;
    v147 = &unk_21775D650;
    v148 = v297;
    goto LABEL_86;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v149);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  v150 = v295;
  v152 = sub_2172E4A28(sub_21733CEE8, (&v252 - 4), v151, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v295 = v150;
  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v153 = *&v297[4];
    if (*&v297[4])
    {
      v154 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v154;
      *(&v296[0] + 1) = v153;
      v155 = swift_allocObject();
      v156 = v296[1];
      *(v155 + 16) = v296[0];
      *(v155 + 32) = v156;
      *(v155 + 48) = v296[2];
      *(v155 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v155;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v157 = 0;
  }

  else
  {
    v157 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v158 = 0;
  }

  else
  {
    v158 = *(&v297[0] + 1);
  }

  *&v296[0] = v152;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v157;
  *&v296[4] = v158;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242C8, &unk_217758970);
  v116 = v291;
  v113 = v294;
LABEL_99:
  sub_21733BBDC(v296, v272, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v113 + v114, v310, &qword_27CB24328, &unk_21775D440);
  if (v310[2] == 1)
  {
    v159 = &qword_27CB24328;
    v160 = &unk_21775D440;
    v161 = v310;
LABEL_105:
    sub_2171F0738(v161, v159, v160);
    memset(v296, 0, 104);
    goto LABEL_118;
  }

  sub_21726A630(v312, v297, &qword_27CB242F0, &unk_217797B80);
  v162 = sub_21726A204(v310);
  if (!*&v297[1])
  {
    v159 = &qword_27CB242F0;
    v160 = &unk_217797B80;
    v161 = v297;
    goto LABEL_105;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v162);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  v163 = v295;
  v165 = sub_2172E4A28(sub_21733B5C0, (&v252 - 4), v164, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
  v295 = v163;
  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v166 = *&v297[4];
    if (*&v297[4])
    {
      v167 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v167;
      *(&v296[0] + 1) = v166;
      v168 = swift_allocObject();
      v169 = v296[1];
      *(v168 + 16) = v296[0];
      *(v168 + 32) = v169;
      *(v168 + 48) = v296[2];
      *(v168 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v168;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v170 = 0;
  }

  else
  {
    v170 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v171 = 0;
  }

  else
  {
    v171 = *(&v297[0] + 1);
  }

  *&v296[0] = v165;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v170;
  *&v296[4] = v171;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242F8, &qword_21775D6C0);
  v116 = v291;
  v113 = v294;
LABEL_118:
  sub_21733BBDC(v296, v273, &qword_27CB255B0, &unk_217793B50);
  v172 = v292[7];
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v173 = &qword_27CB24AB0;
    v174 = &qword_217759088;
    v175 = v310;
  }

  else
  {
    sub_21726A630(v310, v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_124;
    }

    v173 = &qword_27CB24270;
    v174 = &unk_21775D640;
    v175 = v297;
  }

  sub_2171F0738(v175, v173, v174);
  memset(v296, 0, 104);
LABEL_124:
  sub_21733BBDC(v296, v274, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v176 = &qword_27CB24AB0;
    v177 = &qword_217759088;
    v178 = v310;
  }

  else
  {
    sub_21726A630(&v310[16], v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_130;
    }

    v176 = &qword_27CB24270;
    v177 = &unk_21775D640;
    v178 = v297;
  }

  sub_2171F0738(v178, v176, v177);
  memset(v296, 0, 104);
LABEL_130:
  sub_21733BBDC(v296, v275, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v179 = &qword_27CB24AB0;
    v180 = &qword_217759088;
    v181 = v310;
  }

  else
  {
    sub_21726A630(&v310[32], v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_136;
    }

    v179 = &qword_27CB24270;
    v180 = &unk_21775D640;
    v181 = v297;
  }

  sub_2171F0738(v181, v179, v180);
  memset(v296, 0, 104);
LABEL_136:
  sub_21733BBDC(v296, v276, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v182 = &qword_27CB24AB0;
    v183 = &qword_217759088;
    v184 = v310;
LABEL_142:
    sub_2171F0738(v184, v182, v183);
    memset(v296, 0, 104);
    goto LABEL_155;
  }

  sub_21726A630(&v310[48], v297, &qword_27CB242C0, &unk_21775D650);
  v185 = sub_21728463C(v310);
  if (!*&v297[1])
  {
    v182 = &qword_27CB242C0;
    v183 = &unk_21775D650;
    v184 = v297;
    goto LABEL_142;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v185);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  v186 = v295;
  v188 = sub_2172E4A28(sub_21733CEE8, (&v252 - 4), v187, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v295 = v186;
  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v189 = *&v297[4];
    if (*&v297[4])
    {
      v190 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v190;
      *(&v296[0] + 1) = v189;
      v191 = swift_allocObject();
      v192 = v296[1];
      *(v191 + 16) = v296[0];
      *(v191 + 32) = v192;
      *(v191 + 48) = v296[2];
      *(v191 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v191;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v193 = 0;
  }

  else
  {
    v193 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v194 = 0;
  }

  else
  {
    v194 = *(&v297[0] + 1);
  }

  *&v296[0] = v188;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v193;
  *&v296[4] = v194;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242C8, &unk_217758970);
  v116 = v291;
  v113 = v294;
LABEL_155:
  sub_21733BBDC(v296, v277, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v195 = &qword_27CB24AB0;
    v196 = &qword_217759088;
    v197 = v310;
  }

  else
  {
    sub_21726A630(&v310[64], v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_161;
    }

    v195 = &qword_27CB24270;
    v196 = &unk_21775D640;
    v197 = v297;
  }

  sub_2171F0738(v197, v195, v196);
  memset(v296, 0, 104);
LABEL_161:
  sub_21733BBDC(v296, v278, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v198 = &qword_27CB24AB0;
    v199 = &qword_217759088;
    v200 = v310;
  }

  else
  {
    sub_21726A630(v311, v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_167;
    }

    v198 = &qword_27CB24270;
    v199 = &unk_21775D640;
    v200 = v297;
  }

  sub_2171F0738(v200, v198, v199);
  memset(v296, 0, 104);
LABEL_167:
  sub_21733BBDC(v296, v279, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v201 = &qword_27CB24AB0;
    v202 = &qword_217759088;
    v203 = v310;
  }

  else
  {
    sub_21726A630(v312, v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_173;
    }

    v201 = &qword_27CB24270;
    v202 = &unk_21775D640;
    v203 = v297;
  }

  sub_2171F0738(v203, v201, v202);
  memset(v296, 0, 104);
LABEL_173:
  sub_21733BBDC(v296, v280, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v204 = &qword_27CB24AB0;
    v205 = &qword_217759088;
    v206 = v310;
LABEL_179:
    sub_2171F0738(v206, v204, v205);
    memset(v296, 0, 104);
    goto LABEL_192;
  }

  sub_21726A630(&v313, v297, &qword_27CB24280, &unk_21775D680);
  v207 = sub_21728463C(v310);
  v208 = *&v297[1];
  if (!*&v297[1])
  {
    v204 = &qword_27CB24280;
    v205 = &unk_21775D680;
    v206 = v297;
    goto LABEL_179;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v207);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  sub_217751DE8();
  v209 = v295;
  v210 = sub_2172E4A28(sub_21733CED0, (&v252 - 4), v208, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v295 = v209;

  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v211 = *&v297[4];
    if (*&v297[4])
    {
      v212 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v212;
      *(&v296[0] + 1) = v211;
      v213 = swift_allocObject();
      v214 = v296[1];
      *(v213 + 16) = v296[0];
      *(v213 + 32) = v214;
      *(v213 + 48) = v296[2];
      *(v213 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v213;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v215 = 0;
  }

  else
  {
    v215 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v216 = 0;
  }

  else
  {
    v216 = *(&v297[0] + 1);
  }

  *&v296[0] = v210;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v215;
  *&v296[4] = v216;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB24288, &qword_217758F80);
  v116 = v291;
  v113 = v294;
LABEL_192:
  sub_21733BBDC(v296, v281, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v217 = &qword_27CB24AB0;
    v218 = &qword_217759088;
    v219 = v310;
  }

  else
  {
    sub_21726A630(&v314, v297, &qword_27CB24270, &unk_21775D640);
    sub_21728463C(v310);
    if (*&v297[1])
    {
      v309 = 0;
      v308 = 0u;
      v307 = 0u;
      sub_2172E94A8();
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v297, &qword_27CB24278, &unk_217759070);
      goto LABEL_198;
    }

    v217 = &qword_27CB24270;
    v218 = &unk_21775D640;
    v219 = v297;
  }

  sub_2171F0738(v219, v217, v218);
  memset(v296, 0, 104);
LABEL_198:
  sub_21733BBDC(v296, v282, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v220 = &qword_27CB24AB0;
    v221 = &qword_217759088;
    v222 = v310;
LABEL_204:
    sub_2171F0738(v222, v220, v221);
    memset(v296, 0, 104);
    goto LABEL_217;
  }

  sub_21726A630(&v315, v297, &qword_27CB242B0, &unk_21775D630);
  v223 = sub_21728463C(v310);
  if (!*&v297[1])
  {
    v220 = &qword_27CB242B0;
    v221 = &unk_21775D630;
    v222 = v297;
    goto LABEL_204;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v223);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  v224 = v295;
  v226 = sub_2172E4A28(sub_21733CEB8, (&v252 - 4), v225, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v295 = v224;
  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v227 = *&v297[4];
    if (*&v297[4])
    {
      v228 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v228;
      *(&v296[0] + 1) = v227;
      v229 = swift_allocObject();
      v230 = v296[1];
      *(v229 + 16) = v296[0];
      *(v229 + 32) = v230;
      *(v229 + 48) = v296[2];
      *(v229 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v229;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v231 = 0;
  }

  else
  {
    v231 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v232 = 0;
  }

  else
  {
    v232 = *(&v297[0] + 1);
  }

  *&v296[0] = v226;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v231;
  *&v296[4] = v232;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242B8, &unk_21777EEA0);
  v116 = v291;
  v113 = v294;
LABEL_217:
  sub_21733BBDC(v296, v283, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v113 + v172, v310, &qword_27CB24AB0, &qword_217759088);
  if (v310[2] == 1)
  {
    v233 = &qword_27CB24AB0;
    v234 = &qword_217759088;
    v235 = v310;
LABEL_223:
    sub_2171F0738(v235, v233, v234);
    memset(v296, 0, 104);
    v239 = v289;
    goto LABEL_236;
  }

  sub_21726A630(&v316, v297, &qword_27CB242E0, &unk_21777EEE0);
  v236 = sub_21728463C(v310);
  v237 = *&v297[1];
  if (!*&v297[1])
  {
    v233 = &qword_27CB242E0;
    v234 = &unk_21777EEE0;
    v235 = v297;
    goto LABEL_223;
  }

  v309 = 0;
  v308 = 0u;
  v307 = 0u;
  MEMORY[0x28223BE20](v236);
  *(&v252 - 2) = v116;
  *(&v252 - 1) = v115;
  sub_217751DE8();
  v238 = sub_2172E4A28(sub_21733B5A4, (&v252 - 4), v237, sub_2172761F8, &qword_27CB24748, &unk_217758CD0);

  sub_21726A630(&v307, &v301, &qword_27CB24188, &dword_217758930);
  if (*(&v302 + 1))
  {
    sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    v304 = v301;
    v305 = v302;
    v306 = v303;
    v239 = v289;
  }

  else
  {
    v300 = 0;
    v299 = 0u;
    v298 = 0u;
    v240 = *&v297[4];
    if (*&v297[4])
    {
      v241 = *(&v297[3] + 1);
      sub_2172CA838(v115, &v296[1]);
      *&v296[0] = v241;
      *(&v296[0] + 1) = v240;
      v242 = swift_allocObject();
      v243 = v296[1];
      *(v242 + 16) = v296[0];
      *(v242 + 32) = v243;
      *(v242 + 48) = v296[2];
      *(v242 + 64) = *&v296[3];
      sub_217751DE8();
      sub_2171F0738(&v298, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
      *&v298 = v242;
      *(&v299 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v300 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v307, &qword_27CB24188, &dword_217758930);
    }

    v239 = v289;
    v304 = v298;
    v305 = v299;
    v306 = v300;
    if (*(&v302 + 1))
    {
      sub_2171F0738(&v301, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v297[0] + 1) == 1)
  {
    v244 = 0;
  }

  else
  {
    v244 = *&v297[0];
  }

  if (*(&v297[0] + 1) == 1)
  {
    v245 = 0;
  }

  else
  {
    v245 = *(&v297[0] + 1);
  }

  *&v296[0] = v238;
  BYTE8(v296[0]) = 0;
  v296[1] = v304;
  v296[2] = v305;
  *&v296[3] = v306;
  *(&v296[3] + 1) = v244;
  *&v296[4] = v245;
  *(&v296[4] + 1) = *(&v297[1] + 1);
  *&v296[5] = *&v297[2];
  *(&v296[5] + 8) = v297[7];
  sub_2171FB568(*&v297[0], *(&v297[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v297, &qword_27CB242E8, &unk_21775D6B0);
  v113 = v294;
LABEL_236:
  sub_21733BBDC(v296, v284, &qword_27CB255A8, &unk_21775D450);
  if (*(v113 + v292[8]) == 1)
  {
    v246 = 0;
  }

  else
  {
    v246 = sub_217751DE8();
  }

  v247 = v293;
  *(v293 + *(v239 + 176)) = v246;
  v310[3] = v239;
  v310[4] = &protocol witness table for ArtistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v310);
  sub_21733CAD0();
  Artist.init(propertyProvider:)(v310, v285);

  sub_2171F0738(v290, &qword_27CB24728, &qword_217758CB0);
  sub_21733AB9C(v115);
  sub_21733CA78(v113, type metadata accessor for CloudArtist);
  return sub_21733CA78(v247, type metadata accessor for ArtistPropertyProvider);
}

uint64_t sub_217301D0C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v76 = v2;
  v77 = v1;
  v79 = v3;
  v5 = v4;
  v81 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratorPropertyProvider(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0;
  sub_2172DB00C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v11 = v10[10];
  v12 = v5 + v10[9];
  v13 = *(v12 + 8);
  v78 = *v12;
  v73 = v12;
  LODWORD(v71) = *(v12 + 16);
  v14 = *(v5 + v11 + 8);
  v70 = *(v5 + v11);
  v15 = v10[13];
  v68 = *(v5 + v10[12]);
  v16 = *(v5 + v15);
  v17 = *(v5 + v10[14]);
  v18 = *(v5 + v10[15]);
  sub_2172A497C(v111);
  memcpy(v9, v111, 0x221uLL);
  *(v9 + 35) = xmmword_2177586D0;
  *(v9 + 36) = 0u;
  *(v9 + 37) = 0u;
  *(v9 + 38) = 0u;
  v9[632] = 2;
  memcpy(v9 + 640, v111, 0x221uLL);
  v19 = *(v7 + 44);
  v20 = sub_2177516D8();
  v74 = v19;
  __swift_storeEnumTagSinglePayload(&v9[v19], 1, 1, v20);
  v80 = v7;
  v21 = &v9[*(v7 + 48)];
  *(v21 + 96) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v75 = v21;
  v22 = qword_280BE7AA8;
  v72 = v13;
  sub_217751DE8();
  v69 = v14;
  v23 = v16;
  v24 = v68;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v22 != -1)
  {
    swift_once();
  }

  v25 = qword_280C023C8;
  if (qword_280C023C8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v66 = sub_217752D28();

    v25 = v66;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v26 = v80;
  *&v9[v80[14]] = v25;
  v27 = &v9[v26[17]];
  memcpy(&v9[v26[15]], v110, 0x161uLL);
  v28 = &v9[v26[16]];
  v29 = v72;
  *v28 = v78;
  *(v28 + 1) = v29;
  v28[16] = v71;
  v30 = v69;
  *v27 = v70;
  *(v27 + 1) = v30;
  *&v9[v26[18]] = v24;
  *&v9[v26[19]] = v23;
  *&v9[v26[20]] = v17;
  *&v9[v26[21]] = v18;
  v31 = v82;
  sub_21733CAD0();
  v32 = &v31[v81[5]];
  memcpy(v100, v32, sizeof(v100));
  memcpy(v101, v32, sizeof(v101));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v101) == 1)
  {
    v33 = v111;
  }

  else
  {
    memcpy(v99, v101, 0x1B8uLL);
    memcpy(v83, v100, 0x1B8uLL);
    sub_21726A630(v83, v98, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v85);
    memcpy(v84, v99, sizeof(v84));
    sub_2171F0738(v84, &qword_27CB243F0, &qword_21775D690);
    memcpy(v98, v85, 0x221uLL);
    nullsub_1();
    v33 = v98;
  }

  memcpy(v99, v33, sizeof(v99));
  v78 = v5;
  memcpy(v98, v9, 0x221uLL);
  sub_2171F0738(v98, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v9, v99, 0x221uLL);
  *(v9 + 69) = *(v32 + 55);
  if (*(v32 + 64))
  {
    v34 = *(v32 + 62);
    v35 = *(v32 + 63);
    v36 = *(v32 + 61);
    v71 = *(v32 + 60);
    v72 = v34;
    v38 = *(v32 + 58);
    v37 = *(v32 + 59);
    v40 = *(v32 + 56);
    v39 = *(v32 + 57);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v37 = 0;
    v71 = 0;
    v72 = 0;
    v36 = 0;
    v35 = 0;
    v39 = 1;
  }

  v41 = *(v9 + 36);
  v97[0] = *(v9 + 35);
  v97[1] = v41;
  v42 = *(v9 + 38);
  v97[2] = *(v9 + 37);
  v97[3] = v42;
  sub_217751DE8();
  sub_2171F0738(v97, &qword_27CB24B70, &unk_217759460);
  *(v9 + 70) = v40;
  *(v9 + 71) = v39;
  *(v9 + 72) = v38;
  *(v9 + 73) = v37;
  v43 = v72;
  *(v9 + 74) = v71;
  *(v9 + 75) = v36;
  *(v9 + 76) = v43;
  *(v9 + 77) = v35;
  *(v9 + 78) = *(v32 + 65);
  v44 = *(v73 + 8);
  v45 = *(v73 + 16);
  v85[0] = *v73;
  v85[1] = v44;
  LOBYTE(v85[2]) = v45;
  LOBYTE(v83[0]) = v32[528];
  sub_217751DE8();
  sub_217751DE8();
  sub_21763E734(v85, v83, v84);

  v9[632] = v84[0];
  v46 = *(v32 + 68);
  *(v9 + 149) = *(v32 + 67);
  *(v9 + 150) = v46;
  v47 = *(type metadata accessor for CloudCurator.Attributes(0) + 40);
  sub_217751DE8();
  sub_21733B95C(&v32[v47], &v9[v74], &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(&v82[v81[6]], v84, &qword_27CB24498, &unk_217758960);
  if (v84[2] == 1)
  {
    sub_2171F0738(v84, &qword_27CB24498, &unk_217758960);
    v49 = v78;
    v48 = v79;
LABEL_19:
    memset(v83, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v84, v85, &qword_27CB242C0, &unk_21775D650);
  v50 = sub_2172831A8(v84);
  v51 = v85[2];
  v49 = v78;
  v48 = v79;
  v52 = v77;
  if (!v85[2])
  {
    sub_2171F0738(v85, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_19;
  }

  v96 = 0;
  memset(v95, 0, sizeof(v95));
  MEMORY[0x28223BE20](v50);
  *(&v67 - 2) = v52;
  *(&v67 - 1) = v48;
  sub_217751DE8();
  v53 = sub_2172E4A28(sub_21733CEE8, (&v67 - 4), v51, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(v95, &v89, &qword_27CB24188, &dword_217758930);
  if (*(&v90 + 1))
  {
    sub_2171F0738(v95, &qword_27CB24188, &dword_217758930);
    v92 = v89;
    v93 = v90;
    v94 = v91;
  }

  else
  {
    v88 = 0;
    v87 = 0u;
    v86 = 0u;
    v54 = v85[8];
    if (v85[8])
    {
      v55 = v85[7];
      sub_2172CA838(v48, &v83[1]);
      *&v83[0] = v55;
      *(&v83[0] + 1) = v54;
      v56 = swift_allocObject();
      v57 = v83[1];
      *(v56 + 16) = v83[0];
      *(v56 + 32) = v57;
      *(v56 + 48) = v83[2];
      *(v56 + 64) = *&v83[3];
      sub_217751DE8();
      sub_2171F0738(&v86, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v95, &qword_27CB24188, &dword_217758930);
      *&v86 = v56;
      *(&v87 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v88 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v95, &qword_27CB24188, &dword_217758930);
    }

    v92 = v86;
    v93 = v87;
    v94 = v88;
    if (*(&v90 + 1))
    {
      sub_2171F0738(&v89, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v85[1] == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = v85[0];
  }

  if (v85[1] == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = v85[1];
  }

  *&v83[0] = v53;
  BYTE8(v83[0]) = 0;
  v83[1] = v92;
  v83[2] = v93;
  *&v83[3] = v94;
  *(&v83[3] + 1) = v58;
  *&v83[4] = v59;
  *(&v83[4] + 1) = v85[3];
  *&v83[5] = v85[4];
  *(&v83[5] + 1) = v85[14];
  *&v83[6] = v85[15];
  sub_2171FB568(v85[0], v85[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v85, &qword_27CB242C8, &unk_217758970);
LABEL_32:
  sub_21733BBDC(v83, v75, &qword_27CB25330, &unk_21775E9B0);
  v60 = v82;
  v61 = v81[8];
  v62 = *&v82[v61];
  if (v62 == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = *&v82[v61];
  }

  v64 = v80;
  *&v9[v80[13]] = v63;
  v85[3] = v64;
  v85[4] = &protocol witness table for CuratorPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v85);
  sub_21733CAD0();
  sub_217221020(v62);
  Curator.init(propertyProvider:)(v85, v76);

  sub_2171F0738(v49, &qword_27CB24490, &qword_21775A250);
  sub_21733CA78(v60, type metadata accessor for CloudCurator);
  sub_21733AB9C(v48);
  return sub_21733CA78(v9, type metadata accessor for CuratorPropertyProvider);
}

uint64_t sub_217302770(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v73 = v2;
  v74 = v1;
  v76 = v3;
  v5 = v4;
  v78 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v78);
  v79 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RadioShowPropertyProvider(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE61F8 != -1)
  {
    swift_once();
  }

  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0;
  sub_2172DADE8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v11 = v10[10];
  v12 = v5 + v10[9];
  v13 = *(v12 + 8);
  v75 = *v12;
  LODWORD(v69) = *(v12 + 16);
  v14 = *(v5 + v11 + 8);
  v68 = *(v5 + v11);
  v15 = v10[13];
  v66 = *(v5 + v10[12]);
  v16 = *(v5 + v15);
  v17 = *(v5 + v10[14]);
  v18 = *(v5 + v10[15]);
  sub_2172A497C(v108);
  memcpy(v9, v108, 0x221uLL);
  *(v9 + 35) = xmmword_2177586D0;
  *(v9 + 36) = 0u;
  *(v9 + 37) = 0u;
  *(v9 + 38) = 0u;
  memcpy(v9 + 648, v108, 0x221uLL);
  v19 = *(v7 + 44);
  v20 = sub_2177516D8();
  v71 = v19;
  __swift_storeEnumTagSinglePayload(&v9[v19], 1, 1, v20);
  v77 = v7;
  v21 = &v9[*(v7 + 48)];
  *(v21 + 96) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v72 = v21;
  v22 = qword_280BE3578;
  v70 = v13;
  sub_217751DE8();
  v67 = v14;
  v23 = v16;
  v24 = v66;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v22 != -1)
  {
    swift_once();
  }

  v25 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v65 = sub_217752D28();

    v25 = v65;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v26 = v77;
  *&v9[v77[14]] = v25;
  v27 = &v9[v26[17]];
  memcpy(&v9[v26[15]], v107, 0x161uLL);
  v28 = &v9[v26[16]];
  v29 = v70;
  *v28 = v75;
  *(v28 + 1) = v29;
  v28[16] = v69;
  v30 = v67;
  *v27 = v68;
  *(v27 + 1) = v30;
  *&v9[v26[18]] = v24;
  *&v9[v26[19]] = v23;
  *&v9[v26[20]] = v17;
  *&v9[v26[21]] = v18;
  v31 = v79;
  sub_21733CAD0();
  v32 = &v31[v78[5]];
  memcpy(v97, v32, sizeof(v97));
  memcpy(v98, v32, sizeof(v98));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v98) == 1)
  {
    v33 = v108;
  }

  else
  {
    memcpy(v96, v98, 0x1B8uLL);
    memcpy(v80, v97, 0x1B8uLL);
    sub_21726A630(v80, v95, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v82);
    memcpy(v81, v96, sizeof(v81));
    sub_2171F0738(v81, &qword_27CB243F0, &qword_21775D690);
    memcpy(v95, v82, 0x221uLL);
    nullsub_1();
    v33 = v95;
  }

  memcpy(v96, v33, sizeof(v96));
  v75 = v5;
  memcpy(v95, v9, 0x221uLL);
  sub_2171F0738(v95, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v9, v96, 0x221uLL);
  *(v9 + 69) = *(v32 + 55);
  if (*(v32 + 64))
  {
    v34 = *(v32 + 62);
    v35 = *(v32 + 63);
    v36 = *(v32 + 61);
    v69 = *(v32 + 60);
    v70 = v34;
    v38 = *(v32 + 58);
    v37 = *(v32 + 59);
    v40 = *(v32 + 56);
    v39 = *(v32 + 57);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v37 = 0;
    v69 = 0;
    v70 = 0;
    v36 = 0;
    v35 = 0;
    v39 = 1;
  }

  v41 = *(v9 + 36);
  v94[0] = *(v9 + 35);
  v94[1] = v41;
  v42 = *(v9 + 38);
  v94[2] = *(v9 + 37);
  v94[3] = v42;
  sub_217751DE8();
  sub_2171F0738(v94, &qword_27CB24B70, &unk_217759460);
  *(v9 + 70) = v40;
  *(v9 + 71) = v39;
  *(v9 + 72) = v38;
  *(v9 + 73) = v37;
  v43 = v70;
  *(v9 + 74) = v69;
  *(v9 + 75) = v36;
  *(v9 + 76) = v43;
  *(v9 + 77) = v35;
  *(v9 + 78) = *(v32 + 65);
  v44 = *(v32 + 68);
  *(v9 + 79) = *(v32 + 67);
  *(v9 + 80) = v44;
  v45 = *(v32 + 70);
  *(v9 + 150) = *(v32 + 69);
  *(v9 + 151) = v45;
  v46 = *(type metadata accessor for CloudRadioShow.Attributes(0) + 44);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v32[v46], &v9[v71], &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(&v79[v78[6]], v81, &qword_27CB25640, &qword_217764750);
  if (v81[2] == 1)
  {
    sub_2171F0738(v81, &qword_27CB25640, &qword_217764750);
    v48 = v75;
    v47 = v76;
LABEL_19:
    memset(v80, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v81, v82, &qword_27CB242C0, &unk_21775D650);
  v49 = sub_21733BB04(v81);
  v50 = v82[2];
  v48 = v75;
  v47 = v76;
  v51 = v74;
  if (!v82[2])
  {
    sub_2171F0738(v82, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_19;
  }

  v93 = 0;
  memset(v92, 0, sizeof(v92));
  MEMORY[0x28223BE20](v49);
  *(&v66 - 2) = v51;
  *(&v66 - 1) = v47;
  sub_217751DE8();
  v52 = sub_2172E4A28(sub_21733CEE8, (&v66 - 4), v50, sub_217276258, &qword_27CB24790, &unk_21775A220);

  sub_21726A630(v92, &v86, &qword_27CB24188, &dword_217758930);
  if (*(&v87 + 1))
  {
    sub_2171F0738(v92, &qword_27CB24188, &dword_217758930);
    v89 = v86;
    v90 = v87;
    v91 = v88;
  }

  else
  {
    v85 = 0;
    v84 = 0u;
    v83 = 0u;
    v53 = v82[8];
    if (v82[8])
    {
      v54 = v82[7];
      sub_2172CA838(v47, &v80[1]);
      *&v80[0] = v54;
      *(&v80[0] + 1) = v53;
      v55 = swift_allocObject();
      v56 = v80[1];
      *(v55 + 16) = v80[0];
      *(v55 + 32) = v56;
      *(v55 + 48) = v80[2];
      *(v55 + 64) = *&v80[3];
      sub_217751DE8();
      sub_2171F0738(&v83, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v92, &qword_27CB24188, &dword_217758930);
      *&v83 = v55;
      *(&v84 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v85 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v92, &qword_27CB24188, &dword_217758930);
    }

    v89 = v83;
    v90 = v84;
    v91 = v85;
    if (*(&v87 + 1))
    {
      sub_2171F0738(&v86, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v82[1] == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = v82[0];
  }

  if (v82[1] == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = v82[1];
  }

  *&v80[0] = v52;
  BYTE8(v80[0]) = 0;
  v80[1] = v89;
  v80[2] = v90;
  *&v80[3] = v91;
  *(&v80[3] + 1) = v57;
  *&v80[4] = v58;
  *(&v80[4] + 1) = v82[3];
  *&v80[5] = v82[4];
  *(&v80[5] + 1) = v82[14];
  *&v80[6] = v82[15];
  sub_2171FB568(v82[0], v82[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v82, &qword_27CB242C8, &unk_217758970);
LABEL_32:
  sub_21733BBDC(v80, v72, &qword_27CB25330, &unk_21775E9B0);
  v59 = v79;
  v60 = v78[8];
  v61 = *&v79[v60];
  if (v61 == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = *&v79[v60];
  }

  v63 = v77;
  *&v9[v77[13]] = v62;
  v82[3] = v63;
  v82[4] = &protocol witness table for RadioShowPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v82);
  sub_21733CAD0();
  sub_217221020(v61);
  RadioShow.init(propertyProvider:)(v82, v73);

  sub_2171F0738(v48, &qword_27CB247C0, &unk_21779AA10);
  sub_21733CA78(v59, type metadata accessor for CloudRadioShow);
  sub_21733AB9C(v47);
  return sub_21733CA78(v9, type metadata accessor for RadioShowPropertyProvider);
}

uint64_t sub_21730319C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v85 = v2;
  v86 = v1;
  v4 = v3;
  v84 = v5;
  v89 = type metadata accessor for CloudRecordLabel(0);
  MEMORY[0x28223BE20](v89);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v7 = type metadata accessor for RecordLabelPropertyProvider(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6348 != -1)
  {
    swift_once();
  }

  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  sub_2172DB678();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v11 = v10[10];
  v12 = v4 + v10[9];
  v13 = *(v12 + 8);
  *&v80 = *v12;
  v79 = *(v12 + 16);
  v14 = *(v4 + v11 + 8);
  v78 = *(v4 + v11);
  v15 = *(v4 + v10[12]);
  v16 = *(v4 + v10[13]);
  v17 = v10[15];
  v18 = *(v4 + v10[14]);
  v88 = v4;
  v19 = *(v4 + v17);
  sub_2172A497C(v119);
  memcpy(v9, v119, 0x221uLL);
  memcpy(v9 + 600, v119, 0x221uLL);
  v20 = v7[11];
  v21 = sub_2177516D8();
  v81 = v20;
  __swift_storeEnumTagSinglePayload(&v9[v20], 1, 1, v21);
  v22 = &v9[v7[12]];
  *(v22 + 96) = 0;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v82 = v22;
  v87 = v7;
  v23 = &v9[v7[13]];
  *(v23 + 96) = 0;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  v83 = v23;
  v24 = qword_27CB23D38;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27CB8A2E0;
  if (qword_27CB8A2E0 >> 62)
  {
    v74 = qword_27CB8A2E0 & 0xFFFFFFFFFFFFFF8;
    if (qword_27CB8A2E0 < 0)
    {
      v74 = qword_27CB8A2E0;
    }

    v76 = v74;
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v75 = sub_217752D28();

    v25 = v75;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v26 = v87;
  *&v9[v87[15]] = v25;
  v27 = v26;
  v28 = &v9[v26[18]];
  memcpy(&v9[v26[16]], v118, 0x161uLL);
  v29 = &v9[v27[17]];
  *v29 = v80;
  *(v29 + 1) = v13;
  v29[16] = v79;
  *v28 = v78;
  *(v28 + 1) = v14;
  *&v9[v27[19]] = v15;
  *&v9[v27[20]] = v16;
  *&v9[v27[21]] = v18;
  *&v9[v27[22]] = v19;
  v30 = v90;
  sub_21733CAD0();
  v31 = &v30[v89[5]];
  memcpy(v108, v31, sizeof(v108));
  memcpy(v109, v31, sizeof(v109));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v109) == 1)
  {
    v32 = v119;
  }

  else
  {
    memcpy(v107, v109, 0x1B8uLL);
    memcpy(v91, v108, 0x1B8uLL);
    sub_21726A630(v91, v106, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v93);
    memcpy(v92, v107, sizeof(v92));
    sub_2171F0738(v92, &qword_27CB243F0, &qword_21775D690);
    memcpy(v106, v93, 0x221uLL);
    nullsub_1();
    v32 = v106;
  }

  memcpy(v107, v32, sizeof(v107));
  memcpy(v106, v9, 0x221uLL);
  sub_2171F0738(v106, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v9, v107, 0x221uLL);
  v33 = *(v31 + 59);
  *(v9 + 69) = *(v31 + 60);
  *(v9 + 70) = *(v31 + 61);
  if (v33)
  {
    v34 = *(v31 + 55);
    v35 = *(v31 + 58);
    v80 = *(v31 + 28);
    sub_217751DE8();
    sub_217751DE8();
    v36 = v80;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0uLL;
  }

  *(v9 + 71) = v34;
  *(v9 + 36) = v36;
  *(v9 + 74) = v35;
  v37 = *(v31 + 63);
  *(v9 + 144) = *(v31 + 62);
  *(v9 + 145) = v37;
  v38 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v31[v38], &v9[v81], &unk_27CB277C0, &qword_217758DC0);
  v39 = v89[7];
  sub_21726A630(&v90[v39], v93, &qword_27CB24A98, &unk_217759060);
  if (v93[2] == 1)
  {
    v40 = &qword_27CB24A98;
    v41 = &unk_217759060;
    v42 = v93;
LABEL_19:
    sub_2171F0738(v42, v40, v41);
    memset(v91, 0, 104);
    goto LABEL_32;
  }

  sub_21726A630(v93, v92, &qword_27CB24270, &unk_21775D640);
  v43 = sub_217284540(v93);
  v44 = v92[2];
  if (!v92[2])
  {
    v40 = &qword_27CB24270;
    v41 = &unk_21775D640;
    v42 = v92;
    goto LABEL_19;
  }

  v105 = 0;
  v104 = 0u;
  v103 = 0u;
  MEMORY[0x28223BE20](v43);
  v45 = v86;
  *(&v76 - 2) = v85;
  *(&v76 - 1) = v45;
  sub_217751DE8();
  v46 = v77;
  v47 = sub_2172E4A28(sub_21733CE88, (&v76 - 4), v44, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v77 = v46;

  sub_21726A630(&v103, &v97, &qword_27CB24188, &dword_217758930);
  if (*(&v98 + 1))
  {
    sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
    v100 = v97;
    v101 = v98;
    v102 = v99;
  }

  else
  {
    v96 = 0;
    v95 = 0u;
    v94 = 0u;
    v48 = v92[8];
    if (v92[8])
    {
      v49 = v92[7];
      sub_2172CA838(v86, &v91[1]);
      *&v91[0] = v49;
      *(&v91[0] + 1) = v48;
      v50 = swift_allocObject();
      v51 = v91[1];
      *(v50 + 16) = v91[0];
      *(v50 + 32) = v51;
      *(v50 + 48) = v91[2];
      *(v50 + 64) = *&v91[3];
      sub_217751DE8();
      sub_2171F0738(&v94, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
      *&v94 = v50;
      *(&v95 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v96 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
    }

    v100 = v94;
    v101 = v95;
    v102 = v96;
    if (*(&v98 + 1))
    {
      sub_2171F0738(&v97, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v92[1] == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v92[0];
  }

  if (v92[1] == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = v92[1];
  }

  *&v91[0] = v47;
  BYTE8(v91[0]) = 0;
  v91[1] = v100;
  v91[2] = v101;
  *&v91[3] = v102;
  *(&v91[3] + 1) = v52;
  *&v91[4] = v53;
  *(&v91[4] + 1) = v92[3];
  *&v91[5] = v92[4];
  *(&v91[5] + 1) = v92[14];
  *&v91[6] = v92[15];
  sub_2171FB568(v92[0], v92[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v92, &qword_27CB24278, &unk_217759070);
LABEL_32:
  sub_21733BBDC(v91, v82, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(&v90[v39], v93, &qword_27CB24A98, &unk_217759060);
  if (v93[2] == 1)
  {
    v54 = &qword_27CB24A98;
    v55 = &unk_217759060;
    v56 = v93;
LABEL_38:
    sub_2171F0738(v56, v54, v55);
    memset(v91, 0, 104);
    v62 = v87;
    v61 = v88;
    goto LABEL_51;
  }

  sub_21726A630(&v93[16], v92, &qword_27CB24270, &unk_21775D640);
  v57 = sub_217284540(v93);
  v58 = v92[2];
  if (!v92[2])
  {
    v54 = &qword_27CB24270;
    v55 = &unk_21775D640;
    v56 = v92;
    goto LABEL_38;
  }

  v105 = 0;
  v104 = 0u;
  v103 = 0u;
  MEMORY[0x28223BE20](v57);
  v59 = v86;
  *(&v76 - 2) = v85;
  *(&v76 - 1) = v59;
  sub_217751DE8();
  v60 = sub_2172E4A28(sub_21733CE88, (&v76 - 4), v58, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);

  sub_21726A630(&v103, &v97, &qword_27CB24188, &dword_217758930);
  if (*(&v98 + 1))
  {
    sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
    v100 = v97;
    v101 = v98;
    v102 = v99;
    v62 = v87;
    v61 = v88;
  }

  else
  {
    v96 = 0;
    v95 = 0u;
    v94 = 0u;
    v63 = v92[8];
    if (v92[8])
    {
      v64 = v92[7];
      sub_2172CA838(v86, &v91[1]);
      *&v91[0] = v64;
      *(&v91[0] + 1) = v63;
      v65 = swift_allocObject();
      v66 = v91[1];
      *(v65 + 16) = v91[0];
      *(v65 + 32) = v66;
      *(v65 + 48) = v91[2];
      *(v65 + 64) = *&v91[3];
      sub_217751DE8();
      sub_2171F0738(&v94, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
      *&v94 = v65;
      *(&v95 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v96 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v103, &qword_27CB24188, &dword_217758930);
    }

    v62 = v87;
    v61 = v88;
    v100 = v94;
    v101 = v95;
    v102 = v96;
    if (*(&v98 + 1))
    {
      sub_2171F0738(&v97, &qword_27CB24188, &dword_217758930);
    }
  }

  if (v92[1] == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = v92[0];
  }

  if (v92[1] == 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = v92[1];
  }

  *&v91[0] = v60;
  BYTE8(v91[0]) = 0;
  v91[1] = v100;
  v91[2] = v101;
  *&v91[3] = v102;
  *(&v91[3] + 1) = v67;
  *&v91[4] = v68;
  *(&v91[4] + 1) = v92[3];
  *&v91[5] = v92[4];
  *(&v91[5] + 1) = v92[14];
  *&v91[6] = v92[15];
  sub_2171FB568(v92[0], v92[1]);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v92, &qword_27CB24278, &unk_217759070);
LABEL_51:
  sub_21733BBDC(v91, v83, &qword_27CB25318, &qword_2177657C0);
  v69 = v90;
  v70 = v89[8];
  v71 = *&v90[v70];
  if (v71 == 1)
  {
    v72 = 0;
  }

  else
  {
    v72 = *&v90[v70];
  }

  *&v9[*(v62 + 56)] = v72;
  v93[3] = v62;
  v93[4] = &protocol witness table for RecordLabelPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v93);
  sub_21733CAD0();
  sub_217221020(v71);
  RecordLabel.init(propertyProvider:)(v93, v84);

  sub_2171F0738(v61, &qword_27CB24778, &unk_217758D00);
  sub_21733AB9C(v86);
  sub_21733CA78(v69, type metadata accessor for CloudRecordLabel);
  return sub_21733CA78(v9, type metadata accessor for RecordLabelPropertyProvider);
}

uint64_t sub_217303E60(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v385 = v1;
  v381 = v2;
  v4 = v3;
  v379 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v6 - 8);
  v364 = v340 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v343 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v395 = v340 - v9;
  v10 = type metadata accessor for PreviewAsset(0);
  v392 = *(v10 - 8);
  v393 = v10;
  MEMORY[0x28223BE20](v10);
  v394 = v340 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for SongPropertyProvider(0);
  MEMORY[0x28223BE20](v390);
  v396 = v340 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25688, &qword_21775D6D8);
  MEMORY[0x28223BE20](v13 - 8);
  v342 = v340 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v340 - v16;
  v387 = 0;
  v18 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v18);
  v340[1] = v340 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v358 = v340 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v340 - v23;
  sub_21733CAD0();
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v25 = &v24[*(v18 + 20)];
  v388 = type metadata accessor for CloudSong.Attributes(0);
  v389 = v25;
  v391 = &v25[v388[31]];
  memcpy(__dst, v391, sizeof(__dst));
  sub_2172DA110();
  v378 = v18;
  v386 = *(v18 + 24);
  sub_21726A630(&v24[v386], v421, &qword_27CB24A78, &qword_217759040);
  v384 = v24;
  if (v421[2] == 1)
  {
    sub_2171F0738(v421, &qword_27CB24A78, &qword_217759040);
    v26 = v396;
  }

  else
  {
    sub_21726A630(&v421[64], v418, &qword_27CB242E0, &unk_21777EEE0);
    sub_217284234(v421);
    v27 = v418[2];
    v26 = v396;
    if (v418[2])
    {
      sub_217751DE8();
      sub_2171F0738(v418, &qword_27CB242E8, &unk_21775D6B0);
      sub_2172CE6FC(v27);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
      if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
      {
        v29 = &qword_27CB25688;
        v30 = &qword_21775D6D8;
      }

      else
      {
        KeyPath = swift_getKeyPath(byte_21775D728);
        sub_21735F954(KeyPath, v429);

        v29 = &qword_27CB24748;
        v30 = &unk_217758CD0;
      }

      v31 = v17;
    }

    else
    {
      v29 = &qword_27CB242E0;
      v30 = &unk_21777EEE0;
      v31 = v418;
    }

    sub_2171F0738(v31, v29, v30);
  }

  memcpy(v417, v429, sizeof(v417));
  v383 = v430;
  memcpy(v416, v431, sizeof(v416));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v34 = v33[10];
  v35 = (v4 + v33[9]);
  v36 = v35[1];
  v352 = *v35;
  v351 = *(v35 + 16);
  v37 = *(v4 + v34 + 8);
  v350 = *(v4 + v34);
  v38 = v33[13];
  v382 = *(v4 + v33[12]);
  v39 = *(v4 + v38);
  v40 = v33[14];
  v41 = v33[15];
  v341 = v33;
  v346 = *(v4 + v40);
  v347 = v39;
  v380 = v4;
  v348 = *(v4 + v41);
  sub_2172A497C(v418);
  memcpy(v26, v418, 0x221uLL);
  sub_21733B708(v419);
  memcpy(v26 + 552, v419, 0x161uLL);
  v42 = v390;
  v43 = v390[8];
  v44 = sub_2177516D8();
  v353 = v43;
  __swift_storeEnumTagSinglePayload(&v26[v43], 1, 1, v44);
  v354 = v42[12];
  v45 = &v26[v354];
  v45[4] = 0;
  *v45 = 512;
  v345 = v42[14];
  v396[v345] = 2;
  v46 = &v396[v42[16]];
  *v46 = 0;
  v344 = v46;
  v46[8] = 1;
  v47 = &v396[v42[18]];
  *v47 = xmmword_2177586D0;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  v355 = v47;
  v396[v42[21]] = 2;
  v48 = &v396[v42[25]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v48[16] = 0;
  v49 = &v396[v42[26]];
  v49[1] = 0;
  v356 = v49;
  v357 = v49 + 1;
  *v49 = 0;
  v49[2] = 1;
  memcpy(&v396[v42[27]], v418, 0x221uLL);
  v50 = &v396[v42[32]];
  *(v50 + 14) = 0;
  *(v50 + 5) = 0u;
  *(v50 + 6) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  v359 = v50;
  *v50 = 0u;
  v51 = v42[34];
  v52 = sub_2177517D8();
  v360 = v51;
  __swift_storeEnumTagSinglePayload(&v396[v51], 1, 1, v52);
  v53 = &v396[v42[35]];
  *v53 = 0;
  v53[8] = 1;
  v54 = v42[37];
  sub_21733B710(v420);
  v361 = v54;
  memcpy(&v396[v54], v420, 0xB0uLL);
  v362 = v42[41];
  __swift_storeEnumTagSinglePayload(&v396[v362], 1, 1, v44);
  __swift_storeEnumTagSinglePayload(&v396[v42[43]], 1, 1, v52);
  v396[v42[44]] = 3;
  v396[v42[45]] = 2;
  v396[v42[47]] = 2;
  v396[v42[48]] = 5;
  v396[v42[49]] = 7;
  v55 = &v396[v42[50]];
  *v55 = 0;
  v55[8] = 1;
  __swift_storeEnumTagSinglePayload(&v396[v42[51]], 1, 1, v52);
  __swift_storeEnumTagSinglePayload(&v396[v42[52]], 1, 1, v52);
  v56 = &v396[v42[53]];
  *v56 = 0;
  v56[8] = 1;
  v396[v42[54]] = 2;
  v57 = v396;
  v396[v42[55]] = 10;
  v58 = &v57[v42[56]];
  *v58 = 0;
  v58[8] = 1;
  v59 = &v57[v42[57]];
  *(v59 + 96) = 0;
  *(v59 + 64) = 0u;
  *(v59 + 80) = 0u;
  *(v59 + 32) = 0u;
  *(v59 + 48) = 0u;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v363 = v59;
  v60 = &v57[v42[58]];
  *(v60 + 96) = 0;
  *(v60 + 64) = 0u;
  *(v60 + 80) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 0u;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  v365 = v60;
  v61 = &v57[v42[59]];
  *(v61 + 96) = 0;
  *(v61 + 64) = 0u;
  *(v61 + 80) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  v367 = v61;
  v62 = &v57[v42[60]];
  *(v62 + 6) = 0u;
  *(v62 + 7) = 0u;
  *(v62 + 4) = 0u;
  *(v62 + 5) = 0u;
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v366 = v62;
  v63 = &v57[v42[61]];
  *(v63 + 96) = 0;
  *(v63 + 64) = 0u;
  *(v63 + 80) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v368 = v63;
  v64 = &v57[v42[62]];
  *(v64 + 96) = 0;
  *(v64 + 64) = 0u;
  *(v64 + 80) = 0u;
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v369 = v64;
  v65 = &v57[v42[63]];
  *(v65 + 6) = 0u;
  *(v65 + 7) = 0u;
  *(v65 + 4) = 0u;
  *(v65 + 5) = 0u;
  *(v65 + 2) = 0u;
  *(v65 + 3) = 0u;
  *v65 = 0u;
  *(v65 + 1) = 0u;
  v373 = v65;
  v66 = &v57[v42[64]];
  *(v66 + 6) = 0u;
  *(v66 + 7) = 0u;
  *(v66 + 4) = 0u;
  *(v66 + 5) = 0u;
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  *v66 = 0u;
  *(v66 + 1) = 0u;
  v370 = v66;
  v67 = &v57[v42[65]];
  *(v67 + 96) = 0;
  *(v67 + 64) = 0u;
  *(v67 + 80) = 0u;
  *(v67 + 32) = 0u;
  *(v67 + 48) = 0u;
  *v67 = 0u;
  *(v67 + 16) = 0u;
  v371 = v67;
  v68 = &v57[v42[66]];
  *(v68 + 96) = 0;
  *(v68 + 64) = 0u;
  *(v68 + 80) = 0u;
  *(v68 + 32) = 0u;
  *(v68 + 48) = 0u;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  v372 = v68;
  v69 = &v57[v42[67]];
  *(v69 + 96) = 0;
  *(v69 + 64) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *v69 = 0u;
  *(v69 + 16) = 0u;
  v374 = v69;
  v70 = &v57[v42[68]];
  *(v70 + 96) = 0;
  *(v70 + 64) = 0u;
  *(v70 + 80) = 0u;
  *(v70 + 32) = 0u;
  *(v70 + 48) = 0u;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  v376 = v70;
  v377 = v42[71];
  *&v57[v377] = 0;
  v349 = v37;
  sub_217751DE8();
  sub_217751DE8();
  v71 = v347;
  sub_217751DE8();
  v72 = v346;
  sub_217751DE8();
  v73 = v348;
  sub_217751DE8();
  sub_217751DE8();
  v74 = sub_217536388();
  if (v74 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v75 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v75 = v74;
  }

  v76 = v384;

  v77 = v390;
  *&v57[v390[72]] = v75;
  v78 = &v57[v77[75]];
  *v78 = 0;
  *(v78 + 1) = 0;
  v79 = &v57[v77[73]];
  memcpy(v79, v417, 0x108uLL);
  *(v79 + 33) = v383;
  v375 = v79;
  memcpy(v79 + 272, v416, 0x51uLL);
  v80 = &v57[v77[74]];
  *v80 = v352;
  *(v80 + 1) = v36;
  v80[16] = v351;
  v81 = v349;
  *v78 = v350;
  *(v78 + 1) = v81;
  *&v57[v77[76]] = v382;
  *&v57[v77[77]] = v71;
  *&v57[v77[78]] = v72;
  *&v57[v77[79]] = v73;
  sub_21726A630(&v76[v386], v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v82 = &qword_27CB24A78;
    v83 = &qword_217759040;
    v84 = v421;
LABEL_20:
    sub_2171F0738(v84, v82, v83);
    sub_21733CAD0();
    goto LABEL_21;
  }

  sub_21726A630(&v421[64], v413, &qword_27CB242E0, &unk_21777EEE0);
  sub_217284234(v421);
  v85 = v413[2];
  if (!v413[2])
  {
    v82 = &qword_27CB242E0;
    v83 = &unk_21777EEE0;
    v84 = v413;
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v413, &qword_27CB242E8, &unk_21775D6B0);
  v86 = v342;
  sub_2172CE6FC(v85);

  if (__swift_getEnumTagSinglePayload(v86, 1, v341) == 1)
  {
    v82 = &qword_27CB25688;
    v83 = &qword_21775D6D8;
    v84 = v86;
    goto LABEL_20;
  }

  sub_21733CAD0();
  sub_2171F0738(v86, &qword_27CB24748, &unk_217758CD0);
  sub_21733CE30();
LABEL_21:
  sub_21733BC28();
  memcpy(v414, v389, sizeof(v414));
  memcpy(v415, v389, sizeof(v415));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v415) == 1)
  {
    v87 = v418;
  }

  else
  {
    memcpy(v421, v415, 0x1B8uLL);
    memcpy(v399, v414, 0x1B8uLL);
    sub_21726A630(v399, v413, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v412);
    memcpy(v400, v421, 0x1B8uLL);
    sub_2171F0738(v400, &qword_27CB243F0, &qword_21775D690);
    memcpy(v421, v412, 0x221uLL);
    nullsub_1();
    v87 = v421;
  }

  memcpy(v413, v87, 0x221uLL);
  v88 = v390;
  v89 = v390[9];
  v90 = &v57[v390[10]];
  v91 = v390[11];
  memcpy(v412, v57, 0x221uLL);
  sub_2171F0738(v412, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v57, v413, 0x221uLL);
  v93 = v388;
  v92 = v389;
  *(v57 + 114) = *(v389 + 55);
  v94 = *(v92 + 58);
  *(v57 + 920) = *(v92 + 28);
  *(v57 + 117) = v94;
  v95 = v93[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v92[v95], &v396[v353], &unk_27CB277C0, &qword_217758DC0);
  *&v396[v89] = *&v92[v93[18]];
  v96 = &v92[v93[8]];
  v97 = *(v96 + 1);
  *v90 = *v96;
  *(v90 + 1) = v97;
  swift_getKeyPath(byte_21775D6E0);
  swift_getKeyPath(byte_21775D700);
  v358 = v97;
  sub_217751DE8();
  sub_217751DE8();
  v98 = sub_2172E3DDC();

  *&v396[v91] = v98;
  v99 = v391;
  v100 = *(v391 + 1);
  sub_21735D9D8();
  v102 = v101;
  if (v100)
  {
    v103 = 3;
  }

  else
  {
    v103 = 0;
  }

  v104 = *(v99 + 1);
  sub_21735D9D8();
  v106 = v105 | (v104 != 0);
  v107 = *(v99 + 1);
  sub_21735D9D8();
  v109 = v108 | (v107 != 0);
  v110 = &v396[v88[13]];
  sub_21735D9D8();
  if (v102)
  {
    v112 = 3;
  }

  else
  {
    v112 = v103;
  }

  v113 = v396;
  v114 = 256;
  if ((v106 & 1) == 0)
  {
    v114 = 0;
  }

  v115 = v114 | v112;
  v116 = 0x10000;
  if ((v109 & 1) == 0)
  {
    v116 = 0;
  }

  v117 = &v396[v354];
  *v117 = v115 | v116;
  v117[4] = (v111 & 1) != 0;
  v118 = &v92[v93[11]];
  v119 = *(v118 + 1);
  *v110 = *v118;
  *(v110 + 1) = v119;
  if (*&v92[v93[12] + 8])
  {
    sub_217751DE8();
    v120 = sub_217752DC8();
    if (v120 == 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = 2;
    }

    if (!v120)
    {
      v121 = 0;
    }

    v113[v345] = v121;
  }

  else
  {
    sub_217751DE8();
  }

  v122 = v389;
  v123 = &v113[v390[15]];
  v124 = v388;
  v125 = &v389[v388[13]];
  v126 = *v125;
  LOBYTE(v125) = v125[8];
  *v123 = v126;
  v123[8] = v125;
  v127 = &v122[v124[14]];
  if ((v127[8] & 1) == 0)
  {
    v128 = *v127 / 1000.0;
    v129 = v344;
    *v344 = v128;
    *(v129 + 8) = 0;
  }

  v131 = v388;
  v130 = v389;
  *&v113[v390[17]] = *&v389[v388[15]];
  v132 = &v130[v131[16]];
  if (*(v132 + 8))
  {
    v133 = *(v132 + 7);
    v382 = *(v132 + 6);
    v134 = *(v132 + 4);
    v135 = *(v132 + 5);
    v136 = *(v132 + 3);
    v353 = *(v132 + 2);
    v354 = v134;
    v138 = *v132;
    v137 = *(v132 + 1);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v138 = 0;
    v353 = 0;
    v354 = 0;
    v136 = 0;
    v135 = 0;
    v382 = 0;
    v133 = 0;
    v137 = 1;
  }

  v140 = v390[19];
  v139 = v390[20];
  v141 = v355;
  v142 = v355[1];
  v411[0] = *v355;
  v411[1] = v142;
  v143 = v355[3];
  v411[2] = v355[2];
  v411[3] = v143;
  sub_217751DE8();
  sub_2171F0738(v411, &qword_27CB24B70, &unk_217759460);
  *v141 = v138;
  v141[1] = v137;
  v144 = v354;
  v141[2] = v353;
  v141[3] = v136;
  v141[4] = v144;
  v141[5] = v135;
  v141[6] = v382;
  v141[7] = v133;
  v145 = v388;
  v146 = v389;
  v147 = v396;
  *&v396[v140] = *&v389[v388[17]];
  *&v147[v139] = *&v146[v145[19]];
  v148 = v146[v145[20]] | (v146[v145[21]] << 8) | 0x20000;
  v149 = v356;
  v150 = *v356;
  v151 = v356[1];
  v152 = v356[2];
  sub_217751DE8();
  sub_217751DE8();
  v153 = sub_21733B290(v150, v151, v152);
  *v149 = v148;
  v154 = v357;
  *v357 = 0;
  v154[1] = 0;
  v155 = swift_getKeyPath(byte_21775D6E0, v153);
  v156 = swift_getKeyPath(byte_21775D700);
  if (v146[v145[22]] == 2)
  {
    v157 = v146[v145[23]];
  }

  else
  {
    v157 = v146[v145[22]];
  }

  v382 = v155;
  v158 = sub_2172E3DE0();
  if (v158)
  {
    v355 = v156;
    LODWORD(v356) = v157;
    v159 = *(v158 + 16);
    v357 = v158;
    v160 = (v158 + 32);
    v161 = (v158 + 32);
    while (2)
    {
      if (v159)
      {
        switch(*v161)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
            v162 = sub_217753058();

            ++v161;
            --v159;
            if ((v162 & 1) == 0)
            {
              continue;
            }

            LOBYTE(v163) = 1;
            break;
          default:

            LOBYTE(v163) = 1;
            break;
        }

        v164 = v356;
      }

      else
      {
        v163 = v357[2];
        v164 = v356;
        while (2)
        {
          if (v163)
          {
            switch(*v160)
            {
              case 8:

                LOBYTE(v163) = 1;
                break;
              default:
                v165 = sub_217753058();

                ++v160;
                --v163;
                if ((v165 & 1) == 0)
                {
                  continue;
                }

                LOBYTE(v163) = 1;
                break;
            }
          }

          else
          {
          }

          break;
        }
      }

      break;
    }

    v147 = v396;
    if (v164 == 2)
    {
      LOBYTE(v157) = v163;
    }

    else
    {
      LOBYTE(v157) = (v163 | v164) & 1;
    }
  }

  else
  {
  }

  v166 = v390;
  v167 = v391;
  v147[v390[22]] = v157;
  v168 = *(v167 + 1);
  v169 = v389;
  sub_21735D9D8();
  v170 = v166[24];
  v171 = &v147[v166[23]];
  v172 = v166[29];
  v173 = &v147[v166[28]];
  v174 = v166[30];
  v175 = v166[31];
  v147[v166[46]] = v176 & 1 | (v168 != 0);
  v177 = &v147[v172];
  v178 = v388;
  v179 = &v169[v388[25]];
  v180 = *(v179 + 1);
  *v171 = *v179;
  *(v171 + 1) = v180;
  v147[v170] = v169[v178[24]];
  v181 = &v147[v174];
  v182 = &v169[v178[26]];
  v183 = *v182;
  LOBYTE(v182) = v182[8];
  *v173 = v183;
  v173[8] = v182;
  v184 = &v169[v178[27]];
  v185 = *(v184 + 1);
  *v177 = *v184;
  *(v177 + 1) = v185;
  v186 = &v169[v178[28]];
  v187 = *v186;
  LOBYTE(v186) = v186[8];
  *v181 = v187;
  v181[8] = v186;
  *&v147[v175] = *&v169[v178[30]];
  memcpy(v409, v167, sizeof(v409));
  memcpy(v410, v359, sizeof(v410));
  memcpy(v359, v167, 0x78uLL);
  sub_21726A630(v409, v421, &qword_27CB244D0, &unk_21775D620);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v410, &qword_27CB244D0, &unk_21775D620);
  v188 = *&v169[v178[32]];
  if (v188)
  {
    v189 = *(v188 + 16);
    v190 = MEMORY[0x277D84F90];
    if (v189)
    {
      *&v406 = MEMORY[0x277D84F90];
      sub_217276450(0, v189, 0);
      v190 = v406;
      v191 = v188 + ((*(v343 + 80) + 32) & ~*(v343 + 80));
      v391 = *(v343 + 72);
      do
      {
        v192 = v395;
        sub_21726A630(v191, v395, &qword_27CB24A68, &qword_217759030);
        memcpy(v401, v192, 0x1B8uLL);
        memcpy(v402, v192, 0x1B8uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v402) == 1)
        {
          v193 = v418;
        }

        else
        {
          memcpy(v421, v402, 0x1B8uLL);
          memcpy(v397, v401, 0x1B8uLL);
          sub_21726A630(v397, v400, &qword_27CB243F0, &qword_21775D690);
          CloudAttribute<A>.convertToArtwork()(v399);
          memcpy(v398, v421, 0x1B8uLL);
          sub_2171F0738(v398, &qword_27CB243F0, &qword_21775D690);
          memcpy(v400, v399, 0x221uLL);
          nullsub_1();
          v193 = v400;
        }

        memcpy(v421, v193, 0x221uLL);
        v194 = type metadata accessor for CloudPreviewAsset(0);
        v196 = v393;
        v195 = v394;
        v197 = v395;
        sub_21726A630(v395 + *(v194 + 20), &v394[*(v393 + 20)], &unk_27CB277C0, &qword_217758DC0);
        sub_21726A630(v197 + *(v194 + 24), v195 + *(v196 + 24), &unk_27CB277C0, &qword_217758DC0);
        sub_2171F0738(v197, &qword_27CB24A68, &qword_217759030);
        memcpy(v195, v421, 0x221uLL);
        *&v406 = v190;
        v199 = *(v190 + 16);
        v198 = *(v190 + 24);
        if (v199 >= v198 >> 1)
        {
          sub_217276450(v198 > 1, v199 + 1, 1);
          v190 = v406;
        }

        *(v190 + 16) = v199 + 1;
        sub_21733CE30();
        v191 += v391;
        --v189;
      }

      while (v189);
    }
  }

  else
  {
    v190 = 0;
  }

  v200 = v396;
  v201 = v390[33];
  v202 = v390[36];
  v203 = v390[39];
  v395 = v390[38];
  v204 = &v396[v203];
  v205 = &v396[v390[40]];
  v206 = &v396[v390[42]];
  *&v396[v201] = v190;
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v207 = type metadata accessor for CloudFormatter(0);
  __swift_project_value_buffer(v207, qword_280BE8918);
  v208 = v388;
  v209 = v389;
  v210 = *&v389[v388[33] + 8];
  LOBYTE(v421[0]) = 0;
  v211 = v364;
  CloudFormatter.date(from:withFormat:)(v210, v421, v364);
  sub_21733BBDC(v211, &v200[v360], &qword_27CB241C0, &qword_217759480);
  v200[v202] = v358 != 0;
  memcpy(v399, &v209[v208[34]], 0xB0uLL);
  v212 = v361;
  memcpy(v400, &v200[v361], 0xB0uLL);
  sub_21726A630(v399, v421, &qword_27CB25690, &qword_21775D720);
  sub_2171F0738(v400, &qword_27CB25690, &qword_21775D720);
  memcpy(&v200[v212], v399, 0xB0uLL);
  v200[v395] = v209[v208[35]];
  v213 = &v209[v208[29]];
  v214 = *(v213 + 1);
  *v204 = *v213;
  *(v204 + 1) = v214;
  v215 = &v209[v208[36]];
  v216 = *v215;
  LOBYTE(v215) = v215[8];
  *v205 = v216;
  v205[8] = v215;
  v217 = v208[37];
  sub_217751DE8();
  sub_21733B95C(&v209[v217], &v200[v362], &unk_27CB277C0, &qword_217758DC0);
  v218 = &v209[v208[38]];
  v219 = *(v218 + 1);
  *v206 = *v218;
  *(v206 + 1) = v219;
  v220 = v384;
  v221 = v386;
  sub_21726A630(&v384[v386], v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    sub_217751DE8();
    sub_2171F0738(v421, &qword_27CB24A78, &qword_217759040);
    v222 = v381;
LABEL_87:
    memset(v401, 0, 104);
    goto LABEL_100;
  }

  sub_21726A630(v421, v402, &qword_27CB24270, &unk_21775D640);
  sub_217751DE8();
  v223 = sub_217284234(v421);
  v222 = v381;
  if (!*&v402[1])
  {
    sub_2171F0738(v402, &qword_27CB24270, &unk_21775D640);
    goto LABEL_87;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v223);
  v340[-2] = v385;
  v340[-1] = v222;
  v224 = v387;
  v226 = sub_2172E4A28(sub_21733CE88, &v340[-4], v225, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v387 = v224;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v227 = *&v402[4];
    if (*&v402[4])
    {
      v228 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v228;
      *(&v401[0] + 1) = v227;
      v229 = swift_allocObject();
      v230 = v401[1];
      *(v229 + 16) = v401[0];
      *(v229 + 32) = v230;
      *(v229 + 48) = v401[2];
      *(v229 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v229;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v231 = 0;
  }

  else
  {
    v231 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v232 = 0;
  }

  else
  {
    v232 = *(&v402[0] + 1);
  }

  *&v401[0] = v226;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v231;
  *&v401[4] = v232;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB24278, &unk_217759070);
  v221 = v386;
LABEL_100:
  sub_21733BBDC(v401, v363, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v233 = &qword_27CB24A78;
    v234 = &qword_217759040;
    v235 = v421;
LABEL_106:
    sub_2171F0738(v235, v233, v234);
    memset(v401, 0, 104);
    goto LABEL_119;
  }

  sub_21726A630(&v421[16], v402, &qword_27CB243B0, &unk_21775D670);
  v236 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v233 = &qword_27CB243B0;
    v234 = &unk_21775D670;
    v235 = v402;
    goto LABEL_106;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v236);
  v340[-2] = v385;
  v340[-1] = v222;
  v237 = v387;
  v239 = sub_2172E4A28(sub_21733CF18, &v340[-4], v238, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  v387 = v237;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v240 = *&v402[4];
    if (*&v402[4])
    {
      v241 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v241;
      *(&v401[0] + 1) = v240;
      v242 = swift_allocObject();
      v243 = v401[1];
      *(v242 + 16) = v401[0];
      *(v242 + 32) = v243;
      *(v242 + 48) = v401[2];
      *(v242 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v242;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v244 = 0;
  }

  else
  {
    v244 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v245 = 0;
  }

  else
  {
    v245 = *(&v402[0] + 1);
  }

  *&v401[0] = v239;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v244;
  *&v401[4] = v245;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB243B8, &qword_2177586B0);
  v221 = v386;
LABEL_119:
  sub_21733BBDC(v401, v365, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    sub_2171F0738(v421, &qword_27CB24A78, &qword_217759040);
    memset(v402, 0, 128);
  }

  else
  {
    sub_21726A630(&v421[48], v402, &qword_27CB255E0, &unk_2177756D0);
    sub_217284234(v421);
  }

  sub_21733BBDC(v402, v366, &qword_27CB255E0, &unk_2177756D0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v246 = &qword_27CB24A78;
    v247 = &qword_217759040;
    v248 = v421;
LABEL_128:
    sub_2171F0738(v248, v246, v247);
    memset(v401, 0, 104);
    goto LABEL_141;
  }

  sub_21726A630(&v421[32], v402, &qword_27CB24280, &unk_21775D680);
  v249 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v246 = &qword_27CB24280;
    v247 = &unk_21775D680;
    v248 = v402;
    goto LABEL_128;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v249);
  v340[-2] = v385;
  v340[-1] = v222;
  v250 = v387;
  v252 = sub_2172E4A28(sub_21733CED0, &v340[-4], v251, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v387 = v250;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v253 = *&v402[4];
    if (*&v402[4])
    {
      v254 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v254;
      *(&v401[0] + 1) = v253;
      v255 = swift_allocObject();
      v256 = v401[1];
      *(v255 + 16) = v401[0];
      *(v255 + 32) = v256;
      *(v255 + 48) = v401[2];
      *(v255 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v255;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v257 = 0;
  }

  else
  {
    v257 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v258 = 0;
  }

  else
  {
    v258 = *(&v402[0] + 1);
  }

  *&v401[0] = v252;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v257;
  *&v401[4] = v258;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB24288, &qword_217758F80);
  v221 = v386;
LABEL_141:
  sub_21733BBDC(v401, v367, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v259 = &qword_27CB24A78;
    v260 = &qword_217759040;
    v261 = v421;
LABEL_147:
    sub_2171F0738(v261, v259, v260);
    memset(v401, 0, 104);
    goto LABEL_160;
  }

  sub_21726A630(&v421[64], v402, &qword_27CB242E0, &unk_21777EEE0);
  v262 = sub_217284234(v421);
  v263 = *&v402[1];
  if (!*&v402[1])
  {
    v259 = &qword_27CB242E0;
    v260 = &unk_21777EEE0;
    v261 = v402;
    goto LABEL_147;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v262);
  v340[-2] = v385;
  v340[-1] = v222;
  sub_217751DE8();
  v264 = v387;
  v265 = sub_2172E4A28(sub_21733CF30, &v340[-4], v263, sub_2172761F8, &qword_27CB24748, &unk_217758CD0);
  v387 = v264;

  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v266 = *&v402[4];
    if (*&v402[4])
    {
      v267 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v267;
      *(&v401[0] + 1) = v266;
      v268 = swift_allocObject();
      v269 = v401[1];
      *(v268 + 16) = v401[0];
      *(v268 + 32) = v269;
      *(v268 + 48) = v401[2];
      *(v268 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v268;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v270 = 0;
  }

  else
  {
    v270 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v271 = 0;
  }

  else
  {
    v271 = *(&v402[0] + 1);
  }

  *&v401[0] = v265;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v270;
  *&v401[4] = v271;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB242E8, &unk_21775D6B0);
  v221 = v386;
LABEL_160:
  sub_21733BBDC(v401, v368, &qword_27CB255A8, &unk_21775D450);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v272 = &qword_27CB24A78;
    v273 = &qword_217759040;
    v274 = v421;
LABEL_166:
    sub_2171F0738(v274, v272, v273);
    memset(v401, 0, 104);
    goto LABEL_179;
  }

  sub_21726A630(&v422, v402, &qword_27CB24280, &unk_21775D680);
  v275 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v272 = &qword_27CB24280;
    v273 = &unk_21775D680;
    v274 = v402;
    goto LABEL_166;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v275);
  v340[-2] = v385;
  v340[-1] = v222;
  v276 = v387;
  v278 = sub_2172E4A28(sub_21733CED0, &v340[-4], v277, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v387 = v276;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v279 = *&v402[4];
    if (*&v402[4])
    {
      v280 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v280;
      *(&v401[0] + 1) = v279;
      v281 = swift_allocObject();
      v282 = v401[1];
      *(v281 + 16) = v401[0];
      *(v281 + 32) = v282;
      *(v281 + 48) = v401[2];
      *(v281 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v281;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v283 = 0;
  }

  else
  {
    v283 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v284 = 0;
  }

  else
  {
    v284 = *(&v402[0] + 1);
  }

  *&v401[0] = v278;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v283;
  *&v401[4] = v284;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB24288, &qword_217758F80);
  v221 = v386;
LABEL_179:
  sub_21733BBDC(v401, v369, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    sub_2171F0738(v421, &qword_27CB24A78, &qword_217759040);
    memset(v402, 0, 128);
  }

  else
  {
    sub_21726A630(&v424, v402, &qword_27CB255D0, &qword_21775D4A8);
    sub_217284234(v421);
  }

  sub_21733BBDC(v402, v370, &qword_27CB255D0, &qword_21775D4A8);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v285 = &qword_27CB24A78;
    v286 = &qword_217759040;
    v287 = v421;
LABEL_188:
    sub_2171F0738(v287, v285, v286);
    memset(v401, 0, 104);
    goto LABEL_201;
  }

  sub_21726A630(&v425, v402, &qword_27CB243B0, &unk_21775D670);
  v288 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v285 = &qword_27CB243B0;
    v286 = &unk_21775D670;
    v287 = v402;
    goto LABEL_188;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v288);
  v340[-2] = v385;
  v340[-1] = v222;
  v289 = v387;
  v291 = sub_2172E4A28(sub_21733CF18, &v340[-4], v290, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  v387 = v289;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v292 = *&v402[4];
    if (*&v402[4])
    {
      v293 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v293;
      *(&v401[0] + 1) = v292;
      v294 = swift_allocObject();
      v295 = v401[1];
      *(v294 + 16) = v401[0];
      *(v294 + 32) = v295;
      *(v294 + 48) = v401[2];
      *(v294 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v294;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v296 = 0;
  }

  else
  {
    v296 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v297 = 0;
  }

  else
  {
    v297 = *(&v402[0] + 1);
  }

  *&v401[0] = v291;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v296;
  *&v401[4] = v297;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB243B8, &qword_2177586B0);
  v221 = v386;
LABEL_201:
  sub_21733BBDC(v401, v371, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v298 = &qword_27CB24A78;
    v299 = &qword_217759040;
    v300 = v421;
  }

  else
  {
    sub_21726A630(&v426, v402, &qword_27CB242E0, &unk_21777EEE0);
    sub_217284234(v421);
    if (*&v402[1])
    {
      memset(v398, 0, 40);
      sub_2172E93C8();
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v402, &qword_27CB242E8, &unk_21775D6B0);
      goto LABEL_207;
    }

    v298 = &qword_27CB242E0;
    v299 = &unk_21777EEE0;
    v300 = v402;
  }

  sub_2171F0738(v300, v298, v299);
  memset(v401, 0, 104);
LABEL_207:
  sub_21733BBDC(v401, v372, &qword_27CB255A8, &unk_21775D450);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    sub_2171F0738(v421, &qword_27CB24A78, &qword_217759040);
    memset(v402, 0, 128);
  }

  else
  {
    sub_21726A630(&v423, v402, &qword_27CB255D8, &unk_21775D4B0);
    sub_217284234(v421);
  }

  sub_21733BBDC(v402, v373, &qword_27CB255D8, &unk_21775D4B0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v301 = &qword_27CB24A78;
    v302 = &qword_217759040;
    v303 = v421;
LABEL_216:
    sub_2171F0738(v303, v301, v302);
    memset(v401, 0, 104);
    goto LABEL_229;
  }

  sub_21726A630(&v427, v402, &qword_27CB242B0, &unk_21775D630);
  v304 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v301 = &qword_27CB242B0;
    v302 = &unk_21775D630;
    v303 = v402;
    goto LABEL_216;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v304);
  v340[-2] = v385;
  v340[-1] = v222;
  v305 = v387;
  v307 = sub_2172E4A28(sub_21733CEB8, &v340[-4], v306, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v387 = v305;
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v308 = *&v402[4];
    if (*&v402[4])
    {
      v309 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v309;
      *(&v401[0] + 1) = v308;
      v310 = swift_allocObject();
      v311 = v401[1];
      *(v310 + 16) = v401[0];
      *(v310 + 32) = v311;
      *(v310 + 48) = v401[2];
      *(v310 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v310;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v312 = 0;
  }

  else
  {
    v312 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v313 = 0;
  }

  else
  {
    v313 = *(&v402[0] + 1);
  }

  *&v401[0] = v307;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v312;
  *&v401[4] = v313;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB242B8, &unk_21777EEA0);
  v221 = v386;
LABEL_229:
  sub_21733BBDC(v401, v374, &qword_27CB25338, &unk_21775D3E0);
  sub_21726A630(v220 + v221, v421, &qword_27CB24A78, &qword_217759040);
  if (v421[2] == 1)
  {
    v314 = &qword_27CB24A78;
    v315 = &qword_217759040;
    v316 = v421;
LABEL_235:
    sub_2171F0738(v316, v314, v315);
    memset(v401, 0, 104);
    v320 = v380;
    v321 = v396;
    goto LABEL_248;
  }

  sub_21726A630(&v428, v402, &qword_27CB242F0, &unk_217797B80);
  v317 = sub_217284234(v421);
  if (!*&v402[1])
  {
    v314 = &qword_27CB242F0;
    v315 = &unk_217797B80;
    v316 = v402;
    goto LABEL_235;
  }

  memset(v398, 0, 40);
  MEMORY[0x28223BE20](v317);
  v340[-2] = v385;
  v340[-1] = v222;
  v319 = sub_2172E4A28(sub_21733CF00, &v340[-4], v318, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
  sub_21726A630(v398, &v406, &qword_27CB24188, &dword_217758930);
  if (*(&v407 + 1))
  {
    sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    v397[0] = v406;
    v397[1] = v407;
    *&v397[2] = v408;
    v320 = v380;
    v321 = v396;
  }

  else
  {
    v405 = 0;
    v404 = 0u;
    v403 = 0u;
    v322 = *&v402[4];
    if (*&v402[4])
    {
      v323 = *(&v402[3] + 1);
      sub_2172CA838(v222, &v401[1]);
      *&v401[0] = v323;
      *(&v401[0] + 1) = v322;
      v324 = swift_allocObject();
      v325 = v401[1];
      *(v324 + 16) = v401[0];
      *(v324 + 32) = v325;
      *(v324 + 48) = v401[2];
      *(v324 + 64) = *&v401[3];
      sub_217751DE8();
      sub_2171F0738(&v403, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
      *&v403 = v324;
      *(&v404 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v405 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v398, &qword_27CB24188, &dword_217758930);
    }

    v320 = v380;
    v321 = v396;
    v397[0] = v403;
    v397[1] = v404;
    *&v397[2] = v405;
    if (*(&v407 + 1))
    {
      sub_2171F0738(&v406, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v402[0] + 1) == 1)
  {
    v326 = 0;
  }

  else
  {
    v326 = *&v402[0];
  }

  if (*(&v402[0] + 1) == 1)
  {
    v327 = 0;
  }

  else
  {
    v327 = *(&v402[0] + 1);
  }

  *&v401[0] = v319;
  BYTE8(v401[0]) = 0;
  v401[1] = v397[0];
  v401[2] = v397[1];
  *&v401[3] = *&v397[2];
  *(&v401[3] + 1) = v326;
  *&v401[4] = v327;
  *(&v401[4] + 1) = *(&v402[1] + 1);
  *&v401[5] = *&v402[2];
  *(&v401[5] + 8) = v402[7];
  sub_2171FB568(*&v402[0], *(&v402[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v402, &qword_27CB242F8, &qword_21775D6C0);
LABEL_248:
  v328 = v378;
  sub_21733BBDC(v401, v376, &qword_27CB255B0, &unk_217793B50);
  v329 = v220 + *(v328 + 32);
  v330 = *(v329 + 24);
  if (v330 == 1)
  {
    v331 = v390;
    *(v321 + v390[69]) = 0;
    v332 = v321 + v331[70];
    *v332 = 0;
    *(v332 + 8) = 1;
    *(v321 + v377) = 0;
LABEL_255:

    v338 = MEMORY[0x277D84FA0];
    goto LABEL_256;
  }

  if (*v329 == 1)
  {
    v333 = 0;
  }

  else
  {
    v333 = sub_217751DE8();
  }

  v334 = v377;
  v335 = v390;
  *(v321 + v390[69]) = v333;
  v336 = *(v329 + 16);
  v337 = v321 + v335[70];
  *v337 = *(v329 + 8);
  *(v337 + 8) = v336;
  *(v321 + v334) = v330;
  v338 = *(v329 + 32);
  sub_217751DE8();
  if (!v338)
  {
    goto LABEL_255;
  }

  sub_217751DE8();
LABEL_256:

  *(v375 + 33) = v338;
  v421[3] = v390;
  v421[4] = &protocol witness table for SongPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v421);
  sub_21733CAD0();
  Song.init(propertyProvider:)(v421, v379);

  sub_2171F0738(v320, &qword_27CB24748, &unk_217758CD0);
  sub_21733AB9C(v222);
  sub_21733CA78(v321, type metadata accessor for SongPropertyProvider);
  return sub_21733CA78(v220, type metadata accessor for CloudSong);
}

uint64_t sub_2173078AC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v130 = v2;
  v131 = v1;
  v4 = v3;
  v129 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = &v112 - v7;
  v133 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v133);
  v134 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StationPropertyProvider(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6248 != -1)
  {
    swift_once();
  }

  memset(v165, 0, sizeof(v165));
  sub_2172DA334();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v13 = v12[10];
  v14 = v4 + v12[9];
  v15 = *(v14 + 8);
  v120 = *v14;
  LODWORD(v119) = *(v14 + 16);
  v16 = *(v4 + v13 + 8);
  v118 = *(v4 + v13);
  v132 = v16;
  v17 = *(v4 + v12[12]);
  v18 = *(v4 + v12[13]);
  v19 = v12[15];
  v116 = *(v4 + v12[14]);
  v135 = v4;
  v20 = *(v4 + v19);
  v113 = type metadata accessor for Station._AirTime(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v113);
  v21 = v9[5];
  sub_2172A497C(v167);
  v121 = v21;
  memcpy(&v11[v21], v167, 0x221uLL);
  v22 = v9[6];
  v11[v22] = 2;
  v23 = &v11[v9[7]];
  *v23 = 0;
  v114 = v23;
  v115 = v22;
  v23[8] = 1;
  v24 = &v11[v9[9]];
  v136 = xmmword_2177586D0;
  *v24 = xmmword_2177586D0;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  v123 = v9[13];
  v11[v123] = 14;
  memcpy(&v11[v9[14]], v167, 0x221uLL);
  v124 = v9[16];
  memcpy(&v11[v124], v165, 0x78uLL);
  v25 = v9[18];
  v26 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v11[v25], 1, 1, v26);
  v125 = v9[20];
  __swift_storeEnumTagSinglePayload(&v11[v125], 1, 1, v26);
  v27 = &v11[v9[21]];
  *v27 = v136;
  v27[2] = 0;
  v27[3] = 0;
  v126 = v27;
  v28 = &v11[v9[24]];
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v127 = v28;
  *&v136 = v9;
  v29 = &v11[v9[25]];
  *(v29 + 96) = 0;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v128 = v29;
  v30 = qword_280BE3758;
  v117 = v15;
  sub_217751DE8();
  sub_217751DE8();
  v31 = v17;
  sub_217751DE8();
  v32 = v18;
  sub_217751DE8();
  v33 = v116;
  sub_217751DE8();
  sub_217751DE8();
  if (v30 != -1)
  {
    swift_once();
  }

  v34 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v111 = sub_217752D28();

    v34 = v111;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v35 = v136;
  *&v11[*(v136 + 104)] = v34;
  v36 = v35;
  v37 = &v11[v35[29]];
  memcpy(&v11[v35[27]], v166, 0x161uLL);
  v38 = &v11[v36[28]];
  v39 = v117;
  *v38 = v120;
  *(v38 + 1) = v39;
  v38[16] = v119;
  v40 = v132;
  *v37 = v118;
  *(v37 + 1) = v40;
  *&v11[v36[30]] = v31;
  *&v11[v36[31]] = v32;
  *&v11[v36[32]] = v33;
  *&v11[v36[33]] = v20;
  v41 = v134;
  sub_21733CAD0();
  v42 = &v41[*(v133 + 20)];
  v43 = *(v42 + 1);
  if (v43 == 1)
  {
    v44 = v122;
    __swift_storeEnumTagSinglePayload(v122, 1, 1, v113);
  }

  else
  {
    v46 = *(v42 + 2);
    v45 = *(v42 + 3);
    v162[0] = *v42;
    v162[1] = v43;
    v162[2] = v46;
    v162[3] = v45;
    sub_217751DE8();
    sub_217751DE8();
    v44 = v122;
    CloudStation.AirTime.convertToStationAirTime()(v122);
  }

  sub_21733BBDC(v44, v11, &qword_27CB255C0, &unk_21775D480);
  memcpy(v163, v42 + 48, sizeof(v163));
  memcpy(v164, v42 + 48, sizeof(v164));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v164) == 1)
  {
    v47 = v167;
  }

  else
  {
    memcpy(v162, v164, 0x1B8uLL);
    memcpy(v137, v163, 0x1B8uLL);
    sub_21726A630(v137, v161, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v139);
    memcpy(v138, v162, sizeof(v138));
    sub_2171F0738(v138, &qword_27CB243F0, &qword_21775D690);
    memcpy(v161, v139, 0x221uLL);
    nullsub_1();
    v47 = v161;
  }

  memcpy(v162, v47, 0x221uLL);
  v48 = v121;
  memcpy(v161, &v11[v121], 0x221uLL);
  sub_2171F0738(v161, &qword_27CB24400, &unk_21775E9A0);
  memcpy(&v11[v48], v162, 0x221uLL);
  if (*(v42 + 62))
  {
    v49 = sub_217752DC8();
    if (v49 == 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    if (!v49)
    {
      v50 = 0;
    }

    v11[v115] = v50;
  }

  if ((v42[512] & 1) == 0)
  {
    v51 = v114;
    *v114 = *(v42 + 63) / 1000.0;
    *(v51 + 8) = 0;
  }

  *&v11[v36[8]] = *(v42 + 65);
  if (*(v42 + 74))
  {
    v52 = *(v42 + 73);
    v53 = *(v42 + 72);
    v54 = *(v42 + 71);
    v121 = *(v42 + 70);
    v122 = v53;
    v55 = *(v42 + 69);
    v56 = *(v42 + 68);
    v57 = *(v42 + 67);
    v119 = *(v42 + 66);
    v120 = v56;
    v132 = v52;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v119 = 0;
    v120 = 0;
    v55 = 0;
    v121 = 0;
    v122 = 0;
    v54 = 0;
    v132 = 0;
    v57 = 1;
  }

  v58 = v136;
  v59 = *(v136 + 40);
  v60 = *(v24 + 1);
  v160[0] = *v24;
  v160[1] = v60;
  v61 = *(v24 + 3);
  v160[2] = *(v24 + 2);
  v160[3] = v61;
  sub_217751DE8();
  sub_2171F0738(v160, &qword_27CB24B70, &unk_217759460);
  v62 = v120;
  *v24 = v119;
  *(v24 + 1) = v57;
  *(v24 + 2) = v62;
  *(v24 + 3) = v55;
  v63 = v122;
  *(v24 + 4) = v121;
  *(v24 + 5) = v54;
  v64 = v132;
  *(v24 + 6) = v63;
  *(v24 + 7) = v64;
  *&v11[v59] = *(v42 + 75);
  v65 = *(v42 + 76);
  v66 = v42[616];
  if (v66)
  {
    v65 = 0;
  }

  v67 = v58[12];
  v68 = &v11[v58[11]];
  *v68 = v65;
  v68[8] = v66;
  v11[v67] = v42[617];
  v69 = *(v42 + 79);
  if (v69)
  {
    v139[0] = *(v42 + 78);
    v139[1] = v69;
    v70 = *(v42 + 100);
    v138[0] = *(v42 + 99);
    v138[1] = v70;
    CloudStation.Kind.convertToStationKind(with:)(v138, &v159);
    sub_217751DE8();
    sub_217751DE8();
    v58 = v136;
    sub_217751DE8();

    v71 = v159;
  }

  else
  {
    sub_217751DE8();
    v71 = 14;
  }

  v72 = v134;
  v73 = &v11[v58[15]];
  v74 = &v11[v58[17]];
  v75 = &v11[v58[19]];
  v11[v123] = v71;
  v76 = *(v42 + 81);
  *v73 = *(v42 + 80);
  *(v73 + 1) = v76;
  memcpy(v157, v42 + 656, sizeof(v157));
  v77 = v124;
  memcpy(v158, &v11[v124], 0x78uLL);
  sub_217751DE8();
  sub_21726A630(v157, v139, &qword_27CB244D0, &unk_21775D620);
  sub_2171F0738(v158, &qword_27CB244D0, &unk_21775D620);
  memcpy(&v11[v77], v157, 0x78uLL);
  v78 = *(v42 + 5);
  *v74 = *(v42 + 4);
  *(v74 + 1) = v78;
  v79 = *(v42 + 98);
  *v75 = *(v42 + 97);
  *(v75 + 1) = v79;
  v80 = *(type metadata accessor for CloudStation.Attributes(0) + 76);
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(&v42[v80], &v11[v125], &unk_27CB277C0, &qword_217758DC0);
  v81 = *(v133 + 32);
  sub_21726A630(v72 + v81, v139, &qword_27CB24340, &unk_2177650B0);
  if (v139[6] == 1)
  {
    sub_2171F0738(v139, &qword_27CB24340, &unk_2177650B0);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 1;
  }

  else
  {
    v82 = v139[0];
    v85 = v139[1];
    v83 = v139[2];
    v84 = v139[3];
    sub_2172838F8(v139[0], v139[1], v139[2], v139[3]);
    sub_21726A258(v139);
  }

  v86 = v130;
  v87 = v126;
  sub_217283940(*v126, v126[1], v126[2], v126[3]);
  *v87 = v82;
  v87[1] = v85;
  v87[2] = v83;
  v87[3] = v84;
  sub_21726A630(v72 + v81, v139, &qword_27CB24340, &unk_2177650B0);
  v88 = v139[6];
  if (v139[6] == 1)
  {
    sub_2171F0738(v139, &qword_27CB24340, &unk_2177650B0);
    v89 = 0;
    v90 = 0;
    v91 = v136;
  }

  else
  {
    v89 = v139[4];
    v90 = v139[5];
    sub_2172E1074(v139[4], v139[5], v139[6]);
    sub_21726A258(v139);
    v91 = v136;
    if (v88)
    {
      sub_217751DE8();
      sub_2172E141C(v89, v90, v88);
    }

    else
    {
      v89 = 0;
      v90 = 0;
    }
  }

  v92 = &v11[*(v91 + 88)];
  *v92 = v89;
  v92[1] = v90;
  sub_21726A630(v72 + v81, v139, &qword_27CB24340, &unk_2177650B0);
  if (v139[6] == 1)
  {
    sub_2171F0738(v139, &qword_27CB24340, &unk_2177650B0);
    v93 = 0;
  }

  else
  {
    v93 = v139[7];
    sub_217751DE8();
    sub_21726A258(v139);
  }

  *&v11[*(v91 + 92)] = v93;
  sub_21726A630(v72 + v81, v139, &qword_27CB24340, &unk_2177650B0);
  if (v139[6] == 1)
  {
    v94 = &qword_27CB24340;
    v95 = &unk_2177650B0;
    v96 = v139;
LABEL_45:
    sub_2171F0738(v96, v94, v95);
    memset(v137, 0, 128);
    goto LABEL_47;
  }

  sub_21726A630(&v139[8], v138, &qword_27CB24228, &unk_21775D490);
  sub_21726A258(v139);
  if (v138[2] == 1)
  {
    v94 = &qword_27CB24228;
    v95 = &unk_21775D490;
    v96 = v138;
    goto LABEL_45;
  }

  sub_21726A630(v138, v137, &qword_27CB24230, &unk_21775E9D0);
  sub_217269DB0(v138);
LABEL_47:
  sub_21733BBDC(v137, v127, &qword_27CB24230, &unk_21775E9D0);
  sub_21726A630(v72 + v81, v139, &qword_27CB24340, &unk_2177650B0);
  if (v139[6] == 1)
  {
    sub_2171F0738(v139, &qword_27CB24340, &unk_2177650B0);
    v97 = v131;
LABEL_56:
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    memset(v156, 0, sizeof(v156));
    goto LABEL_57;
  }

  sub_21726A630(&v139[8], v138, &qword_27CB24228, &unk_21775D490);
  sub_21726A258(v139);
  v97 = v131;
  if (v138[2] == 1)
  {
    v98 = &qword_27CB24228;
    v99 = &unk_21775D490;
    v100 = v138;
LABEL_55:
    sub_2171F0738(v100, v98, v99);
    goto LABEL_56;
  }

  sub_21726A630(&v138[16], v137, &qword_27CB24240, &qword_217758668);
  v101 = sub_217269DB0(v138);
  if (!*&v137[1])
  {
    v98 = &qword_27CB24240;
    v99 = &qword_217758668;
    v100 = v137;
    goto LABEL_55;
  }

  v150 = 0;
  memset(v149, 0, sizeof(v149));
  MEMORY[0x28223BE20](v101);
  *(&v112 - 2) = v86;
  *(&v112 - 1) = v97;
  v103 = sub_2172E4ECC(sub_21733CEA0, (&v112 - 4), v102, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  sub_21726A630(v149, &v143, &qword_27CB24188, &dword_217758930);
  if (*(&v144 + 1))
  {
    sub_2171F0738(v149, &qword_27CB24188, &dword_217758930);
    v146 = v143;
    v147 = v144;
    v148 = v145;
  }

  else
  {
    v142 = 0;
    v141 = 0u;
    v140 = 0u;
    v105 = *&v137[4];
    if (*&v137[4])
    {
      v106 = *(&v137[3] + 1);
      sub_2172CA838(v97, &v152);
      *&v151 = v106;
      *(&v151 + 1) = v105;
      v107 = swift_allocObject();
      v108 = v152;
      *(v107 + 16) = v151;
      *(v107 + 32) = v108;
      *(v107 + 48) = v153;
      *(v107 + 64) = v154;
      sub_217751DE8();
      sub_2171F0738(&v140, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v149, &qword_27CB24188, &dword_217758930);
      *&v140 = v107;
      *(&v141 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v142 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(v149, &qword_27CB24188, &dword_217758930);
    }

    v146 = v140;
    v147 = v141;
    v148 = v142;
    if (*(&v144 + 1))
    {
      sub_2171F0738(&v143, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v137[0] + 1) == 1)
  {
    v109 = 0;
  }

  else
  {
    v109 = *&v137[0];
  }

  if (*(&v137[0] + 1) == 1)
  {
    v110 = 0;
  }

  else
  {
    v110 = *(&v137[0] + 1);
  }

  *&v151 = v103;
  BYTE8(v151) = 0;
  v152 = v146;
  v153 = v147;
  *&v154 = v148;
  *(&v154 + 1) = v109;
  *&v155 = v110;
  *(&v155 + 1) = *(&v137[1] + 1);
  v156[0] = *&v137[2];
  *&v156[1] = v137[7];
  sub_2171FB568(*&v137[0], *(&v137[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v137, &qword_27CB24248, &qword_217758670);
  v91 = v136;
LABEL_57:
  sub_21733BBDC(&v151, v128, &unk_27CB28A60, &qword_217770B60);
  v139[3] = v91;
  v139[4] = &protocol witness table for StationPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v139);
  sub_21733CAD0();
  Station.init(propertyProvider:)(v139, v129);

  sub_2171F0738(v135, &qword_27CB24738, &qword_217758CC0);
  sub_21733CA78(v72, type metadata accessor for CloudStation);
  sub_21733AB9C(v97);
  return sub_21733CA78(v11, type metadata accessor for StationPropertyProvider);
}

void *sub_2173088F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a1;
  v140 = a2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  MEMORY[0x28223BE20](v137);
  v138 = &v129 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v135);
  v136 = &v129 - v4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  MEMORY[0x28223BE20](v133);
  v134 = &v129 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  MEMORY[0x28223BE20](v131);
  v132 = &v129 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  MEMORY[0x28223BE20](v130);
  v8 = &v129 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v9);
  v11 = &v129 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  MEMORY[0x28223BE20](v12);
  v14 = &v129 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v15);
  v17 = &v129 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  MEMORY[0x28223BE20](v18);
  v20 = &v129 - v19;
  sub_217283E1C(v2, &v145);
  switch(v149)
  {
    case 1:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_217309580();
      sub_217284498(&v141);
      v85 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v86 = v15[10];
      v87 = &v17[v15[9]];
      v88 = *v87;
      v89 = *(v87 + 1);
      v90 = v87[16];
      v91 = *&v17[v15[12]];
      v138 = v15[11];
      v139 = v91;
      v92 = v15[14];
      v137 = *&v17[v15[13]];
      v94 = *&v17[v86];
      v93 = *&v17[v86 + 8];
      v95 = *&v17[v92];
      v96 = *&v17[v15[15]];
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v98 = v85 + v97[9];
      *v98 = v88;
      *(v98 + 8) = v89;
      *(v98 + 16) = v90;
      v99 = (v85 + v97[10]);
      *v99 = v94;
      v99[1] = v93;
      result = memcpy((v85 + v97[11]), &v138[v17], 0x180uLL);
      *(v85 + v97[12]) = v139;
      *(v85 + v97[13]) = v137;
      *(v85 + v97[14]) = v95;
      *(v85 + v97[15]) = v96;
      return result;
    case 2:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_21730B148(v139, v14);
      sub_2172842E4(&v141);
      v52 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v53 = v12[10];
      v54 = (v14 + v12[9]);
      v55 = *v54;
      v56 = *(v54 + 1);
      v57 = v54[16];
      v58 = *(v14 + v12[12]);
      v138 = v12[11];
      v139 = v58;
      v59 = v12[14];
      v137 = *(v14 + v12[13]);
      v61 = *(v14 + v53);
      v60 = *(v14 + v53 + 8);
      v62 = *(v14 + v59);
      v63 = *(v14 + v12[15]);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v65 = v52 + v64[9];
      *v65 = v55;
      *(v65 + 8) = v56;
      *(v65 + 16) = v57;
      v66 = (v52 + v64[10]);
      *v66 = v61;
      v66[1] = v60;
      result = memcpy((v52 + v64[11]), &v138[v14], 0x180uLL);
      *(v52 + v64[12]) = v139;
      *(v52 + v64[13]) = v137;
      *(v52 + v64[14]) = v62;
      *(v52 + v64[15]) = v63;
      return result;
    case 3:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_2172F34C8(v139);
      sub_217283C08(&v141);
      v67 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v68 = v9[10];
      v69 = &v11[v9[9]];
      v70 = *v69;
      v71 = *(v69 + 1);
      v72 = v69[16];
      v73 = *&v11[v9[12]];
      v138 = v9[11];
      v139 = v73;
      v74 = v9[14];
      v137 = *&v11[v9[13]];
      v76 = *&v11[v68];
      v75 = *&v11[v68 + 8];
      v77 = *&v11[v74];
      v78 = *&v11[v9[15]];
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v80 = v67 + v79[9];
      *v80 = v70;
      *(v80 + 8) = v71;
      *(v80 + 16) = v72;
      v81 = (v67 + v79[10]);
      *v81 = v76;
      v81[1] = v75;
      result = memcpy((v67 + v79[11]), &v138[v11], 0x180uLL);
      *(v67 + v79[12]) = v139;
      *(v67 + v79[13]) = v137;
      *(v67 + v79[14]) = v77;
      *(v67 + v79[15]) = v78;
      return result;
    case 4:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_2172F9998(v139);
      sub_21726B8C4(&v141);
      v37 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v38 = v130[10];
      v39 = &v8[v130[9]];
      v40 = *v39;
      v41 = *(v39 + 1);
      v42 = v39[16];
      v43 = *&v8[v130[12]];
      v138 = v130[11];
      v139 = v43;
      v44 = v130[14];
      v137 = *&v8[v130[13]];
      v45 = *&v8[v38];
      v46 = *&v8[v38 + 8];
      v47 = *&v8[v44];
      v48 = *&v8[v130[15]];
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v50 = v37 + v49[9];
      *v50 = v40;
      *(v50 + 8) = v41;
      *(v50 + 16) = v42;
      v51 = (v37 + v49[10]);
      *v51 = v45;
      v51[1] = v46;
      result = memcpy((v37 + v49[11]), &v138[v8], 0x180uLL);
      *(v37 + v49[12]) = v139;
      *(v37 + v49[13]) = v137;
      *(v37 + v49[14]) = v47;
      *(v37 + v49[15]) = v48;
      return result;
    case 5:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      v82 = v132;
      sub_21730BC14(v139, v132);
      sub_217284394(&v141);
      v83 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v100 = &v150;
      goto LABEL_10;
    case 6:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      v82 = v134;
      sub_21730C6EC(v139, v134);
      sub_217283CC4(&v141);
      v83 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v100 = &v151;
LABEL_10:
      v84 = *(v100 - 32);
      goto LABEL_11;
    case 7:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      v82 = v136;
      sub_21730D230(v139);
      sub_217283B58(&v141);
      v83 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v84 = v135;
LABEL_11:
      v101 = v84[10];
      v102 = v82 + v84[9];
      v103 = *v102;
      v104 = *(v102 + 8);
      v105 = *(v102 + 16);
      v106 = *(v82 + v84[12]);
      v138 = v84[11];
      v139 = v106;
      v107 = v84[14];
      v137 = *(v82 + v84[13]);
      v108 = *(v82 + v101);
      v109 = *(v82 + v101 + 8);
      v110 = *(v82 + v107);
      v111 = *(v82 + v84[15]);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v113 = v83 + v112[9];
      *v113 = v103;
      *(v113 + 8) = v104;
      *(v113 + 16) = v105;
      v114 = (v83 + v112[10]);
      *v114 = v108;
      v114[1] = v109;
      result = memcpy((v83 + v112[11]), &v138[v82], 0x180uLL);
      *(v83 + v112[12]) = v139;
      v115 = v112[13];
      v116 = v137;
      goto LABEL_13;
    case 8:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      v117 = v138;
      sub_21730FC14(v139);
      sub_217283DC8(&v141);
      v83 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v118 = v137[10];
      v119 = &v117[v137[9]];
      v120 = *v119;
      v121 = *(v119 + 1);
      v122 = v119[16];
      v123 = v137[12];
      v136 = v137[11];
      v139 = *&v117[v123];
      v124 = v137[14];
      v135 = *&v117[v137[13]];
      v125 = *&v117[v118];
      v126 = *&v117[v118 + 8];
      v110 = *&v117[v124];
      v111 = *&v117[v137[15]];
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v127 = v83 + v112[9];
      *v127 = v120;
      *(v127 + 8) = v121;
      *(v127 + 16) = v122;
      v128 = (v83 + v112[10]);
      *v128 = v125;
      v128[1] = v126;
      result = memcpy((v83 + v112[11]), &v117[v136], 0x180uLL);
      *(v83 + v112[12]) = v139;
      v115 = v112[13];
      v116 = v135;
LABEL_13:
      *(v83 + v115) = v116;
      *(v83 + v112[14]) = v110;
      *(v83 + v112[15]) = v111;
      break;
    default:
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_2172E9898(v139);
      sub_21725CE44(&v141);
      v21 = v140;
      sub_21733CE30();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v22 = v18[10];
      v23 = &v20[v18[9]];
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v23[16];
      v27 = *&v20[v18[12]];
      v138 = v18[11];
      v139 = v27;
      v28 = v18[14];
      v137 = *&v20[v18[13]];
      v30 = *&v20[v22];
      v29 = *&v20[v22 + 8];
      v31 = *&v20[v28];
      v32 = *&v20[v18[15]];
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v34 = v21 + v33[9];
      *v34 = v24;
      *(v34 + 8) = v25;
      *(v34 + 16) = v26;
      v35 = (v21 + v33[10]);
      *v35 = v30;
      v35[1] = v29;
      result = memcpy((v21 + v33[11]), &v138[v20], 0x180uLL);
      *(v21 + v33[12]) = v139;
      *(v21 + v33[13]) = v137;
      *(v21 + v33[14]) = v31;
      *(v21 + v33[15]) = v32;
      break;
  }

  return result;
}

void sub_217309580()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v2 = v0;
  v420 = v3;
  v423 = v4;
  v421 = type metadata accessor for CloudArtist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v422 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v406 - v9;
  v11 = type metadata accessor for CloudArtist.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  v424 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  OUTLINED_FUNCTION_189(v14);
  OUTLINED_FUNCTION_149();
  v21 = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v15, v16, v17, v18, v19, v20, v403, v404, v405);
  sub_2176CB030(v21, v22, v23, v24, v25, v26, v27, v28, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422);

  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v466) == 1)
  {
    sub_2172E22C0(v465);
  }

  else
  {
    memcpy(v434, v466, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v460);
    v29 = OUTLINED_FUNCTION_69_7();
    memcpy(v29, v434, 0x221uLL);
    v30 = OUTLINED_FUNCTION_69_7();
    sub_217284084(v30);
    memcpy(v434, v460, 0x1B8uLL);
    nullsub_1();
    memcpy(v465, v434, sizeof(v465));
  }

  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  v31 = sub_2172A3FF0();
  v417 = v32;
  v418 = v31;
  if (qword_280BE69D8 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C021B8, v32, v33, v34, v35, v36, v37, v38, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE68F0 != -1)
  {
    swift_once();
  }

  v419 = v10;
  v416 = sub_2172A494C(qword_280C02170);
  if (qword_280BE6998 != -1)
  {
    swift_once();
  }

  sub_2176CA7A8(qword_280C021A0, v39, v40, v41, v42, v43, v44, v45, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422);
  v461 = v448;
  v462 = v449[0];
  v463 = v449[1];
  v464 = v449[2];
  v46 = *(&v448 + 1);
  if (*(&v448 + 1) == 1)
  {
    v410 = 0;
    v411 = 0;
    v46 = 0;
    v412 = 0;
    v413 = 0;
    v414 = 0;
    v415 = 0uLL;
    v409 = 0;
  }

  else
  {
    v415 = v464;
    v47 = *(&v463 + 1);
    v413 = v463;
    v48 = *(&v462 + 1);
    v410 = v461;
    v411 = v462;
    sub_217751DE8();
    sub_217751DE8();
    v412 = v48;
    sub_217751DE8();
    v414 = v47;
    sub_217751DE8();
    v409 = sub_217751DC8();
    sub_2171F0738(&v461, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE68D0 != -1)
  {
    swift_once();
  }

  v408 = sub_2172A4930(qword_280C02158);
  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v407 = sub_2172A4364(qword_280C021D0);
  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v49, v50, v51, v52, v53, v54, v55, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), HIBYTE(v411), v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418);
  v64 = v63;
  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C021E0, v56, v57, v58, v59, v60, v61, v62, v406, v407, v408, v409, v410, v411, SWORD2(v411), SBYTE6(v411), HIBYTE(v411), v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418);
  v66 = v65;
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v67 = sub_2172A3FF0();
  if (v68)
  {
    v75 = v67;
  }

  else
  {
    v75 = 0;
  }

  if (v68)
  {
    v76 = v68;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  v77 = v424;
  sub_2176CA788(qword_280C02140, v68, v69, v70, v71, v72, v73, v74, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  memcpy(v77, v465, 0x1B8uLL);
  v78 = v417;
  v77[55] = v418;
  v77[56] = v78;
  sub_21726A594(v419, v77 + v11[6], &unk_27CB277C0, &qword_217758DC0);
  *(v77 + v11[7]) = v416;
  v79 = (v77 + v11[8]);
  v80 = v411;
  *v79 = v410;
  v79[1] = v46;
  v82 = v412;
  v81 = v413;
  v79[2] = v80;
  v79[3] = v82;
  v79[4] = v81;
  v83 = v415;
  v79[5] = v414;
  v79[6] = v83;
  v84 = v408;
  v85 = v409;
  v79[7] = *(&v415 + 1);
  v79[8] = v85;
  *(v77 + v11[9]) = v84;
  *(v77 + v11[10]) = v407;
  *(v77 + v11[11]) = v64;
  *(v77 + v11[12]) = v66;
  v86 = (v77 + v11[13]);
  *v86 = v75;
  v86[1] = v76;
  v460[1] = 0;
  v460[0] = 0;
  v460[2] = 1;
  bzero(&v460[3], 0x368uLL);
  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6888, v87, v88, v89, v90, v91, v92, v93, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE69A8 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280C021A8, v94, v95, v96, v97, v98, v99, v100, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  sub_2176CB058(qword_280C02168, v101, v102, v103, v104, v105, v106, v107, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  sub_2176CA750(qword_280BE6878, v108, v109, v110, v111, v112, v113, v114, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE69F0, v115, v116, v117, v118, v119, v120, v121, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6828, v122, v123, v124, v125, v126, v127, v128, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6848 != -1)
  {
    swift_once();
  }

  sub_2176CA450(qword_280BE6850, v129, v130, v131, v132, v133, v134, v135, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (v459[40] || v459[27] || v459[2] || v458[11] || v457[37] || v457[24] || v457[11])
  {
    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v136, v137, v138, v139);
    if (v450)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EBBF4();
      v140 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v140, v141, v142);
    }

    else
    {
      v143 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v143, v144, v145);
      OUTLINED_FUNCTION_199_0(0);
      v434[4] = v146;
      v434[5] = v146;
      v434[6] = v146;
      v434[7] = v146;
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v147, v148, v149, v150);
    if (v450)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EBD40();
      v151 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v151, v152, v153);
    }

    else
    {
      v154 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v154, v155, v156);
      OUTLINED_FUNCTION_114_2();
    }

    sub_21726A630(v459, v435, &qword_27CB24330, &unk_21775D460);
    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v157, v158, v159, v160);
    if (v450)
    {
      v161 = OUTLINED_FUNCTION_33_8();
      sub_2172EBE8C(v161, v162, v163);
      v164 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v164, v165, v166);
    }

    else
    {
      v167 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v167, v168, v169);
      OUTLINED_FUNCTION_42_7(0);
      OUTLINED_FUNCTION_111_4(v170);
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v171, v172, v173, v174);
    if (v450)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EC0A8();
      v175 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v175, v176, v177);
    }

    else
    {
      v178 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v178, v179, v180);
      memset(v432, 0, 64);
      OUTLINED_FUNCTION_51_6(0);
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v181, v182, v183, v184);
    if (v450)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EC1F4();
      v185 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v185, v186, v187);
    }

    else
    {
      v188 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v188, v189, v190);
      OUTLINED_FUNCTION_157_3();
    }

    OUTLINED_FUNCTION_146_2();
    sub_21726A630(v191, v192, v193, v194);
    if (v450)
    {
      OUTLINED_FUNCTION_33_8();
      sub_2172EC340();
      v195 = OUTLINED_FUNCTION_175_1();
      sub_2171F0738(v195, v196, v197);
      v198 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v198, v199, v200);
    }

    else
    {
      v201 = OUTLINED_FUNCTION_175_1();
      sub_2171F0738(v201, v202, v203);
      v204 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v204, v205, v206);
      OUTLINED_FUNCTION_173_2();
    }

    v207 = OUTLINED_FUNCTION_69_7();
    memcpy(v207, v434, 0x80uLL);
    memcpy(v451, v436, sizeof(v451));
    memcpy(v452, v435, sizeof(v452));
    memcpy(v453, v433, sizeof(v453));
    memcpy(v454, v432, sizeof(v454));
    memcpy(v455, v431, sizeof(v455));
    memcpy(v456, v430, sizeof(v456));
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_146_2();
    memcpy(v208, v209, 0x380uLL);
  }

  v448 = 0uLL;
  *&v449[0] = 1;
  bzero(v449 + 8, 0x568uLL);
  if (qword_280BE6950 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6958, v210, v211, v212, v213, v214, v215, v216, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6908 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6910, v217, v218, v219, v220, v221, v222, v223, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6980 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6988, v224, v225, v226, v227, v228, v229, v230, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE68F8 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6900, v231, v232, v233, v234, v235, v236, v237, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6A30 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A38, v238, v239, v240, v241, v242, v243, v244, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE69C8 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE69D0, v245, v246, v247, v248, v249, v250, v251, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6A10 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A18, v252, v253, v254, v255, v256, v257, v258, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6968 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280BE6970, v259, v260, v261, v262, v263, v264, v265, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6860 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6868, v266, v267, v268, v269, v270, v271, v272, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6A58 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE6A60, v273, v274, v275, v276, v277, v278, v279, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (qword_280BE6830 != -1)
  {
    swift_once();
  }

  sub_2176CB104(qword_280BE6838, v280, v281, v282, v283, v284, v285, v286, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, *(&v415 + 1), v416, v417, v418, v419, v420, v421, v422, v423, v424, *&v425[0], *(&v425[0] + 1));
  if (v447[11] || v446[11] || v445[11] || v444[11] || v443[11] || v442[11] || v441[11] || v440[11] || v439[11] || v438[11] || v437[11])
  {
    sub_21726A630(v447, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_114_2();
    }

    sub_21726A630(v446, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      memset(v435, 0, 128);
    }

    sub_21726A630(v445, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_42_7(0);
      OUTLINED_FUNCTION_111_4(v287);
    }

    sub_21726A630(v444, v434, &qword_27CB25330, &unk_21775E9B0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EC1F4();
      sub_2171F0738(v434, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25330, &unk_21775E9B0);
      memset(v432, 0, 64);
      OUTLINED_FUNCTION_51_6(0);
    }

    sub_21726A630(v443, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_157_3();
    }

    sub_21726A630(v442, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_173_2();
    }

    sub_21726A630(v441, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      memset(v429, 0, sizeof(v429));
    }

    sub_21726A630(v440, v434, &qword_27CB25310, &unk_21775D3D0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBD40();
      sub_2171F0738(v434, &qword_27CB25398, &unk_21776C4F0);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25310, &unk_21775D3D0);
      memset(v428, 0, sizeof(v428));
    }

    sub_21726A630(v439, v434, &qword_27CB25318, &qword_2177657C0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EBBF4();
      sub_2171F0738(v434, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25318, &qword_2177657C0);
      memset(v427, 0, sizeof(v427));
    }

    sub_21726A630(v438, v434, &qword_27CB25338, &unk_21775D3E0);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EC0A8();
      sub_2171F0738(v434, &qword_27CB25380, &unk_21775DAA0);
    }

    else
    {
      sub_2171F0738(v434, &qword_27CB25338, &unk_21775D3E0);
      memset(v426, 0, sizeof(v426));
    }

    sub_21726A630(v437, v434, &qword_27CB255A8, &unk_21775D450);
    if (*(&v434[5] + 1))
    {
      OUTLINED_FUNCTION_31_8();
      sub_2172EC48C();
      v288 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v288, v289, v290);
      sub_2171F0738(v434, &qword_27CB27820, &qword_21775DAB0);
    }

    else
    {
      v291 = OUTLINED_FUNCTION_69_7();
      sub_2171F0738(v291, v292, v293);
      sub_2171F0738(v434, &qword_27CB255A8, &unk_21775D450);
      *&v294 = OUTLINED_FUNCTION_156_2();
      v425[2] = v294;
      v425[3] = v294;
      v425[4] = v294;
      v425[5] = v294;
      v425[6] = v294;
      v425[7] = v294;
    }

    memcpy(v434, v436, 0x80uLL);
    memcpy(&v434[8], v435, 0x80uLL);
    memcpy(&v434[16], v433, 0x80uLL);
    memcpy(&v434[24], v432, 0x80uLL);
    memcpy(&v434[32], v431, 0x80uLL);
    memcpy(&v434[40], v430, 0x80uLL);
    memcpy(&v434[48], v429, 0x80uLL);
    memcpy(&v434[56], v428, 0x80uLL);
    memcpy(&v434[64], v427, 0x80uLL);
    memcpy(&v434[72], v426, 0x80uLL);
    memcpy(&v434[80], v425, 0x80uLL);
    v295 = OUTLINED_FUNCTION_69_7();
    memcpy(v295, v434, 0x580uLL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
  swift_allocObject();
  v296 = sub_2172E3DC4();
  sub_2172A44E0(v296);
  OUTLINED_FUNCTION_5_4();

  if ((v2 + 2) <= 1)
  {
    v297 = 1;
  }

  else
  {
    v297 = (v2 + 2);
  }

  v299 = *v2;
  v298 = v2[1];
  v300 = v421;
  v301 = v422;
  sub_21733CAD0();
  v302 = OUTLINED_FUNCTION_175_1();
  sub_21726A630(v302, v301 + v303, v304, v305);
  v306 = OUTLINED_FUNCTION_69_7();
  sub_21726A630(v306, v301 + v307, v308, v309);
  *v301 = v299;
  v301[1] = v298;
  *(v301 + *(v300 + 32)) = v297;
  v310 = v2[5];
  v311 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v310);
  v312 = *(v311 + 24);
  sub_217751DE8();
  v312(v435, v310, v311);
  nullsub_1();
  memcpy(v436, v435, 0x161uLL);
  sub_21733CAD0();
  v313 = v2[6];
  OUTLINED_FUNCTION_162_2(v2 + 2);
  v314 = OUTLINED_FUNCTION_5_4();
  v315(v314, v313);
  __swift_project_boxed_opaque_existential_1(v434, *(&v434[1] + 1));
  v316 = OUTLINED_FUNCTION_5_4();
  v317(v316);
  __swift_destroy_boxed_opaque_existential_1(v434);
  v420 = v432[1];
  v421 = v432[0];
  LODWORD(v419) = LOBYTE(v432[2]);
  v318 = v2[6];
  OUTLINED_FUNCTION_162_2(v2 + 2);
  v319 = OUTLINED_FUNCTION_5_4();
  v320(v319, v318);
  OUTLINED_FUNCTION_67(v434, *(&v434[1] + 1));
  v321 = OUTLINED_FUNCTION_5_4();
  v323 = v322(v321);
  v325 = v324;
  __swift_destroy_boxed_opaque_existential_1(v434);
  memcpy(v434, v436, 0x168uLL);
  *(&v434[22] + 1) = 0;
  v434[23] = 0uLL;
  nullsub_1();
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_124_4();
  v326 = OUTLINED_FUNCTION_15();
  v327(v326);
  v328 = v433[3];
  v329 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v329, v328);
  v331 = (*(v330 + 64))(v328);
  __swift_destroy_boxed_opaque_existential_1(v433);
  v332 = v2[5];
  v333 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v332);
  OUTLINED_FUNCTION_124_4();
  v334(v332, v333);
  v335 = v433[3];
  v336 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v336, v335);
  v338 = (*(v337 + 72))(v335);
  __swift_destroy_boxed_opaque_existential_1(v433);
  v339 = v2[5];
  v340 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v339);
  OUTLINED_FUNCTION_124_4();
  v341(v339, v340);
  v342 = v433[3];
  v343 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v343, v342);
  v345 = (*(v344 + 80))(v342);
  __swift_destroy_boxed_opaque_existential_1(v433);
  v346 = v2[5];
  v347 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v346);
  OUTLINED_FUNCTION_124_4();
  v348(v346, v347);
  v349 = v433[3];
  v350 = OUTLINED_FUNCTION_208_2();
  OUTLINED_FUNCTION_67(v350, v349);
  v352 = (*(v351 + 88))(v349);
  sub_21733CA78(v422, type metadata accessor for CloudArtist);
  v353 = OUTLINED_FUNCTION_69_7();
  sub_2171F0738(v353, &qword_27CB24AB0, &qword_217759088);
  v354 = OUTLINED_FUNCTION_175_1();
  sub_2171F0738(v354, &qword_27CB24328, &unk_21775D440);
  sub_21733CA78(v424, type metadata accessor for CloudArtist.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v433);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v356 = v423;
  v357 = v423 + v355[9];
  v358 = v420;
  *v357 = v421;
  *(v357 + 8) = v358;
  *(v357 + 16) = v419;
  v359 = (v356 + v355[10]);
  *v359 = v323;
  v359[1] = v325;
  v360 = v356;
  memcpy((v356 + v355[11]), v434, 0x180uLL);
  *(v360 + v355[12]) = v331;
  *(v360 + v355[13]) = v338;
  *(v360 + v355[14]) = v345;
  *(v360 + v355[15]) = v352;
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v361, v362, v363);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v364, v365, v366);
  sub_2171F0738(v437, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_206_2();
  sub_2171F0738(v367, v368, v369);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v370, v371, v372);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v373, v374, v375);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v376, v377, v378);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v379, v380, v381);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v382, v383, v384);
  OUTLINED_FUNCTION_82_4();
  sub_2171F0738(v385, v386, v387);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v388, v389, v390);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v391, v392, v393);
  sub_2171F0738(v457, &qword_27CB255B0, &unk_217793B50);
  OUTLINED_FUNCTION_82_4();
  sub_2171F0738(v394, v395, v396);
  OUTLINED_FUNCTION_206_2();
  sub_2171F0738(v397, v398, v399);
  sub_2171F0738(v458, &qword_27CB25320, &unk_21776E020);
  sub_2171F0738(v459, &qword_27CB24330, &unk_21775D460);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v400, v401, v402);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21730B148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a1;
  v117 = a2;
  v116 = type metadata accessor for CloudCurator(0);
  MEMORY[0x28223BE20](v116);
  v5 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CloudCurator.Attributes(0);
  MEMORY[0x28223BE20](v6);
  v118 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE8148 != -1)
  {
    swift_once();
  }

  sub_2176CAC7C(qword_280C02450, v7, v8, v9, v10, v11, v12, v13, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v139) == 1)
  {
    sub_2172E22C0(v119);
  }

  else
  {
    memcpy(v119, v139, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v121);
    memcpy(v120, v119, 0x221uLL);
    sub_217284084(v120);
    memcpy(v122, v121, sizeof(v122));
    nullsub_1();
    memcpy(v119, v122, 0x1B8uLL);
  }

  if (qword_280BE8190 != -1)
  {
    swift_once();
  }

  v115 = sub_2172A4778(qword_280C02478);
  if (qword_280BE81A8 != -1)
  {
    swift_once();
  }

  sub_2176CA390(qword_280C02488, v15, v16, v17, v18, v19, v20, v21, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3]);
  v22 = v132;
  if (v132 == 1)
  {
    v108 = 0;
    v109 = 0;
    v22 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v107 = 0;
  }

  else
  {
    v113 = v137;
    v114 = v138;
    v23 = v136;
    v111 = v135;
    v24 = v134;
    v108 = v131;
    v109 = v133;
    sub_217751DE8();
    sub_217751DE8();
    v110 = v24;
    sub_217751DE8();
    v112 = v23;
    sub_217751DE8();
    v107 = sub_217751DC8();
    sub_2171F0738(&v131, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE8180 != -1)
  {
    swift_once();
  }

  v106 = sub_2172A475C(qword_280C02470);
  if (qword_280BE8168 != -1)
  {
    swift_once();
  }

  sub_2176CA2D8(qword_280C02460, v25, v26, v27, v28, v29, v30, v31, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v119[5]);
  v32 = (LOBYTE(v120[0]) << 31 >> 31) & 3;
  if (qword_280BE8158 != -1)
  {
    swift_once();
  }

  v33 = sub_2172A4018();
  if (v34)
  {
    v41 = v33;
  }

  else
  {
    v41 = 0;
  }

  if (v34)
  {
    v42 = v34;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  if (qword_280BE8170 != -1)
  {
    swift_once();
  }

  v43 = v118;
  sub_2176CA370(qword_280C02468, v34, v35, v36, v37, v38, v39, v40, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v119[5], v119[6], v119[7]);
  memcpy(v43, v119, 0x1B8uLL);
  v52 = v108;
  v51 = v109;
  *(v43 + 440) = v115;
  *(v43 + 448) = v52;
  *(v43 + 456) = v22;
  *(v43 + 464) = v51;
  v53 = v111;
  *(v43 + 472) = v110;
  *(v43 + 480) = v53;
  v54 = v113;
  *(v43 + 488) = v112;
  *(v43 + 496) = v54;
  v55 = v106;
  v56 = v107;
  *(v43 + 504) = v114;
  *(v43 + 512) = v56;
  *(v43 + 520) = v55;
  *(v43 + 528) = v32;
  *(v43 + 536) = v41;
  *(v43 + 544) = v42;
  v130[1] = 0;
  v130[0] = 0;
  memset(&v130[3], 0, 104);
  v130[2] = 1;
  if (qword_280BE8138 != -1)
  {
    swift_once();
  }

  sub_2176CA354(qword_280BE8140, v44, v45, v46, v47, v48, v49, v50, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v119[5], v119[6], v119[7]);
  if (v129[11])
  {
    sub_21726A630(v129, v120, &qword_27CB25330, &unk_21775E9B0);
    if (v120[11])
    {
      sub_2172EC1F4();
      sub_2171F0738(v130, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v120, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v130, &qword_27CB24498, &unk_217758960);
      sub_2171F0738(v120, &qword_27CB25330, &unk_21775E9B0);
      memset(v123, 0, sizeof(v123));
    }

    memcpy(v130, v123, sizeof(v130));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
  swift_allocObject();
  v57 = sub_2172E3DC4();
  v58 = sub_2172A4740(v57);

  if (v58 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58;
  }

  v61 = *v3;
  v60 = v3[1];
  v62 = v116;
  sub_21733CAD0();
  sub_21726A630(v130, v5 + v62[6], &qword_27CB24498, &unk_217758960);
  v63 = v62[8];
  *(v5 + v63) = 1;
  *v5 = v61;
  v5[1] = v60;
  *(v5 + v62[7]) = 1;
  v64 = *(v5 + v63);
  sub_217751DE8();
  sub_217221010(v64);
  *(v5 + v63) = v59;
  v65 = v3[5];
  v66 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v65);
  (*(v66 + 24))(v121, v65, v66);
  nullsub_1();
  memcpy(v122, v121, 0x161uLL);
  v67 = v5;
  v68 = v117;
  sub_21733CAD0();
  v69 = v3[5];
  v70 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v69);
  (*(v70 + 96))(v120, v69, v70);
  v71 = v120[3];
  v72 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  (*(*(v72 + 8) + 48))(v127, v71);
  __swift_destroy_boxed_opaque_existential_1(v120);
  v115 = v127[1];
  v116 = v127[0];
  LODWORD(v114) = v128;
  v73 = v3[5];
  v74 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v73);
  (*(v74 + 96))(v120, v73, v74);
  v75 = v120[3];
  v76 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  v77 = (*(*(v76 + 8) + 56))(v75);
  v112 = v78;
  v113 = v77;
  __swift_destroy_boxed_opaque_existential_1(v120);
  memcpy(v120, v122, 0x168uLL);
  memset(&v120[45], 0, 24);
  nullsub_1();
  v79 = v3[5];
  v80 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v79);
  (*(v80 + 96))(v124, v79, v80);
  v81 = v125;
  v82 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v83 = (*(*(v82 + 8) + 64))(v81);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v84 = v3[5];
  v85 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v84);
  (*(v85 + 96))(v124, v84, v85);
  v86 = v125;
  v87 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v88 = (*(*(v87 + 8) + 72))(v86);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v90 = v3[5];
  v89 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v90);
  (*(v89 + 96))(v124, v90, v89);
  v91 = v125;
  v92 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v93 = (*(*(v92 + 8) + 80))(v91);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v94 = v3[5];
  v95 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v94);
  (*(v95 + 96))(v124, v94, v95);
  v96 = v125;
  v97 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v98 = (*(*(v97 + 8) + 88))(v96);
  sub_2171F0738(v130, &qword_27CB24498, &unk_217758960);
  sub_21733CA78(v118, type metadata accessor for CloudCurator.Attributes);
  sub_21733CA78(v67, type metadata accessor for CloudCurator);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v100 = v68 + v99[9];
  v101 = v115;
  *v100 = v116;
  *(v100 + 8) = v101;
  *(v100 + 16) = v114;
  v102 = (v68 + v99[10]);
  v103 = v112;
  *v102 = v113;
  v102[1] = v103;
  memcpy((v68 + v99[11]), v120, 0x180uLL);
  *(v68 + v99[12]) = v83;
  *(v68 + v99[13]) = v88;
  *(v68 + v99[14]) = v93;
  *(v68 + v99[15]) = v98;
  return sub_2171F0738(v129, &qword_27CB25330, &unk_21775E9B0);
}

uint64_t sub_21730BC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a1;
  v117 = a2;
  v116 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v116);
  v5 = (&v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CloudRadioShow.Attributes(0);
  MEMORY[0x28223BE20](v6);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6648 != -1)
  {
    swift_once();
  }

  sub_2176CAC70(qword_280C01FF8, v7, v8, v9, v10, v11, v12, v13, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v139) == 1)
  {
    sub_2172E22C0(v119);
  }

  else
  {
    memcpy(v119, v139, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v121);
    memcpy(v120, v119, 0x221uLL);
    sub_217284084(v120);
    memcpy(v122, v121, sizeof(v122));
    nullsub_1();
    memcpy(v119, v122, 0x1B8uLL);
  }

  if (qword_280BE6680 != -1)
  {
    swift_once();
  }

  v115 = sub_2172A4724(qword_280C02018);
  if (qword_280BE6698 != -1)
  {
    swift_once();
  }

  sub_2176CA348(qword_280C02028, v15, v16, v17, v18, v19, v20, v21, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1]);
  v22 = v132;
  if (v132 == 1)
  {
    v107 = 0;
    v108 = 0;
    v22 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v106 = 0;
  }

  else
  {
    v112 = v137;
    v113 = v138;
    v23 = v136;
    v110 = v135;
    v24 = v134;
    v107 = v131;
    v108 = v133;
    sub_217751DE8();
    sub_217751DE8();
    v109 = v24;
    sub_217751DE8();
    v111 = v23;
    sub_217751DE8();
    v106 = sub_217751DC8();
    sub_2171F0738(&v131, &qword_27CB24B70, &unk_217759460);
  }

  v114 = v22;
  if (qword_280BE6670 != -1)
  {
    swift_once();
  }

  v105 = sub_2172A4708(qword_280C02010);
  if (qword_280BE6638 != -1)
  {
    swift_once();
  }

  v25 = sub_2172A3F00(qword_280C01FF0);
  v27 = v26;
  if (qword_280BE6658 != -1)
  {
    swift_once();
  }

  v28 = sub_2172A3F00(qword_280C02000);
  if (v29)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0;
  }

  if (v29)
  {
    v37 = v29;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  if (qword_280BE6660 != -1)
  {
    swift_once();
  }

  v38 = v118;
  sub_2176CA328(qword_280C02008, v29, v30, v31, v32, v33, v34, v35, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v119[5]);
  memcpy(v38, v119, 0x1B8uLL);
  v46 = v107;
  *(v38 + 440) = v115;
  *(v38 + 448) = v46;
  v47 = v108;
  v48 = v109;
  *(v38 + 456) = v114;
  *(v38 + 464) = v47;
  v49 = v110;
  v50 = v111;
  *(v38 + 472) = v48;
  *(v38 + 480) = v49;
  v51 = v112;
  v52 = v113;
  *(v38 + 488) = v50;
  *(v38 + 496) = v51;
  v53 = v105;
  v54 = v106;
  *(v38 + 504) = v52;
  *(v38 + 512) = v54;
  *(v38 + 520) = v53;
  *(v38 + 528) = 2;
  *(v38 + 536) = v25;
  *(v38 + 544) = v27;
  *(v38 + 552) = v36;
  *(v38 + 560) = v37;
  v130[1] = 0;
  v130[0] = 0;
  memset(&v130[3], 0, 104);
  v130[2] = 1;
  if (qword_280BE6628 != -1)
  {
    swift_once();
  }

  sub_2176CA30C(qword_280BE6630, v39, v40, v41, v42, v43, v44, v45, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0], v119[1], v119[2], v119[3], v119[4], v119[5]);
  if (v129[11])
  {
    sub_21726A630(v129, v120, &qword_27CB25330, &unk_21775E9B0);
    if (v120[11])
    {
      sub_2172EC1F4();
      sub_2171F0738(v130, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v120, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v130, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v120, &qword_27CB25330, &unk_21775E9B0);
      memset(v123, 0, sizeof(v123));
    }

    memcpy(v130, v123, sizeof(v130));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
  swift_allocObject();
  v55 = sub_2172E3DC4();
  v56 = sub_2172A46EC(v55);

  if (v56 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v59 = *v3;
  v58 = v3[1];
  v60 = v116;
  sub_21733CAD0();
  sub_21726A630(v130, v5 + v60[6], &qword_27CB25640, &qword_217764750);
  v61 = v60[8];
  *(v5 + v61) = 1;
  *v5 = v59;
  v5[1] = v58;
  *(v5 + v60[7]) = 1;
  v62 = *(v5 + v61);
  sub_217751DE8();
  sub_217221010(v62);
  *(v5 + v61) = v57;
  v63 = v3[5];
  v64 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v63);
  (*(v64 + 24))(v121, v63, v64);
  nullsub_1();
  memcpy(v122, v121, 0x161uLL);
  v65 = v5;
  v66 = v117;
  sub_21733CAD0();
  v67 = v3[5];
  v68 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v67);
  (*(v68 + 96))(v120, v67, v68);
  v69 = v120[3];
  v70 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  (*(*(v70 + 8) + 48))(v127, v69);
  __swift_destroy_boxed_opaque_existential_1(v120);
  v115 = v127[1];
  v116 = v127[0];
  LODWORD(v114) = v128;
  v71 = v3[5];
  v72 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v71);
  (*(v72 + 96))(v120, v71, v72);
  v73 = v120[3];
  v74 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  v75 = (*(*(v74 + 8) + 56))(v73);
  v112 = v76;
  v113 = v75;
  __swift_destroy_boxed_opaque_existential_1(v120);
  memcpy(v120, v122, 0x168uLL);
  memset(&v120[45], 0, 24);
  nullsub_1();
  v77 = v3[5];
  v78 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v77);
  (*(v78 + 96))(v124, v77, v78);
  v79 = v125;
  v80 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v81 = (*(*(v80 + 8) + 64))(v79);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v82 = v3[5];
  v83 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v82);
  (*(v83 + 96))(v124, v82, v83);
  v84 = v125;
  v85 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v86 = (*(*(v85 + 8) + 72))(v84);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v88 = v3[5];
  v87 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v88);
  (*(v87 + 96))(v124, v88, v87);
  v89 = v125;
  v90 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v91 = (*(*(v90 + 8) + 80))(v89);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v92 = v3[5];
  v93 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v92);
  (*(v93 + 96))(v124, v92, v93);
  v94 = v125;
  v95 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v96 = (*(*(v95 + 8) + 88))(v94);
  sub_2171F0738(v130, &qword_27CB25640, &qword_217764750);
  sub_21733CA78(v118, type metadata accessor for CloudRadioShow.Attributes);
  sub_21733CA78(v65, type metadata accessor for CloudRadioShow);
  __swift_destroy_boxed_opaque_existential_1(v124);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v98 = v66 + v97[9];
  v99 = v115;
  *v98 = v116;
  *(v98 + 8) = v99;
  *(v98 + 16) = v114;
  v100 = (v66 + v97[10]);
  v101 = v112;
  *v100 = v113;
  v100[1] = v101;
  memcpy((v66 + v97[11]), v120, 0x180uLL);
  *(v66 + v97[12]) = v81;
  *(v66 + v97[13]) = v86;
  *(v66 + v97[14]) = v91;
  *(v66 + v97[15]) = v96;
  return sub_2171F0738(v129, &qword_27CB25330, &unk_21775E9B0);
}

uint64_t sub_21730C6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v104 = type metadata accessor for CloudRecordLabel(0);
  MEMORY[0x28223BE20](v104);
  v6 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CloudRecordLabel.Attributes(0);
  MEMORY[0x28223BE20](v7);
  v106 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27CB23B10 != -1)
  {
    swift_once();
  }

  sub_2176CA854(qword_27CB8A248, v8, v9, v10, v11, v12, v13, v14, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7], v107[8], v107[9]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v119) == 1)
  {
    sub_2172E22C0(v107);
  }

  else
  {
    memcpy(v107, v119, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v109);
    memcpy(v108, v107, 0x221uLL);
    sub_217284084(v108);
    memcpy(v110, v109, sizeof(v110));
    nullsub_1();
    memcpy(v107, v110, 0x1B8uLL);
  }

  if (qword_27CB23B38 != -1)
  {
    swift_once();
  }

  v16 = sub_2172A4004();
  v102 = v17;
  v103 = v16;
  if (qword_27CB23B40 != -1)
  {
    swift_once();
  }

  v18 = sub_2172A4004();
  v100 = v19;
  v101 = v18;
  v20 = sub_217751DC8();
  if (qword_27CB23B18 != -1)
  {
    swift_once();
  }

  v21 = sub_2172A48C0(qword_27CB8A250);
  if (qword_27CB23B20 != -1)
  {
    swift_once();
  }

  v99 = a1;
  v22 = sub_2172A48A4(qword_27CB8A258);
  if (qword_27CB23B30 != -1)
  {
    swift_once();
  }

  v23 = sub_2172A4004();
  if (v24)
  {
    v31 = v23;
  }

  else
  {
    v31 = 0;
  }

  if (v24)
  {
    v32 = v24;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  if (qword_27CB23B48 != -1)
  {
    swift_once();
  }

  v33 = v106;
  sub_2176CA39C(qword_27CB8A280, v24, v25, v26, v27, v28, v29, v30, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7], v107[8], v107[9], v107[10], v107[11], v107[12], v107[13]);
  memcpy(v33, v107, 0x1B8uLL);
  v34 = v102;
  v33[55] = v103;
  v33[56] = v34;
  v35 = v100;
  v33[57] = v101;
  v33[58] = v35;
  v33[59] = v20;
  v33[60] = v21;
  v33[61] = v22;
  v33[62] = v31;
  v33[63] = v32;
  v118[1] = 0;
  v118[0] = 0;
  v118[2] = 1;
  bzero(&v118[3], 0xE8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  swift_allocObject();
  v36 = sub_21736C3E8();
  sub_2176CAF84(v36, v37, v38, v39, v40, v41, v42, v43, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7], v107[8], v107[9], v107[10], v107[11], v107[12], v107[13]);

  swift_allocObject();
  v44 = sub_21736C3E8();
  sub_2176CAF84(v44, v45, v46, v47, v48, v49, v50, v51, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7], v107[8], v107[9], v107[10], v107[11], v107[12], v107[13]);

  if (v117[11] | v116[11])
  {
    sub_21726A630(v117, v108, &qword_27CB25318, &qword_2177657C0);
    if (v108[11])
    {
      sub_2172EBBF4();
      sub_2171F0738(v108, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v108, &qword_27CB25318, &qword_2177657C0);
      memset(v110, 0, 128);
    }

    sub_21726A630(v116, v108, &qword_27CB25318, &qword_2177657C0);
    if (v108[11])
    {
      sub_2172EBBF4();
      sub_2171F0738(v118, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v108, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v118, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v108, &qword_27CB25318, &qword_2177657C0);
      memset(v109, 0, 128);
    }

    memcpy(v108, v110, 0x80uLL);
    memcpy(&v108[16], v109, 0x80uLL);
    memcpy(v118, v108, sizeof(v118));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_allocObject();
  v52 = sub_2172E3DC4();
  v53 = sub_2172A4888(v52);

  if (v53 <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v53;
  }

  v56 = *v3;
  v55 = v3[1];
  v57 = v104;
  sub_21733CAD0();
  sub_21726A630(v118, v6 + v57[7], &qword_27CB24A98, &unk_217759060);
  *v6 = v56;
  v6[1] = v55;
  *(v6 + v57[6]) = 1;
  *(v6 + v57[8]) = v54;
  v58 = v3[5];
  v59 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v58);
  v60 = *(v59 + 24);
  sub_217751DE8();
  v60(v109, v58, v59);
  nullsub_1();
  memcpy(v110, v109, 0x161uLL);
  v61 = v6;
  v62 = v105;
  sub_21733CAD0();
  v63 = v3[5];
  v64 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v63);
  (*(v64 + 96))(v108, v63, v64);
  v65 = v108[3];
  v66 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  (*(*(v66 + 8) + 48))(v114, v65);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v103 = v114[1];
  v104 = v114[0];
  LODWORD(v102) = v115;
  v67 = v3[5];
  v68 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v67);
  (*(v68 + 96))(v108, v67, v68);
  v69 = v108[3];
  v70 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  v71 = (*(*(v70 + 8) + 56))(v69);
  v100 = v72;
  v101 = v71;
  __swift_destroy_boxed_opaque_existential_1(v108);
  memcpy(v108, v110, 0x168uLL);
  memset(&v108[45], 0, 24);
  nullsub_1();
  v73 = v3[5];
  v74 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v73);
  (*(v74 + 96))(v111, v73, v74);
  v75 = v112;
  v76 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  v77 = (*(*(v76 + 8) + 64))(v75);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v78 = v3[5];
  v79 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v78);
  (*(v79 + 96))(v111, v78, v79);
  v80 = v112;
  v81 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  v82 = (*(*(v81 + 8) + 72))(v80);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v84 = v3[5];
  v83 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v84);
  (*(v83 + 96))(v111, v84, v83);
  v85 = v112;
  v86 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  v87 = (*(*(v86 + 8) + 80))(v85);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v88 = v3[5];
  v89 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v88);
  (*(v89 + 96))(v111, v88, v89);
  v90 = v112;
  v91 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  v92 = (*(*(v91 + 8) + 88))(v90);
  sub_21733CA78(v61, type metadata accessor for CloudRecordLabel);
  sub_2171F0738(v118, &qword_27CB24A98, &unk_217759060);
  sub_21733CA78(v106, type metadata accessor for CloudRecordLabel.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v94 = v62 + v93[9];
  v95 = v103;
  *v94 = v104;
  *(v94 + 8) = v95;
  *(v94 + 16) = v102;
  v96 = (v62 + v93[10]);
  v97 = v100;
  *v96 = v101;
  v96[1] = v97;
  memcpy((v62 + v93[11]), v108, 0x180uLL);
  *(v62 + v93[12]) = v77;
  *(v62 + v93[13]) = v82;
  *(v62 + v93[14]) = v87;
  *(v62 + v93[15]) = v92;
  sub_2171F0738(v117, &qword_27CB25318, &qword_2177657C0);
  return sub_2171F0738(v116, &qword_27CB25318, &qword_2177657C0);
}

uint64_t sub_21730D230(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v441 = v3;
  v5 = v4;
  v6 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v386 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_2177517D8();
  v390 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v389 = &v386 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v10 - 8);
  v437 = &v386 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v386 - v13;
  v449 = type metadata accessor for CloudPreviewAsset(0);
  MEMORY[0x28223BE20](v449);
  v448 = &v386 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = type metadata accessor for PreviewAsset(0);
  v444 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v17 = &v386 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v445 = *(v18 - 8);
  v446 = v18;
  MEMORY[0x28223BE20](v18);
  v450 = &v386 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v386 - v21;
  v440 = type metadata accessor for CloudSong.Attributes(0);
  MEMORY[0x28223BE20](v440);
  v24 = &v386 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE96D8 != -1)
  {
    swift_once();
  }

  *&result = COERCE_DOUBLE(sub_2172A41F0());
  v439 = v26;
  if (v26)
  {
    v433 = 0;
    goto LABEL_9;
  }

  v33 = *&result * 1000.0;
  if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_200;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v33 < 9.22337204e18)
  {
    v433 = v33;
LABEL_9:
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    sub_2176CA860(qword_280C02840, v26, v27, v28, v29, v30, v31, v32, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
    memcpy(v485, v484, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v485) == 1)
    {
      sub_2172E22C0(v483);
    }

    else
    {
      memcpy(v465, v485, 0x221uLL);
      Artwork.convertToCloudArtworkAttribute()(v453);
      memcpy(v477, v465, 0x221uLL);
      sub_217284084(v477);
      memcpy(v465, v453, 0x1B8uLL);
      nullsub_1();
      memcpy(v483, v465, sizeof(v483));
    }

    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    v443 = v8;
    v34 = sub_2172A41AC();
    v431 = v35;
    v432 = v34;
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    v36 = sub_2172A41AC();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v39 = 0xE000000000000000;
    if (v37)
    {
      v39 = v37;
    }

    v429 = v39;
    v430 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    v40 = sub_2172E3DC0();
    sub_2176CA560(v40, v41, v42, v43, v44, v45, v46, v47, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);

    if (qword_280BE9920 != -1)
    {
      swift_once();
    }

    v435 = v6;
    v48 = sub_2172A41AC();
    v427 = v49;
    v428 = v48;
    if (qword_280BE9880 != -1)
    {
      swift_once();
    }

    v50 = qword_280BE9888;
    v58 = sub_2172A43DC(qword_280BE9888);
    if (qword_280BE97B8 != -1)
    {
      swift_once();
    }

    v436 = v5;
    v59 = qword_280C02888;
    sub_2172A43D0(qword_280C02888, v51, v52, v53, v54, v55, v56, v57, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    v426 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v58, v60, 0);
    v61 = v59;

    v62 = sub_2172A43DC(v50);
    sub_2172A43D0(v59, v63, v64, v65, v66, v67, v68, v69, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    v425 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v62, v70, 1);

    if (qword_280BE98B0 != -1)
    {
      swift_once();
    }

    v71 = sub_2172A41AC();
    v423 = v72;
    v424 = v71;
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    sub_2176CA5B8(qword_280C02910, v72, v73, v74, v75, v76, v77, v78, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
    if (LOBYTE(v477[0]) == 2)
    {
      v421 = 0;
      v422 = 0;
    }

    else
    {
      if (v477[0])
      {
        v79 = 0x746963696C707865;
      }

      else
      {
        v79 = 0x6E61656C63;
      }

      v80 = 0xE500000000000000;
      if (v477[0])
      {
        v80 = 0xE800000000000000;
      }

      v421 = v80;
      v422 = v79;
    }

    if (qword_280BE9950 != -1)
    {
      swift_once();
    }

    v420 = sub_2172A41C0();
    v419 = v81;
    if (qword_280BE97D0 != -1)
    {
      swift_once();
    }

    v418 = sub_2172A45A4(qword_280C02898);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v82, v83, v84, v85, v86, v87, v88, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
    v479 = v477[0];
    v480 = v477[1];
    v481 = v477[2];
    v482 = v477[3];
    v89 = *(&v477[0] + 1);
    if (*(&v477[0] + 1) == 1)
    {
      v411 = 0;
      v412 = 0;
      v89 = 0;
      v413 = 0;
      v414 = 0;
      v415 = 0;
      v416 = 0uLL;
      v410 = 0;
    }

    else
    {
      v416 = v482;
      v90 = *(&v481 + 1);
      v414 = v481;
      v91 = *(&v480 + 1);
      v411 = v479;
      v412 = v480;
      sub_217751DE8();
      sub_217751DE8();
      v413 = v91;
      sub_217751DE8();
      v415 = v90;
      sub_217751DE8();
      v410 = sub_217751DC8();
      sub_2171F0738(&v479, &qword_27CB24B70, &unk_217759460);
    }

    v417 = v89;
    if (qword_280BE9790 != -1)
    {
      swift_once();
    }

    v409 = sub_2172A4588(qword_280C02868);
    if (qword_280BE82C0 != -1)
    {
      swift_once();
    }

    v408 = sub_2172A456C(qword_280C02560);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    v405 = sub_2172A41D4(qword_280C02980);
    if (qword_280BE8260 != -1)
    {
      swift_once();
    }

    v99 = qword_280C02510;
    sub_2176CA5A0(qword_280C02510, v92, v93, v94, v95, v96, v97, v98, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
    v106 = *&v477[1];
    if (*&v477[1] == 1)
    {
      v407 = 2;
    }

    else
    {
      v407 = *&v477[0];
      sub_21733B290(*&v477[0], *(&v477[0] + 1), *&v477[1]);
    }

    sub_2176CA5A0(v99, v100, v106, v101, v102, v103, v104, v105, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
    v113 = *&v477[1];
    if (*&v477[1] == 1)
    {
      v406 = 2;
    }

    else
    {
      v406 = *&v477[0] >> 8;
      sub_21733B290(*&v477[0], *(&v477[0] + 1), *&v477[1]);
    }

    sub_2172A43D0(v61, v107, v113, v108, v109, v110, v111, v112, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    HIDWORD(v404) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v114, 1u);
    sub_2172A43D0(v61, v115, v116, v117, v118, v119, v120, v121, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    LODWORD(v404) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v122, 0);
    if (qword_280BE8270 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02520, v123, v124, v125, v126, v127, v128, v129, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    HIDWORD(v392) = v130;
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    v131 = sub_2172A41AC();
    v402 = v132;
    v403 = v131;
    if (qword_280BE9868 != -1)
    {
      swift_once();
    }

    v401 = sub_2172A41C0();
    HIDWORD(v400) = v133;
    if (qword_280BE98A0 != -1)
    {
      swift_once();
    }

    v134 = sub_2172A41AC();
    v398 = v135;
    v399 = v134;
    if (qword_280BE9808 != -1)
    {
      swift_once();
    }

    v397 = sub_2172A41C0();
    HIDWORD(v396) = v136;
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    v137 = sub_2172A41AC();
    if (v138)
    {
      v139 = v137;
    }

    else
    {
      v139 = 0;
    }

    v140 = 0xE000000000000000;
    if (v138)
    {
      v140 = v138;
    }

    v394 = v140;
    v395 = v139;
    if (qword_280BE8258 != -1)
    {
      swift_once();
    }

    v393 = sub_2172A4550(qword_280C02508);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    sub_2176CAA38(qword_280C028C0, v141, v142, v143, v144, v145, v146, v147, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    v148 = sub_2172A4534(qword_280C02900);
    v442 = v24;
    v434 = v22;
    if (v148)
    {
      v149 = v148;
      v150 = *(v148 + 16);
      if (v150)
      {
        v391 = v14;
        v388 = v2;
        v471[0] = MEMORY[0x277D84F90];
        sub_2172766B8(0, v150, 0);
        v151 = v471[0];
        v152 = *(v444 + 80);
        v387 = v149;
        v153 = v149 + ((v152 + 32) & ~v152);
        v444 = *(v444 + 72);
        for (i = v150 - 1; ; --i)
        {
          sub_21733CAD0();
          memcpy(v465, v17, 0x221uLL);
          memcpy(v477, v17, 0x221uLL);
          if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v477) == 1)
          {
            sub_2172E22C0(v455);
          }

          else
          {
            memcpy(v451, v477, 0x221uLL);
            memcpy(v452, v465, 0x221uLL);
            sub_217284028(v452, v453);
            Artwork.convertToCloudArtworkAttribute()(v454);
            memcpy(v453, v451, 0x221uLL);
            sub_217284084(v453);
            memcpy(v451, v454, 0x1B8uLL);
            nullsub_1();
            memcpy(v455, v451, sizeof(v455));
          }

          v156 = v447;
          v155 = v448;
          v157 = v449;
          sub_21726A630(&v17[*(v447 + 20)], &v448[*(v449 + 20)], &unk_27CB277C0, &qword_217758DC0);
          sub_21726A630(&v17[*(v156 + 24)], v155 + *(v157 + 24), &unk_27CB277C0, &qword_217758DC0);
          memcpy(v155, v455, 0x1B8uLL);
          v158 = v450;
          sub_21733CAD0();
          v159 = sub_217751DC8();
          sub_21733CA78(v155, type metadata accessor for CloudPreviewAsset);
          sub_21733CA78(v17, type metadata accessor for PreviewAsset);
          v160 = v158;
          *&v158[*(v446 + 28)] = v159;
          v471[0] = v151;
          v162 = *(v151 + 16);
          v161 = *(v151 + 24);
          if (v162 >= v161 >> 1)
          {
            sub_2172766B8((v161 > 1), v162 + 1, 1);
            v160 = v450;
            v151 = v471[0];
          }

          *(v151 + 16) = v162 + 1;
          sub_21726A594(v160, v151 + ((*(v445 + 80) + 32) & ~*(v445 + 80)) + *(v445 + 72) * v162, &qword_27CB24A68, &qword_217759030);
          if (!i)
          {
            break;
          }

          v153 += v444;
        }

        v2 = v388;
        v14 = v391;
      }

      else
      {

        v151 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v151 = 0;
    }

    v163 = v438;
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for CloudFormatter(0);
    v172 = __swift_project_value_buffer(v164, qword_280BE8918);
    if (qword_280BE98F0 != -1)
    {
      swift_once();
    }

    sub_2176CA580(qword_280C02950, v165, v166, v167, v168, v169, v170, v171, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    v173 = v437;
    sub_21726A630(v14, v437, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v173, 1, v163) == 1)
    {
      sub_2171F0738(v14, &qword_27CB241C0, &qword_217759480);
      sub_2171F0738(v173, &qword_27CB241C0, &qword_217759480);
      v450 = 0;
      v449 = 0;
    }

    else
    {
      v181 = v390;
      v182 = *(v390 + 32);
      v391 = v14;
      v183 = v389;
      v182(v389, v173, v163);
      v184 = *(v172 + *(v164 + 20));
      v185 = sub_2177517A8();
      v186 = [v184 stringFromDate_];

      v450 = sub_217751F48();
      v449 = v187;

      (*(v181 + 8))(v183, v163);
      sub_2171F0738(v391, &qword_27CB241C0, &qword_217759480);
    }

    if (qword_280BE8288 != -1)
    {
      swift_once();
    }

    sub_2176CAA44(qword_280C02530, v174, v175, v176, v177, v178, v179, v180, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
    if (qword_280BE98E8 != -1)
    {
      swift_once();
    }

    v188 = BYTE4(v392) & 1;
    v448 = sub_2172A41C0();
    v196 = v189;
    if (qword_280BE9770 != -1)
    {
      swift_once();
    }

    v197 = v440;
    v198 = v442;
    sub_2176CA560(qword_280C02858, v189, v190, v191, v192, v193, v194, v195, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE96C8 != -1)
    {
      swift_once();
    }

    v199 = sub_2172A41AC();
    v201 = v200;
    v202 = v2;
    if (v405)
    {
      v203 = v405;
    }

    else
    {
      v203 = MEMORY[0x277D84F90];
    }

    memcpy(v198, v483, 0x1B8uLL);
    v204 = v431;
    v198[55] = v432;
    v198[56] = v204;
    v205 = v429;
    v198[57] = v430;
    v198[58] = v205;
    sub_21726A594(v434, v198 + v197[7], &unk_27CB277C0, &qword_217758DC0);
    v206 = (v198 + v197[8]);
    v207 = v427;
    *v206 = v428;
    v206[1] = v207;
    v208 = v425;
    *(v198 + v197[9]) = v426;
    *(v198 + v197[10]) = v208;
    v209 = (v198 + v197[11]);
    v210 = v423;
    *v209 = v424;
    v209[1] = v210;
    v211 = (v198 + v197[12]);
    v212 = v421;
    *v211 = v422;
    v211[1] = v212;
    v213 = v198 + v197[13];
    *v213 = v420;
    v213[8] = v419 & 1;
    v214 = v198 + v197[14];
    *v214 = v433;
    v214[8] = v439 & 1;
    *(v198 + v197[15]) = v418;
    v215 = (v198 + v197[16]);
    v216 = v417;
    *v215 = v411;
    v215[1] = v216;
    v217 = v413;
    v215[2] = v412;
    v215[3] = v217;
    v218 = v415;
    v215[4] = v414;
    v215[5] = v218;
    v219 = *(&v416 + 1);
    v215[6] = v416;
    v215[7] = v219;
    v220 = v409;
    v215[8] = v410;
    *(v198 + v197[17]) = v220;
    LOBYTE(v220) = v407;
    *(v198 + v197[18]) = v408;
    *(v198 + v197[19]) = v203;
    *(v198 + v197[20]) = v220;
    *(v198 + v197[21]) = v406;
    LOBYTE(v220) = v404;
    *(v198 + v197[22]) = BYTE4(v404);
    *(v198 + v197[23]) = v220;
    *(v198 + v197[24]) = v188;
    v221 = (v198 + v197[25]);
    v222 = v402;
    *v221 = v403;
    v221[1] = v222;
    v223 = v198 + v197[26];
    *v223 = v401;
    v223[8] = BYTE4(v400) & 1;
    v224 = (v198 + v197[27]);
    v225 = v398;
    *v224 = v399;
    v224[1] = v225;
    v226 = v198 + v197[28];
    *v226 = v397;
    v226[8] = BYTE4(v396) & 1;
    v227 = (v198 + v197[29]);
    v228 = v394;
    *v227 = v395;
    v227[1] = v228;
    *(v198 + v197[30]) = v393;
    memcpy(v198 + v197[31], v478, 0x78uLL);
    *(v198 + v197[32]) = v151;
    v229 = (v198 + v197[33]);
    v230 = v449;
    *v229 = v450;
    v229[1] = v230;
    memcpy(v198 + v197[34], v455, 0xB0uLL);
    v238 = v197[35];
    v239 = v198 + v197[36];
    *v239 = v448;
    v239[8] = v196 & 1;
    v240 = (v198 + v197[38]);
    *v240 = v199;
    v240[1] = v201;
    if (qword_280BE8280 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02528, v231, v232, v233, v234, v235, v236, v237, v386, v387, v388, v389, v390, v391, SWORD2(v391), SBYTE6(v391), HIBYTE(v391), v392, v393, v394, v395, v396, v397, v398, v399);
    *(v198 + v238) = v241;
    v477[0] = 0uLL;
    *&v477[1] = 1;
    bzero(&v477[1] + 8, 0x5E8uLL);
    v249 = v202;
    if (qword_280BE9738 != -1)
    {
      swift_once();
    }

    sub_2176CA544(qword_280BE9740, v242, v243, v244, v245, v246, v247, v248, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    v257 = v441;
    if (qword_280BE82D0 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280C02568, v250, v251, v252, v253, v254, v255, v256, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE9710 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE9718, v258, v259, v260, v261, v262, v263, v264, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE9848 != -1)
    {
      swift_once();
    }

    sub_2176CAAF4(qword_280C028F8, v265, v266, v267, v268, v269, v270, v271, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE98B8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280C02930, v272, v273, v274, v275, v276, v277, v278, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE96B0 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE96B8, v279, v280, v281, v282, v283, v284, v285, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE8250 != -1)
    {
      swift_once();
    }

    sub_2176CAB2C(qword_280C02500, v286, v287, v288, v289, v290, v291, v292, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE9890 != -1)
    {
      swift_once();
    }

    sub_2176CAB48(qword_280C02918, v293, v294, v295, v296, v297, v298, v299, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE9720 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280BE9728, v300, v301, v302, v303, v304, v305, v306, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE96F8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280BE9700, v307, v308, v309, v310, v311, v312, v313, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE9900 != -1)
    {
      swift_once();
    }

    sub_2176CAB64(qword_280BE9908, v314, v315, v316, v317, v318, v319, v320, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (qword_280BE96E8 != -1)
    {
      swift_once();
    }

    sub_2176CAB80(qword_280BE96F0, v321, v322, v323, v324, v325, v326, v327, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);
    if (v476[11] || v475[11] || v474[11] || v454[2] || v473[11] || v472[11] || v471[2] || v470[2] || v469[11] || v468[11] || v467[11] || v466[11])
    {
      sub_21726A630(v476, v465, &qword_27CB25318, &qword_2177657C0);
      if (v465[11])
      {
        sub_2172EBBF4();
        sub_2171F0738(v465, &qword_27CB25388, &unk_21775D410);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25318, &qword_2177657C0);
        memset(v453, 0, 128);
      }

      sub_21726A630(v475, v465, &qword_27CB25320, &unk_21776E020);
      if (v465[11])
      {
        sub_2172EBE8C(v257, 0, v452);
        sub_2171F0738(v465, &qword_27CB27C80, &unk_21775D420);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25320, &unk_21776E020);
        memset(v452, 0, 128);
      }

      sub_21726A630(v474, v465, &qword_27CB25310, &unk_21775D3D0);
      if (v465[11])
      {
        sub_2172EBD40();
        sub_2171F0738(v465, &qword_27CB25398, &unk_21776C4F0);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25310, &unk_21775D3D0);
        memset(v451, 0, 128);
      }

      sub_21726A630(v454, v464, &qword_27CB255E0, &unk_2177756D0);
      sub_21726A630(v473, v465, &qword_27CB255A8, &unk_21775D450);
      if (v465[11])
      {
        sub_2172EC48C();
        sub_2171F0738(v465, &qword_27CB27820, &qword_21775DAB0);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB255A8, &unk_21775D450);
        memset(v463, 0, sizeof(v463));
      }

      sub_21726A630(v472, v465, &qword_27CB25310, &unk_21775D3D0);
      if (v465[11])
      {
        sub_2172EBD40();
        sub_2171F0738(v465, &qword_27CB25398, &unk_21776C4F0);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25310, &unk_21775D3D0);
        memset(v462, 0, sizeof(v462));
      }

      sub_21726A630(v471, v461, &qword_27CB255D8, &unk_21775D4B0);
      sub_21726A630(v470, v460, &qword_27CB255D0, &qword_21775D4A8);
      sub_21726A630(v469, v465, &qword_27CB25320, &unk_21776E020);
      if (v465[11])
      {
        sub_2172EBE8C(v257, 0, v459);
        sub_2171F0738(v465, &qword_27CB27C80, &unk_21775D420);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25320, &unk_21776E020);
        memset(v459, 0, sizeof(v459));
      }

      sub_21726A630(v468, v465, &qword_27CB255A8, &unk_21775D450);
      if (v465[11])
      {
        sub_2172EC48C();
        sub_2171F0738(v465, &qword_27CB27820, &qword_21775DAB0);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB255A8, &unk_21775D450);
        memset(v458, 0, sizeof(v458));
      }

      sub_21726A630(v467, v465, &qword_27CB25338, &unk_21775D3E0);
      if (v465[11])
      {
        sub_2172EC0A8();
        sub_2171F0738(v465, &qword_27CB25380, &unk_21775DAA0);
      }

      else
      {
        sub_2171F0738(v465, &qword_27CB25338, &unk_21775D3E0);
        memset(v457, 0, sizeof(v457));
      }

      sub_21726A630(v466, v465, &qword_27CB255B0, &unk_217793B50);
      if (v465[11])
      {
        sub_2172EC340();
        sub_2171F0738(v477, &qword_27CB24A78, &qword_217759040);
        sub_2171F0738(v465, &qword_27CB255B8, &unk_21775D470);
      }

      else
      {
        sub_2171F0738(v477, &qword_27CB24A78, &qword_217759040);
        sub_2171F0738(v465, &qword_27CB255B0, &unk_217793B50);
        memset(v456, 0, sizeof(v456));
      }

      memcpy(v465, v453, 0x80uLL);
      memcpy(&v465[16], v452, 0x80uLL);
      memcpy(&v465[32], v451, 0x80uLL);
      memcpy(&v465[48], v464, 0x80uLL);
      memcpy(&v465[64], v463, 0x80uLL);
      memcpy(&v465[80], v462, 0x80uLL);
      memcpy(&v465[96], v461, 0x80uLL);
      memcpy(&v465[112], v460, 0x80uLL);
      memcpy(&v465[128], v459, 0x80uLL);
      memcpy(&v465[144], v458, 0x80uLL);
      memcpy(&v465[160], v457, 0x80uLL);
      memcpy(&v465[176], v456, 0x80uLL);
      memcpy(v477, v465, sizeof(v477));
    }

    if (qword_280BE8268 != -1)
    {
      swift_once();
    }

    v328 = sub_2172A4518(qword_280C02518);
    if (qword_280BE9938 != -1)
    {
      swift_once();
    }

    v329 = sub_2172A41F0();
    v331 = v330;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25480, &unk_2177756F0);
    swift_allocObject();
    v332 = sub_2172E3DC4();
    v333 = sub_2172A44FC(v332);

    v453[3] = &type metadata for Song;
    v453[4] = &protocol witness table for Song;
    v453[0] = swift_allocObject();
    sub_217283AFC(v249, v453[0] + 16);
    v334 = __swift_project_boxed_opaque_existential_1(v453, &type metadata for Song);
    sub_21729C5E8((v334 + 2), v451);
    v335 = v451[3];
    v336 = v451[4];
    __swift_project_boxed_opaque_existential_1(v451, v451[3]);
    (*(v336 + 24))(v465, v335, v336);
    sub_21729C644(v451);
    memcpy(v452, v465, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v453);
    v337 = v452[33];
    sub_217751DE8();
    sub_217269F50(v452);
    if (v328 <= 1)
    {
      v338 = 1;
    }

    else
    {
      v338 = v328;
    }

    if (!v328 && (v331 & 1) != 0)
    {
      if (!v333 && !*(v337 + 16))
      {

        v449 = 0;
        v450 = 0;
        v340 = 0;
        v337 = 0;
        v339 = 1;
        goto LABEL_197;
      }

      v338 = 1;
    }

    v449 = v338;
    v339 = v333;
    v450 = v329;
    v340 = v331 & 1;
LABEL_197:
    v341 = *v249;
    v342 = v249[1];
    v343 = v435;
    v344 = v443;
    sub_21733CAD0();
    sub_21726A630(v477, v344 + v343[6], &qword_27CB24A78, &qword_217759040);
    *v344 = v341;
    v344[1] = v342;
    *(v344 + v343[7]) = 1;
    v345 = (v344 + v343[8]);
    v346 = v450;
    *v345 = v449;
    v345[1] = v346;
    v345[2] = v340;
    v345[3] = v339;
    v345[4] = v337;
    v347 = v249[5];
    v348 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v347);
    v349 = *(v348 + 24);
    sub_217751DE8();
    v349(v451, v347, v348);
    nullsub_1();
    memcpy(v453, v451, 0x161uLL);
    v350 = v436;
    sub_21733CAD0();
    v351 = v249[5];
    v352 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v351);
    (*(v352 + 96))(v465, v351, v352);
    v353 = v465[3];
    v354 = v465[4];
    __swift_project_boxed_opaque_existential_1(v465, v465[3]);
    (*(*(v354 + 8) + 48))(v463, v353);
    __swift_destroy_boxed_opaque_existential_1(v465);
    v449 = *(&v463[0] + 1);
    v450 = *&v463[0];
    LODWORD(v448) = LOBYTE(v463[1]);
    v355 = v249[5];
    v356 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v355);
    (*(v356 + 96))(v465, v355, v356);
    v357 = v465[3];
    v358 = v465[4];
    __swift_project_boxed_opaque_existential_1(v465, v465[3]);
    v359 = (*(*(v358 + 8) + 56))(v357);
    v446 = v360;
    v447 = v359;
    __swift_destroy_boxed_opaque_existential_1(v465);
    memcpy(v465, v453, 0x168uLL);
    memset(&v465[45], 0, 24);
    nullsub_1();
    v361 = v249[5];
    v362 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v361);
    (*(v362 + 96))(v464, v361, v362);
    v363 = v464[3];
    v364 = v464[4];
    __swift_project_boxed_opaque_existential_1(v464, v464[3]);
    v365 = (*(*(v364 + 8) + 64))(v363);
    __swift_destroy_boxed_opaque_existential_1(v464);
    v366 = v249[5];
    v367 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v366);
    (*(v367 + 96))(v464, v366, v367);
    v368 = v464[3];
    v369 = v464[4];
    __swift_project_boxed_opaque_existential_1(v464, v464[3]);
    v370 = (*(*(v369 + 8) + 72))(v368);
    __swift_destroy_boxed_opaque_existential_1(v464);
    v372 = v249[5];
    v371 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v372);
    (*(v371 + 96))(v464, v372, v371);
    v373 = v464[3];
    v374 = v464[4];
    __swift_project_boxed_opaque_existential_1(v464, v464[3]);
    v375 = (*(*(v374 + 8) + 80))(v373);
    __swift_destroy_boxed_opaque_existential_1(v464);
    v377 = v249[5];
    v376 = v249[6];
    __swift_project_boxed_opaque_existential_1(v249 + 2, v377);
    (*(v376 + 96))(v464, v377, v376);
    v378 = v464[3];
    v379 = v464[4];
    __swift_project_boxed_opaque_existential_1(v464, v464[3]);
    v380 = (*(*(v379 + 8) + 88))(v378);
    sub_21733CA78(v443, type metadata accessor for CloudSong);
    sub_2171F0738(v477, &qword_27CB24A78, &qword_217759040);
    sub_21733CA78(v442, type metadata accessor for CloudSong.Attributes);
    __swift_destroy_boxed_opaque_existential_1(v464);
    v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
    v382 = v350 + v381[9];
    v383 = v449;
    *v382 = v450;
    *(v382 + 8) = v383;
    *(v382 + 16) = v448;
    v384 = (v350 + v381[10]);
    v385 = v446;
    *v384 = v447;
    v384[1] = v385;
    memcpy((v350 + v381[11]), v465, 0x180uLL);
    *(v350 + v381[12]) = v365;
    *(v350 + v381[13]) = v370;
    *(v350 + v381[14]) = v375;
    *(v350 + v381[15]) = v380;
    sub_2171F0738(v476, &qword_27CB25318, &qword_2177657C0);
    sub_2171F0738(v466, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(v467, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(v468, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v469, &qword_27CB25320, &unk_21776E020);
    sub_2171F0738(v470, &qword_27CB255D0, &qword_21775D4A8);
    sub_2171F0738(v471, &qword_27CB255D8, &unk_21775D4B0);
    sub_2171F0738(v472, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(v473, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(v454, &qword_27CB255E0, &unk_2177756D0);
    sub_2171F0738(v474, &qword_27CB25310, &unk_21775D3D0);
    *&result = COERCE_DOUBLE(sub_2171F0738(v475, &qword_27CB25320, &unk_21776E020));
    return result;
  }

LABEL_201:
  __break(1u);
  return result;
}