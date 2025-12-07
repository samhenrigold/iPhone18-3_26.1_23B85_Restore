uint64_t MLS.GroupState.unwrapMessage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v72[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E748, &qword_26C011550);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v76 = &v72[-v10];
  v78 = type metadata accessor for MLS.ValidatedContent(0);
  v77 = *(v78 - 8);
  v11 = MEMORY[0x28223BE20](v78);
  v13 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v72[-v14];
  v16 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v72[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v72[-v23];
  sub_26BE6FEC8(a1, &v72[-v23], type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v44 = v24[1];
    v90 = *v24;
    v45 = v24[2];
    v46 = v24[3];
    v91 = v44;
    v92 = v45;
    v47 = v24[4];
    v93 = v46;
    v94 = v47;
    if (sub_26BE02DEC(v90, *(&v90 + 1), *(v2 + 1), *(v2 + 2)))
    {
      if (v91 == *(v2 + 3))
      {
        v87 = v92;
        v88 = v93;
        v89 = v94;
        v85 = v90;
        v86 = v91;
        v80 = *v2;
        v48 = type metadata accessor for MLS.GroupState(0);
        v49 = v2 + *(v48 + 44);
        v50 = *(type metadata accessor for MLS.KeySchedule(0) + 28);
        v51 = *(v48 + 48);
        v74 = v2;
        v52 = v95;
        MLS.PrivateMessage.unprotect(ciphersuiteID:keys:senderDataSecret:)(&v80, v2 + v51, &v49[v50], v9);
        if (v52)
        {
          return sub_26BE6FFE0(&v90);
        }

        if ((*(v77 + 48))(v9, 1, v78) != 1)
        {
          sub_26BE6FFE0(&v90);
          sub_26BE70034(v9, v13, type metadata accessor for MLS.ValidatedContent);
          v70 = v75;
          sub_26BE70034(v13, v75, type metadata accessor for MLS.ValidatedContent);
          goto LABEL_38;
        }

        sub_26BE2E258(v9, &qword_28045E748, &qword_26C011550);
        sub_26BE01654();
        swift_allocError();
        v54 = 5;
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        v54 = 4;
      }
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      v54 = 3;
    }

    *v53 = v54;
    v53[112] = 6;
    swift_willThrow();
    return sub_26BE6FFE0(&v90);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_26BE01654();
    swift_allocError();
    v56 = v55;
    sub_26BE6FEC8(a1, v22, type metadata accessor for MLS.MLSMessage.Inner);
    v57 = swift_getEnumCaseMultiPayload();
    if (v57 > 2)
    {
      if (v57 == 3)
      {
        sub_26BE69184(v22, type metadata accessor for MLS.MLSMessage.Inner);
        v58 = 1;
      }

      else if (v57 == 4)
      {
        sub_26BE69184(v22, type metadata accessor for MLS.MLSMessage.Inner);
        v58 = 2;
      }

      else
      {
        v58 = *v22;
        sub_26BE00258(*(v22 + 1), *(v22 + 2));
      }
    }

    else if (v57)
    {
      if (v57 == 1)
      {
        sub_26BE69184(v22, type metadata accessor for MLS.MLSMessage.Inner);
        v58 = 4;
      }

      else
      {
        sub_26BE69184(v22, type metadata accessor for MLS.MLSMessage.Inner);
        v58 = 5;
      }
    }

    else
    {
      sub_26BE69184(v22, type metadata accessor for MLS.MLSMessage.Inner);
      v58 = 3;
    }

    *v56 = v58;
    *(v56 + 2) = 0;
    *(v56 + 4) = 1;
    *(v56 + 112) = 17;
    swift_willThrow();
    v61 = type metadata accessor for MLS.MLSMessage.Inner;
    v62 = v24;
    return sub_26BE69184(v62, v61);
  }

  sub_26BE70034(v24, v18, type metadata accessor for MLS.PublicMessage);
  if (!sub_26BE02DEC(*v18, v18[1], *(v2 + 1), *(v2 + 2)))
  {
    sub_26BE01654();
    swift_allocError();
    *v59 = 0;
LABEL_23:
    v59[112] = 6;
    swift_willThrow();
    v61 = type metadata accessor for MLS.PublicMessage;
    v62 = v18;
    return sub_26BE69184(v62, v61);
  }

  v26 = v18[2];
  if (v26 != *(v2 + 3))
  {
    sub_26BE01654();
    swift_allocError();
    v60 = 1;
LABEL_22:
    *v59 = v60;
    goto LABEL_23;
  }

  v84 = *v2;
  v27 = type metadata accessor for MLS.GroupState(0);
  v28 = v2 + v27[11];
  v29 = *(type metadata accessor for MLS.KeySchedule(0) + 52);
  v30 = sub_26C009C8C();
  v31 = *(v30 - 8);
  v32 = &v28[v29];
  v33 = v79;
  (*(v31 + 16))(v79, v32, v30);
  (*(v31 + 56))(v33, 0, 1, v30);
  v73 = *v2;
  v34 = *(v2 + 1);
  v35 = *(v2 + 2);
  v36 = v2[16];
  v37 = *(v2 + 5);
  v38 = *(v2 + 12);
  v74 = v2;
  v39 = *(v2 + 7);
  v80 = v36;
  v81 = v37;
  v82 = v38;
  v83 = v39;
  v40 = v95;
  v41 = sub_26BE592D0();
  if (v40)
  {
    sub_26BE2E258(v33, &qword_28045E708, &unk_26C011370);
    return sub_26BE69184(v18, type metadata accessor for MLS.PublicMessage);
  }

  v63 = v27[10];
  v64 = v74 + v27[9];
  v65 = *(v64 + 1);
  v66 = *(v64 + 2);
  v67 = *(v74 + v63);
  LOWORD(v90) = v73;
  *(&v90 + 1) = v34;
  *&v91 = v35;
  *(&v91 + 1) = v26;
  *&v92 = v41;
  *(&v92 + 1) = v42;
  *&v93 = v65;
  *(&v93 + 1) = v66;
  *&v94 = v67;
  sub_26BE00608(v41, v42);
  sub_26BE00608(v34, v35);
  sub_26BE00608(v65, v66);
  v68 = v79;

  v69 = v76;
  MLS.PublicMessage.unprotect(ciphersuiteID:membershipKey:context:)(&v84, v68, &v90, v76);
  v87 = v92;
  v88 = v93;
  *&v89 = v94;
  v85 = v90;
  v86 = v91;
  sub_26BE2E258(&v85, &qword_28045E750, &unk_26C011558);
  sub_26BE2E258(v68, &qword_28045E708, &unk_26C011370);
  if ((*(v77 + 48))(v69, 1, v78) == 1)
  {
    sub_26BE2E258(v69, &qword_28045E748, &qword_26C011550);
    sub_26BE01654();
    swift_allocError();
    v60 = 2;
    goto LABEL_22;
  }

  sub_26BE69184(v18, type metadata accessor for MLS.PublicMessage);
  sub_26BE70034(v69, v15, type metadata accessor for MLS.ValidatedContent);
  v70 = v75;
  sub_26BE70034(v15, v75, type metadata accessor for MLS.ValidatedContent);
LABEL_38:
  if (!*(v70 + 36))
  {
    return sub_26BEC6D24(v70);
  }

  if (*(v70 + 36) == 1 || !*(v70 + 32))
  {
    sub_26BE01654();
    swift_allocError();
    *v71 = 0xD000000000000024;
    *(v71 + 8) = 0x800000026C02B260;
    *(v71 + 112) = 2;
    swift_willThrow();
    v61 = type metadata accessor for MLS.ValidatedContent;
    v62 = v70;
    return sub_26BE69184(v62, v61);
  }

  return sub_26BEC7148(v70);
}

void sub_26BE5EF48(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v259 = a4;
  v255 = a1;
  v256 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v5 - 8);
  v243 = &v234 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v7 - 8);
  v244 = &v234 - v8;
  v9 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v241 = *(v9 - 8);
  v242 = v9;
  MEMORY[0x28223BE20](v9);
  v239 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C009C8C();
  v252 = *(v11 - 8);
  v253 = v11;
  MEMORY[0x28223BE20](v11);
  v251 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v247 = &v234 - v17;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  *(&v258 + 1) = *(v260 - 8);
  v18 = MEMORY[0x28223BE20](v260);
  v20 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v234 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v234 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  *&v258 = &v234 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v249 = &v234 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v250 = &v234 - v32;
  MEMORY[0x28223BE20](v31);
  v248 = &v234 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v245 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v254 = &v234 - v37;
  v261 = type metadata accessor for MLS.GroupState(0);
  v38 = MEMORY[0x28223BE20](v261);
  v40 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v246 = &v234 - v42;
  MEMORY[0x28223BE20](v41);
  v257 = (&v234 - v43);
  v240 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v240);
  v45 = &v234 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE6FEC8(a3, v45, type metadata accessor for MLS.AuthenticatedContent);
  v46 = *(v45 + 8);
  v47 = v45[36];
  v48 = *(v45 + 200);
  v355 = *(v45 + 184);
  v356 = v48;
  v357[0] = *(v45 + 216);
  *(v357 + 9) = *(v45 + 225);
  v49 = *(v45 + 136);
  v351 = *(v45 + 120);
  v352 = v49;
  v50 = *(v45 + 168);
  v353 = *(v45 + 152);
  v354 = v50;
  v51 = *(v45 + 72);
  v347 = *(v45 + 56);
  v348 = v51;
  v52 = *(v45 + 104);
  v349 = *(v45 + 88);
  v350 = v52;
  v53 = *(v45 + 200);
  v358[8] = *(v45 + 184);
  v358[9] = v53;
  v359[0] = *(v45 + 216);
  *(v359 + 9) = *(v45 + 225);
  v54 = *(v45 + 136);
  v358[4] = *(v45 + 120);
  v358[5] = v54;
  v55 = *(v45 + 168);
  v358[6] = *(v45 + 152);
  v358[7] = v55;
  v56 = *(v45 + 72);
  v358[0] = *(v45 + 56);
  v358[1] = v56;
  v57 = *(v45 + 104);
  v358[2] = *(v45 + 88);
  v358[3] = v57;
  if (sub_26BE6917C(v358) <= 1)
  {
    nullsub_1();
    sub_26BE01654();
    swift_allocError();
    v59 = 5;
LABEL_3:
    *v58 = v59;
    v58[112] = 0;
LABEL_4:
    swift_willThrow();
LABEL_5:
    v60 = type metadata accessor for MLS.AuthenticatedContent;
    v61 = v45;
LABEL_6:
    sub_26BE69184(v61, v60);
    return;
  }

  nullsub_1();
  if (v47)
  {
    if (v47 == 1 || !v46)
    {
      sub_26BE01654();
      swift_allocError();
      *v63 = 10;
      v63[112] = 6;
      goto LABEL_4;
    }

    v46 = 0;
    LODWORD(v40) = 1;
    v62 = v262;
  }

  else
  {
    v62 = v262;
    if (v46 == *(v360 + v261[13]))
    {
      sub_26BE2E1F0(v259, v16, &qword_28045E8D8, &qword_26C012580);
      v64 = v260;
      if ((*(*(&v258 + 1) + 48))(v16, 1, v260) == 1)
      {
        sub_26BE2E258(v16, &qword_28045E8D8, &qword_26C012580);
        sub_26BE01654();
        swift_allocError();
        v59 = 16;
        goto LABEL_3;
      }

      sub_26BE33F30(v16, v26, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE2E1F0(v26, v23, &qword_28045E8E0, &unk_26C0204E0);
      v72 = &v23[*(v64 + 48)];
      v73 = *(v72 + 9);
      v333 = *(v72 + 8);
      v334 = v73;
      v335[0] = *(v72 + 10);
      v74 = *(v72 + 5);
      v329 = *(v72 + 4);
      v330 = v74;
      v75 = *(v72 + 6);
      v332 = *(v72 + 7);
      v331 = v75;
      v76 = *(v72 + 1);
      v325 = *v72;
      v326 = v76;
      v77 = *(v72 + 2);
      v328 = *(v72 + 3);
      v327 = v77;
      sub_26BE6FEC8(v23, v20, type metadata accessor for MLS.GroupState);
      v78 = &v20[*(v64 + 48)];
      v79 = v334;
      *(v78 + 8) = v333;
      *(v78 + 9) = v79;
      *(v78 + 10) = v335[0];
      v80 = v330;
      *(v78 + 4) = v329;
      *(v78 + 5) = v80;
      v81 = v332;
      *(v78 + 6) = v331;
      *(v78 + 7) = v81;
      v82 = v326;
      *v78 = v325;
      *(v78 + 1) = v82;
      v83 = v328;
      *(v78 + 2) = v327;
      *(v78 + 3) = v83;
      v84 = v258;
      v85 = v262;
      sub_26BE2E1F0(v20, v258, &qword_28045E8E0, &unk_26C0204E0);
      v86 = (v84 + *(v64 + 48));
      v87 = v86[9];
      v344 = v86[8];
      v345 = v87;
      v346[0] = v86[10];
      v88 = v86[5];
      v340 = v86[4];
      v341 = v88;
      v89 = v86[6];
      v343 = v86[7];
      v342 = v89;
      v90 = v86[1];
      v336 = *v86;
      v337 = v90;
      v91 = v86[2];
      v339 = v86[3];
      v338 = v91;
      sub_26BE70034(v84, v40, type metadata accessor for MLS.GroupState);
      v92 = v360;
      if (sub_26BE02DEC(*(v40 + 8), *(v40 + 16), *(v360 + 8), *(v360 + 16)))
      {
        v93 = v92[3];
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (*(v40 + 24) == v95)
        {
          sub_26BE2E258(v20, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE2E258(v26, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE70034(v40, v255, type metadata accessor for MLS.GroupState);
          v96 = v345;
          v97 = v256;
          v256[8] = v344;
          v97[9] = v96;
          v97[10] = v346[0];
          v98 = v341;
          v97[4] = v340;
          v97[5] = v98;
          v99 = v343;
          v97[6] = v342;
          v97[7] = v99;
          v100 = v337;
          *v97 = v336;
          v97[1] = v100;
          v101 = v339;
          v97[2] = v338;
          v97[3] = v101;
          sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
          v60 = type metadata accessor for MLS.GroupState;
          v61 = v23;
          goto LABEL_6;
        }
      }

      sub_26BE01654();
      swift_allocError();
      *v102 = 17;
      v102[112] = 0;
      swift_willThrow();
      sub_26BE6FF8C(&v336);
      sub_26BE2E258(v20, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE2E258(v26, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE69184(v40, type metadata accessor for MLS.GroupState);
      sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
      v61 = v23;
      v60 = type metadata accessor for MLS.GroupState;
      goto LABEL_6;
    }

    LODWORD(v40) = 0;
  }

  v333 = v355;
  v334 = v356;
  v335[0] = v357[0];
  *(v335 + 9) = *(v357 + 9);
  v329 = v351;
  v330 = v352;
  v331 = v353;
  v332 = v354;
  v325 = v347;
  v326 = v348;
  v327 = v349;
  v328 = v350;
  nullsub_1();
  v66 = v65;
  v67 = *v65;
  LODWORD(v263) = v46;
  BYTE4(v263) = v40;
  v339 = v350;
  v338 = v349;
  v337 = v348;
  v336 = v347;
  v343 = v354;
  v342 = v353;
  v341 = v352;
  v340 = v351;
  *(v346 + 9) = *(v357 + 9);
  v346[0] = v357[0];
  v345 = v356;
  v344 = v355;
  nullsub_1();
  sub_26BE71588(v68, &v274);
  v69 = v360;
  v70 = MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(v67, &v263);
  if (v62)
  {
    sub_26BE6FD84(&v347);
    goto LABEL_5;
  }

  if (v40)
  {
    v71 = v70;
    MLS.GroupState.validateForExternalCommit(proposals:)(v70, &v263);
  }

  else
  {
    LODWORD(v274) = v46;
    v71 = v70;
    MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(v70, &v274, &v263);
  }

  v103 = v263;
  if (_s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(v71))
  {
    v274 = *(v66 + 1);
    v104 = *(v66 + 3);
    v105 = *(v66 + 5);
    v106 = *(v66 + 9);
    v277 = *(v66 + 7);
    v278 = v106;
    v275 = v104;
    v276 = v105;
    v107 = *(v66 + 11);
    v108 = *(v66 + 13);
    v109 = *(v66 + 17);
    v281 = *(v66 + 15);
    v282 = v109;
    v279 = v107;
    v280 = v108;
    if (sub_26BE59C80(&v274) == 1)
    {

      sub_26BE01654();
      swift_allocError();
      *v110 = 0;
      v110[112] = 7;
      swift_willThrow();
LABEL_29:
      sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE6FD84(&v347);
      return;
    }
  }

  LODWORD(v262) = v103;
  v238 = v46;
  v111 = v257;
  sub_26BE6FEC8(v69, v257, type metadata accessor for MLS.GroupState);
  v112 = v261[15];

  *(v111 + v112) = MEMORY[0x277D84F90];
  v236 = sub_26BE5BDA4(v71);
  v237 = v71;
  v114 = *(v113 + 16);

  if (v114)
  {

    sub_26BE01654();
    swift_allocError();
    *v115 = 0xD000000000000029;
    *(v115 + 8) = 0x800000026C02B3B0;
    *(v115 + 112) = 2;
    swift_willThrow();
    sub_26BE6FD84(&v347);
LABEL_36:
    sub_26BE69184(v257, type metadata accessor for MLS.GroupState);
    goto LABEL_5;
  }

  v235 = v66;
  v117 = v252 + 56;
  v116 = *(v252 + 56);
  v118 = v254;
  v119 = v116(v254, 1, 1, v253);
  if ((v262 - 2) < 2)
  {

    sub_26BE01654();
    swift_allocError();
    *v120 = 0xD000000000000036;
    *(v120 + 8) = 0x800000026C02B370;
    v121 = 2;
LABEL_34:
    *(v120 + 112) = v121;
    swift_willThrow();
    sub_26BE6FD84(&v347);
    v122 = v118;
LABEL_35:
    sub_26BE2E258(v122, &qword_28045E708, &unk_26C011370);
    goto LABEL_36;
  }

  if (v262)
  {
    MEMORY[0x28223BE20](v119);
    *(&v234 - 2) = v69;
    if (sub_26BEC23AC(sub_26BE71960, (&v234 - 4), v237))
    {

      v124 = v247;
      sub_26BE2E1F0(v259, v247, &qword_28045E8D8, &qword_26C012580);
      v125 = v260;
      if ((*(*(&v258 + 1) + 48))(v124, 1, v260) == 1)
      {
        sub_26BE2E258(v124, &qword_28045E8D8, &qword_26C012580);
        sub_26BE01654();
        swift_allocError();
        *v126 = 0u;
        *(v126 + 16) = 0u;
        *(v126 + 32) = 0u;
        *(v126 + 48) = 0u;
        *(v126 + 64) = 0u;
        *(v126 + 80) = 0u;
        *(v126 + 96) = 0u;
        v127 = 21;
LABEL_67:
        *(v126 + 112) = v127;
        swift_willThrow();
        sub_26BE6FD84(&v347);
        goto LABEL_68;
      }

      v135 = v124;
      v136 = v248;
      sub_26BE33F30(v135, v248, &qword_28045E8E0, &unk_26C0204E0);
      v137 = v136;
      v138 = v250;
      sub_26BE2E1F0(v137, v250, &qword_28045E8E0, &unk_26C0204E0);
      v139 = (v138 + *(v125 + 48));
      v140 = v139[9];
      v271 = v139[8];
      v272 = v140;
      v273 = v139[10];
      v141 = v139[5];
      v267 = v139[4];
      v268 = v141;
      v142 = v139[7];
      v269 = v139[6];
      v270 = v142;
      v143 = v139[1];
      v263 = *v139;
      v264 = v143;
      v144 = v139[3];
      v265 = v139[2];
      v266 = v144;
      v145 = v138;
      v146 = v249;
      sub_26BE6FEC8(v145, v249, type metadata accessor for MLS.GroupState);
      v147 = (v146 + *(v125 + 48));
      v148 = v272;
      v147[8] = v271;
      v147[9] = v148;
      v147[10] = v273;
      v149 = v268;
      v147[4] = v267;
      v147[5] = v149;
      v150 = v270;
      v147[6] = v269;
      v147[7] = v150;
      v151 = v264;
      *v147 = v263;
      v147[1] = v151;
      v152 = v266;
      v147[2] = v265;
      v147[3] = v152;
      v153 = v146;
      v154 = v258;
      sub_26BE2E1F0(v153, v258, &qword_28045E8E0, &unk_26C0204E0);
      v155 = (v154 + *(v125 + 48));
      v156 = v155[9];
      v282 = v155[8];
      v283 = v156;
      v284 = v155[10];
      v157 = v155[5];
      v278 = v155[4];
      v279 = v157;
      v158 = v155[7];
      v280 = v155[6];
      v281 = v158;
      v159 = v155[1];
      v274 = *v155;
      v275 = v159;
      v160 = v155[3];
      v276 = v155[2];
      v277 = v160;
      v161 = v154;
      v162 = v246;
      sub_26BE70034(v161, v246, type metadata accessor for MLS.GroupState);
      if (!sub_26BE02DEC(*(v162 + 8), *(v162 + 16), v69[1], v69[2]))
      {
        goto LABEL_60;
      }

      v163 = v69[3];
      v94 = __OFADD__(v163, 1);
      v164 = v163 + 1;
      if (v94)
      {
        goto LABEL_108;
      }

      v162 = v246;
      if (*(v246 + 24) == v164)
      {
        sub_26BE6FD84(&v347);
        sub_26BE2E258(v249, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v248, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
        sub_26BE70034(v162, v255, type metadata accessor for MLS.GroupState);
        v165 = v283;
        v166 = v256;
        v256[8] = v282;
        v166[9] = v165;
        v166[10] = v284;
        v167 = v279;
        v166[4] = v278;
        v166[5] = v167;
        v168 = v281;
        v166[6] = v280;
        v166[7] = v168;
        v169 = v275;
        *v166 = v274;
        v166[1] = v169;
        v170 = v277;
        v166[2] = v276;
        v166[3] = v170;
        v171 = v257;
      }

      else
      {
LABEL_60:
        sub_26BE01654();
        swift_allocError();
        *v172 = 17;
        v172[112] = 0;
        swift_willThrow();
        sub_26BE6FF8C(&v274);
        sub_26BE6FD84(&v347);
        sub_26BE2E258(v249, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v248, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v162, type metadata accessor for MLS.GroupState);
        v171 = v257;
      }

      sub_26BE69184(v171, type metadata accessor for MLS.GroupState);
      sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
      v61 = v250;
      v60 = type metadata accessor for MLS.GroupState;
      goto LABEL_6;
    }

    v128 = v257;
    v129 = *(v257 + 12);
    if (v129)
    {
      v262 = 0;
      v130 = 0;
      v131 = 0;
      v260 = v129;
      v132 = (v129 - 1);
      do
      {
        if (v131 == 0x80000000)
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if ((v132 & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        if (v130 > 2 * v132)
        {

          sub_26BE01654();
          swift_allocError();
          *v126 = 30;
          *(v126 + 8) = 0u;
          *(v126 + 24) = 0u;
          *(v126 + 40) = 0u;
          *(v126 + 56) = 0u;
          *(v126 + 72) = 0u;
          *(v126 + 88) = 0u;
          *(v126 + 104) = 0;
          v127 = 23;
          goto LABEL_67;
        }

        v133 = *(v257 + 7);
        if (*(v133 + 16) <= v130 || (memmove(&v274, (v133 + 136 * v130 + 32), 0x88uLL), sub_26BE58C10(&v274) == 1))
        {
          v260 = v131;
          v62 = v262;
          v128 = v257;
          goto LABEL_63;
        }

        ++v131;
        v130 += 2;
      }

      while (v260 != v131);
      if ((v260 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      v134 = 2 * v260;
      *(v257 + 12) = 2 * v260;
      LODWORD(v129) = v134 - 1;
      if (v129 >= 0)
      {
        v62 = v262;
        v128 = v257;
        goto LABEL_59;
      }

      goto LABEL_107;
    }

    v260 = 0;
    *(v257 + 12) = 1;
LABEL_59:
    sub_26BECA280((2 * v129) | 1);
LABEL_63:
    v280 = *(v235 + 6);
    v281 = *(v235 + 7);
    v282 = *(v235 + 8);
    *&v283 = v235[18];
    v276 = *(v235 + 2);
    v277 = *(v235 + 3);
    v278 = *(v235 + 4);
    v279 = *(v235 + 5);
    v274 = *v235;
    v275 = *(v235 + 1);
    v173 = sub_26BE620A4();
    if (v62)
    {

      sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v128, type metadata accessor for MLS.GroupState);
      goto LABEL_29;
    }

    v175 = v173;
    v262 = v174;
    MLS.KeySchedule.receiveExternalInit(kemOutput:)(v173, v174, v245);
    v176 = v254;
    sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
    sub_26BE00258(v175, v262);
    v177 = v245;
    v116(v245, 0, 1, v253);
    sub_26BE33F30(v177, v176, &qword_28045E708, &unk_26C011370);
    v69 = v360;
    v123 = v260;
  }

  else
  {
    v123 = v238;
    if (v40)
    {

      sub_26BE01654();
      swift_allocError();
      *v120 = 2;
      v121 = 7;
      goto LABEL_34;
    }
  }

  v178 = *v69;
  v179 = v257;
  if ((v178 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  LOBYTE(v263) = v178 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v180 = v324;

  *&v263 = sub_26BE125AC(v180);
  *(&v263 + 1) = v181;
  sub_26C009C5C();
  v182 = v235;
  v274 = *(v235 + 1);
  v183 = *(v235 + 3);
  v184 = *(v235 + 5);
  v185 = *(v235 + 9);
  v277 = *(v235 + 7);
  v278 = v185;
  v275 = v183;
  v276 = v184;
  v186 = *(v235 + 11);
  v187 = *(v235 + 13);
  v188 = *(v235 + 17);
  v281 = *(v235 + 15);
  v282 = v188;
  v279 = v186;
  v280 = v187;
  if (sub_26BE59C80(&v274) == 1)
  {

    goto LABEL_72;
  }

  v320 = v280;
  v321 = v281;
  v322 = v282;
  v316 = v276;
  v317 = v277;
  v319 = v279;
  v318 = v278;
  v314 = v274;
  v315 = v275;
  v312 = v123;
  v313 = 1;
  sub_26BE2E1F0((v182 + 1), &v263, &qword_28045E8B0, &qword_26C012560);
  sub_26BE00758(&v274, &v263);
  MLS.GroupState.validateLeafNode(leafNode:validationContext:)(&v314, &v312);
  v310[6] = v320;
  v310[7] = v321;
  v311 = v322;
  v310[2] = v316;
  v310[3] = v317;
  v310[4] = v318;
  v310[5] = v319;
  v310[0] = v314;
  v310[1] = v315;
  sub_26BE00854(v310);
  v117 = v123;
  LODWORD(v299) = v123;
  v269 = v280;
  v270 = v281;
  v271 = v282;
  v265 = v276;
  v266 = v277;
  v267 = v278;
  v268 = v279;
  v263 = v274;
  v264 = v275;
  v189 = MLS.TreeKEMPublicKey.parentHashValid(from:path:)(&v299, &v263);
  if ((v189 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    *v192 = 1;
    v192[112] = 7;
    swift_willThrow();
    sub_26BE2E258((v235 + 1), &qword_28045E8B0, &qword_26C012560);
LABEL_85:
    sub_26BE6FD84(&v347);
LABEL_86:
    (*(v252 + 8))(v251, v253);
LABEL_68:
    v122 = v254;
    goto LABEL_35;
  }

  LODWORD(v299) = v123;
  v269 = v280;
  v270 = v281;
  v271 = v282;
  v265 = v276;
  v266 = v277;
  v267 = v278;
  v268 = v279;
  v263 = v274;
  v264 = v275;
  MLS.TreeKEMPublicKey.merge(from:path:)(&v299, &v263);
  LODWORD(v259) = *v257;
  v199 = *(v257 + 2);
  v260 = *(v257 + 1);
  v360 = v199;
  v200 = *(v257 + 3);
  v201 = *(v257 + 5);
  v202 = *(v257 + 12);
  v203 = *(v257 + 7);
  v304 = v257[16];
  v305 = v201;
  v306 = v202;
  v307 = v203;
  *&v258 = sub_26BE592D0();
  *(&v258 + 1) = v204;
  v262 = 0;
  v250 = v200 + 1;
  if (__OFADD__(v200, 1))
  {
    goto LABEL_111;
  }

  v206 = v260;
  v207 = v257 + v261[9];
  v209 = *(v207 + 1);
  v208 = *(v207 + 2);
  v210 = *(v257 + v261[10]);
  LOWORD(v299) = v259;
  *(&v299 + 1) = v260;
  v211 = v360;
  *&v300 = v360;
  *(&v300 + 1) = v250;
  v301 = v258;
  *&v302 = v209;
  *(&v302 + 1) = v208;
  v303 = v210;
  v285 = xmmword_26C00BBD0;
  v286 = 0;
  v265 = v258;
  v266 = v302;
  *&v267 = v210;
  v263 = v299;
  v264 = v300;
  sub_26BE00608(v258, *(&v258 + 1));
  sub_26BE00608(v206, v211);
  v247 = v209;
  v248 = v208;
  sub_26BE00608(v209, v208);
  v249 = v210;

  sub_26BE001A8(&v299, &v289);
  v212 = v262;
  sub_26BFAF494(&v263);
  v132 = v212;
  if (v212)
  {

    sub_26BE2E258((v235 + 1), &qword_28045E8B0, &qword_26C012560);
    sub_26BE6FD84(&v347);

    v289 = v259;
    v290 = v308;
    v291 = v309;
    v292 = v260;
    v293 = v360;
    v294 = v250;
    v295 = v258;
    v296 = v247;
    v297 = v248;
    v298 = v249;
    sub_26BE00204(&v289);
    (*(v252 + 8))(v251, v253);
    sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
    sub_26BE00204(&v299);
    sub_26BE00258(v285, *(&v285 + 1));
    goto LABEL_36;
  }

LABEL_95:
  v220 = v285;
  v221 = *(&v285 + 1) >> 62;
  if ((*(&v285 + 1) >> 62) <= 1)
  {
    if (!v221)
    {
      goto LABEL_103;
    }

    v222 = v285 >> 32;
LABEL_101:
    if (v222 < 0)
    {
      __break(1u);
    }

    goto LABEL_103;
  }

  if (v221 == 2)
  {
    v222 = *(v285 + 24);
    goto LABEL_101;
  }

LABEL_103:
  v223 = sub_26C00909C();
  v225 = v224;
  sub_26BE00204(&v299);
  sub_26BE00258(v220, *(&v220 + 1));
  v288 = v117;
  v226 = *(v257 + 5);
  v227 = *(v257 + 12);
  v228 = *(v257 + 7);
  LOWORD(v285) = v257[16];
  *(&v285 + 1) = v226;
  LODWORD(v286) = v227;
  v287 = v228;
  v269 = v280;
  v270 = v281;
  v271 = v282;
  v265 = v276;
  v266 = v277;
  v267 = v278;
  v268 = v279;
  v229 = v257 + v261[8];
  v263 = v274;
  v264 = v275;

  MLS.TreeKEMPrivateKey.decap(from:pubKey:context:path:exceptLeaves:)(&v288, &v285, v223, v225, &v263, v236);
  if (v132)
  {

    sub_26BE00258(v223, v225);
    sub_26BE6FD84(&v347);

    v289 = v259;
    v290 = v308;
    v291 = v309;
    v292 = v260;
    v293 = v360;
    v294 = v250;
    v295 = v258;
    v296 = v247;
    v297 = v248;
    v298 = v249;
    sub_26BE00204(&v289);
    (*(v252 + 8))(v251, v253);
    sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
    sub_26BE69184(v257, type metadata accessor for MLS.GroupState);
    sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE2E258((v235 + 1), &qword_28045E8B0, &qword_26C012560);
    return;
  }

  sub_26BE00258(v223, v225);

  v289 = v259;
  v290 = v308;
  v291 = v309;
  v292 = v260;
  v293 = v360;
  v294 = v250;
  v295 = v258;
  v296 = v247;
  v297 = v248;
  v298 = v249;
  sub_26BE00204(&v289);
  v231 = v251;
  v230 = v252;
  v232 = v253;
  (*(v252 + 8))(v251, v253);
  sub_26BE2E258((v235 + 1), &qword_28045E8B0, &qword_26C012560);
  v233 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  (*(v230 + 16))(v231, &v229[*(v233 + 32)], v232);
  v179 = v257;
LABEL_72:
  v92 = (v179 + v261[9]);
  sub_26BE2E86C();
  sub_26BE2E9FC();
  v85 = 0;
  v190 = *(v257 + 3);
  v94 = __OFADD__(v190, 1);
  v191 = v190 + 1;
  if (v94)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    return;
  }

  *(v257 + 3) = v191;
  sub_26BE6250C(v251, v254);
LABEL_80:
  v193 = v243;
  sub_26BE2E1F0(&v45[*(v240 + 24)], v243, &qword_28045E4E0, &qword_26C015A80);
  v194 = type metadata accessor for MLS.FramedContentAuthData(0);
  if ((*(*(v194 - 8) + 48))(v193, 1, v194) == 1)
  {

    sub_26BE2E258(v243, &qword_28045E4E0, &qword_26C015A80);
    (*(v241 + 56))(v244, 1, 1, v242);
LABEL_84:
    sub_26BE2E258(v244, &qword_28045E4E8, &qword_26C012550);
    sub_26BE01654();
    swift_allocError();
    *v198 = 7;
    v198[112] = 6;
    swift_willThrow();
    goto LABEL_85;
  }

  v195 = *(v194 + 20);
  v197 = v243;
  v196 = v244;
  sub_26BE2E1F0(v243 + v195, v244, &qword_28045E4E8, &qword_26C012550);
  sub_26BE69184(v197, type metadata accessor for MLS.FramedContentAuthData);
  if ((*(v241 + 48))(v196, 1, v242) == 1)
  {

    goto LABEL_84;
  }

  v205 = v239;
  sub_26BE70034(v244, v239, type metadata accessor for MLS.Cryptography.MACTag);
  sub_26BEAFD54(v205, v92[1], v92[2]);
  if (v85)
  {

    sub_26BE6FD84(&v347);
    sub_26BE69184(v239, type metadata accessor for MLS.Cryptography.MACTag);
    goto LABEL_86;
  }

  sub_26BE69184(v239, type metadata accessor for MLS.Cryptography.MACTag);
  (*(v252 + 8))(v251, v253);
  sub_26BE2E258(v254, &qword_28045E708, &unk_26C011370);
  v213 = v235;
  sub_26BE2E1F0((v235 + 1), &v263, &qword_28045E8B0, &qword_26C012560);
  sub_26BE6FD84(&v347);
  LOBYTE(v263) = v40;
  *(&v323[5] + 3) = *(v213 + 11);
  *(&v323[6] + 3) = *(v213 + 13);
  *(&v323[7] + 3) = *(v213 + 15);
  *(&v323[8] + 3) = *(v213 + 17);
  *(&v323[1] + 3) = *(v213 + 3);
  *(&v323[2] + 3) = *(v213 + 5);
  *(&v323[3] + 3) = *(v213 + 7);
  *(&v323[4] + 3) = *(v213 + 9);
  *(v323 + 3) = *(v213 + 1);
  sub_26BE69184(v45, type metadata accessor for MLS.AuthenticatedContent);
  LOBYTE(v213) = v263;
  v214 = v257;
  sub_26BE6FEC8(v257, v255, type metadata accessor for MLS.GroupState);
  sub_26BE69184(v214, type metadata accessor for MLS.GroupState);
  v215 = v323[7];
  v216 = v256;
  *(v256 + 109) = v323[6];
  *(v216 + 125) = v215;
  *(v216 + 141) = v323[8];
  v217 = v323[3];
  *(v216 + 45) = v323[2];
  *(v216 + 61) = v217;
  v218 = v323[5];
  *(v216 + 77) = v323[4];
  *(v216 + 93) = v218;
  v219 = v323[1];
  *(v216 + 13) = v323[0];
  *v216 = v237;
  *(v216 + 2) = v238;
  *(v216 + 12) = v213;
  *(v216 + 39) = *(&v323[8] + 15);
  *(v216 + 29) = v219;
  v216[10] = xmmword_26C00DA60;
}

unint64_t sub_26BE61318(uint64_t a1, uint64_t a2)
{
  sub_26BE038A8(a2, v4);
  v2 = sub_26BE0256C(v4);
  sub_26BE2E258(v4, &qword_28045E2A8, &qword_26C028DD0);
  return v2;
}

uint64_t sub_26BE61388(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v11 = a3(a1, v13);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_26BE61440(uint64_t a1)
{
  v4 = *(a1 + 200);
  v77 = *(a1 + 184);
  v78 = v4;
  v79[0] = *(a1 + 216);
  *(v79 + 9) = *(a1 + 225);
  v5 = *(a1 + 136);
  v73 = *(a1 + 120);
  v74 = v5;
  v6 = *(a1 + 168);
  v75 = *(a1 + 152);
  v76 = v6;
  v7 = *(a1 + 72);
  v69 = *(a1 + 56);
  v70 = v7;
  v8 = *(a1 + 104);
  v71 = *(a1 + 88);
  v72 = v8;
  v9 = *(a1 + 200);
  v80[8] = *(a1 + 184);
  v80[9] = v9;
  v81[0] = *(a1 + 216);
  *(v81 + 9) = *(a1 + 225);
  v10 = *(a1 + 136);
  v80[4] = *(a1 + 120);
  v80[5] = v10;
  v11 = *(a1 + 168);
  v80[6] = *(a1 + 152);
  v80[7] = v11;
  v12 = *(a1 + 72);
  v80[0] = *(a1 + 56);
  v80[1] = v12;
  v13 = *(a1 + 104);
  v80[2] = *(a1 + 88);
  v80[3] = v13;
  if (sub_26BE6917C(v80) == 1 && (nullsub_1(), !*(a1 + 36)))
  {
    v17 = v14;
    v18 = *(a1 + 32);
    v19 = v1;
    v57 = *v1;
    v66 = v77;
    v67 = v78;
    v68[0] = v79[0];
    *(v68 + 9) = *(v79 + 9);
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v58 = v69;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    nullsub_1();
    sub_26BE6FE6C(v20, v44);
    sub_26BF2ED28(&v57);
    if (v2)
    {
      return sub_26BE6FD84(&v69);
    }

    else
    {
      v23 = v21;
      v24 = v22;
      v25 = v17[9];
      v53 = v17[8];
      v54 = v25;
      v55 = v17[10];
      v56 = *(v17 + 22);
      v26 = v17[5];
      v49 = v17[4];
      v50 = v26;
      v27 = v17[7];
      v51 = v17[6];
      v52 = v27;
      v28 = v17[1];
      v45 = *v17;
      v46 = v28;
      v29 = v17[3];
      v47 = v17[2];
      v48 = v29;
      v44[188] = 0;
      v30 = *(type metadata accessor for MLS.GroupState(0) + 60);
      v31 = *(v19 + v30);
      sub_26BE71438(&v69, v44);
      sub_26BE00608(v23, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_26BEEC910(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_26BEEC910((v32 > 1), v33 + 1, 1, v31);
      }

      sub_26BE00258(v23, v24);
      result = sub_26BE6FD84(&v69);
      *(v31 + 2) = v33 + 1;
      v34 = &v31[208 * v33];
      *(v34 + 4) = v23;
      *(v34 + 5) = v24;
      v35 = v56;
      v37 = v54;
      v36 = v55;
      *(v34 + 11) = v53;
      *(v34 + 12) = v37;
      *(v34 + 13) = v36;
      *(v34 + 28) = v35;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      *(v34 + 7) = v49;
      *(v34 + 8) = v38;
      *(v34 + 9) = v39;
      *(v34 + 10) = v40;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      *(v34 + 3) = v45;
      *(v34 + 4) = v41;
      *(v34 + 5) = v42;
      *(v34 + 6) = v43;
      *(v34 + 58) = v18;
      v34[236] = 0;
      *(v19 + v30) = v31;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 18;
    v15[112] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.GroupState.processIncomingCommit(_:cachedStateAndCommitMetadata:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for MLS.ValidatedContent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE6FEC8(v4, v15, type metadata accessor for MLS.GroupState);
  MLS.GroupState.unwrapMessage(_:)(a3, v12);
  if (!v5)
  {
    sub_26BE5EF48(a1, a2, v12, a4);
    sub_26BE69184(v12, type metadata accessor for MLS.ValidatedContent);
  }

  return sub_26BE69184(v15, type metadata accessor for MLS.GroupState);
}

uint64_t MLS.GroupState.processIncomingProposal(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLS.ValidatedContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MLS.GroupState.unwrapMessage(_:)(a1, v5);
  if (!v1)
  {
    sub_26BE61440(v5);
    return sub_26BE69184(v5, type metadata accessor for MLS.AuthenticatedContent);
  }

  return result;
}

uint64_t MLS.GroupState.processIncomingApplicationMessage(_:)(_DWORD *a1, uint64_t a2)
{
  v6 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.ValidatedContent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLS.GroupState.unwrapMessage(_:)(a2, v11);
  if (!v3)
  {
    sub_26BE6FEC8(v11, v8, type metadata accessor for MLS.AuthenticatedContent);
    if (v8[36])
    {
      sub_26BE01654();
      v2 = swift_allocError();
      *v12 = 8;
      v12[112] = 6;
    }

    else
    {
      v13 = *(v8 + 8);
      v14 = *(v8 + 200);
      v38 = *(v8 + 184);
      v39 = v14;
      v40[0] = *(v8 + 216);
      *(v40 + 9) = *(v8 + 225);
      v15 = *(v8 + 136);
      v34 = *(v8 + 120);
      v35 = v15;
      v16 = *(v8 + 168);
      v36 = *(v8 + 152);
      v37 = v16;
      v17 = *(v8 + 72);
      v30 = *(v8 + 56);
      v31 = v17;
      v18 = *(v8 + 104);
      v32 = *(v8 + 88);
      v33 = v18;
      v19 = *(v8 + 200);
      v41[8] = *(v8 + 184);
      v41[9] = v19;
      v42[0] = *(v8 + 216);
      *(v42 + 9) = *(v8 + 225);
      v20 = *(v8 + 136);
      v41[4] = *(v8 + 120);
      v41[5] = v20;
      v21 = *(v8 + 168);
      v41[6] = *(v8 + 152);
      v41[7] = v21;
      v22 = *(v8 + 72);
      v41[0] = *(v8 + 56);
      v41[1] = v22;
      v23 = *(v8 + 104);
      v41[2] = *(v8 + 88);
      v41[3] = v23;
      if (!sub_26BE6917C(v41))
      {
        nullsub_1();
        v43 = v13;
        v2 = *v26;
        v28[8] = v38;
        v28[9] = v39;
        v29[0] = v40[0];
        *(v29 + 9) = *(v40 + 9);
        v28[4] = v34;
        v28[5] = v35;
        v28[6] = v36;
        v28[7] = v37;
        v28[0] = v30;
        v28[1] = v31;
        v28[2] = v32;
        v28[3] = v33;
        nullsub_1();
        sub_26BE00608(*v27, *(v27 + 8));
        sub_26BE69184(v8, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE00608(*(v11 + 5), *(v11 + 6));
        sub_26BE69184(v11, type metadata accessor for MLS.AuthenticatedContent);
        *a1 = v43;
        return v2;
      }

      sub_26BE01654();
      v2 = swift_allocError();
      *v24 = 4;
      v24[112] = 0;
    }

    swift_willThrow();
    sub_26BE69184(v8, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE69184(v11, type metadata accessor for MLS.ValidatedContent);
  }

  return v2;
}

uint64_t MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(uint64_t a1, int *a2)
{
  v71 = a1;
  v3 = *a2;
  v68 = *(a2 + 4);
  v69 = v3;
  v95 = sub_26C0053B4(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for MLS.GroupState(0);
  v5 = *(v4 + 60);
  v70 = v2;
  v73 = *(v2 + v5);
  v6 = *(v73 + 16);
  if (!v6)
  {
LABEL_16:
    MEMORY[0x28223BE20](v4);
    v64[2] = v70;
    v65 = v69;
    v66 = v68;
    v67 = &v95;
    v62 = sub_26BE5CF64(sub_26BE7014C, v64, v71);

    return v62;
  }

  v7 = 0;
  v8 = (v73 + 48);
  v72 = v6 - 1;
  while (1)
  {
    v74 = v7;
    v80 = *(v8 - 1);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v81[2] = v8[2];
    v81[3] = v11;
    v81[0] = v9;
    v81[1] = v10;
    v12 = v8[4];
    v13 = v8[5];
    v14 = v8[7];
    v81[6] = v8[6];
    v81[7] = v14;
    v81[4] = v12;
    v81[5] = v13;
    v15 = v8[8];
    v16 = v8[9];
    v17 = v8[10];
    *(v82 + 13) = *(v8 + 173);
    v81[9] = v16;
    v82[0] = v17;
    v81[8] = v15;
    v18 = DWORD2(v82[1]);
    v19 = v80;
    v20 = v8[9];
    v91 = v8[8];
    v92 = v20;
    v93 = v8[10];
    v94 = *(v8 + 22);
    v21 = v8[5];
    v87 = v8[4];
    v88 = v21;
    v22 = v8[7];
    v89 = v8[6];
    v90 = v22;
    v23 = v8[1];
    v83 = *v8;
    v84 = v23;
    v24 = v8[3];
    v85 = v8[2];
    v86 = v24;
    v25 = BYTE12(v82[1]);
    v79 = BYTE12(v82[1]);
    v78 = 1;
    sub_26BE7009C(&v80, v76);
    sub_26BE00608(v19, *(&v19 + 1));
    sub_26BE6FE6C(v81, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v95;
    v75 = v95;
    v96 = v19;
    v28 = sub_26BEBE840(v19, *(&v19 + 1));
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (*(v27 + 24) < v33)
    {
      sub_26BE6BDD0(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_26BEBE840(v96, *(&v19 + 1));
      if ((BYTE8(v19) & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

LABEL_8:
      if (v34)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v52 = v28;
    sub_26BE6F040();
    v28 = v52;
    if (v34)
    {
LABEL_9:
      v36 = v75;
      v37 = v75[7] + 200 * v28;
      v76[0] = *v37;
      v38 = *(v37 + 64);
      v40 = *(v37 + 16);
      v39 = *(v37 + 32);
      v76[3] = *(v37 + 48);
      v76[4] = v38;
      v76[1] = v40;
      v76[2] = v39;
      v41 = *(v37 + 112);
      v43 = *(v37 + 80);
      v42 = *(v37 + 96);
      v76[8] = *(v37 + 128);
      v76[6] = v42;
      v76[7] = v41;
      v76[5] = v43;
      v45 = *(v37 + 160);
      v44 = *(v37 + 176);
      v46 = *(v37 + 144);
      v77 = *(v37 + 192);
      v76[10] = v45;
      v76[11] = v44;
      v76[9] = v46;
      v47 = v92;
      *(v37 + 128) = v91;
      *(v37 + 144) = v47;
      *(v37 + 160) = v93;
      *(v37 + 176) = v94;
      v48 = v88;
      *(v37 + 64) = v87;
      *(v37 + 80) = v48;
      v49 = v90;
      *(v37 + 96) = v89;
      *(v37 + 112) = v49;
      v50 = v84;
      *v37 = v83;
      *(v37 + 16) = v50;
      v51 = v86;
      *(v37 + 32) = v85;
      *(v37 + 48) = v51;
      *(v37 + 184) = v18;
      *(v37 + 188) = v25;
      *(v37 + 190) = 0;
      *(v37 + 192) = 1;
      sub_26BE5CD74(v76);
      sub_26BE700F8(&v80);
      sub_26BE00258(v96, *(&v19 + 1));
      goto LABEL_13;
    }

LABEL_11:
    v36 = v75;
    v75[(v28 >> 6) + 8] |= 1 << v28;
    v53 = (v36[6] + 16 * v28);
    *v53 = v96;
    v53[1] = *(&v19 + 1);
    v54 = v36[7] + 200 * v28;
    v55 = v86;
    *(v54 + 32) = v85;
    *(v54 + 48) = v55;
    v56 = v84;
    *v54 = v83;
    *(v54 + 16) = v56;
    v57 = v90;
    *(v54 + 96) = v89;
    *(v54 + 112) = v57;
    v58 = v88;
    *(v54 + 64) = v87;
    *(v54 + 80) = v58;
    *(v54 + 176) = v94;
    v59 = v93;
    *(v54 + 144) = v92;
    *(v54 + 160) = v59;
    *(v54 + 128) = v91;
    *(v54 + 184) = v18;
    *(v54 + 188) = v25;
    *(v54 + 190) = 0;
    *(v54 + 192) = 1;
    v4 = sub_26BE700F8(&v80);
    v60 = v36[2];
    v32 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v32)
    {
      goto LABEL_18;
    }

    v36[2] = v61;
LABEL_13:
    v95 = v36;
    if (v72 == v74)
    {
      goto LABEL_16;
    }

    v7 = v74 + 1;
    v8 += 13;
    if ((v74 + 1) >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

_OWORD *sub_26BE620A4()
{
  v1 = *v0;
  v62[5] = *(v0 + 88);
  v62[6] = *(v0 + 104);
  v62[7] = *(v0 + 120);
  v62[8] = *(v0 + 136);
  v62[1] = *(v0 + 24);
  v62[2] = *(v0 + 40);
  v62[3] = *(v0 + 56);
  v62[4] = *(v0 + 72);
  v62[0] = *(v0 + 8);
  v63[5] = *(v0 + 88);
  v63[6] = *(v0 + 104);
  v63[7] = *(v0 + 120);
  v63[8] = *(v0 + 136);
  v63[1] = *(v0 + 24);
  v63[2] = *(v0 + 40);
  v63[3] = *(v0 + 56);
  v63[4] = *(v0 + 72);
  v63[0] = *(v0 + 8);
  if (sub_26BE59C80(v63) != 1)
  {
    v3 = *(v1 + 16);
    if (!v3)
    {
      sub_26BE2E1F0(v62, __dst, &qword_28045E8B0, &qword_26C012560);
LABEL_25:
      sub_26BE01654();
      swift_allocError();
      *v28 = 30;
      v28[112] = 0;
      swift_willThrow();
      sub_26BE2E258(v62, &qword_28045E8B0, &qword_26C012560);
      return v0;
    }

    v0 = (v1 + 32);
    v4 = (v1 + 32);
    v5 = *(v1 + 16);
    do
    {
      memmove(__dst, v4, 0xB8uLL);
      if (sub_26BE592C4(__dst) == 1)
      {
        sub_26BE13A3C(__dst);
        sub_26BE01654();
        swift_allocError();
        *v2 = 3;
        goto LABEL_27;
      }

      sub_26BE13A3C(__dst);
      v4 += 184;
      --v5;
    }

    while (v5);
    result = sub_26BE2E1F0(v62, __dst, &qword_28045E8B0, &qword_26C012560);
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *v0;
      v9 = v0[1];
      v10 = v0[3];
      v51 = v0[2];
      v52 = v10;
      v49 = v8;
      v50 = v9;
      v11 = v0[4];
      v12 = v0[5];
      v13 = v0[7];
      v55 = v0[6];
      v56 = v13;
      v53 = v11;
      v54 = v12;
      v14 = v0[8];
      v15 = v0[9];
      v16 = v0[10];
      v60 = *(v0 + 22);
      v58 = v15;
      v59 = v16;
      v57 = v14;
      memmove(__dst, v0, 0xB8uLL);
      if (sub_26BE592C4(__dst) != 1)
      {
        break;
      }

      result = sub_26BE13A3C(__dst);
LABEL_9:
      ++v7;
      v0 = (v0 + 184);
      if (v3 == v7)
      {
        goto LABEL_25;
      }
    }

    v17 = sub_26BE13A3C(__dst);
    v18 = *(v17 + 48);
    v20 = *v17;
    v19 = *(v17 + 16);
    v47[2] = *(v17 + 32);
    v47[3] = v18;
    v47[0] = v20;
    v47[1] = v19;
    v21 = *(v17 + 112);
    v23 = *(v17 + 64);
    v22 = *(v17 + 80);
    v47[6] = *(v17 + 96);
    v47[7] = v21;
    v47[4] = v23;
    v47[5] = v22;
    v25 = *(v17 + 144);
    v24 = *(v17 + 160);
    v26 = *(v17 + 128);
    v48 = *(v17 + 176);
    v47[9] = v25;
    v47[10] = v24;
    v47[8] = v26;
    v27 = sub_26BE5CD48(v47);
    if (v27 <= 4)
    {
      if (v27 != 2)
      {
        goto LABEL_23;
      }
    }

    else if (v27 <= 7)
    {
      if (v27 == 6)
      {
LABEL_23:
        result = sub_26BE5CDC8(v47);
        goto LABEL_9;
      }

      if (v27 != 7)
      {
        sub_26BE5CDC8(v47);
        v43[8] = v57;
        v43[9] = v58;
        v43[10] = v59;
        v44 = v60;
        v43[4] = v53;
        v43[5] = v54;
        v43[6] = v55;
        v43[7] = v56;
        v43[0] = v49;
        v43[1] = v50;
        v43[2] = v51;
        v43[3] = v52;
        v29 = sub_26BE13A3C(v43);
        v30 = *(v29 + 48);
        v32 = *v29;
        v31 = *(v29 + 16);
        v45[2] = *(v29 + 32);
        v45[3] = v30;
        v45[0] = v32;
        v45[1] = v31;
        v33 = *(v29 + 112);
        v35 = *(v29 + 64);
        v34 = *(v29 + 80);
        v45[6] = *(v29 + 96);
        v45[7] = v33;
        v45[4] = v35;
        v45[5] = v34;
        v37 = *(v29 + 144);
        v36 = *(v29 + 160);
        v38 = *(v29 + 128);
        v46 = *(v29 + 176);
        v45[9] = v37;
        v45[10] = v36;
        v45[8] = v38;
        if (sub_26BE5CD48(v45) != 5)
        {
          goto LABEL_25;
        }

        v0 = *sub_26BE5CDC8(v45);
        v41[8] = v57;
        v41[9] = v58;
        v41[10] = v59;
        v42 = v60;
        v41[4] = v53;
        v41[5] = v54;
        v41[6] = v55;
        v41[7] = v56;
        v41[0] = v49;
        v41[1] = v50;
        v41[2] = v51;
        v41[3] = v52;
        v39 = sub_26BE13A3C(v41);
        sub_26BE6FE6C(v39, v40);
        sub_26BE2E258(v62, &qword_28045E8B0, &qword_26C012560);
        return v0;
      }
    }

    else if (v27 != 8 && v27 != 9)
    {
      goto LABEL_22;
    }

    sub_26BE5CDC8(v47);
LABEL_22:
    result = sub_26BE7188C(&v49);
    goto LABEL_9;
  }

  sub_26BE01654();
  swift_allocError();
  *v2 = 0;
LABEL_27:
  v2[112] = 7;
  swift_willThrow();
  return v0;
}

__n128 sub_26BE6250C(unsigned __int8 *a1, char *a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = sub_26C009C8C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.KeySchedule(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - v11;
  v12 = type metadata accessor for MLS.GroupState(0);
  v13 = v2 + v12[11];
  sub_26BE6FEC8(v13, v10, type metadata accessor for MLS.KeySchedule);
  v49 = *v2;
  v14 = *(v2 + 1);
  v50 = *(v2 + 2);
  v48 = *(v2 + 3);
  v15 = *(v2 + 5);
  v16 = *(v2 + 12);
  v17 = *(v2 + 7);
  v78 = v2[16];
  v79 = v15;
  v80 = v16;
  v81 = v17;
  v18 = v82;
  v19 = sub_26BE592D0();
  v82 = v18;
  if (v18)
  {
    goto LABEL_4;
  }

  v43 = v13;
  v44 = v7;
  v45 = v6;
  v21 = v2 + v12[9];
  v22 = *(v21 + 1);
  v23 = *(v21 + 2);
  v24 = *(v3 + v12[10]);
  LOWORD(v73) = v49;
  v25 = v50;
  *(&v73 + 1) = v14;
  *&v74 = v50;
  *(&v74 + 1) = v48;
  *&v75 = v19;
  *(&v75 + 1) = v20;
  *&v76 = v22;
  *(&v76 + 1) = v23;
  v77 = v24;
  sub_26BE00608(v19, v20);
  sub_26BE00608(v14, v25);
  sub_26BE00608(v22, v23);

  v26 = v51;
  v27 = v82;
  sub_26BEAFF90(v52, v53, &v73, v51);
  v82 = v27;
  if (v27)
  {
    v56 = v75;
    v57 = v76;
    *&v58 = v77;
    v54 = v73;
    v55 = v74;
    sub_26BE00204(&v54);
LABEL_4:
    sub_26BE69184(v10, type metadata accessor for MLS.KeySchedule);
    return result;
  }

  v71[2] = v75;
  v71[3] = v76;
  v72 = v77;
  v71[0] = v73;
  v71[1] = v74;
  sub_26BE00204(v71);
  sub_26BE69184(v10, type metadata accessor for MLS.KeySchedule);
  v29 = v43;
  sub_26BE71774(v26, v43, type metadata accessor for MLS.KeySchedule);
  v30 = *(v3 + 12);
  if (*v29)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v63 = v31;
  v62 = v30;
  v32 = &v29[*(v44 + 32)];
  v33 = v45;
  (*(v46 + 16))(v45, v32, v47);
  v34 = v82;
  MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v63, &v62, v33, v64);
  v82 = v34;
  if (!v34)
  {
    v35 = v3 + v12[12];
    v36 = *(v35 + 5);
    v58 = *(v35 + 4);
    v59 = v36;
    v60 = *(v35 + 6);
    v61 = *(v35 + 14);
    v37 = *(v35 + 1);
    v54 = *v35;
    v55 = v37;
    v38 = *(v35 + 3);
    v56 = *(v35 + 2);
    v57 = v38;
    sub_26BE717DC(&v54);
    v39 = v68;
    *(v35 + 4) = v67;
    *(v35 + 5) = v39;
    *(v35 + 6) = v69;
    *(v35 + 14) = v70;
    v40 = v64[1];
    *v35 = v64[0];
    *(v35 + 1) = v40;
    result = v65;
    v41 = v66;
    *(v35 + 2) = v65;
    *(v35 + 3) = v41;
  }

  return result;
}

BOOL sub_26BE628B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v10[8] = *(a1 + 128);
  v10[9] = v3;
  v10[10] = *(a1 + 160);
  v11 = *(a1 + 176);
  v4 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v4;
  v5 = *(a1 + 112);
  v10[6] = *(a1 + 96);
  v10[7] = v5;
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  if (sub_26BE5CD48(v10) != 2)
  {
    return 0;
  }

  v8 = *sub_26BE5CDC8(v10);
  return v8 == *(a2 + *(type metadata accessor for MLS.GroupState(0) + 52));
}

void *sub_26BE62964@<X0>(__int128 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v56 = a1[8];
  v57 = v4;
  v6 = a1[9];
  v58 = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  v52 = a1[4];
  v53 = v7;
  v9 = a1[5];
  v10 = a1[7];
  v54 = a1[6];
  v55 = v10;
  v11 = a1[1];
  v48 = *a1;
  v49 = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v50 = a1[2];
  v51 = v12;
  v60[8] = v56;
  v60[9] = v6;
  v60[10] = a1[10];
  v60[4] = v52;
  v60[5] = v9;
  v60[6] = v54;
  v60[7] = v5;
  v60[0] = v14;
  v60[1] = v13;
  v59 = *(a1 + 22);
  v15 = *a2;
  v16 = *(a2 + 4);
  v61 = *(a1 + 22);
  v60[2] = v50;
  v60[3] = v8;
  v17 = sub_26BE5CD48(v60);
  if (v17 == 9)
  {
    sub_26BE5CDC8(v60);
    if (v16)
    {
      sub_26BE01654();
      swift_allocError();
      *v25 = 8;
      v25[112] = 0;
      return swift_willThrow();
    }

    LODWORD(v36) = v15;
    result = sub_26BE71934(&v36);
    v31 = v45;
    *(a3 + 128) = v44;
    *(a3 + 144) = v31;
    *(a3 + 160) = v46;
    *(a3 + 176) = v47;
    v32 = v41;
    *(a3 + 64) = v40;
    *(a3 + 80) = v32;
    v33 = v43;
    *(a3 + 96) = v42;
    *(a3 + 112) = v33;
    v34 = v37;
    *a3 = v36;
    *(a3 + 16) = v34;
    v35 = v39;
    *(a3 + 32) = v38;
    *(a3 + 48) = v35;
    *(a3 + 184) = v15;
    *(a3 + 188) = 0;
    v24 = -4093;
  }

  else
  {
    if (v17 != 8)
    {
      v26 = v57;
      *(a3 + 128) = v56;
      *(a3 + 144) = v26;
      *(a3 + 160) = v58;
      *(a3 + 176) = v59;
      v27 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v27;
      v28 = v55;
      *(a3 + 96) = v54;
      *(a3 + 112) = v28;
      v29 = v49;
      *a3 = v48;
      *(a3 + 16) = v29;
      v30 = v51;
      *(a3 + 32) = v50;
      *(a3 + 48) = v30;
      *(a3 + 184) = v15;
      *(a3 + 188) = v16;
      *(a3 + 190) = 0;
      *(a3 + 192) = 1;
      return sub_26BE6FE6C(&v48, &v36);
    }

    LODWORD(v36) = *sub_26BE5CDC8(v60);
    result = sub_26BE71934(&v36);
    v19 = v45;
    *(a3 + 128) = v44;
    *(a3 + 144) = v19;
    *(a3 + 160) = v46;
    *(a3 + 176) = v47;
    v20 = v41;
    *(a3 + 64) = v40;
    *(a3 + 80) = v20;
    v21 = v43;
    *(a3 + 96) = v42;
    *(a3 + 112) = v21;
    v22 = v37;
    *a3 = v36;
    *(a3 + 16) = v22;
    v23 = v39;
    *(a3 + 32) = v38;
    *(a3 + 48) = v23;
    *(a3 + 184) = v15;
    *(a3 + 188) = v16;
    v24 = -4092;
  }

  *(a3 + 190) = v24;
  *(a3 + 192) = 0;
  return result;
}

uint64_t sub_26BE62BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 144);
  v79[8] = *(a1 + 128);
  v79[9] = v10;
  v79[10] = *(a1 + 160);
  v80 = *(a1 + 176);
  v11 = *(a1 + 80);
  v79[4] = *(a1 + 64);
  v79[5] = v11;
  v12 = *(a1 + 112);
  v79[6] = *(a1 + 96);
  v79[7] = v12;
  v13 = *(a1 + 16);
  v79[0] = *a1;
  v79[1] = v13;
  v14 = *(a1 + 48);
  v79[2] = *(a1 + 32);
  v79[3] = v14;
  if (sub_26BE592C4(v79) == 1)
  {
    v15 = sub_26BE13A3C(v79);
    v16 = *a3;
    if (*(*a3 + 16) && (v17 = sub_26BEBE840(*v15, v15[1]), (v18 & 1) != 0))
    {
      v19 = *(v16 + 56) + 200 * v17;
      v66 = *v19;
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      v22 = *(v19 + 32);
      v67 = *(v19 + 16);
      v68 = v22;
      v69 = v20;
      v70 = v21;
      v23 = *(v19 + 80);
      v24 = *(v19 + 96);
      v25 = *(v19 + 128);
      v73 = *(v19 + 112);
      v74 = v25;
      v71 = v23;
      v72 = v24;
      v26 = *(v19 + 144);
      v27 = *(v19 + 160);
      v28 = *(v19 + 176);
      v78 = *(v19 + 192);
      v76 = v27;
      v77 = v28;
      v75 = v26;
      v29 = *(v19 + 144);
      v62 = *(v19 + 128);
      v63 = v29;
      v64 = *(v19 + 160);
      v65 = *(v19 + 176);
      v30 = *(v19 + 80);
      v58 = *(v19 + 64);
      v59 = v30;
      v31 = *(v19 + 112);
      v60 = *(v19 + 96);
      v61 = v31;
      v32 = *(v19 + 16);
      v54 = *v19;
      v55 = v32;
      v33 = *(v19 + 48);
      v56 = *(v19 + 32);
      v57 = v33;
      v52 = DWORD2(v28);
      v53 = BYTE12(v28);
      sub_26BE62964(&v54, &v52, a5);
      v34 = v5;
      if (!v5)
      {
        v48 = v62;
        v49 = v63;
        v50 = v64;
        v51 = v65;
        v44 = v58;
        v45 = v59;
        v46 = v60;
        v47 = v61;
        v40 = v54;
        v41 = v55;
        v42 = v56;
        v43 = v57;
        sub_26BE5CDE4(&v66, &v38);
        return sub_26BE718E0(&v40);
      }

      v48 = v62;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      sub_26BE5CDE4(&v66, &v38);
      result = sub_26BE718E0(&v40);
    }

    else
    {
      sub_26BE01654();
      v34 = swift_allocError();
      *v37 = 14;
      v37[112] = 3;
      result = swift_willThrow();
    }

    *a4 = v34;
  }

  else
  {
    v36 = sub_26BE13A3C(v79);
    v74 = *(v36 + 128);
    v75 = *(v36 + 144);
    v76 = *(v36 + 160);
    *&v77 = *(v36 + 176);
    v70 = *(v36 + 64);
    v71 = *(v36 + 80);
    v72 = *(v36 + 96);
    v73 = *(v36 + 112);
    v66 = *v36;
    v67 = *(v36 + 16);
    v68 = *(v36 + 32);
    v69 = *(v36 + 48);
    v38 = a2;
    v39 = BYTE4(a2) & 1;
    result = sub_26BE62964(&v66, &v38, a5);
    if (v5)
    {
      *a4 = v5;
    }
  }

  return result;
}

unint64_t MLS.GroupState.CommitType.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE62ED0()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1 + 1);
  return sub_26C00B0CC();
}

uint64_t sub_26BE62F48(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v2 + 1);
  return sub_26C00B0CC();
}

uint64_t MLS.GroupState.CommitOptions.init(commitType:commitTypeOptions:forceIncludePath:skipInlineTree:generateIndividualWelcomes:extraGroupInfoExtensions:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  v13 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  result = sub_26BE70034(a2, &a7[v13[5]], type metadata accessor for MLS.GroupState.CommitTypeOptions);
  a7[v13[6]] = a3;
  a7[v13[7]] = a4;
  a7[v13[8]] = a5;
  *&a7[v13[9]] = a6;
  return result;
}

uint64_t MLS.GroupState.ApplicationMessageOptions.init(authenticatedData:paddingSize:secretPayloadType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 26) = v6;
  return result;
}

double MLS.GroupState.ApplicationMessageOptions.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26C00BBD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 1;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.welcomeMessages.getter()
{
  type metadata accessor for MLS.GroupState.CommitOutput(0);
}

uint64_t MLS.GroupState.CommitOutput.welcomeMessages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.stateUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  v9 = v3[5];
  LOBYTE(v3) = *(v3 + 48);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v3;
}

__n128 MLS.GroupState.CommitOutput.stateUpdate.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 28);

  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.commitMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 32));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_26BE6FF30(v20, &v19);
}

__n128 MLS.GroupState.CommitOutput.commitMetadata.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 32));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_26BE6FF8C(v14);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.newStateAndCommitMetadata.getter(uint64_t a1, _OWORD *a2)
{
  v5 = type metadata accessor for MLS.GroupState.CommitOutput(0);
  sub_26BE6FEC8(v2 + *(v5 + 24), a1, type metadata accessor for MLS.GroupState);
  v6 = (v2 + *(v5 + 32));
  v7 = v6[7];
  v8 = v6[9];
  v30 = v6[8];
  v31 = v8;
  v9 = v6[9];
  v32 = v6[10];
  v10 = v6[3];
  v11 = v6[5];
  v26 = v6[4];
  v12 = v26;
  v27 = v11;
  v13 = v6[5];
  v14 = v6[7];
  v28 = v6[6];
  v15 = v28;
  v29 = v14;
  v16 = v6[1];
  v17 = v6[3];
  v24 = v6[2];
  v18 = v24;
  v25 = v17;
  v19 = v6[1];
  v23[0] = *v6;
  v20 = v23[0];
  v23[1] = v19;
  a2[8] = v30;
  a2[9] = v9;
  a2[10] = v6[10];
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v7;
  *a2 = v20;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v10;
  return sub_26BE6FF30(v23, &v22);
}

__n128 MLS.LeafNodeUpdate.init(newCredential:newSignaturePrivateKey:newLeafNodeCapabilities:newLeafNodeExtensions:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a3 + 32);
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 16) = 0u;
  v12 = a5 + 16;
  sub_26BE7162C(0, 0x3000000000000000uLL);
  *a5 = v9;
  *(a5 + 8) = v10;
  sub_26BE7170C(a2, v12, &qword_28045E468, &qword_26C00ECA0);
  sub_26BE701EC(*(a5 + 56), *(a5 + 64), *(a5 + 72), *(a5 + 80), *(a5 + 88));
  result = *a3;
  *(a5 + 72) = *(a3 + 16);
  *(a5 + 56) = result;
  *(a5 + 88) = v11;
  *(a5 + 96) = a4;
  return result;
}

void MLS.GroupState.commit(newProposals:commitOptions:messageOptions:leafNodeUpdate:)(char *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = sub_26C009C8C();
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v5;
  if ((v16 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v27 = a5;
    v28 = a1;
    v29 = a2;
    v30 = a4;
    v31 = v13;
    v17 = *a3;
    v19 = *(a3 + 1);
    v18 = *(a3 + 2);
    v25 = *(a3 + 3);
    v26 = v18;
    v20 = v16 != 1;
    v33 = v16 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v32 = v20;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v21 = v34;

    v22 = sub_26BE1264C(v21);
    v24 = v23;

    if (!v6)
    {
      v35 = v22;
      v36 = v24;
      sub_26BE00608(v22, v24);
      sub_26C009C5C();
      LOBYTE(v35) = v17;
      v36 = v19;
      v37 = v26;
      v38 = v25;
      sub_26BE638EC(v28, v15, v29, &v35, v30, v27);
      (*(v31 + 8))(v15, v12);
      sub_26BE00258(v22, v24);
    }
  }
}

uint64_t sub_26BE638EC@<X0>(char *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v472 = a1;
  v464 = a5;
  v471 = a3;
  v458 = a2;
  v431 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A8, &qword_26C012558);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v433 = &v415 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v436 = &v415 - v11;
  v434 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v434);
  v437 = &v415 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v13 - 8);
  v438 = &v415 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v449 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v442 = &v415 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.FramedContentAuthData(0);
  v453 = *(v16 - 8);
  v454 = v16;
  MEMORY[0x28223BE20](v16);
  v445 = &v415 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v18 - 8);
  v456 = &v415 - v19;
  v452 = type metadata accessor for MLS.AuthenticatedContent(0);
  v20 = MEMORY[0x28223BE20](v452 - 8);
  v439 = (&v415 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v440 = &v415 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v446 = &v415 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v455 = &v415 - v27;
  MEMORY[0x28223BE20](v26);
  v448 = &v415 - v28;
  v443 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  MEMORY[0x28223BE20](v443);
  v457 = &v415 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = sub_26C009C8C();
  v466 = *(v469 - 8);
  v30 = MEMORY[0x28223BE20](v469);
  v441 = &v415 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v444 = &v415 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v463 = &v415 - v35;
  MEMORY[0x28223BE20](v34);
  v465 = &v415 - v36;
  v37 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  MEMORY[0x28223BE20](v37 - 8);
  v467 = (&v415 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v450 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v432 = &v415 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v435 = &v415 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v451 = (&v415 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v461 = &v415 - v47;
  MEMORY[0x28223BE20](v46);
  v468 = &v415 - v48;
  v49 = type metadata accessor for MLS.GroupState(0);
  v50 = MEMORY[0x28223BE20](v49);
  v470 = (&v415 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v459) = *a4;
  v52 = *(a4 + 2);
  v462 = *(a4 + 1);
  v460 = v52;
  v474 = v50;
  v53 = *(v50 + 60);
  v558 = v6;
  v54 = *(v6 + v53);
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = (v54 + 32);
    v57 = MEMORY[0x277D84F90];
    do
    {
      v534[0] = *v56;
      v58 = v56[1];
      v59 = v56[2];
      v60 = v56[4];
      v534[3] = v56[3];
      v534[4] = v60;
      v534[1] = v58;
      v534[2] = v59;
      v61 = v56[5];
      v62 = v56[6];
      v63 = v56[8];
      v534[7] = v56[7];
      v534[8] = v63;
      v534[5] = v61;
      v534[6] = v62;
      v64 = v56[9];
      v65 = v56[10];
      v66 = v56[11];
      *(v536 + 13) = *(v56 + 189);
      v535 = v65;
      v536[0] = v66;
      v534[9] = v64;
      v67 = v534[0];
      sub_26BE7009C(v534, v556);
      sub_26BE00608(v67, *(&v67 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_26BEED63C(0, *(v57 + 2) + 1, 1, v57);
      }

      v68 = v57;
      v69 = *(v57 + 2);
      v70 = v68;
      v71 = *(v68 + 3);
      if (v69 >= v71 >> 1)
      {
        v70 = sub_26BEED63C((v71 > 1), v69 + 1, 1, v70);
      }

      sub_26BE700F8(v534);
      v556[0] = v67;
      sub_26BE714E8(v556);
      *(v70 + 2) = v69 + 1;
      v72 = &v70[184 * v69];
      v57 = v70;
      v73 = v556[0];
      v74 = v556[1];
      v75 = v556[3];
      *(v72 + 4) = v556[2];
      *(v72 + 5) = v75;
      *(v72 + 2) = v73;
      *(v72 + 3) = v74;
      v76 = v556[4];
      v77 = v556[5];
      v78 = v556[7];
      *(v72 + 8) = v556[6];
      *(v72 + 9) = v78;
      *(v72 + 6) = v76;
      *(v72 + 7) = v77;
      v79 = v556[8];
      v80 = v556[9];
      v81 = v557[0];
      *(v72 + 26) = *&v557[1];
      *(v72 + 11) = v80;
      *(v72 + 12) = v81;
      *(v72 + 10) = v79;
      v56 += 13;
      --v55;
    }

    while (v55);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v82 = *(v472 + 2);
  if (v82)
  {
    v83 = v472 + 32;
    do
    {
      v84 = *(v83 + 9);
      v534[8] = *(v83 + 8);
      v534[9] = v84;
      v535 = *(v83 + 10);
      *&v536[0] = *(v83 + 22);
      v85 = *(v83 + 5);
      v534[4] = *(v83 + 4);
      v534[5] = v85;
      v86 = *(v83 + 7);
      v534[6] = *(v83 + 6);
      v534[7] = v86;
      v87 = *(v83 + 1);
      v534[0] = *v83;
      v534[1] = v87;
      v88 = *(v83 + 3);
      v534[2] = *(v83 + 2);
      v534[3] = v88;
      sub_26BE6FE6C(v534, v556);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_26BEED63C(0, *(v57 + 2) + 1, 1, v57);
      }

      v90 = *(v57 + 2);
      v89 = *(v57 + 3);
      if (v90 >= v89 >> 1)
      {
        v57 = sub_26BEED63C((v89 > 1), v90 + 1, 1, v57);
      }

      v556[8] = v534[8];
      v556[9] = v534[9];
      v557[0] = v535;
      *&v557[1] = *&v536[0];
      v556[4] = v534[4];
      v556[5] = v534[5];
      v556[6] = v534[6];
      v556[7] = v534[7];
      v556[0] = v534[0];
      v556[1] = v534[1];
      v556[2] = v534[2];
      v556[3] = v534[3];
      sub_26BE714FC(v556);
      *(v57 + 2) = v90 + 1;
      v91 = &v57[184 * v90];
      v92 = v556[0];
      v93 = v556[1];
      v94 = v556[3];
      *(v91 + 4) = v556[2];
      *(v91 + 5) = v94;
      *(v91 + 2) = v92;
      *(v91 + 3) = v93;
      v95 = v556[4];
      v96 = v556[5];
      v97 = v556[7];
      *(v91 + 8) = v556[6];
      *(v91 + 9) = v97;
      *(v91 + 6) = v95;
      *(v91 + 7) = v96;
      v98 = v556[8];
      v99 = v556[9];
      v100 = v557[0];
      *(v91 + 26) = *&v557[1];
      *(v91 + 11) = v99;
      *(v91 + 12) = v100;
      *(v91 + 10) = v98;
      v83 += 184;
      --v82;
    }

    while (v82);
  }

  v101 = v473;
  v102 = *(v474 + 13);
  LODWORD(v534[0]) = *(v558 + v102);
  BYTE4(v534[0]) = 0;
  v103 = MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(v57, v534);
  if (v101)
  {
  }

  v430 = v102;
  v473 = 0;
  v105 = *(v103 + 16);
  v106 = MEMORY[0x277D84F90];
  v472 = v103;
  if (v105)
  {
    v107 = v103 + 32;
    do
    {
      v534[0] = *v107;
      v118 = *(v107 + 16);
      v119 = *(v107 + 32);
      v120 = *(v107 + 64);
      v534[3] = *(v107 + 48);
      v534[4] = v120;
      v534[1] = v118;
      v534[2] = v119;
      v121 = *(v107 + 80);
      v122 = *(v107 + 96);
      v123 = *(v107 + 128);
      v534[7] = *(v107 + 112);
      v534[8] = v123;
      v534[5] = v121;
      v534[6] = v122;
      v124 = *(v107 + 144);
      v125 = *(v107 + 160);
      v126 = *(v107 + 176);
      LOBYTE(v536[1]) = *(v107 + 192);
      v535 = v125;
      v536[0] = v126;
      v534[9] = v124;
      v127 = *v107;
      v128 = *(v107 + 16);
      v129 = *(v107 + 48);
      v477[2] = *(v107 + 32);
      v477[3] = v129;
      v477[0] = v127;
      v477[1] = v128;
      v130 = *(v107 + 64);
      v131 = *(v107 + 80);
      v132 = *(v107 + 112);
      v477[6] = *(v107 + 96);
      v477[7] = v132;
      v477[4] = v130;
      v477[5] = v131;
      v133 = *(v107 + 128);
      v134 = *(v107 + 144);
      v135 = *(v107 + 160);
      *&v478[1] = *(v107 + 176);
      v477[9] = v134;
      v478[0] = v135;
      v477[8] = v133;
      if (!sub_26BE5CD48(v477))
      {
        v136 = sub_26BE5CDC8(v477);
        sub_26BE5CDE4(v534, v556);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_26BEED510(0, *(v106 + 2) + 1, 1, v106);
        }

        v138 = *(v106 + 2);
        v137 = *(v106 + 3);
        v139 = v106;
        if (v138 >= v137 >> 1)
        {
          v139 = sub_26BEED510((v137 > 1), v138 + 1, 1, v106);
        }

        *(v139 + 2) = v138 + 1;
        v106 = v139;
        v108 = &v139[184 * v138];
        v109 = *v136;
        v110 = *(v136 + 16);
        v111 = *(v136 + 48);
        *(v108 + 4) = *(v136 + 32);
        *(v108 + 5) = v111;
        *(v108 + 2) = v109;
        *(v108 + 3) = v110;
        v112 = *(v136 + 64);
        v113 = *(v136 + 80);
        v114 = *(v136 + 112);
        *(v108 + 8) = *(v136 + 96);
        *(v108 + 9) = v114;
        *(v108 + 6) = v112;
        *(v108 + 7) = v113;
        v115 = *(v136 + 128);
        v116 = *(v136 + 144);
        v117 = *(v136 + 160);
        *(v108 + 26) = *(v136 + 176);
        *(v108 + 11) = v116;
        *(v108 + 12) = v117;
        *(v108 + 10) = v115;
      }

      v107 += 200;
      --v105;
    }

    while (v105);
  }

  if (*v471 == 1)
  {
    v143 = v473;
    MLS.GroupState.validateForExternalCommit(proposals:)(v472, v534);
    if (!v143)
    {
      if (LOBYTE(v534[0]) != 1)
      {

        sub_26BE01654();
        swift_allocError();
        v142 = 20;
        goto LABEL_47;
      }

      goto LABEL_36;
    }

LABEL_34:
  }

  v140 = v473;
  if (*v471)
  {
    goto LABEL_37;
  }

  LODWORD(v534[0]) = *(v558 + v430);
  MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(v472, v534, v556);
  if (v140)
  {
    goto LABEL_34;
  }

  if (LOBYTE(v556[0]))
  {

    sub_26BE01654();
    swift_allocError();
    v142 = 12;
LABEL_47:
    *v141 = v142;
    v141[112] = 3;
    return swift_willThrow();
  }

LABEL_36:
  v473 = 0;
LABEL_37:
  sub_26BE7150C(&v547);
  v544 = v553;
  v545 = v554;
  v546 = v555;
  v540 = v549;
  v541 = v550;
  v542 = v551;
  v543 = v552;
  v538 = v547;
  v539 = v548;
  v144 = v558;
  v145 = v470;
  sub_26BE6FEC8(v558, v470, type metadata accessor for MLS.GroupState);
  v146 = *(v474 + 15);

  *(v145 + v146) = MEMORY[0x277D84F90];
  v147 = v473;
  v148 = sub_26BE5BDA4(v472);
  v473 = v147;
  if (v147)
  {

LABEL_39:

    v149 = v145;
LABEL_40:
    sub_26BE69184(v149, type metadata accessor for MLS.GroupState);
    *(&v534[5] + 8) = v543;
    *(&v534[6] + 8) = v544;
    *(&v534[7] + 8) = v545;
    *(&v534[8] + 8) = v546;
    *(&v534[1] + 8) = v539;
    *(&v534[2] + 8) = v540;
    *(&v534[3] + 8) = v541;
    *(&v534[4] + 8) = v542;
    *&v534[0] = v57;
    *(v534 + 8) = v538;
    v150 = v534;
    return sub_26BE71528(v150);
  }

  v429 = v148;

  LODWORD(v428) = *(v144 + v430);
  v151 = v466;
  v426 = *(v466 + 56);
  v427 = v466 + 56;
  v426(v468, 1, 1, v469);
  v152 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v153 = v467;
  sub_26BE6FEC8(&v471[*(v152 + 20)], v467, type metadata accessor for MLS.GroupState.CommitTypeOptions);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v155 = (*(*(v154 - 8) + 48))(v153, 3, v154);
  if (v155 == 1)
  {
    v424 = v152;
    v164 = 0;
    v165 = v469;
    v166 = v473;
    v167 = v428;
  }

  else
  {
    v156 = v473;
    if (v155)
    {

      sub_26BE01654();
      swift_allocError();
      *v168 = 0xD000000000000036;
      *(v168 + 8) = 0x800000026C02B370;
      *(v168 + 112) = 2;
      swift_willThrow();
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v467, type metadata accessor for MLS.GroupState.CommitTypeOptions);
LABEL_56:
      v175 = v470;
      goto LABEL_57;
    }

    v424 = v152;
    v425 = v106;
    v157 = *(v467 + 7);
    v534[6] = *(v467 + 6);
    v534[7] = v157;
    v158 = *(v467 + 5);
    v534[4] = *(v467 + 4);
    v534[5] = v158;
    *&v536[0] = v467[22];
    v159 = *(v467 + 10);
    v534[9] = *(v467 + 9);
    v535 = v159;
    v534[8] = *(v467 + 8);
    v160 = *(v467 + 1);
    v534[0] = *v467;
    v534[1] = v160;
    v161 = *(v467 + 3);
    v534[2] = *(v467 + 2);
    v534[3] = v161;
    v162 = v467 + *(v154 + 48);
    v467 = *(v151 + 32);
    (v467)(v465, v162, v469);
    v477[6] = *(&v534[7] + 8);
    v477[7] = *(&v534[8] + 8);
    *&v477[8] = *(&v534[9] + 1);
    v477[2] = *(&v534[3] + 8);
    v477[3] = *(&v534[4] + 8);
    v477[4] = *(&v534[5] + 8);
    v477[5] = *(&v534[6] + 8);
    v477[0] = *(&v534[1] + 8);
    v477[1] = *(&v534[2] + 8);
    sub_26BE00758(&v534[1] + 8, v556);
    v163 = v470;
    MLS.TreeKEMPublicKey.addLeaf(_:)(v477, v479);
    if (v156)
    {

      sub_26BE2E01C(v534);

      (*(v151 + 8))(v465, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

      sub_26BE00854(&v534[1] + 8);
      sub_26BE69184(v163, type metadata accessor for MLS.GroupState);
      *(&v556[5] + 8) = v543;
      *(&v556[6] + 8) = v544;
      *(&v556[7] + 8) = v545;
      *(&v556[8] + 8) = v546;
      *(&v556[1] + 8) = v539;
      *(&v556[2] + 8) = v540;
      *(&v556[3] + 8) = v541;
      *(&v556[4] + 8) = v542;
      *&v556[0] = v57;
      *(v556 + 8) = v538;
      return sub_26BE71528(v556);
    }

    v169 = v468;
    sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
    sub_26BE2E01C(v534);
    sub_26BE00854(&v534[1] + 8);
    *(v163 + *(v474 + 13)) = v479[0];
    v165 = v469;
    (v467)(v169, v465, v469);
    v426(v169, 0, 1, v165);
    v164 = 2;
    v166 = 0;
    v167 = 1;
    v106 = v425;
  }

  if (*(v106 + 2) != *(v429 + 16))
  {

    sub_26BE01654();
    swift_allocError();
    *v174 = 13;
    v174[112] = 0;
    swift_willThrow();
    sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
    goto LABEL_56;
  }

  LODWORD(v465) = v164;
  LODWORD(v428) = v167;
  v170 = _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(v472);
  v171 = v461;
  v426(v461, 1, 1, v165);
  v172 = sub_26BE67C10(v171, *(v106 + 2));
  v425 = v106;
  v467 = v172;
  if ((v170 & 1) == 0)
  {

    v534[6] = v544;
    v534[7] = v545;
    v534[8] = v546;
    v534[2] = v540;
    v534[3] = v541;
    v534[4] = v542;
    v534[5] = v543;
    v534[0] = v538;
    v534[1] = v539;
    sub_26BE2E258(v534, &qword_28045E8B0, &qword_26C012560);
    v544 = v553;
    v545 = v554;
    v546 = v555;
    v540 = v549;
    v541 = v550;
    v542 = v551;
    v543 = v552;
    v177 = *v558;
    v538 = v547;
    v539 = v548;
    if ((v177 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      goto LABEL_122;
    }

    v473 = v166;
    LOBYTE(v477[0]) = v177 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v178 = *(&v556[0] + 1);

    *&v556[0] = sub_26BE125AC(v178);
    *(&v556[0] + 1) = v179;
    sub_26C009C5C();
LABEL_61:
    *&v533[104] = v544;
    *&v533[88] = v543;
    *&v533[40] = v540;
    *&v533[24] = v539;
    *&v533[120] = v545;
    *&v533[136] = v546;
    *&v533[56] = v541;
    v461 = v57;
    *v533 = v57;
    *&v533[72] = v542;
    *&v533[8] = v538;
    v556[6] = *&v533[96];
    v556[7] = *&v533[112];
    v556[8] = *&v533[128];
    *&v556[9] = *(&v546 + 1);
    v556[2] = *&v533[32];
    v556[3] = *&v533[48];
    v556[4] = *&v533[64];
    v556[5] = *&v533[80];
    v556[0] = *v533;
    v556[1] = *&v533[16];
    sub_26BE7157C(v556);
    v180 = v558;
    v181 = *(v558 + 1);
    v182 = *(v558 + 2);
    v183 = *(v558 + 3);
    v534[9] = v556[6];
    v535 = v556[7];
    v534[7] = v556[4];
    v534[8] = v556[5];
    *(v537 + 9) = *(v557 + 9);
    v536[1] = v556[9];
    v537[0] = v557[0];
    v536[0] = v556[8];
    v534[3] = v556[0];
    v534[4] = v556[1];
    v534[5] = v556[2];
    v534[6] = v556[3];
    v457 = v183;
    v458 = v181;
    *&v534[0] = v181;
    *(&v534[0] + 1) = v182;
    *&v534[1] = v183;
    DWORD2(v534[1]) = v428;
    BYTE12(v534[1]) = v465;
    v184 = v460;
    *&v534[2] = v462;
    *(&v534[2] + 1) = v460;
    if (v459)
    {
      v185 = 2;
    }

    else
    {
      v185 = 1;
    }

    LODWORD(v450) = v185;
    v186 = v474;
    sub_26BE038A8(v558 + *(v474 + 14), v530);
    LODWORD(v451) = *v180;
    v187 = *(v180 + 1);
    v464 = *(v180 + 2);
    v465 = v187;
    v188 = *(v180 + 5);
    v189 = *(v180 + 12);
    v190 = *(v180 + 7);
    LOWORD(v525) = v180[16];
    v527 = v188;
    v528 = v189;
    v529 = v190;
    v191 = v473;
    v192 = sub_26BE592D0();
    if (v191)
    {
      sub_26BE71588(v533, v477);
      sub_26BE71588(v533, v477);
      sub_26BE00608(v458, v182);
      sub_26BE00608(v462, v184);
      v194 = v464;
      v195 = v465;
      sub_26BE00608(v465, v464);

      sub_26BE71494(v534);
      sub_26BE00258(v195, v194);
      sub_26BE71528(v533);
      (*(v466 + 8))(v463, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
LABEL_66:
      v196 = v470;
LABEL_90:
      __swift_destroy_boxed_opaque_existential_1(v530);
      v263 = v461;

      sub_26BE69184(v196, type metadata accessor for MLS.GroupState);
      *(&v477[5] + 8) = v543;
      *(&v477[6] + 8) = v544;
      *(&v477[7] + 8) = v545;
      *(&v477[8] + 8) = v546;
      *(&v477[1] + 8) = v539;
      *(&v477[2] + 8) = v540;
      *(&v477[3] + 8) = v541;
      *(&v477[4] + 8) = v542;
      *&v477[0] = v263;
      *(v477 + 8) = v538;
      return sub_26BE71528(v477);
    }

    v443 = v182;
    v197 = v180 + *(v186 + 9);
    v199 = *(v197 + 1);
    v198 = *(v197 + 2);
    v200 = *(v180 + *(v186 + 10));
    LOWORD(v515) = v451;
    *(&v515 + 1) = v465;
    *&v516 = v464;
    *(&v516 + 1) = v457;
    *&v517 = v192;
    v451 = v192;
    v457 = v193;
    *(&v517 + 1) = v193;
    *&v518 = v199;
    *(&v518 + 1) = v198;
    v519 = v200;
    v520 = v515;
    v522 = v517;
    v523 = v518;
    v524 = v200;
    v521 = v516;
    v201 = v453;
    v202 = v454;
    v203 = v452;
    v428 = v199;
    v429 = v198;
    if ((v459 & 1) == 0)
    {
      v204 = v465;
      v477[8] = v536[0];
      v477[9] = v536[1];
      v478[0] = v537[0];
      *(v478 + 9) = *(v537 + 9);
      v477[4] = v534[7];
      v477[5] = v534[8];
      v477[6] = v534[9];
      v477[7] = v535;
      v477[0] = v534[3];
      v477[1] = v534[4];
      v477[2] = v534[5];
      v477[3] = v534[6];
      if (!sub_26BE6917C(v477))
      {
        nullsub_1();
        sub_26BE71588(v533, v479);
        sub_26BE71588(v533, v479);
        sub_26BE00608(v458, v443);
        sub_26BE00608(v462, v460);
        sub_26BE00608(v204, v464);
        sub_26BE00608(v451, v457);
        sub_26BE00608(v428, v429);

        sub_26BE01654();
        swift_allocError();
        *v241 = 7;
        *(v241 + 8) = 0u;
        *(v241 + 24) = 0u;
        *(v241 + 40) = 0u;
        *(v241 + 56) = 0u;
        *(v241 + 72) = 0u;
        *(v241 + 88) = 0u;
        *(v241 + 104) = 0;
        *(v241 + 112) = 23;
        swift_willThrow();
        sub_26BE71494(v534);
        sub_26BE00204(&v515);
        sub_26BE71528(v533);
        (*(v466 + 8))(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
        goto LABEL_66;
      }

      nullsub_1();
    }

    v473 = 0;
    v243 = *(v201 + 56);
    v242 = v201 + 56;
    v243(v456, 1, 1, v202);
    v244 = *(v203 + 24);
    v245 = v455;
    v459 = v243;
    v243(&v244[v455], 1, 1, v202);
    v246 = v535;
    *(v245 + 184) = v536[0];
    v247 = v537[0];
    *(v245 + 200) = v536[1];
    *(v245 + 216) = v247;
    *(v245 + 225) = *(v537 + 9);
    v248 = v534[6];
    *(v245 + 120) = v534[7];
    v249 = v534[9];
    *(v245 + 136) = v534[8];
    *(v245 + 152) = v249;
    *(v245 + 168) = v246;
    v250 = v534[2];
    *(v245 + 56) = v534[3];
    v251 = v534[5];
    *(v245 + 72) = v534[4];
    *(v245 + 88) = v251;
    *(v245 + 104) = v248;
    v252 = v534[1];
    *(v245 + 8) = v534[0];
    *(v245 + 24) = v252;
    *v245 = v450;
    *(v245 + 40) = v250;
    sub_26BE71588(v533, v477);
    sub_26BE71588(v533, v477);
    sub_26BE00608(v458, v443);
    sub_26BE00608(v462, v460);
    sub_26BE00608(v465, v464);
    sub_26BE00608(v451, v457);
    sub_26BE00608(v428, v429);

    v465 = v244;
    sub_26BE7170C(v456, &v244[v245], &qword_28045E4E0, &qword_26C015A80);
    v477[2] = v522;
    v477[3] = v523;
    *&v477[4] = v524;
    v477[0] = v520;
    v477[1] = v521;
    v253 = v473;
    v254 = sub_26BF9D0DC(v477);
    if (v253)
    {

      sub_26BE71528(v533);
      (*(v466 + 8))(v463, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
      sub_26BE00204(&v515);
      sub_26BE69184(v245, type metadata accessor for MLS.AuthenticatedContent);
      v196 = v470;
      goto LABEL_90;
    }

    v256 = v254;
    v257 = v255;
    v464 = v242;
    v258 = v531;
    v259 = v532;
    __swift_project_boxed_opaque_existential_1(v530, v531);
    v260 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v256, v257, v258, v259);
    v262 = v466;
    v473 = 0;
    v264 = v260;
    v265 = v261;
    sub_26BE71528(v533);
    sub_26BE00204(&v515);
    sub_26BE00258(v256, v257);
    v266 = v454;
    v267 = *(v449 + 56);
    v268 = v445;
    v269 = &v445[*(v454 + 20)];
    v449 += 56;
    v267(v269, 1, 1, v447);
    *v268 = v264;
    v268[1] = v265;
    v270 = v455;
    v271 = v465;
    sub_26BE2E258(&v465[v455], &qword_28045E4E0, &qword_26C015A80);
    sub_26BE70034(v268, &v271[v270], type metadata accessor for MLS.FramedContentAuthData);
    (v459)(&v271[v270], 0, 1, v266);
    v272 = v448;
    sub_26BE6FEC8(v270, v448, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE69184(v270, type metadata accessor for MLS.AuthenticatedContent);
    __swift_destroy_boxed_opaque_existential_1(v530);
    v273 = v446;
    sub_26BE6FEC8(v272, v446, type metadata accessor for MLS.AuthenticatedContent);
    v274 = v473;
    v275 = v470;
    v276 = v470 + *(v474 + 9);
    sub_26BE2E86C();
    if (v274)
    {

      sub_26BE69184(v273, type metadata accessor for MLS.AuthenticatedContent);
      (*(v262 + 8))(v463, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
      v277 = v461;

      sub_26BE69184(v272, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v275, type metadata accessor for MLS.GroupState);
      *(&v477[5] + 8) = v543;
      *(&v477[6] + 8) = v544;
      *(&v477[7] + 8) = v545;
      *(&v477[8] + 8) = v546;
      *(&v477[1] + 8) = v539;
      *(&v477[2] + 8) = v540;
      *(&v477[3] + 8) = v541;
      *(&v477[4] + 8) = v542;
      *&v477[0] = v277;
      *(v477 + 8) = v538;
      return sub_26BE71528(v477);
    }

    v473 = v267;
    v465 = v276;
    sub_26BE69184(v273, type metadata accessor for MLS.AuthenticatedContent);
    v281 = *(v275 + 3);
    v282 = __OFADD__(v281, 1);
    v283 = v281 + 1;
    if (v282)
    {
      __break(1u);
LABEL_144:
      if (*(v425 + 2))
      {
        LOWORD(v502) = v458;
        v364 = v459;
        *(&v502 + 1) = MEMORY[0x277D84F90];
        *&v503 = v459;
        v365 = v462;
        *(&v503 + 1) = v462;
        *v500 = v425;
        *&v500[8] = 0;
        *&v500[16] = v467;
        *&v500[24] = 0;
        v500[32] = 0;
        sub_26BE00608(v459, v462);

        sub_26BE00608(v364, v365);
        while (1)
        {
          v366 = v433;
          sub_26BE685D4(v433);
          v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          if ((*(*(v367 - 8) + 48))(v366, 1, v367) == 1)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C8, &qword_26C012570);
            v387 = swift_allocObject();
            *(v387 + 16) = xmmword_26C011280;
            v388 = *(&v502 + 1);
            v389 = v503;
            *(v387 + 32) = v502;
            *(v387 + 40) = v388;
            *(v387 + 48) = v389;
            v474 = v387;
            *(v387 + 56) = *(&v389 + 1);

            sub_26BE00608(v389, *(&v389 + 1));

            sub_26BE00258(v389, *(&v389 + 1));
            goto LABEL_158;
          }

          v368 = *(v433 + 144);
          v477[8] = *(v433 + 128);
          v477[9] = v368;
          v478[0] = *(v433 + 160);
          *&v478[1] = *(v433 + 176);
          v369 = *(v433 + 80);
          v477[4] = *(v433 + 64);
          v477[5] = v369;
          v370 = *(v433 + 112);
          v477[6] = *(v433 + 96);
          v477[7] = v370;
          v371 = *(v433 + 16);
          v477[0] = *v433;
          v477[1] = v371;
          v372 = *(v433 + 48);
          v477[2] = *(v433 + 32);
          v477[3] = v372;
          v373 = v432;
          sub_26BE33F30(v433 + *(v367 + 48), v432, &qword_28045E708, &unk_26C011370);
          v486 = v477[8];
          v487 = v477[9];
          v488 = v478[0];
          v489 = *&v478[1];
          v482 = v477[4];
          v483 = v477[5];
          v484 = v477[6];
          v485 = v477[7];
          v479[0] = v477[0];
          v479[1] = v477[1];
          v480 = v477[2];
          v481 = v477[3];
          v374 = v473;
          sub_26BF2AA34(v479, &v465[v464], v373, MEMORY[0x277D84F90]);
          v473 = v374;
          if (v374)
          {
            break;
          }

          sub_26BE2E258(v432, &qword_28045E708, &unk_26C011370);
          sub_26BE2E01C(v477);
        }

        v396 = v459;
        v397 = v462;
        sub_26BE00258(v459, v462);
        sub_26BE00258(v396, v397);
        sub_26BE2E258(v432, &qword_28045E708, &unk_26C011370);

        v398 = v503;

        sub_26BE00258(v398, *(&v398 + 1));
        sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
        v460(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
        goto LABEL_162;
      }

      sub_26BE00608(v459, v462);

      v474 = MEMORY[0x277D84F90];
LABEL_158:
      v390 = *(v558 + v430);
      v508 = v544;
      v509 = v545;
      v510 = v546;
      v504 = v540;
      v505 = v541;
      v506 = v542;
      v507 = v543;
      v502 = v538;
      v503 = v539;
      LOWORD(v475) = *v558;
      sub_26BE2E1F0(&v502, v477, &qword_28045E8B0, &qword_26C012560);
      v391 = v473;
      v392 = sub_26BF2F140(&v475);
      if (!v391)
      {
        *&v500[35] = v504;
        *&v500[19] = v503;
        *&v500[99] = v508;
        *&v500[83] = v507;
        *&v500[115] = v509;
        *&v500[131] = v510;
        *&v500[51] = v505;
        v501 = 0;
        *&v500[67] = v506;
        *&v500[3] = v502;
        *&v477[0] = v472;
        DWORD2(v477[0]) = v390;
        BYTE12(v477[0]) = 0;
        *(&v477[7] + 13) = *&v500[112];
        *(&v477[6] + 13) = *&v500[96];
        *(&v477[8] + 13) = *&v500[128];
        HIDWORD(v477[9]) = HIDWORD(v510);
        *(&v477[2] + 13) = *&v500[32];
        *(&v477[3] + 13) = *&v500[48];
        *(&v477[4] + 13) = *&v500[64];
        *(&v477[5] + 13) = *&v500[80];
        *(v477 + 13) = *v500;
        *(&v477[1] + 13) = *&v500[16];
        *&v478[0] = v392;
        *(&v478[0] + 1) = v393;
        v486 = v477[8];
        v487 = v477[9];
        v488 = v478[0];
        v482 = v477[4];
        v483 = v477[5];
        v484 = v477[6];
        v485 = v477[7];
        v479[0] = v477[0];
        v479[1] = v477[1];
        v480 = v477[2];
        v481 = v477[3];
        sub_26BF91664(v479, v470, v496);
        v473 = 0;

        v400 = v459;
        v401 = v462;
        sub_26BE00258(v459, v462);
        sub_26BE00258(v400, v401);
        sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
        v460(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
        LOBYTE(v400) = v497;
        v402 = v498;
        v403 = v499;
        v404 = v431;
        sub_26BE70034(v438, v431, type metadata accessor for MLS.MLSMessage);
        v405 = type metadata accessor for MLS.GroupState.CommitOutput(0);
        v406 = v470;
        sub_26BE6FEC8(v470, v404 + v405[6], type metadata accessor for MLS.GroupState);
        *(v404 + v405[5]) = v474;
        v407 = v404 + v405[7];
        v408 = *&v496[16];
        *v407 = *v496;
        *(v407 + 16) = v408;
        *(v407 + 32) = v400;
        *(v407 + 40) = v402;
        *(v407 + 48) = v403;
        v409 = (v404 + v405[8]);
        v410 = v477[9];
        v409[8] = v477[8];
        v409[9] = v410;
        v409[10] = v478[0];
        v411 = v477[5];
        v409[4] = v477[4];
        v409[5] = v411;
        v412 = v477[7];
        v409[6] = v477[6];
        v409[7] = v412;
        v413 = v477[1];
        *v409 = v477[0];
        v409[1] = v413;
        v414 = v477[3];
        v409[2] = v477[2];
        v409[3] = v414;
        sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v406, type metadata accessor for MLS.GroupState);
        v492 = v543;
        v493 = v544;
        v494 = v545;
        v495 = v546;
        *&v490[24] = v539;
        *&v490[40] = v540;
        *&v490[56] = v541;
        v491 = v542;
        *v490 = v461;
        *&v490[8] = v538;
LABEL_163:
        v150 = v490;
        return sub_26BE71528(v150);
      }

      sub_26BE2E258(&v502, &qword_28045E8B0, &qword_26C012560);

      v394 = v459;
      v395 = v462;
      sub_26BE00258(v459, v462);
      sub_26BE00258(v394, v395);
      sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
      sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
      v460(v463, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

      sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
      sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
      *(&v477[5] + 8) = v543;
      *(&v477[6] + 8) = v544;
      *(&v477[7] + 8) = v545;
      *(&v477[8] + 8) = v546;
      *(&v477[1] + 8) = v539;
      *(&v477[2] + 8) = v540;
      *(&v477[3] + 8) = v541;
      *(&v477[4] + 8) = v542;
      *&v477[0] = v461;
      *(v477 + 8) = v538;
      return sub_26BE71528(v477);
    }

    *(v275 + 3) = v283;
    sub_26BE6250C(v463, v468);
    v299 = v275 + *(v474 + 11);
    v300 = *(v465 + 1);
    v301 = *(v465 + 2);
    v302 = *(v299 + 24);
    v303 = *(v299 + 32);
    LOBYTE(v479[0]) = *v299;
    *(v479 + 8) = *(v299 + 8);
    *(&v479[1] + 1) = v302;
    *&v480 = v303;
    v462 = type metadata accessor for MLS.KeySchedule(0);
    v304 = *(v462 + 48);
    v305 = *(v466 + 16);
    v464 = v299;
    v305(v441, v299 + v304, v469);
    sub_26BE715E4(&qword_28045E8B8, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);

    v306 = v444;
    sub_26C009C5C();
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v306, v300, v301);
    v308 = *(v466 + 8);
    v466 += 8;
    v460 = v308;
    v308(v444, v469);

    v309 = v448 + *(v452 + 24);
    if (!(*(v453 + 48))(v309, 1, v454))
    {
      v310 = *(v454 + 20);
      sub_26BE2E258(v309 + v310, &qword_28045E4E8, &qword_26C012550);
      sub_26BE6FEC8(v442, v309 + v310, type metadata accessor for MLS.Cryptography.MACTag);
      v473((v309 + v310), 0, 1, v447);
    }

    sub_26BE6FEC8(v448, v440, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE2E9FC();
    sub_26BE69184(v440, type metadata accessor for MLS.AuthenticatedContent);
    v311 = v439;
    sub_26BE6FEC8(v448, v439, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE67D48(v311, v438);
    sub_26BE69184(v439, type metadata accessor for MLS.AuthenticatedContent);
    LODWORD(v455) = *v470;
    v312 = *(v470 + 2);
    v458 = *(v470 + 1);
    v459 = v312;
    v454 = *(v470 + 3);
    v313 = *(v470 + 5);
    v314 = *(v470 + 12);
    v315 = *(v470 + 7);
    LOWORD(v511) = v470[16];
    v512 = v313;
    v513 = v314;
    v514 = v315;
    v456 = sub_26BE592D0();
    v457 = v316;
    v473 = 0;
LABEL_122:
    v319 = *(v465 + 1);
    v318 = *(v465 + 2);
    v320 = *(v470 + *(v474 + 10));
    v321 = v424;
    v322 = *&v471[*(v424 + 36)];
    v323 = v434;
    v324 = v437;
    sub_26BE6FEC8(v442, v437 + *(v434 + 24), type metadata accessor for MLS.Cryptography.MACTag);
    v325 = *(v558 + v430);
    *v324 = v455;
    v326 = v459;
    *(v324 + 8) = v458;
    *(v324 + 16) = v326;
    v328 = v456;
    v327 = v457;
    *(v324 + 24) = v454;
    *(v324 + 32) = v328;
    *(v324 + 40) = v327;
    *(v324 + 48) = v319;
    v453 = v318;
    v454 = v319;
    *(v324 + 56) = v318;
    *(v324 + 64) = v320;
    v455 = v320;
    v465 = v322;
    *(v324 + 72) = v322;
    *(v324 + *(v323 + 28)) = v325;
    *(v324 + *(v323 + 32)) = xmmword_26C00BBD0;
    v57 = v321;
    if (v471[*(v321 + 28)])
    {
      sub_26BE00608(v456, v457);
      sub_26BE00608(v458, v459);
      sub_26BE00608(v454, v453);
    }

    else
    {
      v336 = *(v470 + 5);
      v337 = *(v470 + 12);
      v338 = *(v470 + 7);
      LOWORD(v479[0]) = v470[16];
      *(&v479[0] + 1) = v336;
      LODWORD(v479[1]) = v337;
      *(&v479[1] + 1) = v338;
      sub_26BE00608(v456, v457);
      sub_26BE00608(v458, v459);
      sub_26BE00608(v454, v453);

      v339 = v473;
      MLS.TreeKEMPublicKey.rawRepresentation.getter();
      if (v339)
      {

        sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
        v460(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
        v342 = v461;

        sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
        *(&v477[5] + 8) = v543;
        *(&v477[6] + 8) = v544;
        *(&v477[7] + 8) = v545;
        *(&v477[8] + 8) = v546;
        *(&v477[1] + 8) = v539;
        *(&v477[2] + 8) = v540;
        *(&v477[3] + 8) = v541;
        *(&v477[4] + 8) = v542;
        *&v477[0] = v342;
        *(v477 + 8) = v538;
        return sub_26BE71528(v477);
      }

      MLS.RatchetTree.init(rawValue:)(v340, v341, v490);
      *&v479[0] = *v490;
      MLS.RatchetTree.rawValue.getter();
      v473 = 0;
      v376 = v375;
      v378 = v377;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v465 = sub_26BEEBD8C(0, *(v465 + 2) + 1, 1, v465);
      }

      v381 = *(v465 + 2);
      v380 = *(v465 + 3);
      if (v381 >= v380 >> 1)
      {
        v465 = sub_26BEEBD8C((v380 > 1), v381 + 1, 1, v465);
      }

      v382 = v465;
      *(v465 + 2) = v381 + 1;
      v383 = &v382[24 * v381];
      *(v383 + 16) = 2;
      *(v383 + 5) = v376;
      *(v383 + 6) = v378;
      *(v437 + 72) = v382;
    }

    v329 = v470;
    v330 = *(v470 + 5);
    v331 = *(v470 + 12);
    v332 = *(v470 + 7);
    LOWORD(v479[0]) = v470[16];
    *(&v479[0] + 1) = v330;
    LODWORD(v479[1]) = v331;
    *(&v479[1] + 1) = v332;
    v333 = *(v474 + 14);
    *v490 = *(v470 + *(v474 + 13));

    v334 = v473;
    MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(v479, v490, (v329 + v333));
    v231 = v334;
    if (v334)
    {

      sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
      sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
      v460(v463, v469);
      sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
      v335 = v461;

      sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
      *(&v477[5] + 8) = v543;
      *(&v477[6] + 8) = v544;
      *(&v477[7] + 8) = v545;
      *(&v477[8] + 8) = v546;
      *(&v477[1] + 8) = v539;
      *(&v477[2] + 8) = v540;
      *(&v477[3] + 8) = v541;
      *(&v477[4] + 8) = v542;
      *&v477[0] = v335;
      *(v477 + 8) = v538;
      return sub_26BE71528(v477);
    }

    goto LABEL_132;
  }

  sub_26BE2E1F0(v464 + 16, v534, &qword_28045E468, &qword_26C00ECA0);
  if (*(&v534[1] + 1))
  {
    sub_26BE03890(v534, &v502);
    v173 = v474;
  }

  else
  {
    v173 = v474;
    sub_26BE038A8(v558 + *(v474 + 14), &v502);
    if (*(&v534[1] + 1))
    {
      sub_26BE2E258(v534, &qword_28045E468, &qword_26C00ECA0);
    }
  }

  v205 = v470;
  v511 = *(v470 + *(v173 + 13));
  sub_26C009C3C();
  v461 = v530[0];
  v458 = v530[1];
  v206 = *(v205 + 1);
  *(&v422 + 1) = *(v205 + 2);
  v423 = v206;
  v207 = v464;
  v208 = *(v464 + 8);
  v209 = 0x3000000000000000;
  if ((~v208 & 0x3000000000000000) == 0)
  {
    v473 = v166;
    *&v422 = 0;
    goto LABEL_74;
  }

  *&v477[0] = *v464;
  v218 = *&v477[0];
  *(&v477[0] + 1) = v208;
  sub_26BE04890(*&v477[0], v208);
  v219 = MLS.Identity.Credential.serializedRepresentation.getter();
  if (v166)
  {

    sub_26BE00258(v461, v458);

    __swift_destroy_boxed_opaque_existential_1(&v502);
    sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
    sub_26BE7162C(v218, v208);

    goto LABEL_56;
  }

  MLS.Credential.init(rawValue:)(v219, v220, v556);
  v473 = 0;
  sub_26BE7162C(v218, v208);
  v209 = *(&v556[0] + 1);
  *&v422 = *&v556[0];
  v207 = v464;
LABEL_74:
  v210 = v207[7];
  v211 = v207[8];
  v212 = v207[10];
  v420 = v207[9];
  v421 = v212;
  v214 = v207[11];
  v213 = v207[12];
  sub_26BE59D48(v210, v211, v420, v212, v214);

  sub_26BE7162C(0, 0x3000000000000000uLL);
  sub_26BE701EC(0, 0, 0, 0, 0);
  *v490 = v422;
  *&v490[8] = v209;
  *&v490[16] = v210;
  *&v490[24] = v211;
  *&v490[32] = v420;
  *&v490[40] = v421;
  *&v490[48] = v214;
  *&v490[56] = v213;
  v145 = v470;
  v215 = v458;
  v216 = v461;
  v217 = v473;
  MLS.TreeKEMPublicKey.update(from:leafSecret:groupID:signaturePrivateKey:leafNodeOptions:)(&v511, v461, v458, v423, *(&v422 + 1), &v502, v490, v457);
  v473 = v217;
  if (v217)
  {

    sub_26BE00258(v216, v215);

    v556[0] = *v490;
    v556[1] = *&v490[16];
    v556[2] = *&v490[32];
    v556[3] = *&v490[48];
    sub_26BE71654(v556);
    __swift_destroy_boxed_opaque_existential_1(&v502);
    sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

    goto LABEL_39;
  }

  *v500 = *v490;
  *&v500[16] = *&v490[16];
  *&v500[32] = *&v490[32];
  *&v500[48] = *&v490[48];
  sub_26BE71654(v500);
  sub_26BE00258(v216, v215);
  sub_26BE2E1F0(v464 + 16, v556, &qword_28045E468, &qword_26C00ECA0);
  if (*(&v556[1] + 1))
  {
    sub_26BE03890(v556, v534);
    v221 = *(v474 + 14);
    v222 = v470;
    __swift_destroy_boxed_opaque_existential_1((v470 + v221));
    sub_26BE03890(v534, v222 + v221);
  }

  else
  {
    sub_26BE2E258(v556, &qword_28045E468, &qword_26C00ECA0);
    v222 = v470;
  }

  v223 = v473;
  LODWORD(v458) = *v222;
  v224 = *(v222 + 2);
  v464 = *(v222 + 1);
  v225 = *(v222 + 3);
  v226 = *(v222 + 5);
  v227 = *(v222 + 12);
  v228 = *(v222 + 7);
  LOWORD(v520) = v222[16];
  *(&v520 + 1) = v226;
  LODWORD(v521) = v227;
  *(&v521 + 1) = v228;
  v229 = sub_26BE592D0();
  v231 = v223;
  if (!v223)
  {
    v232 = v225 + 1;
    if (__OFADD__(v225, 1))
    {
LABEL_131:
      __break(1u);
LABEL_132:

      v343 = *(v462 + 20);
      LOWORD(v479[0]) = *v437;
      v465 = v343;
      v459 = static MLS.Welcome.encryptGroupInfo(ciphersuiteID:groupInfo:joinerSecret:preSharedKeys:)(v479, v437, &v343[v464], MEMORY[0x277D84F90]);
      v462 = v344;
      v473 = v231;
      if (v231)
      {

        sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
        v460(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
        v317 = v461;

        sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
        *(&v477[5] + 8) = v543;
        *(&v477[6] + 8) = v544;
        *(&v477[7] + 8) = v545;
        *(&v477[8] + 8) = v546;
        *(&v477[1] + 8) = v539;
        *(&v477[2] + 8) = v540;
        *(&v477[3] + 8) = v541;
        *(&v477[4] + 8) = v542;
        *&v477[0] = v317;
        *(v477 + 8) = v538;
        v150 = v477;
        return sub_26BE71528(v150);
      }

      LODWORD(v458) = *v558;
      if (v471[*(v57 + 8)] == 1)
      {
        *v500 = v425;
        *&v500[8] = 0;
        *&v500[16] = v467;
        *&v500[24] = 0;
        v500[32] = 0;
        sub_26BE00608(v459, v462);

        v474 = MEMORY[0x277D84F90];
        while (1)
        {
          v345 = v436;
          sub_26BE685D4(v436);
          v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          if ((*(*(v346 - 8) + 48))(v345, 1, v346) == 1)
          {

            goto LABEL_158;
          }

          v347 = *(v436 + 144);
          v477[8] = *(v436 + 128);
          v477[9] = v347;
          v478[0] = *(v436 + 160);
          *&v478[1] = *(v436 + 176);
          v348 = *(v436 + 80);
          v477[4] = *(v436 + 64);
          v477[5] = v348;
          v349 = *(v436 + 112);
          v477[6] = *(v436 + 96);
          v477[7] = v349;
          v350 = *(v436 + 16);
          v477[0] = *v436;
          v477[1] = v350;
          v351 = *(v436 + 48);
          v477[2] = *(v436 + 32);
          v477[3] = v351;
          v352 = v435;
          sub_26BE33F30(v436 + *(v346 + 48), v435, &qword_28045E708, &unk_26C011370);
          LOWORD(v502) = v458;
          v353 = MEMORY[0x277D84F90];
          v354 = v459;
          *(&v502 + 1) = MEMORY[0x277D84F90];
          *&v503 = v459;
          v355 = v462;
          *(&v503 + 1) = v462;
          v486 = v477[8];
          v487 = v477[9];
          v488 = v478[0];
          v489 = *&v478[1];
          v482 = v477[4];
          v483 = v477[5];
          v484 = v477[6];
          v485 = v477[7];
          v479[0] = v477[0];
          v479[1] = v477[1];
          v480 = v477[2];
          v481 = v477[3];

          sub_26BE00608(v354, v355);
          v356 = v473;
          sub_26BF2AA34(v479, &v465[v464], v352, v353);
          v473 = v356;
          if (v356)
          {
            break;
          }

          LODWORD(v471) = v502;
          v357 = v503;
          v358 = *(&v502 + 1);

          sub_26BE00608(v357, *(&v357 + 1));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v474 = sub_26BEED214(0, *(v474 + 2) + 1, 1, v474);
          }

          v360 = *(v474 + 2);
          v359 = *(v474 + 3);
          if (v360 >= v359 >> 1)
          {
            v474 = sub_26BEED214((v359 > 1), v360 + 1, 1, v474);
          }

          sub_26BE2E01C(v477);
          v361 = v503;

          sub_26BE00258(v361, *(&v361 + 1));
          sub_26BE2E258(v435, &qword_28045E708, &unk_26C011370);
          v362 = v474;
          *(v474 + 2) = v360 + 1;
          v363 = &v362[32 * v360];
          *(v363 + 16) = v471;
          *(v363 + 5) = v358;
          *(v363 + 3) = v357;
        }

        v384 = v459;
        v385 = v462;
        sub_26BE00258(v459, v462);
        sub_26BE00258(v384, v385);
        v386 = v503;

        sub_26BE00258(v386, *(&v386 + 1));
        sub_26BE2E258(v435, &qword_28045E708, &unk_26C011370);

        sub_26BE69184(v438, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v442, type metadata accessor for MLS.Cryptography.MACTag);
        v460(v463, v469);
        sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

LABEL_162:
        sub_26BE69184(v437, type metadata accessor for MLS.GroupInfo);
        v399 = v461;

        sub_26BE2E01C(v477);
        sub_26BE69184(v448, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
        v492 = v543;
        v493 = v544;
        v494 = v545;
        v495 = v546;
        *&v490[24] = v539;
        *&v490[40] = v540;
        *&v490[56] = v541;
        v491 = v542;
        *v490 = v399;
        *&v490[8] = v538;
        goto LABEL_163;
      }

      goto LABEL_144;
    }

    v233 = *(v474 + 10);
    v234 = v470 + *(v474 + 9);
    v235 = *(v234 + 2);
    v423 = *(v234 + 1);
    v236 = *(v470 + v233);
    LOWORD(v479[0]) = v458;
    v237 = v464;
    *(&v479[0] + 1) = v464;
    *&v479[1] = v224;
    *(&v479[1] + 1) = v232;
    *&v480 = v229;
    *(&v480 + 1) = v230;
    *&v481 = v423;
    *(&v481 + 1) = v235;
    *&v482 = v236;
    *v533 = xmmword_26C00BBD0;
    *&v533[16] = 0;
    v556[2] = v480;
    v556[3] = v481;
    *&v556[4] = v236;
    v556[0] = v479[0];
    v556[1] = v479[1];
    *&v422 = v229;
    *(&v422 + 1) = v230;
    v420 = v232;
    sub_26BE00608(v229, v230);
    v421 = v224;
    v238 = v224;
    v239 = v235;
    v240 = v423;
    sub_26BE00608(v237, v238);
    sub_26BE00608(v240, v239);

    sub_26BE001A8(v479, v534);
    sub_26BFAF494(v556);
    v418 = v239;
    v419 = v236;
    v278 = *v533;
    v279 = *&v533[8];
    v280 = *&v533[8] >> 62;
    v473 = 0;
    if ((*&v533[8] >> 62) > 1)
    {
      if (v280 != 2)
      {
LABEL_104:
        v285 = sub_26C00909C();
        v287 = v286;
        sub_26BE00204(v479);
        sub_26BE00258(v278, v279);
        v288 = *(v470 + 5);
        v289 = *(v470 + 12);
        v290 = *(v470 + 7);
        LOWORD(v515) = v470[16];
        *(&v515 + 1) = v288;
        LODWORD(v516) = v289;
        *(&v516 + 1) = v290;

        v291 = v473;
        MLS.TreeKEMPublicKey.encap(privateKey:context:exceptLeaves:)(v457, v285, v287, v429, v476);
        v473 = v291;
        if (v291)
        {

          sub_26BE00258(v285, v287);

          LOWORD(v556[0]) = v458;
          *(v556 + 2) = v525;
          WORD3(v556[0]) = v526;
          *(&v556[0] + 1) = v464;
          *&v556[1] = v421;
          *(&v556[1] + 1) = v420;
          v556[2] = v422;
          *&v556[3] = v423;
          *(&v556[3] + 1) = v418;
          *&v556[4] = v419;
          sub_26BE00204(v556);
          sub_26BE69184(v457, type metadata accessor for MLS.TreeKEMPrivateKey);
          __swift_destroy_boxed_opaque_existential_1(&v502);
          sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

          v149 = v470;
          goto LABEL_40;
        }

        v416 = v285;
        v417 = v287;
        v461 = v57;

        v292 = v457;
        sub_26BE716A8(v457, v470 + *(v474 + 8));
        v477[6] = v476[6];
        v477[7] = v476[7];
        v477[8] = v476[8];
        v477[2] = v476[2];
        v477[3] = v476[3];
        v477[4] = v476[4];
        v477[5] = v476[5];
        v477[0] = v476[0];
        v477[1] = v476[1];
        nullsub_1();
        v556[6] = v544;
        v556[7] = v545;
        v556[8] = v546;
        v556[2] = v540;
        v556[3] = v541;
        v556[4] = v542;
        v556[5] = v543;
        v556[0] = v538;
        v556[1] = v539;
        sub_26BE2E258(v556, &qword_28045E8B0, &qword_26C012560);
        v540 = v477[2];
        v541 = v477[3];
        v545 = v477[7];
        v546 = v477[8];
        v543 = v477[5];
        v544 = v477[6];
        v542 = v477[4];
        v538 = v477[0];
        v539 = v477[1];
        (*(v466 + 16))(v463, v292 + *(v443 + 32), v469);
        v293 = *(v429 + 16);
        if (v293)
        {
          v294 = 0;
          v57 = v490;
          v231 = v473;
          while (v294 < v293)
          {
            v475 = *(v429 + 4 * v294 + 32);
            MLS.TreeKEMPrivateKey.sharedPathSecret(to:)(&v475, v496);
            if (v231)
            {

              sub_26BE00258(v416, v417);

              *v533 = v458;
              *&v533[2] = v525;
              *&v533[6] = v526;
              *&v533[8] = v464;
              *&v533[16] = v421;
              *&v533[24] = v420;
              *&v533[32] = v422;
              *&v533[48] = v423;
              *&v533[56] = v418;
              *&v533[64] = v419;
              sub_26BE00204(v533);
              sub_26BE69184(v457, type metadata accessor for MLS.TreeKEMPrivateKey);
              __swift_destroy_boxed_opaque_existential_1(&v502);
              (*(v466 + 8))(v463, v469);
              sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);
              v307 = v461;

              sub_26BE69184(v470, type metadata accessor for MLS.GroupState);
              *(&v534[5] + 8) = v543;
              *(&v534[6] + 8) = v544;
              *(&v534[7] + 8) = v545;
              *(&v534[8] + 8) = v546;
              v176 = v538;
              *(&v534[1] + 8) = v539;
              *(&v534[2] + 8) = v540;
              *(&v534[3] + 8) = v541;
              *(&v534[4] + 8) = v542;
              *&v534[0] = v307;
              goto LABEL_58;
            }

            v295 = *&v496[8];
            v296 = *&v496[16];
            v534[0] = *&v496[8];
            sub_26BE00608(*&v496[8], *&v496[16]);
            v297 = v451;
            sub_26C009C5C();
            v426(v297, 0, 1, v469);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v467 = sub_26BE588AC(v467);
            }

            sub_26BE00258(v295, v296);
            if (v294 >= v467[2])
            {
              goto LABEL_130;
            }

            sub_26BE7170C(v451, v467 + ((*(v450 + 80) + 32) & ~*(v450 + 80)) + *(v450 + 72) * v294, &qword_28045E708, &unk_26C011370);
            v293 = *(v429 + 16);
            ++v294;
            v298 = v457;
            if (v294 == v293)
            {
              goto LABEL_116;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v231 = v473;
        v298 = v457;
LABEL_116:
        v473 = v231;
        sub_26BE00258(v416, v417);

        LOWORD(v534[0]) = v458;
        *(v534 + 2) = v525;
        WORD3(v534[0]) = v526;
        *(&v534[0] + 1) = v464;
        *&v534[1] = v421;
        *(&v534[1] + 1) = v420;
        v534[2] = v422;
        *&v534[3] = v423;
        *(&v534[3] + 1) = v418;
        *&v534[4] = v419;
        sub_26BE00204(v534);
        sub_26BE69184(v298, type metadata accessor for MLS.TreeKEMPrivateKey);
        __swift_destroy_boxed_opaque_existential_1(&v502);
        v57 = v461;
        goto LABEL_61;
      }

      v284 = *(*v533 + 24);
    }

    else
    {
      if (!v280)
      {
        goto LABEL_104;
      }

      v284 = *v533 >> 32;
    }

    if (v284 < 0)
    {
      __break(1u);
    }

    goto LABEL_104;
  }

  sub_26BE69184(v457, type metadata accessor for MLS.TreeKEMPrivateKey);
  __swift_destroy_boxed_opaque_existential_1(&v502);
  sub_26BE2E258(v468, &qword_28045E708, &unk_26C011370);

  v175 = v222;
LABEL_57:
  sub_26BE69184(v175, type metadata accessor for MLS.GroupState);
  *(&v534[5] + 8) = v543;
  *(&v534[6] + 8) = v544;
  *(&v534[7] + 8) = v545;
  *(&v534[8] + 8) = v546;
  v176 = v538;
  *(&v534[1] + 8) = v539;
  *(&v534[2] + 8) = v540;
  *(&v534[3] + 8) = v541;
  *(&v534[4] + 8) = v542;
  *&v534[0] = v57;
LABEL_58:
  *(v534 + 8) = v176;
  return sub_26BE71528(v534);
}

uint64_t sub_26BE67C10(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
      v4 = sub_26C00A74C();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_26BE2E1F0(v3, v4 + v6, &qword_28045E708, &unk_26C011370);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_26BE2E1F0(v3, v9, &qword_28045E708, &unk_26C011370);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_26BE2E258(v3, &qword_28045E708, &unk_26C011370);
    return v4;
  }

  return result;
}

void sub_26BE67D48(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v63 - v6;
  v7 = sub_26C009C8C();
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.AuthenticatedContent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v72);
  v75 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v77 = a1;
  v25 = *a1;
  if (v25 == 2)
  {
    v71 = a2;
    v98 = *v2;
    v45 = type metadata accessor for MLS.GroupState(0);
    v46 = *(v2 + v45[19]);
    if (v46)
    {
      swift_beginAccess();
      v47 = *(v46 + 49);
      swift_beginAccess();
      sub_26BE295A0(v46 + 40, &v90);
      LOBYTE(v46) = v95;
      if (v95 == 2)
      {
        *(&v82 + 1) = &type metadata for SwiftMLSFeatureFlags;
        *&v83 = sub_26BE295D8();
        LOBYTE(v81) = 3;
        v48 = sub_26C00929C();
        __swift_destroy_boxed_opaque_existential_1(&v81);
        if (v48)
        {
          LOBYTE(v46) = 1;
        }

        else
        {
          LOBYTE(v46) = os_variant_allows_internal_security_policies() ^ 1;
        }
      }

      sub_26BE29710(&v90);
    }

    else
    {
      v47 = 1;
    }

    v50 = v2 + v45[11];
    v51 = type metadata accessor for MLS.KeySchedule(0);
    v52 = v78;
    static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)(v77, &v98, v2 + v45[12], &v50[*(v51 + 28)], v47, v46 & 1, v96);
    if (!v52)
    {
      v53 = v96[3];
      v22[2] = v96[2];
      v22[3] = v53;
      v22[4] = v96[4];
      v54 = v96[1];
      *v22 = v96[0];
      v22[1] = v54;
      swift_storeEnumTagMultiPayload();
      sub_26BE70034(v22, v71, type metadata accessor for MLS.MLSMessage.Inner);
    }
  }

  else
  {
    if (v25 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v49 = 3;
      v49[112] = 0;
      swift_willThrow();
      return;
    }

    v66 = &v63 - v24;
    v67 = v23;
    v71 = a2;
    v65 = *v2;
    v26 = type metadata accessor for MLS.GroupState(0);
    v27 = v2 + v26[11];
    v28 = type metadata accessor for MLS.KeySchedule(0);
    v29 = v76;
    (*(v76 + 16))(v18, &v27[*(v28 + 52)], v7);
    (*(v29 + 56))(v18, 0, 1, v7);
    v97 = *v2;
    v30 = *(v2 + 1);
    v69 = *(v2 + 2);
    v70 = v30;
    v68 = *(v2 + 3);
    v31 = *(v2 + 5);
    v32 = *(v2 + 12);
    v33 = *(v2 + 7);
    v86 = v2[16];
    v87 = v31;
    v88 = v32;
    v89 = v33;
    v34 = v78;
    v35 = sub_26BE592D0();
    if (v34)
    {
      sub_26BE2E258(v18, &qword_28045E708, &unk_26C011370);
      return;
    }

    v37 = v26[10];
    v38 = v2 + v26[9];
    v40 = *(v38 + 1);
    v39 = *(v38 + 2);
    v78 = v40;
    v64 = v39;
    v41 = *(v2 + v37);
    LOWORD(v81) = v97;
    *(&v81 + 1) = v70;
    *&v82 = v69;
    *(&v82 + 1) = v68;
    *&v83 = v35;
    *(&v83 + 1) = v36;
    *&v84 = v40;
    *(&v84 + 1) = v39;
    v85 = v41;
    v94 = v41;
    v92 = v83;
    v93 = v84;
    v90 = v81;
    v91 = v82;
    v42 = v35;
    v43 = v36;
    sub_26BE6FEC8(v77, v11, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE00608(v42, v43);
    sub_26BE00608(v70, v69);
    sub_26BE00608(v78, v64);

    v44 = v75;
    sub_26BF9D400(v11, v75);
    if (*(v44 + 28))
    {
      sub_26BE00204(&v81);
      sub_26BE2E258(v18, &qword_28045E708, &unk_26C011370);
      v55 = v71;
LABEL_18:
      v56 = v66;
      sub_26BE70034(v44, v66, type metadata accessor for MLS.PublicMessage);
      swift_storeEnumTagMultiPayload();
      sub_26BE70034(v56, v55, type metadata accessor for MLS.MLSMessage.Inner);
      return;
    }

    sub_26BE2E1F0(v18, v16, &qword_28045E708, &unk_26C011370);
    v57 = v76;
    v58 = (*(v76 + 48))(v16, 1, v7);
    v55 = v71;
    if (v58 != 1)
    {
      v60 = v73;
      (*(v57 + 32))(v73, v16, v7);
      v98 = v65;
      v79[2] = v92;
      v79[3] = v93;
      v80 = v94;
      v79[0] = v90;
      v79[1] = v91;
      sub_26BF9D7A8(&v98, v60, v79, v74);
      (*(v57 + 8))(v60, v7);
      sub_26BE2E258(v18, &qword_28045E708, &unk_26C011370);
      sub_26BE00204(&v81);
      v61 = type metadata accessor for MLS.Cryptography.MACTag(0);
      v62 = v74;
      (*(*(v61 - 8) + 56))(v74, 0, 1, v61);
      sub_26BE7170C(v62, v44 + *(v72 + 24), &qword_28045E4E8, &qword_26C012550);
      goto LABEL_18;
    }

    sub_26BE2E258(v16, &qword_28045E708, &unk_26C011370);
    sub_26BE01654();
    swift_allocError();
    *v59 = 27;
    v59[112] = 0;
    swift_willThrow();
    sub_26BE00204(&v81);
    sub_26BE2E258(v18, &qword_28045E708, &unk_26C011370);
    sub_26BE69184(v44, type metadata accessor for MLS.PublicMessage);
  }
}

void sub_26BE685D4(uint64_t a1@<X8>)
{
  if (*(v1 + 32) != 1)
  {
    v3 = *(v1 + 8);
    v4 = *(*v1 + 16);
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        __break(1u);
      }

      else
      {
        v5 = *v1 + 184 * v3;
        v6 = *(v5 + 32);
        v7 = *(v5 + 48);
        v8 = *(v5 + 80);
        v33 = *(v5 + 64);
        v34 = v8;
        v31 = v6;
        v32 = v7;
        v9 = *(v5 + 96);
        v10 = *(v5 + 112);
        v11 = *(v5 + 144);
        v37 = *(v5 + 128);
        v38 = v11;
        v35 = v9;
        v36 = v10;
        v12 = *(v5 + 160);
        v13 = *(v5 + 176);
        v14 = *(v5 + 192);
        v42 = *(v5 + 208);
        v40 = v13;
        v41 = v14;
        v39 = v12;
        *(v1 + 8) = v3 + 1;
        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        v17 = *(v16 + 16);
        if (v15 == v17)
        {
          goto LABEL_5;
        }

        if (v15 < v17)
        {
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
          v21 = v15 + 1;
          v22 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15;
          *(v1 + 24) = v21;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          v24 = *(v23 + 48);
          v25 = v40;
          *(a1 + 128) = v39;
          *(a1 + 144) = v25;
          *(a1 + 160) = v41;
          *(a1 + 176) = v42;
          v26 = v36;
          *(a1 + 64) = v35;
          *(a1 + 80) = v26;
          v27 = v38;
          *(a1 + 96) = v37;
          *(a1 + 112) = v27;
          v28 = v32;
          *a1 = v31;
          *(a1 + 16) = v28;
          v29 = v34;
          *(a1 + 32) = v33;
          *(a1 + 48) = v29;
          sub_26BE2E1F0(v22, a1 + v24, &qword_28045E708, &unk_26C011370);
          (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
          sub_26BE2DFC0(&v31, v30);
          return;
        }
      }

      __break(1u);
      return;
    }

LABEL_5:
    *(v1 + 32) = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
  v19 = *(*(v18 - 8) + 56);

  v19(a1, 1, 1, v18);
}

uint64_t sub_26BE68838@<X0>(_OWORD *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v88 = a3;
  v95 = type metadata accessor for MLS.FramedContentAuthData(0);
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v81 - v9;
  v91 = type metadata accessor for MLS.AuthenticatedContent(0);
  v10 = MEMORY[0x28223BE20](v91);
  v94 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = (&v81 - v12);
  v13 = a1[9];
  v131[8] = a1[8];
  v131[9] = v13;
  v132[0] = a1[10];
  *(v132 + 9) = *(a1 + 169);
  v14 = a1[5];
  v131[4] = a1[4];
  v131[5] = v14;
  v15 = a1[7];
  v131[6] = a1[6];
  v131[7] = v15;
  v16 = a1[1];
  v131[0] = *a1;
  v131[1] = v16;
  v17 = a1[3];
  v131[2] = a1[2];
  v131[3] = v17;
  v18 = *a2;
  v19 = *(a2 + 1);
  v20 = *(a2 + 2);
  v21 = type metadata accessor for MLS.GroupState(0);
  v22 = v21;
  v23 = *(v4 + *(v21 + 52));
  v24 = v4[1];
  v25 = v4[2];
  v26 = v4[3];
  v27 = a1[1];
  v136 = *a1;
  v137 = v27;
  v28 = a1[3];
  v138 = a1[2];
  v139 = v28;
  v29 = a1[7];
  v142 = a1[6];
  v143 = v29;
  v30 = a1[5];
  v140 = a1[4];
  v141 = v30;
  *(v146 + 9) = *(a1 + 169);
  v31 = a1[10];
  v145 = a1[9];
  v146[0] = v31;
  v144 = a1[8];
  v32 = v24;
  *&v133 = v24;
  *(&v133 + 1) = v25;
  v92 = v26;
  *&v134 = v26;
  DWORD2(v134) = v23;
  BYTE12(v134) = 0;
  v101 = v19;
  *&v135 = v19;
  v147 = v20;
  *(&v135 + 1) = v20;
  LODWORD(v93) = v18;
  v33 = v18 == 0;
  v34 = v4;
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  sub_26BE038A8(v34 + *(v21 + 56), v128);
  v36 = *v34;
  v37 = v34[2];
  v98 = v34[1];
  v99 = v37;
  v38 = v34[5];
  v39 = *(v34 + 12);
  v40 = v34[7];
  v124 = *(v34 + 16);
  v125 = v38;
  v126 = v39;
  v127 = v40;
  v41 = v100;
  v42 = sub_26BE592D0();
  v100 = v41;
  if (v41)
  {
    sub_26BE00608(v32, v25);
    sub_26BE71438(v131, &v113);
    sub_26BE00608(v101, v147);
    sub_26BE71494(&v133);
  }

  else
  {
    v82 = v35;
    v86 = v32;
    v87 = v25;
    v44 = v34 + *(v22 + 36);
    v45 = *(v44 + 1);
    v46 = *(v44 + 2);
    v47 = *(v34 + *(v22 + 40));
    LOWORD(v103) = v36;
    *(&v103 + 1) = v98;
    *&v104 = v99;
    *(&v104 + 1) = v92;
    *&v105 = v42;
    *(&v105 + 1) = v43;
    *&v106 = v45;
    *(&v106 + 1) = v46;
    v107 = v47;
    v112 = v47;
    v110 = v105;
    v111 = v106;
    v108 = v103;
    v109 = v104;
    v49 = v94;
    v48 = v95;
    v50 = v97;
    v84 = v42;
    v85 = v43;
    v83 = v45;
    if ((v93 & 1) == 0)
    {
      v121 = v144;
      v122 = v145;
      v123[0] = v146[0];
      *(v123 + 9) = *(v146 + 9);
      v117 = v140;
      v118 = v141;
      v119 = v142;
      v120 = v143;
      v113 = v136;
      v114 = v137;
      v115 = v138;
      v116 = v139;
      if (!sub_26BE6917C(&v113))
      {
        nullsub_1();
        sub_26BE01654();
        swift_allocError();
        *v51 = 7;
        *(v51 + 8) = 0u;
        *(v51 + 24) = 0u;
        *(v51 + 40) = 0u;
        *(v51 + 56) = 0u;
        *(v51 + 72) = 0u;
        *(v51 + 88) = 0u;
        *(v51 + 104) = 0;
        *(v51 + 112) = 23;
        swift_willThrow();
        sub_26BE00608(v86, v87);
        sub_26BE71438(v131, &v102);
        sub_26BE00608(v101, v147);
        sub_26BE00608(v84, v85);
        sub_26BE00608(v98, v99);
        sub_26BE00608(v83, v46);

        sub_26BE00204(&v103);
        sub_26BE71494(&v133);
        return __swift_destroy_boxed_opaque_existential_1(v128);
      }

      nullsub_1();
      v48 = v95;
    }

    v81 = v46;
    v52 = *(v50 + 56);
    v53 = v48;
    v52(v96, 1, 1, v48);
    v54 = v50 + 56;
    v55 = *(v91 + 24);
    v93 = v52;
    v97 = v54;
    v52(v49 + v55, 1, 1, v53);
    v56 = v143;
    *(v49 + 184) = v144;
    v57 = v146[0];
    *(v49 + 200) = v145;
    *(v49 + 216) = v57;
    *(v49 + 225) = *(v146 + 9);
    v58 = v139;
    *(v49 + 120) = v140;
    v59 = v142;
    *(v49 + 136) = v141;
    *(v49 + 152) = v59;
    *(v49 + 168) = v56;
    v60 = v135;
    *(v49 + 56) = v136;
    v61 = v138;
    *(v49 + 72) = v137;
    *(v49 + 88) = v61;
    *(v49 + 104) = v58;
    v62 = v134;
    *(v49 + 8) = v133;
    *(v49 + 24) = v62;
    *v49 = v82;
    *(v49 + 40) = v60;
    sub_26BE00608(v86, v87);
    sub_26BE71438(v131, &v113);
    sub_26BE00608(v101, v147);
    sub_26BE00608(v84, v85);
    sub_26BE00608(v98, v99);
    sub_26BE00608(v83, v81);

    sub_26BE7170C(v96, v49 + v55, &qword_28045E4E0, &qword_26C015A80);
    v115 = v110;
    v116 = v111;
    *&v117 = v112;
    v113 = v108;
    v114 = v109;
    v63 = v100;
    v64 = sub_26BF9D0DC(&v113);
    if (!v63)
    {
      v66 = v64;
      v67 = v65;
      v147 = v55;
      v68 = v95;
      v69 = v129;
      v70 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v71 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v66, v67, v69, v70);
      v73 = v72;
      sub_26BE00204(&v103);
      sub_26BE00258(v66, v67);
      v74 = v68;
      v75 = *(v68 + 20);
      v76 = type metadata accessor for MLS.Cryptography.MACTag(0);
      v77 = v90;
      (*(*(v76 - 8) + 56))(v90 + v75, 1, 1, v76);
      *v77 = v71;
      v77[1] = v73;
      v78 = v147;
      sub_26BE2E258(v49 + v147, &qword_28045E4E0, &qword_26C015A80);
      sub_26BE70034(v77, v49 + v78, type metadata accessor for MLS.FramedContentAuthData);
      v93(v49 + v78, 0, 1, v74);
      v79 = v89;
      sub_26BE6FEC8(v49, v89, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v49, type metadata accessor for MLS.AuthenticatedContent);
      __swift_destroy_boxed_opaque_existential_1(v128);
      sub_26BE67D48(v79, v88);
      return sub_26BE69184(v79, type metadata accessor for MLS.AuthenticatedContent);
    }

    sub_26BE00204(&v103);
    sub_26BE69184(v49, type metadata accessor for MLS.AuthenticatedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v128);
}

void MLS.GroupState.evilProtectContentWithReusedSignature(priorAuthenticatedContent:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v18 = *v2;
  v9 = type metadata accessor for MLS.GroupState(0);
  v10 = *(v2 + v9[19]);
  if (v10)
  {
    swift_beginAccess();
    v11 = *(v10 + 49);
  }

  else
  {
    v11 = 1;
  }

  v12 = v2 + v9[11];
  v13 = type metadata accessor for MLS.KeySchedule(0);
  static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)(a1, &v18, v2 + v9[12], &v12[*(v13 + 28)], v11, 0, v17);
  if (!v3)
  {
    v14 = v17[3];
    v8[2] = v17[2];
    v8[3] = v14;
    v8[4] = v17[4];
    v15 = v17[1];
    *v8 = v17[0];
    v8[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_26BE70034(v8, a2, type metadata accessor for MLS.MLSMessage.Inner);
  }
}

uint64_t sub_26BE69184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE691E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26C00928C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
  v43 = v4;
  result = sub_26C00AD9C();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_26BE00608(*v30, v28);
      }

      sub_26BE715E4(&qword_28045E828, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26C00A3BC();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26BE695CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 56) + 80 * v24);
      v39 = *(*(v5 + 48) + 16 * v24);
      v26 = *(*(v5 + 48) + 16 * v24 + 8);
      if (v4)
      {
        v40 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v29 = v25[3];
        v44 = v25[4];
        v42 = v28;
        v43 = v29;
        v41 = v27;
      }

      else
      {
        sub_26BE2E07C(v25, &v40);
        sub_26BE00608(v39, v26);
      }

      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v16 = v39;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v16 = v39;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 80 * v15);
      *v17 = v40;
      v18 = v41;
      v19 = v42;
      v20 = v44;
      v17[3] = v43;
      v17[4] = v20;
      v17[1] = v18;
      v17[2] = v19;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26BE698BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v45 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 184 * v21);
      if (v45)
      {
        v62 = *v26;
        v46 = *(v26 + 4);
        v47 = *(v26 + 12);
        v48 = *(v26 + 20);
        v49 = *(v26 + 28);
        v54 = *(v26 + 36);
        v52 = *(v26 + 44);
        v50 = *(v26 + 13);
        v51 = *(v26 + 14);
        v53 = *(v26 + 128);
        v55 = *(v26 + 15);
        v56 = *(v26 + 17);
        v58 = *(v26 + 18);
        v57 = *(v26 + 19);
        v61 = *(v26 + 21);
        v59 = *(v26 + 20);
        v60 = *(v26 + 22);
      }

      else
      {
        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        v29 = *v26;
        *&v64[16] = *(v26 + 1);
        *&v64[32] = v28;
        *v64 = v29;
        v30 = *(v26 + 7);
        v32 = *(v26 + 4);
        v31 = *(v26 + 5);
        *&v64[96] = *(v26 + 6);
        v65 = v30;
        *&v64[64] = v32;
        *&v64[80] = v31;
        v34 = *(v26 + 9);
        v33 = *(v26 + 10);
        v35 = *(v26 + 8);
        v69 = *(v26 + 22);
        v67 = v34;
        v68 = v33;
        v66 = v35;
        *&v64[48] = v27;
        v60 = v69;
        v61 = *(&v33 + 1);
        v62 = *v64;
        v58 = v34;
        v59 = v33;
        v56 = *(&v35 + 1);
        v57 = *(&v34 + 1);
        v55 = *(&v65 + 1);
        v53 = v35;
        v54 = *&v64[72];
        v52 = *&v64[88];
        v50 = *&v64[104];
        v51 = v65;
        v48 = *&v64[40];
        v49 = *&v64[56];
        v46 = *&v64[8];
        v47 = *&v64[24];
        sub_26BE00608(v24, v25);
        sub_26BE2DFC0(v64, v63);
      }

      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 184 * v15;
      *v17 = v62;
      *(v17 + 24) = v47;
      *(v17 + 8) = v46;
      *(v17 + 56) = v49;
      *(v17 + 40) = v48;
      *(v17 + 72) = v54;
      *(v17 + 88) = v52;
      *(v17 + 104) = v50;
      *(v17 + 112) = v51;
      *(v17 + 120) = v55;
      *(v17 + 128) = v53;
      *(v17 + 136) = v56;
      *(v17 + 144) = v58;
      *(v17 + 152) = v57;
      *(v17 + 160) = v59;
      *(v17 + 168) = v61;
      *(v17 + 176) = v60;
      ++*(v7 + 16);
      v5 = v44;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE69D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_26BE00608(v29, *(&v29 + 1));
      }

      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE69F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_26BE03890(v21, v30);
      }

      else
      {
        sub_26BE038A8(v21, v30);
      }

      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      result = sub_26BE03890(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6A238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_26C00921C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
  v42 = v4;
  result = sub_26C00AD9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v26);
      result = sub_26C00B0CC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_26BE6A5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
  v37 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6A878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v31 = *(*(v5 + 56) + v21);
      v32 = v22;
      if ((v4 & 1) == 0)
      {
        sub_26BE00608(v22, *(&v22 + 1));
        sub_26BE00608(v31, *(&v31 + 1));
      }

      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v32;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      *(*(v7 + 56) + v17) = v31;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26BE6AB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v32 = *v22;
      v33 = *(v22 + 16);
      v31 = *(*(v5 + 56) + 16 * v21);
      if ((v4 & 1) == 0)
      {
        sub_26BE00608(v32, *(v22 + 8));
        sub_26BE00608(v31, *(&v31 + 1));
      }

      sub_26C00B05C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v33);
      MEMORY[0x26D699B60](*(&v33 + 1));
      result = sub_26C00B0CC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v32;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 32 * v15);
      *v17 = v16;
      v17[1] = v33;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26BE6AE10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
  v35 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v36 = *(v21 + 16 * v20);
      if ((v35 & 1) == 0)
      {
        sub_26BE00608(v23, v24);
        sub_26BE00608(v36, *(&v36 + 1));
      }

      sub_26C00B05C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v25);
      result = sub_26C00B0CC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      *(*(v7 + 56) + 16 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6B0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_26C009C8C();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
  v39 = v4;
  result = sub_26C00AD9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 4 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_26BE6B44C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s11HashRatchetVMa(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
  v40 = v4;
  result = sub_26C00AD9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 8 * v22;
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_26BE70034(v28, v41, _s11HashRatchetVMa);
      }

      else
      {
        sub_26BE6FEC8(v28, v41, _s11HashRatchetVMa);
      }

      sub_26C00B05C();
      sub_26C00B07C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 8 * v17;
      *v18 = v25;
      *(v18 + 4) = v26;
      result = sub_26BE70034(v41, *(v9 + 56) + v27 * v17, _s11HashRatchetVMa);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_26BE6B7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
  v33 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26BE5B0F0(v24, v34);
      }

      else
      {
        sub_26BE2E2EC(v24, v34);
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26BE5B0F0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6BA84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MLS.KeyAndNonce(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
  v37 = v4;
  result = sub_26C00AD9C();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 4 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_26BE70034(v25, v7, type metadata accessor for MLS.KeyAndNonce);
      }

      else
      {
        sub_26BE6FEC8(v25, v7, type metadata accessor for MLS.KeyAndNonce);
      }

      result = MEMORY[0x26D699B00](*(v10 + 40), v23, 4);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v23;
      result = sub_26BE70034(v7, *(v10 + 56) + v24 * v18, type metadata accessor for MLS.KeyAndNonce);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26BE6BDD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v43 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 200 * v21;
      if (v43)
      {
        v66 = *(v25 + 144);
        v67 = *(v25 + 160);
        v68 = *(v25 + 176);
        v69 = *(v25 + 192);
        v62 = *(v25 + 80);
        v63 = *(v25 + 96);
        v64 = *(v25 + 112);
        v65 = *(v25 + 128);
        v58 = *(v25 + 16);
        v59 = *(v25 + 32);
        v60 = *(v25 + 48);
        v61 = *(v25 + 64);
        v57 = *v25;
      }

      else
      {
        v44 = *v25;
        v26 = *(v25 + 64);
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v47 = *(v25 + 48);
        v48 = v26;
        v45 = v28;
        v46 = v27;
        v29 = *(v25 + 128);
        v31 = *(v25 + 80);
        v30 = *(v25 + 96);
        v51 = *(v25 + 112);
        v52 = v29;
        v49 = v31;
        v50 = v30;
        v33 = *(v25 + 160);
        v32 = *(v25 + 176);
        v34 = *(v25 + 144);
        v56 = *(v25 + 192);
        v54 = v33;
        v55 = v32;
        v53 = v34;
        sub_26BE00608(v23, v24);
        sub_26BE5CDE4(&v44, &v57);
        v67 = v54;
        v68 = v55;
        v69 = v56;
        v63 = v50;
        v64 = v51;
        v65 = v52;
        v66 = v53;
        v59 = v46;
        v60 = v47;
        v61 = v48;
        v62 = v49;
        v57 = v44;
        v58 = v45;
      }

      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 200 * v15;
      *(v17 + 144) = v66;
      *(v17 + 160) = v67;
      *(v17 + 176) = v68;
      *(v17 + 192) = v69;
      *(v17 + 80) = v62;
      *(v17 + 96) = v63;
      *(v17 + 112) = v64;
      *(v17 + 128) = v65;
      *(v17 + 16) = v58;
      *(v17 + 32) = v59;
      *(v17 + 48) = v60;
      *(v17 + 64) = v61;
      *v17 = v57;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6C21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_26C00AD9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_26BE6C4E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_26C00AD9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_26BE6C784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
  v46 = v4;
  v6 = sub_26C00AD9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 48 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      v33 = v27[5];
      if ((v46 & 1) == 0)
      {

        sub_26BE00608(v28, v29);
        sub_26BE00608(v30, v31);
        sub_26BE00608(v32, v33);
      }

      v48 = v32;
      v7 = v45;
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v34 = -1 << *(v45 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v33;
        v15 = v31;
        v17 = v48;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
      v15 = v31;
      v17 = v48;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v49;
      v18[1] = v26;
      v19 = (*(v45 + 56) + 48 * v14);
      *v19 = v28;
      v19[1] = v29;
      v19[2] = v30;
      v19[3] = v15;
      v19[4] = v17;
      v19[5] = v16;
      ++*(v45 + 16);
      v5 = v44;
      v11 = v47;
    }

    v21 = v8;
    result = v43;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v43[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6CAA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
  v37 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6CD68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
  v33 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_26BE00608(v34, *(&v34 + 1));
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6D024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
  v33 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_26BE04890(v34, *(&v34 + 1));
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26BE6D2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F0, &qword_26C012498);
  v40 = v4;
  result = sub_26C00AD9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 56 * v24;
      if (v40)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 32);
        v44 = *(v28 + 48);
        v42 = v30;
        v43 = v31;
        v41 = v29;
      }

      else
      {
        sub_26BE2DA9C(v28, &v41);
      }

      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v41;
      v19 = v42;
      v20 = v43;
      *(v17 + 48) = v44;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_26BE6D5C0()
{
  v1 = v0;
  v2 = sub_26C00928C();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
  v5 = *v0;
  v6 = sub_26C00AD8C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        sub_26BE00608(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_26BE6D84C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 80 * v17;
        sub_26BE2E07C(*(v2 + 56) + 80 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[4];
        v24[3] = v29[3];
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        sub_26BE00608(v20, v21);
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

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_26BE6DA08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_26BE2DFC0(&v40, v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 184;
      v18 = *(v2 + 56) + v16;
      v19 = *(*(v2 + 48) + v17);
      v20 = *(v18 + 112);
      v22 = *(v18 + 64);
      v21 = *(v18 + 80);
      v46 = *(v18 + 96);
      v47 = v20;
      v44 = v22;
      v45 = v21;
      v24 = *(v18 + 144);
      v23 = *(v18 + 160);
      v25 = *(v18 + 128);
      v51 = *(v18 + 176);
      v49 = v24;
      v50 = v23;
      v48 = v25;
      v27 = *v18;
      v26 = *(v18 + 16);
      v28 = *(v18 + 48);
      v42 = *(v18 + 32);
      v43 = v28;
      v40 = v27;
      v41 = v26;
      *(*(v4 + 48) + v17) = v19;
      v29 = *(v4 + 56) + v16;
      v30 = v40;
      v31 = v41;
      v32 = v43;
      *(v29 + 32) = v42;
      *(v29 + 48) = v32;
      *v29 = v30;
      *(v29 + 16) = v31;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      *(v29 + 96) = v46;
      *(v29 + 112) = v35;
      *(v29 + 64) = v33;
      *(v29 + 80) = v34;
      v36 = v48;
      v37 = v49;
      v38 = v50;
      *(v29 + 176) = v51;
      *(v29 + 144) = v37;
      *(v29 + 160) = v38;
      *(v29 + 128) = v36;
      sub_26BE00608(v19, *(&v19 + 1));
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

  return result;
}

void sub_26BE6DC08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_26BE00608(v18, *(&v18 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_26BE6DD70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v20 = 40 * v17;
        sub_26BE038A8(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v19;
        result = sub_26BE03890(v21, *(v4 + 56) + v20);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

char *sub_26BE6DEF4()
{
  v1 = v0;
  v35 = sub_26C00921C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
  v3 = *v0;
  v4 = sub_26C00AD8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v15 = v34;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = *(v3 + 48) + 16 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = v37;
        v25 = *(v37 + 72) * v19;
        v26 = v35;
        (*(v37 + 16))(v15, *(v3 + 56) + v25, v35);
        v27 = v36;
        v28 = *(v36 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        result = (*(v24 + 32))(*(v27 + 56) + v25, v15, v26);
        v13 = v38;
      }

      while (v38);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_26BE6E178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void sub_26BE6E2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_26BE00608(v18, *(&v18 + 1));
        sub_26BE00608(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_26BE6E474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(v19 + 8);
        v24 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v23;
        *(v22 + 24) = v21;
        *(*(v4 + 56) + v17) = v24;
        sub_26BE00608(v20, v23);
        sub_26BE00608(v24, *(&v24 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_26BE6E610()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(v19 + 8);
        v23 = *(*(v2 + 56) + v17);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(*(v4 + 56) + v17) = v23;
        sub_26BE00608(v20, v22);
        sub_26BE00608(v23, *(&v23 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_26BE6E7A8()
{
  v1 = v0;
  v29 = sub_26C009C8C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
  v3 = *v0;
  v4 = sub_26C00AD8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 4 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 4 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_26BE6EA10()
{
  v1 = v0;
  v2 = _s11HashRatchetVMa(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
  v4 = *v0;
  v5 = sub_26C00AD8C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 8 * v20;
        v22 = *(v4 + 48) + 8 * v20;
        v23 = *v22;
        v24 = *(v22 + 4);
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_26BE6FEC8(*(v4 + 56) + v26, v30, _s11HashRatchetVMa);
        v27 = v32;
        v28 = *(v32 + 48) + v21;
        *v28 = v23;
        *(v28 + 4) = v24;
        result = sub_26BE70034(v25, *(v27 + 56) + v26, _s11HashRatchetVMa);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}