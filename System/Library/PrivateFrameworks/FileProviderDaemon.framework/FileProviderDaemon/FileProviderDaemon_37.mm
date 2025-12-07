void sub_1CF411C70(int a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, int64_t a7, int a8)
{
  LODWORD(v601) = a8;
  v600 = a7;
  v597 = a5;
  v598 = a6;
  v602 = a4;
  v596 = a3;
  v593 = a2;
  LODWORD(v599) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v592 = &v567 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v585 = &v567 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v587 = (&v567 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v590 = *(v14 - 1);
  v591 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v586 = &v567 - v15;
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  MEMORY[0x1EEE9AC00](v588);
  v589 = (&v567 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v567 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v567 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v567 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v567 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v594 = *(v29 - 8);
  v595 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v567 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v567 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v567 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v567 - v39;
  v41 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v567 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  v55 = &v567 - v54;
  v629 = v600;
  v630 = v601;
  v56 = *v51;
  v57 = *(v51 + 16);
  v58 = *(v51 + 96);
  if (*(v51 + 97) == 6)
  {
    v59 = 4096;
  }

  else
  {
    v59 = 69632;
  }

  v60 = v599;
  if (v599 > 5u)
  {
    if (v599 <= 0x16u)
    {
      v61 = v598;
      if (v599 == 6)
      {
        if (v56)
        {
          if (*(v597[4] + 32) == 1)
          {
            v62 = !*(v51 + 240) || v58 == 3;
            if (v62)
            {
              ++v59;
            }
          }

          *&v626[0] = *v51;
          WORD4(v626[0]) = 0;
          LOBYTE(v626[1]) = 1;
          BYTE2(v626[5]) = 10;
          v628[2] = v626[2];
          v628[3] = v626[3];
          v628[4] = v626[4];
          *(&v628[4] + 15) = *(&v626[4] + 15);
          v628[0] = v626[0];
          v628[1] = v626[1];
          BYTE3(v628[7]) = 10;
          v63 = *(*v598 + 136);
          v64 = v56;
          v65 = v59;
          v66 = v56;
          v63(v628);
          sub_1CEFCCC44(v626, &qword_1EC4BFD48, &qword_1CFA05460);
          v599 = v65;
          if ((v65 & 0x10000) != 0)
          {
            *&v627[0] = v64;
            WORD4(v627[0]) = 0;
            LOBYTE(v627[1]) = 3;
            BYTE2(v627[7]) = 10;
            v628[4] = v627[4];
            v628[5] = v627[5];
            v628[6] = v627[6];
            *(&v628[6] + 15) = *(&v627[6] + 15);
            v628[0] = v627[0];
            v628[1] = v627[1];
            v628[2] = v627[2];
            v628[3] = v627[3];
            BYTE3(v628[7]) = 9;
            v67 = v66;
            v63(v628);
            sub_1CEFCCC44(v627, &unk_1EC4BFD60, &qword_1CFA05468);
          }

          v68 = (v602 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
          v69 = swift_allocObject();
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0u;
          *(v69 + 48) = 1;
          *(v69 + 56) = 0u;
          *(v69 + 72) = 0u;
          *(v69 + 88) = 0;
          *(v69 + 120) = *v68;
          *(v69 + 136) = v599;
          *(v69 + 144) = v66;
          *(v69 + 96) = xmmword_1CFA04E20;
          *(v69 + 112) = 0;
          v70 = sub_1CF47AFBC(0x2000);
          v71 = v66;

          (*(*v61 + 144))(v70);
LABEL_61:

          return;
        }

        goto LABEL_298;
      }

      if (v599 == 12)
      {
        if (v56)
        {
          v108 = 128;
          if (*(v51 + 216) == 255)
          {
            v108 = 32;
          }

          v109 = v108 | v59;
          *&v627[0] = *v51;
          WORD4(v627[0]) = 0;
          v627[1] = 0uLL;
          LOBYTE(v627[2]) = 2;
          BYTE2(v627[5]) = 11;
          v628[2] = v627[2];
          v628[3] = v627[3];
          v628[4] = v627[4];
          *(&v628[4] + 15) = *(&v627[4] + 15);
          v628[0] = v627[0];
          v628[1] = 0uLL;
          BYTE3(v628[7]) = 10;
          v110 = *(*v598 + 136);
          v111 = v51;
          v112 = v56;
          v110(v628);
          sub_1CEFCCC44(v627, &qword_1EC4BFD48, &qword_1CFA05460);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
          v113 = swift_allocObject();
          *(v113 + 144) = v112;
          *(v113 + 152) = 0;
          *(v113 + 16) = 0u;
          *(v113 + 32) = 0u;
          *(v113 + 48) = 1;
          *(v113 + 56) = 0u;
          *(v113 + 72) = 0u;
          *(v113 + 88) = 0;
          *(v113 + 96) = xmmword_1CF9FEC30;
          *(v113 + 112) = 0;
          *(v113 + 120) = *(v111 + 472);
          *(v113 + 136) = v109;
          v114 = *(*v61 + 144);
          v71 = v112;
          v114(v113);
          goto LABEL_61;
        }

        goto LABEL_302;
      }

LABEL_309:
      sub_1CF9E7B68();
      __break(1u);
LABEL_310:
      sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v560, 162);
    }

    v84 = v598;
    if (v599 != 23)
    {
      if (v599 == 75)
      {
        v115 = *(v51 + 216);
        if (v115 != 255)
        {
          v116 = v59;
          v117 = *(v51 + 208);
          v118 = (v51 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD40, &qword_1CF9FAC38);
          v119 = swift_allocObject();
          *(v119 + 152) = v115;
          *(v119 + 16) = 0u;
          *(v119 + 32) = 0u;
          *(v119 + 48) = 1;
          *(v119 + 56) = 0u;
          *(v119 + 72) = 0u;
          *(v119 + 88) = 0;
          *(v119 + 96) = xmmword_1CF9FEC30;
          *(v119 + 112) = 0;
          *(v119 + 120) = *v118;
          *(v119 + 136) = v116;
          *(v119 + 144) = v117;
          (*(*v84 + 152))();

          return;
        }

        goto LABEL_303;
      }

      goto LABEL_309;
    }

    if (!v56)
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    *&v615 = *v51;
    v85 = *(v51 + 208);
    v86 = *(v51 + 216);
    v87 = *(v51 + 240);
    if ((~*(v51 + 448) & 0xCLL) != 0)
    {
      v88 = v59;
    }

    else
    {
      v88 = v59 | 0x8000000000;
    }

    v89 = v597[4];
    v90 = v89[32];
    v584 = v57;
    if ((v90 & 1) == 0)
    {
      v120 = v56;
      v121 = v58;
      v122 = v56;
      v123 = v121;
      v124 = v120;
      if (v87)
      {
LABEL_55:
        v599 = v88;
LABEL_56:
        *&v626[0] = v124;
        WORD4(v626[0]) = 0;
        LOBYTE(v626[1]) = 1;
        BYTE2(v626[5]) = 10;
        v628[2] = v626[2];
        v628[3] = v626[3];
        v628[4] = v626[4];
        *(&v628[4] + 15) = *(&v626[4] + 15);
        v628[0] = v626[0];
        v628[1] = v626[1];
        BYTE3(v628[7]) = 10;
        v125 = *(*v84 + 136);
        v126 = v124;
        v127 = v124;
        v125(v628);
        sub_1CEFCCC44(v626, &qword_1EC4BFD48, &qword_1CFA05460);
        if ((v599 & 0x10000) != 0)
        {
          *&v627[0] = v126;
          WORD4(v627[0]) = 0;
          LOBYTE(v627[1]) = 3;
          BYTE2(v627[7]) = 10;
          v628[4] = v627[4];
          v628[5] = v627[5];
          v628[6] = v627[6];
          *(&v628[6] + 15) = *(&v627[6] + 15);
          v628[0] = v627[0];
          v628[1] = v627[1];
          v628[2] = v627[2];
          v628[3] = v627[3];
          BYTE3(v628[7]) = 9;
          v128 = v127;
          v125(v628);
          sub_1CEFCCC44(v627, &unk_1EC4BFD60, &qword_1CFA05468);
        }

        v634 = *(v602 + 472);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
        v129 = swift_allocObject();
        (*(v594 + 56))(v129 + *(*v129 + 632), 1, 1, v595);
        *(v129 + 16) = 0u;
        *(v129 + 32) = 0u;
        *(v129 + 48) = 1;
        *(v129 + 56) = 0u;
        *(v129 + 72) = 0u;
        *(v129 + 88) = 0;
        *(v129 + 96) = xmmword_1CF9FEC30;
        *(v129 + 112) = 0;
        *(v129 + 120) = v634;
        v130 = v599;
        *(v129 + 136) = v599;
        *(v129 + 144) = v127;
        if (v130 < 0)
        {
          *(v129 + 96) = 2359552;
          *(v129 + 112) = 0;
        }

        v131 = *(*v84 + 144);
        v71 = v127;
        v131(v129);
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    v91 = *(v51 + 456);
    v575 = v58;
    if (v91 != 2)
    {
      if (v91 == 4)
      {
LABEL_305:
        __break(1u);
        goto LABEL_306;
      }

      v576 = v56;
      if (!v87)
      {
        v88 |= 1uLL;
      }

      v92 = v56;
LABEL_126:
      v270 = v597[3];
      v271 = v636;
      v272 = (*(*v270 + 344))(&v615, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v636 = v271;
      if (v271)
      {
        v275 = v576;
LABEL_244:

        return;
      }

      if (v273 & 1 | ((v272 & ~v88) == 0))
      {
        v276 = 0;
      }

      else
      {
        v276 = v272;
      }

      v88 |= v276;
      if (v86 == 255)
      {
        if (v87)
        {
          v599 = v88;
          v124 = v576;
        }

        else
        {
          v124 = v576;
          v599 = v88;
        }

        goto LABEL_56;
      }

      *&v628[0] = v85;
      BYTE8(v628[0]) = v86;
      sub_1CF8DCAA0(v274);
      v277 = swift_allocObject();
      *(v277 + 16) = xmmword_1CF9FA450;
      *(v277 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
      v278 = v636;
      v279 = (*(*v270 + 304))(v628, v277, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v278)
      {
        v287 = v576;
LABEL_136:

        v277, v288, v289, v290, v291, v292, v293, v294;
        return;
      }

      v636 = 0;
      v295 = v279;
      v277, v280, v281, v282, v283, v284, v285, v286;
      v296 = sub_1CF663828();
      v295, v297, v298, v299, v300, v301, v302, v303;
      if (v296)
      {
        v304 = *(v296 + 112);
        if (v304 == 3 || v304 == 4 && !(*(v296 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v296 + 104)))
        {
        }

        else
        {
          v305 = *(v296 + 136);

          if ((v305 & 0x10000000000) != 0)
          {
            v88 |= 0x10000000000uLL;
          }
        }
      }

      v124 = v576;
      v123 = v575;
      if (v87)
      {
        goto LABEL_55;
      }

LABEL_53:
      if (v123 != 2 || v86 == 255)
      {
        goto LABEL_55;
      }

      v219 = v124;
      *&v626[0] = v85;
      BYTE8(v626[0]) = v86;
      v242 = v592;
      v243 = v636;
      (*(*v597[5] + 240))(v626, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v243)
      {
LABEL_89:

        return;
      }

      v636 = 0;
      v252 = v591;
      v253 = (v590)[6](v242, 1, v591);
      v599 = v88;
      if (v253 == 1)
      {
        sub_1CEFCCC44(v242, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_121:
        v124 = v219;
        goto LABEL_56;
      }

      v261 = v242 + *(v252 + 12);
      LOBYTE(v261) = *(v261 + *(type metadata accessor for ItemMetadata(0) + 80));
      sub_1CEFCCC44(v242, &unk_1EC4BE360, &qword_1CF9FE650);
      if (v261)
      {
        goto LABEL_121;
      }

      *&v627[0] = v219;
      WORD4(v627[0]) = 0;
      LOWORD(v627[1]) = 1280;
      *(&v627[1] + 8) = *(v602 + 472);
      BYTE2(v627[7]) = 12;
      v628[4] = v627[4];
      v628[5] = v627[5];
      v628[6] = v627[6];
      *(&v628[6] + 15) = *(&v627[6] + 15);
      v628[0] = v627[0];
      v628[1] = v627[1];
      v628[2] = v627[2];
      v628[3] = v627[3];
      BYTE3(v628[7]) = 9;
      v262 = *(*v84 + 136);
      v263 = v219;
      v262(v628);
      sub_1CEFCCC44(v627, &unk_1EC4BFD60, &qword_1CFA05468);
      if ((v584 & 8) != 0)
      {
        goto LABEL_121;
      }

      v264 = v589;
      *v589 = v263;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v265 = *(*v597 + 520);
      v266 = v263;
      v265(v264, 0);
      v267 = &qword_1EC4BFD38;
      v268 = &unk_1CFA05450;
      v269 = v264;
      goto LABEL_271;
    }

    v599 = v88;
    v203 = *(*v89 + 288);
    v204 = v56;
    v205 = v56;
    v206 = v636;
    v203(v628, &v615, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v206)
    {
      v576 = v204;
      v636 = 0;
      v251 = *&v628[0];
      if (*&v628[0])
      {
        sub_1CF7EBA74(*&v628[0], v600, v601, v628);

        memcpy(v627, v628, 0x208uLL);
        v62 = sub_1CF08B99C(v627) == 1;
        v636 = 0;
        if (!v62)
        {
          memcpy(v626, v628, 0x208uLL);
          sub_1CEFCCC44(v626, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v84 = v598;
          v88 = v599;
          if (!LOBYTE(v626[15]))
          {
            v88 = v599 | 1;
          }

          goto LABEL_126;
        }

        memcpy(v626, v628, 0x208uLL);
        sub_1CEFCCC44(v626, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      v84 = v598;
      v88 = v599;
      goto LABEL_126;
    }

LABEL_73:

    return;
  }

  v581 = v40;
  v582 = v37;
  v592 = v28;
  v579 = v31;
  v580 = v19;
  v599 = v22;
  v583 = v34;
  v72 = *(v51 + 152);
  if (v60)
  {
    if (v60 == 1)
    {
      v592 = v50;
      v570 = v43;
      v571 = v48;
      v575 = v58;
      v577 = v53;
      v578 = v52;
      v584 = v57;
      v574 = v72;
      if (!v56)
      {
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      *&v603 = v56;
      v73 = *(v51 + 208);
      v601 = *(v51 + 200);
      v572 = v73;
      v573 = *(v51 + 216);
      LODWORD(v581) = *(v51 + 240);
      v74 = *(v51 + 344);
      v75 = *(v51 + 345);
      if ((~*(v51 + 448) & 0xCLL) != 0)
      {
        v76 = v59;
      }

      else
      {
        v76 = v59 | 0x8000000000;
      }

      v600 = v76;
      v77 = v597[4];
      v78 = *(*v77 + 312);
      v79 = v56;
      v80 = v56;
      v81 = v636;
      v82 = v78(&v603, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v81)
      {

        return;
      }

      v568 = v77;
      v569 = v80;
      v576 = v79;
      v636 = 0;
      if (v83)
      {
        v171 = fpfs_current_or_default_log();
        v172 = v592;
        sub_1CF9E6128();
        v173 = v569;
        v174 = v602;
        sub_1CEFCCBDC(v602, v628, &unk_1EC4BFC90, &unk_1CFA053E0);
        v175 = v173;
        v176 = sub_1CF9E6108();
        v177 = sub_1CF9E72A8();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v601 = v179;
          *&v628[0] = v179;
          *v178 = 136446466;
          v180 = sub_1CF38C048(v179);
          v182 = v181;
          sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);
          v183 = sub_1CEFD0DF0(v180, v182, v628);
          v182, v184, v185, v186, v187, v188, v189, v190;
          *(v178 + 4) = v183;
          *(v178 + 12) = 2082;
          v191 = NSFileProviderItemIdentifier.description.getter(v175);
          v193 = v192;

          v194 = sub_1CEFD0DF0(v191, v193, v628);
          v193, v195, v196, v197, v198, v199, v200, v201;
          *(v178 + 14) = v194;
          _os_log_impl(&dword_1CEFC7000, v176, v177, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v178, 0x16u);
          v202 = v601;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v202, -1, -1);
          MEMORY[0x1D386CDC0](v178, -1, -1);
        }

        else
        {

          sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);
        }

        (*(v578 + 8))(v172, v577);

        return;
      }

      v209 = v593;
      v567 = v82;
      if ((v593 & 0x10) == 0)
      {
        LODWORD(v592) = v74;
        v210 = v601;
        if ((v601 & 0x20) != 0)
        {
          v600 |= 0x1000000000000uLL;
          LOBYTE(v627[0]) = 0;
          LOBYTE(v626[0]) = 1;
          *&v628[0] = v576;
          WORD4(v628[0]) = 0;
          *&v628[1] = 32;
          BYTE8(v628[1]) = 1;
          BYTE3(v628[7]) = 11;
          v211 = *(*v598 + 136);
          v212 = v569;
          v211(v628);
        }

        v213 = v576;
        if ((v210 & 0x10) != 0)
        {
          v600 |= 0x800000000000uLL;
          LOBYTE(v627[0]) = 0;
          LOBYTE(v626[0]) = 1;
          *&v628[0] = v576;
          WORD4(v628[0]) = 0;
          *&v628[1] = 16;
          BYTE8(v628[1]) = 1;
          BYTE3(v628[7]) = 11;
          v214 = *(*v598 + 136);
          v215 = v569;
          v214(v628);
          v209 = v593;

          v213 = v576;
        }

        v216 = v602;
        v217 = v597;
        if ((v209 & 0x10000000000) == 0)
        {
          v218 = v209;
LABEL_83:
          v219 = v569;
          v220 = v583;
          v221 = v575;
LABEL_84:
          v222 = *(v217[5] + 32);
          v601 = v217[5];
          if (v222)
          {
            if ((v209 & 0x16180000D034200) != 0)
            {
              v223 = fpfs_current_or_default_log();
              v224 = v571;
              sub_1CF9E6128();
              v225 = sub_1CF9E6108();
              v226 = sub_1CF9E72B8();
              if (os_log_type_enabled(v225, v226))
              {
                v227 = swift_slowAlloc();
                v591 = swift_slowAlloc();
                *&v628[0] = v591;
                *v227 = 136446210;
                v228 = sub_1CF071470(v209 & 0x16180000D034200);
                v230 = v229;
                v231 = v217;
                v232 = sub_1CEFD0DF0(v228, v229, v628);
                v230, v233, v234, v235, v236, v237, v238, v239;
                *(v227 + 4) = v232;
                v217 = v231;
                _os_log_impl(&dword_1CEFC7000, v225, v226, "☢️  file providers don't support setting the bit: %{public}s", v227, 0xCu);
                v240 = v591;
                __swift_destroy_boxed_opaque_existential_1(v591);
                MEMORY[0x1D386CDC0](v240, -1, -1);
                v241 = v227;
                v220 = v583;
                MEMORY[0x1D386CDC0](v241, -1, -1);

                (*(v578 + 8))(v571, v577);
              }

              else
              {

                (*(v578 + 8))(v224, v577);
              }

              v337 = v592;
              v260 = v218 & 0xFE9E7FFFF2FCBDFFLL;
              v213 = v576;
              v216 = v602;
              v219 = v569;
            }

            else
            {
              v260 = v218;
              v337 = v592;
            }

            if ((v260 & 8) != 0)
            {
              v364 = *(v216 + 456);
              if (v364 != 1)
              {
                if (v364 == 4)
                {
LABEL_308:
                  __break(1u);
                  goto LABEL_309;
                }

                if (v574 >> 60 == 11 && (v337 | 4) == 4)
                {
                  v365 = fpfs_current_or_default_log();
                  v366 = v570;
                  sub_1CF9E6128();
                  v367 = v602;
                  sub_1CEFCCBDC(v602, v628, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v368 = sub_1CF9E6108();
                  v369 = sub_1CF9E72A8();
                  if (os_log_type_enabled(v368, v369))
                  {
                    v370 = swift_slowAlloc();
                    v592 = v260;
                    v371 = v370;
                    v372 = swift_slowAlloc();
                    *&v628[0] = v372;
                    *v371 = 136315138;
                    v373 = sub_1CF38C048(v372);
                    v375 = v374;
                    sub_1CEFCCC44(v367, &unk_1EC4BFC90, &unk_1CFA053E0);
                    v376 = sub_1CEFD0DF0(v373, v375, v628);
                    v375, v377, v378, v379, v380, v381, v382, v383;
                    *(v371 + 4) = v376;
                    _os_log_impl(&dword_1CEFC7000, v368, v369, "☢️  trying to propagate content from a dataless item %s", v371, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v372);
                    MEMORY[0x1D386CDC0](v372, -1, -1);
                    v384 = v371;
                    v260 = v592;
                    v219 = v569;
                    MEMORY[0x1D386CDC0](v384, -1, -1);
                  }

                  else
                  {
                    sub_1CEFCCC44(v367, &unk_1EC4BFC90, &unk_1CFA053E0);
                  }

                  (*(v578 + 8))(v366, v577);
                  v501 = v580;
                  v502 = v636;
                  (*(*v568 + 240))(&v603, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                  if (v502)
                  {
                    goto LABEL_89;
                  }

                  v636 = 0;
                  v260 &= ~8uLL;
                  if ((*(v594 + 48))(v501, 1, v595) == 1)
                  {
                    sub_1CEFCCC44(v501, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                    v213 = v576;
                  }

                  else
                  {
                    v503 = v579;
                    sub_1CEFE55D0(v501, v579, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                    LOBYTE(v615) = 0;
                    v504 = v503[2];
                    v627[0] = v503[1];
                    v627[1] = v504;
                    v505 = v503[4];
                    v627[2] = v503[3];
                    v627[3] = v505;
                    *&v624[6] = v627[0];
                    *&v624[22] = v504;
                    *&v624[38] = v627[2];
                    *&v624[54] = v505;
                    v592 = v260;
                    v506 = v576;
                    *&v628[0] = v576;
                    WORD4(v628[0]) = 0;
                    *(&v628[1] + 10) = *&v624[16];
                    *(&v628[2] + 10) = *&v624[32];
                    *(&v628[3] + 10) = *&v624[48];
                    *(&v628[4] + 1) = *(&v505 + 1);
                    *(v628 + 10) = *v624;
                    LOWORD(v628[5]) = 1;
                    BYTE2(v628[5]) = 8;
                    BYTE3(v628[7]) = 10;
                    v507 = *(*v598 + 136);
                    v508 = v569;
                    sub_1CEFCCBDC(v627, v626, &unk_1EC4BF250, &unk_1CFA01B50);
                    v507(v628);
                    *(&v628[1] + 10) = *&v624[16];
                    *(&v628[2] + 10) = *&v624[32];
                    *(&v628[3] + 10) = *&v624[48];
                    *&v628[0] = v506;
                    WORD4(v628[0]) = 0;
                    *(&v628[4] + 1) = *&v624[62];
                    *(v628 + 10) = *v624;
                    LOWORD(v628[5]) = 1;
                    BYTE2(v628[5]) = 8;
                    BYTE3(v628[7]) = 10;
                    sub_1CEFCCC44(v628, &qword_1EC4BE730, &unk_1CFA05490);
                    sub_1CEFCCC44(v503, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                    v213 = v506;
                    v260 = v592;
                    v219 = v569;
                  }

                  v217 = v597;
                  v209 = v593;
                  v220 = v583;
                }
              }
            }
          }

          else
          {
            if (v221)
            {
              v259 = (v218 & 0x4000) == 0;
            }

            else
            {
              v259 = 1;
            }

            if (v259)
            {
              v260 = v218;
            }

            else
            {
              v260 = v218 & 0xFFFFFFFFFFFFBFFFLL;
            }
          }

          *&v627[0] = v213;
          WORD4(v627[0]) = 0;
          *&v627[1] = v209;
          BYTE2(v627[5]) = 1;
          v628[2] = v627[2];
          v628[3] = v627[3];
          v628[4] = v627[4];
          *(&v628[4] + 15) = *(&v627[4] + 15);
          v628[0] = v627[0];
          v628[1] = v627[1];
          BYTE3(v628[7]) = 10;
          v509 = *(*v598 + 136);
          v205 = v219;
          v509(v628);
          sub_1CEFCCC44(v627, &qword_1EC4BFD48, &qword_1CFA05460);
          if (v260)
          {
            if ((v260 & 8) != 0)
            {
              v512 = v602;
              v517 = *(v602 + 456);
              v513 = v574;
              if (v517 == 1)
              {
                v510 = v509;
              }

              else
              {
                if (v517 == 4)
                {
LABEL_306:
                  __break(1u);
                  goto LABEL_307;
                }

                v510 = v509;
                if (v574 >> 60 != 11)
                {
                  v511 = v260;
                  if (v581 == 3)
                  {
                    LOBYTE(v626[0]) = 0;
                    v518 = v205;
                    v599 = sub_1CF93D7F4();
                    v520 = v519;
                    v521 = v626[0];
                    v522 = v576;
                    *&v628[0] = v576;
                    BYTE8(v628[0]) = 0;
                    BYTE9(v628[0]) = v626[0];
                    LOWORD(v628[1]) = 1283;
                    *(&v628[1] + 1) = v599;
                    *&v628[2] = v519;
                    WORD1(v628[7]) = 2316;
                    v510(v628);
                    *&v628[0] = v522;
                    BYTE8(v628[0]) = 0;
                    BYTE9(v628[0]) = v521;
                    v513 = v574;
                    LOWORD(v628[1]) = 1283;
                    *(&v628[1] + 1) = v599;
                    *&v628[2] = v520;
                    WORD1(v628[7]) = 2316;
                    sub_1CEFCCC44(v628, &qword_1EC4BE730, &unk_1CFA05490);
                    v512 = v602;
                  }

                  v600 |= 0x8000000uLL;
                  goto LABEL_267;
                }
              }

              v511 = v260;
            }

            else
            {
              v510 = v509;
              v511 = v260;
              v512 = v602;
              v513 = v574;
            }

LABEL_267:
            v633 = *(v512 + 472);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
            v523 = swift_allocObject();
            *(v523 + 176) = 0;
            *(v523 + 184) = -1;
            *(v523 + 192) = 0;
            *(v523 + 200) = 0;
            *(v523 + 208) = 1;
            *(v523 + 216) = 0u;
            *(v523 + 232) = 0u;
            *(v523 + 248) = 0;
            v524 = *(*v523 + 672);
            v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
            (*(*(v525 - 8) + 56))(v523 + v524, 1, 1, v525);
            v526 = v523 + *(*v523 + 680);
            *v526 = 0;
            *(v526 + 8) = 0;
            *(v526 + 16) = 0;
            *(v526 + 24) = 0xB000000000000000;
            *(v526 + 32) = 0u;
            *(v526 + 48) = 0u;
            v527 = (v523 + *(*v523 + 688));
            *v527 = 0u;
            v527[1] = 0u;
            v527[2] = 0u;
            v527[3] = 0u;
            v527[4] = 0u;
            v527[5] = 0u;
            *(v523 + *(*v523 + 712)) = 0;
            *(v523 + 160) = v567;
            *(v523 + 168) = v511;
            *(v523 + *(*v523 + 696)) = 0;
            *(v523 + *(*v523 + 704)) = 0;
            v528 = v596;
            *(v523 + 144) = v205;
            *(v523 + 152) = v528;
            *(v523 + 16) = 0u;
            *(v523 + 32) = 0u;
            *(v523 + 48) = 1;
            *(v523 + 72) = 0u;
            *(v523 + 56) = 0u;
            *(v523 + 120) = v633;
            v529 = v601;
            *(v523 + 136) = v600;
            *(v523 + 96) = 0;
            *(v523 + 104) = 0;
            *(v523 + 88) = 0;
            *(v523 + 112) = 0;
            if ((*(v529 + 32) & 1) != 0 || (v513 & 0xF000000000000000) == 0xB000000000000000)
            {
              *(v523 + 96) = 1;
              *(v523 + 112) = 0;
            }

            v530 = *(*v598 + 152);
            v531 = v528;
            v532 = v205;
            v530(v523);
            *&v626[0] = v576;
            WORD4(v626[0]) = 0;
            v626[1] = 0uLL;
            LOBYTE(v626[2]) = 2;
            BYTE2(v626[5]) = 11;
            v628[2] = v626[2];
            v628[3] = v626[3];
            v628[4] = v626[4];
            *(&v628[4] + 15) = *(&v626[4] + 15);
            v628[0] = v626[0];
            v628[1] = 0uLL;
            BYTE3(v628[7]) = 10;
            v266 = v532;
            v510(v628);

            v267 = &qword_1EC4BFD48;
            v268 = &qword_1CFA05460;
            v269 = v626;
            goto LABEL_271;
          }

          v514 = v599;
          v515 = v636;
          (*(*v568 + 240))(&v603, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v515)
          {
            goto LABEL_73;
          }

          v636 = 0;
          if ((*(v594 + 48))(v514, 1, v595) == 1)
          {
            sub_1CEFCCC44(v514, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            v516 = v217;
          }

          else
          {
            sub_1CEFE55D0(v514, v220, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            LOBYTE(v610) = 0;
            v533 = v220[2];
            v626[0] = v220[1];
            v626[1] = v533;
            v534 = v220[4];
            v626[2] = v220[3];
            v626[3] = v534;
            *&v625[6] = v626[0];
            *&v625[22] = v533;
            *&v625[38] = v626[2];
            *&v625[54] = v534;
            LODWORD(v602) = (v584 & ~v593 & 8) == 0;
            v535 = v576;
            *&v628[0] = v576;
            WORD4(v628[0]) = 0;
            *(&v628[1] + 10) = *&v625[16];
            *(&v628[2] + 10) = *&v625[32];
            *(&v628[3] + 10) = *&v625[48];
            *(&v628[4] + 1) = *(&v534 + 1);
            *(v628 + 10) = *v625;
            LOBYTE(v628[5]) = (v584 & ~v593 & 8) == 0;
            *(&v628[5] + 1) = 2049;
            BYTE3(v628[7]) = 10;
            v536 = v205;
            sub_1CEFCCBDC(v626, &v615, &unk_1EC4BF250, &unk_1CFA01B50);
            v509(v628);
            *&v628[0] = v535;
            WORD4(v628[0]) = 0;
            *(&v628[1] + 10) = *&v625[16];
            *(&v628[2] + 10) = *&v625[32];
            *(&v628[3] + 10) = *&v625[48];
            *(&v628[4] + 1) = *&v625[62];
            *(v628 + 10) = *v625;
            LOBYTE(v628[5]) = v602;
            v516 = v597;
            *(&v628[5] + 1) = 2049;
            BYTE3(v628[7]) = 10;
            sub_1CEFCCC44(v628, &qword_1EC4BE730, &unk_1CFA05490);
            sub_1CEFCCC44(v583, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          }

          v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v538 = v537[12];
          v539 = v589;
          v540 = v589 + v537[16];
          v541 = (v589 + v537[20]);
          v542 = v537[24];
          v543 = v537[28];
          v544 = v537[32];
          *v589 = v205;
          (*(v594 + 56))(&v539[v538], 1, 1, v595);
          *v540 = 0;
          v540[8] = -1;
          v541[4] = 0u;
          v541[5] = 0u;
          v541[2] = 0u;
          v541[3] = 0u;
          *v541 = 0u;
          v541[1] = 0u;
          *&v539[v542] = v593;
          *&v539[v543] = v567;
          v545 = v596;
          *&v539[v544] = v596;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v546 = *(*v516 + 520);
          v547 = v545;
          v266 = v205;
          v546(v539, 0);
          v267 = &qword_1EC4BFD38;
          v268 = &unk_1CFA05450;
          v269 = v539;
LABEL_271:
          sub_1CEFCCC44(v269, v267, v268);

          return;
        }

        v254 = v636;
        (*(*v568 + 240))(&v603, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v254)
        {
LABEL_109:

          return;
        }

        v306 = v595;
        v307 = (*(v594 + 48))(v25, 1, v595);
        v219 = v569;
        v636 = 0;
        if (v307 == 1)
        {
          sub_1CEFCCC44(v25, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v220 = v583;
        }

        else
        {
          v385 = v582;
          sub_1CEFE55D0(v25, v582, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v386 = *(v385 + *(v306 + 48));
          v387 = *(v602 + 456);
          if (v386 == 4)
          {
            v388 = v576;
            v220 = v583;
            if (v387 != 4)
            {
              goto LABEL_198;
            }
          }

          else
          {
            v388 = v576;
            v220 = v583;
            if (v387 == 4 || qword_1CFA05EB0[v386] != qword_1CFA05EB0[v387])
            {
              goto LABEL_198;
            }
          }

          sub_1CEFCCC44(v385, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v219 = v569;
        }

        v409 = v217[5];
        v216 = v602;
        v221 = v575;
        v388 = v572;
        if (v409[32])
        {
          v218 = v209;
          v213 = v576;
          goto LABEL_84;
        }

        LODWORD(v386) = *(v602 + 456);
        v213 = v576;
        if (v386 != 2)
        {
          v218 = v209;
          if (v386 != 4)
          {
            goto LABEL_84;
          }

          __break(1u);
LABEL_198:
          LOBYTE(v627[0]) = 0;
          *&v628[0] = v388;
          WORD4(v628[0]) = 0;
          BYTE10(v628[0]) = v386;
          BYTE3(v628[7]) = 3;
          v410 = *(*v598 + 136);
          v411 = v569;
          v410(v628);

          v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v413 = v412[12];
          v414 = v589;
          v415 = v589 + v412[16];
          v416 = (v589 + v412[20]);
          v417 = v412[24];
          v602 = v412[28];
          v418 = v217;
          v419 = v412[32];
          *v589 = v411;
          (*(v594 + 56))(v414 + v413, 1, 1, v595);
          *v415 = 0;
          v415[8] = -1;
          v416[4] = 0u;
          v416[5] = 0u;
          v416[2] = 0u;
          v416[3] = 0u;
          *v416 = 0u;
          v416[1] = 0u;
          *(v414 + v417) = v209;
          *(v414 + v602) = v567;
          v420 = v596;
          *(v414 + v419) = v596;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v421 = *(*v418 + 520);
          v422 = v420;
          v266 = v411;
          v421(v414, 0);
          sub_1CEFCCC44(v414, &qword_1EC4BFD38, &unk_1CFA05450);
          v267 = &unk_1EC4BFBD0;
          v268 = &unk_1CF9FCBC0;
          v269 = v582;
          goto LABEL_271;
        }

        if (v573 == 255)
        {
          v218 = v209;
          goto LABEL_84;
        }

        *&v628[0] = v572;
        BYTE8(v628[0]) = v573;
        v454 = v585;
        v455 = v636;
        (*(*v409 + 240))(v628, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v455)
        {
          goto LABEL_89;
        }

        v636 = 0;
        if ((v590)[6](v454, 1, v591) == 1)
        {
          sub_1CEFCCC44(v454, &qword_1EC4C1B40, &unk_1CF9FCB70);
        }

        else
        {
          v566 = v454 + *(v591 + 12);
          LOBYTE(v566) = *(v566 + *(type metadata accessor for ItemMetadata(0) + 80));
          sub_1CEFCCC44(v454, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v566)
          {
            v209 = v593;
            v218 = v593 | 8;
LABEL_294:
            v213 = v576;
            v216 = v602;
            v217 = v597;
            goto LABEL_83;
          }
        }

        v209 = v593;
        v218 = v593;
        goto LABEL_294;
      }

      v244 = v75;
      v245 = v581;
      if ((v581 | 2) == 3)
      {
        if ((v584 & 8) != 0)
        {
          v246 = 134217730;
        }

        else
        {
          v246 = 2;
        }

        v247 = v600 | v246;
        if (v581 == 3)
        {
          v248 = v247 | 0x100000000000;
        }

        else
        {
          v248 = v247;
        }

        v249 = v597;
        if (!v575 && v573 != 255)
        {
          *&v627[0] = v572;
          BYTE8(v627[0]) = v573;
          v250 = v587;
          (*(*v597[5] + 240))(v627, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v636 = 0;
          v423 = v591;
          if ((v590)[6](v250, 1, v591) == 1)
          {
            sub_1CEFCCC44(v250, &qword_1EC4C1B40, &unk_1CF9FCB70);
            v314 = v598;
            goto LABEL_158;
          }

          v439 = v586;
          sub_1CEFE55D0(v250, v586, &unk_1EC4BE360, &qword_1CF9FE650);
          v440 = v439 + *(v423 + 12);
          v441 = *(v440 + *(type metadata accessor for ItemMetadata(0) + 80));
          v314 = v598;
          if ((v441 & 1) == 0)
          {
            sub_1CEFCCC44(v439, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_158;
          }

          LOBYTE(v626[0]) = 1;
          *&v628[0] = *&v627[0];
          BYTE8(v628[0]) = BYTE8(v627[0]);
          BYTE9(v628[0]) = 1;
          LOBYTE(v628[1]) = v245;
          BYTE1(v628[1]) = 5;
          *(&v628[1] + 8) = *(v602 + 472);
          WORD1(v628[7]) = 2316;
          v442.n128_f64[0] = (*(*v598 + 136))(v628);
          v443 = v249[3];
          sub_1CF8DCAA0(v442);
          v444 = swift_allocObject();
          *(v444 + 16) = xmmword_1CF9FA450;
          *(v444 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
          v445 = v636;
          v446 = (*(*v443 + 304))(v627, v444, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v445)
          {
            v444, v447, v448, v449, v450, v451, v452, v453;
            sub_1CEFCCC44(v439, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_109;
          }

          v548 = v446;
          v636 = 0;
          v444, v447, v448, v449, v450, v451, v452, v453;
          if (!sub_1CF55B584())
          {
LABEL_290:
            v548, v549, v550, v551, v552, v553, v554, v555;
            sub_1CEFCCC44(v586, &unk_1EC4BE360, &qword_1CF9FE650);
            v275 = v569;
            goto LABEL_244;
          }

          v556 = 0;
          if (v548 < 0)
          {
            v557 = v548;
          }

          else
          {
            v557 = v548 & 0xFFFFFFFFFFFFFF8;
          }

          v601 = v557;
          v602 = v548 >> 62;
          while (1)
          {
            if ((v548 & 0xC000000000000001) != 0)
            {
              v558 = MEMORY[0x1D3869C30](v556, v548);
            }

            else
            {
              if (v556 >= *((v548 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_296;
              }

              v558 = *(v548 + 8 * v556 + 32);
            }

            v559 = v556 + 1;
            if (__OFADD__(v556, 1))
            {
              break;
            }

            v560 = *(v558 + 112);
            if (v560 == 2)
            {
              goto LABEL_310;
            }

            v561 = *(v558 + 96);
            v562 = *(v558 + 104);
            *(v558 + 96) = 0;
            *(v558 + 104) = 0;
            *(v558 + 112) = 4;
            sub_1CF03D7A8(v561, v562, v560);
            v563 = *(*v598 + 152);

            v563(v564);

            if (v602)
            {
              v565 = sub_1CF9E7818();
            }

            else
            {
              v565 = *((v548 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v556;
            if (v559 == v565)
            {
              goto LABEL_290;
            }
          }

          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }
      }

      else
      {
        v249 = v597;
        v255 = v597[3];
        v256 = (*(*v255 + 344))(&v603, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v636 = 0;
        if (v257 & 1 | ((v256 & ~(v600 | 0x8000001)) == 0))
        {
          v313 = 0;
        }

        else
        {
          v313 = v256;
        }

        v248 = v313 | v600 | 0x8000001;
        if (v573 != 255)
        {
          *&v628[0] = v572;
          BYTE8(v628[0]) = v573;
          sub_1CF8DCAA0(v258);
          v277 = swift_allocObject();
          *(v277 + 16) = xmmword_1CF9FA450;
          *(v277 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
          v389 = v636;
          v390 = (*(*v255 + 304))(v628, v277, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v287 = v569;
          if (v389)
          {
            goto LABEL_136;
          }

          v636 = 0;
          v427 = v390;
          v277, v391, v392, v393, v394, v395, v396, v397;
          v428 = sub_1CF663828();
          v427, v429, v430, v431, v432, v433, v434, v435;
          if (v428)
          {
            v436 = *(v428 + 112);
            v314 = v598;
            if (v436 == 3 || v436 == 4 && !(*(v428 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v428 + 104)))
            {
            }

            else
            {
              v437 = *(v428 + 136);

              if ((v437 & ~v248) != 0)
              {
                v438 = v437;
              }

              else
              {
                v438 = 0;
              }

              v248 |= v438;
            }

            goto LABEL_158;
          }
        }
      }

      v314 = v598;
LABEL_158:
      if (v244 != 6)
      {
        v248 |= 0x20000uLL;
      }

      v632 = *(v602 + 472);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
      v315 = swift_allocObject();
      *(v315 + 176) = 0;
      *(v315 + 184) = -1;
      *(v315 + 192) = 0;
      *(v315 + 200) = 0;
      *(v315 + 208) = 1;
      *(v315 + 216) = 0u;
      *(v315 + 232) = 0u;
      *(v315 + 248) = 0;
      v316 = *(*v315 + 672);
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
      (*(*(v317 - 8) + 56))(v315 + v316, 1, 1, v317);
      v318 = v315 + *(*v315 + 680);
      *v318 = 0;
      *(v318 + 8) = 0;
      *(v318 + 16) = 0;
      *(v318 + 24) = 0xB000000000000000;
      *(v318 + 32) = 0u;
      *(v318 + 48) = 0u;
      v319 = (v315 + *(*v315 + 688));
      *v319 = 0u;
      v319[1] = 0u;
      v319[2] = 0u;
      v319[3] = 0u;
      v319[4] = 0u;
      v319[5] = 0u;
      *(v315 + *(*v315 + 712)) = 0;
      *(v315 + 160) = v567;
      *(v315 + 168) = 16;
      *(v315 + *(*v315 + 696)) = 0;
      *(v315 + *(*v315 + 704)) = 0;
      v320 = v596;
      *(v315 + 16) = 0u;
      *(v315 + 32) = 0u;
      *(v315 + 48) = 1;
      *(v315 + 72) = 0u;
      *(v315 + 56) = 0u;
      *(v315 + 120) = v632;
      v321 = v569;
      *(v315 + 144) = v569;
      *(v315 + 152) = v320;
      *(v315 + 136) = v248;
      *(v315 + 96) = 0;
      *(v315 + 104) = 0;
      *(v315 + 88) = 0;
      *(v315 + 112) = 0;
      if ((*(v249[5] + 32) & 1) != 0 || (v574 & 0xF000000000000000) == 0xB000000000000000)
      {
        *(v315 + 96) = xmmword_1CF9FD920;
        *(v315 + 112) = 0;
      }

      v322 = *(*v314 + 152);
      v323 = v320;
      v324 = v321;
      v322(v315);
      v325 = v576;
      *&v627[0] = v576;
      WORD4(v627[0]) = 0;
      v627[1] = 0uLL;
      LOBYTE(v627[2]) = 2;
      BYTE2(v627[5]) = 11;
      v628[2] = v627[2];
      v628[3] = v627[3];
      v628[4] = v627[4];
      *(&v628[4] + 15) = *(&v627[4] + 15);
      v628[0] = v627[0];
      v628[1] = 0uLL;
      BYTE3(v628[7]) = 10;
      v326 = *(*v314 + 136);
      v327 = v324;
      v326(v628);
      sub_1CEFCCC44(v627, &qword_1EC4BFD48, &qword_1CFA05460);
      LOBYTE(v615) = 0;
      v602 = v327;
      sub_1CEFF5464(&stru_1F4BED110, v626, v328, v329, v330, v331, v332, v333, v334);
      v335 = *&v626[0];
      v336 = v615;
      *&v628[0] = v325;
      BYTE8(v628[0]) = 0;
      BYTE9(v628[0]) = v615;
      *&v628[1] = *&v626[0];
      BYTE2(v628[5]) = 1;
      BYTE3(v628[7]) = 10;
      v326(v628);

      *&v628[0] = v325;
      BYTE8(v628[0]) = 0;
      BYTE9(v628[0]) = v336;
      *&v628[1] = v335;
      BYTE2(v628[5]) = 1;
      BYTE3(v628[7]) = 10;
      sub_1CEFCCC44(v628, &qword_1EC4BE730, &unk_1CFA05490);
      v275 = v602;
      goto LABEL_244;
    }

    v102 = v598;
    if (v60 != 2)
    {
      goto LABEL_309;
    }

    if (!v56)
    {
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v103 = *(v51 + 216);
    if (v103 == 255)
    {
LABEL_304:
      __break(1u);
      goto LABEL_305;
    }

    v104 = *(v51 + 8);
    v105 = *(v51 + 208);
    if ((v104 & 0x10) != 0)
    {
      v106 = *(v51 + 472);
      v107 = *(v51 + 480);
      if ((v104 & 1) == 0)
      {
        v132 = 0x2000000;
LABEL_65:
        v133 = v596;
        v134 = v56;
        v135 = sub_1CF389FBC(v56, v596, v106, v107, v132);
        v136 = *(*v102 + 152);
        v137 = v133;
        v138 = v134;
        v136(v135);

        *&v627[0] = v134;
        WORD4(v627[0]) = 0;
        v627[1] = 0uLL;
        LOBYTE(v627[2]) = 2;
        BYTE2(v627[5]) = 11;
        v628[2] = v627[2];
        v628[3] = v627[3];
        v628[4] = v627[4];
        *(&v628[4] + 15) = *(&v627[4] + 15);
        v628[0] = v627[0];
        v628[1] = 0uLL;
        BYTE3(v628[7]) = 10;
        v139 = *(*v102 + 136);
        v140 = v138;
        v139(v628);
        sub_1CEFCCC44(v627, &qword_1EC4BFD48, &qword_1CFA05460);
        LOBYTE(v626[0]) = 1;
        *&v628[0] = v105;
        BYTE8(v628[0]) = v103;
        BYTE9(v628[0]) = 1;
        memset(&v628[1], 0, 66);
        BYTE2(v628[5]) = 15;
        BYTE3(v628[7]) = 10;
        v139(v628);

        return;
      }
    }

    else
    {
      v106 = *(v51 + 472);
      v107 = *(v51 + 480);
    }

    v132 = 4096;
    goto LABEL_65;
  }

  v599 = v59;
  v577 = v53;
  v578 = v52;
  v584 = v57;
  if (!v56)
  {
    goto LABEL_297;
  }

  v93 = v55;
  v94 = v49;
  v623 = v56;
  v95 = v597[4];
  v96 = *(*v95 + 312);
  v97 = v56;
  v98 = v56;
  v99 = v636;
  v100 = v96(&v623, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v99)
  {

    return;
  }

  v576 = v97;
  v636 = 0;
  if ((v101 & 1) == 0)
  {
    v591 = v100;
    (*(*v95 + 288))(&v622, &v623, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v590 = v98;
    sub_1CF095754(v628);
    v207 = v622;
    if (v622)
    {
      v208 = v622;
      sub_1CF7EBA74(v208, v600, v601, v626);

      v308 = v626;
    }

    else
    {
      v308 = v628;
    }

    memcpy(v627, v308, 0x208uLL);
    v309 = v597[5];
    if (*(v309 + 32))
    {
      memcpy(v626, v627, 0x208uLL);
      v310 = sub_1CF08B99C(v626);
      v311 = v601;
      if (v310 == 1)
      {
        v587 = v207;
        v312 = v599;
LABEL_226:
        v467 = v312 | (v584 >> 22) & 0x200000;
        v468 = (v312 >> 9) & 1;
        if ((v584 & 0x8000) == 0)
        {
          LODWORD(v468) = 1;
        }

        if (v468)
        {
          v469 = v467;
        }

        else
        {
          v469 = v467 | 0x200;
        }

        v470 = v602;
        v471 = *(v602 + 456);
        v472 = v598;
        if (v471 != 1)
        {
          if (v471 == 4)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          if (v72 >> 60 != 11)
          {
            v469 |= 0x8000000uLL;
          }
        }

        v636 = 0;
        if (v471 != 2 && (*(v309 + 32) & 1) == 0)
        {
          *&v615 = v576;
          WORD4(v615) = 0;
          LOBYTE(v616) = 0;
          BYTE2(v619[1]) = 10;
          v626[2] = v617;
          v626[3] = v618;
          v626[4] = v619[0];
          *(&v626[4] + 15) = *(v619 + 15);
          v626[0] = v615;
          v626[1] = v616;
          BYTE3(v626[7]) = 10;
          v473 = *(*v598 + 136);
          v474 = v590;
          v473(v626);
          sub_1CEFCCC44(&v615, &qword_1EC4BFD48, &qword_1CFA05460);
          v470 = v602;
        }

        v631 = *(v470 + 472);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v475 = swift_allocObject();
        *(v475 + 168) = 0;
        *(v475 + 176) = 0;
        *(v475 + 184) = 1;
        *(v475 + 192) = 0u;
        *(v475 + 208) = 0u;
        *(v475 + 224) = 0u;
        v476 = *(*v475 + 664);
        v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        (*(*(v477 - 8) + 56))(v475 + v476, 1, 1, v477);
        v478 = v475 + *(*v475 + 672);
        *v478 = 0;
        *(v478 + 8) = 0;
        *(v478 + 16) = 0;
        *(v478 + 24) = 0xB000000000000000;
        *(v478 + 32) = 0u;
        *(v478 + 48) = 0u;
        v479 = (v475 + *(*v475 + 680));
        *v479 = 0u;
        v479[1] = 0u;
        v479[2] = 0u;
        v479[3] = 0u;
        v479[4] = 0u;
        v479[5] = 0u;
        v479[6] = 0u;
        *(v475 + *(*v475 + 688)) = 0;
        v480 = v590;
        v481 = v591;
        v482 = v596;
        *(v475 + 152) = v596;
        *(v475 + 160) = v481;
        *(v475 + 16) = 0u;
        *(v475 + 32) = 0u;
        *(v475 + 48) = 1;
        *(v475 + 72) = 0u;
        *(v475 + 56) = 0u;
        *(v475 + 120) = v631;
        *(v475 + 136) = v469;
        *(v475 + 144) = v480;
        *(v475 + 96) = 0;
        *(v475 + 104) = 0;
        *(v475 + 88) = 0;
        *(v475 + 112) = 0;
        if (*(v309 + 32) == 1)
        {
          *(v475 + 96) = 1;
          *(v475 + 112) = 0;
        }

        v483 = *(*v472 + 152);
        v484 = v482;
        v485 = v590;
        v483(v475);
        v486 = v576;
        *&v615 = v576;
        WORD4(v615) = 0;
        v616 = 0uLL;
        LOBYTE(v617) = 2;
        BYTE2(v619[1]) = 11;
        v626[2] = v617;
        v626[3] = v618;
        v626[4] = v619[0];
        *(&v626[4] + 15) = *(v619 + 15);
        v626[0] = v615;
        v626[1] = 0uLL;
        BYTE3(v626[7]) = 10;
        v487 = *(*v472 + 136);
        v488 = *v472 + 136;
        v489 = v485;
        v601 = v488;
        v602 = v487;
        (v487)(v626);
        sub_1CEFCCC44(&v615, &qword_1EC4BFD48, &qword_1CFA05460);
        LOBYTE(v610) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        v490 = swift_allocObject();
        *(v490 + 16) = xmmword_1CF9FA440;
        *(v490 + 32) = v593;
        v491 = qword_1EDEABDE0;
        v600 = v489;
        if (v491 != -1)
        {
          swift_once();
        }

        *(v490 + 40) = qword_1EDEABDE8;
        sub_1CEFF5464(v490, &v603, v492, v493, v494, v495, v496, v497, v498);
        v499 = v603;
        v500 = v610;
        *&v626[0] = v486;
        BYTE8(v626[0]) = 0;
        BYTE9(v626[0]) = v610;
        *&v626[1] = v603;
        BYTE2(v626[5]) = 1;
        BYTE3(v626[7]) = 10;
        (v602)(v626);

        *&v626[0] = v486;
        BYTE8(v626[0]) = 0;
        BYTE9(v626[0]) = v500;
        *&v626[1] = v499;
        BYTE2(v626[5]) = 1;
        BYTE3(v626[7]) = 10;
        sub_1CEFCCC44(v626, &qword_1EC4BE730, &unk_1CFA05490);
        sub_1CEFCCC44(v627, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        goto LABEL_243;
      }
    }

    else
    {
      memcpy(v626, v627, 0x208uLL);
      if (sub_1CF08B99C(v626) == 1 || BYTE8(v627[13]) == 255)
      {
        v636 = 0;
        v338 = v602;
        v340 = *(v602 + 472);
        v339 = *(v602 + 480);
        WORD4(v610) = 0;
        *&v611 = 2;
        *(&v611 + 1) = v340;
        v601 = v339;
        *&v612 = v339;
        v617 = v612;
        v618 = v613;
        *&v610 = v576;
        v614[18] = 0;
        v619[0] = *v614;
        *(v619 + 15) = *&v614[15];
        v615 = v610;
        v616 = v611;
        v621 = 10;
        v341 = *(*v598 + 136);
        v342 = *v598 + 136;
        v343 = v590;
        v599 = v342;
        v600 = v341;
        v341(&v615);
        sub_1CEFCCC44(&v610, &qword_1EC4BFD48, &qword_1CFA05460);
        v344 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        sub_1CEFCCBDC(v338, &v615, &unk_1EC4BFC90, &unk_1CFA053E0);
        v345 = sub_1CF9E6108();
        v346 = sub_1CF9E72A8();
        v347 = os_log_type_enabled(v345, v346);
        v587 = v207;
        if (v347)
        {
          v348 = swift_slowAlloc();
          v592 = v340;
          v349 = v348;
          v350 = swift_slowAlloc();
          *&v615 = v350;
          *v349 = 136446210;
          v351 = sub_1CF38C048(v350);
          v593 = v343;
          v353 = v352;
          sub_1CEFCCC44(v338, &unk_1EC4BFC90, &unk_1CFA053E0);
          v354 = sub_1CEFD0DF0(v351, v353, &v615);
          v355 = v353;
          v343 = v593;
          v355, v356, v357, v358, v359, v360, v361, v362;
          *(v349 + 4) = v354;
          _os_log_impl(&dword_1CEFC7000, v345, v346, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v349, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v350);
          MEMORY[0x1D386CDC0](v350, -1, -1);
          v363 = v349;
          v340 = v592;
          MEMORY[0x1D386CDC0](v363, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v338, &unk_1EC4BFC90, &unk_1CFA053E0);
        }

        (*(v578 + 8))(v94, v577);
        v398 = v597;
        if (*(v338 + 240) == 2)
        {
          *&v603 = v576;
          WORD4(v603) = 0;
          LOWORD(v604) = 1282;
          *(&v604 + 1) = v340;
          *&v605 = v601;
          v609[18] = 12;
          v619[0] = v607;
          v619[1] = v608;
          *v620 = *v609;
          *&v620[15] = *&v609[15];
          v615 = v603;
          v616 = v604;
          v617 = v605;
          v618 = v606;
          v621 = 9;
          v399 = v343;
          (v600)(&v615);
          sub_1CEFCCC44(&v603, &unk_1EC4BFD60, &qword_1CFA05468);
        }

        v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
        v401 = v400[12];
        v402 = v400[16];
        v403 = v400[20];
        v404 = v589;
        *v589 = v343;
        (*(v594 + 56))(v404 + v401, 1, 1, v595);
        *(v404 + v402) = v591;
        v405 = v596;
        *(v404 + v403) = v596;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v406 = *(*v398 + 520);
        v407 = v405;
        v408 = v343;
        v406(v404, 0);
        sub_1CEFCCC44(v404, &qword_1EC4BFD38, &unk_1CFA05450);
        sub_1CEFCCC44(v627, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_243:
        v275 = v587;
        goto LABEL_244;
      }

      if (!LOBYTE(v627[15]))
      {
        v599 |= 1uLL;
      }

      v311 = v601;
    }

    v636 = v309;
    memcpy(v635, v627, 0x208uLL);
    v424 = *(*v95 + 240);
    memcpy(v626, v627, 0x208uLL);
    sub_1CEFCCBDC(v626, &v615, &unk_1EC4BFC90, &unk_1CFA053E0);
    v425 = v592;
    v424(&v623, 1, &v629, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if ((*(v594 + 48))(v425, 1, v595) == 1)
    {
      v587 = v207;
      sub_1CEFCCC44(v627, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v425, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v312 = v599;
    }

    else
    {
      v426 = v581;
      sub_1CEFE55D0(v425, v581, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CF415C48(&v615, v602, v426, v635, v597, v600, v311);
      v457 = v456;
      v459 = v458;
      v587 = v207;
      sub_1CF4804C0(v615, WORD4(v615));
      sub_1CEFCCC44(v426, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFCCC44(v627, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v459, v460, v461, v462, v463, v464, v465, v466;
      v312 = v599;
      if (v457)
      {
        v312 = v599 | 0x40000000000;
      }
    }

    v309 = v636;
    goto LABEL_226;
  }

  v141 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v142 = v98;
  v143 = v602;
  sub_1CEFCCBDC(v602, v628, &unk_1EC4BFC90, &unk_1CFA053E0);
  v144 = sub_1CF9E6108();
  v145 = sub_1CF9E72A8();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v601 = v147;
    *&v628[0] = v147;
    *v146 = 136446466;
    v148 = sub_1CF38C048(v147);
    v150 = v149;
    sub_1CEFCCC44(v143, &unk_1EC4BFC90, &unk_1CFA053E0);
    v151 = sub_1CEFD0DF0(v148, v150, v628);
    v150, v152, v153, v154, v155, v156, v157, v158;
    *(v146 + 4) = v151;
    *(v146 + 12) = 2082;
    v159 = NSFileProviderItemIdentifier.description.getter(v142);
    v161 = v160;

    v162 = sub_1CEFD0DF0(v159, v161, v628);
    v161, v163, v164, v165, v166, v167, v168, v169;
    *(v146 + 14) = v162;
    _os_log_impl(&dword_1CEFC7000, v144, v145, "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v146, 0x16u);
    v170 = v601;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v170, -1, -1);
    MEMORY[0x1D386CDC0](v146, -1, -1);
  }

  else
  {

    sub_1CEFCCC44(v143, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  (*(v578 + 8))(v93, v577);
}

void sub_1CF415C48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v366 = a6;
  v367 = a7;
  v8 = *(a4 + 216);
  if (v8 == 255 || (v364 = *(a4 + 208), v365 = v8, !*(a2 + 97)))
  {
    *a1 = 0;
    *(a1 + 8) = -256;
    return;
  }

  v9 = a5;
  v347 = v7;
  v342 = a2[1];
  v343 = *a2;
  v344 = *(a2 + 120);
  (*(*a5 + 248))();
  sub_1CF9E7B08();

  sub_1CF9E7C08();
  v11 = __src[0];
  v368 = v9;
  if ((~__src[0] & 0xF000000000000007) != 0)
  {
    v345 = a3;
    while (1)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v59 = swift_dynamicCastClass();
        if (!v59)
        {
          goto LABEL_40;
        }

        v55 = v59;
        v60 = v59 + *(*v59 + 672);
        swift_beginAccess();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
        if (v62)
        {
          if (v365 != 255)
          {
            goto LABEL_40;
          }

          if (v62 == 1)
          {
            goto LABEL_175;
          }
        }

        else
        {
          v91 = *(v60 + 8);
          if (v91 == 255)
          {
            goto LABEL_40;
          }

          v134 = *v60;
          if (*(v60 + 8))
          {
            if (v91 == 1)
            {
              if (v365 != 1 || v134 != v364)
              {
                goto LABEL_40;
              }
            }

            else if (v134)
            {
              if (v365 != 2 || v364 != 1)
              {
                goto LABEL_40;
              }
            }

            else if (v365 != 2 || v364)
            {
              goto LABEL_40;
            }
          }

          else if (v365 || v134 != v364)
          {
            goto LABEL_40;
          }
        }

        v92 = *(v9[5] + 16);
        v93 = *(v60 + 16);
        v94 = *(v60 + 24);
        v95 = *(a3 + 88);
        v340 = *(a3 + 80);
        v96 = a3;
        v97 = *(*v92 + 112);
        sub_1CF095774(v11);

        v356 = v94;

        v352 = v95;

        v99 = v97(v98);
        if (v99 == 2 || (v99 & 1) == 0)
        {
          __src[0] = v93;
          __src[1] = v94;
          v358[0] = v340;
          v358[1] = v95;
          sub_1CEFE4E68();
          v39 = sub_1CF9E7678();

          sub_1CF09575C(v11);
          v94, v120, v121, v122, v123, v124, v125, v126;
          v95, v127, v128, v129, v130, v131, v132, v133;
          a3 = v96;
LABEL_39:
          v9 = v368;
          if (!v39)
          {
            goto LABEL_168;
          }

          goto LABEL_40;
        }

        v100 = v94;
        v101 = v93;
        if ((v94 & 0x2000000000000000) != 0)
        {
          v102 = (v94 >> 56) & 0xF;
        }

        else
        {
          v102 = v93 & 0xFFFFFFFFFFFFLL;
        }

        a3 = v96;
        v9 = v368;
        v73 = v352;
        v103 = v340;
        if (v102)
        {
          if (sub_1CF9E6B38() == 12565487 && v104 == 0xA300000000000000)
          {
            v104, v104, v105, v106, v107, v108, v109, v110;
          }

          else
          {
            v112 = v104;
            v332 = sub_1CF9E8048();
            v112, v113, v114, v115, v116, v117, v118, v119;
            v100 = v356;
            if ((v332 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          if (4 * v102 < sub_1CF9E69E8() >> 14)
          {
            goto LABEL_172;
          }

          v196 = sub_1CF9E6B58();
          v198 = v197;
          v101 = MEMORY[0x1D3868C10](v196);
          v336 = v199;
          v198, v199, v200, v201, v202, v203, v204, v205;
          v73 = v352;
        }

        else
        {
LABEL_84:

          v336 = v100;
        }

        if ((v73 & 0x2000000000000000) != 0)
        {
          v206 = (v73 >> 56) & 0xF;
        }

        else
        {
          v206 = v340 & 0xFFFFFFFFFFFFLL;
        }

        if (!v206)
        {
          goto LABEL_138;
        }

        if (sub_1CF9E6B38() == 12565487 && v207 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v208, v209, v210, v211, v212, v213;
          goto LABEL_136;
        }

        v333 = v207;
        v331 = sub_1CF9E8048();
        v333, v214, v215, v216, v217, v218, v219, v220;
        if (v331)
        {
LABEL_136:
          v334 = v101;
          if (4 * v206 < sub_1CF9E69E8() >> 14)
          {
            goto LABEL_173;
          }

          v221 = sub_1CF9E6B58();
          v223 = v222;
          v103 = MEMORY[0x1D3868C10](v221);
          v225 = v224;
          v223, v224, v226, v227, v228, v229, v230, v231;
          v101 = v334;
        }

        else
        {
LABEL_138:

          v225 = v73;
        }

        if (v101 == v103 && v336 == v225)
        {

          v225, v309, v310, v311, v312, v313, v314, v315;
          v336, v316, v317, v318, v319, v320, v321, v322;
          sub_1CF09575C(v11);
          v308 = v356;
          goto LABEL_167;
        }

        v173 = sub_1CF9E8048();

        v225, v232, v233, v234, v235, v236, v237, v238;
        v336, v239, v240, v241, v242, v243, v244, v245;
        sub_1CF09575C(v11);
        v195 = v356;
        goto LABEL_142;
      }

      v55 = v54;
      v56 = v54 + *(*v54 + 664);
      swift_beginAccess();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
      v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
      if (v58)
      {
        if (v365 != 255)
        {
          goto LABEL_40;
        }

        if (v58 == 1)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v63 = *(v56 + 8);
        if (v63 == 255)
        {
          goto LABEL_40;
        }

        v90 = *v56;
        if (*(v56 + 8))
        {
          if (v63 == 1)
          {
            if (v365 != 1 || v90 != v364)
            {
              goto LABEL_40;
            }
          }

          else if (v90)
          {
            if (v365 != 2 || v364 != 1)
            {
              goto LABEL_40;
            }
          }

          else if (v365 != 2 || v364)
          {
            goto LABEL_40;
          }
        }

        else if (v365 || v90 != v364)
        {
          goto LABEL_40;
        }
      }

      v64 = *(v56 + 16);
      v65 = *(v56 + 24);
      v66 = *(a3 + 88);
      v355 = *(a3 + 80);
      v67 = *(**(v9[5] + 16) + 112);

      sub_1CF095774(v11);
      v68 = v65;

      v351 = v66;

      v70 = v67(v69);
      if (v70 == 2 || (v70 & 1) == 0)
      {
        __src[0] = v64;
        __src[1] = v65;
        v358[0] = v355;
        v358[1] = v66;
        sub_1CEFE4E68();
        v39 = sub_1CF9E7678();

        sub_1CF09575C(v11);
        v65, v40, v41, v42, v43, v44, v45, v46;
        v66, v47, v48, v49, v50, v51, v52, v53;
        a3 = v345;
        goto LABEL_39;
      }

      v71 = v64;
      v72 = (v65 & 0x2000000000000000) != 0 ? (v65 >> 56) & 0xF : v64 & 0xFFFFFFFFFFFFLL;
      v339 = v65;
      a3 = v345;
      v73 = v351;
      if (!v72)
      {
        break;
      }

      if (sub_1CF9E6B38() == 12565487 && v74 == 0xA300000000000000)
      {
        v74, v74, v75, v76, v77, v78, v79, v80;
      }

      else
      {
        v82 = v74;
        v335 = sub_1CF9E8048();
        v82, v83, v84, v85, v86, v87, v88, v89;
        v65 = v68;
        if ((v335 & 1) == 0)
        {
          break;
        }
      }

      if (4 * v72 < sub_1CF9E69E8() >> 14)
      {
        goto LABEL_170;
      }

      v135 = sub_1CF9E6B58();
      v137 = v136;
      v71 = MEMORY[0x1D3868C10](v135);
      v338 = v138;
      v137, v138, v139, v140, v141, v142, v143, v144;
      v73 = v351;
LABEL_101:
      v9 = v368;
      v145 = v355;
      if ((v73 & 0x2000000000000000) != 0)
      {
        v146 = (v73 >> 56) & 0xF;
      }

      else
      {
        v146 = v355 & 0xFFFFFFFFFFFFLL;
      }

      if (v146)
      {
        if (sub_1CF9E6B38() == 12565487 && v147 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v148, v149, v150, v151, v152, v153;
LABEL_109:
          v354 = v71;
          if (4 * v146 < sub_1CF9E69E8() >> 14)
          {
            goto LABEL_171;
          }

          v161 = sub_1CF9E6B58();
          v163 = v162;
          v164 = MEMORY[0x1D3868C10](v161);
          v166 = v165;
          v163, v165, v167, v168, v169, v170, v171, v172;
          v145 = v164;
          v71 = v354;
          goto LABEL_112;
        }

        v353 = v147;
        v337 = sub_1CF9E8048();
        v353, v154, v155, v156, v157, v158, v159, v160;
        v145 = v355;
        if (v337)
        {
          goto LABEL_109;
        }
      }

      v166 = v73;
LABEL_112:
      if (v71 == v145 && v338 == v166)
      {

        v166, v287, v288, v289, v290, v291, v292, v293;
        v338, v294, v295, v296, v297, v298, v299, v300;
        sub_1CF09575C(v11);
        v308 = v339;
LABEL_167:
        v308, v301, v302, v303, v304, v305, v306, v307;
        v73, v323, v324, v325, v326, v327, v328, v329;
LABEL_168:

        v330 = *(v55 + 144);
        sub_1CF09575C(v11);
        *a1 = v330;
        *(a1 + 9) = 0;
        return;
      }

      v173 = sub_1CF9E8048();

      v166, v174, v175, v176, v177, v178, v179, v180;
      v338, v181, v182, v183, v184, v185, v186, v187;
      sub_1CF09575C(v11);
      v195 = v339;
LABEL_142:
      v195, v188, v189, v190, v191, v192, v193, v194;
      v73, v246, v247, v248, v249, v250, v251, v252;
      if (v173)
      {
        goto LABEL_168;
      }

LABEL_40:
      sub_1CF09575C(v11);
      sub_1CF9E7C08();
      v11 = __src[0];
      if ((~__src[0] & 0xF000000000000007) == 0)
      {
        goto LABEL_5;
      }
    }

    v338 = v65;
    goto LABEL_101;
  }

LABEL_5:

  v12 = a1;
  if (v344 != 2 && (!v343 || *(a2 + 216) == 255) && v342)
  {
LABEL_37:
    *v12 = 0;
    *(v12 + 8) = -256;
    return;
  }

  v13 = v9[4];
  if (v13[32])
  {
LABEL_12:
    v14 = v9[5];
    v15 = *(a3 + 88);
    __src[0] = *(a3 + 80);
    __src[1] = v15;
    v358[0] = 0;
    LOBYTE(v358[1]) = -1;
    v16 = *(*v14 + 256);

    v17 = v16(&v364, __src, v358, &v366, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    __src[1], v18, v19, v20, v21, v22, v23, v24;
    if (v347)
    {
      return;
    }

    v31 = *v17->tree;
    if (v31)
    {
      v32 = a2[26];
      v33 = *(a2 + 216);
      v34 = v33 == 2;
      v35 = v32 == 1 && v33 == 2;
      if (v32)
      {
        v34 = 0;
      }

      anon_8 = v17[1]._anon_8;
      do
      {
        v37 = *anon_8;
        if (v37 == 255)
        {
          if (v33 == 255)
          {
            goto LABEL_36;
          }
        }

        else if (v33 != 255)
        {
          v38 = *(anon_8 - 1);
          if (*anon_8)
          {
            if (v37 == 1)
            {
              if (v33 == 1 && v38 == v32)
              {
                goto LABEL_36;
              }
            }

            else if (v38)
            {
              if (v35)
              {
                goto LABEL_36;
              }
            }

            else if (v34)
            {
              goto LABEL_36;
            }
          }

          else if (!*(a2 + 216) && v38 == v32)
          {
            goto LABEL_36;
          }
        }

        anon_8 += 16;
        --v31;
      }

      while (v31);
      *a1 = 0;
      *(a1 + 8) = -256;
      return;
    }

LABEL_36:
    v17, v17, v25, v26, v27, v28, v29, v30;
    v12 = a1;
    goto LABEL_37;
  }

  v253 = *(a3 + 88);
  __src[0] = *(a3 + 80);
  __src[1] = v253;
  v358[0] = *a3;
  v254 = *(*v13 + 256);
  v255 = v358[0];

  v256 = v254(a3 + 8, __src, v358, &v366, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  __src[1], v257, v258, v259, v260, v261, v262, v263;
  if (v347)
  {
    return;
  }

  v346 = a3;
  v271 = *v256->tree;
  if (!v271)
  {
LABEL_162:
    v256, v264, v265, v266, v267, v268, v269, v270;
    a3 = v346;
    goto LABEL_12;
  }

  v272 = 4;
  v273 = a7;
  while (v272 - 4 < v271)
  {
    v275 = v273 == 2;
    v276 = *(&v256->super.isa + v272);
    v277 = v9[2];
    v362 = a6;
    v363 = v273;
    v359 = v276;
    v360 = 0;
    v278 = *(*v277 + 168);
    v279 = v276;
    v278(__src, &v359, v275, &v362, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    sub_1CF1E53F8(v359, v360, SHIBYTE(v360));
    memcpy(v358, __src, sizeof(v358));
    if (sub_1CF08B99C(v358) != 1)
    {
      memcpy(__dst, __src, 0x208uLL);
      if (LOBYTE(__dst[27]) == 255)
      {
        if (LOBYTE(__dst[15]))
        {
          if (LOBYTE(__dst[15]) == 2)
          {
            goto LABEL_165;
          }

          goto LABEL_160;
        }

        if ((__dst[13] & 0x400) == 0)
        {
LABEL_160:
          if (!__dst[1])
          {
LABEL_165:
            v256, v280, v281, v282, v283, v284, v285, v286;
            sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
            *a1 = v276;
            *(a1 + 8) = 0;
            return;
          }
        }
      }

      sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
      goto LABEL_152;
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1CEFCCC44(__dst, &qword_1EC4BFDC8, &unk_1CFA054A0);

LABEL_152:
    v271 = *v256->tree;
    v274 = v272 - 3;
    ++v272;
    v9 = v368;
    v273 = a7;
    if (v274 == v271)
    {
      goto LABEL_162;
    }
  }

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
}

void sub_1CF416BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v237 = a6;
  v238 = a7;
  v7 = *(a4 + 248);
  if (!v7 || (v239 = *(a4 + 248), !*(a2 + 137)))
  {
    *a1 = 0;
    *(a1 + 8) = -256;
    return;
  }

  v215 = *(a2 + 16);
  v217 = *(a2 + 8);
  v218 = *(a2 + 160);
  v8 = *(*a5 + 248);
  v228 = v7;
  v8();
  sub_1CF9E7B08();

  sub_1CF9E7C08();
  for (i = __src[0]; (~__src[0] & 0xF000000000000007) != 0; i = __src[0])
  {
    if ((i & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = v31 + *(*v31 + 664);
      swift_beginAccess();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v35 = *(*(v34 - 8) + 48);
      if (v35(v33, 1, v34))
      {
        goto LABEL_15;
      }

      v219 = v35;
      v36 = *v33;
      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;
      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v42 = v37;
      v43 = v40;
      if (v42 == v41 && v39 == v40)
      {
        v224 = 1;
      }

      else
      {
        v224 = sub_1CF9E8048();
      }

      v57 = v36;
      v58 = v228;
      v59 = v57;
      v60 = v58;
      v61 = v59;
      sub_1CF095774(i);

      v39, v62, v63, v64, v65, v66, v67, v68;
      v43, v69, v70, v71, v72, v73, v74, v75;
      if ((v224 & 1) == 0)
      {
LABEL_14:
        sub_1CF09575C(i);
        goto LABEL_15;
      }

      if (v219(v33, 1, v34) == 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v45 = swift_dynamicCastClass();
      if (!v45)
      {
        goto LABEL_15;
      }

      v32 = v45;
      v33 = v45 + *(*v45 + 672);
      swift_beginAccess();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v47 = *(*(v46 - 8) + 48);
      if (v47(v33, 1, v46))
      {
        goto LABEL_15;
      }

      v220 = v47;
      v48 = *v33;
      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v51 = v50;
      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v54 = v49;
      v55 = v52;
      if (v54 == v53 && v51 == v52)
      {
        v225 = 1;
      }

      else
      {
        v225 = sub_1CF9E8048();
      }

      v76 = v48;
      v77 = v228;
      v78 = v76;
      v60 = v77;
      sub_1CF095774(i);

      v51, v79, v80, v81, v82, v83, v84, v85;
      v55, v86, v87, v88, v89, v90, v91, v92;
      if ((v225 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v220(v33, 1, v46) == 1)
      {
        goto LABEL_77;
      }
    }

    v93 = *(v33 + 16);
    v94 = *(a3 + 128);
    v95 = *(a3 + 136);
    __src[0] = *(v33 + 8);
    __src[1] = v93;
    v230[0] = v94;
    v230[1] = v95;
    sub_1CEFE4E68();

    v96 = sub_1CF9E7678();
    sub_1CF09575C(i);
    v93, v97, v98, v99, v100, v101, v102, v103;
    v95, v104, v105, v106, v107, v108, v109, v110;
    if (!v96)
    {

      v111 = *(v32 + 144);
      v112 = *(v32 + 152);
      sub_1CF09575C(i);
      *a1 = v111;
      *(a1 + 8) = v112;
      *(a1 + 9) = 0;
      return;
    }

LABEL_15:
    sub_1CF09575C(i);
    sub_1CF9E7C08();
  }

  v10 = a5;
  if (v218 != 2 && (v217 == 255 || !*(a2 + 248)) && v215)
  {

    *a1 = 0;
    *(a1 + 8) = -256;
    return;
  }

  v11 = a5[4];
  if (v11[32])
  {
    goto LABEL_11;
  }

  v113 = *(a3 + 136);
  __src[0] = *(a3 + 128);
  __src[1] = v113;
  v230[0] = *a3;
  LOBYTE(v230[1]) = *(a3 + 8);
  v114 = *(*v11 + 256);

  v115 = v114(a3 + 16, __src, v230, &v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v123 = __src[1];
  if (v223)
  {

    v123, v124, v125, v126, v127, v128, v129, v130;
    return;
  }

  v170 = v115;
  __src[1], v116, v117, v118, v119, v120, v121, v122;
  v178 = *v170->tree;
  if (v178)
  {
    v179 = 0;
    anon_8 = v170[1]._anon_8;
    while (1)
    {
      if (v179 >= v178)
      {
        goto LABEL_75;
      }

      v183 = *(anon_8 - 1);
      v184 = *anon_8;
      v185 = a5[2];
      v235 = a6;
      v236 = a7;
      v231 = v183;
      v232 = v184;
      v233 = 0;
      (*(*v185 + 168))(__src, &v231, a7 == 2, &v235, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      sub_1CEFD0994(v231, v232, v233);
      memcpy(v230, __src, sizeof(v230));
      if (sub_1CF08B99C(v230) != 1)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v181 = &unk_1EC4BFD20;
      v182 = &unk_1CFA05440;
LABEL_56:
      sub_1CEFCCC44(__dst, v181, v182);
      ++v179;
      v178 = *v170->tree;
      anon_8 += 16;
      if (v179 == v178)
      {
        goto LABEL_67;
      }
    }

    memcpy(__dst, __src, 0x208uLL);
    if (!__dst[31])
    {
      if (LOBYTE(__dst[20]))
      {
        if (LOBYTE(__dst[20]) == 2)
        {

          v170, v207, v208, v209, v210, v211, v212, v213;
LABEL_73:
          sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          *a1 = v183;
          *(a1 + 8) = v184;
          return;
        }

        goto LABEL_64;
      }

      if ((__dst[18] & 0x400) == 0)
      {
LABEL_64:
        if (!__dst[2])
        {
          v170, v186, v187, v188, v189, v190, v191, v192;

          goto LABEL_73;
        }
      }
    }

    v181 = &qword_1EC4BFBC0;
    v182 = &unk_1CF9FCAC0;
    goto LABEL_56;
  }

LABEL_67:
  v170, v171, v172, v173, v174, v175, v176, v177;
  v10 = a5;
LABEL_11:
  v12 = v10[5];
  v13 = *(a3 + 136);
  __src[0] = *(a3 + 128);
  __src[1] = v13;
  v230[0] = 0;
  v14 = *(*v12 + 256);

  v15 = v14(&v239, __src, v230, &v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v23 = __src[1];
  if (v223)
  {

    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v131 = v15;
    __src[1], v16, v17, v18, v19, v20, v21, v22;
    v139 = *v131->tree;
    if (v139)
    {
      v140 = *(a2 + 248);

      v141 = 0;
      while (v141 < v139)
      {
        if (v140)
        {
          v142 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v144 = v143;
          v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v152 = v142;
          v153 = v145;
          if (v152 == v146 && v144 == v145)
          {
            v144, v145, v146, v147, v148, v149, v150, v151;
            v153, v200, v201, v202, v203, v204, v205, v206;
LABEL_70:

            swift_bridgeObjectRelease_n();
            goto LABEL_71;
          }

          v155 = sub_1CF9E8048();
          v144, v156, v157, v158, v159, v160, v161, v162;
          v153, v163, v164, v165, v166, v167, v168, v169;
          if (v155)
          {
            goto LABEL_70;
          }
        }

        ++v141;
        v139 = *v131->tree;
        if (v141 == v139)
        {

          v131, v193, v194, v195, v196, v197, v198, v199;
          *a1 = 0;
          *(a1 + 8) = -256;
          return;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    else
    {
      v131, v132, v133, v134, v135, v136, v137, v138;

LABEL_71:
      *a1 = 0;
      *(a1 + 8) = -256;
    }
  }
}

uint64_t sub_1CF4175D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
  result = swift_allocObject();
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 144) = a1;
  *(result + 152) = 0;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  if ((a4 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1CF417670(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
  result = swift_allocObject();
  *(result + 160) = 0;
  *(result + 168) = -1;
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  if ((a5 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

void sub_1CF417728(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = *v5;
  v10 = *(v5 + 8);
  v138[0] = *(v5 + 9);
  *(v138 + 3) = *(v5 + 12);
  v11 = *(v5 + 208);
  v134 = *(v5 + 192);
  v135 = v11;
  v12 = *(v5 + 240);
  v136 = *(v5 + 224);
  v137 = v12;
  v13 = *(v5 + 144);
  v130 = *(v5 + 128);
  v131 = v13;
  v14 = *(v5 + 176);
  v132 = *(v5 + 160);
  v133 = v14;
  v15 = *(v5 + 80);
  v126 = *(v5 + 64);
  v127 = v15;
  v16 = *(v5 + 112);
  v128 = *(v5 + 96);
  v129 = v16;
  v17 = *(v5 + 48);
  v124 = *(v5 + 32);
  v125 = v17;
  v19 = *(v5 + 256);
  v18 = *(v5 + 264);
  v20 = *(v5 + 480);
  v120 = *(v5 + 464);
  v121 = v20;
  v122 = *(v5 + 496);
  v123 = *(v5 + 512);
  v21 = *(v5 + 416);
  v116 = *(v5 + 400);
  v117 = v21;
  v22 = *(v5 + 448);
  v118 = *(v5 + 432);
  v119 = v22;
  v23 = *(v5 + 352);
  v112 = *(v5 + 336);
  v113 = v23;
  v24 = *(v5 + 384);
  v114 = *(v5 + 368);
  v115 = v24;
  v25 = *(v5 + 288);
  v108 = *(v5 + 272);
  v109 = v25;
  v26 = *(v5 + 320);
  v110 = *(v5 + 304);
  v111 = v26;
  v66 = v18;
  if ((v8 & 0x51) != 0 || v10 == 255)
  {
    sub_1CEFCCBDC(v5, &v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_3;
  }

  v62 = v8;
  v69 = v9;
  v70 = v10;
  v67 = a2;
  v68 = a3;
  v37 = *(*a1[3] + 264);
  sub_1CEFCCBDC(v5, &v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v38 = v139;
  v39 = v37(&v69, &v67, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v139 = v38;
  if (v38)
  {
    v71 = v9;
    v72 = v10;
    *v73 = v138[0];
    *&v73[3] = *(v138 + 3);
    v74 = v62;
    v75 = v7;
    v86 = v134;
    v87 = v135;
    v88 = v136;
    v89 = v137;
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v85 = v133;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v81 = v129;
    v76 = v124;
    v77 = v125;
    v90 = v19;
    goto LABEL_10;
  }

  v8 = v62;
  if (!v39)
  {
    v59 = 0;
LABEL_34:
    v7 |= v59;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = (v43 + 176);
LABEL_33:
    v59 = *v44;

    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1EDEABDE8;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_39;
  }

  v8 = v62 | 1;
LABEL_3:
  v27 = *(v5 + 256);
  if ((v27 & 0x51) != 0)
  {
    v29 = v19;
    goto LABEL_12;
  }

  v28 = *(v5 + 248);
  v29 = v19;
  if (!v28)
  {
LABEL_12:
    v40 = v66;
LABEL_27:
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 9) = v138[0];
    *(a4 + 12) = *(v138 + 3);
    *(a4 + 16) = v8;
    *(a4 + 24) = v7;
    v45 = v135;
    *(a4 + 192) = v134;
    *(a4 + 208) = v45;
    v46 = v137;
    *(a4 + 224) = v136;
    *(a4 + 240) = v46;
    v47 = v131;
    *(a4 + 128) = v130;
    *(a4 + 144) = v47;
    v48 = v133;
    *(a4 + 160) = v132;
    *(a4 + 176) = v48;
    v49 = v127;
    *(a4 + 64) = v126;
    *(a4 + 80) = v49;
    v50 = v129;
    *(a4 + 96) = v128;
    *(a4 + 112) = v50;
    v51 = v125;
    *(a4 + 32) = v124;
    *(a4 + 48) = v51;
    *(a4 + 256) = v29;
    *(a4 + 264) = v40;
    v52 = v121;
    *(a4 + 464) = v120;
    *(a4 + 480) = v52;
    *(a4 + 496) = v122;
    *(a4 + 512) = v123;
    v53 = v117;
    *(a4 + 400) = v116;
    *(a4 + 416) = v53;
    v54 = v119;
    *(a4 + 432) = v118;
    *(a4 + 448) = v54;
    v55 = v113;
    *(a4 + 336) = v112;
    *(a4 + 352) = v55;
    v56 = v115;
    *(a4 + 368) = v114;
    *(a4 + 384) = v56;
    v57 = v109;
    *(a4 + 272) = v108;
    *(a4 + 288) = v57;
    v58 = v111;
    *(a4 + 304) = v110;
    *(a4 + 320) = v58;
    return;
  }

  v60 = v19;
  v61 = v9;
  v30 = v8;
  v31 = *(v5 + 264);
  v32 = (*a1)[22];
  v33 = v28;
  v34 = v32();
  v67 = v33;
  v69 = a2;
  v70 = a3;
  v35 = v139;
  v36 = (*(**(v34 + 24) + 264))(&v67, &v69, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v139 = v35;
  if (v35)
  {

    v71 = v61;
    v72 = v10;
    *v73 = v138[0];
    *&v73[3] = *(v138 + 3);
    v74 = v30;
    v75 = v7;
    v86 = v134;
    v87 = v135;
    v88 = v136;
    v89 = v137;
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v85 = v133;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v81 = v129;
    v76 = v124;
    v77 = v125;
    v90 = v60;
LABEL_10:
    v91 = v66;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    sub_1CEFCCC44(&v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    return;
  }

  v8 = v30;
  if (!v36)
  {

    v42 = 0;
LABEL_25:

    v40 = v42 | v31;
    v29 = v60;
LABEL_26:
    v9 = v61;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = *(v41 + 168);
LABEL_24:

    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDEABDE8;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  if (swift_dynamicCastClass())
  {

    v29 = v27 | 1;
    v40 = v31;
    goto LABEL_26;
  }

LABEL_39:
  sub_1CF9E7B68();
  __break(1u);
}

void *sub_1CF417EF0@<X0>(void **a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v9 = *v4;
  v8 = *(v4 + 8);
  v82 = *(v4 + 16);
  v78 = *(v4 + 152);
  v79 = *(v4 + 168);
  v80 = *(v4 + 184);
  v10 = *(v4 + 208);
  v81 = *(v4 + 200);
  v74 = *(v4 + 88);
  v75 = *(v4 + 104);
  v76 = *(v4 + 120);
  v77 = *(v4 + 136);
  v70 = *(v4 + 24);
  v71 = *(v4 + 40);
  v72 = *(v4 + 56);
  v73 = *(v4 + 72);
  v11 = *(v4 + 216);
  v69[0] = *(v4 + 217);
  *(v69 + 3) = *(v4 + 220);
  v12 = *(v4 + 224);
  v39 = *(v4 + 232);
  memcpy(__dst, (v4 + 240), sizeof(__dst));
  v40 = v12;
  v42 = v8;
  if ((v8 & 0x51) != 0)
  {
    v38 = v9;
    v13 = sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_3:
    v14 = v10;
    v15 = a3;
    goto LABEL_4;
  }

  v21 = v9;
  if (!v9)
  {
    v38 = 0;
    v13 = sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
    v6 = v5;
    goto LABEL_3;
  }

  v35 = v11;
  v34 = v10;
  v43 = v9;
  v45 = a2;
  v15 = a3;
  v46 = a3;
  v22 = *(*a1[3] + 264);
  sub_1CEFCCBDC(v4, &v47, &unk_1EC4BFC90, &unk_1CFA053E0);
  v23 = v21;
  v24 = v22(&v43, &v45, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v5)
  {

    v47 = v21;
    v48 = v8;
    v49 = v82;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v54 = v74;
    v61 = v81;
    v62 = v34;
    v63 = v35;
    *v64 = v69[0];
    *&v64[3] = *(v69 + 3);
    v65 = v12;
    v66 = v39;
    goto LABEL_11;
  }

  v38 = v21;
  v14 = v34;
  if (!v24)
  {

    v31 = 0;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = *(v30 + 168);

LABEL_30:
    v6 = 0;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  v6 = 0;
  if (!swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_41;
    }

    v42 = v8 | 1;
    goto LABEL_32;
  }

  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDEABDE8;

LABEL_31:
  v82 |= v31;
LABEL_32:
  v11 = v35;
LABEL_4:
  v16 = *(v4 + 224);
  if ((v16 & 0x51) != 0)
  {
    v27 = v39;
    v26 = v40;
    goto LABEL_28;
  }

  v17 = v6;
  if (v11 == 255)
  {
    v27 = v39;
    v26 = v40;
LABEL_28:
    *a4 = v38;
    *(a4 + 8) = v42;
    *(a4 + 16) = v82;
    *(a4 + 152) = v78;
    *(a4 + 168) = v79;
    *(a4 + 184) = v80;
    v33 = v81;
    *(a4 + 88) = v74;
    *(a4 + 104) = v75;
    *(a4 + 120) = v76;
    *(a4 + 136) = v77;
    *(a4 + 24) = v70;
    *(a4 + 40) = v71;
    *(a4 + 56) = v72;
    *(a4 + 72) = v73;
    *(a4 + 200) = v33;
    *(a4 + 208) = v14;
    *(a4 + 216) = v11;
    *(a4 + 217) = v69[0];
    *(a4 + 220) = *(v69 + 3);
    *(a4 + 224) = v26;
    *(a4 + 232) = v27;
    return memcpy((a4 + 240), __dst, 0x118uLL);
  }

  v18 = *(v4 + 232);
  v19 = ((*a1)[22])(v13);
  v45 = v14;
  v46 = v11;
  v43 = a2;
  v44 = v15;
  v20 = (*(**(v19 + 24) + 264))(&v45, &v43, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v17)
  {

    v47 = v38;
    v48 = v42;
    v49 = v82;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v55 = v75;
    v56 = v76;
    v57 = v77;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v54 = v74;
    v61 = v81;
    v62 = v14;
    v63 = v11;
    *v64 = v69[0];
    *&v64[3] = *(v69 + 3);
    v65 = v40;
    v66 = v39;
LABEL_11:
    memcpy(v67, __dst, sizeof(v67));
    return sub_1CEFCCC44(&v47, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  if (!v20)
  {
    v32 = 0;
LABEL_27:

    v27 = v32 | v18;
    v26 = v40;
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = (v28 + 176);
LABEL_26:
    v32 = *v29;

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastClass())
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EDEABDE8;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastClass())
  {

    v26 = v16 | 1;
    v27 = v18;
    goto LABEL_28;
  }

LABEL_41:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF41864C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (((*(*a2 + 152))() & 0x4000) == 0)
  {
    goto LABEL_5;
  }

  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 216);
  if (v10 == 255)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 224);
  if (((v11 | v12) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v15 = *(a1 + 208);
  if ((v11 & 0x80) != 0 && (*(a2[4] + 32) & 1) == 0 && (v11 & 9) != 0)
  {
    v28 = *(*a2 + 176);
    v30 = v9;
    v16 = v28();
    v29 = v15;
    v17 = sub_1CF39A4F4(v15, v10, v16, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v19 = v17;
    v27 = v18;

    if (v19)
    {
      if (v27)
      {
        sub_1CF41AC6C(a2, v29, v10, v27, a3, a4);
        sub_1CF41B1EC(a2, v30, v29, v10, a3, a4);

LABEL_28:
        v13 = 1;
        return v13 & 1;
      }
    }

    else
    {
    }

    v15 = v29;
  }

  v13 = 0;
  if ((*(a2[5] + 32) & 1) == 0 && (v12 & 0x80) != 0 && (v12 & 9) != 0)
  {
    v20 = v9;
    sub_1CF39AA68(v20, a2, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v31 = *(*a2 + 176);
        v24 = v31();
        sub_1CF41AF30(v24, v20, v23, a3, a4);

        v26 = (v31)(v25);
        sub_1CF41B6F8(v26, v15, v10, v20, a3, a4);

        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF41896C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (((*(*a2 + 152))() & 0x4000) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 8);
  if (v9 == 255)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 248);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 256);
  if (((v11 | v12) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a1;
  if ((v11 & 0x80) != 0 && (*(a2[4] + 32) & 1) == 0 && (v11 & 9) != 0)
  {
    v29 = v15;
    v30 = *(*a2 + 176);
    v16 = v10;
    v17 = v30();
    sub_1CF39AA68(v16, v17, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v31 = v19;
    v28 = v16;
    v20 = v18;

    if (v20)
    {
      if (v31)
      {
        sub_1CF41AF30(a2, v28, v31, a3, a4);
        sub_1CF41B6F8(a2, v29, v9, v28, a3, a4);

LABEL_28:
        v13 = 1;
        return v13 & 1;
      }
    }

    else
    {
    }

    v15 = v29;
  }

  v13 = 0;
  if ((*(a2[5] + 32) & 1) == 0 && (v12 & 0x80) != 0 && (v12 & 9) != 0)
  {
    v21 = v10;
    v22 = sub_1CF39A4F4(v15, v9, a2, a3, a4);
    if (v4)
    {

      return v13 & 1;
    }

    v24 = v23;
    if (v22)
    {
      if (v23)
      {
        v32 = *(*a2 + 176);
        v25 = v32();
        sub_1CF41AC6C(v25, v15, v9, v24, a3, a4);

        v27 = (v32)(v26);
        sub_1CF41B1EC(v27, v21, v15, v9, a3, a4);

        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF418C98(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1CF9E5CF8();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  if (*(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48)) == 1)
  {
    v41 = v10;
    v13 = *(v7 + 2);
    v14 = *v9;
    sub_1CF7EBA74(*v9, v5, v3, v66);
    if (!v1)
    {
      memcpy(v61, v66, sizeof(v61));
      v15 = v61[97];
      v62[3] = *&v66[48];
      v62[4] = *&v66[64];
      v62[5] = *&v66[80];
      v63 = v66[96];
      v62[0] = *v66;
      v62[1] = *&v66[16];
      v62[2] = *&v66[32];
      memcpy(v65, &v66[98], sizeof(v65));
      v64 = v61[97];
      if (sub_1CF08B99C(v62) == 1)
      {
        *&v60[64] = *&v66[64];
        *&v60[80] = *&v66[80];
        v60[96] = v66[96];
        *v60 = *v66;
        *&v60[16] = *&v66[16];
        *&v60[32] = *&v66[32];
        *&v60[48] = *&v66[48];
        v60[97] = v15;
        memcpy(&v60[98], &v66[98], 0x1A6uLL);
        sub_1CEFCCBDC(v61, v59, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v60, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v60[48] = *&v66[48];
        *&v60[64] = *&v66[64];
        *&v60[80] = *&v66[80];
        v60[96] = v66[96];
        *v60 = *v66;
        *&v60[16] = *&v66[16];
        *&v60[32] = *&v66[32];
        v60[97] = v15;
        memcpy(&v60[98], &v66[98], 0x1A6uLL);
        sub_1CEFCCBDC(v61, v59, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v60, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v15 != 6)
        {
          goto LABEL_15;
        }
      }

      v40 = v7;
      memcpy(v59, v66, sizeof(v59));
      v16 = v59[96];
      *&v60[32] = *&v66[32];
      *&v60[48] = *&v66[48];
      *&v60[64] = *&v66[64];
      *&v60[80] = *&v66[80];
      *v60 = *v66;
      *&v60[16] = *&v66[16];
      memcpy(&v60[97], &v66[97], 0x1A7uLL);
      v60[96] = v59[96];
      if (sub_1CF08B99C(v60) == 1)
      {
        *&v58[32] = *&v66[32];
        *&v58[48] = *&v66[48];
        *&v58[64] = *&v66[64];
        *&v58[80] = *&v66[80];
        *v58 = *v66;
        *&v58[16] = *&v66[16];
        v58[96] = v16;
        memcpy(&v58[97], &v66[97], 0x1A7uLL);
        sub_1CEFCCBDC(v59, v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v58, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v58[32] = *&v66[32];
        *&v58[48] = *&v66[48];
        *&v58[64] = *&v66[64];
        *&v58[80] = *&v66[80];
        *v58 = *v66;
        *&v58[16] = *&v66[16];
        v58[96] = v16;
        memcpy(&v58[97], &v66[97], 0x1A7uLL);
        sub_1CEFCCBDC(v59, v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v58, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v16 == 3)
        {
          goto LABEL_15;
        }
      }

      memcpy(v57, v66, sizeof(v57));
      v17 = v57[345];
      memcpy(v58, v66, 0x159uLL);
      *&v58[474] = *&v66[474];
      *&v58[490] = *&v66[490];
      *&v58[504] = *&v66[504];
      *&v58[410] = *&v66[410];
      *&v58[426] = *&v66[426];
      *&v58[442] = *&v66[442];
      *&v58[458] = *&v66[458];
      *&v58[346] = *&v66[346];
      *&v58[362] = *&v66[362];
      *&v58[378] = *&v66[378];
      *&v58[394] = *&v66[394];
      v58[345] = v57[345];
      if (sub_1CF08B99C(v58) == 1)
      {
        memcpy(v55, v66, sizeof(v55));
        v56[0] = v17;
        *&v56[129] = *&v66[474];
        *&v56[145] = *&v66[490];
        *&v56[159] = *&v66[504];
        *&v56[65] = *&v66[410];
        *&v56[81] = *&v66[426];
        *&v56[97] = *&v66[442];
        *&v56[113] = *&v66[458];
        *&v56[1] = *&v66[346];
        *&v56[17] = *&v66[362];
        *&v56[33] = *&v66[378];
        *&v56[49] = *&v66[394];
        sub_1CEFCCBDC(v57, v54, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v55, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v18 = v40;
LABEL_12:
        memcpy(v54, v66, sizeof(v54));
        v19 = v54[344];
        memcpy(v55, v66, 0x158uLL);
        *&v56[128] = *&v66[473];
        *&v56[144] = *&v66[489];
        *&v56[159] = *&v66[504];
        *&v56[64] = *&v66[409];
        *&v56[80] = *&v66[425];
        *&v56[96] = *&v66[441];
        *&v56[112] = *&v66[457];
        *v56 = *&v66[345];
        *&v56[16] = *&v66[361];
        *&v56[32] = *&v66[377];
        *&v56[48] = *&v66[393];
        v55[344] = v54[344];
        if (sub_1CF08B99C(v55) == 1)
        {
          memcpy(v53, v66, 0x158uLL);
          v53[344] = v19;
          *&v53[473] = *&v66[473];
          *&v53[489] = *&v66[489];
          *&v53[504] = *&v66[504];
          *&v53[409] = *&v66[409];
          *&v53[425] = *&v66[425];
          *&v53[441] = *&v66[441];
          *&v53[457] = *&v66[457];
          *&v53[345] = *&v66[345];
          *&v53[361] = *&v66[361];
          *&v53[377] = *&v66[377];
          *&v53[393] = *&v66[393];
          sub_1CEFCCBDC(v54, v52, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v53, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_16;
        }

        memcpy(v53, v66, 0x158uLL);
        v53[344] = v19;
        *&v53[473] = *&v66[473];
        *&v53[489] = *&v66[489];
        *&v53[504] = *&v66[504];
        *&v53[409] = *&v66[409];
        *&v53[425] = *&v66[425];
        *&v53[441] = *&v66[441];
        *&v53[457] = *&v66[457];
        *&v53[345] = *&v66[345];
        *&v53[361] = *&v66[361];
        *&v53[377] = *&v66[377];
        *&v53[393] = *&v66[393];
        sub_1CEFCCBDC(v54, v52, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v53, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v19 != 3)
        {
LABEL_16:
          v20 = v14;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v22 = v21;
          v23 = v41;
          v24 = v42 + 8;
          v25 = *(v42 + 8);
          v26 = v25(v12, v41);
          v27 = v22 * 1000000000.0;
          if (COERCE__INT64(fabs(v22 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v27 > -9.22337204e18)
          {
            v40 = v25;
            v42 = v24;
            if (v27 < 9.22337204e18)
            {
              v28 = v27;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF70, &qword_1CF9FB468);
              v29 = swift_allocObject();
              *(v29 + 16) = 0u;
              *(v29 + 32) = 0u;
              *(v29 + 48) = 1;
              *(v29 + 56) = 0u;
              *(v29 + 72) = 0u;
              *(v29 + 88) = 0;
              *(v29 + 120) = 0;
              *(v29 + 128) = v28;
              *(v29 + 136) = 0x8000;
              *(v29 + 144) = v20;
              *(v29 + 96) = xmmword_1CFA04EB0;
              *(v29 + 112) = 0;
              MEMORY[0x1D3868FA0]();
              v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_20;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            v39[1] = v26;
            sub_1CF9E6D88();
LABEL_20:
            sub_1CF9E6DE8();
            if (*(*(v18 + 4) + 32) == 1)
            {
              v13 = v67;
              memcpy(v52, v66, sizeof(v52));
              v30 = v52[96];
              *&v53[32] = *&v66[32];
              *&v53[48] = *&v66[48];
              *&v53[64] = *&v66[64];
              *&v53[80] = *&v66[80];
              *v53 = *v66;
              *&v53[16] = *&v66[16];
              memcpy(&v53[97], &v66[97], 0x1A7uLL);
              v53[96] = v52[96];
              if (sub_1CF08B99C(v53) == 1)
              {
                v46 = *&v66[32];
                v47 = *&v66[48];
                v48 = *&v66[64];
                v49 = *&v66[80];
                v44 = *v66;
                v45 = *&v66[16];
                v50 = v30;
                memcpy(v51, &v66[97], sizeof(v51));
                sub_1CEFCCBDC(v52, v43, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                sub_1CEFCCC44(&v44, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              }

              else
              {
                v46 = *&v66[32];
                v47 = *&v66[48];
                v48 = *&v66[64];
                v49 = *&v66[80];
                v44 = *v66;
                v45 = *&v66[16];
                v50 = v30;
                memcpy(v51, &v66[97], sizeof(v51));
                sub_1CEFCCBDC(v52, v43, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                sub_1CEFCCC44(&v44, &unk_1EC4BFC90, &unk_1CFA053E0);
                if (!v30)
                {
                  memcpy(v43, v66, sizeof(v43));
                  v37 = v43;
                  goto LABEL_29;
                }
              }
            }

            v31 = v20;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v33 = v32;
            v40(v12, v23);
            v34 = v33 * 1000000000.0;
            if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v34 > -9.22337204e18)
            {
              if (v34 < 9.22337204e18)
              {
                v35 = v34;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
                v36 = swift_allocObject();
                *(v36 + 48) = 1;
                *(v36 + 16) = 0u;
                *(v36 + 32) = 0u;
                *(v36 + 56) = 0u;
                *(v36 + 72) = 0u;
                *(v36 + 88) = 0;
                *(v36 + 120) = 0;
                *(v36 + 128) = v35;
                *(v36 + 136) = 0x8000;
                *(v36 + 144) = v31;
                *(v36 + 96) = xmmword_1CFA04E30;
                *(v36 + 112) = 0;
                MEMORY[0x1D3868FA0]();
                if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_28:
                  sub_1CF9E6DE8();
                  v13 = v67;
                  memcpy(v53, v66, sizeof(v53));
                  v37 = v53;
LABEL_29:
                  sub_1CEFCCC44(v37, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                  return v13;
                }

LABEL_39:
                sub_1CF9E6D88();
                goto LABEL_28;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_15;
      }

      memcpy(v55, v66, sizeof(v55));
      v56[0] = v17;
      *&v56[129] = *&v66[474];
      *&v56[145] = *&v66[490];
      *&v56[159] = *&v66[504];
      *&v56[65] = *&v66[410];
      *&v56[81] = *&v66[426];
      *&v56[97] = *&v66[442];
      *&v56[113] = *&v66[458];
      *&v56[1] = *&v66[346];
      *&v56[17] = *&v66[362];
      *&v56[33] = *&v66[378];
      *&v56[49] = *&v66[394];
      sub_1CEFCCBDC(v57, v54, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v55, &unk_1EC4BFC90, &unk_1CFA053E0);
      v18 = v40;
      if (v17 == 6)
      {
        goto LABEL_12;
      }

LABEL_15:
      memcpy(v60, v66, sizeof(v60));
      sub_1CEFCCC44(v60, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v13;
}

uint64_t sub_1CF41990C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  LODWORD(v44) = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  if (*(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48)) == 1)
  {
    v42 = v8;
    v43 = v10;
    v14 = *v8;
    v13 = *(v8 + 8);
    sub_1CF7EB934(*v8, *(v8 + 8), v4, v44, v71);
    if (!v1)
    {
      v38 = v14;
      v39 = v6;
      v44 = 0;
      v40 = v9;
      v41 = v12;
      memcpy(v66, v71, sizeof(v66));
      v15 = v66[137];
      v67[5] = *&v71[80];
      v67[6] = *&v71[96];
      *v68 = *&v71[112];
      *&v68[9] = *&v71[121];
      v67[2] = *&v71[32];
      v67[3] = *&v71[48];
      v67[4] = *&v71[64];
      v67[0] = *v71;
      v67[1] = *&v71[16];
      memcpy(v70, &v71[138], sizeof(v70));
      v69 = v66[137];
      if (sub_1CF08B99C(v67) == 1)
      {
        *&v65[96] = *&v71[96];
        *&v65[112] = *&v71[112];
        *&v65[121] = *&v71[121];
        *&v65[32] = *&v71[32];
        *&v65[48] = *&v71[48];
        *&v65[64] = *&v71[64];
        *&v65[80] = *&v71[80];
        v65[137] = v15;
        *v65 = *v71;
        *&v65[16] = *&v71[16];
        memcpy(&v65[138], &v71[138], 0x17EuLL);
        sub_1CEFCCBDC(v66, v64, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v65, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        *&v65[80] = *&v71[80];
        *&v65[96] = *&v71[96];
        *&v65[112] = *&v71[112];
        *&v65[121] = *&v71[121];
        *&v65[32] = *&v71[32];
        *&v65[48] = *&v71[48];
        *&v65[64] = *&v71[64];
        *v65 = *v71;
        *&v65[16] = *&v71[16];
        v65[137] = v15;
        memcpy(&v65[138], &v71[138], 0x17EuLL);
        sub_1CEFCCBDC(v66, v64, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v65, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        if (v15 != 6)
        {
          goto LABEL_17;
        }
      }

      memcpy(v64, v71, sizeof(v64));
      v16 = v64[136];
      *&v65[96] = *&v71[96];
      *&v65[112] = *&v71[112];
      *&v65[128] = *&v71[128];
      *&v65[32] = *&v71[32];
      *&v65[48] = *&v71[48];
      *&v65[64] = *&v71[64];
      *&v65[80] = *&v71[80];
      *v65 = *v71;
      *&v65[16] = *&v71[16];
      memcpy(&v65[137], &v71[137], 0x17FuLL);
      v65[136] = v64[136];
      if (sub_1CF08B99C(v65) == 1)
      {
        *&v63[80] = *&v71[80];
        *&v63[96] = *&v71[96];
        *&v63[112] = *&v71[112];
        *&v63[16] = *&v71[16];
        *&v63[32] = *&v71[32];
        *&v63[48] = *&v71[48];
        *&v63[64] = *&v71[64];
        *&v63[128] = *&v71[128];
        *v63 = *v71;
        v63[136] = v16;
        memcpy(&v63[137], &v71[137], 0x17FuLL);
        sub_1CEFCCBDC(v64, v62, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v63, &unk_1EC4BFC20, &unk_1CFA0A290);
        v17 = v41;
      }

      else
      {
        *&v63[80] = *&v71[80];
        *&v63[96] = *&v71[96];
        *&v63[112] = *&v71[112];
        *&v63[16] = *&v71[16];
        *&v63[32] = *&v71[32];
        *&v63[48] = *&v71[48];
        *&v63[64] = *&v71[64];
        *&v63[128] = *&v71[128];
        *v63 = *v71;
        v63[136] = v16;
        memcpy(&v63[137], &v71[137], 0x17FuLL);
        sub_1CEFCCBDC(v64, v62, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v63, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v17 = v41;
        if (v16 == 3)
        {
          goto LABEL_17;
        }
      }

      memcpy(v62, v71, sizeof(v62));
      v18 = v62[345];
      memcpy(v63, v71, 0x159uLL);
      *&v63[474] = *&v71[474];
      *&v63[490] = *&v71[490];
      *&v63[504] = *&v71[504];
      *&v63[410] = *&v71[410];
      *&v63[426] = *&v71[426];
      *&v63[442] = *&v71[442];
      *&v63[458] = *&v71[458];
      *&v63[346] = *&v71[346];
      *&v63[362] = *&v71[362];
      *&v63[378] = *&v71[378];
      *&v63[394] = *&v71[394];
      v63[345] = v62[345];
      if (sub_1CF08B99C(v63) == 1)
      {
        memcpy(v60, v71, sizeof(v60));
        v61[0] = v18;
        *&v61[129] = *&v71[474];
        *&v61[145] = *&v71[490];
        *&v61[159] = *&v71[504];
        *&v61[65] = *&v71[410];
        *&v61[81] = *&v71[426];
        *&v61[97] = *&v71[442];
        *&v61[113] = *&v71[458];
        *&v61[1] = *&v71[346];
        *&v61[17] = *&v71[362];
        *&v61[33] = *&v71[378];
        *&v61[49] = *&v71[394];
        sub_1CEFCCBDC(v62, v59, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v60, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        memcpy(v60, v71, sizeof(v60));
        v61[0] = v18;
        *&v61[129] = *&v71[474];
        *&v61[145] = *&v71[490];
        *&v61[159] = *&v71[504];
        *&v61[65] = *&v71[410];
        *&v61[81] = *&v71[426];
        *&v61[97] = *&v71[442];
        *&v61[113] = *&v71[458];
        *&v61[1] = *&v71[346];
        *&v61[17] = *&v71[362];
        *&v61[33] = *&v71[378];
        *&v61[49] = *&v71[394];
        sub_1CEFCCBDC(v62, v59, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v60, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        if (v18 != 6)
        {
          goto LABEL_17;
        }
      }

      memcpy(v59, v71, sizeof(v59));
      v19 = v59[344];
      memcpy(v60, v71, 0x158uLL);
      *&v61[128] = *&v71[473];
      *&v61[144] = *&v71[489];
      *&v61[159] = *&v71[504];
      *&v61[64] = *&v71[409];
      *&v61[80] = *&v71[425];
      *&v61[96] = *&v71[441];
      *&v61[112] = *&v71[457];
      *v61 = *&v71[345];
      *&v61[16] = *&v71[361];
      *&v61[32] = *&v71[377];
      *&v61[48] = *&v71[393];
      v60[344] = v59[344];
      if (sub_1CF08B99C(v60) == 1)
      {
        memcpy(v58, v71, 0x158uLL);
        v58[344] = v19;
        *&v58[473] = *&v71[473];
        *&v58[489] = *&v71[489];
        *&v58[504] = *&v71[504];
        *&v58[409] = *&v71[409];
        *&v58[425] = *&v71[425];
        *&v58[441] = *&v71[441];
        *&v58[457] = *&v71[457];
        *&v58[345] = *&v71[345];
        *&v58[361] = *&v71[361];
        *&v58[377] = *&v71[377];
        *&v58[393] = *&v71[393];
        sub_1CEFCCBDC(v59, v57, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v58, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_18;
      }

      memcpy(v58, v71, 0x158uLL);
      v58[344] = v19;
      *&v58[473] = *&v71[473];
      *&v58[489] = *&v71[489];
      *&v58[504] = *&v71[504];
      *&v58[409] = *&v71[409];
      *&v58[425] = *&v71[425];
      *&v58[441] = *&v71[441];
      *&v58[457] = *&v71[457];
      *&v58[345] = *&v71[345];
      *&v58[361] = *&v71[361];
      *&v58[377] = *&v71[377];
      *&v58[393] = *&v71[393];
      sub_1CEFCCBDC(v59, v57, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v58, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      if (v19 != 3)
      {
LABEL_18:
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v21 = v20;
        v22 = *(v43 + 8);
        v22(v17, v40);
        v23 = v21 * 1000000000.0;
        if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v24 = v39;
          if (v23 > -9.22337204e18)
          {
            if (v23 < 9.22337204e18)
            {
              v25 = v23;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640);
              v26 = swift_allocObject();
              *(v26 + 152) = v13;
              *(v26 + 16) = 0u;
              *(v26 + 32) = 0u;
              *(v26 + 48) = 1;
              *(v26 + 56) = 0u;
              *(v26 + 72) = 0u;
              *(v26 + 88) = 0;
              *(v26 + 120) = 0;
              *(v26 + 128) = v25;
              v27 = v38;
              *(v26 + 136) = 0x8000;
              *(v26 + 144) = v27;
              *(v26 + 96) = xmmword_1CFA04EB0;
              *(v26 + 112) = 0;
              MEMORY[0x1D3868FA0]();
              if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            sub_1CF9E6D88();
            v24 = v39;
LABEL_22:
            sub_1CF9E6DE8();
            if (*(*(v24 + 32) + 32) == 1)
            {
              v28 = v72;
              memcpy(v57, v71, sizeof(v57));
              *&v58[80] = *&v71[80];
              *&v58[96] = *&v71[96];
              *&v58[112] = *&v71[112];
              *&v58[16] = *&v71[16];
              *&v58[32] = *&v71[32];
              *&v58[48] = *&v71[48];
              *&v58[64] = *&v71[64];
              v29 = v57[136];
              *&v58[128] = *&v71[128];
              *v58 = *v71;
              memcpy(&v58[137], &v71[137], 0x17FuLL);
              v58[136] = v57[136];
              if (sub_1CF08B99C(v58) == 1)
              {
                v52 = *&v71[96];
                v53 = *&v71[112];
                v54 = *&v71[128];
                v48 = *&v71[32];
                v49 = *&v71[48];
                v50 = *&v71[64];
                v51 = *&v71[80];
                v46 = *v71;
                v47 = *&v71[16];
                v55 = v29;
                memcpy(v56, &v71[137], sizeof(v56));
                sub_1CEFCCBDC(v57, v45, &unk_1EC4BFC20, &unk_1CFA0A290);
                sub_1CEFCCC44(&v46, &unk_1EC4BFC20, &unk_1CFA0A290);
              }

              else
              {
                v52 = *&v71[96];
                v53 = *&v71[112];
                v54 = *&v71[128];
                v48 = *&v71[32];
                v49 = *&v71[48];
                v50 = *&v71[64];
                v51 = *&v71[80];
                v46 = *v71;
                v47 = *&v71[16];
                v55 = v29;
                memcpy(v56, &v71[137], sizeof(v56));
                sub_1CEFCCBDC(v57, v45, &unk_1EC4BFC20, &unk_1CFA0A290);
                sub_1CEFCCC44(&v46, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                if (!v29)
                {
                  memcpy(v45, v71, sizeof(v45));
                  sub_1CEFCCC44(v45, &unk_1EC4BFC20, &unk_1CFA0A290);
                  return v28;
                }
              }
            }

            v30 = *v42;
            v31 = *(v42 + 8);
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v33 = v32;
            v22(v17, v40);
            v34 = v33 * 1000000000.0;
            if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v34 > -9.22337204e18)
            {
              if (v34 < 9.22337204e18)
              {
                v35 = v34;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
                v36 = swift_allocObject();
                *(v36 + 152) = v31;
                *(v36 + 16) = 0u;
                *(v36 + 32) = 0u;
                *(v36 + 48) = 1;
                *(v36 + 56) = 0u;
                *(v36 + 72) = 0u;
                *(v36 + 88) = 0;
                *(v36 + 120) = 0;
                *(v36 + 128) = v35;
                *(v36 + 136) = 0x8000;
                *(v36 + 144) = v30;
                *(v36 + 96) = xmmword_1CFA04E30;
                *(v36 + 112) = 0;
                MEMORY[0x1D3868FA0]();
                if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_30:
                  sub_1CF9E6DE8();
                  v13 = v72;
                  memcpy(v58, v71, sizeof(v58));
                  sub_1CEFCCC44(v58, &unk_1EC4BFC20, &unk_1CFA0A290);
                  return v13;
                }

LABEL_40:
                sub_1CF9E6D88();
                goto LABEL_30;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_17:
      memcpy(v65, v71, sizeof(v65));
      sub_1CEFCCC44(v65, &unk_1EC4BFC20, &unk_1CFA0A290);
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v13;
}

void sub_1CF41A5CC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v47 = a3;
  v46 = sub_1CF9E5CF8();
  v11 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  v52 = a5;
  v14 = *(a2 + 32);
  if ((v14[32] & 1) == 0)
  {
    v15 = a1[11];
    v49 = a1[10];
    v50 = v15;
    v48 = *a1;
    v16 = v48;
    v17 = *(*v14 + 256);

    v18 = v16;
    v19 = v17(a1 + 1, &v49, &v48, &v51, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    v50, v20, v21, v22, v23, v24, v25, v26;
    if (!v6)
    {
      v43[1] = 0;
      v34 = *v19->tree;
      if (v34)
      {
        v35 = 0;
        v45 = v19 + 1;
        v36 = *(*v47 + 144);
        v44 = xmmword_1CFA04E20;
        while (v35 < v34)
        {
          v37 = *(&v45->super.isa + v35);
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v39 = v38;
          (*(v11 + 8))(v13, v46);
          v40 = v39 * 1000000000.0;
          if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v40 <= -9.22337204e18)
          {
            goto LABEL_14;
          }

          if (v40 >= 9.22337204e18)
          {
            goto LABEL_15;
          }

          ++v35;
          v41 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
          v42 = swift_allocObject();
          *(v42 + 16) = 0u;
          *(v42 + 32) = 0u;
          *(v42 + 48) = 1;
          *(v42 + 56) = 0u;
          *(v42 + 72) = 0u;
          *(v42 + 88) = 0;
          *(v42 + 120) = 0x2000000000000000;
          *(v42 + 128) = v41;
          *(v42 + 136) = 0;
          *(v42 + 144) = v37;
          *(v42 + 96) = v44;
          *(v42 + 112) = 0;
          v36();

          v34 = *v19->tree;
          if (v35 == v34)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
LABEL_10:
        v19, v27, v28, v29, v30, v31, v32, v33;
      }
    }
  }
}

void sub_1CF41A8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v49 = a3;
  v48 = sub_1CF9E5CF8();
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a4;
  v55 = a5;
  v14 = *(a2 + 32);
  if ((v14[32] & 1) == 0)
  {
    v15 = a1[17];
    v52 = a1[16];
    v53 = v15;
    v50 = *a1;
    v51 = *(a1 + 8);
    v16 = *(*v14 + 256);

    v17 = v16(a1 + 2, &v52, &v50, &v54, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v53, v18, v19, v20, v21, v22, v23, v24;
    if (!v6)
    {
      v44[1] = 0;
      v32 = *v17->tree;
      if (v32)
      {
        v33 = 0;
        v34 = *(*v49 + 144);
        v46 = *v49 + 144;
        v47 = v34;
        v35 = (v11 + 8);
        anon_8 = v17[1]._anon_8;
        v45 = xmmword_1CFA04E20;
        while (v33 < v32)
        {
          v37 = *(anon_8 - 1);
          v38 = *anon_8;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v40 = v39;
          (*v35)(v13, v48);
          v41 = v40 * 1000000000.0;
          if (COERCE__INT64(fabs(v40 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v41 <= -9.22337204e18)
          {
            goto LABEL_14;
          }

          if (v41 >= 9.22337204e18)
          {
            goto LABEL_15;
          }

          ++v33;
          v42 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v43 = swift_allocObject();
          *(v43 + 152) = v38;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 1;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0;
          *(v43 + 120) = 0x2000000000000000;
          *(v43 + 128) = v42;
          *(v43 + 136) = 0;
          *(v43 + 144) = v37;
          *(v43 + 96) = v45;
          *(v43 + 112) = 0;
          v47();

          v32 = *v17->tree;
          anon_8 += 16;
          if (v33 == v32)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
LABEL_10:
        v17, v25, v26, v27, v28, v29, v30, v31;
      }
    }
  }
}

BOOL sub_1CF41ABB8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 48));
  v8 = type metadata accessor for ItemMetadata(0);
  if (v7[v8[20]])
  {
    return 0;
  }

  if (v7[v8[21]])
  {
    return 0;
  }

  if (v7[v8[16]])
  {
    return 0;
  }

  v9 = v7[v8[17]];
  if (v9 != 2 && (v9 & 1) != 0)
  {
    return 0;
  }

  return *v7 - 1 >= 2 && (*&a3 & 0x10008) == 0x10000;
}

void sub_1CF41AC6C(void **a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v7 = a6;
  v33 = a4;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v37 = a3;
  v34 = a5;
  v35 = v7;
  v17 = (*(*a1[5] + 384))(&v36, 1, &v34, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v14);
  if (!v6)
  {
    v31 = v12;
    v32 = v13;
    if (v17)
    {
      v18 = v36;
      v19 = v37;
      v21 = v33[15];
      v20 = v33[16];
      v29[1] = 0;
      v30 = v20;
      v22 = v33[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD978, &qword_1CF9FACB0);
      v23 = swift_allocObject();
      v24 = v23;
      *(v23 + 152) = v19;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *(v23 + 48) = 1;
      *(v23 + 56) = 0u;
      *(v23 + 72) = 0u;
      *(v23 + 88) = 0;
      *(v23 + 96) = xmmword_1CF9FEC30;
      *(v23 + 112) = 0;
      v25 = v30;
      *(v23 + 120) = v21;
      *(v23 + 128) = v25;
      *(v23 + 136) = v22;
      *(v23 + 144) = v18;
      if ((v22 & 0x8000) != 0)
      {
        *(v23 + 96) = 2359552;
        *(v23 + 112) = 0;
      }

      ((*a1)[22])();
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v27 = v26;
      (*(v32 + 8))(v16, v31);
      v28 = v27 * 1000000000.0;
      if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          sub_1CF902E70(v24, v28, a5, v7);

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_1CF41AF30(void **a1, void *a2, void *a3, void *a4, int a5)
{
  v29 = a3;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v30 = a4;
  v31 = a5;
  v15 = (*(*a1[5] + 384))(&v32, 1, &v30, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v12);
  if (!v5)
  {
    v27 = v10;
    v28 = v11;
    if (v15)
    {
      v16 = a2;
      HIDWORD(v25) = a5;
      v26 = 0;
      v18 = v29[15];
      v17 = v29[16];
      v19 = v29[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 1;
      *(v20 + 56) = 0u;
      *(v20 + 72) = 0u;
      *(v20 + 88) = 0;
      *(v20 + 96) = xmmword_1CF9FEC30;
      *(v20 + 112) = 0;
      *(v20 + 120) = v18;
      *(v20 + 128) = v17;
      *(v20 + 136) = v19;
      *(v20 + 144) = v16;
      if ((v19 & 0x8000) != 0)
      {
        *(v20 + 96) = 2359552;
        *(v20 + 112) = 0;
      }

      ((*a1)[22])(v16);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v23 = v22;
      (*(v28 + 8))(v14, v27);
      v24 = v23 * 1000000000.0;
      if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v24 > -9.22337204e18)
      {
        if (v24 < 9.22337204e18)
        {
          sub_1CF902E70(v21, v24, a4, SBYTE4(v25));

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_1CF41B1EC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  v42 = a6;
  v41 = a5;
  v45 = a2;
  v48 = a1;
  v8 = sub_1CF9E5CF8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v46);
  v44 = (&v40 - v10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v40 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v16;
  *(inited + 32) = v16;
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  v58 = 0;
  *&v55 = a3;
  WORD4(v55) = a4;
  v56 = 0;
  v57 = 6;
  swift_beginAccess();
  sub_1CF7E2EB0(&v55);
  swift_endAccess();
  *v14 = a3;
  v14[8] = a4;
  strcpy(v14 + 16, "lazily deleted");
  v14[31] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v14, v12, &qword_1EC4BFC88, &qword_1CFA053D8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF7E31D8(v12);
  swift_endAccess();
  sub_1CEFCCC44(v14, &qword_1EC4BFC88, &qword_1CFA053D8);
  v59 = 1;
  v17 = v45;
  *&v52 = v45;
  WORD4(v52) = 256;
  v53 = 2;
  v54 = 6;
  swift_beginAccess();
  v18 = v17;
  sub_1CF7E2EB0(&v52);
  swift_endAccess();
  v19 = v44;
  *v44 = v18;
  strcpy((v19 + 8), "lazily deleted");
  *(v19 + 23) = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v19, v12, &qword_1EC4BFC80, &qword_1CFA053D0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v20 = v18;
  sub_1CF7E31D8(v12);
  swift_endAccess();
  v21 = sub_1CEFCCC44(v19, &qword_1EC4BFC80, &qword_1CFA053D0);
  (*(*v48 + 176))(v21);
  v22 = v47;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v24 = v23;
  (*(v49 + 8))(v22, v50);
  v25 = v24 * 1000000000.0;
  if (COERCE__INT64(fabs(v24 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v25 < 9.22337204e18)
  {
    sub_1CF7F6588(inited, v25, v41, v42);

    swift_setDeallocating();
    *(inited + 24), v26, v27, v28, v29, v30, v31, v32;
    *(inited + 32), v33, v34, v35, v36, v37, v38, v39;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1CF41B6F8(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, unsigned int a6)
{
  v41 = a6;
  v40 = a5;
  v45 = a3;
  v44 = a2;
  v47 = a1;
  v7 = sub_1CF9E5CF8();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v39 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v39 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v39 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0570, qword_1CFA18A50);
  inited = swift_initStackObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(inited + 24) = MEMORY[0x1E69E7CC0];
  *(inited + 16) = v16;
  *(inited + 32) = v16;
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  v57 = 0;
  *&v54 = a4;
  WORD4(v54) = 0;
  v55 = 0;
  v56 = 6;
  swift_beginAccess();
  v17 = a4;
  sub_1CF7E30EC(&v54);
  swift_endAccess();
  *v14 = v17;
  strcpy(v14 + 8, "lazily deleted");
  v14[23] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v14, v12, &qword_1EC4BFC80, &qword_1CFA053D0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v18 = v17;
  sub_1CF7E2FA0(v12);
  swift_endAccess();
  sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
  v58 = 1;
  v19 = v44;
  *&v51 = v44;
  LOBYTE(v17) = v45;
  BYTE8(v51) = v45;
  BYTE9(v51) = 1;
  v52 = 2;
  v53 = 6;
  swift_beginAccess();
  sub_1CF7E30EC(&v51);
  swift_endAccess();
  *v10 = v19;
  v10[8] = v17;
  strcpy(v10 + 16, "lazily deleted");
  v10[31] = -18;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v10, v12, &qword_1EC4BFC88, &qword_1CFA053D8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF7E2FA0(v12);
  swift_endAccess();
  v20 = sub_1CEFCCC44(v10, &qword_1EC4BFC88, &qword_1CFA053D8);
  (*(*v47 + 176))(v20);
  v21 = v46;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v23 = v22;
  (*(v48 + 8))(v21, v49);
  v24 = v23 * 1000000000.0;
  if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 9.22337204e18)
  {
    sub_1CF7F6A3C(inited, v24, v40, v41);

    swift_setDeallocating();
    *(inited + 24), v25, v26, v27, v28, v29, v30, v31;
    *(inited + 32), v32, v33, v34, v35, v36, v37, v38;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1CF41BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v1617 = v10;
  v1615 = v11;
  v1587 = v12;
  v1594 = v13;
  v1595 = v14;
  v16 = v15;
  v2328 = v17;
  v1614 = v18;
  LODWORD(v1616) = a10;
  LODWORD(v1612) = v19;
  v1593 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v1593);
  v1568 = &v1566 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v1571 = &v1566 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v1579 = &v1566 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v1572 = &v1566 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v1575 = &v1566 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v1576 = &v1566 - v30;
  v1581 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v1577 = *(v1581 - 8);
  MEMORY[0x1EEE9AC00](v1581);
  v1578 = &v1566 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1573 = &v1566 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v1574 = &v1566 - v35;
  v1590 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  MEMORY[0x1EEE9AC00](v1590);
  v1591 = (&v1566 - v36);
  v37 = sub_1CF9E6118();
  v38 = *(v37 - 8);
  v1602 = v37;
  v1603 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v1570 = &v1566 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v1569 = &v1566 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v1598 = &v1566 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v1597 = &v1566 - v45;
  v1604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v1604);
  v1605 = (&v1566 - v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v1601 = *(v47 - 8);
  v48 = *(v1601 + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v1583 = &v1566 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v1585 = &v1566 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v1584 = &v1566 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v1592 = &v1566 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v1600 = &v1566 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v1566 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v1582 = &v1566 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v1588 = &v1566 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v1610 = (&v1566 - v65);
  v1599 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1596 = *(v1599 - 8);
  MEMORY[0x1EEE9AC00](v1599);
  v1580 = &v1566 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v1586 = &v1566 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v1589 = &v1566 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v1607 = &v1566 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v1606 = &v1566 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v1611 = (&v1566 - v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0590, &qword_1CFA05958);
  MEMORY[0x1EEE9AC00](v77);
  v79 = (&v1566 - v78);
  v1656[0] = v2328;
  v1609 = a9;
  v1654 = a9;
  v1655 = v1616;
  v81 = v16[3];
  v80 = v16[4];
  v1613 = v16;
  v1608 = v80;
  sub_1CEFCCBDC(v1614, v79, &qword_1EC4C0590, &qword_1CFA05958);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v169 = *v79;
      v170 = v79[1];
      v171 = v2328;
      v172 = v1605;
      v1605->super.isa = v2328;
      *v172->_anon_8 = v169;
      *v172->tree = v170;
      swift_storeEnumTagMultiPayload();
      v173 = *(*v1615 + 120);
      v174 = v171;
      v173(v172);
      v175 = &qword_1EC4BFC80;
      v176 = &qword_1CFA053D0;
      v177 = v172;
LABEL_17:
      sub_1CEFCCC44(v177, v175, v176);
      v178 = 0;
      return v178 & 1;
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05A8, &qword_1CFA05978);
    LODWORD(v1610) = *(v79 + *(v110 + 48));
    v111 = (v79 + *(v110 + 64));
    v113 = *v111;
    v112 = v111[1];
    v1607 = v113;
    v1614 = v112;
    sub_1CEFE55D0(v79, v1611, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v114 = v1617;
    v115 = v2328;
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v118 = v117;
    v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v126 = v119;
    v127 = v1608;
    v128 = v1612;
    if (v116 != v120 || v118 != v119)
    {
      v179 = sub_1CF9E8048();
      v118, v180, v181, v182, v183, v184, v185, v186;
      v126, v187, v188, v189, v190, v191, v192, v193;
      if (v179)
      {
        goto LABEL_19;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v249 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v118 = v250;
      v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v126 = v119;
      if (v249 != v120 || v118 != v119)
      {
        v251 = sub_1CF9E8048();
        v118, v252, v253, v254, v255, v256, v257, v258;
        v126, v259, v260, v261, v262, v263, v264, v265;
        if ((v251 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_19;
      }
    }

    v118, v119, v120, v121, v122, v123, v124, v125;
    v126, v129, v130, v131, v132, v133, v134, v135;
LABEL_19:
    if (!sub_1CF902E34() && v128 != 4)
    {
      goto LABEL_21;
    }

LABEL_36:
    v266 = v1613;
    v267 = *(*v1613 + 152);
    v267();
    if ((sub_1CF06D930() & 1) != 0 && v128 != 4)
    {
      sub_1CF7EBA74(v115, v1609, v1616, v1652);
      if (v114)
      {
LABEL_39:
        v1614, v268, v269, v270, v271, v272, v273, v274;
        v227 = v1611;
LABEL_374:
        sub_1CEFCCC44(v227, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        return v178 & 1;
      }

      memcpy(v1651, v1652, sizeof(v1651));
      if (sub_1CF08B99C(v1651) == 1)
      {
        memcpy(v1650, v1652, sizeof(v1650));
        sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        memcpy(v1650, v1652, sizeof(v1650));
        memcpy(v1763, v1652, sizeof(v1763));
        v336 = sub_1CF41864C(v1763, v266, v1609, v1616);
        v410 = v336;
        sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v410)
        {
          v1614, v411, v412, v413, v414, v415, v416, v417;
          sub_1CEFCCC44(v1611, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v178 = 1;
          return v178 & 1;
        }
      }
    }

    v1617 = v267;
    if (sub_1CF902E34())
    {
      v297 = v1611;
      sub_1CF7EBA74(v1611[1], v1609, v1616, v1652);
      if (v114)
      {
        v1614, v298, v299, v300, v301, v302, v303, v304;
        v227 = v297;
        goto LABEL_374;
      }

      memcpy(v1651, v1652, sizeof(v1651));
      if (sub_1CF08B99C(v1651) == 1)
      {
        memcpy(v1650, v1652, sizeof(v1650));
        sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        memcpy(v1650, v1652, sizeof(v1650));
        sub_1CEFCCC44(v1650, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (sub_1CF06D930())
        {
          if (v128 == 3)
          {
            v341 = 1;
            goto LABEL_106;
          }

          if (v128 != 4)
          {
LABEL_21:
            v1614, v194, v195, v196, v197, v198, v199, v200;
            v201 = v1611;
            goto LABEL_22;
          }
        }
      }
    }

    v341 = 0;
LABEL_106:
    sub_1CF7E6950(v1652);
    if (sub_1CF06DA5C(v1652[0], 1))
    {
      if (v128 == 3)
      {
        if ((v341 & 1) == 0)
        {
          if (*(v1611 + *(v1599 + 48) + v1593[20]))
          {
            LODWORD(v2328) = 0;
            v342 = v1611;
            goto LABEL_119;
          }

          (*(*v127 + 240))(v1611 + 1, 1, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v114)
          {
            goto LABEL_39;
          }

          v474 = v1582;
          if ((*(v1596 + 48))(v1582, 1, v1599) == 1)
          {
            sub_1CEFCCC44(v474, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            LODWORD(v1606) = sub_1CF7E69A4();
            sub_1CEFCCC44(v474, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            if (v1606)
            {
              sub_1CF436240(v115, v1594, v1595, 0x10000, &unk_1EC4BFE80, &qword_1CF9FB420);
              v593 = v115;
              sub_1CF903274();
            }
          }
        }

        goto LABEL_117;
      }

      if (sub_1CF902E34())
      {
        if (v128 == 4)
        {
          goto LABEL_117;
        }

        v1606 = sub_1CF611848(v1594, 0x2000000000000000uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
        swift_allocObject();
        sub_1CF06DA80();
        *v343 = v1587;
        v343[1] = 4;
        nullsub_1();
        v345 = v344;
        v346 = sub_1CEFF8C8C();
        v345, v347, v348, v349, v350, v351, v352, v353;
        *v1652 = v346;
        if (*(v1611 + *(v1599 + 48) + v1593[15]) == 1)
        {
          sub_1CF948150(v1651, 0x1000000000);
          v346 = *v1652;
        }

        sub_1CF3F7A48(v115, v1606, v1595, v346);
        v354 = v115;
        sub_1CF903274();

        v266 = v1613;
      }
    }

    if (!v128)
    {
      v342 = v1611;
      sub_1CF7E6950(v1652);
      sub_1CF06DA5C(v1652[0], 0);
      LODWORD(v2328) = 1;
LABEL_119:
      v355 = sub_1CF902E34();
      if ((v355 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        swift_allocObject();
        sub_1CF06DA80();
        *v356 = xmmword_1CFA04EC0;
        nullsub_1();
        sub_1CEFF5464(v357, v1652, v358, v359, v360, v361, v362, v363, v364);
        v365 = v1588;
        (*(v1596 + 56))(v1588, 1, 1, v1599);
        sub_1CF3F42D0(v365, v342, v1652, v266, v1615, 1, v1609, v1616);
        if (v114)
        {
          v1614, v366, v367, v368, v369, v370, v371, v372;
          sub_1CEFCCC44(v365, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_136:
          v227 = v342;
          goto LABEL_374;
        }

        v355 = sub_1CEFCCC44(v365, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      }

      (v1617)(v355);
      if (sub_1CF06D930())
      {
        v373 = v342 + *(v1599 + 48);
        if (sub_1CF06DA5C(*v373, 0))
        {
          LODWORD(v1606) = v341;
          v1617 = v114;
          v374 = v342[11];
          *v1652 = v342[10];
          v375 = *&v373[v1593[26]];
          *&v1652[8] = v374;
          v376 = v1593[30];
          v377 = *(*v266 + 608);

          v378 = v377(v1652, v375, &v373[v376]);
          *&v1652[8], v379, v380, v381, v382, v383, v384, v385;
          if (v378)
          {
            v386 = *v342;
            v387 = *v342;
            v388 = sub_1CF656C80(0);
            v389 = sub_1CEFF8C8C();
            v388, v390, v391, v392, v393, v394, v395, v396;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0560, qword_1CFA0E160);
            swift_allocObject();
            sub_1CF06DA80();
            *v397 = 4;
            nullsub_1();
            v399 = v398;
            v400 = sub_1CEFF8C8C();
            v399, v401, v402, v403, v404, v405, v406, v407;
            v1650[0] = 0;
            v1739 = v386;
            v1740 = 0;
            v1741 = *v1651;
            v1742 = *&v1651[4];
            v1743 = v389;
            v1744 = v400;
            v1747 = *&v1652[32];
            v1748 = *&v1652[48];
            *v1749 = *&v1652[64];
            *&v1749[15] = *&v1652[79];
            v1745 = *v1652;
            v1746 = *&v1652[16];
            v1750 = 14;
            sub_1CF903278();
          }

          else
          {
            v418 = *v342;
            v419 = *v342;
            v420 = sub_1CF656C80(0);
            v421 = sub_1CEFF8C8C();
            v420, v422, v423, v424, v425, v426, v427, v428;
            v1759 = *&v1652[32];
            v1760 = *&v1652[48];
            *v1761 = *&v1652[64];
            v1757 = *v1652;
            v1650[0] = 0;
            v1751 = v418;
            v1752 = 0;
            v1753 = *v1651;
            v1754 = *&v1651[4];
            v1755 = 4;
            v1756 = v421;
            *&v1761[15] = *&v1652[79];
            v1758 = *&v1652[16];
            v1762 = 14;
            sub_1CF903278();
          }

          v114 = v1617;
          v266 = v1613;
          v128 = v1612;
          v341 = v1606;
        }
      }

      v429 = v266;
      v430 = v1615;
      sub_1CF3F2AA0(v342, v429, v1615, v1609, v1616);
      if (v114)
      {
        v1614, v431, v432, v433, v434, v435, v436, v437;
        goto LABEL_136;
      }

      LODWORD(v1606) = v341;
      v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
      v439 = v1605;
      v440 = (&v1605->super.isa + *(v438 + 48));
      sub_1CEFCCBDC(v342, v1605, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v441 = v1614;
      *v440 = v1607;
      v440[1] = v441;
      swift_storeEnumTagMultiPayload();
      (*(*v430 + 120))(v439);
      sub_1CEFCCC44(v439, &qword_1EC4BFC80, &qword_1CFA053D0);
      *v1651 = *v342;
      v442 = *v1651;
      *&v1651[8] = 0;
      sub_1CF7E6950(&v1651[10]);
      v1651[115] = 0;
      v1735 = *&v1651[64];
      v1736 = *&v1651[80];
      v1737 = *&v1651[96];
      v1731 = *v1651;
      v1732 = *&v1651[16];
      v1733 = *&v1651[32];
      v1734 = *&v1651[48];
      v1738 = *&v1651[112];
      v443 = v442;
      sub_1CF903278();
      *&v1652[64] = *&v1651[64];
      *&v1652[80] = *&v1651[80];
      *&v1652[96] = *&v1651[96];
      *&v1652[112] = *&v1651[112];
      *v1652 = *v1651;
      *&v1652[16] = *&v1651[16];
      *&v1652[32] = *&v1651[32];
      *&v1652[48] = *&v1651[48];
      sub_1CEFCCC44(v1652, &qword_1EC4BE730, &unk_1CFA05490);
      if (sub_1CF902E34())
      {
        v1650[0] = 0;
        v444 = (*(*v1613 + 272))(v443);
        v1725 = v442;
        v1726 = 0;
        v445 = v1650[0];
        v1727 = v1650[0];
        v1728 = v444;
        v1729 = 9;
        v1730 = 10;
        sub_1CF903278();
        *v1651 = v442;
        v1651[8] = 0;
        v1651[9] = v445;
        *&v1651[16] = v444;
        v1651[82] = 9;
        v342 = v1611;
        v1651[115] = 10;
        v128 = v1612;
        sub_1CEFCCC44(v1651, &qword_1EC4BE730, &unk_1CFA05490);
      }

      *v1648 = *sub_1CF06EDF4();
      v446 = v1610;
      if (v128 == 3)
      {
        v446 = 0;
      }

      v447 = v1613;
      if (v446 == 1)
      {
        sub_1CF948150(v1651, 0x80000000000);
      }

      v448 = v342 + *(v1599 + 48);
      if (v448[v1593[36]] == 1)
      {
        sub_1CF948150(v1651, 0x8000);
      }

      sub_1CF7E6950(v1651);
      if (!FileItemKind.hasContent.getter())
      {
        (*(*v447[2] + 160))(v1651, v342, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v1651[8] != 255)
        {
          sub_1CF7F5D14(8, v1651);
        }
      }

      *v1650 = v442;
      *&v1650[8] = 0;
      *&v1650[16] = *v1648;
      *&v1650[24] = v1594;
      *&v1650[32] = v1595;
      v1650[82] = 0;
      v1722 = *&v1650[48];
      v1723[0] = *&v1650[64];
      v1721 = *&v1650[32];
      *(v1723 + 15) = *&v1650[79];
      v1719 = *v1650;
      v1720 = *&v1650[16];
      v1724 = 10;
      v449 = v443;
      sub_1CF903278();
      sub_1CEFCCC44(v1650, &qword_1EC4BFD48, &qword_1CFA05460);
      v450 = v1612 - 3;
      if (v1612 == 3 && ((v1606 | v448[v1593[16]]) & 1) == 0)
      {
        v1617 = 0;
        v1649[0] = 0;
        v1716 = v442;
        v1717 = 0;
        v1718 = 15;
        v503 = v449;
        sub_1CF903278();

        if (v448[v1593[20]] == 1)
        {
          *v1651 = v442;
          *&v1651[8] = 0;
          *&v1651[16] = 1;
          memset(&v1651[24], 0, 58);
          v1651[82] = 15;
          v1712 = *&v1651[32];
          v1713 = *&v1651[48];
          v1714[0] = *&v1651[64];
          *(v1714 + 15) = *&v1651[79];
          v1710 = *v1651;
          v1711 = *&v1651[16];
          v1715 = 10;
          v504 = v503;
          sub_1CF903278();
          sub_1CEFCCC44(v1651, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        sub_1CF7E6950(v1651);
        if (!sub_1CF68245C())
        {
          v588 = sub_1CF902E34();
          v114 = v1617;
          v457 = v2328;
          if (v588)
          {
            *v1651 = v442;
            *&v1651[8] = 0;
            v1651[16] = 2;
            v1651[82] = 10;
            v1706 = *&v1651[32];
            v1707 = *&v1651[48];
            v1708[0] = *&v1651[64];
            *(v1708 + 15) = *&v1651[79];
            v1704 = *v1651;
            v1705 = *&v1651[16];
            v1709 = 10;
            v589 = v503;
            v456 = v1615;
            sub_1CF903278();
            sub_1CEFCCC44(v1651, &qword_1EC4BFD48, &qword_1CFA05460);
          }

          else
          {
            v456 = v1615;
          }

LABEL_160:
          v458 = v448[v1593[16]];
          *v1649 = v442;
          *&v1649[8] = 0;
          v1649[16] = v458;
          v1649[82] = 5;
          v1688 = *&v1649[32];
          v1689 = *&v1649[48];
          v1690[0] = *&v1649[64];
          *(v1690 + 15) = *&v1649[79];
          v1686 = *v1649;
          v1687 = *&v1649[16];
          v1691 = 10;
          v459 = v449;
          sub_1CF903278();
          sub_1CEFCCC44(v1649, &qword_1EC4BFD48, &qword_1CFA05460);
          if (v457)
          {
            v342 = v1611;
            sub_1CF41A5CC(v1611, v1613, v456, v1609, v1616);
            if (v114)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v342 = v1611;
          }

          if ((sub_1CF06D930() & 1) != 0 && !sub_1CF902E34())
          {
            *v1651 = v442;
            *&v1651[8] = 0;
            *&v1651[16] = 517;
            *&v1651[24] = v1594;
            *&v1651[32] = v1595;
            v1682 = *&v1651[64];
            v1683 = *&v1651[80];
            *v1684 = *&v1651[96];
            v1681 = *&v1651[48];
            v1678 = *v1651;
            v1679 = *&v1651[16];
            v1651[114] = 12;
            *&v1684[15] = *&v1651[111];
            v1680 = *&v1651[32];
            v1685 = 9;
            v460 = v459;
            sub_1CF903278();
            sub_1CEFCCC44(v1651, &unk_1EC4BFD60, &qword_1CFA05468);
          }

          v461 = v1593;
          if (sub_1CF06EE7C())
          {
            v462 = v459;
            v463 = sub_1CF656C80(0);
            v464 = sub_1CEFF8C8C();
            v463, v465, v466, v467, v468, v469, v470, v471;
            v1646[0] = 0;
            v1666 = v442;
            v1667 = 0;
            v1668 = *v1647;
            v1669 = *&v1647[4];
            v1670 = 2;
            v1671 = v464;
            v342 = v1611;
            v1674 = *&v1651[32];
            v1675 = *&v1651[48];
            *v1676 = *&v1651[64];
            *&v1676[15] = *&v1651[79];
            v1672 = *v1651;
            v1673 = *&v1651[16];
            v1677 = 14;
            sub_1CF903278();

            v461 = v1593;
          }

          if (v448[v461[24]] == 1)
          {
            v1651[0] = 0;
            v1647[0] = 0;
            v1661 = v442;
            v1662 = 0;
            v1663 = 4;
            v1664 = 0;
            v1665 = 11;
            v472 = v459;
            sub_1CF903278();

            v461 = v1593;
          }

          if (v448[v461[25]] == 1)
          {
            v1651[0] = 0;
            v1647[0] = 0;
            v1656[1] = v442;
            v1657 = 0;
            v1658 = 8;
            v1659 = 0;
            v1660 = 11;
            v473 = v459;
            sub_1CF903278();
          }

          v201 = v342;
          goto LABEL_22;
        }

        v114 = v1617;
        v456 = v1615;
      }

      else
      {
        if (sub_1CF902E34() || (sub_1CF7E6950(v1651), !FileItemKind.supportsMaterialization.getter()))
        {
          *v1651 = v442;
          *&v1651[8] = 0;
          v1651[16] = 2;
          v1651[82] = 10;
          v1700 = *&v1651[32];
          v1701 = *&v1651[48];
          v1702[0] = *&v1651[64];
          *(v1702 + 15) = *&v1651[79];
          v1698 = *v1651;
          v1699 = *&v1651[16];
          v1703 = 10;
          v451 = v449;
          sub_1CF903278();
          sub_1CEFCCC44(v1651, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        if (v450 > 1 && sub_1CF902E34() && (sub_1CF7E69A4() & 1) != 0 && (sub_1CF7E6950(v1651), FileItemKind.hasContent.getter()) || v1606 && (sub_1CF7E69A4() & 1) != 0)
        {
          v452 = v449;
          v453 = sub_1CF93DAB0();
          sub_1CF4175D0(v452, v453, v454, 0x10000000);
          sub_1CF903274();
        }

        *v1651 = v442;
        *&v1651[8] = 0;
        v1651[16] = 0;
        v1651[82] = 3;
        v1694 = *&v1651[32];
        v1695 = *&v1651[48];
        v1696[0] = *&v1651[64];
        *(v1696 + 15) = *&v1651[79];
        v1692 = *v1651;
        v1693 = *&v1651[16];
        v1697 = 10;
        v455 = v449;
        v456 = v1615;
        sub_1CF903278();
        sub_1CEFCCC44(v1651, &qword_1EC4BFD48, &qword_1CFA05460);
      }

      v457 = v2328;
      goto LABEL_160;
    }

LABEL_117:
    LODWORD(v2328) = 0;
    v342 = v1611;
    goto LABEL_119;
  }

  v1567 = v81;
  if (EnumCaseMultiPayload)
  {
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05A0, &qword_1CFA05970);
    v137 = v136[12];
    v138 = *(v79 + v136[16]);
    *(v79 + v136[20] + 8), v139, v140, v141, v142, v143, v144, v145;
    v1614 = *v79;
    v146 = v1610;
    v147 = sub_1CEFE55D0(v79 + v137, v1610, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    LODWORD(v1611) = v138;
    if (v138)
    {
      v148 = v1597;
      sub_1CF19BFD0(v147);
      sub_1CEFCCBDC(v146, v59, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v149 = (*(v1601 + 80) + 16) & ~*(v1601 + 80);
      v150 = swift_allocObject();
      sub_1CEFE55D0(v59, v150 + v149, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v151 = sub_1CF9E6108();
      v152 = sub_1CF9E7298();
      v153 = swift_allocObject();
      *(v153 + 16) = 32;
      v154 = swift_allocObject();
      *(v154 + 16) = 8;
      v155 = swift_allocObject();
      *(v155 + 16) = sub_1CF482ADC;
      *(v155 + 24) = v150;
      v156 = swift_allocObject();
      *(v156 + 16) = sub_1CF485960;
      *(v156 + 24) = v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
      swift_allocObject();
      v157 = sub_1CF06DA80();
      *v158 = sub_1CF485A70;
      v158[1] = v153;
      v158[2] = sub_1CF485A70;
      v158[3] = v154;
      v158[4] = sub_1CF485884;
      v158[5] = v156;

      v157, v159, v160, v161, v162, v163, v164, v165;
      if (os_log_type_enabled(v151, v152))
      {
        LODWORD(v1607) = v152;
        v166 = sub_1CF1B5D40(12);
        v167 = swift_slowAlloc();
        *v1650 = 0;
        *v1649 = v167;
        *v166 = 258;
        *v1651 = v166 + 2;
        *v1652 = sub_1CF485A70;
        *&v1652[8] = v153;
        v168 = v1617;
        sub_1CF1B5D64(v1652, v1651, v1650, v1649);
        if (!v168)
        {

          *v1652 = sub_1CF485A70;
          *&v1652[8] = v154;
          sub_1CF1B5D64(v1652, v1651, v1650, v1649);

          *v1652 = sub_1CF485884;
          *&v1652[8] = v156;
          sub_1CF1B5D64(v1652, v1651, v1650, v1649);
          v1617 = 0;

          _os_log_impl(&dword_1CEFC7000, v151, v1607, "Recursive delete of %s", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v167);
          MEMORY[0x1D386CDC0](v167, -1, -1);
          sub_1CF1B5D48();
        }

        __break(1u);
LABEL_783:

        __break(1u);
        goto LABEL_784;
      }

      (*(v1603 + 8))(v148, v1602);
      v275 = v1613;
      v276 = v2328;
      *v1649 = v2328;
      *&v1649[8] = 0;
      v1649[16] = 1;
      v1649[82] = 3;
      v1820 = *&v1649[32];
      v1821 = *&v1649[48];
      v1822[0] = *&v1649[64];
      *(v1822 + 15) = *&v1649[79];
      v1818 = *v1649;
      v1819 = *&v1649[16];
      v1823 = 10;
      v277 = v2328;
      sub_1CF903278();
      v278 = sub_1CEFCCC44(v1649, &qword_1EC4BFD48, &qword_1CFA05460);
      (*(*v275 + 152))(v278);
      if ((sub_1CF06D930() & 1) != 0 && v1612 != 4 && sub_1CF902E34())
      {
        v279 = v1585;
        sub_1CEFCCBDC(v1610, v1585, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v280 = v1599;
        if ((*(v1596 + 48))(v279, 1, v1599) == 1)
        {
          sub_1CEFCCC44(v279, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          goto LABEL_48;
        }

        v338 = v279;
        v339 = v1586;
        sub_1CEFE55D0(v338, v1586, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v340 = v339 + *(v280 + 48);
        if ((*(v340 + v1593[16]) & 1) != 0 && *(v340 + v1593[15]) == 1)
        {
          goto LABEL_101;
        }

        v408 = v1617;
        sub_1CF7EBA74(v277, v1609, v1616, v1652);
        v1617 = v408;
        if (v408)
        {
LABEL_226:
          sub_1CEFCCC44(v1586, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          goto LABEL_60;
        }

        memcpy(v1651, v1652, sizeof(v1651));
        if (sub_1CF08B99C(v1651) == 1)
        {
          memcpy(v1650, v1652, sizeof(v1650));
          sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v409 = v1608;
        }

        else
        {
          memcpy(v1650, v1652, sizeof(v1650));
          sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v590 = sub_1CF06D930();
          v409 = v1608;
          if (v590)
          {
            goto LABEL_101;
          }
        }

        v591 = v1617;
        v592 = (*(*v409 + 488))(v1656, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1617 = v591;
        if (v591)
        {
          goto LABEL_226;
        }

        if ((v592 & 1) == 0)
        {
          *v1650 = v276;
          *&v1650[8] = 0;
          v1650[16] = 1;
          v1650[82] = 14;
          v1814 = *&v1650[32];
          v1815 = *&v1650[48];
          v1816[0] = *&v1650[64];
          *(v1816 + 15) = *&v1650[79];
          v1812 = *v1650;
          v1813 = *&v1650[16];
          v1817 = 10;
          v594 = v277;
          sub_1CF903278();
          sub_1CEFCCC44(v1650, &qword_1EC4BFD48, &qword_1CFA05460);
        }

LABEL_101:
        sub_1CEFCCC44(v1586, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      }
    }

    else
    {
      v228 = v1598;
      sub_1CF19BFD0(v147);
      sub_1CEFCCBDC(v146, v59, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v229 = (*(v1601 + 80) + 16) & ~*(v1601 + 80);
      v230 = swift_allocObject();
      sub_1CEFE55D0(v59, v230 + v229, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v231 = sub_1CF9E6108();
      v232 = sub_1CF9E7298();
      v233 = swift_allocObject();
      *(v233 + 16) = 32;
      v234 = swift_allocObject();
      *(v234 + 16) = 8;
      v235 = swift_allocObject();
      *(v235 + 16) = sub_1CF4858F8;
      *(v235 + 24) = v230;
      v236 = swift_allocObject();
      *(v236 + 16) = sub_1CF485960;
      *(v236 + 24) = v235;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
      swift_allocObject();
      v237 = sub_1CF06DA80();
      *v238 = sub_1CF485A70;
      v238[1] = v233;
      v238[2] = sub_1CF485A70;
      v238[3] = v234;
      v238[4] = sub_1CF485884;
      v238[5] = v236;

      v237, v239, v240, v241, v242, v243, v244, v245;
      if (os_log_type_enabled(v231, v232))
      {
        LODWORD(v1607) = v232;
        v246 = sub_1CF1B5D40(12);
        v247 = swift_slowAlloc();
        *v1650 = 0;
        *v1649 = v247;
        *v246 = 258;
        *v1651 = v246 + 2;
        *v1652 = sub_1CF485A70;
        *&v1652[8] = v233;
        v248 = v1617;
        sub_1CF1B5D64(v1652, v1651, v1650, v1649);
        v151 = v248;
        if (!v248)
        {

          *v1652 = sub_1CF485A70;
          *&v1652[8] = v234;
          sub_1CF1B5D64(v1652, v1651, v1650, v1649);

          *v1652 = sub_1CF485884;
          *&v1652[8] = v236;
          sub_1CF1B5D64(v1652, v1651, v1650, v1649);

          _os_log_impl(&dword_1CEFC7000, v231, v1607, "Delete of %s", v246, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v247);
          MEMORY[0x1D386CDC0](v247, -1, -1);
          sub_1CF1B5D48();
        }

        goto LABEL_783;
      }

      (*(v1603 + 8))(v228, v1602);
      v276 = v2328;
    }

LABEL_48:
    *v1645 = v276;
    *&v1645[8] = 0;
    v1645[16] = 0;
    v1645[82] = 5;
    v1808 = *&v1645[32];
    v1809 = *&v1645[48];
    v1810[0] = *&v1645[64];
    *(v1810 + 15) = *&v1645[79];
    v1806 = *v1645;
    v1807 = *&v1645[16];
    v1811 = 10;
    v281 = v276;
    sub_1CF903278();
    sub_1CEFCCC44(v1645, &qword_1EC4BFD48, &qword_1CFA05460);
    if (sub_1CF902E34())
    {
      v1651[0] = 0;
      v282 = (*(*v1613 + 272))(v281);
      v283 = v2328;
      v1800 = v2328;
      v1801 = 0;
      v284 = v1651[0];
      v1802 = v1651[0];
      v1803 = v282;
      v1804 = 9;
      v1805 = 10;
      sub_1CF903278();
      *v1652 = v283;
      v1652[8] = 0;
      v1652[9] = v284;
      *&v1652[16] = v282;
      v1652[82] = 9;
      v1652[115] = 10;
      sub_1CEFCCC44(v1652, &qword_1EC4BE730, &unk_1CFA05490);
    }

    if (v1612 == 4)
    {
      v285 = v1617;
      sub_1CF7EBA74(v281, v1609, v1616, v1652);
      v1617 = v285;
      v286 = v1600;
      if (!v285)
      {
        v1612 = v281;
        memcpy(v1651, v1652, sizeof(v1651));
        if (sub_1CF08B99C(v1651) != 1)
        {
          memcpy(v1648, v1652, sizeof(v1648));
          memcpy(v1649, v1652, sizeof(v1649));
          memcpy(v1787, v1652, sizeof(v1787));
          sub_1CF7F6024(v1647);
          v287 = v1596;
          if (v1647[8] == 255 || !*&v1647[248] || (*&v1647[192] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(v1650, v1647, sizeof(v1650));
            v292 = &qword_1EC4BFBC0;
            v293 = &unk_1CF9FCAC0;
            v291 = v1650;
          }

          else
          {
            v288 = v1647[344];
            memcpy(v1650, v1647, sizeof(v1650));
            sub_1CEFCCC44(v1650, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (v288 || *&v1649[400] >> 60 == 11)
            {
              goto LABEL_83;
            }

            v1782 = *&v1649[376];
            v1783 = *&v1649[392];
            v1784 = *&v1649[400];
            v1785 = *&v1649[408];
            v1786 = *&v1649[424];
            sub_1CEFCCBDC(&v1649[376], v1647, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v1649[376], v1647, &unk_1EC4BF260, &unk_1CFA01B60);
            v289 = sub_1CF93DAB0();
            sub_1CF205DCC(&v1782, v289, v290, 0x4000);
            sub_1CF903270();

            v291 = &v1649[376];
            v292 = &unk_1EC4BF260;
            v293 = &unk_1CFA01B60;
          }

          sub_1CEFCCC44(v291, v292, v293);
LABEL_83:
          sub_1CEFCCC44(v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_84:
          v296 = v1599;
LABEL_85:
          sub_1CEFCCBDC(v1610, v286, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v315 = *(v287 + 48);
          if (v315(v286, 1, v296) == 1)
          {
            sub_1CEFCCC44(v286, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            sub_1CF7E6950(v1652);
            v316 = v1652[0];
            sub_1CEFCCC44(v286, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v1101 = v316 == 1;
            v296 = v1599;
            if (v1101)
            {
              v317 = v1614;
              v318 = v1594;
              v319 = v1595;
              sub_1CF436240(v1614, v1594, v1595, 8, &qword_1EC4BDF70, &qword_1CF9FB468);
              v1616 = v317;
              sub_1CF903274();

              v320 = v2328;
              *v1651 = v2328;
              *&v1651[8] = 0;
              v1651[16] = v1611;
              v1651[82] = 3;
              v1778 = *&v1651[32];
              v1779 = *&v1651[48];
              v1780[0] = *&v1651[64];
              *(v1780 + 15) = *&v1651[79];
              v1776 = *v1651;
              v1777 = *&v1651[16];
              v1781 = 10;
              v321 = v1612;
              sub_1CF903278();
              sub_1CEFCCC44(v1651, &qword_1EC4BFD48, &qword_1CFA05460);
              *v1652 = v320;
              *&v1652[8] = 0;
              v1652[16] = 1;
              v1652[82] = 4;
              v1772 = *&v1652[32];
              v1773 = *&v1652[48];
              v1774[0] = *&v1652[64];
              *(v1774 + 15) = *&v1652[79];
              v1770 = *v1652;
              v1771 = *&v1652[16];
              v1775 = 10;
              v322 = v321;
              sub_1CF903278();
              v323 = v1616;
              sub_1CEFCCC44(v1652, &qword_1EC4BFD48, &qword_1CFA05460);
              v324 = sub_1CF436240(v323, v318, v319, 8, &qword_1EC4BDF78, &qword_1CF9FB470);
              if (*(v324 + 112))
              {
LABEL_784:
                sub_1CF9E7B68();
                __break(1u);
                goto LABEL_785;
              }

              *(v324 + 96) |= 8uLL;
              v325 = v323;
              sub_1CF903274();

              sub_1CEFCCC44(v1610, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_94:
              v178 = 0;
              return v178 & 1;
            }
          }

          v326 = v2328;
          *v1652 = v2328;
          *&v1652[8] = 0;
          *&v1652[16] = v1594;
          *&v1652[24] = v1595;
          v1652[82] = 2;
          v1766 = *&v1652[32];
          v1767 = *&v1652[48];
          v1768[0] = *&v1652[64];
          *(v1768 + 15) = *&v1652[79];
          v1764 = *v1652;
          v1765 = *&v1652[16];
          v1769 = 10;
          v327 = v1612;
          sub_1CF903278();
          sub_1CEFCCC44(v1652, &qword_1EC4BFD48, &qword_1CFA05460);
          v328 = v1610;
          v329 = v1592;
          sub_1CEFCCBDC(v1610, v1592, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          if (v315(v329, 1, v296) == 1)
          {
            sub_1CEFCCC44(v328, &unk_1EC4BFBB0, &qword_1CF9FCB90);

            sub_1CEFCCC44(v329, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          else
          {
            v330 = v1589;
            sub_1CEFE55D0(v329, v1589, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v331 = v1591;
            *v1591 = v326;
            *(v331 + 8) = 0;
            v332 = *(v330 + 8);
            *(v331 + 16) = v332;
            *(v331 + 24) = 0;
            swift_storeEnumTagMultiPayload();
            v333 = *(*v1613 + 312);
            v334 = v327;
            v335 = v332;
            v333(v331);
            sub_1CEFCCC44(v331, &unk_1EC4C4E20, &unk_1CFA05350);
            sub_1CEFCCC44(v330, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            sub_1CEFCCC44(v328, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          }

          goto LABEL_94;
        }

        goto LABEL_63;
      }

LABEL_60:
      sub_1CEFCCC44(v1610, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      return v178 & 1;
    }

    v294 = v1617;
    sub_1CF7EBA74(v281, v1609, v1616, v1652);
    v1617 = v294;
    v286 = v1600;
    if (v294)
    {
      goto LABEL_60;
    }

    v1612 = v281;
    memcpy(v1651, v1652, sizeof(v1651));
    if (sub_1CF08B99C(v1651) == 1)
    {
LABEL_63:
      memcpy(v1650, v1652, sizeof(v1650));
      sub_1CEFCCC44(v1650, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_64:
      v296 = v1599;
LABEL_65:
      v287 = v1596;
      goto LABEL_85;
    }

    memcpy(v1649, v1652, sizeof(v1649));
    memcpy(v1650, v1652, sizeof(v1650));
    memcpy(v1793, v1652, sizeof(v1793));
    if (!sub_1CF75C2AC() && v1650[120] == 2)
    {
      v305 = v1617;
      v306 = (*(*v1567 + 264))(v1656, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1617 = v305;
      if (v305)
      {
        goto LABEL_254;
      }

      if (v306)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v307 = swift_dynamicCastClass();
        if (v307)
        {
          v308 = v307;
          v311 = *(v307 + 96);
          v310 = *(v307 + 104);
          v309 = (v307 + 96);
          LODWORD(v1607) = *(v307 + 112);
          if (sub_1CF95EEF8(v311, v310, v1607) || (v1605 = v311, v1606 = v310, v312 = v310, v313 = v1607, (sub_1CF95EEB4(v311, v312, v1607) & 1) != 0))
          {
          }

          else
          {
            if (v313 == 2)
            {
              v687 = 2;
LABEL_785:
              sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v687, 162);
            }

            *v309 = 0;
            v309[1] = 0;
            *(v308 + 112) = 4;
            sub_1CF03D7A8(v1605, v1606, v313);

            sub_1CF903270();

            *v1648 = v2328;
            *&v1648[8] = 0;
            *&v1648[16] = xmmword_1CF9FD920;
            v1648[32] = 4;
            v1648[82] = 11;
            v1797 = *&v1648[48];
            v1798[0] = *&v1648[64];
            v1796 = *&v1648[32];
            *(v1798 + 15) = *&v1648[79];
            v1794 = *v1648;
            v1795 = xmmword_1CF9FD920;
            v1799 = 10;
            v606 = v1612;
            sub_1CF903278();

            sub_1CEFCCC44(v1648, &qword_1EC4BFD48, &qword_1CFA05460);
          }

          v286 = v1600;
        }

        else
        {
        }
      }
    }

    (*(*v1613 + 152))();
    v607 = sub_1CF06D930();
    v608 = v1616;
    if ((v607 & 1) != 0 && !sub_1CF902E34())
    {
      v610 = v1617;
      v611 = sub_1CF41864C(v1793, v1613, v1609, v608);
      v1617 = v610;
      if (v610)
      {
        goto LABEL_254;
      }

      v296 = v1599;
      v609 = v1584;
      if (v611)
      {
        sub_1CEFCCC44(v1610, &unk_1EC4BFBB0, &qword_1CF9FCB90);

        v604 = &unk_1EC4BFD80;
        v605 = &unk_1CFA0A2A0;
        v603 = v1649;
        goto LABEL_251;
      }
    }

    else
    {
      v296 = v1599;
      v609 = v1584;
    }

    if (!v1793[0] || LOBYTE(v1793[27]) == 255 || (v1793[19] & 0xF000000000000000) == 0xB000000000000000 || LOBYTE(v1793[43]))
    {
      goto LABEL_247;
    }

    sub_1CEFCCBDC(v1610, v609, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    if ((*(v1596 + 48))(v609, 1, v296) == 1)
    {
      sub_1CEFCCC44(v609, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_247:
      sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_65;
    }

    v612 = *(v609 + 8);
    sub_1CEFCCC44(v609, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v613 = v1617;
    sub_1CF7EBA74(v612, v1609, v1616, v1648);
    v1617 = v613;
    if (!v613)
    {
      memcpy(v1647, v1648, sizeof(v1647));
      if (sub_1CF08B99C(v1647) == 1)
      {

        sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1646, v1648, sizeof(v1646));
        v617 = v1646;
      }

      else
      {
        memcpy(v1646, v1648, sizeof(v1646));
        if (sub_1CF06D930())
        {
          v287 = v1596;
          if (*&v1650[152] >> 60 != 11)
          {
            v1788 = *&v1650[128];
            v1789 = *&v1650[144];
            v1790 = *&v1650[152];
            v1791 = *&v1650[160];
            v1792 = *&v1650[176];
            sub_1CEFCCBDC(&v1650[128], v1644, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v1650[128], v1644, &unk_1EC4BF260, &unk_1CFA01B60);
            v618 = sub_1CF93DAB0();
            sub_1CF205DE0(&v1788, v618, v619, 0x4000);
            sub_1CF903274();

            sub_1CEFCCC44(&v1650[128], &unk_1EC4BF260, &unk_1CFA01B60);
          }

          sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_84;
        }

        sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        v617 = v1649;
      }

      sub_1CEFCCC44(v617, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_64;
    }

LABEL_254:
    sub_1CEFCCC44(v1610, &unk_1EC4BFBB0, &qword_1CF9FCB90);

    v614 = &unk_1EC4BFD80;
    v615 = &unk_1CFA0A2A0;
    v616 = v1649;
    goto LABEL_525;
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0598, &unk_1CFA05960);
  v84 = v83[12];
  v85 = *(v79 + v83[16]);
  v86 = v79 + v83[20];
  v87 = *(v86 + 1);
  v1611 = *v86;
  v88 = v1606;
  sub_1CEFE55D0(v79, v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v89 = v1607;
  sub_1CEFE55D0(v79 + v84, v1607, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1653 = v85;
  v90 = v88;
  sub_1CF7E6950(v1652);
  sub_1CF7E6950(v1651);
  if ((sub_1CF6823E4(v1651) & 1) == 0)
  {
    v87, v91, v92, v93, v94, v95, v96, v97;
    if (v1612 != 4)
    {
      *v1652 = 0;
      *&v1652[8] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D386A280](0x1000000000000025, 0x80000001CFA45DE0);
      sub_1CF9613D8(v88);
      MEMORY[0x1D386A280](544175136, 0xE400000000000000);
      sub_1CF9613D8(v89);
      MEMORY[0x1D386A280](0, 0xE000000000000000);
      v202 = *&v1652[8];
      (*(*v1615 + 168))(*v1652, *&v1652[8]);
      v202, v203, v204, v205, v206, v207, v208, v209;
      v210 = *v89;
      v211 = sub_1CF93D7F4();
      v213 = v212;
      v214 = sub_1CF656C68(0);
      v215 = sub_1CEFF8C8C();
      v214, v216, v217, v218, v219, v220, v221, v222;
      sub_1CF905084(v210, v211, v213, v215);
      sub_1CF903274();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    swift_allocError();
    *v223 = 4;
    *(v223 + 8) = 0u;
    *(v223 + 24) = 0u;
    *(v223 + 40) = 0u;
    *(v223 + 56) = 0u;
    *(v223 + 72) = 0u;
    *(v223 + 88) = 11;
    swift_willThrow();
LABEL_26:
    v224 = v90;
    v225 = &unk_1EC4BFBD0;
    v226 = &unk_1CF9FCBC0;
LABEL_27:
    sub_1CEFCCC44(v224, v225, v226);
    v227 = v89;
    goto LABEL_374;
  }

  v1614 = v87;
  v98 = v1613;
  v99 = v1613[2];
  v100 = v1609;
  v101 = v1616;
  v102 = v1617;
  sub_1CF7EBA74(*(v89 + 8), v1609, v1616, v1652);
  if (v102)
  {
    v1614, v103, v104, v105, v106, v107, v108, v109;
    goto LABEL_26;
  }

  sub_1CF7EBA74(*v89, v100, v101, v1651);
  v1600 = v99;
  v314 = sub_1CF902E34();
  if (v314)
  {
    v1617 = 0;
  }

  else
  {
    v337 = v1583;
    sub_1CEFCCBDC(v90, v1583, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(v1596 + 56))(v337, 0, 1, v1599);
    sub_1CF3F42D0(v337, v89, &v1653, v98, v1615, 1, v100, v101);
    v1617 = 0;
    v314 = sub_1CEFCCC44(v337, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  }

  v475 = (*v98)[19];
  v1601 = (*v98 + 19);
  v1610 = v475;
  v475(v314);
  v476 = sub_1CF06D930();
  v1598 = (v89 + 8);
  if ((v476 & 1) == 0)
  {
    goto LABEL_195;
  }

  v478 = *(v89 + 80);
  v477 = *(v89 + 88);
  v479 = v89 + *(v1599 + 48);
  v480 = *(v479 + v1593[26]);
  *v1650 = v478;
  *&v1650[8] = v477;
  v481 = v1593[30];
  v482 = (*v98)[76];

  v483 = v482(v1650, v480, v479 + v481);
  *&v1650[8], v484, v485, v486, v487, v488, v489, v490;
  if (v483)
  {
    memcpy(v1649, v1651, sizeof(v1649));
    memcpy(v1650, v1651, sizeof(v1650));
    if (sub_1CF08B99C(v1650) != 1)
    {
      v491 = sub_1CF06D930();
      v89 = v1607;
      if (v491)
      {
        v492 = *v1607;
        sub_1CEFCCBDC(v1649, v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v493 = v492;
        v494 = sub_1CF656C80(0);
        v495 = sub_1CEFF8C8C();
        v494, v496, v497, v498, v499, v500, v501, v502;
        v1646[0] = 0;
        v2304 = v492;
        v2305 = 0;
        v2306 = *v1647;
        v2307 = *&v1647[4];
        v2308 = v495;
        v2309 = 4;
        v2312 = *&v1648[32];
        v2313 = *&v1648[48];
        *v2314 = *&v1648[64];
        *&v2314[15] = *&v1648[79];
        v2310 = *v1648;
        v2311 = *&v1648[16];
        v2315 = 14;
LABEL_192:
        sub_1CF903278();

        sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_193;
      }

      goto LABEL_193;
    }
  }

  else
  {
    memcpy(v1649, v1651, sizeof(v1649));
    memcpy(v1650, v1651, sizeof(v1650));
    if (sub_1CF08B99C(v1650) != 1)
    {
      v505 = sub_1CF06D930();
      v89 = v1607;
      if ((v505 & 1) == 0)
      {
        v506 = *v1607;
        sub_1CEFCCBDC(v1649, v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v493 = v506;
        v507 = sub_1CF656C80(0);
        v508 = sub_1CEFF8C8C();
        v507, v509, v510, v511, v512, v513, v514, v515;
        v2324 = *&v1648[32];
        v2325 = *&v1648[48];
        *v2326 = *&v1648[64];
        v2322 = *v1648;
        v1646[0] = 0;
        v2316 = v506;
        v2317 = 0;
        v2318 = *v1647;
        v2319 = *&v1647[4];
        v2320 = 4;
        v2321 = v508;
        *&v2326[15] = *&v1648[79];
        v2323 = *&v1648[16];
        v2327 = 14;
        goto LABEL_192;
      }

LABEL_193:
      v98 = v1613;
      v101 = v1616;
      v100 = v1609;
      goto LABEL_194;
    }
  }

  v98 = v1613;
  v101 = v1616;
  v100 = v1609;
  v89 = v1607;
LABEL_194:
  v90 = v1606;
LABEL_195:
  memcpy(v1650, v1651, sizeof(v1650));
  v516 = sub_1CF08B99C(v1650);
  if (v516 == 1)
  {
    if (v1612 - 3) >= 2 && sub_1CF902E34() && (sub_1CF7E69A4())
    {
      sub_1CF7E6950(v1649);
      if (FileItemKind.hasContent.getter())
      {
        v1614, v517, v518, v519, v520, v521, v522, v523;
        v524 = *v89;
        v525 = sub_1CF93DAB0();
        sub_1CF4175D0(v524, v525, v526, 0x10000000);
        sub_1CF903274();

        sub_1CEFCCC44(v90, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1648, v1651, sizeof(v1648));
        sub_1CEFCCC44(v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1649, v1652, sizeof(v1649));
        sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v177 = v89;
        v175 = &unk_1EC4BFBD0;
        v176 = &unk_1CF9FCBC0;
        goto LABEL_17;
      }
    }

    *v1647 = *v89;
    v527 = *v1647;
    *&v1647[8] = 0;
    sub_1CF7E6950(&v1647[10]);
    v1647[115] = 0;
    v2300 = *&v1647[64];
    v2301 = *&v1647[80];
    v2302 = *&v1647[96];
    v2296 = *v1647;
    v2297 = *&v1647[16];
    v2298 = *&v1647[32];
    v2299 = *&v1647[48];
    v2303 = *&v1647[112];
    v528 = v527;
    sub_1CF903278();
    *&v1648[64] = *&v1647[64];
    *&v1648[80] = *&v1647[80];
    *&v1648[96] = *&v1647[96];
    *&v1648[112] = *&v1647[112];
    *v1648 = *v1647;
    *&v1648[16] = *&v1647[16];
    *&v1648[32] = *&v1647[32];
    *&v1648[48] = *&v1647[48];
    sub_1CEFCCC44(v1648, &qword_1EC4BE730, &unk_1CFA05490);
    v529 = *v1607;
    v1647[0] = 0;
    v530 = v529;
    v531 = *sub_1CF06EDF4();
    v532 = sub_1CF93D7F4();
    v534 = v533;
    v2288 = v529;
    v2289 = 0;
    LOBYTE(v527) = v1647[0];
    v2290 = v1647[0];
    v2291 = v531;
    v2292 = v532;
    v2293 = v533;
    v2294 = 0;
    v2295 = 10;
    v89 = v1607;
    sub_1CF903278();
    *v1649 = v529;
    v1649[8] = 0;
    v1649[9] = v527;
    *&v1649[16] = v531;
    *&v1649[24] = v532;
    *&v1649[32] = v534;
    v1649[82] = 0;
    v1649[115] = 10;
    sub_1CEFCCC44(v1649, &qword_1EC4BE730, &unk_1CFA05490);
    if (sub_1CF902E34())
    {
      v535 = *v89;
      v1646[0] = 0;
      v536 = (*(*v1613 + 272))(v535);
      v2282 = v535;
      v2283 = 0;
      v537 = v1646[0];
      v2284 = v1646[0];
      v2285 = v536;
      v2286 = 9;
      v2287 = 10;
      sub_1CF903278();
      *v1647 = v535;
      v1647[8] = 0;
      v1647[9] = v537;
      *&v1647[16] = v536;
      v1647[82] = 9;
      v1647[115] = 10;
      sub_1CEFCCC44(v1647, &qword_1EC4BE730, &unk_1CFA05490);
    }

    v538 = sub_1CF902E34();
    v98 = v1613;
    v101 = v1616;
    v100 = v1609;
    if (v538 || (sub_1CF7E6950(v1647), v516 = FileItemKind.supportsMaterialization.getter(), (v516 & 1) == 0))
    {
      *v1647 = *v89;
      *&v1647[8] = 0;
      v1647[16] = 2;
      v1647[82] = 10;
      v2278 = *&v1647[32];
      v2279 = *&v1647[48];
      v2280[0] = *&v1647[64];
      *(v2280 + 15) = *&v1647[79];
      v2276 = *v1647;
      v2277 = *&v1647[16];
      v2281 = 10;
      v539 = *v1647;
      sub_1CF903278();
      v516 = sub_1CEFCCC44(v1647, &qword_1EC4BFD48, &qword_1CFA05460);
    }

    v90 = v1606;
  }

  v1610(v516);
  if (sub_1CF06D930())
  {
    memcpy(v1648, v1651, sizeof(v1648));
    memcpy(v1649, v1651, sizeof(v1649));
    if (sub_1CF08B99C(v1649) != 1)
    {
      memcpy(v2275, v1648, sizeof(v2275));
      if (v1612 != 4)
      {
        sub_1CEFCCBDC(v1648, v1647, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v578 = v1617;
        v579 = sub_1CF41864C(v2275, v98, v100, v101);
        v1617 = v578;
        if (v578)
        {
          v1614, v580, v581, v582, v583, v584, v585, v586;
          sub_1CEFCCC44(v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v90, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1646, v1651, sizeof(v1646));
          sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1647, v1652, sizeof(v1647));
          v587 = v1647;
LABEL_545:
          sub_1CEFCCC44(v587, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v616 = v89;
          goto LABEL_546;
        }

        v595 = v579;
        sub_1CEFCCC44(v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v595)
        {
          v1614, v596, v597, v598, v599, v600, v601, v602;
          sub_1CEFCCC44(v90, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1646, v1651, sizeof(v1646));
          sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1647, v1652, sizeof(v1647));
          sub_1CEFCCC44(v1647, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v603 = v89;
          v604 = &unk_1EC4BFBD0;
          v605 = &unk_1CF9FCBC0;
LABEL_251:
          sub_1CEFCCC44(v603, v604, v605);
          v178 = 1;
          return v178 & 1;
        }
      }
    }
  }

  v540 = *(v89 + 8);
  v541 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v543 = v542;
  v545 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v551 = v541;
  v552 = v544;
  if (v551 != v545 || v543 != v544)
  {
    v561 = sub_1CF9E8048();
    v543, v562, v563, v564, v565, v566, v567, v568;
    v552, v569, v570, v571, v572, v573, v574, v575;
    v560 = v1613;
    if ((v561 & 1) != 0 || (sub_1CF06D930() & 1) == 0)
    {
      goto LABEL_269;
    }

    memcpy(v1649, v1652, sizeof(v1649));
    if (sub_1CF08B99C(v1649) != 1)
    {
      memcpy(v1647, v1652, sizeof(v1647));
      v576 = v1647[96];
      *&v1648[32] = *&v1652[32];
      *&v1648[48] = *&v1652[48];
      *&v1648[64] = *&v1652[64];
      *&v1648[80] = *&v1652[80];
      *v1648 = *v1652;
      *&v1648[16] = *&v1652[16];
      memcpy(&v1648[97], &v1652[97], 0x1A7uLL);
      v1648[96] = v1647[96];
      if (sub_1CF08B99C(v1648) == 1)
      {
        *&v1646[32] = *&v1652[32];
        *&v1646[48] = *&v1652[48];
        *&v1646[64] = *&v1652[64];
        *&v1646[80] = *&v1652[80];
        *v1646 = *v1652;
        *&v1646[16] = *&v1652[16];
        v1646[96] = v576;
        memcpy(&v1646[97], &v1652[97], 0x1A7uLL);
        sub_1CEFCCBDC(v1647, v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v577 = v1646;
LABEL_218:
        sub_1CEFCCC44(v577, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_264:
        v560 = v1613;
        goto LABEL_265;
      }

      *&v1646[32] = *&v1652[32];
      *&v1646[48] = *&v1652[48];
      *&v1646[64] = *&v1652[64];
      *&v1646[80] = *&v1652[80];
      *v1646 = *v1652;
      *&v1646[16] = *&v1652[16];
      v1646[96] = v576;
      memcpy(&v1646[97], &v1652[97], 0x1A7uLL);
      sub_1CEFCCBDC(v1647, v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1646, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v576 != 2)
      {
        goto LABEL_264;
      }

      memcpy(v1644, v1652, sizeof(v1644));
      v620 = v1644[344];
      memcpy(v1645, v1652, 0x158uLL);
      *&v1645[473] = *&v1652[473];
      *&v1645[489] = *&v1652[489];
      *&v1645[504] = *&v1652[504];
      *&v1645[409] = *&v1652[409];
      *&v1645[425] = *&v1652[425];
      *&v1645[441] = *&v1652[441];
      *&v1645[457] = *&v1652[457];
      *&v1645[345] = *&v1652[345];
      *&v1645[361] = *&v1652[361];
      *&v1645[377] = *&v1652[377];
      *&v1645[393] = *&v1652[393];
      v1645[344] = v1644[344];
      if (sub_1CF08B99C(v1645) == 1)
      {
        memcpy(v1643, v1652, 0x158uLL);
        BYTE8(v1643[21]) = v620;
        *(&v1643[29] + 9) = *&v1652[473];
        *(&v1643[30] + 9) = *&v1652[489];
        *(&v1643[31] + 8) = *&v1652[504];
        *(&v1643[25] + 9) = *&v1652[409];
        *(&v1643[26] + 9) = *&v1652[425];
        *(&v1643[27] + 9) = *&v1652[441];
        *(&v1643[28] + 9) = *&v1652[457];
        *(&v1643[21] + 9) = *&v1652[345];
        *(&v1643[22] + 9) = *&v1652[361];
        *(&v1643[23] + 9) = *&v1652[377];
        *(&v1643[24] + 9) = *&v1652[393];
        sub_1CEFCCBDC(v1644, v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v577 = v1643;
        goto LABEL_218;
      }

      memcpy(v1643, v1652, 0x158uLL);
      BYTE8(v1643[21]) = v620;
      *(&v1643[29] + 9) = *&v1652[473];
      *(&v1643[30] + 9) = *&v1652[489];
      *(&v1643[31] + 8) = *&v1652[504];
      *(&v1643[25] + 9) = *&v1652[409];
      *(&v1643[26] + 9) = *&v1652[425];
      *(&v1643[27] + 9) = *&v1652[441];
      *(&v1643[28] + 9) = *&v1652[457];
      *(&v1643[21] + 9) = *&v1652[345];
      *(&v1643[22] + 9) = *&v1652[361];
      *(&v1643[23] + 9) = *&v1652[377];
      *(&v1643[24] + 9) = *&v1652[393];
      sub_1CEFCCBDC(v1644, v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1643, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v620 == 2)
      {
        memcpy(v1641, v1652, sizeof(v1641));
        v801 = *v1641;
        v800 = *&v1641[8];
        memcpy(&v1642[16], &v1652[16], 0x1F8uLL);
        *v1642 = *v1641;
        *&v1642[8] = *&v1641[8];
        if (sub_1CF08B99C(v1642) == 1)
        {
          *&v1640[0] = v801;
          *(&v1640[0] + 1) = v800;
          memcpy(&v1640[1], &v1652[16], 0x1F8uLL);
          sub_1CEFCCBDC(v1641, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v560 = v1613;
          LOBYTE(v101) = v1616;
          v90 = v1606;
          v89 = v1607;
          goto LABEL_269;
        }

        *&v1640[0] = v801;
        *(&v1640[0] + 1) = v800;
        memcpy(&v1640[1], &v1652[16], 0x1F8uLL);
        sub_1CEFCCBDC(v1641, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
        v1178 = sub_1CF06D930();
        v560 = v1613;
        LOBYTE(v101) = v1616;
        v90 = v1606;
        v89 = v1607;
        if ((v1178 & 1) == 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        v560 = v1613;
        LOBYTE(v101) = v1616;
        v90 = v1606;
      }
    }

LABEL_265:
    if (sub_1CF902E34() || (memcpy(v1647, v1651, sizeof(v1647)), memcpy(v1648, v1651, sizeof(v1648)), sub_1CF08B99C(v1648) != 1) && (memcpy(v2274, v1647, sizeof(v2274)), sub_1CF75C2AC()))
    {
      sub_1CF436240(v540, v1594, v1595, v1587, &qword_1EC4BDF30, &qword_1CF9FB3E8);
      v621 = v540;
      sub_1CF903274();
    }

    goto LABEL_269;
  }

  v543, v544, v545, v546, v547, v548, v549, v550;
  v552, v553, v554, v555, v556, v557, v558, v559;
  v560 = v1613;
LABEL_269:
  v622 = v89;
  v623 = v89;
  v624 = v1615;
  v625 = v1617;
  sub_1CF3F2C78(v90, v622, &v1653, v560, v1615, v1609, v101);
  v1617 = v625;
  if (v625)
  {
    v1614, v626, v627, v628, v629, v630, v631, v632;
    sub_1CEFCCC44(v90, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1648, v1651, sizeof(v1648));
    sub_1CEFCCC44(v1648, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1649, v1652, sizeof(v1649));
    sub_1CEFCCC44(v1649, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v616 = v623;
    v614 = &unk_1EC4BFBD0;
    goto LABEL_524;
  }

  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v634 = v633[12];
  v635 = v633[16];
  v636 = v1605;
  v637 = (&v1605->super.isa + v633[20]);
  sub_1CEFCCBDC(v90, v1605, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCBDC(v623, v636 + v634, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *(&v636->super.isa + v635) = v1653;
  v638 = v1614;
  *v637 = v1611;
  v637[1] = v638;
  v639 = v638;
  swift_storeEnumTagMultiPayload();
  v640 = *(*v624 + 120);

  v640(v636);
  sub_1CEFCCC44(v636, &qword_1EC4BFC80, &qword_1CFA053D0);
  v641 = v1608;
  v642 = sub_1CF902E34();
  v643 = v1610;
  if (!v642)
  {
    goto LABEL_278;
  }

  memcpy(v1648, v1651, sizeof(v1648));
  memcpy(v1649, v1651, sizeof(v1649));
  if (sub_1CF08B99C(v1649) != 1)
  {
    v2273[10] = *&v1651[160];
    v2273[11] = *&v1651[176];
    v2273[12] = *&v1651[192];
    v2273[6] = *&v1651[96];
    v2273[7] = *&v1651[112];
    v2273[8] = *&v1651[128];
    v2273[9] = *&v1651[144];
    v2273[2] = *&v1651[32];
    v2273[3] = *&v1651[48];
    v2273[4] = *&v1651[64];
    v2273[5] = *&v1651[80];
    v2273[0] = *v1651;
    v2273[1] = *&v1651[16];
    memcpy(v1647, v1651, sizeof(v1647));
    sub_1CEFCCBDC(v1648, v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCBDC(v2273, v1646, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v1647, &unk_1EC4BFC90, &unk_1CFA053E0);
    if (qword_1EDEABDE0 != -1)
    {
      goto LABEL_729;
    }

    goto LABEL_275;
  }

  memcpy(v1647, v1651, sizeof(v1647));
  sub_1CEFCCBDC(v1648, v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v644 = v1647;
  v645 = &unk_1EC4BFD80;
  v646 = &unk_1CFA0A2A0;
LABEL_277:
  sub_1CEFCCC44(v644, v645, v646);
LABEL_278:
  memcpy(v1648, v1652, sizeof(v1648));
  v652 = *v1648;
  v651 = *&v1648[8];
  memcpy(&v1649[16], &v1652[16], 0x1F8uLL);
  *v1649 = *v1648;
  *&v1649[8] = *&v1648[8];
  if (sub_1CF08B99C(v1649) == 1)
  {
    *v1647 = v652;
    *&v1647[8] = v651;
    memcpy(&v1647[16], &v1652[16], 0x1F8uLL);
    sub_1CEFCCBDC(v1648, v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1647, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  }

  else
  {
    *v1647 = v652;
    *&v1647[8] = v651;
    memcpy(&v1647[16], &v1652[16], 0x1F8uLL);
    sub_1CEFCCBDC(v1648, v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1647, &unk_1EC4BFC90, &unk_1CFA053E0);
    v653 = sub_1CF06D930();
    v655 = v1606;
    if (v653)
    {
      sub_1CF8DCAC4(v654);
      swift_allocObject();
      sub_1CF06DA80();
      *v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
      nullsub_1();
      v658 = v657;
      v659 = v1607;
      v660 = v1617;
      v661 = (*(*v1567 + 312))(v1607, v657, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1617 = v660;
      if (v660)
      {
        v1614, v662, v663, v664, v665, v666, v667, v668;
        v658, v669, v670, v671, v672, v673, v674, v675;
        sub_1CEFCCC44(v655, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1645, v1651, sizeof(v1645));
        sub_1CEFCCC44(v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1646, v1652, sizeof(v1646));
        sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v616 = v659;
        goto LABEL_523;
      }

      v676 = v661;
      v658, v662, v663, v664, v665, v666, v667, v668;
      if (sub_1CF55B584())
      {
        v684 = sub_1CF902E8C(v676);
        for (i = 4; ; ++i)
        {
          sub_1CF903340();
          if (v684)
          {
            v686 = *(&v676->super.isa + i);
          }

          else
          {
            v686 = MEMORY[0x1D3869C30](i - 4, v676);
          }

          if (__OFADD__(i - 4, 1))
          {
            __break(1u);
            goto LABEL_597;
          }

          v687 = *(v686 + 112);
          if (v687 == 2)
          {
            goto LABEL_785;
          }

          v688 = *(v686 + 96);
          v689 = *(v686 + 104);
          *(v686 + 96) = 0;
          *(v686 + 104) = 0;
          *(v686 + 112) = 4;
          sub_1CF03D7A8(v688, v689, v687);

          sub_1CF903274();

          *v1646 = *(v686 + 144);
          *&v1646[8] = 0;
          v1646[16] = 0;
          v1646[82] = 4;
          v2263 = *&v1646[32];
          v2264 = *&v1646[48];
          v2265[0] = *&v1646[64];
          *(v2265 + 15) = *&v1646[79];
          v2261 = *v1646;
          v2262 = *&v1646[16];
          v2266 = 10;
          v690 = *v1646;
          sub_1CF903278();

          sub_1CEFCCC44(v1646, &qword_1EC4BFD48, &qword_1CFA05460);
          if (i - 3 == sub_1CF55B584())
          {
            break;
          }
        }

        v676, v691, v692, v693, v694, v695, v696, v697;
        v641 = v1608;
        v639 = v1614;
        v643 = v1610;
      }

      else
      {
        v676, v677, v678, v679, v680, v681, v682, v683;
        v639 = v1614;
      }
    }
  }

  memcpy(v1646, v1651, sizeof(v1646));
  memcpy(v1647, v1651, sizeof(v1647));
  v698 = sub_1CF08B99C(v1647);
  v699 = v1587;
  if (v698 != 1)
  {
    v700 = *&v1646[8];
    if (!sub_1CF902E40(*&v1646[8]))
    {
      v1611 = v700;
      if (sub_1CF06D930())
      {
        sub_1CF8DCAC4(v701);
        swift_allocObject();
        sub_1CF06DA80();
        *v702 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
        nullsub_1();
        v704 = v703;
        v705 = *(*v1567 + 312);
        sub_1CEFCCBDC(v1646, v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v706 = v1607;
        v707 = v1617;
        v708 = v705(v1607, v704, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1617 = v707;
        if (v707)
        {
          v704, v709, v710, v711, v712, v713, v714, v715;
          v1614, v716, v717, v718, v719, v720, v721, v722;
          sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1644, v1651, sizeof(v1644));
          sub_1CEFCCC44(v1644, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1645, v1652, sizeof(v1645));
          sub_1CEFCCC44(v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v616 = v706;
LABEL_546:
          v614 = &unk_1EC4BFBD0;
          v615 = &unk_1CF9FCBC0;
          goto LABEL_525;
        }

        v749 = v708;
        v704, v709, v710, v711, v712, v713, v714, v715;
        if (sub_1CF55B584())
        {
          v757 = sub_1CF902E8C(v749);
          v758 = 4;
          for (j = 4; ; ++j)
          {
            sub_1CF903340();
            if (v757)
            {
              v760 = *(&v749->super.isa + j);
            }

            else
            {
              v760 = MEMORY[0x1D3869C30](j - 4, v749);
            }

            if (__OFADD__(j - 4, 1))
            {
              __break(1u);
              goto LABEL_606;
            }

            v687 = *(v760 + 112);
            if (v687 == 2)
            {
              goto LABEL_785;
            }

            v761 = *(v760 + 96);
            v762 = *(v760 + 104);
            *(v760 + 96) = 0;
            *(v760 + 104) = 0;
            *(v760 + 112) = 4;
            sub_1CF03D7A8(v761, v762, v687);

            sub_1CF903274();

            *v1645 = *(v760 + 144);
            *&v1645[8] = 0;
            v1645[16] = 0;
            v1645[82] = 4;
            v2257 = *&v1645[32];
            v2258 = *&v1645[48];
            v2259[0] = *&v1645[64];
            *(v2259 + 15) = *&v1645[79];
            v2255 = *v1645;
            v2256 = *&v1645[16];
            v2260 = 10;
            v763 = *v1645;
            sub_1CF903278();

            sub_1CEFCCC44(v1645, &qword_1EC4BFD48, &qword_1CFA05460);
            if (j - 3 == sub_1CF55B584())
            {
              break;
            }
          }

          v749, v764, v765, v766, v767, v768, v769, v770;
          v641 = v1608;
          v699 = v1587;
          v639 = v1614;
          v643 = v1610;
        }

        else
        {
          v749, v750, v751, v752, v753, v754, v755, v756;
          v699 = v1587;
          v639 = v1614;
        }
      }

      else
      {
        sub_1CEFCCBDC(v1646, v1645, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      if (sub_1CF902E34())
      {
        *v1644 = *v1607;
        *&v1644[8] = 0;
        v1644[16] = 0;
        v1644[82] = 3;
        v2251 = *&v1644[32];
        v2252 = *&v1644[48];
        v2253[0] = *&v1644[64];
        *(v2253 + 15) = *&v1644[79];
        v2249 = *v1644;
        v2250 = *&v1644[16];
        v2254 = 10;
        v89 = v1607;
        v723 = *v1644;
        sub_1CF903278();
        v724 = sub_1CEFCCC44(v1644, &qword_1EC4BFD48, &qword_1CFA05460);
        (v643)(v724);
        if (sub_1CF06D930())
        {
          *v1645 = *v89;
          *&v1645[8] = 0;
          v1645[16] = 0;
          v2245 = *&v1645[32];
          v2246 = *&v1645[48];
          v2247[0] = *&v1645[64];
          v2244 = *&v1645[16];
          v1645[82] = 14;
          *(v2247 + 15) = *&v1645[79];
          v2243 = *v1645;
          v2248 = 10;
          v725 = *v1645;
          sub_1CF903278();
          sub_1CEFCCC44(v1645, &qword_1EC4BFD48, &qword_1CFA05460);
        }

        if (sub_1CF06D930())
        {
          v726 = *v89;
          v1642[0] = 0;
          sub_1CF7E6950(v1645);
          v727 = v726;
          sub_1CF94706C(v1645, v1643);
          v728 = *&v1643[0];
          v2221 = v726;
          v2222 = 0;
          v729 = v1642[0];
          v2223 = v1642[0];
          v2224 = *&v1643[0];
          v731 = v1594;
          v730 = v1595;
          v2225 = v1594;
          v2226 = v1595;
          v2227 = 0;
          v2228 = 10;
          sub_1CF903278();
          *v1645 = v726;
          v1645[8] = 0;
          v1645[9] = v729;
          *&v1645[16] = v728;
          *&v1645[24] = v731;
          *&v1645[32] = v730;
          v1645[82] = 0;
        }

        else
        {
          v771 = *v89;
          LOBYTE(v1639[0]) = 0;
          v772 = v771;
          v773 = sub_1CF656C5C(0);
          sub_1CEFF5464(v773, v1641, v774, v775, v776, v777, v778, v779, v780);
          v2237 = v1643[0];
          *v2238 = v1643[1];
          *&v2238[10] = *(&v1643[1] + 10);
          v2240 = *v1642;
          v781 = *v1641;
          v2229 = v771;
          v2230 = 0;
          v782 = v1639[0];
          v2231 = v1639[0];
          v2232 = v1640[0];
          v2233 = WORD2(v1640[0]);
          v784 = v1594;
          v783 = v1595;
          v2234 = *v1641;
          v2235 = v1594;
          v2236 = v1595;
          v2239 = 0;
          v2241 = *&v1642[16];
          v2242 = 10;
          sub_1CF903278();
          *v1645 = v771;
          v1645[8] = 0;
          v1645[9] = v782;
          *&v1645[10] = v1640[0];
          *&v1645[14] = WORD2(v1640[0]);
          *&v1645[16] = v781;
          *&v1645[24] = v784;
          *&v1645[32] = v783;
          v89 = v1607;
          *&v1645[40] = v1643[0];
          *&v1645[56] = v1643[1];
          *&v1645[66] = *(&v1643[1] + 10);
          v1645[82] = 0;
          *&v1645[99] = *&v1642[16];
          *&v1645[83] = *v1642;
        }

        v1645[115] = 10;
        sub_1CEFCCC44(v1645, &qword_1EC4BE730, &unk_1CFA05490);
        sub_1CF7E6950(v1645);
        v785 = sub_1CF06DA5C(v1645[0], 1);
        v641 = v1608;
        v699 = v1587;
        v639 = v1614;
        if (v785 && (sub_1CF7E69A4() & 1) == 0 && *(v89 + *(v1599 + 48) + v1593[16]) != 1)
        {
          v786 = *v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
          swift_allocObject();
          sub_1CF06DA80();
          *v787 = v699;
          v787[1] = 0x80000000;
          nullsub_1();
          v789 = v788;
          v790 = sub_1CEFF8C8C();
          v791 = v786;
          v789, v792, v793, v794, v795, v796, v797, v798;
          v799 = v790;
          v699 = v1587;
          sub_1CF3F7A48(v791, v1594, v1595, v799);
          sub_1CF903274();
        }

        sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_309;
      }

      sub_1CEFCCC44(v1646, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  v89 = v1607;
LABEL_309:
  memcpy(v1644, v1651, sizeof(v1644));
  memcpy(v1645, v1651, sizeof(v1645));
  if (sub_1CF08B99C(v1645) != 1 && (sub_1CF06EE7C() & 1) != 0 && !v1612 && (sub_1CF06D930() & 1) != 0)
  {
    sub_1CF7E6950(v1643);
    if (sub_1CF06DA5C(v1643[0], 1))
    {
      v747 = *v89;
      sub_1CF3F7A48(*v89, v1594, v1595, v699);
      sub_1CEFCCBDC(v1644, v1643, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v748 = v747;
      sub_1CF903274();
      v699 = v1587;

      sub_1CEFCCC44(v1644, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  if (sub_1CF06D930())
  {
    sub_1CF7E6950(v1643);
    if (sub_1CF06DA5C(v1643[0], 1))
    {
      v732 = *v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
      swift_allocObject();
      sub_1CF06DA80();
      *v733 = v699;
      v733[1] = 0x1000000000;
      nullsub_1();
      v735 = v734;
      v736 = sub_1CEFF8C8C();
      v737 = v732;
      v735, v738, v739, v740, v741, v742, v743, v744;
      sub_1CF3F7A48(v737, v1594, v1595, v736);
      sub_1CF903274();
    }
  }

  v745 = sub_1CF06D930();
  LODWORD(v1611) = sub_1CF06D930();
  if (sub_1CF902E34())
  {
    sub_1CF7E6950(v1643);
    if (sub_1CF06DA5C(v1643[0], 1) && (sub_1CF06D930() & 1) != 0)
    {
      v746 = v89 + *(v1599 + 48);
      if ((*(v746 + v1593[16]) & 1) == 0)
      {
        if (*(v746 + v1593[15]))
        {
          memcpy(&v1643[1], &v1651[16], 0x1F8uLL);
          v1643[0] = *v1651;
          if (sub_1CF08B99C(v1643) == 1)
          {
            v745 = 1;
          }

          else
          {
            v745 |= sub_1CF06D930() ^ 1;
          }
        }

        else
        {
          v745 = 1;
        }
      }
    }
  }

  if (!sub_1CF902E34() || (sub_1CF06D930() & 1) == 0)
  {
    v813 = v1611;
    if (v745)
    {
LABEL_352:
      v814 = 1;
      goto LABEL_383;
    }

LABEL_381:
    if (v1611)
    {
      goto LABEL_382;
    }

    goto LABEL_394;
  }

  v802 = v1606;
  v803 = v1617;
  v804 = (*(*v641 + 552))(v1606 + 8, v1598, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v1617 = v803;
  if (v803)
  {
    v639, v805, v806, v807, v808, v809, v810, v811;
    v812 = v802;
LABEL_522:
    sub_1CEFCCC44(v812, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1642, v1651, sizeof(v1642));
    sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1643, v1652, 0x208uLL);
    sub_1CEFCCC44(v1643, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v616 = v89;
LABEL_523:
    v614 = &unk_1EC4BFBD0;
LABEL_524:
    v615 = &unk_1CF9FCBC0;
LABEL_525:
    sub_1CEFCCC44(v616, v614, v615);
    return v178 & 1;
  }

  v815 = v804;
  if (sub_1CF6823A4(v804))
  {
    v815, v816, v817, v818, v819, v820, v821, v822;
    v823 = v745 ^ 1;
    if (((v745 ^ 1) & 1) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_372;
  }

  if (!sub_1CF55B5A0(v815))
  {
LABEL_368:
    v815, v824, v825, v826, v827, v828, v829, v830;
    goto LABEL_369;
  }

  v831 = 0;
  v1604 = v1577 + 48;
  v1605 = v815;
  v832 = v1600;
  while (1)
  {
    v833 = v1617;
    sub_1CF90333C();
    v834 = *(&v815[1].super.isa + v831);
    *&v1639[0] = v834;
    v639 = (v831 + 1);
    if (__OFADD__(v831, 1))
    {
      __break(1u);
LABEL_729:
      swift_once();
LABEL_275:
      v647 = sub_1CF75C2CC(qword_1EDEABDE8 | 0x10, 0);
      sub_1CEFCCC44(v2273, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      if (!v647)
      {
        v648 = *v1607;
        v1645[0] = 0;
        v649 = (*(*v1613 + 272))(v648);
        v2267 = v648;
        v2268 = 0;
        v650 = v1645[0];
        v2269 = v1645[0];
        v2270 = v649;
        v2271 = 9;
        v2272 = 10;
        sub_1CF903278();
        *v1646 = v648;
        v1646[8] = 0;
        v1646[9] = v650;
        *&v1646[16] = v649;
        v1646[82] = 9;
        v1646[115] = 10;
        v641 = v1608;
        v639 = v1614;
        v645 = &qword_1EC4BE730;
        v646 = &unk_1CFA05490;
        v644 = v1646;
        goto LABEL_277;
      }

      goto LABEL_278;
    }

    v835 = *(*v832 + 160);
    v836 = v834;
    v835(v1640, v1639, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v643 = v833;
    if (v833)
    {

      v815, v872, v873, v874, v875, v876, v877, v878;
      v1614, v879, v880, v881, v882, v883, v884, v885;
      sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      memcpy(v1642, v1651, sizeof(v1642));
      sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      memcpy(v1643, v1652, 0x208uLL);
      v886 = v1643;
LABEL_485:
      sub_1CEFCCC44(v886, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v227 = v1607;
      goto LABEL_374;
    }

    v837 = v1581;
    if (BYTE8(v1640[0]) == 255)
    {
      v1617 = 0;
      v641 = v1608;
      goto LABEL_367;
    }

    *v1641 = *&v1640[0];
    v1641[8] = BYTE8(v1640[0]);
    v838 = v1579;
    (*(*v1613[5] + 240))(v1641, 1, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v641 = v1608;
    v1617 = 0;
    v1101 = (*v1604)(v838, 1, v837) == 1;
    v839 = v1593;
    v643 = v837;
    v89 = v1607;
    v840 = v838;
    if (!v1101)
    {
      break;
    }

    sub_1CEFCCC44(v838, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v832 = v1600;
    v815 = v1605;
LABEL_359:
    ++v831;
    if (v639 == sub_1CF55B5A0(v815))
    {
      goto LABEL_368;
    }
  }

  v841 = v1578;
  sub_1CEFE55D0(v840, v1578, &unk_1EC4BE360, &qword_1CF9FE650);
  v842 = *(v841 + *(v643 + 12) + v839[15]);
  sub_1CEFCCC44(v841, &unk_1EC4BE360, &qword_1CF9FE650);
  if ((v842 & 1) == 0)
  {
    v832 = v1600;
    v815 = v1605;
LABEL_367:
    v89 = v1607;
    goto LABEL_359;
  }

  v1605, v843, v844, v845, v846, v847, v848, v849;
  LODWORD(v1611) = 1;
  v89 = v1607;
LABEL_369:
  LOBYTE(v745) = 1;
  v823 = 0;
LABEL_370:
  if (v1611)
  {
    v813 = 1;
    LODWORD(v1611) = 1;
    v814 = 1;
    goto LABEL_383;
  }

LABEL_372:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0540, &unk_1CFA0E150);
  swift_allocObject();
  sub_1CF06DA80();
  *v850 = xmmword_1CFA04ED0;
  nullsub_1();
  v852 = v851;
  v853 = sub_1CEFF8C8C();
  v852, v854, v855, v856, v857, v858, v859, v860;
  v861 = v1606;
  v862 = v1617;
  (*(*v641 + 464))(v1606 + 8, v853, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v862)
  {
    v1614, v863, v864, v865, v866, v867, v868, v869;
    sub_1CEFCCC44(v861, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    memcpy(v1642, v1651, sizeof(v1642));
    sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    memcpy(v1643, v1652, 0x208uLL);
    sub_1CEFCCC44(v1643, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v227 = v89;
    goto LABEL_374;
  }

  v870 = v745 | sub_1CF06D930();
  v871 = sub_1CF06D930();
  v1617 = 0;
  if ((v871 & 1) == 0)
  {
    v813 = v823 & v1611;
    v89 = v1607;
    if (v870)
    {
      goto LABEL_352;
    }

    goto LABEL_381;
  }

  if (v870)
  {
    v813 = 1;
    LODWORD(v1611) = 1;
    v814 = 1;
    v89 = v1607;
    goto LABEL_383;
  }

  v89 = v1607;
LABEL_382:
  v814 = 0;
  v813 = 1;
  LODWORD(v1611) = 1;
LABEL_383:
  if (sub_1CF902E34())
  {
    sub_1CF7E6950(v1643);
    if (sub_1CF06DA5C(v1643[0], 1))
    {
      v887 = sub_1CF656C68(0);
      v888 = sub_1CEFF8C8C();
      v887, v889, v890, v891, v892, v893, v894, v895;
      *&v1643[0] = v888;
      sub_1CF611880(0x1000000000, v814);
      sub_1CF611880(0x2000000000, v1611 & 1);
      v896 = *v89;
      v897 = sub_1CF93DAB0();
      v898 = *&v1643[0];
      sub_1CF3F7A48(v896, v897, v899, *&v1643[0]);
      sub_1CF903274();

      v900 = *v89;
      v901 = sub_1CF93DAB0();
      sub_1CF436240(v900, v901, v902, v898, &qword_1EC4BDF70, &qword_1CF9FB468);
      sub_1CF903274();
    }

    else
    {
      memcpy(v1642, v1651, sizeof(v1642));
      memcpy(v1643, v1651, 0x208uLL);
      if (sub_1CF08B99C(v1643) != 1)
      {
        v903 = *&v1642[8];
        v2216 = *&v1642[176];
        v2217 = *&v1642[192];
        v2218 = *&v1642[208];
        v2212 = *&v1642[112];
        v2213 = *&v1642[128];
        v2214 = *&v1642[144];
        v2215 = *&v1642[160];
        v2208 = *&v1642[48];
        v2209 = *&v1642[64];
        v2210 = *&v1642[80];
        v2211 = *&v1642[96];
        v2206 = *&v1642[16];
        v2207 = *&v1642[32];
        v904 = *&v1642[224];
        memcpy(v2220, &v1642[232], sizeof(v2220));
        v2204 = *v1642;
        v2205 = *&v1642[8];
        v2219 = *&v1642[224];
        if (sub_1CF75C2AC())
        {
          if (sub_1CF902E40(v903) && sub_1CF902E40(v904))
          {
            if (v814 & 1) != 0 && (sub_1CF7E6950(v1641), (sub_1CF682438(1)) && *(v1607 + *(v1599 + 48) + v1593[21]))
            {
              v905 = *v1607;
              LOBYTE(v1640[0]) = 0;
              sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v906 = v905;
              v907 = sub_1CF93DAB0();
              v909 = v908;
              v2197 = v905;
              v2198 = 0;
              v910 = v1640[0];
              v2199 = v1640[0];
              v2200 = 0x10000;
              v2201 = v907;
              v2202 = v908;
              v2203 = 2304;
              sub_1CF903278();
              *v1641 = v905;
              v1641[8] = 0;
              v1641[9] = v910;
              *&v1641[16] = 0x10000;
              *&v1641[24] = v907;
              *&v1641[32] = v909;
              *&v1641[114] = 2304;
              sub_1CEFCCC44(v1641, &qword_1EC4BE730, &unk_1CFA05490);
            }

            else
            {
              sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            }

            if ((v813 & 1) != 0 && (*(v1607 + *(v1599 + 48) + v1593[20]) & 1) == 0)
            {
              sub_1CF7E6950(v1641);
              if (FileItemKind.hasContent.getter())
              {
                v89 = v1607;
                v1172 = *v1607;
                LOBYTE(v1640[0]) = 0;
                v1173 = v1172;
                v1174 = sub_1CF93DAB0();
                v1176 = v1175;
                v2189 = v1172;
                v2190 = 0;
                v1177 = v1640[0];
                v2191 = v1640[0];
                v2192 = 8;
                v2193 = v1174;
                v2194 = v1175;
                v2195 = 0;
                v2196 = 10;
                sub_1CF903278();
                *v1641 = v1172;
                v1641[8] = 0;
                v1641[9] = v1177;
                *&v1641[16] = 8;
                *&v1641[24] = v1174;
                *&v1641[32] = v1176;
                v1641[82] = 0;
                v1641[115] = 10;
                sub_1CEFCCC44(v1641, &qword_1EC4BE730, &unk_1CFA05490);
                sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                goto LABEL_394;
              }
            }

            sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          }

          v89 = v1607;
        }
      }
    }
  }

LABEL_394:
  v911 = sub_1CF06D930();
  v912 = v1614;
  LODWORD(v1611) = v911;
  if ((v911 & 1) != 0 && !sub_1CF902E34())
  {
    memcpy(v1642, v1651, sizeof(v1642));
    memcpy(v1643, v1651, 0x208uLL);
    if (sub_1CF08B99C(v1643) != 1)
    {
      memcpy(v2188, v1642, sizeof(v2188));
      if (!sub_1CF75C2AC())
      {
        *v1641 = *v89;
        *&v1641[8] = 0;
        *&v1641[16] = 517;
        *&v1641[24] = v1594;
        *&v1641[32] = v1595;
        v1641[114] = 12;
        v2184 = *&v1641[64];
        v2185 = *&v1641[80];
        *v2186 = *&v1641[96];
        *&v2186[15] = *&v1641[111];
        v2182 = *&v1641[32];
        v2183 = *&v1641[48];
        v2180 = *v1641;
        v2181 = *&v1641[16];
        v2187 = 9;
        v913 = *v1641;
        sub_1CF903278();
        sub_1CEFCCC44(v1641, &unk_1EC4BFD60, &qword_1CFA05468);
      }
    }
  }

  v914 = v1638;
  if (sub_1CF06D930())
  {
    memcpy(v1642, v1651, sizeof(v1642));
    v1631 = *v1651;
    v1632 = *&v1651[16];
    v915 = v1642[24];
    memcpy(v1634, &v1651[25], 0x1EFuLL);
    v1643[0] = *v1651;
    *&v1643[1] = *&v1651[16];
    memcpy(&v1643[1] + 9, &v1651[25], 0x1EFuLL);
    BYTE8(v1643[1]) = v1642[24];
    if (sub_1CF08B99C(v1643) == 1)
    {
      *v1641 = v1631;
      *&v1641[16] = v1632;
      v1641[24] = v915;
      memcpy(&v1641[25], v1634, 0x1EFuLL);
      sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v912 = v1614;
      goto LABEL_403;
    }

    *v1641 = v1631;
    *&v1641[16] = v1632;
    v1641[24] = v915;
    memcpy(&v1641[25], v1634, 0x1EFuLL);
    sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
    v912 = v1614;
    v916 = v1610;
    if (v915 == 5)
    {
LABEL_403:
      v914 = v1638;
      goto LABEL_404;
    }

    v914 = v1638;
    if (sub_1CF959514(v915))
    {
      *&v1626 = *v89;
      WORD4(v1626) = 0;
      LOBYTE(v1627) = v915;
      BYTE1(v1627) = 5;
      *(&v1627 + 1) = v1594;
      *&v1628 = v1595;
      v2177 = v1629;
      v2178[0] = *v1630;
      v2176 = v1628;
      v2175 = v1627;
      v1630[18] = 12;
      *(v2178 + 15) = *&v1630[15];
      v2174 = v1626;
      v2179 = 10;
      v996 = v1626;
      sub_1CF903278();
      v997 = sub_1CEFCCC44(&v1626, &qword_1EC4BFD48, &qword_1CFA05460);
      v916(v997);
      if ((sub_1CF06D930() & 1) == 0)
      {
        sub_1CF7E6950(v1640);
        if (sub_1CF06DA5C(v1640[0], 0))
        {
          memcpy(v1639, v1651, 0x208uLL);
          memcpy(v1636, v1651, 0x200uLL);
          v1002 = *&v1639[32];
          memcpy(v1640, v1651, 0x200uLL);
          *&v1640[32] = *&v1639[32];
          if (sub_1CF08B99C(v1640) == 1)
          {
            memcpy(v1638, v1636, 0x200uLL);
            v914 = v1638;
            *&v1638[32] = v1002;
            sub_1CEFCCBDC(v1639, v1637, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v89 = v1607;
            v912 = v1614;
            goto LABEL_404;
          }

          memcpy(v1638, v1636, 0x200uLL);
          *&v1638[32] = v1002;
          sub_1CEFCCBDC(v1639, v1637, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1638, &unk_1EC4BFC90, &unk_1CFA053E0);
          if ((sub_1CF06D930() & 1) == 0)
          {
            v1179 = v1606 + *(v1599 + 52);
            v1180 = *(v1179 + 208);
            v1181 = *(v1179 + 176);
            v1633[12] = *(v1179 + 192);
            v1633[13] = v1180;
            v1182 = *(v1179 + 208);
            v1633[14] = *(v1179 + 224);
            v1183 = *(v1179 + 144);
            v1184 = *(v1179 + 112);
            v1633[8] = *(v1179 + 128);
            v1633[9] = v1183;
            v1185 = *(v1179 + 144);
            v1186 = *(v1179 + 176);
            v1633[10] = *(v1179 + 160);
            v1633[11] = v1186;
            v1187 = *(v1179 + 80);
            v1188 = *(v1179 + 48);
            v1633[4] = *(v1179 + 64);
            v1633[5] = v1187;
            v1189 = *(v1179 + 80);
            v1190 = *(v1179 + 112);
            v1633[6] = *(v1179 + 96);
            v1633[7] = v1190;
            v1191 = *(v1179 + 16);
            v1633[0] = *v1179;
            v1633[1] = v1191;
            v1192 = *(v1179 + 48);
            v1194 = *v1179;
            v1193 = *(v1179 + 16);
            v1633[2] = *(v1179 + 32);
            v1633[3] = v1192;
            v1637[12] = v1633[12];
            v1637[13] = v1182;
            v1637[14] = *(v1179 + 224);
            v1637[8] = v1633[8];
            v1637[9] = v1185;
            v1637[10] = v1633[10];
            v1637[11] = v1181;
            v1637[4] = v1633[4];
            v1637[5] = v1189;
            v1637[6] = v1633[6];
            v1637[7] = v1184;
            v1637[0] = v1194;
            v1637[1] = v1193;
            *&v1633[15] = *(v1179 + 240);
            *&v1637[15] = *(v1179 + 240);
            v1637[2] = v1633[2];
            v1637[3] = v1188;
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1637) != 1)
            {
              v1624[8] = v1637[12];
              v1624[9] = v1637[13];
              v1624[10] = v1637[14];
              v1625 = *&v1637[15];
              v1624[4] = v1637[8];
              v1624[5] = v1637[9];
              v1624[6] = v1637[10];
              v1624[7] = v1637[11];
              v1624[0] = v1637[4];
              v1624[1] = v1637[5];
              v1624[2] = v1637[6];
              v1624[3] = v1637[7];
              v1620 = v1637[0];
              v1621 = v1637[1];
              v1622 = v1637[2];
              v1623 = v1637[3];
              v1195 = *(*v1613 + 600);
              v1635[12] = v1633[12];
              v1635[13] = v1633[13];
              v1635[14] = v1633[14];
              *&v1635[15] = *&v1633[15];
              v1635[8] = v1633[8];
              v1635[9] = v1633[9];
              v1635[10] = v1633[10];
              v1635[11] = v1633[11];
              v1635[4] = v1633[4];
              v1635[5] = v1633[5];
              v1635[6] = v1633[6];
              v1635[7] = v1633[7];
              v1635[0] = v1633[0];
              v1635[1] = v1633[1];
              v1635[2] = v1633[2];
              v1635[3] = v1633[3];
              v1196 = sub_1CEFF7474(v1635, &v1619);
              v1197 = v1195(v1196);
              v1198 = sub_1CF68004C(v1197, 0, 0);
              if (sub_1CF9526EC(v1198, 501))
              {
                v89 = v1607;
                v1199 = *v1607;
                v1200 = *v1607;
                v1201 = sub_1CF656C80(0);
                v1202 = sub_1CEFF8C8C();
                v1201, v1203, v1204, v1205, v1206, v1207, v1208, v1209;
                v1618 = 0;
                v2162 = v1199;
                v2163 = 0;
                v2164 = v1619;
                v2165 = WORD2(v1619);
                v2166 = 1;
                v2167 = v1202;
                v2170 = v1622;
                v2171 = v1623;
                *v2172 = v1624[0];
                *&v2172[15] = *(v1624 + 15);
                v2168 = v1620;
                v2169 = v1621;
                v2173 = 14;
                sub_1CF903278();
                sub_1CEFCCC44(v1633, &qword_1EC4BECF0, &unk_1CF9FEEB0);

                v912 = v1614;
                goto LABEL_403;
              }

              sub_1CEFCCC44(v1633, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            }
          }
        }

        v89 = v1607;
        v912 = v1614;
        goto LABEL_403;
      }
    }
  }

LABEL_404:
  if (v1612)
  {
    v917 = v1653;
  }

  else
  {
    sub_1CF7E6950(v1643);
    v918 = sub_1CF06DA5C(v1643[0], 0);
    v917 = v1653;
    if (v918)
    {
      v919 = v1653;
      sub_1CF06D930();
      v917 = v919;
    }
  }

  if (!sub_1CF902E40(v917))
  {
    goto LABEL_413;
  }

  memcpy(v1642, v1651, sizeof(v1642));
  v920 = *v1642;
  v921 = *&v1642[8];
  memcpy(v1639, &v1651[16], 0x1F8uLL);
  memcpy(&v1643[1], &v1651[16], 0x1F8uLL);
  v1643[0] = *v1642;
  if (sub_1CF08B99C(v1643) == 1)
  {
    *v1641 = v920;
    *&v1641[8] = v921;
    memcpy(&v1641[16], v1639, 0x1F8uLL);
    sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_412;
  }

  *v1641 = v920;
  *&v1641[8] = v921;
  memcpy(&v1641[16], v1639, 0x1F8uLL);
  sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
  if (!sub_1CF902E40(v921))
  {
LABEL_413:
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v924 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v926 = v925;
    v928 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v934 = v924;
    v935 = v927;
    if (v934 == v928 && v926 == v927)
    {
      goto LABEL_417;
    }

    v943 = sub_1CF9E8048();
    v926, v944, v945, v946, v947, v948, v949, v950;
    v935, v951, v952, v953, v954, v955, v956, v957;
    if ((v943 & 1) == 0)
    {
      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v975 = qword_1EDEA34A0;
      v976 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v926 = v977;
      v928 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v978 = v976;
      v935 = v927;
      if (v978 == v928 && v926 == v927)
      {
LABEL_417:
        v926, v927, v928, v929, v930, v931, v932, v933;
        v935, v936, v937, v938, v939, v940, v941, v942;
        goto LABEL_419;
      }

      v1604 = v975;
      v979 = sub_1CF9E8048();
      v926, v980, v981, v982, v983, v984, v985, v986;
      v935, v987, v988, v989, v990, v991, v992, v993;
      if ((v979 & 1) == 0)
      {
        v994 = v1653;
        v1619 = v1653;
        if ((sub_1CF06D930() & 1) != 0 && (sub_1CF06D930() & 1) == 0)
        {
          sub_1CF7F5D14(0x200000000000, v1643);
        }

        v995 = sub_1CF06D930();
        v1605 = v994;
        if ((v995 & 1) == 0 || (sub_1CF7E69A4() & 1) == 0)
        {
          goto LABEL_612;
        }

        sub_1CF7E6950(v1643);
        if (!FileItemKind.canConflict.getter() || ((*(*v1613 + 552))() & 1) == 0)
        {
          goto LABEL_607;
        }

        memcpy(v1642, v1651, sizeof(v1642));
        memcpy(v1641, v1651, sizeof(v1641));
        memcpy(v1643, v1651, 0x208uLL);
        if (sub_1CF08B99C(v1643) == 1)
        {
          memcpy(v1640, v1641, 0x208uLL);
          sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_599;
        }

        goto LABEL_598;
      }
    }

LABEL_419:
    v958 = v1653;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
    swift_allocObject();
    sub_1CF06DA80();
    *v959 = xmmword_1CFA04EF0;
    *(v959 + 16) = 256;
    nullsub_1();
    sub_1CEFF5464(v960, v1642, v961, v962, v963, v964, v965, v966, v967);
    sub_1CF946F34(*v1642, v958, v1643);
    v968 = *&v1643[0];
    v969 = sub_1CF902E40(*&v1643[0]);
    v970 = v1613;
    if (!v969)
    {
      *&v1643[0] = *v89;
      WORD4(v1643[0]) = 0;
      *&v1643[1] = v968;
      *(&v1643[1] + 1) = v1594;
      *&v1643[2] = v1595;
      BYTE2(v1643[5]) = 0;
      v2006 = v1643[3];
      v2007[0] = v1643[4];
      v2005 = v1643[2];
      *(v2007 + 15) = *(&v1643[4] + 15);
      v2003 = v1643[0];
      v2004 = v1643[1];
      v2008 = 10;
      v971 = *&v1643[0];
      sub_1CF903278();
      sub_1CEFCCC44(v1643, &qword_1EC4BFD48, &qword_1CFA05460);
    }

    goto LABEL_421;
  }

LABEL_412:
  v922 = *v89;
  v1641[0] = 0;
  v1917 = v922;
  v1918 = 0;
  v1919 = v1594;
  v1920 = v1595;
  v1921 = 12;
  v923 = v922;
  sub_1CF903278();

  while (1)
  {
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    v1061 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v1063 = v1062;
    v1065 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v1071 = v1064;
    if (v1061 == v1065 && v1063 == v1064)
    {
      break;
    }

    v1079 = sub_1CF9E8048();
    v1063, v1080, v1081, v1082, v1083, v1084, v1085, v1086;
    v1071, v1087, v1088, v1089, v1090, v1091, v1092, v1093;
    if (v1079)
    {
      goto LABEL_508;
    }

LABEL_515:
    v1101 = v1612 == 2;
LABEL_516:
    v89 = v1607;
    if (!v1101)
    {
      goto LABEL_533;
    }

    v1112 = v1580;
    sub_1CEFCCBDC(v1607, v1580, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (!swift_weakLoadStrong())
    {
      __break(1u);
      goto LABEL_777;
    }

    v912, v1113, v1114, v1115, v1116, v1117, v1118, v1119;
    v1120 = v1617;
    v1121 = sub_1CF418C98(v1112);
    v1617 = v1120;
    if (v1120)
    {

      sub_1CEFCCC44(v1112, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_521:
      v812 = v1606;
      goto LABEL_522;
    }

    v912 = v1121;
    sub_1CEFCCC44(v1112, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    if (!sub_1CF55B584())
    {
      goto LABEL_533;
    }

    v1122 = sub_1CF902E8C(v912);
    v1123 = 4;
    while (1)
    {
      sub_1CF903340();
      if (v1122)
      {
      }

      else
      {
        MEMORY[0x1D3869C30](v1123 - 4, v912);
      }

      v1124 = v1123 - 3;
      if (__OFADD__(v1123 - 4, 1))
      {
        break;
      }

      sub_1CF903274();

      ++v1123;
      if (v1124 == sub_1CF55B584())
      {
        goto LABEL_533;
      }
    }

LABEL_597:
    __break(1u);
LABEL_598:
    v1638[10] = *&v1641[160];
    v1638[11] = *&v1641[176];
    v1638[12] = *&v1641[192];
    v1638[6] = *&v1641[96];
    v1638[7] = *&v1641[112];
    v1638[8] = *&v1641[128];
    v1638[9] = *&v1641[144];
    v1638[2] = *&v1641[32];
    v1638[3] = *&v1641[48];
    v1638[4] = *&v1641[64];
    v1638[5] = *&v1641[80];
    v758 = v1638;
    v1638[0] = *v1641;
    v1638[1] = *&v1641[16];
    memcpy(v1640, v1641, 0x208uLL);
    sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    sub_1CEFCCBDC(v1638, v1639, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCBDC(&v1638[8], v1639, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(v1638, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    if (*(&v1638[9] + 1) >> 60 == 11)
    {
LABEL_599:
      memcpy(v1640, v1651, 0x208uLL);
      v1636[0] = *v1651;
      *&v1636[1] = *&v1651[16];
      v1218 = BYTE8(v1640[1]);
      memcpy(v1637, &v1651[25], 0x1EFuLL);
      *v1641 = *v1651;
      *&v1641[16] = *&v1651[16];
      memcpy(&v1641[25], &v1651[25], 0x1EFuLL);
      v1641[24] = BYTE8(v1640[1]);
      if (sub_1CF08B99C(v1641) == 1)
      {
        v1639[0] = v1636[0];
        *&v1639[1] = *&v1636[1];
        BYTE8(v1639[1]) = v1218;
        memcpy(&v1639[1] + 9, v1637, 0x1EFuLL);
        sub_1CEFCCBDC(v1640, v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        v1639[0] = v1636[0];
        *&v1639[1] = *&v1636[1];
        BYTE8(v1639[1]) = v1218;
        memcpy(&v1639[1] + 9, v1637, 0x1EFuLL);
        sub_1CEFCCBDC(v1640, v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1639, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (v1218 == 3)
        {
          goto LABEL_607;
        }
      }

      v1219 = *v1607;
      v1220 = sub_1CF93DAB0();
      sub_1CF436240(v1219, v1220, v1221, 2, &unk_1EC4C0310, &unk_1CF9FB360);
      sub_1CF903274();
    }

    else
    {
LABEL_606:
      sub_1CEFCCC44(v758 + 128, &unk_1EC4BF260, &unk_1CFA01B60);
    }

LABEL_607:
    if (sub_1CF06D930())
    {
      memcpy(v1642, v1651, sizeof(v1642));
      memcpy(v1643, v1651, 0x208uLL);
      if (sub_1CF08B99C(v1643) != 1)
      {
        memcpy(v2161, v1642, sizeof(v2161));
        if (sub_1CF75C2AC())
        {
          v1222 = *v1607;
          LOBYTE(v1638[0]) = 0;
          v1223 = *(v1607 + 32);
          v1639[0] = *(v1607 + 16);
          v1639[1] = v1223;
          v1224 = *(v1607 + 64);
          v1639[2] = *(v1607 + 48);
          v1639[3] = v1224;
          *(v1640 + 6) = v1639[0];
          *(&v1640[1] + 6) = v1223;
          *(&v1640[2] + 6) = v1639[2];
          *(&v1640[3] + 6) = v1224;
          v2151 = v1222;
          v2152 = 0;
          v2153 = 0;
          v2154 = v1640[0];
          *&v2157[14] = *(&v1224 + 1);
          *v2157 = v1640[3];
          v2156 = v1640[2];
          v2155 = v1640[1];
          v2158 = 1;
          v2159 = 8;
          v2160 = 10;
          v1225 = v1222;
          sub_1CEFCCBDC(v1639, v1641, &unk_1EC4BF250, &unk_1CFA01B50);
          sub_1CF903278();
          *&v1641[26] = v1640[1];
          *&v1641[42] = v1640[2];
          *&v1641[58] = v1640[3];
          *v1641 = v1222;
          v1641[8] = 0;
          v1641[9] = 0;
          *&v1641[72] = *(&v1640[3] + 14);
          *&v1641[10] = v1640[0];
          *&v1641[80] = 1;
          v1641[82] = 8;
          v1641[115] = 10;
          sub_1CEFCCC44(v1641, &qword_1EC4BE730, &unk_1CFA05490);
        }
      }
    }

    sub_1CF7F5D14(8, v1643);
    v994 = v1605;
LABEL_612:
    if (sub_1CF06D930())
    {
      v1226 = *(v1607 + 32);
      if (v1226)
      {
        v1227 = *(v1606 + 16);
        v1228 = *(v1606 + 24);

        LOBYTE(v1228) = sub_1CF384708(v1227, v1228, v1226);
        v1226, v1229, v1230, v1231, v1232, v1233, v1234, v1235;
        if (v1228)
        {
          memcpy(v1642, v1651, sizeof(v1642));
          memcpy(v1641, v1651, sizeof(v1641));
          memcpy(v1643, v1651, 0x208uLL);
          if (sub_1CF08B99C(v1643) == 1)
          {
            memcpy(v1640, v1641, 0x208uLL);
            sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v1236 = v1640;
            v1237 = &unk_1EC4BFD80;
            v1238 = &unk_1CFA0A2A0;
            goto LABEL_619;
          }

          v1638[10] = *&v1641[160];
          v1638[11] = *&v1641[176];
          v1638[12] = *&v1641[192];
          v1638[6] = *&v1641[96];
          v1638[7] = *&v1641[112];
          v1638[8] = *&v1641[128];
          v1638[9] = *&v1641[144];
          v1638[2] = *&v1641[32];
          v1638[3] = *&v1641[48];
          v1638[4] = *&v1641[64];
          v1638[5] = *&v1641[80];
          v1638[0] = *v1641;
          v1638[1] = *&v1641[16];
          memcpy(v1640, v1641, 0x208uLL);
          sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCBDC(v1638, v1639, &unk_1EC4C4E60, &unk_1CF9FCAD0);
          sub_1CEFCCC44(v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
          v1600 = *(&v1638[2] + 1);
          v1239 = *&v1638[2];
          v1240 = *&v1638[3];
          v1633[0] = *(&v1638[3] + 8);
          v1633[1] = *(&v1638[4] + 8);
          *&v1633[2] = *(&v1638[5] + 1);
          sub_1CEFCCBDC(&v1638[2], v1639, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(v1638, &unk_1EC4C4E60, &unk_1CF9FCAD0);
          if (v1240 == 1)
          {
            *&v1639[0] = v1239;
            *(&v1639[0] + 1) = v1600;
            *&v1639[1] = 1;
            *(&v1639[1] + 8) = v1633[0];
            *(&v1639[2] + 8) = v1633[1];
            *(&v1639[3] + 1) = *&v1633[2];
            v1237 = &unk_1EC4BF2D0;
            v1238 = &unk_1CF9FEF20;
            v1236 = v1639;
LABEL_619:
            sub_1CEFCCC44(v1236, v1237, v1238);
          }

          else
          {
            v1241 = v1600;
            *&v1636[0] = v1239;
            *(&v1636[0] + 1) = v1600;
            *&v1636[1] = v1240;
            *(&v1636[1] + 8) = v1633[0];
            *(&v1636[2] + 8) = v1633[1];
            *(&v1636[3] + 1) = *&v1633[2];
            sub_1CEFE42D4(v1239, v1600);
            sub_1CEFCCC44(v1636, &unk_1EC4BF250, &unk_1CFA01B50);

            LOBYTE(v1241) = sub_1CF384708(v1239, v1241, v1226);
            v1226, v1242, v1243, v1244, v1245, v1246, v1247, v1248;
            if (v1241)
            {
              v1249 = *v1607;
              LOBYTE(v1635[0]) = 0;
              v1250 = *(v1607 + 32);
              v1634[0] = *(v1607 + 16);
              v1634[1] = v1250;
              v1251 = *(v1607 + 64);
              v1634[2] = *(v1607 + 48);
              v1634[3] = v1251;
              *(v1637 + 6) = v1634[0];
              *(&v1637[1] + 6) = v1250;
              *(&v1637[2] + 6) = v1634[2];
              *(&v1637[3] + 6) = v1251;
              v2141 = v1249;
              v2142 = 0;
              v2143 = 0;
              v2144 = v1637[0];
              *&v2147[14] = *(&v1251 + 1);
              *v2147 = v1637[3];
              v2146 = v1637[2];
              v2145 = v1637[1];
              v2148 = 1;
              v2149 = 8;
              v2150 = 10;
              v1252 = v1249;
              sub_1CEFCCBDC(v1634, v1639, &unk_1EC4BF250, &unk_1CFA01B50);
              sub_1CF903278();
              *(&v1639[1] + 10) = v1637[1];
              *(&v1639[2] + 10) = v1637[2];
              *(&v1639[3] + 10) = v1637[3];
              *&v1639[0] = v1249;
              WORD4(v1639[0]) = 0;
              *(&v1639[4] + 1) = *(&v1637[3] + 14);
              *(v1639 + 10) = v1637[0];
              LOWORD(v1639[5]) = 1;
              BYTE2(v1639[5]) = 8;
              BYTE3(v1639[7]) = 10;
              sub_1CEFCCC44(v1639, &qword_1EC4BE730, &unk_1CFA05490);
            }

            sub_1CEFE4714(v1239, v1600);
          }

          sub_1CF7F5D14(8, v1641);
          v994 = v1605;
        }
      }
    }

    if (sub_1CF06D930())
    {
      v1253 = *(v1607 + 56);
      if (v1253)
      {
        v1254 = *(v1606 + 40);
        v1255 = *(v1606 + 48);

        LOBYTE(v1255) = sub_1CF384708(v1254, v1255, v1253);
        v1253, v1256, v1257, v1258, v1259, v1260, v1261, v1262;
        if (v1255)
        {
          memcpy(v1642, v1651, sizeof(v1642));
          memcpy(v1641, v1651, sizeof(v1641));
          memcpy(v1643, v1651, 0x208uLL);
          if (sub_1CF08B99C(v1643) == 1)
          {
            memcpy(v1640, v1641, 0x208uLL);
            sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v1263 = v1640;
            v1264 = &unk_1EC4BFD80;
            v1265 = &unk_1CFA0A2A0;
            goto LABEL_631;
          }

          v1638[10] = *&v1641[160];
          v1638[11] = *&v1641[176];
          v1638[12] = *&v1641[192];
          v1638[6] = *&v1641[96];
          v1638[7] = *&v1641[112];
          v1638[8] = *&v1641[128];
          v1638[9] = *&v1641[144];
          v1638[2] = *&v1641[32];
          v1638[3] = *&v1641[48];
          v1638[4] = *&v1641[64];
          v1638[5] = *&v1641[80];
          v1638[0] = *v1641;
          v1638[1] = *&v1641[16];
          memcpy(v1640, v1641, 0x208uLL);
          sub_1CEFCCBDC(v1642, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCBDC(v1638, v1639, &unk_1EC4C4E60, &unk_1CF9FCAD0);
          sub_1CEFCCC44(v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
          v1635[0] = v1638[2];
          v1597 = *(&v1638[3] + 1);
          v1266 = *&v1638[3];
          v1600 = *&v1638[4];
          v1633[0] = *(&v1638[4] + 8);
          *&v1633[1] = *(&v1638[5] + 1);
          sub_1CEFCCBDC(&v1638[2], v1639, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(v1638, &unk_1EC4C4E60, &unk_1CF9FCAD0);
          if (v1266 == 1)
          {
            v1639[0] = v1635[0];
            *&v1639[1] = 1;
            *(&v1639[1] + 1) = v1597;
            *&v1639[2] = v1600;
            *(&v1639[2] + 8) = v1633[0];
            *(&v1639[3] + 1) = *&v1633[1];
            v1264 = &unk_1EC4BF2D0;
            v1265 = &unk_1CF9FEF20;
            v1263 = v1639;
LABEL_631:
            sub_1CEFCCC44(v1263, v1264, v1265);
          }

          else
          {
            v1636[0] = v1635[0];
            v1267 = v1597;
            *&v1636[1] = v1266;
            *(&v1636[1] + 1) = v1597;
            v1268 = v1600;
            *&v1636[2] = v1600;
            *(&v1636[2] + 8) = v1633[0];
            *(&v1636[3] + 1) = *&v1633[1];
            sub_1CEFE42D4(v1597, v1600);
            sub_1CEFCCC44(v1636, &unk_1EC4BF250, &unk_1CFA01B50);

            LOBYTE(v1268) = sub_1CF384708(v1267, v1268, v1253);
            v1253, v1269, v1270, v1271, v1272, v1273, v1274, v1275;
            if (v1268)
            {
              v1276 = *v1607;
              LOBYTE(v1620) = 0;
              v1277 = *(v1607 + 32);
              v1634[0] = *(v1607 + 16);
              v1634[1] = v1277;
              v1278 = *(v1607 + 64);
              v1634[2] = *(v1607 + 48);
              v1634[3] = v1278;
              *(v1637 + 6) = v1634[0];
              *(&v1637[1] + 6) = v1277;
              *(&v1637[2] + 6) = v1634[2];
              *(&v1637[3] + 6) = v1278;
              v2131 = v1276;
              v2132 = 0;
              v2133 = 0;
              v2134 = v1637[0];
              *&v2137[14] = *(&v1278 + 1);
              *v2137 = v1637[3];
              v2136 = v1637[2];
              v2135 = v1637[1];
              v2138 = 256;
              v2139 = 8;
              v2140 = 10;
              v1279 = v1276;
              sub_1CEFCCBDC(v1634, v1639, &unk_1EC4BF250, &unk_1CFA01B50);
              sub_1CF903278();
              *(&v1639[1] + 10) = v1637[1];
              *(&v1639[2] + 10) = v1637[2];
              *(&v1639[3] + 10) = v1637[3];
              *&v1639[0] = v1276;
              WORD4(v1639[0]) = 0;
              *(&v1639[4] + 1) = *(&v1637[3] + 14);
              *(v1639 + 10) = v1637[0];
              LOWORD(v1639[5]) = 256;
              BYTE2(v1639[5]) = 8;
              BYTE3(v1639[7]) = 10;
              sub_1CEFCCC44(v1639, &qword_1EC4BE730, &unk_1CFA05490);
            }

            sub_1CEFE4714(v1597, v1600);
          }

          sub_1CF7F5D14(0x20000000000, v1641);
          v994 = v1605;
        }
      }
    }

    sub_1CF946F40(0x160000000010000, v994, v1643);
    if (sub_1CF9526EC(*&v1643[0], 0x20000000000))
    {
      memcpy(v1642, v1651, sizeof(v1642));
      memcpy(v1643, v1651, 0x208uLL);
      if (sub_1CF08B99C(v1643) != 1)
      {
        v2095 = *v1642;
        v2099 = *&v1642[56];
        v2100 = *&v1642[72];
        v2101 = *&v1642[88];
        v2097 = *&v1642[24];
        v2098 = *&v1642[40];
        v2114 = *&v1642[265];
        v2115 = *&v1642[281];
        v2117 = *&v1642[313];
        *v2118 = *&v1642[329];
        v2116 = *&v1642[297];
        v2107 = *&v1642[153];
        v2106 = *&v1642[137];
        v2105 = *&v1642[121];
        v2111 = *&v1642[217];
        v2110 = *&v1642[201];
        v2109 = *&v1642[185];
        v2108 = *&v1642[169];
        v2113 = *&v1642[249];
        v2112 = *&v1642[233];
        v1280 = *&v1642[360];
        v2128 = *&v1642[465];
        v2129 = *&v1642[481];
        *v2130 = *&v1642[497];
        v1281 = v1642[368];
        v2124 = *&v1642[401];
        v2125 = *&v1642[417];
        v2126 = *&v1642[433];
        v2127 = *&v1642[449];
        v2122 = *&v1642[369];
        v2123 = *&v1642[385];
        *&v2130[15] = *&v1642[512];
        v1282 = *&v1642[16];
        v2096 = *&v1642[16];
        v1283 = *&v1642[104];
        v2102 = *&v1642[104];
        v2103 = *&v1642[112];
        v1284 = *&v1642[112];
        v1285 = v1642[120];
        v2104 = v1642[120];
        *&v2118[15] = *&v1642[344];
        v2119 = *&v1642[352];
        v1600 = *&v1642[352];
        v2120 = *&v1642[360];
        v2121 = v1642[368];
        if (sub_1CF75C2AC() && sub_1CF946F54(0x160000000010000, v1282) && !sub_1CF95EF34(v1283, v1284, v1285) && !sub_1CF95EF34(v1600, v1280, v1281))
        {
          v1286 = *v1607;
          LOBYTE(v1638[0]) = 0;
          v1287 = *(v1607 + 32);
          v1639[0] = *(v1607 + 16);
          v1639[1] = v1287;
          v1288 = *(v1607 + 64);
          v1639[2] = *(v1607 + 48);
          v1639[3] = v1288;
          *(v1640 + 6) = v1639[0];
          *(&v1640[1] + 6) = v1287;
          *(&v1640[2] + 6) = v1639[2];
          *(&v1640[3] + 6) = v1288;
          v2085 = v1286;
          v2086 = 0;
          v2087 = 0;
          v2088 = v1640[0];
          *&v2091[14] = *(&v1288 + 1);
          *v2091 = v1640[3];
          v2090 = v1640[2];
          v2089 = v1640[1];
          v2092 = 256;
          v2093 = 8;
          v2094 = 10;
          sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v1289 = v1286;
          sub_1CEFCCBDC(v1639, v1641, &unk_1EC4BF250, &unk_1CFA01B50);
          sub_1CF903278();
          *&v1641[26] = v1640[1];
          *&v1641[42] = v1640[2];
          *&v1641[58] = v1640[3];
          *v1641 = v1286;
          v1641[8] = 0;
          v1641[9] = 0;
          *&v1641[72] = *(&v1640[3] + 14);
          *&v1641[10] = v1640[0];
          *&v1641[80] = 256;
          v1641[82] = 8;
          v1641[115] = 10;
          sub_1CEFCCC44(v1641, &qword_1EC4BE730, &unk_1CFA05490);
          sub_1CF7F5D14(0x20000000000, v1640);
          sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }
      }

      LODWORD(v994) = v1605;
    }

    if (sub_1CF41ABB8(v1608, v1607, v994, &unk_1EC4BFBD0, &unk_1CF9FCBC0))
    {
      sub_1CF7F5D14(0x10000, v1641);
      memcpy(v1642, v1651, sizeof(v1642));
      memcpy(v1643, v1651, 0x208uLL);
      if (sub_1CF08B99C(v1643) != 1)
      {
        memcpy(v2084, v1642, sizeof(v2084));
        if (sub_1CF75C2AC())
        {
          memcpy(v1640, v1651, 0x208uLL);
          v1636[10] = *&v1651[160];
          v1636[11] = *&v1651[176];
          v1636[12] = *&v1651[192];
          v1636[13] = *&v1651[208];
          v1636[6] = *&v1651[96];
          v1636[7] = *&v1651[112];
          v1636[8] = *&v1651[128];
          v1636[9] = *&v1651[144];
          v1636[2] = *&v1651[32];
          v1636[3] = *&v1651[48];
          v1636[4] = *&v1651[64];
          v1636[5] = *&v1651[80];
          v1636[0] = *v1651;
          v1636[1] = *&v1651[16];
          v1290 = *&v1640[14];
          memcpy(v1637, &v1651[232], 0x120uLL);
          *&v1641[160] = *&v1651[160];
          *&v1641[176] = *&v1651[176];
          *&v1641[192] = *&v1651[192];
          *&v1641[208] = *&v1651[208];
          *&v1641[96] = *&v1651[96];
          *&v1641[112] = *&v1651[112];
          *&v1641[128] = *&v1651[128];
          *&v1641[144] = *&v1651[144];
          *&v1641[32] = *&v1651[32];
          *&v1641[48] = *&v1651[48];
          *&v1641[64] = *&v1651[64];
          *&v1641[80] = *&v1651[80];
          *v1641 = *v1651;
          *&v1641[16] = *&v1651[16];
          memcpy(&v1641[232], &v1651[232], 0x120uLL);
          *&v1641[224] = *&v1640[14];
          if (sub_1CF08B99C(v1641) == 1)
          {
            v1639[10] = v1636[10];
            v1639[11] = v1636[11];
            v1639[12] = v1636[12];
            v1639[13] = v1636[13];
            v1639[6] = v1636[6];
            v1639[7] = v1636[7];
            v1639[8] = v1636[8];
            v1639[9] = v1636[9];
            v1639[2] = v1636[2];
            v1639[3] = v1636[3];
            v1639[4] = v1636[4];
            v1639[5] = v1636[5];
            *&v1639[14] = v1290;
            v1639[0] = v1636[0];
            v1639[1] = v1636[1];
            memcpy(&v1639[14] + 8, v1637, 0x120uLL);
            sub_1CEFCCBDC(v1640, v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v1291 = v1639;
            v1292 = &unk_1EC4BFD80;
            v1293 = &unk_1CFA0A2A0;
          }

          else
          {
            v1639[10] = v1636[10];
            v1639[11] = v1636[11];
            v1639[12] = v1636[12];
            v1639[13] = v1636[13];
            v1639[6] = v1636[6];
            v1639[7] = v1636[7];
            v1639[8] = v1636[8];
            v1639[9] = v1636[9];
            v1639[2] = v1636[2];
            v1639[3] = v1636[3];
            v1639[4] = v1636[4];
            v1639[5] = v1636[5];
            v1639[0] = v1636[0];
            v1639[1] = v1636[1];
            *&v1639[14] = v1290;
            memcpy(&v1639[14] + 8, v1637, 0x120uLL);
            sub_1CEFCCBDC(v1640, v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1639, &unk_1EC4BFC90, &unk_1CFA053E0);
            if (!sub_1CF902E40(v1290))
            {
              goto LABEL_652;
            }

            *&v1638[0] = *v1607;
            WORD4(v1638[0]) = 0;
            *&v1638[1] = 0x10000;
            *(&v1638[1] + 1) = v1594;
            *&v1638[2] = v1595;
            BYTE2(v1638[7]) = 0;
            v2080 = v1638[4];
            v2081 = v1638[5];
            *v2082 = v1638[6];
            *&v2082[15] = *(&v1638[6] + 15);
            v2078 = v1638[2];
            v2079 = v1638[3];
            v2076 = v1638[0];
            v2077 = v1638[1];
            v2083 = 9;
            v1294 = *&v1638[0];
            sub_1CF903278();
            v1292 = &unk_1EC4BFD60;
            v1293 = &qword_1CFA05468;
            v1291 = v1638;
          }

          sub_1CEFCCC44(v1291, v1292, v1293);
        }
      }
    }

LABEL_652:
    v1295 = v1619;
    if (sub_1CF06D930())
    {
      sub_1CF948150(v1643, 0x100000D000000);
      v1295 = v1619;
    }

    *&v1643[0] = v1295;
    Fields.removingNonPropagatedFields.getter(v1642);
    v1619 = *v1642;
    sub_1CF946F40(0x100000000000, *v1642, v1643);
    v1296 = sub_1CF902E40(*&v1643[0]);
    v1297 = v1607;
    if (!v1296 || (sub_1CF06D930() & 1) != 0 && *(v1297 + *(v1599 + 48) + v1593[15]) != 1 || (sub_1CF06D930() & 1) != 0)
    {
      v1298 = v1297 + *(v1599 + 48);
      v1299 = v1593[16];
      v1300 = v1298[v1299];
      *&v1638[0] = *v1297;
      WORD4(v1638[0]) = 0;
      LOBYTE(v1638[1]) = v1300;
      v2072 = v1638[2];
      v2073 = v1638[3];
      v2074[0] = v1638[4];
      v2070 = v1638[0];
      BYTE2(v1638[5]) = 5;
      *(v2074 + 15) = *(&v1638[4] + 15);
      v2071 = v1638[1];
      v2075 = 10;
      v1301 = *&v1638[0];
      sub_1CF903278();
      sub_1CEFCCC44(v1638, &qword_1EC4BFD48, &qword_1CFA05460);
      memcpy(v1642, v1651, sizeof(v1642));
      v1303 = *v1642;
      v1302 = *&v1642[8];
      memcpy(v1639, &v1651[16], 0x1F8uLL);
      memcpy(&v1643[1], &v1651[16], 0x1F8uLL);
      v1643[0] = *v1642;
      if (sub_1CF08B99C(v1643) == 1)
      {
        *v1641 = v1303;
        *&v1641[8] = v1302;
        memcpy(&v1641[16], v1639, 0x1F8uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v1304 = 0;
      }

      else
      {
        *v1641 = v1303;
        *&v1641[8] = v1302;
        memcpy(&v1641[16], v1639, 0x1F8uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
        v1304 = sub_1CF06D930();
      }

      v1305 = v1298[v1299];
      sub_1CF7E6950(v1641);
      if (sub_1CF06DA5C(v1641[0], 1) && (v1304 & 1) != 0 && (v1305 & 1) == 0)
      {
        v1306 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1308 = v1307;
        v1310 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1316 = v1309;
        if (v1306 == v1310 && v1308 == v1309)
        {
          v1317 = v1308;
          goto LABEL_667;
        }

        v1325 = sub_1CF9E8048();
        v1308, v1326, v1327, v1328, v1329, v1330, v1331, v1332;
        v1316, v1333, v1334, v1335, v1336, v1337, v1338, v1339;
        if ((v1325 & 1) == 0)
        {
          v1366 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1368 = v1367;
          v1310 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v1316 = v1309;
          if (v1366 == v1310 && v1368 == v1309)
          {
            v1317 = v1368;
LABEL_667:
            v1317, v1309, v1310, v1311, v1312, v1313, v1314, v1315;
            v1316, v1318, v1319, v1320, v1321, v1322, v1323, v1324;
          }

          else
          {
            v1370 = sub_1CF9E8048();
            v1368, v1371, v1372, v1373, v1374, v1375, v1376, v1377;
            v1316, v1378, v1379, v1380, v1381, v1382, v1383, v1384;
            if ((v1370 & 1) == 0)
            {
              sub_1CF948150(v1641, 0x100000000000);
            }
          }
        }
      }

      v1297 = v1607;
    }

    if ((sub_1CF06D930() & 1) != 0 && (*(v1297 + *(v1599 + 48) + v1593[18]) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
      swift_allocObject();
      sub_1CF06DA80();
      *v1340 = xmmword_1CFA04EE0;
      *(v1340 + 16) = 1;
      nullsub_1();
      sub_1CEFF5464(v1341, v1642, v1342, v1343, v1344, v1345, v1346, v1347, v1348);
      sub_1CF948150(v1643, *v1642);
    }

    if (v1612 == 5)
    {
      v1349 = *v1607;
      LOBYTE(v1640[0]) = 0;
      v1350 = *(v1607 + 32);
      *v1641 = *(v1607 + 16);
      *&v1641[16] = v1350;
      v1351 = *(v1607 + 64);
      *&v1641[32] = *(v1607 + 48);
      *&v1641[48] = v1351;
      *&v1642[6] = *v1641;
      *&v1642[22] = v1350;
      *&v1642[38] = *&v1641[32];
      *&v1642[54] = v1351;
      v2060 = v1349;
      v2061 = 0;
      v2062 = 0;
      v2063 = *v1642;
      *&v2066[14] = *(&v1351 + 1);
      *v2066 = *&v1642[48];
      v2065 = *&v1642[32];
      v2064 = *&v1642[16];
      v2067 = 1;
      v2068 = 8;
      v2069 = 10;
      v1352 = v1349;
      sub_1CEFCCBDC(v1641, v1643, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CF903278();
      *(&v1643[1] + 10) = *&v1642[16];
      *(&v1643[2] + 10) = *&v1642[32];
      *(&v1643[3] + 10) = *&v1642[48];
      *&v1643[0] = v1349;
      WORD4(v1643[0]) = 0;
      *(&v1643[4] + 1) = *&v1642[62];
      *(v1643 + 10) = *v1642;
      LOWORD(v1643[5]) = 1;
      BYTE2(v1643[5]) = 8;
      BYTE3(v1643[7]) = 10;
      sub_1CEFCCC44(v1643, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CF7F5D14(8, v1642);
    }

    if (sub_1CF902E34())
    {
      sub_1CF7E6950(v1643);
      if (FileItemKind.canConflict.getter() && (sub_1CF06D930() & 1) != 0 && (sub_1CF7E69A4() & 1) == 0)
      {
        memcpy(v1642, v1651, sizeof(v1642));
        memcpy(v1643, v1651, 0x208uLL);
        if (sub_1CF08B99C(v1643) != 1 && v1642[216] != 255)
        {
          v1353 = *v1642;
          v1354 = *&v1642[152];
          v1355 = v1642[344];
          *&v1637[0] = *&v1642[208];
          BYTE8(v1637[0]) = v1642[216];
          v1356 = *(*v1613[5] + 264);
          memcpy(v1641, v1642, sizeof(v1641));
          sub_1CEFCCBDC(v1641, v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
          v1357 = v1617;
          v1356(v1638, v1637, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v1617 = v1357;
          if (v1357)
          {
            v1614, v1358, v1359, v1360, v1361, v1362, v1363, v1364;
            sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            memcpy(v1639, v1651, 0x208uLL);
            sub_1CEFCCC44(v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            memcpy(v1640, v1652, 0x208uLL);
            v1365 = v1640;
            goto LABEL_683;
          }

          v1639[12] = v1638[12];
          v1639[13] = v1638[13];
          v1639[14] = v1638[14];
          v1639[8] = v1638[8];
          v1639[9] = v1638[9];
          v1639[10] = v1638[10];
          v1639[11] = v1638[11];
          v1639[4] = v1638[4];
          v1639[5] = v1638[5];
          v1639[6] = v1638[6];
          v1639[7] = v1638[7];
          v1639[0] = v1638[0];
          v1639[1] = v1638[1];
          v1639[2] = v1638[2];
          v1639[3] = v1638[3];
          v1640[12] = v1638[12];
          v1640[13] = v1638[13];
          v1640[14] = v1638[14];
          v1640[8] = v1638[8];
          v1640[9] = v1638[9];
          v1640[10] = v1638[10];
          v1640[11] = v1638[11];
          v1640[4] = v1638[4];
          v1640[5] = v1638[5];
          v1640[6] = v1638[6];
          v1640[7] = v1638[7];
          v1640[0] = v1638[0];
          v1640[1] = v1638[1];
          *&v1639[15] = *&v1638[15];
          *&v1640[15] = *&v1638[15];
          v1640[2] = v1638[2];
          v1640[3] = v1638[3];
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1640) != 1)
          {
            v1385 = *&v1640[14];

            sub_1CEFCCC44(v1639, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            if (v1385)
            {
              v1386 = sub_1CF6823A4(v1385);
              v1385, v1387, v1388, v1389, v1390, v1391, v1392, v1393;
              if (!v1386 || v1353 && (v1354 & 0xF000000000000000) != 0xB000000000000000 && !v1355)
              {
                v1394 = *(v1607 + *(v1599 + 48) + v1593[21]);
                if (v1394 != 2 && v1394 != 3)
                {
                  v1395 = *&v1637[0];
                  v1396 = BYTE8(v1637[0]);
                  v1397 = sub_1CF93DAB0();
                  sub_1CF43659C(v1395, v1396, v1397, v1398, 1);
                  sub_1CF903270();
                }
              }
            }
          }

          sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }
      }
    }

    v1399 = *v1607;
    v1641[0] = 0;
    *&v1643[0] = v1619;
    v1400 = v1399;
    Fields.removingNonPropagatedFields.getter(v1642);
    v1401 = *v1642;
    v2052 = v1399;
    v2053 = 0;
    v1402 = v1641[0];
    v2054 = v1641[0];
    v1403 = v1594;
    v1404 = v1595;
    v2055 = *v1642;
    v2056 = v1594;
    v2057 = v1595;
    v2058 = 0;
    v2059 = 10;
    sub_1CF903278();
    *&v1633[0] = v1399;
    BYTE8(v1633[0]) = 0;
    BYTE9(v1633[0]) = v1402;
    *&v1633[1] = v1401;
    *(&v1633[1] + 1) = v1403;
    *&v1633[2] = v1404;
    BYTE2(v1633[5]) = 0;
    BYTE3(v1633[7]) = 10;
    sub_1CEFCCC44(v1633, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF7E6950(v1643);
    if (FileItemKind.hasContent.getter() && (sub_1CF06D930() & 1) != 0)
    {
      *&v1635[0] = *v1607;
      WORD4(v1635[0]) = 0;
      memset(&v1635[1], 0, 24);
      *(&v1635[2] + 1) = 0xB000000000000000;
      memset(&v1635[3], 0, 34);
      BYTE2(v1635[5]) = 13;
      v2047 = 0uLL;
      *(v2050 + 15) = *(&v1635[4] + 15);
      v2049 = 0u;
      v2050[0] = 0u;
      v2048 = v1635[2];
      v2046 = v1635[0];
      v2051 = 10;
      v1405 = *&v1635[0];
      sub_1CF903278();
      sub_1CEFCCC44(v1635, &qword_1EC4BFD48, &qword_1CFA05460);
      if (!sub_1CF902E34())
      {
        sub_1CF7E6950(v1643);
        if (sub_1CF682438(1))
        {
          memcpy(v1642, v1651, sizeof(v1642));
          memcpy(v1643, v1651, 0x208uLL);
          if (sub_1CF08B99C(v1643) != 1)
          {
            v2042 = *&v1642[32];
            v2043 = *&v1642[48];
            v2044 = *&v1642[64];
            v2045 = *&v1642[80];
            v2040 = *v1642;
            v2041 = *&v1642[16];
            v1406 = v1642[96];
            v2034 = *&v1642[97];
            v2035 = *&v1642[113];
            v2036 = *&v1642[129];
            *(v2039 + 15) = *&v1642[192];
            v2038 = *&v1642[161];
            v2039[0] = *&v1642[177];
            v2037 = *&v1642[145];
            v1600 = *&v1642[208];
            LODWORD(v1605) = v1642[216];
            *(v2033 + 15) = *&v1642[232];
            v2033[0] = *&v1642[217];
            v1407 = v1642[240];
            v2023 = *&v1642[273];
            v2024 = *&v1642[289];
            v2021 = *&v1642[241];
            v2022 = *&v1642[257];
            v2028 = *&v1642[353];
            v2029 = *&v1642[369];
            v2026 = *&v1642[321];
            v2027 = *&v1642[337];
            v2025 = *&v1642[305];
            *(v2032 + 15) = *&v1642[432];
            v2031 = *&v1642[401];
            v2032[0] = *&v1642[417];
            v2030 = *&v1642[385];
            v1604 = *&v1642[448];
            v2017 = *&v1642[456];
            v2018 = *&v1642[472];
            v2020 = *&v1642[504];
            v2019 = *&v1642[488];
            if ((v1642[96] | 4) != 4 && v1642[240] && (v1604 & 0xC) == 0 && v1605 != 255)
            {
              v1597 = *&v1642[512];
              *&v1620 = v1600;
              BYTE8(v1620) = v1605;
              v1423 = *(*v1613[5] + 240);
              sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v1424 = v1617;
              v1423(&v1620, 1, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1617 = v1424;
              if (v1424)
              {
                v1614, v1425, v1426, v1427, v1428, v1429, v1430, v1431;
                goto LABEL_723;
              }

              if ((*(v1577 + 48))(v1572, 1, v1581) == 1)
              {
                sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v1447 = &qword_1EC4C1B40;
                v1448 = &unk_1CF9FCB70;
                v1449 = v1572;
                goto LABEL_763;
              }

              v1450 = v1572;
              v1451 = v1568;
              sub_1CEFDA214(&v1572[*(v1581 + 48)], v1568, type metadata accessor for ItemMetadata);
              sub_1CEFCCC44(v1450, &unk_1EC4BE360, &qword_1CF9FE650);
              sub_1CEFD9F8C(v1451, v1571, type metadata accessor for ItemMetadata);
              if (!sub_1CF677CD0())
              {
                goto LABEL_762;
              }

              v1452 = v1606 + *(v1599 + 52);
              v1453 = *(v1452 + 208);
              v1454 = *(v1452 + 176);
              v1638[12] = *(v1452 + 192);
              v1638[13] = v1453;
              v1455 = *(v1452 + 208);
              v1638[14] = *(v1452 + 224);
              v1456 = *(v1452 + 144);
              v1457 = *(v1452 + 112);
              v1638[8] = *(v1452 + 128);
              v1638[9] = v1456;
              v1458 = *(v1452 + 144);
              v1459 = *(v1452 + 176);
              v1638[10] = *(v1452 + 160);
              v1638[11] = v1459;
              v1460 = *(v1452 + 80);
              v1461 = *(v1452 + 48);
              v1638[4] = *(v1452 + 64);
              v1638[5] = v1460;
              v1462 = *(v1452 + 80);
              v1463 = *(v1452 + 112);
              v1638[6] = *(v1452 + 96);
              v1638[7] = v1463;
              v1464 = *(v1452 + 16);
              v1638[0] = *v1452;
              v1638[1] = v1464;
              v1465 = *(v1452 + 48);
              v1467 = *v1452;
              v1466 = *(v1452 + 16);
              v1638[2] = *(v1452 + 32);
              v1638[3] = v1465;
              v1639[12] = v1638[12];
              v1639[13] = v1455;
              v1639[14] = *(v1452 + 224);
              v1639[8] = v1638[8];
              v1639[9] = v1458;
              v1639[10] = v1638[10];
              v1639[11] = v1454;
              v1639[4] = v1638[4];
              v1639[5] = v1462;
              v1639[6] = v1638[6];
              v1639[7] = v1457;
              v1639[0] = v1467;
              v1639[1] = v1466;
              *&v1638[15] = *(v1452 + 240);
              *&v1639[15] = *(v1452 + 240);
              v1639[2] = v1638[2];
              v1639[3] = v1461;
              enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1639);
              LODWORD(v1592) = enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1;
              if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
              {
                v1596 = 0;
              }

              else
              {
                v1637[12] = v1639[12];
                v1637[13] = v1639[13];
                v1637[14] = v1639[14];
                *&v1637[15] = *&v1639[15];
                v1637[8] = v1639[8];
                v1637[9] = v1639[9];
                v1637[10] = v1639[10];
                v1637[11] = v1639[11];
                v1637[4] = v1639[4];
                v1637[5] = v1639[5];
                v1637[6] = v1639[6];
                v1637[7] = v1639[7];
                v1637[0] = v1639[0];
                v1637[1] = v1639[1];
                v1637[2] = v1639[2];
                v1637[3] = v1639[3];
                v1596 = *v1613 + 600;
                v1469 = *v1596;
                v1640[12] = v1638[12];
                v1640[13] = v1638[13];
                v1640[14] = v1638[14];
                *&v1640[15] = *&v1638[15];
                v1640[8] = v1638[8];
                v1640[9] = v1638[9];
                v1640[10] = v1638[10];
                v1640[11] = v1638[11];
                v1640[4] = v1638[4];
                v1640[5] = v1638[5];
                v1640[6] = v1638[6];
                v1640[7] = v1638[7];
                v1640[0] = v1638[0];
                v1640[1] = v1638[1];
                v1640[2] = v1638[2];
                v1640[3] = v1638[3];
                v1470 = sub_1CEFF7474(v1640, v1641);
                LODWORD(v1596) = v1469(v1470);
                sub_1CF7E6950(v1641);
                v1471 = sub_1CF06DA5C(v1641[0], 1);
                v1472 = sub_1CF06D930();
                v1596 = sub_1CF68004C(v1596, v1471, v1472 & 1);
                *&v1641[192] = v1637[12];
                *&v1641[208] = v1637[13];
                *&v1641[224] = v1637[14];
                *&v1641[240] = *&v1637[15];
                *&v1641[128] = v1637[8];
                *&v1641[144] = v1637[9];
                *&v1641[160] = v1637[10];
                *&v1641[176] = v1637[11];
                *&v1641[64] = v1637[4];
                *&v1641[80] = v1637[5];
                *&v1641[96] = v1637[6];
                *&v1641[112] = v1637[7];
                *v1641 = v1637[0];
                *&v1641[16] = v1637[1];
                *&v1641[32] = v1637[2];
                *&v1641[48] = v1637[3];
                sub_1CF07574C(v1641);
              }

              if (sub_1CF06D930())
              {
                v1473 = *(v1452 + 208);
                v1637[12] = *(v1452 + 192);
                v1637[13] = v1473;
                v1637[14] = *(v1452 + 224);
                *&v1637[15] = *(v1452 + 240);
                v1474 = *(v1452 + 144);
                v1637[8] = *(v1452 + 128);
                v1637[9] = v1474;
                v1475 = *(v1452 + 176);
                v1637[10] = *(v1452 + 160);
                v1637[11] = v1475;
                v1476 = *(v1452 + 80);
                v1637[4] = *(v1452 + 64);
                v1637[5] = v1476;
                v1477 = *(v1452 + 112);
                v1637[6] = *(v1452 + 96);
                v1637[7] = v1477;
                v1478 = *(v1452 + 16);
                v1637[0] = *v1452;
                v1637[1] = v1478;
                v1479 = *(v1452 + 48);
                v1637[2] = *(v1452 + 32);
                v1637[3] = v1479;
                if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1637) != 1 && !*&v1637[13])
                {
                  v1519 = v1617;
                  (*(*v1608 + 264))(v1636, v1598, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                  v1617 = v1519;
                  if (v1519)
                  {
                    v1614, v1520, v1521, v1522, v1523, v1524, v1525, v1526;
                    sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
LABEL_723:
                    sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                    sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                    memcpy(v1640, v1651, 0x208uLL);
                    sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                    memcpy(v1641, v1652, sizeof(v1641));
                    v1365 = v1641;
LABEL_683:
                    sub_1CEFCCC44(v1365, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                    v616 = v1607;
                    goto LABEL_546;
                  }

                  v1640[12] = v1636[12];
                  v1640[13] = v1636[13];
                  v1640[14] = v1636[14];
                  v1640[8] = v1636[8];
                  v1640[9] = v1636[9];
                  v1640[10] = v1636[10];
                  v1640[11] = v1636[11];
                  v1640[4] = v1636[4];
                  v1640[5] = v1636[5];
                  v1640[6] = v1636[6];
                  v1640[7] = v1636[7];
                  v1640[0] = v1636[0];
                  v1640[1] = v1636[1];
                  v1640[2] = v1636[2];
                  v1640[3] = v1636[3];
                  *&v1641[192] = v1636[12];
                  *&v1641[208] = v1636[13];
                  *&v1641[224] = v1636[14];
                  *&v1641[128] = v1636[8];
                  *&v1641[144] = v1636[9];
                  *&v1641[160] = v1636[10];
                  *&v1641[176] = v1636[11];
                  *&v1641[64] = v1636[4];
                  *&v1641[80] = v1636[5];
                  *&v1641[96] = v1636[6];
                  *&v1641[112] = v1636[7];
                  *v1641 = v1636[0];
                  *&v1641[16] = v1636[1];
                  *&v1640[15] = *&v1636[15];
                  *&v1641[240] = *&v1636[15];
                  *&v1641[32] = v1636[2];
                  *&v1641[48] = v1636[3];
                  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1641) != 1)
                  {
                    v1634[12] = *&v1641[192];
                    v1634[13] = *&v1641[208];
                    v1634[14] = *&v1641[224];
                    *&v1634[15] = *&v1641[240];
                    v1634[8] = *&v1641[128];
                    v1634[9] = *&v1641[144];
                    v1634[10] = *&v1641[160];
                    v1634[11] = *&v1641[176];
                    v1634[4] = *&v1641[64];
                    v1634[5] = *&v1641[80];
                    v1634[6] = *&v1641[96];
                    v1634[7] = *&v1641[112];
                    v1634[0] = *v1641;
                    v1634[1] = *&v1641[16];
                    v1634[2] = *&v1641[32];
                    v1634[3] = *&v1641[48];
                    v1562 = (*(*v1613 + 600))();
                    sub_1CF7E6950(&v1626);
                    v1563 = sub_1CF06DA5C(v1626, 1);
                    v1564 = sub_1CF06D930();
                    v1596 = sub_1CF68004C(v1562, v1563, v1564 & 1);
                    sub_1CEFCCC44(v1640, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                    LODWORD(v1592) = 0;
                  }
                }
              }

              (v1610)();
              if ((sub_1CF06D930() & 1) == 0)
              {
                v1515 = v1592;
                if (v1596 != 2)
                {
                  v1515 = 1;
                }

                if ((v1515 & 1) == 0)
                {
LABEL_764:
                  sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
                  sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                  goto LABEL_765;
                }

LABEL_757:
                (v1610)();
                v1516 = sub_1CF06D930();
                if (v1516)
                {
                  v1517 = v1592;
                  if (v1596 != 1)
                  {
                    v1517 = 1;
                  }

                  if ((v1517 & 1) == 0 && v1407 != 4)
                  {
                    sub_1CF19BFD0(v1516);
                    v1527 = swift_allocObject();
                    v1528 = v2043;
                    *(v1527 + 48) = v2042;
                    *(v1527 + 64) = v1528;
                    v1529 = v2045;
                    *(v1527 + 80) = v2044;
                    *(v1527 + 96) = v1529;
                    v1530 = v2041;
                    *(v1527 + 16) = v2040;
                    *(v1527 + 32) = v1530;
                    *(v1527 + 112) = v1406;
                    v1531 = v2035;
                    *(v1527 + 113) = v2034;
                    *(v1527 + 129) = v1531;
                    v1532 = v2037;
                    *(v1527 + 145) = v2036;
                    v1533 = v2038;
                    v1534 = v2039[0];
                    *(v1527 + 208) = *(v2039 + 15);
                    *(v1527 + 193) = v1534;
                    *(v1527 + 177) = v1533;
                    *(v1527 + 161) = v1532;
                    *(v1527 + 224) = v1600;
                    *(v1527 + 232) = v1605;
                    *(v1527 + 233) = v2033[0];
                    *(v1527 + 248) = *(v2033 + 15);
                    *(v1527 + 256) = v1407;
                    *(v1527 + 448) = *(v2032 + 15);
                    v1535 = v1527;
                    v1536 = v2032[0];
                    *(v1527 + 417) = v2031;
                    *(v1527 + 433) = v1536;
                    v1537 = v2030;
                    *(v1527 + 385) = v2029;
                    *(v1527 + 401) = v1537;
                    v1538 = v2028;
                    *(v1527 + 353) = v2027;
                    *(v1527 + 369) = v1538;
                    v1539 = v2026;
                    *(v1527 + 321) = v2025;
                    *(v1527 + 337) = v1539;
                    v1540 = v2024;
                    *(v1527 + 289) = v2023;
                    *(v1527 + 305) = v1540;
                    v1541 = v2022;
                    *(v1527 + 257) = v2021;
                    *(v1527 + 273) = v1541;
                    *(v1527 + 464) = v1604;
                    v1542 = v2018;
                    *(v1527 + 472) = v2017;
                    *(v1527 + 488) = v1542;
                    *(v1527 + 504) = v2019;
                    *(v1527 + 520) = v2020;
                    *(v1527 + 528) = v1597;
                    memcpy(v1641, v1642, sizeof(v1641));
                    sub_1CEFCCBDC(v1641, v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
                    v1543 = sub_1CF9E6108();
                    v1544 = sub_1CF9E7288();
                    v1545 = swift_allocObject();
                    *(v1545 + 16) = 32;
                    v1546 = swift_allocObject();
                    *(v1546 + 16) = 8;
                    v1547 = swift_allocObject();
                    *(v1547 + 16) = sub_1CF4858F0;
                    *(v1547 + 24) = v1535;
                    v1548 = swift_allocObject();
                    *(v1548 + 16) = sub_1CF485960;
                    *(v1548 + 24) = v1547;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                    swift_allocObject();
                    v1549 = sub_1CF06DA80();
                    *v1550 = sub_1CF485A70;
                    v1550[1] = v1545;
                    v1550[2] = sub_1CF485A70;
                    v1550[3] = v1546;
                    v1550[4] = sub_1CF485884;
                    v1550[5] = v1548;

                    v1549, v1551, v1552, v1553, v1554, v1555, v1556, v1557;
                    if (os_log_type_enabled(v1543, v1544))
                    {
                      v1558 = sub_1CF1B5D40(12);
                      v1559 = swift_slowAlloc();
                      *&v1636[0] = 0;
                      *&v1634[0] = v1559;
                      v1560 = v1558;
                      *v1558 = 258;
                      *&v1637[0] = v1558 + 2;
                      *&v1640[0] = sub_1CF485A70;
                      *(&v1640[0] + 1) = v1545;
                      v1561 = v1617;
                      sub_1CF1B5D64(v1640, v1637, v1636, v1634);
                      v151 = v1561;
                      if (!v1561)
                      {

                        *&v1640[0] = sub_1CF485A70;
                        *(&v1640[0] + 1) = v1546;
                        sub_1CF1B5D64(v1640, v1637, v1636, v1634);

                        *&v1640[0] = sub_1CF485884;
                        *(&v1640[0] + 1) = v1548;
                        sub_1CF1B5D64(v1640, v1637, v1636, v1634);
                        v1617 = 0;

                        _os_log_impl(&dword_1CEFC7000, v1543, v1544, "marking item for evictOnREmoteUpdate %s", v1560, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v1559);
                        MEMORY[0x1D386CDC0](v1559, -1, -1);
                        sub_1CF1B5D48();
                      }

                      goto LABEL_783;
                    }

                    (*(v1603 + 8))(v1570, v1602);
                    goto LABEL_778;
                  }
                }

LABEL_762:
                sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
                v1447 = &unk_1EC4BFD80;
                v1448 = &unk_1CFA0A2A0;
                v1449 = v1642;
LABEL_763:
                sub_1CEFCCC44(v1449, v1447, v1448);
                goto LABEL_707;
              }

              if (v1592)
              {
                goto LABEL_757;
              }

              if (v1596 == 2)
              {
                goto LABEL_764;
              }

              if (v1596 != 1003 && v1596 != 502)
              {
                goto LABEL_757;
              }

              (v1610)();
              v1480 = sub_1CF06D930();
              if (v1480)
              {
                sub_1CF19BFD0(v1480);
                v1481 = swift_allocObject();
                v1482 = v2043;
                *(v1481 + 48) = v2042;
                *(v1481 + 64) = v1482;
                v1483 = v2045;
                *(v1481 + 80) = v2044;
                *(v1481 + 96) = v1483;
                v1484 = v2041;
                *(v1481 + 16) = v2040;
                *(v1481 + 32) = v1484;
                *(v1481 + 112) = v1406;
                v1485 = v2035;
                *(v1481 + 113) = v2034;
                *(v1481 + 129) = v1485;
                v1486 = v2037;
                *(v1481 + 145) = v2036;
                v1487 = v2038;
                v1488 = v2039[0];
                *(v1481 + 208) = *(v2039 + 15);
                *(v1481 + 193) = v1488;
                *(v1481 + 177) = v1487;
                *(v1481 + 161) = v1486;
                *(v1481 + 224) = v1600;
                *(v1481 + 232) = v1605;
                *(v1481 + 233) = v2033[0];
                *(v1481 + 248) = *(v2033 + 15);
                *(v1481 + 256) = v1407;
                *(v1481 + 448) = *(v2032 + 15);
                v1489 = v1481;
                v1490 = v2032[0];
                *(v1481 + 417) = v2031;
                *(v1481 + 433) = v1490;
                v1491 = v2030;
                *(v1481 + 385) = v2029;
                *(v1481 + 401) = v1491;
                v1492 = v2028;
                *(v1481 + 353) = v2027;
                *(v1481 + 369) = v1492;
                v1493 = v2026;
                *(v1481 + 321) = v2025;
                *(v1481 + 337) = v1493;
                v1494 = v2024;
                *(v1481 + 289) = v2023;
                *(v1481 + 305) = v1494;
                v1495 = v2022;
                *(v1481 + 257) = v2021;
                *(v1481 + 273) = v1495;
                *(v1481 + 464) = v1604;
                v1496 = v2018;
                *(v1481 + 472) = v2017;
                *(v1481 + 488) = v1496;
                *(v1481 + 504) = v2019;
                *(v1481 + 520) = v2020;
                *(v1481 + 528) = v1597;
                memcpy(v1641, v1642, sizeof(v1641));
                sub_1CEFCCBDC(v1641, v1640, &unk_1EC4BFC90, &unk_1CFA053E0);
                v914 = sub_1CF9E6108();
                v1497 = sub_1CF9E7288();
                v1498 = swift_allocObject();
                *(v1498 + 16) = 32;
                v1499 = swift_allocObject();
                *(v1499 + 16) = 8;
                v1500 = swift_allocObject();
                *(v1500 + 16) = sub_1CF4858F0;
                *(v1500 + 24) = v1489;
                v1501 = swift_allocObject();
                *(v1501 + 16) = sub_1CF485960;
                *(v1501 + 24) = v1500;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                swift_allocObject();
                v1502 = sub_1CF06DA80();
                *v1503 = sub_1CF485A70;
                v1503[1] = v1498;
                v1503[2] = sub_1CF485A70;
                v1503[3] = v1499;
                v1503[4] = sub_1CF485884;
                v1503[5] = v1501;

                v1502, v1504, v1505, v1506, v1507, v1508, v1509, v1510;
                if (os_log_type_enabled(v914, v1497))
                {
                  v1511 = sub_1CF1B5D40(12);
                  v1512 = swift_slowAlloc();
                  *&v1636[0] = 0;
                  *&v1634[0] = v1512;
                  v1513 = v1511;
                  *v1511 = 258;
                  *&v1637[0] = v1511 + 2;
                  *&v1640[0] = sub_1CF485A70;
                  *(&v1640[0] + 1) = v1498;
                  v1514 = v1617;
                  sub_1CF1B5D64(v1640, v1637, v1636, v1634);
                  v151 = v1514;
                  if (!v1514)
                  {

                    *&v1640[0] = sub_1CF485A70;
                    *(&v1640[0] + 1) = v1499;
                    sub_1CF1B5D64(v1640, v1637, v1636, v1634);

                    *&v1640[0] = sub_1CF485884;
                    *(&v1640[0] + 1) = v1501;
                    sub_1CF1B5D64(v1640, v1637, v1636, v1634);
                    v1617 = 0;

                    _os_log_impl(&dword_1CEFC7000, v914, v1497, "marking item for speculative evictOnREmoteUpdate %s", v1513, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v1512);
                    MEMORY[0x1D386CDC0](v1512, -1, -1);
                    sub_1CF1B5D48();
                  }

                  goto LABEL_783;
                }

LABEL_777:

                (*(v1603 + 8))(v1569, v1602);
LABEL_778:
                sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
                sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v1518 = 3;
LABEL_779:
                *v1641 = *v1607;
                *&v1641[8] = 0;
                v1641[16] = 5;
                v1641[17] = v1518;
                *&v1641[24] = v1594;
                *&v1641[32] = v1595;
                v1641[114] = 12;
                v2013 = *&v1641[64];
                v2014 = *&v1641[80];
                *v2015 = *&v1641[96];
                *&v2015[15] = *&v1641[111];
                v2011 = *&v1641[32];
                v2012 = *&v1641[48];
                v2009 = *v1641;
                v2010 = *&v1641[16];
                v2016 = 9;
                v1565 = *v1641;
                sub_1CF903278();
                v1413 = &unk_1EC4BFD60;
                v1414 = &qword_1CFA05468;
                v1412 = v1641;
                goto LABEL_713;
              }

              sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              if (sub_1CF06EE7C())
              {
                sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
LABEL_765:
                v1518 = 1;
                goto LABEL_779;
              }

              sub_1CEFD5278(v1571, type metadata accessor for ItemMetadata);
              if (sub_1CF06EE7C())
              {
                goto LABEL_765;
              }
            }
          }
        }
      }
    }

LABEL_707:
    v1408 = v1613[5];
    if (!sub_1CF902E34())
    {
      goto LABEL_717;
    }

    sub_1CF7E6950(v1643);
    if (!FileItemKind.canConflict.getter())
    {
      goto LABEL_717;
    }

    v1409 = (*(*v1613 + 160))();
    if (!sub_1CF0BA664(v1409 & 1, 0) || (sub_1CF06D930() & 1) == 0)
    {
      goto LABEL_717;
    }

    memcpy(v1642, v1651, sizeof(v1642));
    v1637[10] = *&v1651[160];
    v1637[11] = *&v1651[176];
    v1637[12] = *&v1651[192];
    v1637[6] = *&v1651[96];
    v1637[7] = *&v1651[112];
    v1637[8] = *&v1651[128];
    v1637[9] = *&v1651[144];
    v1637[2] = *&v1651[32];
    v1637[3] = *&v1651[48];
    v1637[4] = *&v1651[64];
    v1637[5] = *&v1651[80];
    v1637[0] = *v1651;
    v1637[1] = *&v1651[16];
    v1410 = *&v1642[208];
    v1411 = v1642[216];
    memcpy(v1638, &v1651[217], 0x12FuLL);
    v1643[10] = *&v1651[160];
    v1643[11] = *&v1651[176];
    v1643[12] = *&v1651[192];
    v1643[6] = *&v1651[96];
    v1643[7] = *&v1651[112];
    v1643[8] = *&v1651[128];
    v1643[9] = *&v1651[144];
    v1643[2] = *&v1651[32];
    v1643[3] = *&v1651[48];
    v1643[4] = *&v1651[64];
    v1643[5] = *&v1651[80];
    v1643[0] = *v1651;
    v1643[1] = *&v1651[16];
    memcpy(&v1643[13] + 9, &v1651[217], 0x12FuLL);
    *&v1643[13] = *&v1642[208];
    BYTE8(v1643[13]) = v1642[216];
    if (sub_1CF08B99C(v1643) == 1)
    {
      *&v1641[160] = v1637[10];
      *&v1641[176] = v1637[11];
      *&v1641[192] = v1637[12];
      *&v1641[96] = v1637[6];
      *&v1641[112] = v1637[7];
      *&v1641[128] = v1637[8];
      *&v1641[144] = v1637[9];
      *&v1641[32] = v1637[2];
      *&v1641[48] = v1637[3];
      *&v1641[64] = v1637[4];
      *&v1641[80] = v1637[5];
      *v1641 = v1637[0];
      *&v1641[16] = v1637[1];
      *&v1641[208] = v1410;
      v1641[216] = v1411;
      memcpy(&v1641[217], v1638, 0x12FuLL);
      sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v1412 = v1641;
      v1413 = &unk_1EC4BFD80;
      v1414 = &unk_1CFA0A2A0;
    }

    else
    {
      *&v1641[160] = v1637[10];
      *&v1641[176] = v1637[11];
      *&v1641[192] = v1637[12];
      *&v1641[96] = v1637[6];
      *&v1641[112] = v1637[7];
      *&v1641[128] = v1637[8];
      *&v1641[144] = v1637[9];
      *&v1641[32] = v1637[2];
      *&v1641[48] = v1637[3];
      *&v1641[64] = v1637[4];
      *&v1641[80] = v1637[5];
      *v1641 = v1637[0];
      *&v1641[16] = v1637[1];
      *&v1641[208] = v1410;
      v1641[216] = v1411;
      memcpy(&v1641[217], v1638, 0x12FuLL);
      sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v1411 == 255)
      {
        goto LABEL_717;
      }

      *&v1636[0] = v1410;
      BYTE8(v1636[0]) = v1411;
      v1415 = v1617;
      (*(*v1408 + 240))(v1636, 1, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1617 = v1415;
      if (v1415)
      {
        v1614, v1416, v1417, v1418, v1419, v1420, v1421, v1422;
        sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1639, v1651, 0x208uLL);
        sub_1CEFCCC44(v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1640, v1652, 0x208uLL);
        sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v616 = v1607;
        goto LABEL_523;
      }

      if ((*(v1577 + 48))(v1575, 1, v1581) == 1)
      {
        v1413 = &qword_1EC4C1B40;
        v1414 = &unk_1CF9FCB70;
        v1412 = v1575;
      }

      else
      {
        sub_1CEFE55D0(v1575, v1573, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((sub_1CF7E6990() & 1) == 0)
        {
          v1443 = v1573[*(v1581 + 48) + v1593[21]];
          if (v1443 != 2 && v1443 != 3)
          {
            v1444 = *v1607;
            v1445 = sub_1CF93DAB0();
            sub_1CF436488(v1444, v1445, v1446, 0x8000000);
            sub_1CF903274();
          }
        }

        v1413 = &unk_1EC4BE360;
        v1414 = &qword_1CF9FE650;
        v1412 = v1573;
      }
    }

LABEL_713:
    sub_1CEFCCC44(v1412, v1413, v1414);
LABEL_717:
    v912 = v1614;
    v970 = v1613;
    v89 = v1607;
    v914 = v1638;
LABEL_421:
    v972 = v1653;
    if (sub_1CF06D930() & 1) != 0 && (sub_1CF7E69A4())
    {
      v1605 = v972;
      *&v1638[0] = *v89;
      WORD4(v1638[0]) = 0;
      LOBYTE(v1638[1]) = 0;
      BYTE2(v1638[7]) = 10;
      v1999 = v1638[4];
      v2000 = v1638[5];
      *v2001 = v1638[6];
      v1997 = v1638[2];
      v1998 = v1638[3];
      *&v2001[15] = *(&v1638[6] + 15);
      v1995 = v1638[0];
      v1996 = v1638[1];
      v2002 = 9;
      v973 = *&v1638[0];
      sub_1CF903278();
      sub_1CEFCCC44(v1638, &unk_1EC4BFD60, &qword_1CFA05468);
      memcpy(v1642, v1651, sizeof(v1642));
      v1637[4] = *&v1651[64];
      v1637[5] = *&v1651[80];
      LOBYTE(v1637[6]) = v1651[96];
      v1637[0] = *v1651;
      v1637[1] = *&v1651[16];
      v1637[2] = *&v1651[32];
      v1637[3] = *&v1651[48];
      v974 = v1642[97];
      memcpy(v1639, &v1651[98], 0x1A6uLL);
      v1643[4] = *&v1651[64];
      v1643[5] = *&v1651[80];
      LOBYTE(v1643[6]) = v1651[96];
      v1643[0] = *v1651;
      v1643[1] = *&v1651[16];
      v1643[2] = *&v1651[32];
      v1643[3] = *&v1651[48];
      memcpy(&v1643[6] + 2, &v1651[98], 0x1A6uLL);
      BYTE1(v1643[6]) = v1642[97];
      if (sub_1CF08B99C(v1643) == 1)
      {
        *&v1641[64] = v1637[4];
        *&v1641[80] = v1637[5];
        v1641[96] = v1637[6];
        *v1641 = v1637[0];
        *&v1641[16] = v1637[1];
        *&v1641[32] = v1637[2];
        *&v1641[48] = v1637[3];
        v1641[97] = v974;
        memcpy(&v1641[98], v1639, 0x1A6uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      }

      else
      {
        *&v1641[64] = v1637[4];
        *&v1641[80] = v1637[5];
        v1641[96] = v1637[6];
        *v1641 = v1637[0];
        *&v1641[16] = v1637[1];
        *&v1641[32] = v1637[2];
        *&v1641[48] = v1637[3];
        v1641[97] = v974;
        memcpy(&v1641[98], v1639, 0x1A6uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
        if (!v974 && v1612 != 3)
        {
          *&v1640[0] = *v89;
          WORD4(v1640[0]) = 0;
          *&v1640[1] = 1;
          *(&v1640[2] + 8) = 0u;
          *(&v1640[1] + 8) = 0u;
          *(&v1640[3] + 8) = 0u;
          *(&v1640[4] + 2) = 0u;
          BYTE2(v1640[5]) = 15;
          *&v1992[63] = v1640[2];
          *&v1992[79] = v1640[3];
          v1993[0] = v1640[4];
          *(v1993 + 15) = *(&v1640[4] + 15);
          *&v1992[31] = v1640[0];
          *&v1992[47] = v1640[1];
          v1994 = 10;
          v1003 = *&v1640[0];
          sub_1CF903278();
          sub_1CEFCCC44(v1640, &qword_1EC4BFD48, &qword_1CFA05460);
          v970 = v1613;
          v912 = v1614;
          v972 = v1605;
          goto LABEL_444;
        }
      }

      v970 = v1613;
      v912 = v1614;
      v972 = v1605;
    }

LABEL_444:
    if ((sub_1CF06D930() & 1) != 0 && (sub_1CF7E69A4() & 1) == 0)
    {
      memcpy(v1642, v1651, sizeof(v1642));
      memcpy(v1643, v1651, 0x208uLL);
      if (sub_1CF08B99C(v1643) != 1)
      {
        memcpy(v1982, v1642, 0x158uLL);
        v998 = v1642[344];
        v1991 = *&v1642[473];
        *v1992 = *&v1642[489];
        *&v1992[15] = *&v1642[504];
        v1987 = *&v1642[409];
        v1988 = *&v1642[425];
        v1989 = *&v1642[441];
        v1990 = *&v1642[457];
        v1983 = *&v1642[345];
        v1984 = *&v1642[361];
        v1985 = *&v1642[377];
        v1986 = *&v1642[393];
        v1982[344] = v1642[344];
        if (sub_1CF75C2AC())
        {
          if (sub_1CF959940(v998))
          {
            v999 = v1607;
            *&v1640[0] = *v1607;
            v1000 = *&v1640[0];
            WORD4(v1640[0]) = 0;
            LOBYTE(v1640[1]) = 2;
            BYTE2(v1640[7]) = 10;
            v1978 = v1640[4];
            v1979 = v1640[5];
            *v1980 = v1640[6];
            v1976 = v1640[2];
            v1977 = v1640[3];
            *&v1980[15] = *(&v1640[6] + 15);
            v1974 = v1640[0];
            v1975 = v1640[1];
            v1981 = 9;
            sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v1001 = v1000;
            v89 = v999;
            sub_1CF903278();
            sub_1CEFCCC44(v1640, &unk_1EC4BFD60, &qword_1CFA05468);
            sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v970 = v1613;
            v912 = v1614;
            goto LABEL_459;
          }

          v970 = v1613;
          v912 = v1614;
        }

        else
        {
          v970 = v1613;
        }

        v89 = v1607;
      }
    }

LABEL_459:
    (v1610)();
    if ((sub_1CF06D930() & 1) != 0 || (sub_1CF06D930() & 1) == 0 || (sub_1CF7E6950(v1643), !sub_1CF06DA5C(v1643[0], 0)) || (memcpy(v1642, v1651, sizeof(v1642)), memcpy(v1643, v1651, 0x208uLL), sub_1CF08B99C(v1643) == 1))
    {
      v1004 = v1599;
      goto LABEL_464;
    }

    v1967 = *&v1642[160];
    v1968 = *&v1642[176];
    v1969 = *&v1642[192];
    v1963 = *&v1642[96];
    v1964 = *&v1642[112];
    v1965 = *&v1642[128];
    v1966 = *&v1642[144];
    v1959 = *&v1642[32];
    v1960 = *&v1642[48];
    v1961 = *&v1642[64];
    v1962 = *&v1642[80];
    v1957 = *v1642;
    v1958 = *&v1642[16];
    v1017 = *&v1642[208];
    v1018 = v1642[216];
    memcpy(v1972, &v1642[217], sizeof(v1972));
    v1970 = *&v1642[208];
    v1971 = v1642[216];
    v1973 = *&v1642[512];
    if (sub_1CF75C2AC())
    {
      v1019 = v1617;
      if (v1018 == 255 || (*&v1638[0] = v1017, BYTE8(v1638[0]) = v1018, v1020 = v1607 + *(v1599 + 52), v1021 = *(v1020 + 208), v1639[12] = *(v1020 + 192), v1639[13] = v1021, v1639[14] = *(v1020 + 224), *&v1639[15] = *(v1020 + 240), v1022 = *(v1020 + 144), v1639[8] = *(v1020 + 128), v1639[9] = v1022, v1023 = *(v1020 + 176), v1639[10] = *(v1020 + 160), v1639[11] = v1023, v1024 = *(v1020 + 80), v1639[4] = *(v1020 + 64), v1639[5] = v1024, v1025 = *(v1020 + 112), v1639[6] = *(v1020 + 96), v1639[7] = v1025, v1026 = *(v1020 + 16), v1639[0] = *v1020, v1639[1] = v1026, v1027 = *(v1020 + 48), v1639[2] = *(v1020 + 32), v1639[3] = v1027, get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1639) == 1) || !sub_1CF9526EC(*(v1020 + 208), 501) || (sub_1CF06D930() & 1) != 0)
      {
LABEL_480:
        v970 = v1613;
        v1004 = v1599;
        v89 = v1607;
      }

      else
      {
        v1210 = *(*v1613[5] + 240);
        sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v1210(v1638, 1, &v1654, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v1019)
        {
          v1614, v1211, v1212, v1213, v1214, v1215, v1216, v1217;
          sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          memcpy(v1640, v1651, 0x208uLL);
          sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          memcpy(v1641, v1652, sizeof(v1641));
          sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v227 = v1607;
          goto LABEL_374;
        }

        v1369 = (*(v1577 + 48))(v1576, 1, v1581);
        v1617 = 0;
        if (v1369 == 1)
        {
          sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1576, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_480;
        }

        sub_1CEFE55D0(v1576, v1574, &unk_1EC4BE360, &qword_1CF9FE650);
        if (sub_1CF7E6990())
        {
          sub_1CEFCCC44(v1574, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_480;
        }

        v89 = v1607;
        v1432 = *v1607;
        v1433 = *v1607;
        v1434 = sub_1CF656C80(0);
        v1435 = sub_1CEFF8C8C();
        v1434, v1436, v1437, v1438, v1439, v1440, v1441, v1442;
        v1953 = *&v1641[32];
        v1954 = *&v1641[48];
        *v1955 = *&v1641[64];
        v1951 = *v1641;
        LOBYTE(v1637[0]) = 0;
        v1945 = v1432;
        v1946 = 0;
        v1947 = v1640[0];
        v1948 = WORD2(v1640[0]);
        v1949 = 1;
        v1950 = v1435;
        *&v1955[15] = *&v1641[79];
        v1952 = *&v1641[16];
        v1956 = 14;
        sub_1CF903278();

        sub_1CEFCCC44(v1574, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v972 = v1653;
        v970 = v1613;
        v1004 = v1599;
      }

      v912 = v1614;
      v914 = v1638;
      goto LABEL_464;
    }

    v970 = v1613;
    v1004 = v1599;
    v89 = v1607;
LABEL_464:
    if (sub_1CF06D930())
    {
      v1005 = v89 + *(v1004 + 48);
      v1006 = v1593[16];
      if (*(v1005 + v1006) == 1)
      {
        *&v1636[0] = *v89;
        WORD4(v1636[0]) = 0;
        LOBYTE(v1636[1]) = 1;
        BYTE2(v1636[5]) = 5;
        v1941 = v1636[2];
        v1942 = v1636[3];
        v1943[0] = v1636[4];
        *(v1943 + 15) = *(&v1636[4] + 15);
        v1939 = v1636[0];
        v1940 = v1636[1];
        v1944 = 10;
        v1007 = *&v1636[0];
        v1008 = v1615;
        sub_1CF903278();
        sub_1CEFCCC44(v1636, &qword_1EC4BFD48, &qword_1CFA05460);
        if (*(v1005 + v1006) == 1)
        {
          v1009 = *v89;
          v1010 = sub_1CF93DAB0();
          sub_1CF3F423C(v1009, v1010, v1011, 0x2000000);
          sub_1CF903274();

          memcpy(v1642, v1651, sizeof(v1642));
          v1637[4] = *&v1651[64];
          v1637[5] = *&v1651[80];
          LOBYTE(v1637[6]) = v1651[96];
          v1637[0] = *v1651;
          v1637[1] = *&v1651[16];
          v1637[2] = *&v1651[32];
          v1637[3] = *&v1651[48];
          v1012 = v1642[97];
          memcpy(v1638, &v1651[98], 0x1A6uLL);
          v1643[4] = *&v1651[64];
          v1643[5] = *&v1651[80];
          LOBYTE(v1643[6]) = v1651[96];
          v1643[0] = *v1651;
          v1643[1] = *&v1651[16];
          v1643[2] = *&v1651[32];
          v1643[3] = *&v1651[48];
          memcpy(&v1643[6] + 2, &v1651[98], 0x1A6uLL);
          BYTE1(v1643[6]) = v1642[97];
          if (sub_1CF08B99C(v1643) == 1)
          {
            *&v1641[64] = v1637[4];
            *&v1641[80] = v1637[5];
            v1641[96] = v1637[6];
            *v1641 = v1637[0];
            *&v1641[16] = v1637[1];
            *&v1641[32] = v1637[2];
            *&v1641[48] = v1637[3];
            v1641[97] = v1012;
            memcpy(&v1641[98], v1638, 0x1A6uLL);
            sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v1013 = &unk_1EC4BFD80;
            v1014 = &unk_1CFA0A2A0;
            goto LABEL_490;
          }

          *&v1641[64] = v1637[4];
          *&v1641[80] = v1637[5];
          v1641[96] = v1637[6];
          *v1641 = v1637[0];
          *&v1641[16] = v1637[1];
          *&v1641[32] = v1637[2];
          *&v1641[48] = v1637[3];
          v1641[97] = v1012;
          memcpy(&v1641[98], v1638, 0x1A6uLL);
          sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
          if (v1012 == 6)
          {
            goto LABEL_491;
          }

          v1028 = *v89;
          memcpy(v1930, v1651, 0x208uLL);
          v1029 = v1617;
          sub_1CF4366B8(v1028, v1930, v1594, v1595, v1587, v1613, v1008, v1609, v1616);
          if (v1029)
          {
            v1614, v1030, v1031, v1032, v1033, v1034, v1035, v1036;
            sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            memcpy(v1639, v1651, 0x208uLL);
            sub_1CEFCCC44(v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            memcpy(v1640, v1652, 0x208uLL);
            v886 = v1640;
            goto LABEL_485;
          }

          v1617 = 0;
          v1008 = v1615;
          v970 = v1613;
          v89 = v1607;
LABEL_492:
          v912 = v1614;
          v914 = v1638;
          goto LABEL_493;
        }

        sub_1CF7E6950(v1643);
        if (sub_1CF06DA5C(v1643[0], 1))
        {
          v1015 = *v89;
          sub_1CF3F7A48(*v89, v1594, v1595, 0x4000000);
          v1016 = v1015;
          sub_1CF903274();
        }

        memcpy(v1642, v1651, sizeof(v1642));
        memcpy(v1643, v1651, 0x208uLL);
        if (sub_1CF08B99C(v1643) != 1)
        {
          memcpy(v1938, v1642, sizeof(v1938));
          if (sub_1CF75C2AC())
          {
            v1008 = v1615;
            goto LABEL_491;
          }

          v1037 = *v89;
          LOBYTE(v1640[0]) = 0;
          v1038 = v1037;
          v1039 = *sub_1CF06EDF4();
          v1930[65] = v1037;
          v1931 = 0;
          v1040 = v1640[0];
          v1932 = v1640[0];
          v1933 = v1039;
          v1041 = v1594;
          v1042 = v1595;
          v1934 = v1594;
          v1935 = v1595;
          v1936 = 0;
          v1937 = 10;
          v1008 = v1615;
          sub_1CF903278();
          *v1641 = v1037;
          v1641[8] = 0;
          v1641[9] = v1040;
          v89 = v1607;
          *&v1641[16] = v1039;
          *&v1641[24] = v1041;
          *&v1641[32] = v1042;
          v1641[82] = 0;
          v1641[115] = 10;
          v1013 = &qword_1EC4BE730;
          v1014 = &unk_1CFA05490;
LABEL_490:
          sub_1CEFCCC44(v1641, v1013, v1014);
LABEL_491:
          v970 = v1613;
          goto LABEL_492;
        }

        v970 = v1613;
      }

      else
      {
        v1008 = v1615;
        v970 = v1613;
      }
    }

    else
    {
      v1008 = v1615;
    }

LABEL_493:
    if (sub_1CF06D930())
    {
      memcpy(v1642, v1651, sizeof(v1642));
      v1638[12] = *&v1651[192];
      v1638[13] = *&v1651[208];
      v1638[14] = *&v1651[224];
      v1638[8] = *&v1651[128];
      v1638[9] = *&v1651[144];
      v1638[10] = *&v1651[160];
      v1638[11] = *&v1651[176];
      v1638[4] = *&v1651[64];
      v1638[5] = *&v1651[80];
      v1638[6] = *&v1651[96];
      v1638[7] = *&v1651[112];
      v1638[0] = *v1651;
      v1638[1] = *&v1651[16];
      v1638[2] = *&v1651[32];
      v1638[3] = *&v1651[48];
      v1043 = v1642[240];
      memcpy(v1639, &v1651[241], 0x117uLL);
      v1643[12] = *&v1651[192];
      v1643[13] = *&v1651[208];
      v1643[14] = *&v1651[224];
      v1643[8] = *&v1651[128];
      v1643[9] = *&v1651[144];
      v1643[10] = *&v1651[160];
      v1643[11] = *&v1651[176];
      v1643[4] = *&v1651[64];
      v1643[5] = *&v1651[80];
      v1643[6] = *&v1651[96];
      v1643[7] = *&v1651[112];
      v1643[0] = *v1651;
      v1643[1] = *&v1651[16];
      v1643[2] = *&v1651[32];
      v1643[3] = *&v1651[48];
      memcpy(&v1643[15] + 1, &v1651[241], 0x117uLL);
      LOBYTE(v1643[15]) = v1642[240];
      if (sub_1CF08B99C(v1643) == 1)
      {
        *&v1641[192] = v1638[12];
        *&v1641[208] = v1638[13];
        *&v1641[224] = v1638[14];
        *&v1641[128] = v1638[8];
        *&v1641[144] = v1638[9];
        *&v1641[160] = v1638[10];
        *&v1641[176] = v1638[11];
        *&v1641[64] = v1638[4];
        *&v1641[80] = v1638[5];
        *&v1641[96] = v1638[6];
        *&v1641[112] = v1638[7];
        *v1641 = v1638[0];
        *&v1641[16] = v1638[1];
        v1641[240] = v1043;
        *&v1641[32] = v1638[2];
        *&v1641[48] = v1638[3];
        memcpy(&v1641[241], v1639, 0x117uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v970 = v1613;
        v912 = v1614;
        v914 = v1638;
      }

      else
      {
        *&v1641[192] = v1638[12];
        *&v1641[208] = v1638[13];
        *&v1641[224] = v1638[14];
        *&v1641[128] = v1638[8];
        *&v1641[144] = v1638[9];
        *&v1641[160] = v1638[10];
        *&v1641[176] = v1638[11];
        *&v1641[64] = v1638[4];
        *&v1641[80] = v1638[5];
        *&v1641[96] = v1638[6];
        *&v1641[112] = v1638[7];
        *v1641 = v1638[0];
        *&v1641[16] = v1638[1];
        *&v1641[32] = v1638[2];
        *&v1641[48] = v1638[3];
        v1641[240] = v1043;
        memcpy(&v1641[241], v1639, 0x117uLL);
        sub_1CEFCCBDC(v1642, v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1641, &unk_1EC4BFC90, &unk_1CFA053E0);
        v914 = v1638;
        if (v1043 == 2)
        {
          v970 = v1613;
          v912 = v1614;
          if ((v1611 & 1) == 0)
          {
            *&v1640[0] = *v89;
            WORD4(v1640[0]) = 0;
            LOWORD(v1640[1]) = 1282;
            *(&v1640[1] + 1) = v1594;
            *&v1640[2] = v1595;
            BYTE2(v1640[7]) = 12;
            v1926 = v1640[4];
            v1927 = v1640[5];
            *v1928 = v1640[6];
            *&v1928[15] = *(&v1640[6] + 15);
            v1924 = v1640[2];
            v1925 = v1640[3];
            v1922 = v1640[0];
            v1923 = v1640[1];
            v1929 = 9;
            v1143 = *&v1640[0];
            sub_1CF903278();
            sub_1CEFCCC44(v1640, &unk_1EC4BFD60, &qword_1CFA05468);
          }
        }

        else
        {
          v970 = v1613;
          v912 = v1614;
        }
      }
    }

    if (!v1612)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
      swift_allocObject();
      sub_1CF06DA80();
      *v1044 = xmmword_1CF9FA450;
      nullsub_1();
      sub_1CEFF5464(v1045, v1643, v1046, v1047, v1048, v1049, v1050, v1051, v1052);
      if (!sub_1CF95EDE0(*&v1643[0], v972))
      {
        v1053 = v1617;
        sub_1CF41A5CC(v89, v970, v1008, v1609, v1616);
        v1617 = v1053;
        if (v1053)
        {
          v912, v1054, v1055, v1056, v1057, v1058, v1059, v1060;
          goto LABEL_521;
        }
      }
    }
  }

  v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070;
  v1071, v1072, v1073, v1074, v1075, v1076, v1077, v1078;
LABEL_508:
  if ((sub_1CF06D930() & 1) == 0)
  {
    goto LABEL_515;
  }

  v1101 = v1612 == 2;
  if (v1612 >= 2)
  {
    goto LABEL_516;
  }

  memcpy(v1642, v1651, sizeof(v1642));
  memcpy(v1643, v1651, 0x208uLL);
  v1102 = sub_1CF08B99C(v1643);
  v89 = v1607;
  if (v1102 != 1)
  {
    memcpy(v1916, v1642, sizeof(v1916));
    if (sub_1CF75C2AC())
    {
      v1103 = *v89;
      LOBYTE(v1638[0]) = 0;
      v1104 = *(v89 + 32);
      v1639[0] = *(v89 + 16);
      v1639[1] = v1104;
      v1105 = *(v89 + 64);
      v1639[2] = *(v89 + 48);
      v1639[3] = v1105;
      *(v1640 + 6) = v1639[0];
      *(&v1640[1] + 6) = v1104;
      *(&v1640[2] + 6) = v1639[2];
      *(&v1640[3] + 6) = v1105;
      v1906 = v1103;
      v1907 = 0;
      v1908 = 0;
      v1909 = v1640[0];
      *&v1912[14] = *(&v1105 + 1);
      *v1912 = v1640[3];
      v1911 = v1640[2];
      v1910 = v1640[1];
      v1913 = 1;
      v1914 = 8;
      v1915 = 10;
      v1106 = v1103;
      sub_1CEFCCBDC(v1639, v1641, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CF903278();
      *&v1641[26] = v1640[1];
      *&v1641[42] = v1640[2];
      *&v1641[58] = v1640[3];
      *v1641 = v1103;
      v1641[8] = 0;
      v1641[9] = 0;
      *&v1641[72] = *(&v1640[3] + 14);
      *&v1641[10] = v1640[0];
      *&v1641[80] = 1;
      v1641[82] = 8;
      v1641[115] = 10;
      v89 = v1607;
      sub_1CEFCCC44(v1641, &qword_1EC4BE730, &unk_1CFA05490);
    }
  }

  if (sub_1CF902E34())
  {
    v1107 = v2328;
    v1109 = v1594;
    v1108 = v1595;
    sub_1CF3F7A48(v2328, v1594, v1595, 2048);
    v1110 = v1107;
    sub_1CF903274();

    sub_1CF436240(v1110, v1109, v1108, 2048, &qword_1EC4BDF70, &qword_1CF9FB468);
    v1111 = v1110;
    sub_1CF903274();
  }

LABEL_533:
  v912, v1094, v1095, v1096, v1097, v1098, v1099, v1100;
  memcpy(v1642, v1651, sizeof(v1642));
  memcpy(v1643, v1651, 0x208uLL);
  if (sub_1CF08B99C(v1643) == 1 || (v1879 = *&v1642[192], v1878[10] = *&v1642[160], v1878[11] = *&v1642[176], v1878[6] = *&v1642[96], v1878[7] = *&v1642[112], v1878[8] = *&v1642[128], v1878[9] = *&v1642[144], v1878[2] = *&v1642[32], v1878[3] = *&v1642[48], v1878[4] = *&v1642[64], v1878[5] = *&v1642[80], v1878[0] = *v1642, v1878[1] = *&v1642[16], memcpy(v1881, &v1642[208], sizeof(v1881)), v1880 = *&v1642[200], v1125 = sub_1CF06D930(), v1126 = *(v89 + *(v1599 + 48) + v1593[24]), (v1125 & 1) == v1126))
  {
    v1132 = v1616;
  }

  else
  {
    if (v1126)
    {
      *&v1638[0] = *v89;
      v1127 = *&v1638[0];
      WORD4(v1638[0]) = 0;
      memset(&v1638[1], 0, 24);
      *(&v1638[2] + 1) = 0xB000000000000000;
      memset(&v1638[3], 0, 34);
      BYTE2(v1638[5]) = 13;
      *(v1899 + 15) = *(&v1638[4] + 15);
      v1898 = 0u;
      v1899[0] = 0u;
      v1896 = 0uLL;
      v1897 = v1638[2];
      v1895 = v1638[0];
      v1900 = 10;
      sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v1128 = v1127;
      sub_1CF903278();
      sub_1CEFCCC44(v1638, &qword_1EC4BFD48, &qword_1CFA05460);
      *&v1639[0] = *v89;
      WORD4(v1639[0]) = 0;
      memset(&v1639[1], 0, 24);
      *(&v1639[2] + 1) = 0xB000000000000000;
      memset(&v1639[3], 0, 34);
      BYTE2(v1639[7]) = 13;
      *v1893 = v1639[6];
      v1891 = 0u;
      v1892 = v1639[5];
      *&v1893[15] = *(&v1639[6] + 15);
      v1889 = v1639[2];
      v1890 = 0u;
      v1887 = v1639[0];
      v1888 = 0uLL;
      v1894 = 9;
      v1129 = *&v1639[0];
      sub_1CF903278();
      sub_1CEFCCC44(v1639, &unk_1EC4BFD60, &qword_1CFA05468);
      v1130 = *v89;
      LOBYTE(v1637[0]) = 0;
      LOBYTE(v1636[0]) = 0;
      v1882 = v1130;
      v1883 = 0;
      v1884 = 4;
      v1885 = 0;
      v1886 = 11;
      v1131 = v1130;
    }

    else
    {
      v1138 = *v89;
      LOBYTE(v1639[0]) = 0;
      LOBYTE(v1638[0]) = 1;
      v1901 = v1138;
      v1902 = 0;
      v1903 = 4;
      v1904 = 1;
      v1905 = 11;
      sub_1CEFCCBDC(v1642, v1641, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v1131 = v1138;
    }

    sub_1CF903278();

    v1132 = v1616;
    v1139 = v1617;
    sub_1CF482574(v1878, v1613, v1609, v1616);
    v1617 = v1139;
    if (v1139)
    {
      sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      memcpy(v1640, v1651, 0x208uLL);
      sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      memcpy(v1641, v1652, sizeof(v1641));
      v587 = v1641;
      goto LABEL_545;
    }

    sub_1CEFCCC44(v1642, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  }

  memcpy(v1640, v1651, 0x208uLL);
  memcpy(v1641, v1651, sizeof(v1641));
  if (sub_1CF08B99C(v1641) != 1)
  {
    v1871[12] = v1640[12];
    v1871[10] = v1640[10];
    v1871[11] = v1640[11];
    v1871[6] = v1640[6];
    v1871[7] = v1640[7];
    v1871[8] = v1640[8];
    v1871[9] = v1640[9];
    v1871[2] = v1640[2];
    v1871[3] = v1640[3];
    v1871[4] = v1640[4];
    v1871[5] = v1640[5];
    v1871[0] = v1640[0];
    v1871[1] = v1640[1];
    memcpy(v1872, &v1640[13], sizeof(v1872));
    v1133 = sub_1CF06D930();
    v1134 = *(v89 + *(v1599 + 48) + v1593[25]);
    if ((v1133 & 1) != v1134)
    {
      v1135 = *v89;
      LOBYTE(v1637[0]) = 0;
      LOBYTE(v1636[0]) = v1134 ^ 1;
      v1873 = v1135;
      v1874 = 0;
      v1875 = 8;
      v1876 = v1134 ^ 1;
      v1877 = 11;
      sub_1CEFCCBDC(v1640, v1639, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v1136 = v1135;
      sub_1CF903278();

      v1137 = v1617;
      sub_1CF482574(v1871, v1613, v1609, v1132);
      v1617 = v1137;
      if (v1137)
      {
        sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v1606, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1638, v1651, 0x208uLL);
        sub_1CEFCCC44(v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1639, v1652, 0x208uLL);
        v587 = v1639;
        goto LABEL_545;
      }

      sub_1CEFCCC44(v1640, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  v1140 = v1606;
  memcpy(v1638, v1651, 0x208uLL);
  memcpy(v1639, v1651, 0x208uLL);
  if (sub_1CF08B99C(v1639) != 1)
  {
    v1868 = v1638[10];
    v1869 = v1638[11];
    v1864 = v1638[6];
    v1865 = v1638[7];
    v1866 = v1638[8];
    v1867 = v1638[9];
    v1860 = v1638[2];
    v1861 = v1638[3];
    v1862 = v1638[4];
    v1863 = v1638[5];
    v1858 = v1638[0];
    v1859 = v1638[1];
    v1870 = v1638[12];
    if (sub_1CF06D930())
    {
      sub_1CEFCCBDC(v1638, v1637, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      if (sub_1CF75C2CC(qword_1EDEABDE8 | 0x10, 0) || !sub_1CF95EDE0(0x200000010918, v1653))
      {
        if (sub_1CF06D930())
        {
          v1141 = *v89;
          LOBYTE(v1637[0]) = 0;
          LOBYTE(v1636[0]) = 0;
          v1848 = v1141;
          v1849 = 0;
          v1850 = 16;
          v1851 = 0;
          v1852 = 11;
          v1142 = v1141;
          goto LABEL_561;
        }

        if (sub_1CF06D930())
        {
          v1144 = *v89;
          LOBYTE(v1637[0]) = 0;
          LOBYTE(v1636[0]) = 0;
          v1853 = v1144;
          v1854 = 0;
          v1855 = 32;
          v1856 = 0;
          v1857 = 11;
          v1142 = v1144;
LABEL_561:
          sub_1CF903278();
        }
      }

      sub_1CEFCCC44(v1638, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }
  }

  if (sub_1CF902E34())
  {
    memcpy(v1636, v1651, 0x208uLL);
    memcpy(v1635, v1651, sizeof(v1635));
    v1145 = *&v1636[32];
    memcpy(v1637, v1651, 0x200uLL);
    *&v1637[32] = *&v1636[32];
    v1101 = sub_1CF08B99C(v1637) == 1;
    v1146 = v1617;
    if (v1101)
    {
      memcpy(v1634, v1635, 0x200uLL);
      *&v1634[32] = v1145;
      sub_1CEFCCBDC(v1636, v1633, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1634, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      v1147 = 2;
    }

    else
    {
      memcpy(v1634, v1635, 0x200uLL);
      *&v1634[32] = v1145;
      sub_1CEFCCBDC(v1636, v1633, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCC44(v1634, &unk_1EC4BFC90, &unk_1CFA053E0);
      v1147 = sub_1CF06D930() & 1;
    }

    v1148 = sub_1CF06EE7C();
    if (v1147 == 2 || ((v1148 ^ v1147) & 1) != 0)
    {
      v1149 = sub_1CF905310();
      if (sub_1CF06EE7C())
      {
        v1150 = *v89;
        v1151 = *v89;
        v1152 = sub_1CF656C80(0);
        v1153 = sub_1CEFF8C8C();
        v1152, v1154, v1155, v1156, v1157, v1158, v1159, v1160;
        LOBYTE(v1635[0]) = 0;
        v1824 = v1150;
        v1825 = 0;
        v1826 = v1633[0];
        v1827 = WORD2(v1633[0]);
        v1828 = 2;
        v1829 = v1153;
        v1832 = v1634[2];
        v1833 = v1634[3];
        *v1834 = v1634[4];
        *&v1834[15] = *(&v1634[4] + 15);
        v1830 = v1634[0];
        v1831 = v1634[1];
        v1835 = 14;
      }

      else
      {
        v1161 = *v89;
        v1151 = *v89;
        v1162 = sub_1CF656C80(0);
        v1163 = sub_1CEFF8C8C();
        v1162, v1164, v1165, v1166, v1167, v1168, v1169, v1170;
        LOBYTE(v1635[0]) = 0;
        v1836 = v1161;
        v1146 = v1617;
        v1837 = 0;
        v1838 = v1633[0];
        v1839 = WORD2(v1633[0]);
        v1840 = v1163;
        v1841 = 2;
        v1844 = v1634[2];
        v1845 = v1634[3];
        *v1846 = v1634[4];
        *&v1846[15] = *(&v1634[4] + 15);
        v1842 = v1634[0];
        v1843 = v1634[1];
        v1847 = 14;
      }

      sub_1CF903278();

      v1171 = sub_1CF4D3BC0();
      sub_1CF7F6A3C(v1149, v1171, v1609, v1616);
      v1140 = v1606;
      if (v1146)
      {

        sub_1CEFCCC44(v1140, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        memcpy(v1633, v1651, 0x208uLL);
        sub_1CEFCCC44(v1633, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v1634, v1652, 0x208uLL);
        v224 = v1634;
        v225 = &unk_1EC4BFD80;
        v226 = &unk_1CFA0A2A0;
        goto LABEL_27;
      }
    }

    else
    {
      v1140 = v1606;
    }
  }

  sub_1CEFCCC44(v1140, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  memcpy(v1636, v1651, 0x208uLL);
  sub_1CEFCCC44(v1636, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  memcpy(v1637, v1652, 0x208uLL);
  sub_1CEFCCC44(v1637, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v201 = v89;
LABEL_22:
  sub_1CEFCCC44(v201, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v178 = 0;
  return v178 & 1;
}